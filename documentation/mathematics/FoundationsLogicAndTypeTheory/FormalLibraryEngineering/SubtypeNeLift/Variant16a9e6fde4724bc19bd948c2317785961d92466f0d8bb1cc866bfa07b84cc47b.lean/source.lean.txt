-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubtypeNeLift.Variant60629629820cbb590d67383b878c4c205c1405b3dd56e3a06415033703b402a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60629629820cbb590d67383b878c4c205c1405b3dd56e3a06415033703b402a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SubtypeNeLift.Variant60629629820cbb590d67383b878c4c205c1405b3dd56e3a06415033703b402a1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"60629629820cbb590d67383b878c4c205c1405b3dd56e3a06415033703b402a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/SubtypeNeLift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Aesop
public import Mathlib.Data.Subtype
public import Mathlib.Util.CompileInductive

/-!
# Extending a function from the complement of a singleton

In this file, we define `Function.subtypeNeLift` which allows to
extend a (dependent) function defined on the complement of a singleton.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubtypeNeLift.Variant60629629820cbb590d67383b878c4c205c1405b3dd56e3a06415033703b402a1

@[expose] public section

namespace Function

variable {ι : Type*} [DecidableEq ι] {M : ι → Type*} (i₀ : ι)
  (f : ∀ (j : { i // i ≠ i₀ }), M j) (x : M i₀)

/-- Given `i₀ : ι` and `x : M i₀`, this is the (dependent) map `(i : ι) → M i`
whose value at `i₀` is `x` and which extends a given map on the complement of `{i₀}`. -/
def subtypeNeLift (i : ι) : M i :=
  if h : i = i₀ then by rw [h]; exact x else f ⟨i, h⟩

@[simp]
lemma subtypeNeLift_self : subtypeNeLift i₀ f x i₀ = x := dite_eq_left rfl

lemma subtypeNeLift_of_neq (i : ι) (h : i ≠ i₀) :
    subtypeNeLift i₀ f x i = f ⟨i, h⟩ := dite_eq_right h

@[simp]
lemma subtypeNeLift_restriction (φ : ∀ i, M i) (i₀ : ι) :
    subtypeNeLift i₀ (fun i ↦ φ i) (φ i₀) = φ := by
  ext i
  by_cases h : i = i₀
  · subst h
    simp
  · rw [subtypeNeLift_of_neq _ _ _ _ h]

end Function
