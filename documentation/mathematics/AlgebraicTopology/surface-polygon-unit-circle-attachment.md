# Standard-circle transport of the polygon attaching map

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Issue: https://github.com/grwtsk/math/issues/947

Exact parent: draft PR #946 at `5aa55f9366e1d02ebc0b764b691dece299b4697a`.

The parent proposes a homeomorphism `perimeterUnitCircleHomeomorph k : UnpairedPerimeter k ≃ₜ UnitAddCircle`, where the finite source quotient uses precisely cyclic endpoint seams. The earlier `perimeterAttach k` is the continuous surjective and noninjective quotient onto the paired boundary one-skeleton `PolygonBoundaryOneSkeleton k`.

Define `unitCircleAttachingMap k` as `perimeterAttach k ∘ (perimeterUnitCircleHomeomorph k).symm`. The new module states continuity, surjectivity, exact source projection, factorization through original points, opposite a/a⁻¹ and b/b⁻¹ side pairing, noninjectivity and equality of the pulled-back kernel.

This is a domain reparametrization. It is **not** a closed disk, a disk-boundary inclusion, an extension of the map across the disk, a CW pushout, a surface manifold, a cellular comparison, a hyperbolic length statement, or any RH implication.

The genuine next geometric supplier is jointly continuous radial interpolation followed by a cone-to-closed-disk homeomorphism respecting boundary coordinates and a topological adjunction/pushout proof. Independently, competing PR #931 and PR #946 must be reconciled before acceptance.

All theorems are source-only and depend on the parent’s as-yet-unelaborated homeomorphism. Require immutable-head Lean/Lake, declaration/type/axiom/unsafe audit, hostile replay and accepted receipt before promotion.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cbcf22e35983e74083d169a56036304d55fb32192471c713eabbb6d4feaa14f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
