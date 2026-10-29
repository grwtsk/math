# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightCast

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0abb0b5d4ca80f9ab51dfc48f026a85f1c72bde5` · SHA-256 `d349168e2b9ba9e5b0cd25da7d4a9b7c5e30b701cfaba6cd4c47fcbf86ac3018`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightSign

/-!
# Exact real-to-complex exceptional-weight identification

The complex source cofactors are casts of real determinants. This
identifies the previously constructed exceptionalWeight with the cast
of realExceptionalWeight and transfers its strict negative sign to
the real-axis statement. No Weil positivity or RH follows.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightCast

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentActualExceptionalWeight
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightSign

theorem cofactorZero_eq_realFirstCofactor :
    cofactorZero = (realFirstCofactor : ℂ) := by
  unfold cofactorZero realFirstCofactor
  push_cast
  ring

theorem cofactorTwo_eq_realDeterminant :
    cofactorTwo = (twoTentMomentDeterminant : ℂ) :=
  cofactorTwo_eq_twoTentMomentDeterminant

/-- Exact source identity, independent of numerical approximations. -/
theorem exceptionalWeight_eq_realExceptionalWeight :
    exceptionalWeight = (realExceptionalWeight : ℂ) := by
  unfold exceptionalWeight realExceptionalWeight
  rw [cofactorTwo_eq_realDeterminant, cofactorZero_eq_realFirstCofactor]
  push_cast
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentExceptionalWeightCast
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a401c207337142a8821a652dd5469b4d782f08f034e8f1efe6a85d37410cb26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentExceptionalWeightCast.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
