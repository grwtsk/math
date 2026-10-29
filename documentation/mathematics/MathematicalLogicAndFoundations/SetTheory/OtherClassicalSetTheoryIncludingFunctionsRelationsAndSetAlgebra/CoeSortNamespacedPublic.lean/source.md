# Coe Sort Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcd1c81a18122442c48a2c8936cfc78e08f86a87` · SHA-256 `8729a38d9d021ada8a4d961949bdc2f4546e4b8d70b5e5d87d26be210b23e1e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Varianta6321ae732b4e66276846dbe00faf4bec0ef17eed151ca268d8d29845d47c3fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6321ae732b4e66276846dbe00faf4bec0ef17eed151ca268d8d29845d47c3fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Set.Varianta6321ae732b4e66276846dbe00faf4bec0ef17eed151ca268d8d29845d47c3fc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a6321ae732b4e66276846dbe00faf4bec0ef17eed151ca268d8d29845d47c3fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Set/CoeSort.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Johannes Hölzl, Reid Barton, Kim Morrison, Patrick Massot, Kyle Miller,
Minchao Wu, Yury Kudryashov, Floris van Doorn
-/
module

public import Mathlib.Data.Set.Defs

/-!
# Coercing sets to types.

This file defines `Set.Elem s` as the type of all elements of the set `s`.
More advanced theorems about these definitions are located in other files in `Mathlib/Data/Set`.

## Main definitions

- `Set.Elem`: coercion of a set to a type; it is reducibly equal to `{x // x ∈ s}`;
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Varianta6321ae732b4e66276846dbe00faf4bec0ef17eed151ca268d8d29845d47c3fc

@[expose] public section

namespace Set

universe u v w

variable {α : Type u}

/-- Given the set `s`, `Elem s` is the `Type` of element of `s`.

It is currently an abbreviation so that instance coming from `Subtype` are available.
If you're interested in making it a `def`, as it probably should be,
you'll then need to create additional instances (and possibly prove lemmas about them).
See e.g. `Mathlib/Data/Set/Order.lean`.
-/
@[coe, reducible] def Elem (s : Set α) : Type u := {x // x ∈ s}

/-- Coercion from a set to the corresponding subtype. -/
instance : CoeSort (Set α) (Type u) := ⟨Elem⟩

@[simp] theorem elem_mem {σ α} [Membership σ α] {S : α} :
    ↑{x : σ | x ∈ S} = {x // x ∈ S} :=
  rfl

end Set
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e4a1d863714c9ecf9202d7d465128135c0ae0edd40826adbe059b47cb65c9fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CoeSort/Variant8ba33d248faf98c4ac82911d870ca3b6bc97ae6dcd2cc0eb3478040fd5900f1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
