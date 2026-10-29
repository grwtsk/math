-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CharZeroPi.Variantd3605d6a52386a8270e2f5858ad940f64470698cfdd33129bfb7605a193de8f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3605d6a52386a8270e2f5858ad940f64470698cfdd33129bfb7605a193de8f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CharZeroPi.Variantd3605d6a52386a8270e2f5858ad940f64470698cfdd33129bfb7605a193de8f1","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"d3605d6a52386a8270e2f5858ad940f64470698cfdd33129bfb7605a193de8f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/CharP/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.Algebra.CharP.Defs
public import Mathlib.Algebra.Ring.Pi

/-!
# Characteristic of semirings of functions
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CharZeroPi.Variantd3605d6a52386a8270e2f5858ad940f64470698cfdd33129bfb7605a193de8f1

public section

section
variable {ι : Type*} {α : ι → Type*}

theorem CharZero.pi (i : ι) [Π i, AddMonoidWithOne (α i)] [CharZero (α i)] :
    CharZero (Π i, α i) where
  cast_injective _ _ h := Nat.cast_injective congr($h i)

variable [Nonempty ι]

/-- Strictly this only needs any one component to be char-zero, but this is awkward to express. -/
instance Pi.instCharZero [Π i, AddMonoidWithOne (α i)] [∀ i, CharZero (α i)] :
    CharZero (Π i, α i) := by
  inhabit ι
  exact CharZero.pi default

instance Pi.instCharP [Π i, AddMonoidWithOne (α i)] (p : ℕ) [∀ i, CharP (α i) p] :
    CharP (Π i, α i) p where
  cast_eq_zero_iff x := by simp [funext_iff, CharP.cast_eq_zero_iff _ p x]

instance Pi.instExpChar [Π i, AddMonoidWithOne (α i)] (p : ℕ) [∀ i, ExpChar (α i) p] :
    ExpChar (Π i, α i) p := by
  inhabit ι
  obtain hp | rfl := expChar_is_prime_or_one (α default) p
  · simp only [expChar_prime_iff, hp] at *
    infer_instance
  · simp only [expChar_one_iff] at *
    infer_instance

end
