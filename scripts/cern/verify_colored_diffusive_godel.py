#!/usr/bin/env python3
"""Replay source-bound CERN six-color Gaussian graph-sandwich diagnostics.

Finite numerical test ONLY: event ordinal ≠ physical time, mass-threshold
graph ≠ detector causal graph, colored phase ≠ Gödel spacetime, and K is a
declared synthetic asymmetric signed matrix, NOT pickupResponseGram.
"""
from __future__ import annotations

import argparse
import csv
from decimal import Decimal, getcontext, ROUND_HALF_UP
from hashlib import sha1
from pathlib import Path
from itertools import product
import json

getcontext().prec = 55
D = Decimal
ROOT = Path(__file__).resolve().parents[2]
CSV = ROOT / "data/cern/CMS_4mu_2012.csv"
REFERENCE = ROOT / "data/cern/CMS_4mu_2012_colored_godel_sandwich.json"
SOURCE_BLOB = "4d87fe4e859802bb225d722353c10148b96e7a95"
CHANNELS = ["arithmetic", "residue", "geometry", "harmonic", "observer", "residual"]

def read_csv(path: Path):
    b = path.read_bytes()
    actual = sha1(b"blob " + str(len(b)).encode() + b"\x00" + b).hexdigest()
    if actual != SOURCE_BLOB:
        raise ValueError("Original CERN source Git blob mismatch")
    rows = list(csv.DictReader(b.decode("utf-8").splitlines()))
    if len(rows) != 95 or any(len(row) != 41 for row in rows):
        raise ValueError("Original CERN source schema mismatch")
    if len(set((r["Run"], r["Event"]) for r in rows)) != 95:
        raise ValueError("Original CERN Run/Event identifiers collide")
    return rows

def run(rows):
    n = len(rows)
    x = [D(r["M"]) for r in rows]
    y = [v.quantize(D("0.01"), rounding=ROUND_HALF_UP) for v in x]
    e = [xi - yi for xi, yi in zip(x, y)]
    charges = [tuple(int(r[f"Q{k}"]) for k in range(1, 5)) for r in rows]
    energies = [tuple(D(r[f"E{k}"]) for k in range(1, 5)) for r in rows]
    if not all(sorted(q) == [-1, -1, 1, 1] for q in charges):
        raise ValueError("Selected-event charge inventory changed")
    def color(i):
        q, E = charges[i], energies[i]
        signed = 2 * q[3] * E[3] * sum(D(q[k])*E[k] for k in range(3))
        sign = 0 if signed > 0 else 1
        residual = 0 if e[i] > 0 else (1 if e[i] == 0 else 2)
        return 3*sign + residual
    c = [color(i) for i in range(n)]
    t = D("0.07")
    def K(i,j):
        return D((17*(i+1)+11*(j+1)+(i+1)*(j+1))%19-9)/9
    def lower(i,j):return i != j and abs(x[i]-x[j]) <= D(10)
    def middle(i,j):return i != j and abs(x[i]-x[j]) <= D(40)
    def upper(i,j):return i != j and abs(x[i]-x[j]) <= D(80)
    def damp(i,j):return (-t*(D(c[i])-D(c[j]))**2).exp()
    totals = dict(original=D(0), observed_all_edges=D(0),
                  diffused_middle=D(0), diffused_certified=D(0),
                  diffused_uncertified_middle=D(0), coefficient_defect=D(0),
                  graph_complement=D(0), diffusion_defect=D(0))
    by_color = [D(0)]*6
    edges = dict(lower=0,middle=0,upper=0,outsideMiddle=0,
                 uncertifiedMiddle=0,upperCandidateOnly=0)
    for i,j in product(range(n),repeat=2):
        if i == j:continue
        l, m, u = lower(i,j), middle(i,j), upper(i,j)
        assert not l or m
        assert not m or u
        edges["lower"] += int(l)
        edges["middle"] += int(m)
        edges["upper"] += int(u)
        edges["outsideMiddle"] += int(not m)
        edges["uncertifiedMiddle"] += int(m and not l)
        edges["upperCandidateOnly"] += int(u and not m)
        kij = K(i,j)
        middleK = kij if m else D(0)
        lowerK = kij if l else D(0)
        original = x[i]*x[j]*kij
        observed = y[i]*y[j]*kij
        diffused = y[i]*y[j]*middleK*damp(i,j)
        mixed = (e[i]*y[j]+y[i]*e[j]+e[i]*e[j])*kij
        totals["original"] += original
        totals["observed_all_edges"] += observed
        totals["diffused_middle"] += diffused
        totals["diffused_certified"] += y[i]*y[j]*lowerK*damp(i,j)
        totals["diffused_uncertified_middle"] += y[i]*y[j]*(middleK-lowerK)*damp(i,j)
        totals["coefficient_defect"] += mixed
        totals["graph_complement"] += y[i]*y[j]*(kij-middleK)
        totals["diffusion_defect"] += y[i]*y[j]*middleK*(1-damp(i,j))
        by_color[c[i]] += mixed
    restored = (totals["diffused_middle"]+totals["coefficient_defect"]+
                totals["graph_complement"]+totals["diffusion_defect"])
    assert abs(totals["original"]-restored) < D("1e-30")
    assert abs(totals["diffused_certified"]+
               totals["diffused_uncertified_middle"]-totals["diffused_middle"]) < D("1e-30")
    assert abs(sum(by_color)-totals["coefficient_defect"]) < D("1e-30")
    assert abs(totals["original"]-totals["observed_all_edges"]-
               totals["coefficient_defect"]) < D("1e-30")
    return {"status": "PASS_FINITE_DECIMAL_NOT_LEAN",
      "source_blob":SOURCE_BLOB,"records":n,"graph":edges,
      "source_color_population":[c.count(k) for k in range(6)],
      "signed_color_defects":[str(v) for v in by_color],
      "signed_packets":{k:str(v) for k,v in totals.items()},
      "source_return_error":str(totals["original"]-restored),
      "disclaimer":"Not CERN physical Gödel recovery or original Möbius cancellation"}

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument("--csv",type=Path,default=CSV)
    parser.add_argument("--reference",type=Path,default=REFERENCE)
    options=parser.parse_args()
    result=run(read_csv(options.csv))
    reference=json.loads(options.reference.read_text())
    if reference["pinnedSource"]["blob"] != SOURCE_BLOB:
        raise AssertionError("Reference source pin disagrees")
    for k,v in result["graph"].items():
        if v != reference["graph"]["edges"][k]:
            raise AssertionError("Graph edge count differs at "+k)
    if result["source_color_population"] != [
         c["sourceEvents"] for c in reference["color"]["palette"]]:
        raise AssertionError("Painted population differs")
    for k,v in result["signed_packets"].items():
        if abs(float(v)-reference["packets"][k]) > 3e-6:
            raise AssertionError("Float64 reference mismatch: "+k)
    print(json.dumps(result,indent=2,sort_keys=True))

if __name__ == "__main__":
    main()
