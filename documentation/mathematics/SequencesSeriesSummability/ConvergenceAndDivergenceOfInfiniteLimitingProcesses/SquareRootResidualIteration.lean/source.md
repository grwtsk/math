# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SquareRootResidualIteration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c1cc3b0057f1c307da2f6fb9c80f8b9c1036b2a` · SHA-256 `e98088eb673ba051be986efda6b15e965f640ff0ca5b0bdd037bac89b148faed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
Finite square-root residual iteration, motivated by the structural shape of
Guth--Maynard Lemma 9.2. The actual transformed functions, class closure,
normalizations, and all scale-dependent constants remain explicit inputs.
This is not a proof of the external analytic lemma or of an arithmetic estimate.
Research direction: grwtsk contributors. Kernel compilation is pending.
-/
noncomputable section
namespace GRWTSK.Analysis.SquareRootResidualIteration

/-- Coefficients and errors are recorded in outward order from the terminal. -/
def step (a b e x : ℝ) : ℝ := a+b*Real.sqrt x+e

def bound (a b e : ℕ → ℝ) (terminal : ℝ) : ℕ → ℝ
  | 0 => terminal
  | n+1 => step (a n) (b n) (e n) (bound a b e terminal n)

theorem step_mono {a b e x y : ℝ} (hb : 0 ≤ b) (h : x ≤ y) :
    step a b e x ≤ step a b e y := by
  unfold step
  exact add_le_add_right (add_le_add_left
    (mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt h) hb) _) _

theorem finite_return (a b e x : ℕ → ℝ) (terminal : ℝ)
    (hb : ∀ n, 0 ≤ b n) (initial : x 0 ≤ terminal)
    (hstep : ∀ n, x (n+1) ≤ step (a n) (b n) (e n) (x n)) :
    ∀ n, x n ≤ bound a b e terminal n := by
  intro n
  induction n with
  | zero => exact initial
  | succ n ih => exact (hstep n).trans (step_mono (hb n) ih)

/-- The exponent gain has an explicit local-error term. -/
def exponent (initial : ℝ) (loss : ℕ → ℝ) : ℕ → ℝ
  | 0 => initial
  | n+1 => loss n + exponent initial loss n / 2

theorem exponent_step (initial : ℝ) (loss : ℕ → ℝ) (n : ℕ) :
    exponent initial loss (n+1) = loss n+exponent initial loss n/2 := rfl

/-- Replacing every loss by zero is legal only under the exact zero-loss hypothesis. -/
theorem zero_loss (initial : ℝ) (loss : ℕ → ℝ) (h : ∀ n, loss n=0) :
    ∀ n, exponent initial loss n = initial/(2:ℝ)^n := by
  intro n
  induction n with
  | zero => simp [exponent]
  | succ n ih =>
      simp only [exponent, h, zero_add, ih, pow_succ]
      ring

end GRWTSK.Analysis.SquareRootResidualIteration
#print axioms GRWTSK.Analysis.SquareRootResidualIteration.finite_return
#print axioms GRWTSK.Analysis.SquareRootResidualIteration.zero_loss
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7794283d8caae9ac19dc8e2142f52ebf41590a01fa8fca24d671c413c434509 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrencea7ee1b34f9dba07e937f5bf0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
