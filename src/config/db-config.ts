import { DataSource } from "typeorm"
import {User} from "../models/User"

// depois colocar para env
const AppDataSource = new DataSource({
    type: "mysql",
    host: "localhost",
    port: 3000,
    username: "root",
    password: "root",
    database: "atv_competicao",
    synchronize: true,
    logging: true,
    entities: [User],
})
try {
    await AppDataSource.initialize()
} catch (error) {
    console.log(error)
}