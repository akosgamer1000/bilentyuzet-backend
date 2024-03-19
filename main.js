import express from "express";
import mysql from 'mysql2';
import cors from 'cors';

const app= express();
app.use(express.json())
app.use(cors())
const db =mysql.createPool({
    host:'localhost',
    user:'root',
    password:'',
    database:'billen'
}).promise();

app.get("/billentyuzet",async (req,res)=>{
    const temp=await db.query('select * from mainbillen')
    const row=temp[0]
    res.send(row)
})
app.post("/billentyuzet",async(req,res)=>{
    try{

        const [data,fields]=  await  db.query('INSERT INTO mainbillen (id,name,price,arrivedate) VALUES (?,?,?,?)',[req.body.id,req.body.name,req.body.price,req.body.arrivedate])
        res.status(202).send()
    }
    catch(e) {
        res.status(400).send()
    }
})
app.listen(3000)