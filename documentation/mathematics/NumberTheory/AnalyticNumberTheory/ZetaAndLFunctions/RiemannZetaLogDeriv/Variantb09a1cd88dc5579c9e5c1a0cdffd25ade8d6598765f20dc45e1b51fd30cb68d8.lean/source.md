# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaLogDeriv.Variantb09a1cd88dc5579c9e5c1a0cdffd25ade8d6598765f20dc45e1b51fd30cb68d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29839dbb3231ff1d460380c2316e4835ae42374b` · SHA-256 `b09a1cd88dc5579c9e5c1a0cdffd25ade8d6598765f20dc45e1b51fd30cb68d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Terence Tao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Terence Tao
-/
module

public import Mathlib.NumberTheory.LSeries.RiemannZeta
public import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma

/-!
# The functional equation for the logarithmic derivative of the Riemann zeta function

Differentiating the functional equation `riemannZeta_one_sub` logarithmically gives an identity
relating `ζ'/ζ (s)` and `ζ'/ζ (1 - s)`, involving the digamma function `ψ` and a tangent term.

## Main statements

* `logDeriv_riemannZeta_one_sub`: for `s` not an integer with `ζ s ≠ 0`,
  `ζ'/ζ (s) = -ζ'/ζ (1 - s) + log (2 π) - ψ s + (π / 2) * tan (π s / 2)`.
-/

@[expose] public section

open scoped Real
open Complex Filter Topology

/-- **The functional equation for the Riemann zeta function, in logarithmic-derivative form.**
For `s` not an integer with `riemannZeta s ≠ 0`,
`ζ'/ζ (s) = -ζ'/ζ (1 - s) + log (2 π) - ψ s + (π / 2) * tan (π s / 2)`, where `ψ` is the digamma
function. -/
theorem logDeriv_riemannZeta_one_sub {s : ℂ} (hs : ∀ n : ℤ, s ≠ n) (hz : riemannZeta s ≠ 0) :
    logDeriv riemannZeta s =
      -logDeriv riemannZeta (1 - s) + log (2 * π) - digamma s + π / 2 * tan (π * s / 2) := by
  have h2π : 2 * (π : ℂ) ≠ 0 := mod_cast by positivity
  have (m : ℕ) : s ≠ -m := mod_cast hs (-m)
  have : s ≠ 1 := mod_cast hs 1
  have : cos (π * s / 2) ≠ 0 :=
    mt cos_eq_zero_iff.mp fun ⟨k, _⟩ ↦ hs (2 * k + 1) (mod_cast by grind)
  have : HasDerivAt (fun z : ℂ ↦ π * z / 2) (π / 2) s := by
    simpa using ((hasDerivAt_id s).const_mul (π : ℂ)).div_const 2
  have := (hasDerivAt_neg' s).differentiableAt.const_cpow (Or.inl h2π)
  have : riemannZeta ∘ (1 - ·) =ᶠ[𝓝 s]
      fun z ↦ 2 * (2 * π) ^ (-z) * Gamma z * cos (π * z / 2) * riemannZeta z := by
    filter_upwards [isClosed_range_intCast.isOpen_compl.mem_nhds (by grind)] with z hz
    rw [Set.mem_compl_iff, Set.mem_range, not_exists] at hz
    exact riemannZeta_one_sub (fun n h ↦ hz (-n) (by simp [h])) (by grind [hz 1])
  have := (logDeriv_congr_nhds this).eq_of_nhds
  rw [logDeriv_comp, logDeriv_fun_mul, logDeriv_fun_mul, logDeriv_fun_mul, logDeriv_fun_mul,
    logDeriv_fun_comp (f := cos), ← digamma_def] at this
  <;> first | fun_prop | simp_all <;> grind [differentiableAt_riemannZeta, Gamma_ne_zero, hs 0]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e50b02f849126f7bdf076671d255b22f4560f661a1ae1ff16e93752ee46ec92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaLogDeriv/Variantb09a1cd88dc5579c9e5c1a0cdffd25ade8d6598765f20dc45e1b51fd30cb68d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
