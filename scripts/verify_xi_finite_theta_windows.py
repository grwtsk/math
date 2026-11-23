"""Certify off-axis zeros and Newton matrix pivots using python-flint ball arithmetic."""
from flint import acb, arb, ctx

ctx.prec = 1024
PI = arb.pi()
SAMPLES = 640


def completion(s, terms):
    """Completed symmetric theta truncation at the zeta argument s."""
    integral = acb(0)
    for n in range(1, terms + 1):
        a = acb(PI * n*n)
        for order in (s/2, (1-s)/2):
            integral += a.gamma_upper(order) * (-order*a.log()).exp()
    return acb(1)/2 + s*(s-1)*integral/2


def certify_zero(terms, x, y):
    center = acb(arb(x), arb(y))
    h, radius = arb('1e-17'), arb('1e-19')
    exponent = max(arb(0), (arb(y) + arb('1.5'))/2 - 1)
    bound = arb(1)/2 + (abs(center)+2)**2*sum(
        (-PI*n*n).exp()/(PI*n*n-exponent) for n in range(1, terms+1))
    assert bound < 1000

    def frequency(z):
        return completion(acb(1)/2 + acb(0, 1)*z, terms)

    slope = (frequency(center+h) - frequency(center-h))/(2*h)
    slope_min = abs(slope) - 1000*h*h/(1-h*h)
    remainder = abs(frequency(center)) + 1000*radius**2/(1-radius)
    assert slope_min*radius > remainder
    print(f'One zero for N={terms} within 1e-19 of {x}+{y}i')


def coefficients(terms, degree, full):
    """Even Taylor coefficients, including a uniform bound on the Cauchy aliases."""
    radius = arb(4)
    sup = arb(1)/2 + arb('8.5')**2*24*arb(10).zeta()/PI**5
    assert sup < 1000 and 2*degree < SAMPLES
    error = arb(1000)/(arb(2)**SAMPLES-1)
    if full:
        exponent = arb('1.25')
        error += (arb('4.5')**2 * (-PI*(terms+1)**2).exp()
                  / (PI*(terms+1)**2-exponent) / (1-(-PI*(2*terms+3)).exp()))
    step = acb(0, 2*PI/SAMPLES).exp()
    sums = [arb(0) for _ in range(degree+1)]
    for j in range(SAMPLES//4+1):
        z = step**j
        value = completion(acb(1)/2+radius*z, terms)
        multiplicity = 2 if j in (0, SAMPLES//4) else 4
        for k in range(degree+1):
            sums[k] += multiplicity*(value*z**(-2*k)).real
    return [(v/SAMPLES + arb(0,error))/radius**(2*k) for k,v in enumerate(sums)]


def first_negative(terms, max_rank, full=False):
    values = coefficients(terms, 2*max_rank-1, full)
    a = [v/values[0] for v in values]
    moments = [arb(0)]
    for n in range(1, len(a)):
        moments.append((-1)**(n-1)*n*a[n]+sum(
            (-1)**(k-1)*a[k]*moments[n-k] for k in range(1,n)))
    matrix = [[moments[i+j+1]*256**(i+j+1) for j in range(max_rank)]
              for i in range(max_rank)]
    for i in range(max_rank):
        pivot = matrix[i][i]
        assert not pivot.contains(0)
        if pivot < 0:
            return i+1
        for j in range(i+1, max_rank):
            for k in range(i+1, max_rank):
                matrix[j][k] -= matrix[j][i]*matrix[i][k]/pivot
    return None


if __name__ == '__main__':
    certify_zero(1, '22.9154657705608233141274895177', '4.66590202692456909193940590848')
    certify_zero(2, '41.1895478429846621352719251071', '1.46198671336516741309707783009')
    assert first_negative(1, 6) == 6
    assert first_negative(2, 14) == 14
    assert first_negative(12, 12, full=True) is None
    print('First negative ranks 6 and 14. Full xi positive definite through rank 12.')
