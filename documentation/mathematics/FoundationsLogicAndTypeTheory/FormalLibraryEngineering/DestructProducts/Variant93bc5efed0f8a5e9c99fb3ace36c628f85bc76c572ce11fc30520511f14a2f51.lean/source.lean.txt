-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ex.Variant831526e6327fdc8c58aae8aaf9e5fd94530b005e66e1f68a553e7f1e5b448fd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"831526e6327fdc8c58aae8aaf9e5fd94530b005e66e1f68a553e7f1e5b448fd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ex.Variant831526e6327fdc8c58aae8aaf9e5fd94530b005e66e1f68a553e7f1e5b448fd7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"831526e6327fdc8c58aae8aaf9e5fd94530b005e66e1f68a553e7f1e5b448fd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/DestructProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- This file tests the builtin rules that destruct hypotheses with product-like
-- types.

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ex.Variant831526e6327fdc8c58aae8aaf9e5fd94530b005e66e1f68a553e7f1e5b448fd7

set_option aesop.check.all true

@[aesop safe constructors]
inductive Ex (α : Sort u) (β : α → Prop) : Prop
  | intro (fst : α) (snd : β fst)

@[aesop safe constructors]
structure Sig (α : Sort u) (β : α → Sort v) : Sort _ where
  fst : α
  snd : β fst

example (h : α ∧ β) : Sig α (λ _ => β) := by
  aesop

example (h : α × β) : Sig α (λ _ => β) := by
  aesop

example (h : PProd α β) : Sig α (λ _ => β) := by
  aesop

example (h : MProd α β) : Sig α (λ _ => β) := by
  aesop

example {p : α → Prop} (h : ∃ a, p a) : Ex α p := by
  aesop

example {p : α → Prop} (h : { a // p a }) : Sig α p := by
  aesop

example {p : α → Type} (h : Σ a, p a) : Sig α p := by
  aesop

example {p : α → Type} (h : Σ' a, p a) : Sig α p := by
  aesop

-- Test case for a bug reported by Jakob von Raumer.
example (x y : α × α) (h: p ∧ (x = y)) : x = y := by
  aesop (config := { enableSimp := false })
