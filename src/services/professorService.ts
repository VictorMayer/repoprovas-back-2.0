import { getRepository } from 'typeorm';
import ProfessorEntity from '../entities/professorEntity';

async function getProfessors() {
    const professors = await getRepository(ProfessorEntity).find();

    return professors;
}

export {
    // eslint-disable-next-line import/prefer-default-export
    getProfessors,
};
