import express from "express";
import * as DB from "./database.js";  
  
app.use(express.urlencoded({ extended: true })) 
app.use(express.json()) 
  
app.get('/',  
   (req, res) => res.send('Dockerizing Node Application'));
  
app.listen(5000,  
   () => console.log(`⚡️[bootup]: Server is running at port: 5000`));

const port = 8080;
app.get("/getAllBooks",async (req,res)=>{
    res.send(DB.getAllBooks()).status(200);
});

app.get("/getBooksAfterYear2000",async (req,res)=>{
    res.send(DB.getBooksAfterYear2000()).status(200);
});

app.get("/getTotalBooks",async (req,res)=>{
    res.send(DB.getTotalBooks()).status(200);
});

app.get("/getBooksSortedByDate",async (req,res)=>{
    res.send(DB.getBooksSortedByDate()).status(200);
});

app.listen(port,()=>{console.log("app listening: " + port)});