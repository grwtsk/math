-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GeneralAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NatCastWithTop.Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NatCastWithTop.Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Cast/WithTop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop

/-!
# Lemma about the coercion `ℕ → WithBot ℕ`.

An orphaned lemma about casting from `ℕ` to `WithBot ℕ`,
exiled here during the port to minimize imports of `Algebra.Order.Ring.Rat`.
-/


namespace FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NatCastWithTop.Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11

instance : WellFoundedRelation (WithTop ℕ) where
  rel := (· < ·)
  wf := IsWellFounded.wf

theorem Nat.cast_withTop (n : ℕ) : Nat.cast n = WithTop.some n :=
  rfl

theorem Nat.cast_withBot (n : ℕ) : Nat.cast n = WithBot.some n :=
  rfl
