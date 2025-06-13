import "reflect-metadata"
import { DataSource } from "typeorm"
import { config, dialect } from
    "../config/db.config"
import { Cargo } from "../models/Cargo"

export const AppDataSource = new DataSource({
    type: dialect,
    host: config.HOST,
    port: config.PORT,
    username: config.USER,
    password: config.PASSWORD,
    database: config.DB,
    entities: [Cargo],
    synchronize: false,
    logging: true,
})