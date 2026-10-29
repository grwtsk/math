# Complete source: GRWTSK.Algebra.LinearAlgebra.Order.Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf00f8bb20473d6847dc198ab10d2d18d56c20cb` · SHA-256 `aa0b4471452c71eb5f12140e3f6afea98897110f05940475990310f38e309ad9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Submodule.Variant453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Submodule.Variant453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/Submodule/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Order.Monoid.Basic

/-!
# Ordered instances on submodules
-/


namespace GRWTSK.Algebra.LinearAlgebra.Submodule.Variant453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c

namespace Submodule
variable {R M : Type*}

section OrderedMonoid
variable [Semiring R]

/-- A submodule of an ordered additive monoid is an ordered additive monoid. -/
instance toIsOrderedAddMonoid [AddCommMonoid M] [PartialOrder M] [IsOrderedAddMonoid M]
    [Module R M] (S : Submodule R M) :
    IsOrderedAddMonoid S :=
  Subtype.coe_injective.isOrderedAddMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

/-- A submodule of an ordered cancellative additive monoid is an ordered cancellative additive
monoid. -/
instance toIsOrderedCancelAddMonoid [AddCommMonoid M] [PartialOrder M]
    [IsOrderedCancelAddMonoid M] [Module R M] (S : Submodule R M) :
    IsOrderedCancelAddMonoid S :=
  Subtype.coe_injective.isOrderedCancelAddMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

end OrderedMonoid

end Submodule
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b0db83e214670c8629398a016e5e0814379dac616d5154270f50a2fa9f929c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
