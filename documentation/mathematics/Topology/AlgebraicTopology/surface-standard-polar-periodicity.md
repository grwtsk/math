# Integer-periodic real-angle polar formula

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Parent: PR #986, immutable head `9df9bac939a89b407f614494841d668f4fb78095`.

The new Lean source proposes period-one, natural-winding and integer-winding identities for F(theta,r)=r exp(2πi theta). It deliberately does not claim that a UnitAddCircle function has been constructed: exact quotient relation compatibility and continuity remain separate obligations. Further open suppliers: positive-radius angle uniqueness, cone quotient descent, disk surjectivity, compact-to-Hausdorff homeomorphism. No CW pushout, manifold, homology or RH claim. Lean elaboration and immutable-head trust replay remain required under #100.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a768e61bede2d988bc7e7b3f37adb56535ba779f41e5d554292f183cdcb42d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
