// Generated by CoffeeScript 1.7.1
var fs;

fs = require('fs');

fs.readFile('test.pipe', 'ascii', function(err, data) {
  var line, lines, new_data, new_line, rev_line, _i, _len;
  if (err) {
    throw err;
  }
  lines = data.split(/\n/);
  new_data = [];
  for (_i = 0, _len = lines.length; _i < _len; _i++) {
    line = lines[_i];
    rev_line = "" + (line.split('').reverse().join('')) + " ";
    new_line = rev_line.replace(/\|/g, ',');
    new_data.push(new_line);
  }
  return fs.writeFile('reverse.csv', new_data.join("\n"), function(err) {
    if (err) {
      throw err;
    }
    return console.log("File saved as reverse.csv.");
  });
});
