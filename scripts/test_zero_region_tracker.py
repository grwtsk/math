#!/usr/bin/env python3
"""Exact finite controls. These are not an infinite zero-exclusion proof."""
from fractions import Fraction as Q
from itertools import product
import unittest,json
from pathlib import Path
import zero_region_tracker as z
import reflected_zeta_cover as r

class RegionTests(unittest.TestCase):
 def test_quartic_matches_complex_square(self):
  cs=[(Q(1,3),Q(-1,4)),(Q(2),Q(3)),(Q(-2,5),Q(1,7))]
  re,im=z.complex_quadratic_polys(cs);p=z.add(z.mul(re,re),z.mul(im,im))
  for i,j in product(range(-4,5),repeat=2):
   x,y=Q(i,3),Q(j,5)
   ar=cs[0][0]+cs[1][0]*x-cs[1][1]*y+cs[2][0]*(x*x-y*y)-2*cs[2][1]*x*y
   ai=cs[0][1]+cs[1][0]*y+cs[1][1]*x+cs[2][1]*(x*x-y*y)+2*cs[2][0]*x*y
   self.assertEqual(z.evaluate(p,x,y),ar*ar+ai*ai)
 def test_bernstein_exact_reconstruction(self):
  for i in range(5):
   for j in range(5-i):z.power_basis_test({(i,j):Q(7,11)},Q(2,7),Q(3,5))
 def test_bernstein_range(self):
  p={(0,0):Q(3),(1,0):Q(-1),(2,2):Q(4),(4,0):Q(2)}
  b=z.bernstein(p,Q(1,3),Q(1,4));lo=min(v for row in b for v in row);hi=max(v for row in b for v in row)
  for i,j in product(range(9),repeat=2):
   v=z.evaluate(p,Q(i-4,12),Q(j-4,16));self.assertLessEqual(lo,v);self.assertLessEqual(v,hi)
 def test_square_pullback(self):
  for a,b,c in [(Q(2),Q(1),Q(3)),(Q(1),Q(0),Q(-1)),(Q(1),Q(0),Q(1))]:
   p=z.conic_square_pullback(a,b,c)
   for x,y in product(map(Q,range(-3,4)),repeat=2):
    u,v=x*x-y*y,2*x*y
    self.assertEqual(z.evaluate(p,x,y),a*u*u+2*b*u*v+c*v*v)
 def test_circle_pullback_exact(self):
  self.assertEqual(z.conic_square_pullback(1,0,1),{(4,0):Q(1),(3,1):Q(0),(2,2):Q(2),(1,3):Q(0),(0,4):Q(1)})
 def test_indefinite_pullback_not_positive(self):
  p=z.conic_square_pullback(1,0,-1)
  self.assertLess(z.evaluate(p,Q(1),Q(1)),0)
 def test_cardinal_alias(self):
  p=z.conic_square_pullback(2,1,3)
  self.assertEqual({z.evaluate(p,x,y) for x,y in [(1,0),(0,1),(-1,0),(0,-1)]},{Q(2)})
 def test_ellipse_whitening_preserves_sign(self):
  for x,y in product(map(Q,range(-3,4)),repeat=2):
   self.assertEqual(x*x/Q(4)+y*y/Q(9),(x/2)**2+(y/3)**2)
 def test_whitening_not_complex_linear(self):
  # Different real-axis scalings do not commute with multiplication by i.
  T=lambda x,y:(x/2,y/3)
  x,y=Q(1),Q(2);a,b=T(x,y)
  self.assertNotEqual(T(-y,x),(-b,a))
 def test_square_folded_strip(self):
  for x,y in product([Q(j,10) for j in range(-8,9)],[Q(j,3) for j in range(-7,8)]):
   u,v=x*x-y*y,2*x*y
   self.assertEqual(abs(x)<Q(1,2),u<Q(1,4)-v*v)
 def test_quartet_discriminant(self):
  for a,t in product([Q(0),Q(1,8),Q(1,3)],[Q(1),Q(14)]):
   b=2*(t*t-a*a);c=(a*a+t*t)**2
   self.assertEqual(b*b-4*c,-16*a*a*t*t)
 def test_missing_leaf_rejected(self):
  with self.assertRaises(ValueError):z.source_geometry({'domain':['1/2','1','0','32'],'leaves':[{'path':'0'}]})
 def test_midpoint_coefficient_error_retained(self):
  I,C=r.Interval,r.ComplexBox
  local=r.LocalModel(Q(3,4),Q(1),r.Parameters(),(C(I(0,2),I(0,0)),C.point(0),C.point(0)),Q(0),Q(0))
  box=r.Rectangle(Q(5,8),Q(7,8),Q(7,8),Q(9,8));out=z.quadratic_candidate(local,box)
  self.assertEqual(Q(out['error_bound']),1);self.assertFalse(out['zero_free'])
 def test_omitted_analytic_tail_control(self):
  local=r.LocalModel(Q(3,4),Q(1),r.Parameters(),(r.ComplexBox.point(1),r.ComplexBox.point(0),r.ComplexBox.point(0)),Q(0),Q(2))
  box=r.Rectangle(Q(5,8),Q(7,8),Q(7,8),Q(9,8));out=z.quadratic_candidate(local,box)
  self.assertEqual(Q(out['error_bound']),2);self.assertFalse(out['zero_free'])
 def test_zero_candidate_not_existence(self):
  # An error disk containing zero does not force the true function to be zero.
  p={(0,0):Q(1)};self.assertLess(z.evaluate(p,0,0)-4,0);self.assertNotEqual(z.evaluate(p,0,0),0)
 def test_actual_quartic_cell(self):
  box=r.Rectangle(Q(1,2),Q(3,4),Q(55,4),Q(14))
  out=z.quadratic_candidate(r.model(*box.center()),box)
  self.assertGreater(Q(out['bernstein_lower_bound']),2)
  self.assertLess(Q(out['original_triangle_margin']),0)
 def test_actual_root_cell_not_excluded(self):
  box=r.Rectangle(Q(1,2),Q(3,4),Q(14),Q(57,4))
  out=z.quadratic_candidate(r.model(*box.center()),box);self.assertFalse(out['zero_free'])
 def test_actual_new_slab(self):
  for x in [Q(1,2),Q(3,4)]:
   box=r.Rectangle(x,x+Q(1,4),Q(32),Q(129,4))
   out=z.quadratic_candidate(r.model(*box.center()),box)
   self.assertGreater(Q(out['bernstein_lower_bound']),400)
 def test_tight_roots_replay(self):
  rows=json.loads((Path(__file__).resolve().parents[1]/'evidence/number-theory/zeta/zero-region-root-enclosures-20261014.json').read_text())
  self.assertEqual(len(rows),4)
  for row in rows:
   cx,cy=map(Q,row['center']);rad=Q(row['radius'])
   self.assertEqual(cx,Q(1,2));self.assertGreater(r.model(cx,cy).one_zero_margin(rad),Q(row['rouche_margin_lower']))
   self.assertLess(abs(cy-Q(row['old_seed']))+rad,Q(1,16))

if __name__=='__main__':unittest.main()
