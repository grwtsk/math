# Complete source: GRWTSK.NumberTheory.Primes.Checks.GoldbachMinorEnergyControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12614e4be64cab703498ba8625d2760263417d1e` · SHA-256 `78e42f00665403106c3be68e0fabf4e46f466fc41a37eb479eb54e7a1d3e0b40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.GoldbachMinorEnergyBarrier
import GRWTSK.NumberTheory.Primes.GoldbachMinorPhaseBalance

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachMinorEnergyControls

open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy

noncomputable section

/-- Positive absolute mass need not give a lower bound for a signed sum. -/
theorem absolute_mass_can_hide_signed_cancellation :
    |(1 : ℝ)| + |(-1 : ℝ)| = 2 ∧ |(1 : ℝ) + (-1)| = 0 := by
  norm_num

/-- These are scalar control values, not asserted actual phase integrals.
Discarding the positive component would reject a valid one-sided balance. -/
theorem phase_balance_does_not_require_small_imaginary_energy :
    -(129 : ℝ) ≤ 100 - 200 ∧ ¬ (200 : ℝ) ≤ 129 := by
  norm_num

theorem square_total_at_two :
    goldbachPrimeLogSquareTotal 2 = Real.log 2 ^ 2 := by
  norm_num [goldbachPrimeLogSquareTotal, primeLogWeight, Finset.sum_range_succ]

/-- Prime powers are not additional diagonal atoms. -/
theorem square_total_no_atom_at_four :
    goldbachPrimeLogSquareTotal 4 = goldbachPrimeLogSquareTotal 3 := by
  norm_num [goldbachPrimeLogSquareTotal, Finset.sum_range_succ, primeLogWeight]

/-- At log n >= 50 the explicit logarithmic test beats C=2. -/
theorem logarithmic_threshold_for_two {ell : ℝ} (hell : 50 ≤ ell) :
    20 + 2 * (2 : ℝ) < 497 * ell / 1000 := by
  linarith

end
end GRWTSK.NumberTheory.Primes.Checks.GoldbachMinorEnergyControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe49b6a47deedbf3d756ff3348dd26a83d47a79927bc2e2fb49001abc2064392 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/Checks/GoldbachMinorEnergyControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
