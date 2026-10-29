# Definition Namespaced Sonin Projection Profile — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df1a63e780da4f62569e36293a7c51c2d33514dc` · SHA-256 `5f893260dbc34b3d283bb10f4d7d297ff0a9ecfbeea36cf02279e3d700bde606`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SoninProjectionProfile.Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SoninProjectionProfile.Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/ProjectionProfile/Definition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP2.OperatorOrder

/-!
# Sonin projection-profile primitive
-/


namespace GRWTSK.Algebra.LinearAlgebra.SoninProjectionProfile.Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8

namespace Mathematics.SemiLocalDefect.SoninCore

structure SoninProjectionProfile
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) where
  projection :
    PrimeCut U →
    HilbertEnd H.Ambient
  projection_isProjection :
    ∀ S,
      OrthogonalProjectionCertificate
        (projection S)
  projection_range :
    ∀ S,
      LinearMap.range
        (projection S).toLinearMap
      =
      H.transportedRange S
  projection_absorbs_left :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      (projection T).comp
        (projection S)
      =
      projection S
  projection_absorbs_right :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      (projection S).comp
        (projection T)
      =
      projection S
  projection_mono :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      OperatorLE
        (projection S)
        (projection T)
  projection_top :
    projection (topCut U)
    =
    ContinuousLinearMap.id
      ℂ
      H.Ambient

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35f3567b3a28e49f582a65ec671488ba94d13f61d82886883f86c23524b0a7f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Definition/Variantfbeb466ea9cf649371161c88daa93afe38cc0b66b731babe925a8e7699c7eb60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
