import {Entity, PrimaryGeneratedColumn, } from "typeorm"

export enum UserRole {
    ADMIN = "ADMIN",
    ATENDENTE = "ATENDENTE",
    TECNICO = "TECNICO",
}

@Entity("User")
export class User{
    @PrimaryGeneratedColumn()
    id: number

    
    
    
    
        
}