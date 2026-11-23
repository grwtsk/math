"""Exact finite Hardy kernel checks and Arb bounds for the dissipative xi model.

Requires python-flint. Each 2-by-2 rational block is multiplication by a
Gaussian rational on its real and imaginary coordinates. The four test points
are synthetic right-half-plane displacements; no zeta zeros are used as data.
"""
from itertools import combinations

from flint import acb, acb_mat, arb, ctx, fmpq, fmpq_mat


def scalar(real, imag=0):
    return fmpq_mat([[real, -imag], [imag, real]])


def blocks(rows):
    """Assemble interleaved real and imaginary coordinates."""
    return fmpq_mat([
        [entry[r, c] for entry in row for c in range(2)]
        for row in rows for r in range(2)
    ])


def entry(matrix, i, j):
    return fmpq_mat([[matrix[2*i+r, 2*j+c] for c in range(2)] for r in range(2)])


def complex_trace(matrix):
    return sum((entry(matrix, j, j) for j in range(matrix.nrows()//2)), scalar(0))


def determinant_polynomial(matrix):
    """Newton identities, returned in increasing powers of z in det(I-zM)."""
    n = matrix.nrows()//2
    traces = [complex_trace(matrix**j) for j in range(1, n+1)]
    coefficients = [scalar(1)]
    for k in range(1, n+1):
        coefficients.append(-sum((traces[j-1]*coefficients[k-j]
                                 for j in range(1, k+1)), scalar(0))/k)
    return coefficients


def ball(block):
    return acb(arb(block[0, 0]), arb(block[1, 0]))


def ball_matrix(matrix):
    n = matrix.nrows()//2
    return acb_mat([[ball(entry(matrix, i, j)) for j in range(n)] for i in range(n)])


def enclosed_zero(value):
    assert value.contains(0) and abs(value) < arb("1e-80"), value


def models():
    one, zero, imaginary = scalar(1), scalar(0), scalar(0, 1)
    points = [scalar(a, t) for a, height in [(fmpq(1, 4), 3), (fmpq(1, 8), 7)]
              for t in (height, -height)]
    n = len(points)
    w = [(one-d)*(one+d).inv() for d in points]
    roots = [imaginary*d.inv() for d in points]
    gram = blocks([[(one-u*v.transpose()).inv() for v in w] for u in w])
    assert gram == gram.transpose()
    # Sylvester's criterion on all leading principal real minors.
    for k in range(1, 2*n+1):
        assert fmpq_mat([[gram[i, j] for j in range(k)] for i in range(k)]).det() > 0
    adjoint = blocks([[roots[i].transpose() if i == j else zero
                       for j in range(n)] for i in range(n)])
    model = gram.inv()*adjoint.transpose()*gram
    imaginary_identity = blocks([[imaginary if i == j else zero for j in range(n)]
                                 for i in range(n)])
    real_part = (model+adjoint)/2
    defect = -imaginary_identity*(model-adjoint)/2
    expected_trace = sum(root[1, 0] for root in roots)
    assert complex_trace(defect) == scalar(expected_trace) and expected_trace > 0
    assert gram*defect == defect.transpose()*gram
    assert defect.rank() == 2  # real dimension of a complex line
    for i, j in combinations(range(n), 2):
        for k, l in combinations(range(n), 2):
            assert (entry(defect, i, k)*entry(defect, j, l)
                    - entry(defect, i, l)*entry(defect, j, k)) == zero
    # Hermitian rank one and positive trace imply positive semidefiniteness.
    plus = determinant_polynomial(model)
    minus = determinant_polynomial(adjoint)
    assert determinant_polynomial(real_part) == [(p+m)/2 for p, m in zip(plus, minus)]
    print("positive definite Gram, 36 zero complex minors, complex rank one, exact trace",
          expected_trace)
    print("ordinary determinant mean is exact coefficient by coefficient through degree four")
    return (ball_matrix(model), ball_matrix(adjoint), ball_matrix(real_part),
            [ball(root) for root in roots], arb(expected_trace))


def phase_controls():
    model, adjoint, real_part, roots, trace = models()
    n = len(roots)
    identity = acb_mat([[int(i == j) for j in range(n)] for i in range(n)])
    imaginary = acb(0, 1)
    height = 3
    assert all(abs(root)*height < 1 for root in roots)
    points = [acb(1), acb(-1), acb(0, 2), acb(arb(3)/4, arb(5)/4),
              acb(-arb(7)/4, arb(1)/2)]
    for z in points:
        def det2(matrix):
            return (identity-matrix*z).det()*(z*matrix.trace()).exp()

        d_plus, d_minus, d_real = map(det2, [model, adjoint, real_part])
        enclosed_zero(d_real - ((-imaginary*trace*z).exp()*d_plus
                                +(imaginary*trace*z).exp()*d_minus)/2)
        # On the chosen disk, each log(1-z*lambda) has its branch based at 0.
        phase = sum(((1-z*u).log()-(1-z*u.conjugate()).log()
                     for u in roots), acb(0))/(2*imaginary)
        ratio = d_real**2/(d_plus*d_minus)
        enclosed_zero(ratio-phase.cos()**2)
        bound = abs(z)*trace/(1-(abs(z)/height)**2)
        assert abs(phase) < bound and abs(1-ratio) < bound.sinh()**2
        print("z", z.str(5), "|phase|", abs(phase).str(14),
              "phase bound", bound.str(14), "relative error", abs(1-ratio).str(14))
    # The recovered quadratic error coefficient is -D^2 since phase'(0)=-D.
    enclosed_zero(sum(((u.conjugate()-u) for u in roots), acb(0))/(2*imaginary)+trace)


def toeplitz_energy(g, n):
    """Minimize over degree < n using all n + deg(g) output coefficients."""
    degree = len(g)-1
    rows = n+degree
    value_at_one = sum(g)
    h = [1-sum(g[:k+1])/value_at_one for k in range(degree)]
    target = fmpq_mat([[h[k] if k < degree else 0] for k in range(rows)])
    shifts = fmpq_mat([[g[k-j] if 0 <= k-j <= degree else 0 for j in range(n)]
                       for k in range(rows)])
    gram = shifts.transpose()*shifts
    right = shifts.transpose()*target
    coefficients = gram.solve(right)
    residual = target-shifts*coefficients
    assert shifts.transpose()*residual == fmpq_mat(n, 1)
    energy = (residual.transpose()*residual)[0, 0]
    assert energy == (target.transpose()*target-right.transpose()*coefficients)[0, 0]
    return energy


def polynomial_energies():
    # Interpolating a degree <= n+deg(g)-1 residual gives an independent
    # formula: at each distinct root a of g its value must equal 1/(1-a).
    # Conversely these constraints suffice by polynomial division. The
    # evaluation rows are (1,a,...), so their Gram solves the minimum norm.
    a = fmpq(1, 3)
    for name, roots in [('interior', [a]), ('boundary', [fmpq(-1)]),
                        ('exterior', [fmpq(-2)]), ('interior and boundary', [a, fmpq(-1)])]:
        g = [fmpq(1)]
        for root in roots:
            g = [u-root*v for u, v in zip([fmpq(0)]+g, g+[fmpq(0)])]
        limit = sum(((1+r)/(1-r) for r in roots if abs(r) < 1), fmpq(0))
        previous = None
        for n in [1, 2, 4, 8, 16]:
            rows = n+len(roots)
            energy = toeplitz_energy(g, n)
            evaluations = fmpq_mat([[r**k for k in range(rows)] for r in roots])
            targets = fmpq_mat([[1/(1-r)] for r in roots])
            dual = evaluations*evaluations.transpose()
            assert energy == (targets.transpose()*dual.solve(targets))[0, 0]
            assert energy > limit and (previous is None or energy <= previous)
            previous = energy
            if name == 'interior':
                t = a**(2*(n+1))
                assert energy-limit == limit*t/(1-t)
            elif name == 'boundary':
                assert energy == fmpq(1, 4*(n+1))
            elif name == 'exterior':
                assert energy == fmpq(1, 3*(4**(n+1)-1))
            print(name, 'n', n, 'E_n', energy, 'D', limit)


def arithmetic_bounds():
    # XiSechProjectionTransport.md gives Lehman's two-sided reciprocal-square
    # tail after the Platt--Trudgian verified height. This re-evaluates only
    # its explicit majorant, not either published theorem.
    height = arb(3)*10**12
    tail = ((1+(height/(2*arb.pi())).log())/(arb.pi()*height)
            +(arb("0.28")+arb("1.12")*height.log())/height**2)
    upper = tail/4
    half_disk = height/2*upper/(1-arb(1)/4)
    unit_disk = upper/(1-1/height**2)
    error = unit_disk.sinh()**2
    assert 0 < tail < arb("2.960e-12") and upper < arb("7.40e-13")
    assert half_disk < arb("1.48") < arb.pi()/2
    assert error < arb("5.48e-25")
    print("Lehman two-sided tail", tail.str(18), "upper bound on D", upper.str(18))
    print("half-height phase bound", half_disk.str(18), "unit disk relative error bound",
          error.str(18))


if __name__ == "__main__":
    ctx.prec = 384
    phase_controls()
    polynomial_energies()
    arithmetic_bounds()
