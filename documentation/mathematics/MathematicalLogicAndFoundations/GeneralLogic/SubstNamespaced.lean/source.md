# Subst Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59c236fbe388e0b205110d69f427627cf4889373` · SHA-256 `10c369d0c8e57b22aa638cb00023b0881486b7fbe672899dbaa7944ce05803b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Varianta6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Varianta6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Subst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Varianta6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- These test cases test the builtin subst tactic.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h₁ : x = 5) (h₂ : y = 5) : x = y := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example (h₁ : x = 5) (h₂ : y = 5) : x = y := by
  aesop (config := { useSimpAll := false })

variable {α : Type}

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {x y z : α} (h₁ : x = y) (h₂ : y = z) : x = z := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example {x y z : α} (h₁ : x = y) (h₂ : y = z) : x = z := by
  aesop (config := { useSimpAll := false })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {x y : α }(P : ∀ x y, x = y → Prop) (h₁ : x = y) (h₂ : P x y h₁) :
    x = y := by
  aesop
    (erase Aesop.BuiltinRules.subst, Aesop.BuiltinRules.assumption,
           Aesop.BuiltinRules.applyHyps)
    (config := { useSimpAll := false, terminal := true })

example {x y : α }(P : ∀ x y, x = y → Prop) (h₁ : x = y) (h₂ : P x y h₁) :
    x = y := by
  aesop
    (erase Aesop.BuiltinRules.assumption,
           Aesop.BuiltinRules.applyHyps)
    (config := { useSimpAll := false })

-- Subst also works for bi-implications.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h₁ : P ↔ Q) (h₂ : Q ↔ R) (h₃ : P) : R  := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example (h₁ : P ↔ Q) (h₂ : Q ↔ R) (h₃ : P) : R  := by
  aesop (config := { useSimpAll := false })

-- Subst also works for morally-homogeneous heterogeneous equalities (using a
-- builtin simp rule which turns these into actual homogeneous equalities).

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {P : α → Prop} {x y z : α} (h₁ : x ≍ y) (h₂ : y ≍ z) (h₃ : P x) :
    P z  := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example {P : α → Prop} {x y z : α} (h₁ : x ≍ y) (h₂ : y ≍ z) (h₃ : P x) :
    P z  := by
  aesop (config := { useSimpAll := false })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5699681c502c6e5d6b6ad013de3fccc3cf3e609acb1da1eb79e350425217729f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Subst/Variant0d660c2e3369c591d5a7b7273cc6a233dfb3c427851858ebe8b6c473d885e1f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
