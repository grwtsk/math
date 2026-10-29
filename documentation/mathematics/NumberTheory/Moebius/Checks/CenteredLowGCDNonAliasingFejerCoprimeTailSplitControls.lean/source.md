# Complete source: GRWTSK.NumberTheory.Moebius.Checks.CenteredLowGCDNonAliasingFejerCoprimeTailSplitControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cab74bdad959cfee44616f25db205f493f34910f` · SHA-256 `01d2859e025f86c3f671f442a8043dd5a732972a954c875443b4a859c4e711b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerCoprimeTailSplit

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

#check centeredTailIncidenceSet
#check centeredDivisibilityTail_eq_incidenceSum
#check centeredTailIncidenceSet_card_le
#check abs_centeredDivisibilityTail_le_quotient_log_product

#check lowCoprimeMobiusSquareExpansion
#check highCoprimeMobiusSquareExpansion
#check coprimeMobiusSquareExpansion_eq_low_add_high
#check highMobiusQuotientSquareMass_le
#check absoluteHighCoprimeMobiusSquareMajorant_le_target
#check abs_highCoprimeMobiusSquareExpansion_le_target

#check nonAliasingFejerSmallMobiusAndPositiveGCDResidual
#check nonAliasingFejerSignedLowGCDBilinear_eq_residual_add_high
#check abs_nonAliasingFejer_highCoprimeMobiusSquare_le_target
#check abs_nonAliasingFejerSignedLowGCDBilinear_le_of_residual
#check abs_nonAliasingFejer_positiveShift_sqrt_le_of_residual

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14b3300a13c3ba36d84afbe69f310cf045211b2b8856c42ae848d196d90a56d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/CenteredLowGCDNonAliasingFejerCoprimeTailSplitControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
