# Polynomial Source Control Retains The Square Main Term Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9115a7d0ca5cc3a0b2690217ad7dbb07baff5e0` · SHA-256 `f1cf5261b88e32c4d8a7d1970ac5d47c733b163b216df3b8fff99b2fbe6ffa00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
import FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage
import FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction

/-!
# Polynomial source control retains the square main term

The existing exact prime-power partition is consumed directly. Its uniformly
bounded replacement error permits polynomial transfer in both directions;
the actual signed first-prime term plus the square main term is retained.
No bound on that signed term is supplied.

Source: audited RH conversation Batches 01, 04 and 25. Human programme and
direction: grwtsk contributors. Local consumer implementation: OpenAI Codex.
Existing formal declarations retain their qualified repository identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PrimePowerConsumer

open FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePrimeSmoothDefect EstimateMertensResidual PolynomialMertensReduction

noncomputable section

/-- The first prime with square main in this module, with the following exact parameterization.

def firstPrimeWithSquareMain (A : ℝ) : ℝ := firstPrimeMoment A + diagonalMainCoefficient A * A
-/
def firstPrimeWithSquareMain (A : ℝ) : ℝ :=
  firstPrimeMoment A + diagonalMainCoefficient A * A

/-- A constant error is an admissible linear error on the original domain. -/
theorem polynomial_upper_iff_of_bounded_error {f g : ℝ → ℝ} {E : ℝ}
    (hE : 0 ≤ E) (herr : ∀ A : ℝ, 1 ≤ A → |f A - g A| ≤ E) :
    EventuallyPolynomialUpper f ↔ EventuallyPolynomialUpper g := by
  have hlin (A : ℝ) (hA : 1 ≤ A) : E ≤ E * A := by nlinarith
  constructor
  · apply polynomial_upper_transfer hE
    intro A hA
    have h := (abs_le.mp (herr A hA)).1
    linarith [hlin A hA]
  · apply polynomial_upper_transfer hE
    intro A hA
    have h := (abs_le.mp (herr A hA)).2
    linarith [hlin A hA]

/-- Exact partition and existing uniform replacement estimates identify the
remaining signed polynomial target. This is an equivalence, not its proof. -/
theorem source_polynomial_iff_firstPrimeWithSquareMain :
    EventuallyPolynomialUpper closedPrimeMoment ↔
      EventuallyPolynomialUpper firstPrimeWithSquareMain := by
  obtain ⟨E, hE, herr⟩ := residual_firstPrime_uniform_replacement_error
  apply polynomial_upper_iff_of_bounded_error hE
  intro A hA
  simpa only [firstPrimeWithSquareMain, mertensResidual_eq_closedPrimeMoment A hA]
    using herr A hA

/-- The signed Mertens integral and the retained first-prime/square target
are two exact access routes to the same eventual polynomial obligation. -/
theorem signedMertens_iff_firstPrimeWithSquareMain :
    EventuallyPolynomialUpper actualMertensIntegral ↔
      EventuallyPolynomialUpper firstPrimeWithSquareMain :=
  source_polynomial_upper_iff_mertens.symm.trans
    source_polynomial_iff_firstPrimeWithSquareMain

end
end GRWTSK.RiemannHypothesis.Conversation.PrimePowerConsumer
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ce9301d3ac465e6074507523da10845339abb423b88a60d60d56cfe89a2e8dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerConsumer/Variantf1cf5261b88e32c4d8a7d1970ac5d47c733b163b216df3b8fff99b2fbe6ffa00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
