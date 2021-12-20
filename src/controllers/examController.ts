import { Request, Response } from 'express';
import { validateExam } from '../validations/examValidation';
import * as examService from '../services/examService';

async function newExam(req: Request, res: Response) {
    const { name, url, category, discipline, professor } = req.body;
    try {
        if (!name || !url || !category || !discipline || !professor) return res.status(400).send('Insufficient Data!');

        const invalidBody = validateExam(req.body);

        if (invalidBody) return res.status(400).send(invalidBody);

        const exam = {
            name,
            url,
            categoryId: category,
            disciplineId: discipline,
            professorId: professor,
        };

        const result = await examService.createExam(exam);

        if (result) return res.sendStatus(201);

        return res.sendStatus(400);
    } catch (err) {
        console.log(err); // eslint-disable-line no-console
        return res.sendStatus(500);
    }
}

async function sendExams(req: Request, res: Response) {
    try {
        const exams = await examService.getExams();

        if (!exams || !exams.length) return res.status(404).send('No exams found!');

        return res.send(exams);
    } catch (err) {
        console.log(err); // eslint-disable-line no-console
        return res.sendStatus(500);
    }
}

export {
    newExam,
    sendExams,
};
