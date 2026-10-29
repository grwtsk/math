# Preadditive Indization Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1820e1d1b3a376d3f10507e88c07fce4a4b08257` · SHA-256 `c860b083091a06046de7f6f407edb528321b26b5812c191718319695bdecf354`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variant25a633cd7e1797a10455328a27ee472d556482333dd65f30badbfd29b0cd07bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25a633cd7e1797a10455328a27ee472d556482333dd65f30badbfd29b0cd07bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Category.Variant25a633cd7e1797a10455328a27ee472d556482333dd65f30badbfd29b0cd07bd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"25a633cd7e1797a10455328a27ee472d556482333dd65f30badbfd29b0cd07bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/Indization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.Indization.Category
import Mathlib.CategoryTheory.Preadditive.Transfer
import Mathlib.CategoryTheory.Preadditive.Opposite
import Mathlib.Algebra.Category.Grp.LeftExactFunctor

/-!
# The category of ind-objects is preadditive
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variant25a633cd7e1797a10455328a27ee472d556482333dd65f30badbfd29b0cd07bd

universe v u

open CategoryTheory Limits

namespace CategoryTheory

variable {C : Type u} [SmallCategory C] [Preadditive C] [HasFiniteColimits C]

attribute [local instance] HasFiniteBiproducts.of_hasFiniteCoproducts in
noncomputable instance : Preadditive (Ind C) :=
  .ofFullyFaithful (((Ind.leftExactFunctorEquivalence C).trans
    (AddCommGrp.leftExactFunctorForgetEquivalence _).symm).fullyFaithfulFunctor.comp
      (ObjectProperty.fullyFaithfulι _))

instance : HasFiniteBiproducts (Ind C) :=
  HasFiniteBiproducts.of_hasFiniteCoproducts

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88de32d4f08d47d7582874d9bd7c59b90f3520e4836c14864e9e9251d342cbad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Indization/Variant46ea6cc97e37e160419668e856aa5a8725f84496781afd2a4911fc97a579ff56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
