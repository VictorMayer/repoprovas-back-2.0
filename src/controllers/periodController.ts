import { Request, Response } from 'express';
import * as periodService from '../services/periodService';

async function sendPeriods(req: Request, res: Response) {
    try {
        const periods = await periodService.getPeriods();

        return res.send(periods);
    } catch (err) {
        console.log(err); // eslint-disable-line no-console
        return res.sendStatus(500);
    }
}

export {
    // eslint-disable-next-line import/prefer-default-export
    sendPeriods,
};
