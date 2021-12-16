import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from 'typeorm';
import PeriodEntity from './periodEntity';

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

    // Definir relação ManyToMany
}
