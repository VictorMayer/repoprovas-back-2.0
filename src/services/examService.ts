import { getRepository } from 'typeorm';
import ExamEntity from '../entities/examEntity';

async function createExam(exam: any) {
    const createdExam = getRepository(ExamEntity).create(exam);
    const result = await getRepository(ExamEntity).save(createdExam);

    return result;
}

async function getExams() {
    const exams = getRepository(ExamEntity).find();

    return exams;
}

export {
    createExam,
    getExams,
};
