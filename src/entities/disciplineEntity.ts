import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn, OneToMany } from 'typeorm';
import PeriodEntity from './periodEntity';
import ExamEntity from './examEntity';

@Entity('disciplines')
export default class DisciplineEntity {
    @PrimaryGeneratedColumn()
        id: number;

    @Column()
        name: string;

    @Column()
        periodId: number;

    @ManyToOne(() => PeriodEntity, { eager: true })
    @JoinColumn({ name: 'periodId' })
        period: PeriodEntity;

    @OneToMany(() => ExamEntity, (exams) => exams.discipline)
        exams: ExamEntity[];
}
