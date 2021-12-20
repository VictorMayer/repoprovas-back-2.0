import { Request, Response } from 'express';
import * as disciplineService from '../services/disciplineService';

async function sendDisciplines(req: Request, res: Response) {
    try {
        const disciplines = await disciplineService.getDisciplines();

        return res.send(disciplines);
    } catch (err) {
        console.log(err); // eslint-disable-line no-console
        return res.sendStatus(500);
    }
}

export {
    // eslint-disable-next-line import/prefer-default-export
    sendDisciplines,
};
