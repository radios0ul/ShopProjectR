import styles from './productsList.module.css';
import ListItem from '../listItem/listItem';
import { useAppDispatch, useAppSelector } from '../../utils/hooks';
import { fetchProducts, fetchFilteredProducts } from '../../redux/productsSlice';
import { useState, useEffect } from 'react';
import Loader from '../loader/loader';

export default function ProductsList() {
const dispatch = useAppDispatch();
const products = useAppSelector((state) => state.products.products);
const loading = useAppSelector((state) => state.products.loading);
const [filter, setFilter] = useState({
    title: "",
    description: "",
    priceFrom: 0,
    priceTo: 100000000000,
});

const handleFilterChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setFilter((prevFilter) => ({
        ...prevFilter,
        [name]: value,
    }));
};

const handleFilterSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    dispatch(fetchFilteredProducts(filter));
}

useEffect(() => {
    dispatch(fetchProducts());
}, []);

useEffect(() => {}, [filter]);

    return (
        <main className={styles.container}>
            <h1 className={styles.title}>All products ({products.length})</h1>
            <form className={styles.form} action="" onSubmit={handleFilterSubmit}>
                <input className={styles.input} type="text" placeholder="Product name" name='title' onChange={handleFilterChange} />
                <input className={styles.input} type="text" placeholder="Description" name='description' onChange={handleFilterChange} />
                <input className={styles.input} type="number" placeholder="Price from.." name='priceFrom' onChange={handleFilterChange} />
                <input className={styles.input} type="number" placeholder="Price to.." name='priceTo' onChange={handleFilterChange} />
                <button className={styles.button}>Search</button>
            </form>
            {loading && <Loader />}
            <ul className={styles.list}>
                {products.map((product) => 
                (<ListItem key={product.id} product={product} />)) || "No products in database"}
            </ul>
        </main>
    )
}
