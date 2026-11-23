"""Construct exact optimal flows and dual prices directly from even-orbit demands."""
from fractions import Fraction as Q
from itertools import product
from random import Random


def inverse(p, demand, direction=-1):
    r = len(demand)
    return [sum((-1)**j * p**(r-1-j) * demand[(s+direction*j) % r] for j in range(r))
            / (p**r-1) for s in range(r)]


def certificate(p, data):
    d = list(map(Q, data))
    r = len(d)
    assert p > 1 and r >= 2 and r % 2 == 0 and min(d) >= 0
    y = inverse(p, d)
    prices = inverse(p, [Q(p if x < 0 else 1) for x in y], direction=1)
    z = y[:]
    slack = [Q(0)]*r
    if any(x < 0 for x in y) and not any(y[s] >= 0 and y[s-1] >= 0 for s in range(r)):
        pos = [d[s] if y[s] > 0 else Q(0) for s in range(r)]
        col = inverse(p, pos)
        assert all(x*v > 0 for x,v in zip(y,col))
        t = min(x/v for x,v in zip(y,col))
        assert 0 < t <= 1
        slack = [t*x for x in pos]
        z = [x-t*v for x,v in zip(y,col)]
    cut = next(s for s in range(r) if z[s] >= 0 and z[s-1] >= 0)
    sites = [(cut+j) % r for j in range(r)]
    a = [z[s]*p**j for j,s in enumerate(sites)]
    levels = sorted({abs(x) for x in a if x})
    edges = {}
    prev = Q(0)
    for h in levels:
        j = 0
        while j < r:
            if abs(a[j]) < h:
                j += 1
                continue
            start = j
            assert a[j] > 0
            while j+1 < r and abs(a[j+1]) >= h and a[j]*a[j+1] < 0:
                j += 1
            length = j-start+1
            assert a[j] > 0 and length % 2 == 1 and length < r
            key = (sites[start], length)
            edges[key] = edges.get(key,Q(0)) + (h-prev)/p**j
            j += 1
        prev = h
    load = [Q(0)]*r
    for (s,i),v in edges.items():
        assert v >= 0
        load[s] += p**i*v
        load[(s+i) % r] += v
    assert [u+v for u,v in zip(load,slack)] == d
    assert all(0 <= q <= 1 for q in prices)
    assert all(p**i*prices[s]+prices[(s+i)%r] >= 1 for s in range(r) for i in range(1,r,2))
    optimum = sum(edges.values(),Q(0))
    assert optimum == sum(x*q for x,q in zip(d,prices))
    gain = Q(p,p*p-1)*sum(d)-optimum
    assert gain == sum(d)/(p*p-1) + (p-1)*sum(max(-v,0) for v in y)
    three_places = [(p*p*d[s] - p*d[s-1] + d[(s-2) % r]) / p**3 for s in range(r)]
    three_place_gain = sum(d)/(p*p-1) + (p-1)*sum(max(-t, 0) for t in three_places)
    assert -sum(d)/(p**3*(p+1)) <= gain-three_place_gain <= sum(d)/(p*p*(p+1))
    assert sum(d[s] for s in range(r) if prices[s]>=Q(2,p)) <= optimum if p>=3 else True
    return gain


def main():
    cases = [(3,(3,1,0,0),Q(1,2)),(5,(5,1,0,0),Q(1,4)),
             (5,(1000,250),Q(625,12)),(5,(1000,10),Q(2405,12)),
             (3,(0,7,9,1),Q(59,20)),(7,(7,1,0,0,0,0),Q(1,6)),
             (3,(2,3,5,7,11,13),Q(4373,728)),(5,(1,)*8,Q(1,3)),
             (3,(1,4,2,3,5,1,2,3),Q(1879,656)),(5,(25,5,1,0,0,0,0,0),Q(35,24))]
    for p,d,f in cases:
        assert certificate(p,d)==f
    count = 0
    for p in (3,5,7,11):
        for a,b in product(range(41), repeat=2):
            closed = Q(a+b,p*p-1)+Q(max(0,a-p*b)+max(0,b-p*a),p+1)
            assert certificate(p,(a,b))==closed
            count += 1
    rng=Random(20261123)
    for r in (4,6,8,12,18):
        for _ in range(140):
            p=rng.choice([3,5,7,11])
            d=[Q(rng.randrange(20),rng.randrange(1,12)) if rng.randrange(4) else Q(0) for _ in range(r)]
            certificate(p,d)
    for d in product(range(3),repeat=6):
        certificate(3,d)
    print(f"10 source optima; {count} two-site certificates; 700 rational instances to length 18; 729 full six-site grid certificates")


if __name__ == "__main__":
    main()
