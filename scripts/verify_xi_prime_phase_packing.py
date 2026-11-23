"""Uniform prime-phase loss on a bounded height range, certified by integer lattices."""
from concurrent.futures import ProcessPoolExecutor
from math import factorial, isqrt
from verify_xi_exterior_taylor_scale import prime_weights
from flint import acb_series, arb, ctx, fmpz_mat

FREQ = 10**28
GRID = 2**40
T = 3*10**12-2
DIM = 36
MAX_PRIME = 100000


def primes_to(n):
    sieve = bytearray([1])*(n+1)
    sieve[:2] = bytes(2)
    for p in range(2,isqrt(n)+1):
        if sieve[p]:
            sieve[p*p::p] = bytes((n-p*p)//p+1)
    return [p for p in range(2,n+1) if sieve[p]]


def rounded(x):
    value = (x+arb(1)/2).floor().unique_fmpz()
    assert value is not None
    return int(value)


def lower_integer(x):
    return int(x.lower().floor().unique_fmpz())


def block_basis(primes, high):
    d = len(primes)
    freq = [arb(p).log()/(2*arb.pi()) for p in primes]
    v = [rounded(FREQ*x) for x in freq]
    total = sum(v)
    v = [d*x-total for x in v]
    v2 = sum(x*x for x in v)
    scale = d*v2
    time_reg = d*(FREQ//(30*high))
    original = fmpz_mat([[(d*(i==j)-1)*v2-d*x*y for j,y in enumerate(v)]
                          + [d*time_reg*x] for i,x in enumerate(v[:-1])])
    reduced, change = original.lll(transform=True)
    assert abs(change.det()) == 1 and change*original == reduced
    gram = reduced*reduced.transpose()
    g = [[arb(gram[i,j])/scale**2 for j in range(i+1)] for i in range(d-1)]
    norms = []
    for i in range(d-1):
        for j in range(i):
            g[i][j] = (g[i][j]-sum(g[i][k]*g[j][k]*norms[k] for k in range(j)))/norms[j]
        norms.append(g[i][i]-sum(g[i][k]**2*norms[k] for k in range(i)))
        assert norms[-1] > 0
    mu = [[rounded(GRID*g[i][j]) for j in range(i)] for i in range(d-1)]
    diagonal = [lower_integer(GRID*x) for x in norms]
    assert min(diagonal)>0
    rounding_error = arb(high)*arb(d).sqrt()/(2*FREQ)
    time_bound = arb(time_reg)*(arb(high)/(d*FREQ)
                    +(arb(d).sqrt()/2+rounding_error)/arb(v2).sqrt())
    # A vector that arose at a physical height has its last coordinate
    # (in unscaled integer units) between these endpoints.
    time_lo = scale*time_reg*(arb(T)/(d*FREQ)
              -(arb(d).sqrt()/2+rounding_error)/arb(v2).sqrt())
    time_hi = scale*time_bound
    assert time_lo > 0
    time_range = (lower_integer(time_lo), lower_integer(time_hi)+1)
    times = [int(reduced[i,d]) for i in range(d-1)]
    return mu,diagonal,times,time_range,rounding_error,time_bound


def excludes(mu, diagonal, times, time_range, numerator, denominator, limit):
    # Integer relaxation of the certified Gram--Schmidt ellipsoid.
    centers = [0]*len(diagonal)
    nodes = 0
    low, high = time_range
    def search(i, remainder, error, time):
        nonlocal nodes
        nodes += 1
        if nodes>limit:
            return False
        if i<0:
            return not (low<=time<=high)
        radius = isqrt(remainder//diagonal[i])+error
        center = centers[i]
        left = -((radius-center)//GRID)
        right = (center+radius)//GRID
        for z in range(left,right+1):
            distance = max(0,abs(z*GRID-center)-error)
            rest = remainder-diagonal[i]*distance**2
            if rest<0:
                continue
            if z:
                for j in range(i):
                    centers[j] -= z*mu[i][j]
            if not search(i-1,rest,error+abs(z),time+z*times[i]):
                return False
            if z:
                for j in range(i):
                    centers[j] += z*mu[i][j]
        return True
    return search(len(diagonal)-1, numerator*GRID**3//denominator,0,0)


def enumeration_controls():
    checks = 0
    for quarter in (-2, -1, 0, 1, 2):
        mu = [[], [quarter*GRID//4]]
        for time in (1, 2, 3):
            for step in range(1, 25):
                # Odd hundredths keep this threshold off the exact 1/16 grid.
                R = 10*step+1
                expected = not any(
                    x+2*y == time and 100*((4*x+quarter*y)**2+16*y*y) <= 16*R
                    for x in range(-5,6) for y in range(-3,4))
                result = excludes(mu,[GRID,GRID],[1,2],(time,time),R,100,10000)
                assert result == expected
                checks += 1
    print("exact two-coordinate ellipsoid controls",checks,flush=True)


def block(arg):
    ps, high = arg
    ctx.prec = 180
    mu,D,times,span,e,tau = block_basis(ps,high)
    best = 0
    # Every accepted lower radius is proved separately; a budget exhaustion
    # merely ends improvement. The first radius can always use the diagonal.
    for radius in [6,10,14,18,22,26,30,34,38]:
        if not excludes(mu,D,times,span,radius,100,45000):
            break
        best = radius
    norm2 = max(arb(min(D))/GRID,arb(best)/100)
    transverse = (norm2-tau**2).sqrt()-e
    assert transverse>0
    square_units = lower_integer(10**10*transverse**2)
    whole, residue = divmod(square_units, 10**10//4)
    cosine_charge = 2*whole+1-(2*arb.pi()*(arb(residue)/10**10).sqrt()).cos()
    w3 = min(arb(p).log()**4/(6*p*arb(p).sqrt()) for p in ps)
    w0 = min(arb(p).log()/(p*arb(p).sqrt()) for p in ps)
    # Fixed rational downward rounding makes worker results portable.
    # These two extra envelopes hold throughout 1.05 <= r <= 1.06.
    scale_min = arb(21)/20
    attenuation = (-(arb(3)/50)*arb(ps[-1]).log()).exp()
    weights = [w3,w0,scale_min**3*w3*attenuation,w0*attenuation]
    return tuple(lower_integer(10**12*w*cosine_charge) for w in weights)+(best,)


def verify(high,primes,pool):
    batches = [primes[i:i+DIM] for i in range(0,len(primes)-DIM+1,DIM)]
    savings = list(pool.map(block,[(b,high) for b in batches],chunksize=1))
    loss3,loss0,shift3,shift0 = [arb(sum(row[j] for row in savings))/10**12 for j in range(4)]
    ctx.cap = 6
    s = acb_series([arb(3)/2,1],ctx.cap)
    series = s.zeta().log().derivative()
    b0,b3 = abs(series[0]),abs(series[3])
    low = arb(T)
    ratio = (b3-loss3+low**(-3))/((low/(2*arb.pi())).log()/2-b0+loss0-1/low)
    envelope = (b3+arb(high)**(-3))/((arb(high)/(2*arb.pi())).log()/2-b0-1/arb(high))
    print("height upper",high,"blocks",len(batches),"prime losses",loss3.str(13),loss0.str(13),
          "ratio within",ratio.str(14),"ratio beyond",envelope.str(14),flush=True)
    if high == 10**13:
        assert ratio < arb("1.291468") and envelope < arb("1.274980")
        worst = arb(100)
        for j in range(25,100):
            r = arb(10500+j)/10000
            u = r+arb(1)/10000
            z = acb_series([r+arb(1)/2,1],ctx.cap).zeta().log().derivative()
            near = ((low/(2*arb.pi())).log()/2-abs(z[0])-u**3*abs(z[3])
                    +shift0+shift3-1/low-(u/low)**3)
            far = ((arb(high)/(2*arb.pi())).log()/2-abs(z[0])-u**3*abs(z[3])
                   -1/arb(high)-(u/arb(high))**3)
            worst = min(worst,near,far)
        assert worst > 0
        print("radius 1.0525 through 1.06, all-height Euler margin",worst.str(12),flush=True)
    cut = 2*arb.pi()*(2*(b3+b0-loss0-loss3+arb(2)/low)).exp()
    print("sufficient cutoff inside horizon",cut.str(14),flush=True)
    if high == 10**16:
        assert cut < arb("4.046e15") < high
        # Only the degree-zero saving is added to the mean-value threshold:
        # third-order primes here already occur in the finite test polynomial.
        height = int(cut.upper().ceil().unique_fmpz())
        w,a,b,slope = prime_weights()
        cells = length = arb(0)
        for U,V,k in [(T,6*10**13,5),(6*10**13,height,6)]:
            start,stop = U-1,V+1
            def threshold(t):
                return w+(arb(t)/(2*arb.pi())).log()/2-b0-b3+loss0-3/arb(start)
            for count_cells in [False,True]:
                epsilon = threshold(start)/((2*k+1)*slope) if count_cells else arb(0)
                assert epsilon < arb(1)/2
                denominator = threshold(start)-slope*epsilon
                assert denominator>0
                power = 2*k
                x = start
                integral = arb(0)
                while x<stop:
                    y = min(stop,33*x//32)
                    integral += (y-x)/(threshold(x)-slope*epsilon)**power
                    x = y
                upper = factorial(k)*(a**k*integral+3*arb.pi()*(1+arb(1)/2**k)
                                      *b**k/denominator**power)
                if count_cells:
                    cells += upper/epsilon
                else:
                    length += upper
        assert cells < 2067845 and length < arb("21696.119")
        print("positive exceptional cells and length",cells.str(15),length.str(15),flush=True)
    return loss3,loss0,ratio,envelope


if __name__ == "__main__":
    ctx.prec = 180
    enumeration_controls()
    primes = primes_to(MAX_PRIME)
    with ProcessPoolExecutor(max_workers=6) as pool:
        for high in [10**13,10**16]:
            verify(high,primes,pool)
