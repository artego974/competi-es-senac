"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = require("express");
var db_config_1 = require("./config/db-config");
require("reflect-metadata");
var app = (0, express_1.default)();
var port = 3000;
app.use(express_1.default.json());
try {
    db_config_1.AppDataSource.initialize();
    app.listen(port, function () { return console.log('Server rodando na porta 3000'); });
}
catch (err) {
    console.log(err);
}
