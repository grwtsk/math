# Direction Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ffca1595cb7918c4e495b9adbc2a207a61baba8` · SHA-256 `694b47b99e476e7c42df449f5ce042b25b4f0353d34916331ace88f76721bdc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Direction.Variant39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.Direction.Variant39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Kakeya/Direction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# Euclidean directions for Kakeya geometry

Ambient dimension is a type index.  A direction is an actual unit vector, not
a string label or a display coordinate.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.Direction.Variant39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806

namespace Mathematics.Geometry.Kakeya

/-- The canonical real Euclidean carrier in dimension `dimension`. -/
abbrev AmbientPoint (dimension : Nat) :=
  EuclideanSpace ℝ (Fin dimension)

/-- An oriented unit direction in the ambient Euclidean carrier. -/
structure Direction (dimension : Nat) where
  vector : AmbientPoint dimension
  unit : ‖vector‖ = 1

theorem Direction.nonzero {dimension : Nat}
    (direction : Direction dimension) :
    direction.vector ≠ 0 := by
  intro zero
  have unit := direction.unit
  rw [zero, norm_zero] at unit
  norm_num at unit

end Mathematics.Geometry.Kakeya
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=496e55d25f170836782a4da9fac8399cc7ffe1365b4e418ee780698767c5fa98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Direction/Variant9c6c573238810d6de74f2bc125235c40f2611b40fd11a0581c8cfa9d52ec4251.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
