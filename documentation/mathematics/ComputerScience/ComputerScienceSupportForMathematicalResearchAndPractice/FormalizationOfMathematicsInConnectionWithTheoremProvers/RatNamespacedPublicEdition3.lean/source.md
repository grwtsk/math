# Rat Namespaced Public Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcc539cb503033c2802559ac8f3febe0095fad78` · SHA-256 `baa3c2f2ce8d0674d263d2b2892fede102872c0d1f2124280dd04f238bc50d33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variant24e52ef6d17f27ee4ced180ff3ab121fb7e39bac0a2d53b0c4978c3a6bfb5202","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"24e52ef6d17f27ee4ced180ff3ab121fb7e39bac0a2d53b0c4978c3a6bfb5202","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ring.Variant24e52ef6d17f27ee4ced180ff3ab121fb7e39bac0a2d53b0c4978c3a6bfb5202","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"24e52ef6d17f27ee4ced180ff3ab121fb7e39bac0a2d53b0c4978c3a6bfb5202","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Ordered/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Arnez. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Arnez
-/
module

prelude
public import Init.Grind.Ordered.Ring
public import Init.GrindInstances.Ring.Rat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variant24e52ef6d17f27ee4ced180ff3ab121fb7e39bac0a2d53b0c4978c3a6bfb5202

public section

/-!
# `grind` instances for `Rat` as an ordered module.
-/

open Std

namespace Lean.Grind

instance : IsLinearOrder Rat where
  le_refl _ := Rat.le_refl
  le_trans _ _ _ := Rat.le_trans
  le_antisymm _ _ := Rat.le_antisymm
  le_total _ _ := Rat.le_total

instance : LawfulOrderLT Rat where
  lt_iff _ _ := by rw [← Rat.not_le, iff_and_self]; exact Rat.le_total.resolve_left

instance : OrderedAdd Rat where
  add_le_left_iff {a b} c := by simp [Rat.add_comm _ c, Rat.add_le_add_left]

instance : OrderedRing Rat where
  zero_lt_one := by decide
  mul_lt_mul_of_pos_left := Rat.mul_lt_mul_of_pos_left
  mul_lt_mul_of_pos_right := Rat.mul_lt_mul_of_pos_right

end Lean.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9e32e2f9d67cf4e8b7630d6ede611fa54c4747c6177c7b4b5b8401444ac585a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rat/Variant44ff9cd8a472b301e23ab367b66e22a003d418ade8b95abbe34f488b9fb863cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
