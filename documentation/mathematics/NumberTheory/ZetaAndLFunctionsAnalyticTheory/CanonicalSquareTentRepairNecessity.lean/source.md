# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairNecessity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f52cbb3777afe4f90a9c14fede472d1ee1c3f013` · SHA-256 `ef49eeb2b0322b0afad546e9122e0661b65be5209fb0855696d1b1be3b9463b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No public root import.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRedundantObservation

/-!
# A necessary new measurement for the actual Bombieri collision

Any added observable that enables recovery of the source's third
arithmetic coordinate must distinguish correctedCoordinates from zero.
This is an exact necessary condition on a particular witness, not
sufficiency for recovering all coefficients or a classical Weil form.
-/
set_option autoImplicit false
noncomputable section

universe u

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairNecessity

open GRWTSK.Logic.InformationLoss
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

/-- A successful added source observation must distinguish the actual
two-moment collision. No injectivity of the added observation globally
is claimed. -/
theorem extra_separates_corrected_of_third_recoverable
    {W : Type u} (extra : Combination 2 → W)
    (hrecover : FactorsThrough
      (augmentedProfile bombieriMomentProfile extra)
      thirdCoordinateReadout) :
    extra correctedCoordinates ≠ extra (0 : Combination 2) := by
  intro hsame
  have hprofile :
      augmentedProfile bombieriMomentProfile extra correctedCoordinates =
        augmentedProfile bombieriMomentProfile extra (0 : Combination 2) :=
    Prod.ext bombieri_corrected_zero_same_profile hsame
  exact thirdCoordinateReadout_separates
    (eq_of_factorsThrough
      (augmentedProfile bombieriMomentProfile extra)
      thirdCoordinateReadout hrecover hprofile)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentRepairNecessity
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=610ba2fb71baa9de6f8af94232eca45c3041d61be172930d9ec7c2d5391a73e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentRepairNecessity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
