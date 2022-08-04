const fs = require('fs');
const path = require('path');

weightedUniformStrings =(s, queries) => {
    let alp = 'abcdefghijklmnopqrstuvwxyz'
    let nt = 1
    let pt = 0
    let h = []
    let s_arr = s.split('')
    s_arr.forEach((e,i) => {
        let tr = s_arr.slice(pt, nt);
        h.push((alp.indexOf(tr[0]) + 1) * tr.length)
        console.log(tr)
        if(e == s[i + 1]){
            nt += 1
        }else {
            pt = i + 1
            nt = pt + 1
        }
    });
    return queries.map(e => h.includes(+e)? 'Yes' : 'No')
}
let text = '';
let queries = [];
fs.readFile(path.join(__dirname, 'test.txt'), 'utf8', (err, data) => {
  if(err) throw err
  let ar = data.split('\n');
  text = ar[0];
  ar.shift()
  queries = ar
  console.log(weightedUniformStrings('abccddde', [6,1,3,12,5,9,10]))
});

// f = File.new('test.txt', 'r')
// text = f.readline.chomp
// queries = f.read.split(' ')

//console.log(weightedUniformStrings(text, queries))