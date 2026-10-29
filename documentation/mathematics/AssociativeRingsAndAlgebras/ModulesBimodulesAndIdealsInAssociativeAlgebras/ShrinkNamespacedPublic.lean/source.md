# Shrink Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c15b50034416c840fb04af233faf67d5f7b1e51` · SHA-256 `d18b2a22f43784f73ff4689e36d829c2176232ced3c393c2c67b3340a0528be8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearEquiv.Variant744261ba9935d49293ff6db4d2d124253fc060a79baee32bced77813c536628d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"744261ba9935d49293ff6db4d2d124253fc060a79baee32bced77813c536628d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearEquiv.Variant744261ba9935d49293ff6db4d2d124253fc060a79baee32bced77813c536628d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"744261ba9935d49293ff6db4d2d124253fc060a79baee32bced77813c536628d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Module/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Group.Shrink
public import Mathlib.Algebra.Module.TransferInstance

/-!
# Transfer module and algebra structures from `α` to `Shrink α`
-/


namespace GRWTSK.Algebra.LinearAlgebra.LinearEquiv.Variant744261ba9935d49293ff6db4d2d124253fc060a79baee32bced77813c536628d

@[expose] public noncomputable section

universe v
variable {R α : Type*} [Small.{v} α] [Semiring R] [AddCommMonoid α] [Module R α]

namespace Shrink

instance : Module R (Shrink.{v} α) := addEquiv.module R

variable (R α) in
/-- Shrinking `α` to a smaller universe preserves module structure. -/
@[simps!]
def linearEquiv : Shrink.{v} α ≃ₗ[R] α := (addEquiv (α := α)).linearEquiv R

end Shrink
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7243c18a3acb117995c217c9460891a12bec7f2bbf82dbc6c3d24116571b5d8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Shrink/Variantb0fa827975826bf5d936dfcca5b5aabf70435ac42743372818d45aa1a1458afb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
