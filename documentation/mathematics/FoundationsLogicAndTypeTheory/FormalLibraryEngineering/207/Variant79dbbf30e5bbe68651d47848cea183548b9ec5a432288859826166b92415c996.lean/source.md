# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.207.Variant79dbbf30e5bbe68651d47848cea183548b9ec5a432288859826166b92415c996

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e0068c5449e54634a655607713f74f18f394a4b` · SHA-256 `a0d22cde5fbd905ff88d09443054be5e34b60456ba102366eab4b31aeee9d09f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Set.Variantca70d5189e9745bc40328d1efe3d502794f9b7ca15149f2d792fc2c364e78ce7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca70d5189e9745bc40328d1efe3d502794f9b7ca15149f2d792fc2c364e78ce7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Set.Variantca70d5189e9745bc40328d1efe3d502794f9b7ca15149f2d792fc2c364e78ce7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ca70d5189e9745bc40328d1efe3d502794f9b7ca15149f2d792fc2c364e78ce7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/207.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- Thanks to Jireh Loreaux for reporting this bug.

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Set.Variantca70d5189e9745bc40328d1efe3d502794f9b7ca15149f2d792fc2c364e78ce7

def Set α := α → Prop

instance : Membership α (Set α) :=
  ⟨λ s a => s a⟩

instance : Singleton α (Set α) :=
  ⟨λ a b => b = a⟩

axiom EqOn : (f₁ f₂ : α → α) → Set α → Prop

@[aesop safe forward]
axiom EqOn.eq_of_mem (h : EqOn f₁ f₂ s) (ha : a ∈ s) : f₁ a = f₂ a

@[simp]
axiom eqOn_singleton : EqOn f₁ f₂ {x} ↔ f₁ x = f₂ x

example (s : Set Nat) (x : Nat) (hx : x ∈ s) (f : Nat → Nat)
    (h_eqOn_x : EqOn f (λ _ => 1) {x}) (this : EqOn f (λ _ => 0) s) :
    False := by
  aesop

example (s : Set Nat) (x : Nat) (hx : x ∈ s) (f : Nat → Nat)
    (this : EqOn f (λ _ => 0) s) (h_eqOn_x : EqOn f (λ _ => 1) {x}) :
    False := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=944fea0931149d0f7682e7738fc78e4662ff32bfb819605262c02acc729f1d38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/207/Variant79dbbf30e5bbe68651d47848cea183548b9ec5a432288859826166b92415c996.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
