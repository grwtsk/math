# Complex polar phase equality and integer winding

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Parent: PR #991 at immutable head `ea26d00b9129894872237aadb04553367afab6f9`.

The source proposes equality of complex phases exp(2πiθ)=exp(2πiφ) iff θ=φ+n for some integer n. The forward proof attempts Mathlib's circleMap equality criterion and real/complex cancellation; the reverse reuses inherited integer periodicity. The exact Mathlib theorem namespace and cast normalizations require elaboration. This does not yet construct UnitAddCircle quotient descent or a cone-to-disk homeomorphism. The source is a proof candidate, not a verified theorem.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bcb4caba26882550777fce4a8bb27fc8061c18cccf005e3ce4a333d1610f287 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
