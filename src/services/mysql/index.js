
const mysqlServer = require('mysql')
const connection = mysqlServer.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'restful_ws'
})

const errorHandler = (error, msg, rejectedFunction) => {
  console.log(error)
  rejectedFunction({ error: msg })
}

const categoryModule = require('./categories')({ connection, errorHandler })

module.exports = {
  categories: () => categoryModule,
}
