import { DataSource } from "typeorm"
import {User} from "../models/User"

// depois colocar para env
export const AppDataSource = new DataSource({
    type: "mysql",
    host: "localhost",
    port: 3306,
    username: "root",
    password: "root",
    database: "atv_competicao",
    synchronize: true,
    logging: true,
    entities: [User],
})

