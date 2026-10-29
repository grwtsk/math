# Slice Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0e5de187f67870f7f4b1a6f850a2bafef54da47` · SHA-256 `bca31e2666fc9945820556d3a7cbab95fddb36f49c265e625a930cc2ca143208`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Slice.Variant0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Slice.Variant0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CategoryTheory.Slice


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Slice.Variant0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b

open CategoryTheory

variable (C : Type) [Category C] (X Y Z W U : C)
variable (f₁ f₂ : X ⟶ Y) (g g₁ g₂ : Y ⟶ Z) (h : Z ⟶ W) (l : W ⟶ U)

example (hyp : f₁ ≫ g₁ = f₂ ≫ g₂) : f₁ ≫ g₁ ≫ h ≫ l = (f₂ ≫ g₂) ≫ (h ≫ l) := by
  conv =>
    rhs
    slice 2 3
  show f₁ ≫ g₁ ≫ h ≫ l = f₂ ≫ (g₂ ≫ h) ≫ l
  conv =>
    lhs
    slice 1 2
    rw [hyp]
  show ((f₂ ≫ g₂) ≫ h) ≫ l = f₂ ≫ (g₂ ≫ h) ≫ l
  conv =>
    lhs
    slice 2 3

example (hyp : f₁ ≫ g₁ = f₂ ≫ g₂) : f₁ ≫ g₁ ≫ h ≫ l = (f₂ ≫ g₂) ≫ (h ≫ l) := by
  slice_lhs 1 2 => { rw [hyp] }; slice_rhs 1 2 => skip

example (h₁ : f₁ = f₂) : f₁ ≫ g ≫ h ≫ l = ((f₂ ≫ g) ≫ h) ≫ l := by
  slice_lhs 1 1 => rw [h₁]

example (h₁ : f₁ = f₂) : ((f₂ ≫ g) ≫ h) ≫ l = f₁ ≫ g ≫ h ≫ l := by
  slice_rhs 1 1 => rw [h₁]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3331d383f623b867a1c5fd6ee5be97c3a4ef68c94fc9efe5554ce1f62b07875d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant47d9a7399648bcbd3d64834ba15bd8ddf026210e26f5405784b63b91c0c64b8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
