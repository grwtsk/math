#!/usr/bin/env python3
"""Recompute finite CERN CMS four-muon waveform estimate budgets.

Source is the exact original CMS educational four-muon CSV snapshot.
Row ordinal is NOT physical detector time. These numbers do NOT
estimate the original Riemann-Hypothesis Möbius kernel or prove Kakeya.
Requires only Python standard library. This tool reads files; it does
not mutate the canonical data or any mathematics source.
"""
from __future__ import annotations

import csv
from decimal import Decimal, ROUND_HALF_UP
import io
import json
import math
from pathlib import Path
from verify_cms_4mu_waveform import verify, ORIGINAL, FEED

ROOT = Path(__file__).resolve().parents[2]
DIAGNOSTICS = ROOT / "data" / "cern" / "CMS_4mu_2012_estimate_guidance.json"

def get_rows():
    verify(ORIGINAL, FEED)  # pinned source SHA, schema, identifiers and every record
    text = ORIGINAL.read_text(encoding="utf-8")
    return list(csv.DictReader(io.StringIO(text)))

def original_mass_and_energy(rows):
    mass = [Decimal(row["M"]) for row in rows]
    N = len(mass)
    mbar = sum(mass) / N
    total_sq = sum(x*x for x in mass)
    centered_sq = sum((x-mbar)**2 for x in mass)
    cross = sum(mass)**2 - total_sq
    centered_cross = -centered_sq
    return mass, {
        "N": N, "mass_sum": str(sum(mass)),
        "mean_GeV": str(mbar), "mass_sq_GeV2": str(total_sq),
        "mass_l2_GeV": math.sqrt(float(total_sq)),
        "centered_l2_GeV": math.sqrt(float(centered_sq)),
        "unit_offdiag_original_cross_GeV2": str(cross),
        "unit_offdiag_centered_cross_GeV2": str(centered_cross),
        "unit_offdiag_source_minus_centered_defect_GeV2": str(cross-centered_cross),
    }

def momenta_consistency(rows):
    diffs = []
    for row in rows:
        E=sum(float(row[f"E{i}"]) for i in range(1,5))
        p=[sum(float(row[f"{q}{i}"]) for i in range(1,5))
           for q in ("px","py","pz")]
        mass2=E*E-sum(x*x for x in p)
        if mass2 < 0:
            raise ValueError("negative reconstructed mass squared in selected source")
        diffs.append(float(row["M"])-math.sqrt(mass2))
    absolute = sorted(abs(x) for x in diffs)
    return {
       "min_signed_GeV": min(diffs), "max_signed_GeV": max(diffs),
       "mean_abs_GeV": sum(absolute)/len(absolute),
       "median_abs_GeV": absolute[len(absolute)//2],
       "max_abs_GeV": absolute[-1],
       "note": "recomputed using printed rounded 4-vectors; not a detector uncertainty certificate",
    }

def source_signed_packet(rows):
    counts={"positive":0,"negative":0,"zero":0,"sign_flips":0}
    largest=Decimal(0)
    for row in rows:
        q=[int(row[f"Q{i}"]) for i in range(1,5)]
        pdg=[int(row[f"PID{i}"]) for i in range(1,5)]
        assert sorted(q)==[-1,-1,1,1] and all(q[i]==(-1 if pdg[i]>0 else 1) for i in range(4))
        charge_cross=sum(q)**2-sum(x*x for x in q)
        assert charge_cross == -4
        v=[Decimal(q[i])*Decimal(row[f"E{i+1}"]) for i in range(4)]
        def off(v):
            return sum(v)**2 - sum(x*x for x in v)
        full, seen=off(v),off(v[:3])
        defect=full-seen
        assert defect==2*v[3]*sum(v[:3])
        counts["positive" if defect>0 else "negative" if defect<0 else "zero"]+=1
        counts["sign_flips"]+=int(full*seen<0)
        largest=max(largest,abs(defect))
    return {"two_positive_two_negative":len(rows),
            "charge_only_offdiag_cross_per_event":-4,
            "missing_fourth_charge_weighted_energy_defect":counts,
            "max_abs_defect_GeV2":str(largest),
            "note":"x_i=Q_i*E_i is an illustrative SIGNED diagnostic, not Möbius μ"}

def angular_sector_diagnostics(rows):
    values=[]
    for row in rows:
        for i in range(1,5):
            angle=float(row[f"phi{i}"])
            values.append(angle % math.pi)
    out=[]
    for j in range(1,9):
        count=[0]*(2**j)
        for a in values:
            count[min(len(count)-1, int(a/math.pi*len(count)))]+=1
        out.append({"j":j,"bins":2**j,"max":max(count),
                    "active":sum(c>0 for c in count),
                    "relative_to_uniform_mean":max(count)/(len(values)/(2**j))})
    return {"directions":len(values),"binned":out,
            "note":"projective azimuth binning only; no detector track positions or tubes"}

def quantization_budgets(mass):
    def off(v): return sum(v)**2-sum(x*x for x in v)
    original=off(mass)
    out=[]
    for step in map(Decimal,("1","0.1","0.01","0.001","0.0001")):
        y=[(x/step).to_integral_value(rounding=ROUND_HALF_UP)*step for x in mass]
        e=[x-z for x,z in zip(mass,y)]
        delta=math.sqrt(float(sum(x*x for x in e)))
        normy=math.sqrt(float(sum(x*x for x in y)))
        out.append({
         "step_GeV":str(step), "error_l2_GeV":delta,
         "max_abs_error_GeV":str(max(map(abs,e))),
         "unchanged_mass_values":sum(x==z for x,z in zip(mass,y)),
         "multiplier_per_unit_kernel_operator_norm_GeV2":2*normy*delta+delta**2,
         "unit_offdiag_cross_signed_residual_GeV2":str(original-off(y)),
        })
    return out

def analyze():
    rows=get_rows()
    mass,energy=original_mass_and_energy(rows)
    result={
        "status":"PASS_SOURCE_VERIFIED_FINITE_DIAGNOSTIC",
        "source_grain":"95 selected CMS educational collision events, row ordinal not time",
        "mass_and_energy":energy,
        "reconstructed_mass_consistency":momenta_consistency(rows),
        "signed_charge_energy_test":source_signed_packet(rows),
        "angular_projective_bins":angular_sector_diagnostics(rows),
        "decimal_mass_quantization":quantization_budgets(mass),
        "interpretation":"These are finite measurements and error budgets only, not RH/Kakeya arithmetic estimates."
    }
    reference=json.loads(DIAGNOSTICS.read_text())
    if reference["scope"]["rows"] != energy["N"]:
        raise AssertionError("published diagnostic sample count differs from source")
    for name, claimed in (
        ("mean", reference["mass"]["mean"]),
        ("source norm", reference["mass"]["sourceL2"]),
        ("centered norm", reference["mass"]["centeredL2"])):
        measured = float(energy["mean_GeV"]) if name=="mean" else (
            energy["mass_l2_GeV"] if name=="source norm" else energy["centered_l2_GeV"])
        if abs(measured-claimed)>max(1e-9,1e-12*abs(claimed)):
            raise AssertionError(f"published {name} does not reproduce")
    return result

if __name__ == "__main__":
    print(json.dumps(analyze(),indent=2,sort_keys=True))
