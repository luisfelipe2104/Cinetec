import mysql2 from "mysql2/promise" // imports mysql2, so it can use the promises

const connect = async () => {
  const connection = await mysql2.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'cinema'
  })

  return connection
}

export default { connect };