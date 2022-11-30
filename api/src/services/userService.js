import db from '../repository/connection.js'

// user's actions
async function createUser(name, email, password, typeUser) {
  const conn = await db.connect() // connects to the database
  const sql = 'INSERT INTO tbl_Usuario(nome, email, senha, tipo_usuario) VALUES(?, ?, ?, ?)'
  const data = [name, email, password, typeUser]

  await conn.query(sql, data) // executes the commands of mySql
  conn.end()  // ends the connection
}

async function updateUser(name, email, password, typeUser, idUser) {
  const conn = await db.connect()
  const sql = 'UPDATE tbl_Usuario SET nome = ?, email = ?, senha = ?, tipo_usuario = ? WHERE id_usuario = ?'
  const data = [name, email, password, typeUser, idUser]

  conn.query(sql, data) // executes the commands of mySql
  conn.end()  // ends the connection
}

export default { createUser, updateUser }