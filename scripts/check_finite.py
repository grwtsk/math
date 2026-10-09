"""Independent finite oracle in Q(sqrt(3),sqrt(11)); no floating point or Lean output."""
from fractions import Fraction as F
from itertools import product,combinations
import json,pathlib
def field(*xs):return tuple(F(x) for x in xs)
def add(a,b):return tuple(x+y for x,y in zip(a,b))
def neg(a):return tuple(-x for x in a)
def mul(a,b):
 out=[F(0)]*4
 for i,x in enumerate(a):
  for j,y in enumerate(b):
   overlap=i&j;out[i^j]+=x*y*(3 if overlap&1 else 1)*(11 if overlap&2 else 1)
 return tuple(out)
def scale(a,k):return tuple(x*F(k) for x in a)
zero=field(0,0,0,0);one=field(1,0,0,0);s3=field(0,1,0,0);s11=field(0,0,1,0)
def cmul(a,b):return add(mul(a[0],b[0]),neg(mul(a[1],b[1]))),add(mul(a[0],b[1]),mul(a[1],b[0]))
a=(scale(s3,F(1,2)),scale(one,F(1,2)));b=(a[0],neg(a[1]));t=(s3,zero);u=(scale(one,F(5,6)),scale(s11,F(1,6)))
points=[(zero,zero),a,b,t,cmul(u,a),cmul(u,b),cmul(u,t)]
edges={(0,1),(0,2),(1,2),(1,3),(2,3),(0,4),(0,5),(4,5),(4,6),(5,6),(3,6)}
observed=set()
for i,j in combinations(range(7),2):
 dx=add(points[i][0],neg(points[j][0]));dy=add(points[i][1],neg(points[j][1]))
 if add(mul(dx,dx),mul(dy,dy))==one:observed.add((i,j))
assert len(set(points))==7 and observed==edges
color=[0,1,2,0,1,2,3]
proper=lambda f,es:all(f[i]!=f[j] for i,j in es)
assert proper(color,edges)
three=[f for f in product(range(3),repeat=7) if proper(f,edges)]
assert not three
deleted=edges-{(3,6)};counterexamples=[f for f in product(range(3),repeat=7) if proper(f,deleted)]
assert counterexamples
assert not proper([0,1,2,0,1,2,0],edges)
report={"schema_version":1,"outcome":"passed","arithmetic":"Exact rational four-basis arithmetic for Q(sqrt(3),sqrt(11)); basis independence assumed by arithmetic interpretation, geometric relation additionally Lean-checked.","vertices":7,"pairs":21,"unit_edges":11,"four_color":color,"three_assignments_tested":2187,"proper_three_colorings":0,"deleted_edge_control":{"outcome":"refuted-or-limited","edge":[3,6],"proper_three_colorings":len(counterexamples),"counterexample":counterexamples[0]},"wrong_four_color_control":"passed: rejection","scope":"Seven-point graph exact four; no exact-plane chromatic-number claim"}
root=pathlib.Path(__file__).resolve().parent.parent
(root/"evidence/finite-results.json").write_text(json.dumps(report,indent=2)+"\n")
print(json.dumps(report))

