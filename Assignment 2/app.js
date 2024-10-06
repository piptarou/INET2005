const express = require('express');
const mysql = require('mysql2');
const app = express();
const port = 3000;

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'rootpassword',
    database: 'dnd_monsters',
    port: 3307
});

connection.connect(err => {
    if (err) {
        console.error('Error connecting to the database:', err);
        return;
    }
    console.log('Connected to the MySQL database.');
});

app.get('/', (req, res) => {
    console.log('Received request to /');
    const query = "SELECT * FROM monsters WHERE alignment = 'Chaotic Evil'";

    connection.query(query, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            res.status(500).send('Internal Server Error');
            return;
        }

        let html = '<h1>Monsters List</h1><table border="1"><tr><th>ID</th><th>Name</th><th>Size</th><th>Alignment</th><th>Type</th><th>Hit Points</th></tr>';
        results.forEach(monster => {
            html += `<tr>
                <td>${monster.id}</td>
                <td>${monster.monster_name}</td>
                <td>${monster.monster_size}</td>
                <td>${monster.alignment}</td>
                <td>${monster.monster_type}</td>
                <td>${monster.hit_points}</td>
            </tr>`;
        });
        html += '</table>';
        res.send(html);
    });
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
