#!/usr/bin/env python3
"""Source-derived zero moments and real Hermite matrices on certified disks.

This is written-analysis plus exact-arithmetic research, not Lean admission.
Uses the unchanged repository Euler--Maclaurin jets and all their errors.
No sampled zeta ordinates and no numerical values of F'/F enter this program.
Each polynomial root used here is independently enclosed by rational Rouche
inequalities. The logarithmic derivative occurs only in the analytic proof.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
import json
from pathlib import Path
import reflected_zeta_cover as base
import zeta_region_atlas as atlas


def q(value):
    return base.rational(value)


def cpower(z, exponent):
    base.integer(exponent, 'exponent', 0, 64)
    result=(Q(1),Q(0))
    for _ in range(exponent): result=atlas.cmul(result,z)
    return result


def log_ratio_budget(error, boundary_lower):
    """Rational upper bound for -log(1-error/boundary_lower)."""
    error,boundary_lower=q(error),q(boundary_lower)
    if error<0 or boundary_lower<=error:
        raise ValueError('strict positive polynomial boundary surplus required')
    return error/(boundary_lower-error)


def normalized_moment_budget(k,error,boundary_lower):
    base.integer(k,'moment order',0,64)
    theta=log_ratio_budget(error,boundary_lower)
    return k*theta


def hermite_operator_budget(count,theta):
    base.integer(count,'root count',1,64);theta=q(theta)
    if theta<0: raise ValueError('negative uncertainty')
    return Q(3,2)*count*(count-1)*theta


def pair_discriminant(m1,m2):
    """For an ACTUAL count-two conjugation-stable divisor only."""
    return 2*m2-m1*m1


def pair_discriminant_error(m1_center,e1,e2):
    m1_center,e1,e2=map(q,(m1_center,e1,e2))
    if min(e1,e2)<0: raise ValueError('negative uncertainty')
    return 2*e2+2*abs(m1_center)*e1+e1*e1


def circle_source_packet(height,radius=Q(1,16),scale=Q(40),parameters=None):
    """Enclose all moments of the one source zero in a prescribed disk.

    Count is proved by polynomial and source Rouche; it is not imported from
    the atlas count. Neither coordinates nor output moments are projected to
    the critical line. Symmetry is used later for the whole selected divisor.
    """
    height,radius,scale=map(q,(height,radius,scale))
    if not 0<radius<Q(1,2) or not height>radius or not scale>height+radius:
        raise ValueError('positive separated disk and bounding spectral scale required')
    parameters=base.Parameters() if parameters is None else parameters
    if not isinstance(parameters,base.Parameters):raise TypeError('Parameters required')
    local=base.model(Q(1,2),height,parameters)
    coeff,error=atlas.quadratic_data(local,radius)
    c,b,a=coeff
    if not atlas.abs2(a):raise ArithmeticError('quadratic coefficient is zero')
    lower_b=atlas.sqrt_interval(atlas.abs2(b)).lo
    upper_c=atlas.sqrt_interval(atlas.abs2(c)).hi
    upper_a=atlas.sqrt_interval(atlas.abs2(a)).hi
    boundary=lower_b*radius-upper_c-upper_a*radius*radius
    theta=log_ratio_budget(error,boundary)
    # p is within |b z| on the contour, so p has exactly one zero in it.
    delta=atlas.cadd(atlas.cmul(b,b),atlas.cscale(atlas.cmul(a,c),-4))
    root=atlas.midpoint_sqrt(delta)
    proposals=[atlas.cdiv(atlas.cadd(atlas.cscale(b,-1),atlas.cscale(root,sign)),atlas.cscale(a,2)) for sign in (1,-1)]
    eta=Q(1,1<<72)
    accepted=[]
    for z in proposals:
        if atlas.sqrt_interval(atlas.abs2(z)).hi+eta<radius:
            if atlas.quadratic_rouche_margin(coeff,0,z,eta)<=0:
                raise ArithmeticError('comparison root proposal unproved')
            accepted.append(z)
    if len(accepted)!=1:raise ArithmeticError('one contained polynomial root was not isolated')
    z=accepted[0]
    w=((height+z[1])/scale,-z[0]/scale)
    R=(height+radius)/scale
    moments=[]
    for k in range(7):
        middle=cpower(w,k)
        err=Q(0) if k==0 else k*R**(k-1)*(radius*theta+eta)/scale
        moments.append(base.ComplexBox(base.Interval.point(middle[0]).widen(err),base.Interval.point(middle[1]).widen(err)))
    return dict(height=height,radius=radius,scale=scale,coefficients=coeff,
                source_error=error,polynomial_boundary_lower=boundary,
                boundary_surplus=boundary-error,theta=theta,
                polynomial_root=z,polynomial_root_radius=eta,moments=moments,
                polynomial_count=1,source_count=1)


def even_four_divisor(first,second):
    """Pair two positive disks with their negative-height conjugates.

    The four disks must be disjoint. Xi zero-set conjugation and reflection
    give real even moments; numerical F itself is not declared real-even.
    This is an actual FOUR-DIVISOR factor, NOT the four-slot orbit polynomial.
    """
    if first['scale']!=second['scale']:raise ValueError('different moment scales')
    if abs(first['height']-second['height'])<=first['radius']+second['radius']:
        raise ValueError('positive disks overlap')
    m=[base.Interval.point(0) for _ in range(7)]
    m[0]=base.Interval.point(4)
    for k in (2,4,6):
        m[k]=2*(first['moments'][k].re+second['moments'][k].re)
    # Odd moments vanish by actual -w zero-divisor symmetry, not numeric rounding.
    even_minor=4*m[4]-m[2]*m[2]
    odd_minor=m[2]*m[6]-m[4]*m[4]
    positive=m[2].lo>0 and even_minor.lo>0 and odd_minor.lo>0
    # Normalized even monic factor: x^4+p*x^2+r; Newton identities.
    p=-m[2]/2
    r=m[2]*m[2]/8-m[4]/4
    gap=m[4]-m[2]*m[2]/4
    return dict(source='zeros of F in four disjoint source-certified disks',
                family='actual divisor; NOT a single repeated-slot reflection orbit',
                scale=first['scale'],positive_centers=[first['height'],second['height']],
                count=4,moments=m,p=p,r=r,gap=gap,
                even_principal_minor=even_minor,odd_principal_minor=odd_minor,
                hermite_positive_definite=positive,
                conclusion=('all four selected zeros are simple and on the critical line'
                            if positive else 'INCONCLUSIVE: no root-location conclusion'))


def serial(value):
    if isinstance(value,Q):return str(value)
    if isinstance(value,base.Interval):return {'lo':str(value.lo),'hi':str(value.hi)}
    if isinstance(value,base.ComplexBox):return {'re':serial(value.re),'im':serial(value.im)}
    if isinstance(value,dict):return {k:serial(v) for k,v in value.items()}
    if isinstance(value,(tuple,list)):return [serial(x) for x in value]
    return value


def demo():
    heights=list(map(Q,('113/8','21','25','487/16','527/16','601/16')))
    packets=[circle_source_packet(h) for h in heights]
    groups=[even_four_divisor(packets[i],packets[i+1]) for i in (0,2,4)]
    return serial(dict(schema='source-hermite-bridge-v1',
        scope='finite source moments plus written contour transfer; NOT Lean or all heights',
        parameters=base.Parameters().json(),spectral_coordinate='w=-i(s-1/2)/40',
        packets=packets,quartic_divisors=groups,
        nonclaims={'new_region':False,'RH':False,'uniform_orbit_positivity':False,
                   'Lean_admission':False,'numerical_log_derivative':False}))


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    try:
        result=demo();args.output.write_text(json.dumps(result,indent=2)+'\n')
        print(json.dumps({'quartic_factors':len(result['quartic_divisors']),
            'positive_definite':[g['hermite_positive_definite'] for g in result['quartic_divisors']],
            'new_zero_free_region':False,'native_lean':False},indent=2))
    except (ValueError,TypeError,ArithmeticError,OSError) as exc:parser.exit(2,str(exc)+'\n')

if __name__=='__main__':main()
