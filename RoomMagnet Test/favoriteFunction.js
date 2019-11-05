function favoriteBtn(propertyID) {
        Console.error("65r67r6");
        var connection = new ActiveXObject("ADODB.Connection");
        var connectionstring = "server=aa1evano00xv2xb.cqpnea2xsqc1.us-east-1.rds.amazonaws.com;database=roommagnetdb;uid=admin;password=Skylinejmu2019;";
        connection.Open(connectionstring);
        var rs = new ActiveXObject("ADODB.Recordset");
        rs.Open("Select [PropertyID],[City], [HomeState], [Zip], [RoomPriceRangeLow],[RoomPriceRangeHigh] from[dbo].[Property] where [PropertyID]="+propertyID, connection);
        rs.MoveFirst();
        var span = document.createElement("span");
        document.body.appendChild(span);
        while (!rs.eof) {
            var propID = rs.fields(0);
            var city = rs.fields(1);
            var state = rs.fields(2);
            var zip = rs.fields(3);
            var roomPriceLow = rs.fields(4);
            var roomPriceHigh = rs.fields(5);
            rs.MoveNext();
        }
        Console.log(propID);
        rs.close();
        connection.close();
}



//var mysql = require('mysql');

//var con = mysql.createConnection({
//  host: "aa1evano00xv2xb.cqpnea2xsqc1.us-east-1.rds.amazonaws.com",
//  user: "admin",
//  password: "Skylinejmu2019",
//  database: "roommagnetdb"
//});

//con.connect(function(err) {
//  if (err) throw err;
//  con.query("Select [PropertyID],[City], [HomeState], [Zip], [RoomPriceRangeLow],[RoomPriceRangeHigh] from[dbo].[Property] where [PropertyID]="+propertyID,
//    function (err, result, fields) {
//    if (err) throw err;
//    console.log(result);
//  });
//});
