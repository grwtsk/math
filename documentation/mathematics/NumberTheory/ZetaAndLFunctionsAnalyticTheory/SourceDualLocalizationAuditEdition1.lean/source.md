# Source Dual Localization Audit Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a74dcbca51bd6c5a25d42c4be39299725329a127` · SHA-256 `13156af3815725c1fe51cb78345ef2e1b2696fda7f13bb6f2ca57c25efb25474`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceDualLocalization
set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceDualLocalization
#check
  spatialMask
#print axioms
  spatialMask
#check
  spatialMask_coe_ae
#print axioms
  spatialMask_coe_ae
#check
  spatialMask_idempotent
#print axioms
  spatialMask_idempotent
#check
  spatialMask_neg
#print axioms
  spatialMask_neg
#check
  spatialMask_empty
#print axioms
  spatialMask_empty
#check
  spatialMask_norm_le
#print axioms
  spatialMask_norm_le
#check
  indicator_hasCompactSupport
#print axioms
  indicator_hasCompactSupport
#check
  originalSource_spatialMask
#print axioms
  originalSource_spatialMask
#check
  originalSource_mask_not_commute
#print axioms
  originalSource_mask_not_commute
#check
  dualMask
#print axioms
  dualMask
#check
  dualMask_dual
#print axioms
  dualMask_dual
#check
  dualMask_neg_dual
#print axioms
  dualMask_neg_dual
#check
  dualMask_idempotent
#print axioms
  dualMask_idempotent
#check
  localized_dual_pairing
#print axioms
  localized_dual_pairing
#check
  overlapMask
#print axioms
  overlapMask
#check
  dualOverlapMask
#print axioms
  dualOverlapMask
#check
  dualOverlapMask_dual
#print axioms
  dualOverlapMask_dual
#check
  overlap_dual_pairing
#print axioms
  overlap_dual_pairing
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2baa64a3a26dacd3d11a42ad0e990fb1b958630902e82a930aa31fdea798625c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalizationAudit/Variant13156af3815725c1fe51cb78345ef2e1b2696fda7f13bb6f2ca57c25efb25474.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
