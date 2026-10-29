# Complete source: GRWTSK.NumberTheory.Moebius.Checks.CenteredLowGCDNonAliasingFejerDiagonalControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa43d8077a04860c222cbb8e01cf9093ac0152fe` · SHA-256 `ae05cf993bd2866ae789c58893eca4c66469be69a26808237eb70e57b7fd0555`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerDiagonal

set_option autoImplicit false
noncomputable section

open GRWTSK.NumberTheory.Moebius.CenteredLowGCD

#check divisorSqrtCode
#check divisorSqrtCode_injective
#check card_divisors_le_two_mul_sqrt_succ
#check card_divisors_cast_le_six_mul_sqrt_scale
#check octaveDivisorSquareMass
#check octaveDivisorSquareMass_le
#check genuineLowGCDPairKernel_diagonal_eq_divisorPairSum
#check abs_mobiusLogTerm_le_log_four_mul_scale
#check abs_genuineLowGCDPairKernel_diagonal_le
#check abs_centeredLowGCDPairKernel_diagonal_le
#check centeredLowGCDTargetScale
#check abs_diagonalCenteredLowGCDCorrelation_le_target
#check abs_nonAliasingFejer_diagonal_le_target
#check two_mul_nonAliasingFejer_positiveShift_eq_bilinear_sub_diagonal
#check abs_nonAliasingFejer_positiveShift_le_of_bilinear
#check nonAliasingFejerSignedLowGCDBilinear
#check abs_nonAliasingFejer_positiveShift_sqrt_le_of_signedBilinear
#check nonAliasingFejerSignedLowGCDBilinear_eq_coprime_add_nonCoprime
#check nonAliasingFejerSignedLowGCDBilinear_eq_mobiusSquare_add_nonCoprime
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6598b0b1ec1de88ffdefd2601982116939e54b4b1ed8581e2cd93ddc62d0caff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/CenteredLowGCDNonAliasingFejerDiagonalControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
