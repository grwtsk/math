# Scope Fixtures Print Endpoint Minus One Required — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5362ffcd7a89cc78717bcbd46824c2c4ed52448` · SHA-256 `79dfbd5ab66d973b63ebebc1a1610d2807b45647dcebcdf04551cb8d0285e5a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCriticalDecayWork

/-! Private semantic guards, excluded from the eight-declaration work unit. -/
set_option autoImplicit false
set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures
open SourceCriticalDecayWork SourcePrimeSquareTailWork SourceDiagonalMainTerm

/-- The actual endpoint contribution cannot be erased from the signed decay work. -/
theorem endpoint_minus_one_required {A : ℝ} (hA : 1 ≤ A) :
    criticalDecayWork A ≠ diagonalMainCoefficient A*A := by
  rw [criticalDecayWork_eq_main hA]
  linarith

/-- The actual square tail is flat below its first atom while the independent decay decreases. -/
theorem actual_square_tail_not_decay : squareTail ≠ criticalDecay := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  have hq : squareTail (Real.log 2) = squarePrefixBaseline :=
    squareTail_below_first_square (by linarith)
  have hh : criticalDecay (Real.log 2) < criticalDecay 0 := by
    simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero]
    rw [Real.exp_lt_one_iff]
    linarith
  intro he
  have h0 := congrFun he 0
  have hlog := congrFun he (Real.log 2)
  rw [squareTail_at_zero] at h0
  rw [hq] at hlog
  linarith

#check endpoint_minus_one_required
#print axioms endpoint_minus_one_required
#check actual_square_tail_not_decay
#print axioms actual_square_tail_not_decay
end FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures

open FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures
#print endpoint_minus_one_required
#print actual_square_tail_not_decay
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc0befe323a3b2db3e93a98d115338c9ee4e43577a15b892cdb04c6b36878146 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variant79dfbd5ab66d973b63ebebc1a1610d2807b45647dcebcdf04551cb8d0285e5a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
