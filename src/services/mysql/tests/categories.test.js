
const test = require('ava')

require('dotenv').config()

const mysqlServer = require('mysql')

const connection = mysqlServer.createConnection({
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_TEST_DATABASE
})

const errorHandler = (error, msg, rejectedFunction) => {
  console.log(error)
  rejectedFunction({
    error: msg
  })
}

const categories = require('../categories')({ connection, errorHandler })

test('Criação de categoria', async t => {
  const category = await categories.save('category-test')
  t.is(category.category.name, 'category-test')
})
