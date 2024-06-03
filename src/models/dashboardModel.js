// models/dashboardModel.js
var database = require("../database/config");

// pega os dados/data da dashboard
function getDashboardData() {
    console.log("ACESSEI O DASHBOARD MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED', \n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de BD está rodando corretamente. \n\n function getDashboardData()");



    var instrucaoSql = `SELECT * FROM viewDashboard ;`;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}

module.exports = {
    getDashboardData
};