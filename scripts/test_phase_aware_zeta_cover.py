#!/usr/bin/env python3
"""Exact finite and hostile checks; continuum proof is separate, not Lean."""
from copy import deepcopy
from fractions import Fraction as Q
from itertools import product
from math import comb
from pathlib import Path
import json
import unittest
import reflected_zeta_cover as r
import phase_aware_zeta_cover as p


def point(re=0,im=0): return r.ComplexBox.point(re,im)
def center(a): return ((a.re.lo+a.re.hi)/2,(a.im.lo+a.im.hi)/2)
def abs2(a):
    x,y=center(a)
    if a.re.lo!=a.re.hi or a.im.lo!=a.im.hi: raise ValueError('exact Gaussian rational required')
    return x*x+y*y

def polynomial(c,z):
    a=point(0)
    for x in reversed(c): a=a*z+x
    return a

def bernstein_value(net,s,t):
    d=len(net)-1
    value=point(0)
    for i,row in enumerate(net):
        for j,b in enumerate(row):
            value += (Q(comb(d,i))*s**i*(1-s)**(d-i)
                      *comb(d,j)*t**j*(1-t)**(d-j))*b
    return value


def tiny_cover():
    params=r.Parameters()
    box=r.Rectangle(Q(1,2),1,0,Q(1,32))
    m,d,_=p.phase_margin(r.model(*box.center(),params),box)
    if m<=0: raise ArithmeticError('actual tiny fixture does not separate')
    return dict(schema='phase-aware-reflected-cover-v1',
       function='(s-1)*zeta(s), entire regularization',parameters=params.json(),
       domain=box.json(),roots=[],leaves=[dict(path='',kind='phase_separated',degree=4,
          direction=[str(x) for x in d],margin_power=r.dyadic_floor_power(m))],
       interpretation='Finite phase-aware cover only; fixed source and exact xi reflection.',
       native_lean_admission=False)


class PhaseCoverTests(unittest.TestCase):
    def test_bernstein_partition_of_unity(self):
        for d in range(9):
            for s in (Q(0),Q(1,7),Q(1,2),Q(1)):
                self.assertEqual(sum(Q(comb(d,j))*s**j*(1-s)**(d-j) for j in range(d+1)),1)
    def test_independent_complex_polynomial_evaluation(self):
        samples=0
        for d in range(1,7):
            c=[point(Q((-1)**j*(j+1),7),Q(j-2,5)) for j in range(d+1)]
            hx,hy=Q(1,8),Q(3,16)
            net=p.tensor_bernstein(c,hx,hy)
            for s,t in product((Q(0),Q(1,5),Q(1,2),Q(1)),repeat=2):
                target=polynomial(c,point(hx*(2*s-1),hy*(2*t-1)))
                observed=bernstein_value(net,s,t)
                self.assertTrue(observed.re.contains(target.re.lo))
                self.assertTrue(observed.im.contains(target.im.lo)); samples+=1
        self.assertEqual(samples,96)
    def test_linear_control_points_equal_corners(self):
        c=[point(2,1),point(3,-2)];hx,hy=Q(1,8),Q(1,4)
        net=p.tensor_bernstein(c,hx,hy)
        for i,j in product(range(2),repeat=2):
            self.assertEqual(net[i][j],polynomial(c,point(hx*(2*i-1),hy*(2*j-1))))
    def test_interval_coefficients_outer_enclosure(self):
        c=[r.ComplexBox(r.Interval(1,2),r.Interval(-1,1)),point(2)]
        net=p.tensor_bernstein(c,Q(1,8),Q(1,8))
        self.assertLessEqual(p.projected_minimum(net,(1,0)),Q(3,4))
    def test_halfplane_can_beat_triangle(self):
        # 1+20z on a tall thin rectangle: real part >=4/5 although
        # the whole-disk absolute derivative majorant crosses zero.
        par=r.Parameters(degree=4);box=r.Rectangle(Q(3,4)-Q(1,100),Q(3,4)+Q(1,100),-Q(1,10),Q(1,10))
        c=(point(1),point(20),point(0),point(0),point(0))
        model=r.LocalModel(*box.center(),par,c,Q(0),Q(0))
        self.assertLess(model.zero_free_margin(box.radius()),0)
        observed=p.phase_margin(model,box,1,(1,0))[0]
        self.assertLessEqual(observed,Q(4,5))
        self.assertLess(Q(4,5)-observed,Q(1,2**100))
    def test_complex_projection_normalization(self):
        self.assertEqual(p.validate_direction((Q(3,7),Q(4,7))),(Q(3,7),Q(4,7)))
        self.assertLess(sum(x*x for x in p.validate_direction((Q(3,7),Q(4,7)))),1)
    def test_unscaled_direction_rejected(self):
        for d in ((2,0),(0,0),(1,1),(True,0),[1]):
            with self.assertRaises((ValueError,TypeError)): p.validate_direction(d)
    def test_no_center_only_rule(self):
        # 1-10z has a zero in this rectangle although its center is nonzero.
        par=r.Parameters(degree=4);box=r.Rectangle(Q(1,2),1,-Q(1,16),Q(1,16))
        model=r.LocalModel(*box.center(),par,(point(1),point(-10),point(),point(),point()),Q(0),Q(0))
        self.assertLessEqual(p.phase_margin(model,box,1)[0],0)
    def test_nonzero_vertices_not_enough(self):
        self.assertLess(p.projected_minimum(((point(1),point(-1)),),(1,0)),0)
    def test_tail_never_dropped(self):
        par=r.Parameters(degree=4);box=r.Rectangle(Q(5,8),Q(7,8),-Q(1,8),Q(1,8))
        c=(point(1),point(0),point(100),point(0),point(0))
        model=r.LocalModel(*box.center(),par,c,Q(0),Q(1,10))
        margin,_,tail=p.phase_margin(model,box,1,(1,0))
        self.assertEqual(tail,Q(1,10)+100*box.radius()**2)
        self.assertLess(margin,0)
    def test_bad_local_center_rejected(self):
        box=r.Rectangle(Q(1,2),1,0,Q(1,32))
        with self.assertRaises(ValueError): p.phase_margin(r.model(1,0),box)
    def test_outer_radius_guard(self):
        box=r.Rectangle(Q(1,2),1,0,1)
        with self.assertRaises(ValueError): p.phase_margin(r.model(*box.center()),box)
    def test_resources_and_types(self):
        for c,hx,hy in (([],1,1),([point()]*10,1,1),([point()],0,1),([point()],0.2,1)):
            with self.assertRaises((ValueError,TypeError)):p.tensor_bernstein(c,hx,hy)
    def test_complete_partition(self):
        p.make_trie([{'path':'0'},{'path':'10'},{'path':'11'}])
    def test_missing_partition_leaf(self):
        with self.assertRaises(ValueError):p.make_trie([{'path':'0'}])
    def test_duplicate_or_ancestor(self):
        for rows in ([{'path':''},{'path':'0'}],[{'path':'0'},{'path':'0'}]):
            with self.assertRaises(ValueError):p.make_trie(rows)
    def test_actual_source_tiny_cover(self):
        result=p.verify_cover(tiny_cover())
        self.assertTrue(result['verified']);self.assertEqual(result['total_cells'],1)
    def test_wrong_source_rejected(self):
        c=tiny_cover();c['function']='zeta(s)'
        with self.assertRaises(ValueError):p.verify_cover(c)
    def test_fake_all_height_rejected(self):
        c=tiny_cover();c['domain'][-1]='33'
        with self.assertRaises(ValueError):p.verify_cover(c)
    def test_fake_native_rejected(self):
        c=tiny_cover();c['native_lean_admission']=True
        with self.assertRaises(ValueError):p.verify_cover(c)
    def test_inflated_margin_rejected(self):
        c=tiny_cover();c['leaves'][0]['margin_power']=100
        with self.assertRaises(ArithmeticError):p.verify_cover(c)
    def test_reversed_phase_rejected(self):
        c=tiny_cover();c['leaves'][0]['direction']=[str(-Q(x)) for x in c['leaves'][0]['direction']]
        with self.assertRaises(ArithmeticError):p.verify_cover(c)
    def test_phase_preserves_power_not_fixed_readout(self):
        c=[point(1),point(-1)]; d=[point(1),point(1)]
        self.assertEqual(sum(map(abs2,c)),sum(map(abs2,d)))
        self.assertEqual(abs2(sum(c,point())),0);self.assertEqual(abs2(sum(d,point())),4)
    def test_exact_four_beam_parseval(self):
        unit=point(0,1);powers=[point(1),unit,point(-1),-unit]
        for entries in product((-1,0,1),repeat=4):
            x=list(map(point,entries))
            out=[sum((powers[(j*k)%4]*x[k]/2 for k in range(4)),point()) for j in range(4)]
            self.assertEqual(sum(map(abs2,out)),sum(map(abs2,x)))
    def test_taper_requires_complement(self):
        a,b=point(3,4),point(-3,-4)
        self.assertEqual(abs2(a+b),0);self.assertEqual(abs2(a),25)
    def test_rational_filter_alias(self):
        # On a geometric integer support the steering character repeats:
        # exp(i*2*pi*j)=1. This exact roots-of-unity fixture includes labels.
        z=point(0,1);powers=[point(1),z,point(-1),-z]
        for j in range(40):self.assertEqual(powers[(4*j)%4],point(1))
    def test_ellipsoid_projection_has_complete_cost(self):
        # All rational points in unit square with Euclidean norm <=1.
        b=(Q(3),Q(4));E=((Q(2),Q(1)),(Q(-1),Q(2)))
        dual=(b[0]*E[0][0]+b[1]*E[1][0],b[0]*E[0][1]+b[1]*E[1][1])
        bound2=sum(x*x for x in dual)
        for i,j in product(range(-4,5),repeat=2):
            v=(Q(i,4),Q(j,4))
            if sum(x*x for x in v)<=1:self.assertLessEqual(sum(x*y for x,y in zip(dual,v))**2,bound2)

if __name__=='__main__':unittest.main()
