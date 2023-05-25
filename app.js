// Ferramenta para gestão de tarefas Backend

//Aplicação com Node.Js e o framework Express, 

const express = require('express')
const app = express()
const port = 3000

//Código abaixo faz conversão de JSON para javascript, importante para quando for realizado a comunicação com frontend
const bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

//Código abaixo faz a conexão com Banco de dados MySql
var mysql = require('mysql2');
var connection = mysql.createConnection({
host : '127.0.0.2',
user : 'root',
password : 'root',
database : 'tarefas'
});

// Teste para ver se dava erro a conexão, como conectou não precisa usar mais
// connection.connect(function(err) {
// if (err) {
// console.error('Erro ao conectar: ' + err.stack);
// return;
// }
// console.log('Conectado como id ' + connection.threadId);
// });
//codigo javascript para testar conexão com a tabela:
// connection.query('SELECT * FROM gestao_tarefas', function (error, results, fields) {
// if (error) throw error;
// console.log('Os resultados são: ', results);
// });
// //fim codigo javascript
// //Encerrando a conexão:
// //Por último, quando terminar, você deve encerrar a conexão com o banco de dados:
// //codigo javascript
// connection.end();

//Agora você pode executar consultas SQL no seu banco de dados MySQL. Aqui está um

// CREATE
app.post('/gestao_tarefas', (req, res) => {
const tarefa = req.body;
const sql = 'INSERT INTO gestao_tarefas SET ?';
connection.query(sql, tarefa, (error, result) => {
if (error) throw error;
res.status(201).json({ id: result.insertId, ...tarefa });
});
});

// READ
app.get('/gestao_tarefas', (req, res) => {
const sql = 'SELECT * FROM gestao_tarefas';
connection.query(sql, (error, results) => {
if (error) throw error;
res.json(results);
});
});

// READ com Busca por ID
app.get('/gestao_tarefas/:id', (req, res) => {
const id = req.params.id;
const sql = 'SELECT * FROM gestao_tarefas WHERE id_gestao_tarefas = ?';
connection.query(sql, id, (error, results) => {
if (error) throw error;
res.json(results[0]);
});
});

// READ com Busca por Status
app.get('/status/:status', (req, res) => {
  const status = req.params.status;
  const sql = 'SELECT * FROM gestao_tarefas WHERE status = ?';
  connection.query(sql, status, (error, results) => {
  if (error) throw error;
  res.json(results);
  });
  });


// UPDATE
app.put('/gestao_tarefas/:id', (req, res) => {
const id = req.params.id;
const newTarefa = req.body;
const sql = 'UPDATE gestao_tarefas SET ? WHERE id_gestao_tarefas = ?';
connection.query(sql, [newTarefa, id], (error) => {
if (error) throw error;
res.status(204).end();
});
});

// DELETE
app.delete('/gestao_tarefas/:id', (req, res) => {
const id = req.params.id;
const sql = 'DELETE FROM gestao_tarefas WHERE id_gestao_tarefas = ?';
connection.query(sql, id, (error) => {
if (error) throw error;
res.status(204).end();
});
});


// Configurando o servidor
app.listen(port, () => {
  console.log(`Aplicação rodando na porta ${port}`)
})