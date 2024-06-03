// controller da dasboard

var dashboardModel = require("../models/dashboardModel");

function getDashboardData(req, res) {

    dashboardModel.getDashboardData()
    .then(results => {
        if(results) {
            res.json(results);
        }else{
            res.json({message: 'Não há dados disponíveis no momento.'});
        }
    })
    .catch(err => {
        console.error('Erro ao buscar dados da dashboard:', err);
        res.status(500).send('Ocorreu um erro interno do servidor na solicitação');
    });

}

module.exports = {
    getDashboardData
};