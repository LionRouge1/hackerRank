## Regexp `sub`
> `'002-10.00-20.00'.sub(/(.{5})-(.{5})$/){"%.2f" % (($2.to_f + $1.to_f)/2).round(2)}`
- ##=> 002-15.00

> `'12-00-01PM'.match(/(^.{2})(.*)(.{2})/){"%.i#{$2}" %($1.to_i + 2)}`
- ##=> 14-00-01

## scan
> `'sossos'.scan('sos')`
- ##=> ['sos', 'sos']

> `'toto mange'.scan(/.{3}/)`
- ##=> ['tot', 'o m', 'ang']

## combination 
> `a = [1,2,3]</br>
> a.combination(2).to_a`
- ##=> [[1,2],[1,3],[2,3]]

## group_by
>`[2,2,1,3,1,1].group_by { |e| e }`
- ##=> { 2=>[2,2], 1=>[1,1,1], 3=>[3] }