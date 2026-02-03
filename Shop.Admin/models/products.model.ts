import axios from "axios";
import { IProduct, IProductFilterPayload } from "@Shared/types";
import { IProductEditData, IProductNew  } from "../types";

import { API_HOST } from "./const";

export async function getProducts() {
  const { data } = await axios.get<IProduct[]>(`${API_HOST}/products`);
  return data || [];
}

export async function searchProducts(
  filter: IProductFilterPayload
): Promise<IProduct[]> {
  const { data } = await axios.get<IProduct[]>(`${API_HOST}/products/search`, {
    params: filter,
  });
  return data || [];
}

export async function getProduct(id: string): Promise<IProduct | null> {
  try {
    const { data } = await axios.get<IProduct>(`${API_HOST}/products/${id}`);
    return data;
  } catch (e) {
    return null;
  }
}

export async function removeProduct(id: string): Promise<void> {
  await axios.delete(`${API_HOST}/products/${id}`);
}

function compileIdsToRemove(data: string | string[]): string[] {
  if (typeof data === "string") {
    return [data];
  }
  return data;
}

function splitNewImages(str = ""): string[] {
  return str
    .split(/\r\n|,/g)
    .map((url) => url.trim())
    .filter((url) => url);
}

export async function updateProduct(
  productId: string,
  formData: IProductEditData
): Promise<void> {
  try {
    const { data: currentProduct } = await axios.get<IProduct>(
      `${API_HOST}/products/${productId}`
    );

    if (formData.commentsToRemove) {
  
      const commentsIdsToRemove = compileIdsToRemove(formData.commentsToRemove);

      const getDeleteCommentActions = () =>
        commentsIdsToRemove.map((commentId) => {
          return axios.delete(`${API_HOST}/comments/${commentId}`);
        });

      await Promise.all(getDeleteCommentActions());

    }

    if (formData.imagesToRemove) {
     
      const imagesIdsToRemove = compileIdsToRemove(formData.imagesToRemove);
      await axios.post(`${API_HOST}/products/delete-images`, imagesIdsToRemove);
    }

    if (formData.newImages) {
      const urls = splitNewImages(formData.newImages);

      const images = urls.map((url) => ({ url, main: false }));

      if (!currentProduct.thumbnail) {
        images[0].main = true;
      }

      await axios.post(`${API_HOST}/products/add-images`, { productId, images });
    }

    //---

      if (
      formData.mainImage 
       && formData.mainImage !== currentProduct.thumbnail?.id 
    ) {
      await axios.post(`${API_HOST}/products/update-thumbnail/${productId}`, {
        newThumbnailId: formData.mainImage,
      });
    }
  
    //---
    if (formData.itemsToRemove) {
      const itemsIdsToRemove = compileIdsToRemove(formData.itemsToRemove);
            console.log("itemsIdsToRemove", itemsIdsToRemove)
            await axios.delete(`${API_HOST}/products/similar/delete`, {data: {productIds: itemsIdsToRemove}});
    }

    if (formData.itemsToAdd) {
      console.log("itemsToAdd", formData.itemsToAdd)
      const itemsIdsToAdd = compileIdsToRemove(formData.itemsToAdd);
      const itemsPairs = itemsIdsToAdd.map(itemId => ({
          productId: productId,
          similarProductId: itemId
      }));
      console.log(itemsPairs)
      await axios.post(`${API_HOST}/products/similar`, {similarPairs: itemsPairs});
    }

    
    await axios.patch(`${API_HOST}/products/${productId}`, {
      title: formData.title,
      description: formData.description,
      price: Number(formData.price),
    });
  } catch (e) {
    console.log(e);
  }
}

export async function createProduct(formData: IProductNew): Promise<void> {
  const {data} = await axios.post(`${API_HOST}/products`, formData);
  return data;
};