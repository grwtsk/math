# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sum.Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14d4f891fd77cfaf03a06953bca0895c83a094b1` · SHA-256 `e2a63ed8ce6e788c8bc1125d28f2e87e90d90b1b99bde941a79041fb960e7ed0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SumLeft.Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SumLeft.Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a","mathematical_subject":"Logic.Foundations","original_sha256":"0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finite/Sum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Fintype.Sum

/-!
# Finiteness of sum types
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SumLeft.Variant0803bbafd2b0b0a8e003346c92bdcca2e6d95ff3f300e3a265761b1a1bb69a8a

variable {α β : Type*}

namespace Finite

instance [Finite α] [Finite β] : Finite (α ⊕ β) := by
  haveI := Fintype.ofFinite α
  haveI := Fintype.ofFinite β
  infer_instance

theorem sum_left (β) [Finite (α ⊕ β)] : Finite α :=
  of_injective (Sum.inl : α → α ⊕ β) Sum.inl_injective

theorem sum_right (α) [Finite (α ⊕ β)] : Finite β :=
  of_injective (Sum.inr : β → α ⊕ β) Sum.inr_injective

instance {α β : Sort*} [Finite α] [Finite β] : Finite (α ⊕' β) :=
  of_equiv _ ((Equiv.psumEquivSum _ _).symm.trans (Equiv.plift.psumCongr Equiv.plift))

theorem psum_left {α β : Sort*} [Finite (α ⊕' β)] : Finite α :=
  of_injective (PSum.inl : α → α ⊕' β) PSum.inl_injective

theorem psum_right {α β : Sort*} [Finite (α ⊕' β)] : Finite β :=
  of_injective (PSum.inr : β → α ⊕' β) PSum.inr_injective

end Finite
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ceb26162580b2f57388fdabb798bcb27dbfa594c571554026ec395b7a9e06fa8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant7baef3ad2638a028e7579d8530fcb2a616fd460264c8a666d243309567afae7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
