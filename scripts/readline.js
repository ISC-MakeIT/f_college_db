// ###### Thu Nov 1 17:45:05 JST 2018
// node .\scripts\readline.js .\scripts\src\students8.csv

var fs = require('fs');
var csvParse = require('csv-parse');

if (process.argv.length < 3) {
    console.error('lack argument.');
    process.exit(1);
}

var rs = null;
try {
    rs = fs.createReadStream(process.argv[2], 'utf-8');
    rs.on('error', function (err) {
        console.error(err);
        process.exit(1);
    });
}
catch (err) {
    console.error(err);
    process.exit(1);
}

var parser = csvParse({ delimiter: ',' });
parser.on('data', function (data) {
    console.log(data);
});
parser.on('error', function (err) {
    console.error(err);
    process.exit(1);
});

rs.pipe(parser);