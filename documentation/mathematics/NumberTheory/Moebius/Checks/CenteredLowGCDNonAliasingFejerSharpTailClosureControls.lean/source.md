# Complete source: GRWTSK.NumberTheory.Moebius.Checks.CenteredLowGCDNonAliasingFejerSharpTailClosureControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a0c3f463a031b3292a5c4e915d0117581d6d3d5` · SHA-256 `54146ad14b596563cebccb91bc284c11018fd48596ce79f74117dea524e2c325`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerSharpTailClosure

set_option autoImplicit false
noncomputable section

open GRWTSK.NumberTheory.Moebius.CenteredLowGCD
open GRWTSK.RiemannHypothesis

#check coprimeRestrictedMobius
#check coprimeRestrictedMobiusDivisorIndicator_mem_Icc
#check coprimeRestrictedMobiusLog_mem_Icc
#check restrictedProductMobiusLogBlock_eq
#check abs_restrictedProductMobiusLogBlock_le_log
#check centeredTailDivisorBlock_eq_restrictedProductMobiusLogBlock
#check divisibleOctaveIndexSet_card_le
#check abs_centeredDivisibilityTail_le_quotient_mul_log
#check nonAliasingFejerSharpDivisibilityTail_proved
#check abs_nonAliasingFejer_cutoffCorrection_le_target
#check centeredMass_sq_le_of_residual
#check abs_residual_le_of_centeredMass_sq
#check abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq_closedTail
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2eaded440b976f33b4bfc95d98e4cb2c93b6939c65c3980f5b03226e369296a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/CenteredLowGCDNonAliasingFejerSharpTailClosureControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
