import { getRepository } from 'typeorm';
import DisciplineEntity from '../entities/disciplineEntity';

async function getDisciplines() {
    const disciplines = await getRepository(DisciplineEntity).find();

    return disciplines;
}

export {
    // eslint-disable-next-line import/prefer-default-export
    getDisciplines,
};
