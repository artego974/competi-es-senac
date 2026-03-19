import {Entity, PrimaryGeneratedColumn, Column} from "typeorm"

export enum UserRole {
    ADMIN = "ADMIN",
    ATENDENTE = "ATENDENTE",
    TECNICO = "TECNICO",
}

@Entity("User")
export class User{
    @PrimaryGeneratedColumn()
    id: number

    @Column({type: "varchar", length:255, nullable: false })
    name: string

    @Column({type: "varchar", length: 11, unique: true, nullable: false})
    cpf:number

    @Column({type: "varchar", length: 255, unique: true, nullable: false })
    email:string

    @Column({type: "varchar", length: 255, nullable: false})
    senha:string


    constructor(name:string,cpf:number, email: string, senha:string){
        this.name = name
        this.cpf = cpf
        this.email = email
        this.senha = senha
    }

        
}