# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Varianta04badc1ad625b69e1434adebdc3f82a5cfaccac9abf6c0fe18d69752a64553b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `501b6e28ef8914d2830a4393071e8cf8f068b4b5` · SHA-256 `e8ee54004eba559a8cbc3fa6428be9d88161d518c4522314da9e4970242a64b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TypeTags.Variant0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TypeTags.Variant0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/TypeTags/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.TypeTags.Basic
public import Mathlib.Basic.Finite.Defs
public import Mathlib.Data.Fintype.Card

/-!
# `Finite`, `Infinite` and `Fintype` are preserved by `Additive` and `Multiplicative`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TypeTags.Variant0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef

public section

assert_not_exists MonoidWithZero MulAction

universe u

variable {α : Type u}

instance [Finite α] : Finite (Additive α) :=
  Finite.of_equiv α (by rfl)

instance [Finite α] : Finite (Multiplicative α) :=
  Finite.of_equiv α (by rfl)

instance [h : Infinite α] : Infinite (Additive α) := h

instance [h : Infinite α] : Infinite (Multiplicative α) := h

instance Additive.fintype : ∀ [Fintype α], Fintype (Additive α) :=
  Fintype.ofEquiv α Additive.ofMul

instance Multiplicative.fintype : ∀ [Fintype α], Fintype (Multiplicative α) :=
  Fintype.ofEquiv α Multiplicative.ofAdd

@[simp] lemma Fintype.card_multiplicative (α : Type*) [Fintype α] :
    card (Multiplicative α) = card α := Finset.card_map _

@[simp] lemma Fintype.card_additive (α : Type*) [Fintype α] : card (Additive α) = card α :=
  Finset.card_map _
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=937467106e67b9b30853f039633fcda0ea18404269fe7d99fb4a3160fcb0e156 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Varianta04badc1ad625b69e1434adebdc3f82a5cfaccac9abf6c0fe18d69752a64553b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
