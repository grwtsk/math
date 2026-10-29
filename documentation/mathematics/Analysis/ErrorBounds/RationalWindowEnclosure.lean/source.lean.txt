/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalNetGramWindow

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# One rational enclosure for a complete inexact-adjoint Gram window

Rational disks now propagate through the actual adjoint, its canonical defect,
and BOTH mixed corrections plus the quadratic correction. The finite evaluator
adds the initial observation, every complete net-forcing observation, every
adjoint correction and the terminal tail. No correction-cost oracle or exact
model-update premise is required; all input containment proofs still are.

The output encloses a complex telescope whose REAL part is actual minus the
same terminal Gram readout. It is not asserted to enclose the actual source
itself or to be real without an additional symmetry premise. Gram positivity
makes its lower endpoint a source lower bound. A rational Boolean margin has
meaning only together with the exact source identity and semantic enclosures.

Only stages through k and transitions before k are consumed. A later starting
window is obtained by reindexing, retaining its actual initial residual. Disk
arithmetic may overestimate repeated uncertainties, even when the exact adjoint
defect is zero. An accepted synthetic endpoint is not a Weil certificate.
No arithmetic input supplier, strict arithmetic margin, universal zero theorem,
execution request or choice-free dependency-closure audit is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Execution and merge holds unchanged.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalWindowEnclosure

open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow
open GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow
open GRWTSK.Analysis.ErrorBounds.RationalComplexDisk
open GRWTSK.Analysis.ErrorBounds.RationalNetGramWindow

variable {ι τ : Type*} [ιFinite : Fintype ι] [τFinite : Fintype τ]

/-- Rectangular conjugate-transpose action, using the supplied gain and next test. -/
def adjointDisk (gain : τ → ι → Disk) (nextTest : τ → Disk) (j : ι) : Disk :=
  diskSum fun i => diskMul (diskConj (gain i j)) (nextTest i)

/-- Enclose the canonical defect A* z_next - z, rather than an invented error. -/
def pullbackDisk (gain : τ → ι → Disk) (nextTest : τ → Disk)
    (test : ι → Disk) (j : ι) : Disk :=
  diskSub (adjointDisk gain nextTest j) (test j)

/-- Full mixed observation; the two tests may be correlated. -/
def mixedDisk (left right : ι → Disk) (residual : ι × ι → Disk) : Disk :=
  diskSum fun p => diskMul (diskMul (diskConj (left p.1)) (residual p)) (right p.2)

/-- Both mixed terms and the second-order term are kept with their signs. -/
def correctionDisk (test defect : ι → Disk) (residual : ι × ι → Disk) : Disk :=
  diskAdd (diskAdd (mixedDisk test defect residual) (mixedDisk defect test residual))
    (readoutDisk defect residual)

/-- Complete net forcing plus the correction due to this actual approximate pullback. -/
def stepDisk (gain : τ → ι → Disk) (residual : ι × ι → Disk)
    (nextResidual : τ × τ → Disk) (test : ι → Disk) (nextTest : τ → Disk) : Disk :=
  diskAdd (readoutDisk nextTest (netResidualDisk gain residual nextResidual))
    (correctionDisk test (pullbackDisk gain nextTest test) residual)

/-- Finite recursion consumes every term of the chosen window, in order. -/
def prefixDisk (term : ℕ → Disk) : ℕ → Disk
  | 0 => point 0 0
  | k + 1 => diskAdd (prefixDisk term k) (term k)

section DataWindow

variable {I : ℕ → Type*} [∀ n, Fintype (I n)]

/-- The complete rational window. Even a zero-step window retains its initial observation and tail. -/
def windowDisk (gain : ∀ n, I (n + 1) → I n → Disk)
    (residual : ∀ n, I n × I n → Disk) (test : ∀ n, I n → Disk)
    (tail : Disk) (k : ℕ) : Disk :=
  diskAdd (diskAdd (readoutDisk (test 0) (residual 0))
    (prefixDisk (fun j => stepDisk (gain j) (residual j) (residual (j + 1))
      (test j) (test (j + 1))) k)) tail

end DataWindow

noncomputable section

omit ιFinite in
/-- Input containment, not the numerical centers alone, identifies the adjoint. -/
theorem adjointDisk_contains [Fintype ι] (gainDisk : τ → ι → Disk) (testDisk : τ → Disk)
    (gain : τ → ι → ℂ) (test : τ → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (testEnclosure : ∀ i, Contains (testDisk i) (test i)) (j : ι) :
    Contains (adjointDisk gainDisk testDisk j) (adjointTest gain test j) := by
  unfold adjointDisk adjointTest
  apply contains_sum
  intro i
  exact contains_mul (contains_conj (gainEnclosure i j)) (testEnclosure i)

/-- The output contains the actual pullback defect, including gain uncertainty. -/
theorem pullbackDisk_contains (gainDisk : τ → ι → Disk)
    (nextTestDisk : τ → Disk) (testDisk : ι → Disk)
    (gain : τ → ι → ℂ) (nextTest : τ → ℂ) (test : ι → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (nextEnclosure : ∀ i, Contains (nextTestDisk i) (nextTest i))
    (testEnclosure : ∀ i, Contains (testDisk i) (test i)) (j : ι) :
    Contains (pullbackDisk gainDisk nextTestDisk testDisk j)
      (pullbackDefect gain nextTest test j) :=
  contains_sub (adjointDisk_contains gainDisk nextTestDisk gain nextTest
    gainEnclosure nextEnclosure j) (testEnclosure j)

theorem mixedDisk_contains (leftDisk rightDisk : ι → Disk) (matrixDisk : ι × ι → Disk)
    (left right : ι → ℂ) (H : ι × ι → ℂ)
    (leftEnclosure : ∀ i, Contains (leftDisk i) (left i))
    (rightEnclosure : ∀ i, Contains (rightDisk i) (right i))
    (matrixEnclosure : ∀ p, Contains (matrixDisk p) (H p)) :
    Contains (mixedDisk leftDisk rightDisk matrixDisk) (mixedReadout left right H) := by
  unfold mixedDisk mixedReadout
  apply contains_sum
  intro p
  exact contains_mul (contains_mul (contains_conj (leftEnclosure p.1))
    (matrixEnclosure p)) (rightEnclosure p.2)

/-- A signed correction enclosure replaces the optional scalar modulus-cost estimate. -/
theorem correctionDisk_contains (testDisk defectDisk : ι → Disk) (matrixDisk : ι × ι → Disk)
    (test defect : ι → ℂ) (H : ι × ι → ℂ)
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (defectEnclosure : ∀ i, Contains (defectDisk i) (defect i))
    (matrixEnclosure : ∀ p, Contains (matrixDisk p) (H p)) :
    Contains (correctionDisk testDisk defectDisk matrixDisk) (readoutCorrection test defect H) :=
  contains_add (contains_add
    (mixedDisk_contains testDisk defectDisk matrixDisk test defect H
      testEnclosure defectEnclosure matrixEnclosure)
    (mixedDisk_contains defectDisk testDisk matrixDisk defect test H
      defectEnclosure testEnclosure matrixEnclosure))
    (readoutDisk_contains defectDisk matrixDisk defect H defectEnclosure matrixEnclosure)

/-- Net forcing and adjoint correction are independently enclosed, then added without dropping either. -/
theorem stepDisk_contains (gainDisk : τ → ι → Disk)
    (residualDisk : ι × ι → Disk) (nextResidualDisk : τ × τ → Disk)
    (testDisk : ι → Disk) (nextTestDisk : τ → Disk)
    (gain : τ → ι → ℂ) (residual : ι × ι → ℂ) (nextResidual : τ × τ → ℂ)
    (test : ι → ℂ) (nextTest : τ → ℂ)
    (gainEnclosure : ∀ i j, Contains (gainDisk i j) (gain i j))
    (residualEnclosure : ∀ p, Contains (residualDisk p) (residual p))
    (nextResidualEnclosure : ∀ p, Contains (nextResidualDisk p) (nextResidual p))
    (testEnclosure : ∀ i, Contains (testDisk i) (test i))
    (nextTestEnclosure : ∀ i, Contains (nextTestDisk i) (nextTest i)) :
    Contains (stepDisk gainDisk residualDisk nextResidualDisk testDisk nextTestDisk)
      (complexReadout nextTest (netResidual gain residual nextResidual) +
        readoutCorrection test (pullbackDefect gain nextTest test) residual) :=
  contains_add
    (readoutDisk_contains nextTestDisk (netResidualDisk gainDisk residualDisk nextResidualDisk)
      nextTest (netResidual gain residual nextResidual) nextTestEnclosure
      (netResidualDisk_contains gainDisk residualDisk nextResidualDisk gain residual nextResidual
        gainEnclosure residualEnclosure nextResidualEnclosure))
    (correctionDisk_contains testDisk (pullbackDisk gainDisk nextTestDisk testDisk) residualDisk
      test (pullbackDefect gain nextTest test) residual testEnclosure
      (pullbackDisk_contains gainDisk nextTestDisk testDisk gain nextTest test
        gainEnclosure nextTestEnclosure testEnclosure) residualEnclosure)

/-- No assumptions on unused terms beyond k are consumed. -/
theorem prefixDisk_contains (term : ℕ → Disk) (value : ℕ → ℂ) : ∀ k : ℕ,
    (∀ j, j < k → Contains (term j) (value j)) →
    Contains (prefixDisk term k) (∑ j ∈ Finset.range k, value j) := by
  intro k
  induction k with
  | zero =>
      intro _
      simp [prefixDisk, Contains, center, point]
      rfl
  | succ k ih =>
      intro enclosed
      have previous := ih (fun j hj => enclosed j (Nat.lt_succ_of_lt hj))
      simpa only [prefixDisk, Finset.sum_range_succ] using
        contains_add previous (enclosed k (Nat.lt_succ_self k))

section Window

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Complex telescope value. Its real part, not necessarily its imaginary part, is source-bound. -/
def windowValue (gain : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ) (test : ∀ n, I n → ℂ) (tail : ℝ) (k : ℕ) : ℂ :=
  complexReadout (test 0) (residual 0) +
    (∑ j ∈ Finset.range k,
      (complexReadout (test (j + 1)) (netResidual (gain j) (residual j) (residual (j + 1))) +
        readoutCorrection (test j) (pullbackDefect (gain j) (test (j + 1)) (test j)) (residual j))) +
    (tail : ℂ)

/-- End-to-end propagation for all supplied input disks on the selected finite window. -/
theorem windowDisk_contains
    (gainDisk : ∀ n, I (n + 1) → I n → Disk)
    (residualDisk : ∀ n, I n × I n → Disk) (testDisk : ∀ n, I n → Disk) (tailDisk : Disk)
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ) (test : ∀ n, I n → ℂ) (tail : ℝ) (k : ℕ)
    (gainEnclosure : ∀ j, j < k → ∀ i a, Contains (gainDisk j i a) (gain j i a))
    (residualEnclosure : ∀ j, j ≤ k → ∀ p, Contains (residualDisk j p) (residual j p))
    (testEnclosure : ∀ j, j ≤ k → ∀ i, Contains (testDisk j i) (test j i))
    (tailEnclosure : Contains tailDisk (tail : ℂ)) :
    Contains (windowDisk gainDisk residualDisk testDisk tailDisk k)
      (windowValue gain residual test tail k) := by
  unfold windowDisk windowValue
  apply contains_add _ tailEnclosure
  apply contains_add
  · exact readoutDisk_contains (testDisk 0) (residualDisk 0) (test 0) (residual 0)
      (testEnclosure 0 (Nat.zero_le k)) (residualEnclosure 0 (Nat.zero_le k))
  · apply prefixDisk_contains
    intro j hj
    exact stepDisk_contains (gainDisk j) (residualDisk j) (residualDisk (j + 1))
      (testDisk j) (testDisk (j + 1)) (gain j) (residual j) (residual (j + 1))
      (test j) (test (j + 1)) (gainEnclosure j hj)
      (residualEnclosure j (Nat.le_of_lt hj))
      (residualEnclosure (j + 1) (Nat.succ_le_of_lt hj))
      (testEnclosure j (Nat.le_of_lt hj)) (testEnclosure (j + 1) (Nat.succ_le_of_lt hj))

/-- Reuse the existing source-minus-Gram telescope, without a new model or update assumption. -/
theorem windowValue_source_identity (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (test : ∀ n, I n → ℂ) (tail actual : ℝ) (k : ℕ)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail) :
    (windowValue gain (fun n p => source n p - complexGram (feature n) p) test tail k).re =
      actual - (complexReadout (test k) (complexGram (feature k))).re := by
  simpa only [windowValue, Complex.add_re, Complex.re_sum, Complex.ofReal_re,
    gramNetForcing, windowCorrection] using
    (gram_net_window_identity gain source feature test k actual tail sourceReadout).symm

/-- A sound disk for the telescope gives a source LOWER bound, not source containment. -/
theorem enclosed_window_source_lower (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (test : ∀ n, I n → ℂ) (tail actual : ℝ) (k : ℕ) (output : Disk)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail)
    (enclosed : Contains output
      (windowValue gain (fun n p => source n p - complexGram (feature n) p) test tail k)) :
    (lower output : ℝ) ≤ actual := by
  have bound := (contains_real_interval enclosed).1
  rw [windowValue_source_identity gain source feature test tail actual k sourceReadout] at bound
  have positive := complex_gram_readout_nonnegative (test k) (feature k)
  linarith

/-- A rational strict margin excludes one fixed negative target only WITH all semantic premises.
No independent scalar correction-cost estimates or exact model-update assumptions are consumed. -/
theorem no_fixed_negative_of_rational_window
    (gainDisk : ∀ n, I (n + 1) → I n → Disk)
    (residualDisk : ∀ n, I n × I n → Disk) (testDisk : ∀ n, I n → Disk) (tailDisk : Disk)
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (test : ∀ n, I n → ℂ) (tail actual : ℝ) (k : ℕ) (strength : ℚ)
    (gainEnclosure : ∀ j, j < k → ∀ i a, Contains (gainDisk j i a) (gain j i a))
    (residualEnclosure : ∀ j, j ≤ k → ∀ p,
      Contains (residualDisk j p) (source j p - complexGram (feature j) p))
    (testEnclosure : ∀ j, j ≤ k → ∀ i, Contains (testDisk j i) (test j i))
    (tailEnclosure : Contains tailDisk (tail : ℂ))
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail)
    (negative : actual ≤ -(strength : ℝ))
    (accepted : lowerClears (windowDisk gainDisk residualDisk testDisk tailDisk k) (-strength) = true) :
    False := by
  have enclosed := windowDisk_contains gainDisk residualDisk testDisk tailDisk gain
    (fun n p => source n p - complexGram (feature n) p) test tail k
    gainEnclosure residualEnclosure testEnclosure tailEnclosure
  have strict := lowerClears_sound (-strength) accepted enclosed
  rw [windowValue_source_identity gain source feature test tail actual k sourceReadout] at strict
  have positive := complex_gram_readout_nonnegative (test k) (feature k)
  have strictReal : -(strength : ℝ) <
      actual - (complexReadout (test k) (complexGram (feature k))).re := by
    simpa only [Rat.cast_neg] using strict
  linarith

end Window

/-- A unit pullback erased from the intermediate test still contributes its negative correction. -/
theorem erased_test_disk_fixture :
    lower (stepDisk (fun (_ : Unit) (_ : Unit) => point 1 0)
      (fun _ : Unit × Unit => point (-1) 0) (fun _ : Unit × Unit => point (-1) 0)
      (fun _ : Unit => point 0 0) (fun _ : Unit => point 1 0)) = -1 := by
  norm_num [lower, stepDisk, correctionDisk, mixedDisk, pullbackDisk, adjointDisk,
    netResidualDisk, GRWTSK.Analysis.ErrorBounds.RationalGramModelDefect.transportDisk,
    readoutDisk, diskSum, diskSub, diskAdd, diskNeg, diskMul, diskConj, centerSize, point]

/-- The complete correction radius retains the squared uncertainty term. -/
theorem correction_radius_fixture :
    (correctionDisk (fun _ : Unit => point 1 0) (fun _ : Unit => (⟨0, 0, 1 / 4⟩ : Disk))
      (fun _ : Unit × Unit => point 1 0)).radius = 9 / 16 := by
  norm_num [correctionDisk, mixedDisk, readoutDisk, diskSum, diskAdd, diskMul,
    diskConj, centerSize, point]

/-- A zero-step window still charges the initial residual and a nonzero tail. -/
theorem zero_step_retains_terms_fixture :
    lower (windowDisk (I := fun _ => Unit) (fun _ _ _ => point 0 0)
      (fun _ _ => point (-1) 0) (fun _ _ => point 1 0) (point (-1) 0) 0) = -2 := by
  norm_num [windowDisk, prefixDisk, lower, readoutDisk, diskSum,
    diskAdd, diskMul, diskConj, centerSize, point]

/-- Endpoint acceptance is nonvacuous, but a tail radius can consume the entire strict margin. -/
theorem tail_uncertainty_rejects_fixture :
    lowerClears (windowDisk (I := fun _ => Unit) (fun _ _ _ => point 0 0)
      (fun _ _ => point 0 0) (fun _ _ => point 1 0) (point 0 0) 0) (-1) = true ∧
    lowerClears (windowDisk (I := fun _ => Unit) (fun _ _ _ => point 0 0)
      (fun _ _ => point 0 0) (fun _ _ => point 1 0) (⟨0, 0, 1⟩ : Disk) 0) (-1) = false := by
  norm_num [lowerClears, windowDisk, prefixDisk, lower, readoutDisk, diskSum,
    diskAdd, diskMul, diskConj, centerSize, point]

end

end GRWTSK.Analysis.ErrorBounds.RationalWindowEnclosure
