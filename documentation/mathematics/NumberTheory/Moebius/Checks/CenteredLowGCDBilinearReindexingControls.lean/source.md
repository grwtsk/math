# Complete source: GRWTSK.NumberTheory.Moebius.Checks.CenteredLowGCDBilinearReindexingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0262154281e6faa65c13048e777313459bcbcf02` · SHA-256 `bdbb2b5f0a9d88e7073af41702b7b40aecf9d0fca34d94592ea0041ff899dbac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDBilinearReindexing

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD.Checks

#check mobiusLogDivisorSum_eq_vonMangoldt
#check centeredModulusCoefficient_one
#check centeredCoefficientMass_eq_weighted_vonMangoldt_sub_one
#check centeredLowGCDBilinear_eq_four_channel
#check orderedCenteredLowGCDCorrelation_eq_bilinear
#check two_mul_positiveShift_add_diagonal_eq_bilinear
#check centeredLowGCDBilinear_eq_coprime_add_nonCoprime
#check centeredCoprimeBilinear_eq_mobiusSquareExpansion
#check weighted_vonMangoldt_sub_one_sq_le_absoluteCoprimeMajorant
#check centeredCoprimeBilinear_le_absoluteMajorant

example {X Y : ℕ} (hX : 0 < X) (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    2 * positiveShiftCenteredLowGCDCorrelation X Y w +
        diagonalCenteredLowGCDCorrelation X Y w =
      centeredLowGCDBilinear X Y w :=
  two_mul_positiveShift_add_diagonal_eq_bilinear hX hY w

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD.Checks
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abc988379309ecebf26aa1b18f1054c4e584652eb0b81409ba1a6e82808348cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/CenteredLowGCDBilinearReindexingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
