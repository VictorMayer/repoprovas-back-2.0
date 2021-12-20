import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from 'typeorm';
import CategoryEntity from './categoryEntity';
import DisciplineEntity from './disciplineEntity';
import ProfessorEntity from './professorEntity';

@Entity('exams')
export default class ExamEntity {
    @PrimaryGeneratedColumn()
        id: number;

    @Column()
        name: string;

    @Column()
        url: string;

    @Column()
        categoryId: number;

    @Column()
        disciplineId: number;

    @Column()
        professorId: number;

    @ManyToOne(() => CategoryEntity, { eager: true })
    @JoinColumn({ name: 'categoryId' })
        category: CategoryEntity;

    @ManyToOne(() => DisciplineEntity, { eager: true })
    @JoinColumn({ name: 'disciplineId' })
        discipline: DisciplineEntity;

    @ManyToOne(() => ProfessorEntity, { eager: true })
    @JoinColumn({ name: 'professorId' })
        professor: ProfessorEntity;
}
