import mysql from "mysql2/promise" // imports mysql2, so it can use the promises

const connect = async () => {
  const connection = await mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '0262', 
    database: 'cinema'
  })

  return connection
}

export default { connect };