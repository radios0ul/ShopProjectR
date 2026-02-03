import styles from './mainPage.module.css';
import { Link } from 'react-router-dom';
import { useEffect } from 'react';
import { useAppDispatch, useAppSelector } from '../../utils/hooks';
import { fetchInfo } from '../../redux/productsSlice';
import Loader from '../loader/loader';

export default function MainPage() {
    const dispatch = useAppDispatch();
    const info = useAppSelector((state) => state.products.info);
    const loading = useAppSelector((state) => state.products.loading);

    useEffect(() => {
        dispatch(fetchInfo());
    }, [dispatch]);

    return (
        <main className={styles.container}>
            {loading && <Loader />}
            <h1 className={styles.title}>Shop.Client</h1>
            <p className={styles.text}>Now we have {info?.count} items in database </p>
            <p className={styles.text}>Total price of items: {info?.sum} &#8381;</p>
            <Link to="/products-list" className={styles.link}>Go to products list</Link>
            <Link to="/admin/auth/login" className={styles.link} target='_blank'>Login as admin</Link>
        </main>
    )
}
