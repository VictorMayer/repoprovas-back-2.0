import joi from 'joi';
import ExamEntity from '../entities/examEntity';

function specifyError(error: string) {
    switch (error) {
    case 'name':
        return 'Nome inválido ou curto demais';
    case 'url':
        return 'A URL não é válida';
    case 'category':
        return 'Categoria não existente';
    case 'discipline':
        return 'Disciplina não existente';
    case 'professor':
        return 'Professor não existente';
    default:
        return null;
    }
}

function validateExam(exam: ExamEntity) {
    const examSchema = joi.object({
        name: joi.string().min(3).required(),
        url: joi.string().pattern(/(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,})/).required(),
        category: joi.number().min(1).required(),
        discipline: joi.number().min(1).required(),
        professor: joi.number().min(1).required(),
    });

    if (examSchema.validate(exam).error) {
        return specifyError(examSchema.validate(exam).error.details[0].context.key);
    }

    return false;
}

export {
    // eslint-disable-next-line import/prefer-default-export
    validateExam,
};
