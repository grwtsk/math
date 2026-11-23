"""Certify local Hermite matrices from zeta on a rectangle, without real sign samples.

Uses python-flint. The uniform Taylor bounds are proved in XiContourTraceForm.md.
"""
from concurrent.futures import ProcessPoolExecutor

from flint import acb, acb_poly, acb_series, arb, arb_mat, ctx, fmpq, fmpq_mat


def circle_sample(task):
    center, size, j, phase = task
    ctx.prec = 512
    z = (acb(2*j)/size).exp_pi_i()
    arg = acb(arb(1)/2, center)+acb(0,1)*z
    mid = arg.mid()
    # On the segment joining argument and midpoint, a disk of radius 1/2
    # lies in the radius-two Cauchy disk. Thus |zeta'| <= 2*(center+10)^4.
    assert abs(arg-acb(arb(1)/2,center)) < arb(5)/4
    assert abs(arg-mid) < arb(1)/8
    delta = arb(0,2*(arb(center)+10)**4*abs(arg-mid))
    ctx.prec = 192
    f = (mid.zeta()+acb(delta,delta))*(acb(0,phase)*z).exp()
    assert f.is_finite(), (j, f)
    return f.real.str(58), f.imag.str(58)


class ZetaJet:
    """Taylor enclosure on |z|<1 from the radius-two Cauchy bound."""

    def __init__(self, center):
        assert center > 4
        bound = (abs(center)+10)**4
        if center < 100000:
            order = 128
            ctx.cap = order
            coeffs = list(acb_series([acb(arb(1)/2, center), acb(0,1)], order).zeta())
        else:
            # The exponential balances the function on opposite sides of the
            # rectangle. It has no zeros and contributes no contour residues.
            n = center.unique_fmpz()
            assert n is not None and center == arb(n)
            order, phase = 320, 14
            bound *= arb(2*phase).exp()
            tasks = [(int(n), order, j, phase) for j in range(order)]
            with ProcessPoolExecutor(max_workers=8) as pool:
                samples = [acb(arb(a),arb(b)) for a,b in pool.map(circle_sample,tasks,chunksize=2)]
            # Sampling on the unit circle aliases a_j with a_{j+order}, ...
            alias = bound/(arb(2)**order-1)
            coeffs = []
            for j, b in enumerate(acb.dft(samples)):
                err = arb(0,alias/arb(2)**j)
                coeffs.append(b/order+acb(err,err))
        self.poly = acb_poly(coeffs)
        self.derivative = self.poly.derivative()
        # Cauchy: |a_j| <= bound/2^j. Sum both tails for |z| <= 1.
        err = bound / arb(2)**(order-1)
        forder = err*(order+1)
        self.value_error = acb(arb(0, err), arb(0, err))
        self.derivative_error = acb(arb(0, forder), arb(0, forder))

    def patch(self, mid):
        radius = arb(1)/5
        assert abs(mid)+radius < 1
        shifted = self.poly(acb_poly([mid,1]))
        cutoff = 50
        coeff = list(shifted)
        poly = acb_poly(coeff[:cutoff])
        derivative = poly.derivative()
        remainder = sum(abs(a)*radius**j for j,a in enumerate(coeff) if j>=cutoff)
        drem = sum(j*abs(a)*radius**(j-1) for j,a in enumerate(coeff) if j>=cutoff)
        ferr = self.value_error+acb(arb(0,remainder),arb(0,remainder))
        derr = self.derivative_error+acb(arb(0,drem),arb(0,drem))
        def logderiv(u):
            if not abs(u) < radius:
                return acb(arb.nan())
            return (derivative(u)+derr)/(poly(u)+ferr)
        return logderiv


def moments(center, width):
    jet = ZetaJet(center)
    height = arb(9)/16
    corners = [acb(width,height), acb(-width,height), acb(-width,-height), acb(width,-height)]
    patches = []
    for start,end in zip(corners,corners[1:]+corners[:1]):
        half = (end-start)/16
        for j in range(8):
            mid = start+(2*j+1)*half
            patches.append((mid,half,jet.patch(mid)))
    def moment(k):
        tol = arb(2)**-67
        value = acb(0)
        for mid,half,logderiv in patches:
            def integrand(u, analytic):
                return ((u+mid)/width)**k*logderiv(u)
            value += acb.integral(integrand,-half,half,rel_tol=tol,abs_tol=tol,eval_limit=20000)
        value /= acb(0,2*arb.pi())
        assert value.is_finite() and value.imag.contains(0), (center, k, value)
        return value.real
    total = moment(0).unique_fmpz()
    assert total is not None and total >= 0
    size = int(total)
    # A known integer enclosed by a rigorous ball may be made exact.
    return size, [arb(size)]+[moment(k) for k in range(1, max(2,2*size))]


def pencil_brackets(sums, size):
    if size == 0:
        return []
    # Newton's identities propose locations in the normalized coordinate.
    coeff = [arb(1)]
    for j in range(1,size+1):
        coeff.append(-sum(coeff[j-i]*sums[i] for i in range(1,j+1))/j)
    roots = acb_poly(list(reversed(coeff))).roots()
    def determinant(t):
        return arb_mat([[t*sums[i+j]-sums[i+j+1] for j in range(size)] for i in range(size)]).det()
    brackets = []
    for a in sorted(roots,key=lambda z: float(z.real.mid())):
        for exponent in [18,16,14,12,10,8]:
            delta = arb(2)**-exponent
            left, right = a.real.mid()-delta, a.real.mid()+delta
            if determinant(left)*determinant(right) < 0:
                break
        else:
            raise ArithmeticError('Could not certify a pencil eigenvalue')
        assert (-1 < left and right < 1) and (not brackets or brackets[-1][1] < left)
        brackets.append((left,right))
    assert len(brackets) == size
    return brackets


def collision_controls():
    checks = 0
    for b in range(9):
        for m in [1,2,5]:
            for shift in [10,14]:
                delta = fmpq(1,2**(shift+b))
                def power(k):
                    pair = 0 if k%2 else 2*m*(-delta**2)**(k//2)
                    return sum((-j)**k for j in range(1,b+1))+pair
                def minor(k):
                    return fmpq_mat([[power(i+j) for j in range(k)] for i in range(k)]).det()
                assert all(minor(k)>0 for k in range(1,b+2))
                exact = -4*m*m*delta**2
                for i in range(1,b+1):
                    exact *= (i*i+delta**2)**2
                    for j in range(1,i):
                        exact *= (i-j)**2
                assert minor(b+2) == exact
                assert minor(b+3) == 0
                checks += 1
    print('exact conjugate-collision tests',checks,flush=True)


def verify(center, width):
    size, sums = moments(center, width)
    minors = [arb_mat([[sums[i+j] for j in range(k)] for i in range(k)]).det()
              for k in range(1,size+1)]
    assert all(d > 0 for d in minors), (center, minors)
    print('center',center.str(16),'half-width',width.str(6),'simple real zeros',size,
          'leading minors',[d.str(9) for d in minors],flush=True)
    brackets = pencil_brackets(sums,size)
    print('pencil eigenvalue offsets',[(width*a).union(width*b).str(11) for a,b in brackets],
          flush=True)
    if size == 2:
        # The two normalized roots differ by sqrt(2*s_2-s_1^2).
        gap = width*(2*sums[2]-sums[1]**2).sqrt()
        mid = center+width*sums[1]/2
        print('roots',(mid-gap/2).str(19),(mid+gap/2).str(19),'gap',gap.str(15),flush=True)
    return size


if __name__ == '__main__':
    ctx.prec = 175
    collision_controls()
    assert verify(arb(7005), arb(1)/2) == 2
    for shift in [1,5,6,0,2,3,4]:
        verify(arb(10**13+shift), arb(1)/2)
