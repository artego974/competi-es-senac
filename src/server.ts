import {AppDataSource} from "./config/db-config"
import {express} from "express"
import "reflect-metadata"

const app = express()
const port = 3000

app.listen(port, () => {
  console.log(`Servidor na porta 3000 ${port}`)
})