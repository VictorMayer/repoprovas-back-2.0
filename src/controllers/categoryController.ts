import { Request, Response } from 'express';
import * as categoryService from '../services/categoryService';

async function sendCategories(req: Request, res: Response) {
    try {
        const categories = await categoryService.getCategories();

        return res.send(categories);
    } catch (err) {
        console.log(err); // eslint-disable-line no-console
        return res.sendStatus(500);
    }
}

export {
    // eslint-disable-next-line import/prefer-default-export
    sendCategories,
};
