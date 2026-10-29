-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.LeDef.Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.LeDef.Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/ContinuousMap/Ordered.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Shing Tak Lam
-/
import Mathlib.Topology.Order.Lattice
import Mathlib.Topology.Order.ProjIcc
import Mathlib.Topology.ContinuousMap.Defs

/-!
# Bundled continuous maps into orders, with order-compatible topology

-/



namespace GRWTSK.Topology.GeneralTopology.LeDef.Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107

variable {α β : Type*} [TopologicalSpace α] [TopologicalSpace β]

namespace ContinuousMap

/-!
We now set up the partial order and lattice structure (given by pointwise min and max)
on continuous functions.
-/

instance partialOrder [PartialOrder β] : PartialOrder C(α, β) :=
  PartialOrder.lift (fun f => f.toFun) (fun f g _ => by aesop)

theorem le_def [PartialOrder β] {f g : C(α, β)} : f ≤ g ↔ ∀ a, f a ≤ g a :=
  Pi.le_def

theorem lt_def [PartialOrder β] {f g : C(α, β)} : f < g ↔ (∀ a, f a ≤ g a) ∧ ∃ a, f a < g a :=
  Pi.lt_def

section SemilatticeSup
variable [SemilatticeSup β] [ContinuousSup β]

instance sup : Max C(α, β) where max f g := { toFun := fun a ↦ f a ⊔ g a }

@[simp, norm_cast] lemma coe_sup (f g : C(α, β)) : ⇑(f ⊔ g) = ⇑f ⊔ g := rfl

@[simp] lemma sup_apply (f g : C(α, β)) (a : α) : (f ⊔ g) a = f a ⊔ g a := rfl

instance semilatticeSup : SemilatticeSup C(α, β) :=
  DFunLike.coe_injective.semilatticeSup _ fun _ _ ↦ rfl

lemma sup'_apply {ι : Type*} {s : Finset ι} (H : s.Nonempty) (f : ι → C(α, β)) (a : α) :
    s.sup' H f a = s.sup' H fun i ↦ f i a :=
  Finset.comp_sup'_eq_sup'_comp H (fun g : C(α, β) ↦ g a) fun _ _ ↦ rfl

@[simp, norm_cast]
lemma coe_sup' {ι : Type*} {s : Finset ι} (H : s.Nonempty) (f : ι → C(α, β)) :
    ⇑(s.sup' H f) = s.sup' H fun i ↦ ⇑(f i) := by ext; simp [sup'_apply]

end SemilatticeSup

section SemilatticeInf
variable [SemilatticeInf β] [ContinuousInf β]

instance inf : Min C(α, β) where min f g := { toFun := fun a ↦ f a ⊓ g a }

@[simp, norm_cast] lemma coe_inf (f g : C(α, β)) : ⇑(f ⊓ g) = ⇑f ⊓ g := rfl

@[simp] lemma inf_apply (f g : C(α, β)) (a : α) : (f ⊓ g) a = f a ⊓ g a := rfl

instance semilatticeInf : SemilatticeInf C(α, β) :=
  DFunLike.coe_injective.semilatticeInf _ fun _ _ ↦ rfl

lemma inf'_apply {ι : Type*} {s : Finset ι} (H : s.Nonempty) (f : ι → C(α, β)) (a : α) :
    s.inf' H f a = s.inf' H fun i ↦ f i a :=
  Finset.comp_inf'_eq_inf'_comp H (fun g : C(α, β) ↦ g a) fun _ _ ↦ rfl

@[simp, norm_cast]
lemma coe_inf' {ι : Type*} {s : Finset ι} (H : s.Nonempty) (f : ι → C(α, β)) :
    ⇑(s.inf' H f) = s.inf' H fun i ↦ ⇑(f i) := by ext; simp [inf'_apply]

end SemilatticeInf

instance [Lattice β] [TopologicalLattice β] : Lattice C(α, β) :=
  DFunLike.coe_injective.lattice _ (fun _ _ ↦ rfl) fun _ _ ↦ rfl

-- TODO transfer this lattice structure to `BoundedContinuousFunction`

section Extend

variable [LinearOrder α] [OrderTopology α] {a b : α} (h : a ≤ b)

/-- Extend a continuous function `f : C(Set.Icc a b, β)` to a function `f : C(α, β)`. -/
def IccExtend (f : C(Set.Icc a b, β)) : C(α, β) where
  toFun := Set.IccExtend h f

@[simp]
theorem coe_IccExtend (f : C(Set.Icc a b, β)) :
    ((IccExtend h f : C(α, β)) : α → β) = Set.IccExtend h f :=
  rfl

end Extend

end ContinuousMap
