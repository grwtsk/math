-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MkSmul.Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MkSmul.Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Module/Archimedean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Weiyi Wang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Weiyi Wang
-/
module

public import Mathlib.Algebra.Order.Archimedean.Class
public import Mathlib.Algebra.Order.Module.Basic
public import Mathlib.Algebra.Module.Submodule.Defs

/-!
# Archimedean classes for ordered module

## Main definitions
* `ArchimedeanClass.ball` are `ArchimedeanClass.ballAddSubgroup` as a submodules.
* `ArchimedeanClass.closedBall` are `ArchimedeanClass.closedBallAddSubgroup` as a submodules.
-/


namespace GRWTSK.Algebra.LinearAlgebra.MkSmul.Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9

@[expose] public section

variable {M : Type*} [AddCommGroup M] [LinearOrder M] [IsOrderedAddMonoid M]
variable {K : Type*} [Ring K] [LinearOrder K] [IsOrderedRing K] [Archimedean K]
variable [Module K M] [PosSMulMono K M]

namespace ArchimedeanClass

@[simp]
theorem mk_smul (a : M) {k : K} (h : k ≠ 0) : mk (k • a) = mk a := by
  have : Nontrivial K := nontrivial_iff.mpr ⟨k, 0, h⟩
  obtain ⟨m, hm⟩ := Archimedean.arch 1 (show 0 < |k| by simpa using h)
  obtain ⟨n, hn⟩ := Archimedean.arch |k| (show 0 < 1 by simp)
  simp_rw [mk_eq_mk, abs_smul]
  refine ⟨⟨m, ?_⟩, ⟨n, ?_⟩⟩
  · rw [← smul_assoc]
    exact le_smul_of_one_le_left (by simp) hm
  · have : n • |a| = (n • (1 : K)) • |a| := by rw [smul_assoc, one_smul]
    rw [this]
    exact smul_le_smul_of_nonneg_right hn (by simp)

theorem mk_le_mk_smul (a : M) (k : K) : mk a ≤ mk (k • a) := by
  obtain rfl | h := eq_or_ne k 0 <;> simp [*]

end ArchimedeanClass

namespace FiniteArchimedeanClass

variable (K)

/-- Given an upper set `s` of finite archimedean classes in a linearly ordered module `M` with
Archimedean scalars, all elements belonging to these classes together with 0 form a submodule.

This has the same carrier as `FiniteArchimedeanClass.addSubgroup`. -/
noncomputable
def submodule (s : UpperSet (FiniteArchimedeanClass M)) : Submodule K M where
  __ := addSubgroup s
  smul_mem' k {a} ha ne := s.upper (ArchimedeanClass.mk_le_mk_smul ..) <|
    ha fun eq ↦ ne <| by simp [ArchimedeanClass.mk_eq_top_iff.mp eq]

theorem submodule_strictAnti : StrictAnti (submodule K (M := M)) := addSubgroup_strictAnti

/-- An open ball defined by `ArchimedeanClass.submodule` of `UpperSet.Ioi c`.
For `c = ⊤`, we assign the junk value `⊥`.

This has the same carrier as `ArchimedeanClass.ballAddSubgroup`'s. -/
noncomputable
abbrev ball (c : FiniteArchimedeanClass M) := submodule K (UpperSet.Ioi c)

/-- A closed ball defined by `ArchimedeanClass.submodule` of `UpperSet.Ici c`.

This has the same carrier as `ArchimedeanClass.closedBallAddSubgroup`'s. -/
noncomputable
abbrev closedBall (c : FiniteArchimedeanClass M) := submodule K (UpperSet.Ici c)

@[simp]
theorem toAddSubgroup_ball (c : FiniteArchimedeanClass M) :
    (ball K c).toAddSubgroup = ballAddSubgroup c := rfl

@[simp]
theorem toAddSubgroup_closedBall (c : FiniteArchimedeanClass M) :
    (closedBall K c).toAddSubgroup = closedBallAddSubgroup c := rfl

@[simp]
theorem mem_ball_iff {a : M} {c : FiniteArchimedeanClass M} :
    a ∈ ball K c ↔ ∀ h : a ≠ 0, c < mk a h :=
  mem_ballAddSubgroup_iff

@[simp]
theorem mem_closedBall_iff {a : M} {c : FiniteArchimedeanClass M} :
    a ∈ closedBall K c ↔ ∀ h : a ≠ 0, c ≤ mk a h :=
  mem_closedBallAddSubgroup_iff

theorem ball_strictAnti : StrictAnti (ball (M := M) K) := ballAddSubgroup_strictAnti

theorem ball_lt_closedBall {c : FiniteArchimedeanClass M} : ball K c < closedBall K c :=
  submodule_strictAnti _ Set.Ioi_ssubset_Ici_self

end FiniteArchimedeanClass
