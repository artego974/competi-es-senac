import {AppDataSource} from "./config/db-config"
import {express} from "express"
import "reflect-metadata"

const app = express()
const port = 3000

try{
AppDataSource.initialize()
app.listen(port, () => console.log('Server rodando na porta 3000'));

}catch(err){
    console.log(err)
  }
