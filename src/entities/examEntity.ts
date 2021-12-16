import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from 'typeorm';
import CategoryEntity from './categoryEntity';
import DisciplineEntity from './disciplineEntity';

@Entity('exams')
export default class ExamEntity {
    @PrimaryGeneratedColumn()
        id: number;

    @Column()
        name: string;

    @Column()
        categoryId: number;

    @Column()
        disciplineId: number;

    @ManyToOne(() => CategoryEntity, { eager: true })
    @JoinColumn({ name: 'categoryId' })
        category: CategoryEntity;

    @ManyToOne(() => DisciplineEntity, { eager: true })
    @JoinColumn({ name: 'disciplineId' })
        discipline: DisciplineEntity;
}
