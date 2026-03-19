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
    
    @Column({type: "varchar", length: 255, unique: true, nullable: false})
    cpf:string

    @Column({type: "varchar", length: 255, unique: true, nullable: false })
    email:string

    @Column({type: "varchar", length: 255, nullable: false})
    senha:string


    constructor(name:string, email: string, senha:string){
        name: this.name
        email: this.email
        senha: this.senha
    }

        
}