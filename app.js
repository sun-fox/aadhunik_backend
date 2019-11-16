var express = require("express"),
    app = express(),
    mysql = require("mysql"),
    bodyParser = require("body-parser"),
    connection;

connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "mysql",
    database: "aadhunik"
});

connection.connect(function (err) {
    if (err) throw err;
});

// module.exports = connection;

app.use( bodyParser.json() );  
app.use(bodyParser.urlencoded({ extended: true }));

//rest api to get all people
app.get('/people', function (req, res) {
    var query="select * from people";
   connection.query(query, function (err, res) {
        console.log(query);
	  if (err) throw err;
    //   res.end(JSON.stringify(res));
    //   console.log(res);
    for(var i=0;i<res.length;i++){
            console.log(res[i].name);
    }
	});
});
// to get all people of specific id
app.get('/people/:id', function (req, res) {
    var query="select * from people where pid = "+req.params.id+";";
   connection.query(query, function (err, res) {
        console.log(query);
	  if (err) throw err;
    //   res.end(JSON.stringify(res));
      console.log(res[0].name);
	});
});
// to add new person to datbase
app.post('/people/new',function(req,res){
    var query="INSERT INTO `aadhunik`.`people` (`name`, `mobno`, `aadharno`, `emailid`, `password`) VALUES ('"+req.body.name+"','"+req.body.aadharno+"','"+req.body.mobno+"','"+req.body.emailid+"','"+req.body.password+"');";
    
    console.log(query);
    connection.query(query, function (err, res) {
        console.log(query);
	  if (err) throw err;
    //   res.end(JSON.stringify(res));
    //   console.log(res);
      if(res.affectedRows>0){
          console.log("Person Succesfully added!")
      }
	});
})
// to edit the credentials of an existing user
app.put('/people/edit/:pid',function(req,res){
    var query = "Update people SET name='"+req.body.name+"',mobno='"+req.body.mobno+"',aadharno='"+req.body.aadharno+"',emailid='"+req.body.emailid+"',password='"+req.body.password+"' where pid='"+req.params.pid+"';";
    
    console.log(query);
    connection.query(query,function(err,res){
        if(err) throw err;
        console.log(res);
        if(res.affectedRows>0){
            console.log("Person Succesfully updated!")
        }
    })
})
// To delet the credentials of a specific person
app.delete("/people/delete/:pid",function(req,res){
    var query="DELETE FROM people WHERE pid ="+req.params.pid+";";
    console.log(query);
    connection.query(query,function(err,res){
        if(err) throw err;
        console.log(res);
        if(res.affectedRows>0){
            console.log("Person Succesfully deleted!")
        }
    })
})


// signup route
app.post('/signup',function(req,res){
    var query="INSERT INTO `aadhunik`.`people` (`name`, `mobno`, `aadharno`, `emailid`, `password`) VALUES ('"+req.body.name+"','"+req.body.aadharno+"','"+req.body.mobno+"','"+req.body.emailid+"','"+req.body.password+"');";
    
    console.log(query);
    connection.query(query, function (err, res) {
        console.log(query);
	  if (err) throw err;
    //   res.end(JSON.stringify(res));
    //   console.log(res);
      if(res.affectedRows>0){
          console.log("Person Succesfully added!")
      }
	});
})

const logged_in_user="test@gmail.com";
app.post("/login",function(req,res){
    var query = "SELECT * FROM `people` where `emailid` = '"+req.body.emailid+"' and `password` = '"+req.body.password+"' ;";
    console.log(query);
    connection.query(query, function(err,res){
        if(err) throw err;
        console.log(res);
        // if(!err){
            // logged_in_user=res[0].emailid;
            console.log(res[0].emailid);
        // }

    })
})





//listening at port 3000
app.listen(3000, "localhost", function () {
    console.log("The Server Has Started on port 3000!");
});