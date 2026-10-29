# Squared Distance Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89356130f3bcd7945111c7d335f0f8b728768f7d` · SHA-256 `05f6274f1284bd8fab3a9a54eb972f64d8ee7fc7384cbe91669c7a7f427d0000`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.PlaneSquaredDistance.Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.PlaneSquaredDistance.Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"de9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/SquaredDistance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Plane

/-!
# Squared Euclidean distance

Squared distance is defined intrinsically from the norm.  The Cartesian
formula is a theorem, so coordinates cannot become a second metric authority.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.PlaneSquaredDistance.Variantde9cd9634188b190c7a5ae4936bae42c2dbef99906c68589f908c093c9382b3e

namespace Mathematics.Geometry

/-- Squared Euclidean distance in the canonical real plane. -/
noncomputable def planeSquaredDistance (left right : PlanePoint) : ℝ :=
  ‖left - right‖ ^ 2

theorem planeSquaredDistance_coordinates (left right : PlanePoint) :
    planeSquaredDistance left right =
      (left 0 - right 0) ^ 2 + (left 1 - right 1) ^ 2 := by
  simp [planeSquaredDistance, EuclideanSpace.real_norm_sq_eq, Fin.sum_univ_two]

theorem planeSquaredDistance_nonnegative (left right : PlanePoint) :
    0 ≤ planeSquaredDistance left right := by
  exact sq_nonneg _

@[simp] theorem planeSquaredDistance_self (point : PlanePoint) :
    planeSquaredDistance point point = 0 := by
  simp [planeSquaredDistance]

theorem planeSquaredDistance_symmetric (left right : PlanePoint) :
    planeSquaredDistance left right = planeSquaredDistance right left := by
  simp [planeSquaredDistance, norm_sub_rev]

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60b6bf99c78a65c14493cc4623b086a16e4f81070c8024c865d632fbc2880180 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
