-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ContinuousLinearEquiv.Variantdfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ContinuousLinearEquiv.Variantdfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"dfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Module/TransferInstance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Algebra.Module.Shrink
public import Mathlib.Topology.Algebra.Module.Equiv
public import Mathlib.Topology.Instances.Shrink
public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Data.EReal.Operations
public import Mathlib.Topology.MetricSpace.Bounded

/-!
# Transfer topological algebraic structures across `AddEquiv`s or `ContinuousLinearEquiv`s

In this file, we construct a continuous linear equivalence `α ≃L[R] β` from an equivalence `α ≃ β`,
where the continuous `R`-module structure on `α` is the one obtained by transporting an
`R`-module structure on `β` back along `e`.
We also specialize this construction to `Shrink α`.

This continues the pattern set in `Mathlib/Algebra/Module/TransferInstance.lean`.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ContinuousLinearEquiv.Variantdfa129d7bfed57808b9a06bf7eee1e936a2d1b93fd7b35c81badbff0d53c4360

@[expose] public section

variable {R α β : Type*}

namespace AddEquiv

variable (e : α ≃ β)

variable [AddCommMonoid α] [TopologicalSpace β] [AddCommMonoid β] [Semiring R] [Module R β]

variable (R) in
/-- An additive equivalence `e : α ≃+ β` gives a continuous linear equivalence `α ≃L[R] β`
where the continuous `R`-module structure on `α` is the one obtained by transporting an
`R`-module structure on `β` back along `e`.

This is `e.linearEquiv` as a continuous linear equivalence. -/
def continuousLinearEquiv (e : α ≃+ β) :
    letI := e.topologicalSpace
    letI := e.module R
    α ≃L[R] β :=
  letI := e.topologicalSpace
  letI := e.module R
  { toLinearEquiv := e.linearEquiv _
    continuous_toFun := continuous_induced_dom
    continuous_invFun := by
      simp +instances only [Equiv.topologicalSpace, e.toFun_as_coe, ← e.coinduced_symm]
      exact continuous_coinduced_rng }

@[simp]
lemma toLinearEquiv_continuousLinearEquiv (e : α ≃+ β) :
    letI := e.topologicalSpace
    letI := e.module R
    (e.continuousLinearEquiv R).toLinearEquiv = e.linearEquiv R := rfl

end AddEquiv

@[deprecated (since := "2026-08-10")]
alias Equiv.continuousLinearEquiv := AddEquiv.continuousLinearEquiv

@[deprecated (since := "2026-08-10")]
alias Equiv.toLinearEquiv_continuousLinearEquiv := AddEquiv.toLinearEquiv_continuousLinearEquiv

section ContinuousLinearEquiv

variable [Semiring R]

/-- Given a continuous multiplicative equivalence `e : α ≃ₜ* β`, if `β` is a topological group,
then so is `α`. -/
@[to_additive
/-- Given a continuous additive equivalence `e : α ≃ₜ+ β`, if `β` is a topological additive group,
then so is `α`. -/]
lemma ContinuousMulEquiv.isTopologicalGroup
    [TopologicalSpace β] [Group β] [IsTopologicalGroup β] [TopologicalSpace α] [Group α]
    (e : α ≃ₜ* β) : IsTopologicalGroup α where
  continuous_mul := by
    let f := (fun q ↦ q.1 * q.2 : β × β → β)
    have : Continuous (fun p ↦ e.symm <| f (e p.1, e p.2) : (α × α → α)) := by fun_prop
    exact this.congr <| fun p ↦ by simp [f]
  continuous_inv := by
    have : Continuous (e.symm ∘ (fun q ↦ q⁻¹) ∘ e) := by fun_prop
    exact this.congr (fun p ↦ by simp)

/-- Given a continuous linear equivalence `e : α ≃L[R] β`, if scalar multiplication on `β` is
continuous, then so is it for `α`. -/
lemma ContinuousLinearEquiv.continuousSMul
    [TopologicalSpace β] [AddCommGroup β] [Module R β] [TopologicalSpace R] [ContinuousSMul R β]
    [TopologicalSpace α] [AddCommGroup α] [Module R α]
    (e : α ≃L[R] β) :
    ContinuousSMul R α where
  continuous_smul := by
    let f : R × α → α := fun p ↦ e.symm <| p.1 • (e p.2)
    have : Continuous f := by fun_prop
    exact this.congr (fun p ↦ by simp [f])

end ContinuousLinearEquiv

universe v

variable (R α) in
/-- Shrinking `α` to a smaller universe preserves the continuous module structure. -/
@[simps!]
noncomputable def Shrink.continuousLinearEquiv
    [Small.{v} α] [AddCommMonoid α] [TopologicalSpace α] [Semiring R] [Module R α] :
    Shrink.{v} α ≃L[R] α :=
  (Shrink.addEquiv (α := α)).continuousLinearEquiv R
