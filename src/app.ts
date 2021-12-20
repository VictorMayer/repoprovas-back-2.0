import 'reflect-metadata';
import cors from 'cors';
import express, { Request, Response } from 'express';
import connectDatabase from './database';

import * as examController from './controllers/examController';
import * as periodController from './controllers/periodController';
import * as categoryController from './controllers/categoryController';
import * as professorController from './controllers/professorController';
import * as disciplineController from './controllers/disciplineController';

const app = express();
app.use(cors());
app.use(express.json());

app.get('/health', (req: Request, res: Response) => res.send('OK!'));

// ROUTES
app.post('/exams', examController.newExam);
app.get('/exams', examController.sendExams);
app.get('/periods', periodController.sendPeriods);
app.get('/categories', categoryController.sendCategories);
app.get('/professors', professorController.sendProfessors);
app.get('/disciplines', disciplineController.sendDisciplines);

export async function init() {
    await connectDatabase();
}

export default app;
