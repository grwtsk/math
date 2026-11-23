"""Construct and check exact primal and dual optima for odd Frobenius periods."""
from collections import deque
from fractions import Fraction
from itertools import product
from random import Random


def inverse(p, data, step):
    r = len(data)
    return [sum((-1)**j * p**(r-1-j) * data[(s+step*j) % r] for j in range(r))
            / (p**r+1) for s in range(r)]


def incident_load(p, data, s):
    r = len(data)
    return sum(data[(s+j) % r] * (p**j if j % 2 else 1/p**(r-j))
               for j in range(1, r))


def path_flow(p, y):
    r = len(y)
    cut = next(s for s in range(r) if y[s] >= 0 and y[s-1] >= 0)
    sites = [(cut+j) % r for j in range(r)]
    heights = [p**j * y[s] for j, s in enumerate(sites)]
    edges = {}
    active = deque()

    def finish(start, end, height):
        if height:
            length = end-start+1
            assert length < r and length % 2
            key = (sites[start], length)
            edges[key] = edges.get(key, 0) + height/p**end

    for j, capacity in enumerate(heights):
        if capacity < 0:
            continue
        incoming = sum(amount for _, amount in active)
        outgoing = max(0, -heights[j+1]) if j+1 < r else 0
        ended = min(incoming, capacity-outgoing)
        assert ended >= 0
        remaining = ended
        while remaining:
            start, amount = active.popleft()
            part = min(remaining, amount)
            finish(start, j, part)
            remaining -= part
            if amount > part:
                active.appendleft((start, amount-part))
        finish(j, j, capacity-outgoing-ended)
        started = outgoing-incoming+ended
        assert started >= 0
        if started:
            active.append((j, started))
    assert not active
    return edges


def check(prime, demand):
    p = Fraction(prime)
    d = list(map(Fraction, demand))
    r = len(d)
    assert p > 1 and r >= 3 and r % 2 and min(d) >= 0
    y = inverse(p, d, -1)
    excess = [max(0, d[s]-incident_load(p, d, s)) for s in range(r)]
    dominant = [s for s in range(r) if excess[s]]
    assert len(dominant) <= 1
    if dominant:
        s = dominant[0]
        q = [Fraction(0)]*r
        edges = {}
        for j in range(1, r):
            u = (s+j) % r
            if j % 2:
                edges[s, j] = d[u]
                q[u] = 1
            else:
                edges[u, r-j] = d[u]/p**(r-j)
                q[u] = 1/p**(r-j)
    else:
        edges = path_flow(p, y)
        q = inverse(p, [p if v < 0 else 1 for v in y], 1)
    load = [Fraction(0)]*r
    for (s, length), v in edges.items():
        assert 0 <= v and 0 < length < r and length % 2
        load[s] += p**length*v
        load[(s+length) % r] += v
    assert all(v <= cap for v, cap in zip(load, d))
    assert all(0 <= price <= 1 for price in q)
    assert all(p**j*q[s]+q[(s+j) % r] >= 1 for s in range(r) for j in range(1, r, 2))
    optimum = sum(edges.values())
    assert optimum == sum(v*price for v, price in zip(d, q))
    baseline = sum(d)/(p**2-1)
    assert p*baseline-optimum == baseline+(p-1)*sum(max(-v, 0) for v in y)+sum(excess)/(p**r+1)
    return bool(dominant)


if __name__ == '__main__':
    rng = Random(1237421)
    cases = marked = 0
    for r, alphabet in [(3, range(5)), (5, range(4)), (7, range(3))]:
        for d in product(alphabet, repeat=r):
            marked += check(3, d)
            cases += 1
    for r in (3, 5, 7, 9, 13, 17):
        for i in range(160):
            p = rng.choice([3, 5, 7, 11])
            d = [Fraction(rng.randrange(81), rng.randrange(1, 11)) for _ in range(r)]
            if i % 3 == 0:
                d[rng.randrange(r)] += p**r * (sum(d)+1)
            marked += check(p, d)
            cases += 1
    print(f'{cases} exact odd-orbit primal/dual certificates, {marked} positive corrections')
