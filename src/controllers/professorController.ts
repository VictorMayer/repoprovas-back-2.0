import { Request, Response } from 'express';
import * as professorService from '../services/professorService';

async function sendProfessors(req: Request, res: Response) {
    try {
        const professors = await professorService.getProfessors();

        return res.send(professors);
    } catch (err) {
        console.log(err); // eslint-disable-line no-console
        return res.sendStatus(500);
    }
}

export {
    // eslint-disable-next-line import/prefer-default-export
    sendProfessors,
};
