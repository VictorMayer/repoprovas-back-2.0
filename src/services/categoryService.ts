import { getRepository } from 'typeorm';
import Categories from '../entities/categoryEntity';

async function getCategories() {
    const categories = await getRepository(Categories).find();

    return categories;
}

export {
    // eslint-disable-next-line import/prefer-default-export
    getCategories,
};
