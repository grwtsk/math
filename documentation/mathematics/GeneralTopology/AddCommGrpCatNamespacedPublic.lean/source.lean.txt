-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.PresheafSectionsExactOfExact.Variant509da532ab844afa4758fda519b3278943de2e536657c62c2e6550bf4db39450","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"509da532ab844afa4758fda519b3278943de2e536657c62c2e6550bf4db39450","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PresheafSectionsExactOfExact.Variant509da532ab844afa4758fda519b3278943de2e536657c62c2e6550bf4db39450","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"509da532ab844afa4758fda519b3278943de2e536657c62c2e6550bf4db39450","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Sheaves/AddCommGrpCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Brian Nugent. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Brian Nugent
-/

module

public import Mathlib.Topology.Sheaves.Abelian

/-!
# Sheaves of abelian groups.

Results for sheaves of abelian groups on topological spaces.

-/


namespace GRWTSK.Topology.PresheafSectionsExactOfExact.Variant509da532ab844afa4758fda519b3278943de2e536657c62c2e6550bf4db39450

public section

universe u

open TopologicalSpace Opposite CategoryTheory TopCat
open scoped AlgebraicGeometry

variable {X : TopCat.{u}} {U : Opens X}

namespace TopCat

theorem Presheaf.sections_exact_of_exact
    {S : ShortComplex (Presheaf AddCommGrpCat.{u} X)}
    (hS : S.Exact) {s : S.X₂.obj (Opposite.op U)} (h : S.g.app (Opposite.op U) s = 0) :
    ∃ (t : S.X₁.obj (Opposite.op U)), S.f.app (Opposite.op U) t = s := by
  dsimp [Presheaf] at S
  let F := (evaluation (Opens X)ᵒᵖ AddCommGrpCat.{u}).obj (Opposite.op U)
  exact (ShortComplex.ab_exact_iff (S.map F)).mp (((Functor.exact_tfae F).out 2 4 rfl rfl).mpr
    ⟨inferInstance, inferInstance⟩ S hS) _ h

lemma Sheaf.sections_exact_of_left_exact {S : ShortComplex (TopCat.Sheaf AddCommGrpCat X)}
    (hS : S.Exact) (hf : Mono S.f) (s : S.X₂.obj.obj (Opposite.op U))
    (h : S.g.hom.app (Opposite.op U) s = 0) :
    ∃ (t : S.X₁.obj.obj (Opposite.op U)), S.f.hom.app (Opposite.op U) t = s :=
  Presheaf.sections_exact_of_exact
    (((Functor.preservesFiniteLimits_tfae (Sheaf.forget ..)).out 2 4 rfl rfl).mpr
    inferInstance S ⟨hS, hf⟩).left h

lemma Presheaf.restrict_sum {V : Opens X} {F : Presheaf AddCommGrpCat X} (h : V ≤ U)
    (s t : F.obj (op U)) : (s + t) |_ V = s |_ V + t |_ V := by
  delta Presheaf.restrictOpen Presheaf.restrict
  cat_disch

end TopCat
