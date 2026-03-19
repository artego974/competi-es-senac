"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var db_config_1 = require("./config/db-config");
var express_1 = require("express");
require("reflect-metadata");
var app = (0, express_1.express)();
var port = 3000;
try {
    db_config_1.AppDataSource.initialize();
    app.listen(3000, function () { return console.log('Server rodando na porta 3000'); });
}
catch (err) {
    console.log(err);
}
