import cors from 'cors';
import express, { Request, Response } from 'express';
import connectDatabase from './database';
import 'reflect-metadata';

const app = express();
app.use(cors());
app.use(express.json());

app.get('/health', (req: Request, res: Response) => res.send('OK!'));

// ROUTES

export async function init() {
    await connectDatabase();
}

export default app;
