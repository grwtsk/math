-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictFDerivAtConstSmul.Variant87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasStrictFDerivAtConstSmul.Variant87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812","mathematical_subject":"Analysis.Calculus","original_sha256":"87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Calculus/FDeriv/Add.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Sébastien Gouëzel, Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.FDeriv.Linear
import Mathlib.Analysis.Calculus.FDeriv.Comp


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictFDerivAtConstSmul.Variant87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812

#align_import analysis.calculus.fderiv.add from "leanprover-community/mathlib"@"e3fb84046afd187b710170887195d50bada934ee"

/-!
# Additive operations on derivatives

For detailed documentation of the Fréchet derivative,
see the module docstring of `Analysis/Calculus/FDeriv/Basic.lean`.

This file contains the usual formulas (and existence assertions) for the derivative of

* sum of finitely many functions
* multiplication of a function by a scalar constant
* negative of a function
* subtraction of two functions
-/


open Filter Asymptotics ContinuousLinearMap Set Metric

open Topology Classical NNReal Filter Asymptotics ENNReal

noncomputable section

section

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]

variable {G' : Type*} [NormedAddCommGroup G'] [NormedSpace 𝕜 G']

variable {f f₀ f₁ g : E → F}

variable {f' f₀' f₁' g' : E →L[𝕜] F}

variable (e : E →L[𝕜] F)

variable {x : E}

variable {s t : Set E}

variable {L L₁ L₂ : Filter E}

section ConstSmul

variable {R : Type*} [Semiring R] [Module R F] [SMulCommClass 𝕜 R F] [ContinuousConstSMul R F]

/-! ### Derivative of a function multiplied by a constant -/


theorem HasStrictFDerivAt.const_smul (h : HasStrictFDerivAt f f' x) (c : R) :
    HasStrictFDerivAt (fun x => c • f x) (c • f') x :=
  (c • (1 : F →L[𝕜] F)).hasStrictFDerivAt.comp x h
#align has_strict_fderiv_at.const_smul HasStrictFDerivAt.const_smul

theorem HasFDerivAtFilter.const_smul (h : HasFDerivAtFilter f f' x L) (c : R) :
    HasFDerivAtFilter (fun x => c • f x) (c • f') x L :=
  (c • (1 : F →L[𝕜] F)).hasFDerivAtFilter.comp x h tendsto_map
#align has_fderiv_at_filter.const_smul HasFDerivAtFilter.const_smul

nonrec theorem HasFDerivWithinAt.const_smul (h : HasFDerivWithinAt f f' s x) (c : R) :
    HasFDerivWithinAt (fun x => c • f x) (c • f') s x :=
  h.const_smul c
#align has_fderiv_within_at.const_smul HasFDerivWithinAt.const_smul

nonrec theorem HasFDerivAt.const_smul (h : HasFDerivAt f f' x) (c : R) :
    HasFDerivAt (fun x => c • f x) (c • f') x :=
  h.const_smul c
#align has_fderiv_at.const_smul HasFDerivAt.const_smul

theorem DifferentiableWithinAt.const_smul (h : DifferentiableWithinAt 𝕜 f s x) (c : R) :
    DifferentiableWithinAt 𝕜 (fun y => c • f y) s x :=
  (h.hasFDerivWithinAt.const_smul c).differentiableWithinAt
#align differentiable_within_at.const_smul DifferentiableWithinAt.const_smul

theorem DifferentiableAt.const_smul (h : DifferentiableAt 𝕜 f x) (c : R) :
    DifferentiableAt 𝕜 (fun y => c • f y) x :=
  (h.hasFDerivAt.const_smul c).differentiableAt
#align differentiable_at.const_smul DifferentiableAt.const_smul

theorem DifferentiableOn.const_smul (h : DifferentiableOn 𝕜 f s) (c : R) :
    DifferentiableOn 𝕜 (fun y => c • f y) s := fun x hx => (h x hx).const_smul c
#align differentiable_on.const_smul DifferentiableOn.const_smul

theorem Differentiable.const_smul (h : Differentiable 𝕜 f) (c : R) :
    Differentiable 𝕜 fun y => c • f y := fun x => (h x).const_smul c
#align differentiable.const_smul Differentiable.const_smul

theorem fderivWithin_const_smul (hxs : UniqueDiffWithinAt 𝕜 s x)
    (h : DifferentiableWithinAt 𝕜 f s x) (c : R) :
    fderivWithin 𝕜 (fun y => c • f y) s x = c • fderivWithin 𝕜 f s x :=
  (h.hasFDerivWithinAt.const_smul c).fderivWithin hxs
#align fderiv_within_const_smul fderivWithin_const_smul

theorem fderiv_const_smul (h : DifferentiableAt 𝕜 f x) (c : R) :
    fderiv 𝕜 (fun y => c • f y) x = c • fderiv 𝕜 f x :=
  (h.hasFDerivAt.const_smul c).fderiv
#align fderiv_const_smul fderiv_const_smul

end ConstSmul

section Add

/-! ### Derivative of the sum of two functions -/


nonrec theorem HasStrictFDerivAt.add (hf : HasStrictFDerivAt f f' x)
    (hg : HasStrictFDerivAt g g' x) : HasStrictFDerivAt (fun y => f y + g y) (f' + g') x :=
  (hf.add hg).congr_left fun y => by
    simp only [LinearMap.sub_apply, LinearMap.add_apply, map_sub, map_add, add_apply]
    abel
#align has_strict_fderiv_at.add HasStrictFDerivAt.add

nonrec theorem HasFDerivAtFilter.add (hf : HasFDerivAtFilter f f' x L)
    (hg : HasFDerivAtFilter g g' x L) : HasFDerivAtFilter (fun y => f y + g y) (f' + g') x L :=
  (hf.add hg).congr_left fun _ => by
    simp only [LinearMap.sub_apply, LinearMap.add_apply, map_sub, map_add, add_apply]
    abel
#align has_fderiv_at_filter.add HasFDerivAtFilter.add

nonrec theorem HasFDerivWithinAt.add (hf : HasFDerivWithinAt f f' s x)
    (hg : HasFDerivWithinAt g g' s x) : HasFDerivWithinAt (fun y => f y + g y) (f' + g') s x :=
  hf.add hg
#align has_fderiv_within_at.add HasFDerivWithinAt.add

nonrec theorem HasFDerivAt.add (hf : HasFDerivAt f f' x) (hg : HasFDerivAt g g' x) :
    HasFDerivAt (fun x => f x + g x) (f' + g') x :=
  hf.add hg
#align has_fderiv_at.add HasFDerivAt.add

theorem DifferentiableWithinAt.add (hf : DifferentiableWithinAt 𝕜 f s x)
    (hg : DifferentiableWithinAt 𝕜 g s x) : DifferentiableWithinAt 𝕜 (fun y => f y + g y) s x :=
  (hf.hasFDerivWithinAt.add hg.hasFDerivWithinAt).differentiableWithinAt
#align differentiable_within_at.add DifferentiableWithinAt.add

@[simp]
theorem DifferentiableAt.add (hf : DifferentiableAt 𝕜 f x) (hg : DifferentiableAt 𝕜 g x) :
    DifferentiableAt 𝕜 (fun y => f y + g y) x :=
  (hf.hasFDerivAt.add hg.hasFDerivAt).differentiableAt
#align differentiable_at.add DifferentiableAt.add

theorem DifferentiableOn.add (hf : DifferentiableOn 𝕜 f s) (hg : DifferentiableOn 𝕜 g s) :
    DifferentiableOn 𝕜 (fun y => f y + g y) s := fun x hx => (hf x hx).add (hg x hx)
#align differentiable_on.add DifferentiableOn.add

@[simp]
theorem Differentiable.add (hf : Differentiable 𝕜 f) (hg : Differentiable 𝕜 g) :
    Differentiable 𝕜 fun y => f y + g y := fun x => (hf x).add (hg x)
#align differentiable.add Differentiable.add

theorem fderivWithin_add (hxs : UniqueDiffWithinAt 𝕜 s x) (hf : DifferentiableWithinAt 𝕜 f s x)
    (hg : DifferentiableWithinAt 𝕜 g s x) :
    fderivWithin 𝕜 (fun y => f y + g y) s x = fderivWithin 𝕜 f s x + fderivWithin 𝕜 g s x :=
  (hf.hasFDerivWithinAt.add hg.hasFDerivWithinAt).fderivWithin hxs
#align fderiv_within_add fderivWithin_add

theorem fderiv_add (hf : DifferentiableAt 𝕜 f x) (hg : DifferentiableAt 𝕜 g x) :
    fderiv 𝕜 (fun y => f y + g y) x = fderiv 𝕜 f x + fderiv 𝕜 g x :=
  (hf.hasFDerivAt.add hg.hasFDerivAt).fderiv
#align fderiv_add fderiv_add

theorem HasStrictFDerivAt.add_const (hf : HasStrictFDerivAt f f' x) (c : F) :
    HasStrictFDerivAt (fun y => f y + c) f' x :=
  add_zero f' ▸ hf.add (hasStrictFDerivAt_const _ _)
#align has_strict_fderiv_at.add_const HasStrictFDerivAt.add_const

theorem HasFDerivAtFilter.add_const (hf : HasFDerivAtFilter f f' x L) (c : F) :
    HasFDerivAtFilter (fun y => f y + c) f' x L :=
  add_zero f' ▸ hf.add (hasFDerivAtFilter_const _ _ _)
#align has_fderiv_at_filter.add_const HasFDerivAtFilter.add_const

nonrec theorem HasFDerivWithinAt.add_const (hf : HasFDerivWithinAt f f' s x) (c : F) :
    HasFDerivWithinAt (fun y => f y + c) f' s x :=
  hf.add_const c
#align has_fderiv_within_at.add_const HasFDerivWithinAt.add_const

nonrec theorem HasFDerivAt.add_const (hf : HasFDerivAt f f' x) (c : F) :
    HasFDerivAt (fun x => f x + c) f' x :=
  hf.add_const c
#align has_fderiv_at.add_const HasFDerivAt.add_const

theorem DifferentiableWithinAt.add_const (hf : DifferentiableWithinAt 𝕜 f s x) (c : F) :
    DifferentiableWithinAt 𝕜 (fun y => f y + c) s x :=
  (hf.hasFDerivWithinAt.add_const c).differentiableWithinAt
#align differentiable_within_at.add_const DifferentiableWithinAt.add_const

@[simp]
theorem differentiableWithinAt_add_const_iff (c : F) :
    DifferentiableWithinAt 𝕜 (fun y => f y + c) s x ↔ DifferentiableWithinAt 𝕜 f s x :=
  ⟨fun h => by simpa using h.add_const (-c), fun h => h.add_const c⟩
#align differentiable_within_at_add_const_iff differentiableWithinAt_add_const_iff

theorem DifferentiableAt.add_const (hf : DifferentiableAt 𝕜 f x) (c : F) :
    DifferentiableAt 𝕜 (fun y => f y + c) x :=
  (hf.hasFDerivAt.add_const c).differentiableAt
#align differentiable_at.add_const DifferentiableAt.add_const

@[simp]
theorem differentiableAt_add_const_iff (c : F) :
    DifferentiableAt 𝕜 (fun y => f y + c) x ↔ DifferentiableAt 𝕜 f x :=
  ⟨fun h => by simpa using h.add_const (-c), fun h => h.add_const c⟩
#align differentiable_at_add_const_iff differentiableAt_add_const_iff

theorem DifferentiableOn.add_const (hf : DifferentiableOn 𝕜 f s) (c : F) :
    DifferentiableOn 𝕜 (fun y => f y + c) s := fun x hx => (hf x hx).add_const c
#align differentiable_on.add_const DifferentiableOn.add_const

@[simp]
theorem differentiableOn_add_const_iff (c : F) :
    DifferentiableOn 𝕜 (fun y => f y + c) s ↔ DifferentiableOn 𝕜 f s :=
  ⟨fun h => by simpa using h.add_const (-c), fun h => h.add_const c⟩
#align differentiable_on_add_const_iff differentiableOn_add_const_iff

theorem Differentiable.add_const (hf : Differentiable 𝕜 f) (c : F) :
    Differentiable 𝕜 fun y => f y + c := fun x => (hf x).add_const c
#align differentiable.add_const Differentiable.add_const

@[simp]
theorem differentiable_add_const_iff (c : F) :
    (Differentiable 𝕜 fun y => f y + c) ↔ Differentiable 𝕜 f :=
  ⟨fun h => by simpa using h.add_const (-c), fun h => h.add_const c⟩
#align differentiable_add_const_iff differentiable_add_const_iff

theorem fderivWithin_add_const (hxs : UniqueDiffWithinAt 𝕜 s x) (c : F) :
    fderivWithin 𝕜 (fun y => f y + c) s x = fderivWithin 𝕜 f s x :=
  if hf : DifferentiableWithinAt 𝕜 f s x then (hf.hasFDerivWithinAt.add_const c).fderivWithin hxs
  else by
    rw [fderivWithin_zero_of_not_differentiableWithinAt hf,
      fderivWithin_zero_of_not_differentiableWithinAt]
    simpa
#align fderiv_within_add_const fderivWithin_add_const

theorem fderiv_add_const (c : F) : fderiv 𝕜 (fun y => f y + c) x = fderiv 𝕜 f x := by
  simp only [← fderivWithin_univ, fderivWithin_add_const uniqueDiffWithinAt_univ]
#align fderiv_add_const fderiv_add_const

theorem HasStrictFDerivAt.const_add (hf : HasStrictFDerivAt f f' x) (c : F) :
    HasStrictFDerivAt (fun y => c + f y) f' x :=
  zero_add f' ▸ (hasStrictFDerivAt_const _ _).add hf
#align has_strict_fderiv_at.const_add HasStrictFDerivAt.const_add

theorem HasFDerivAtFilter.const_add (hf : HasFDerivAtFilter f f' x L) (c : F) :
    HasFDerivAtFilter (fun y => c + f y) f' x L :=
  zero_add f' ▸ (hasFDerivAtFilter_const _ _ _).add hf
#align has_fderiv_at_filter.const_add HasFDerivAtFilter.const_add

nonrec theorem HasFDerivWithinAt.const_add (hf : HasFDerivWithinAt f f' s x) (c : F) :
    HasFDerivWithinAt (fun y => c + f y) f' s x :=
  hf.const_add c
#align has_fderiv_within_at.const_add HasFDerivWithinAt.const_add

nonrec theorem HasFDerivAt.const_add (hf : HasFDerivAt f f' x) (c : F) :
    HasFDerivAt (fun x => c + f x) f' x :=
  hf.const_add c
#align has_fderiv_at.const_add HasFDerivAt.const_add

theorem DifferentiableWithinAt.const_add (hf : DifferentiableWithinAt 𝕜 f s x) (c : F) :
    DifferentiableWithinAt 𝕜 (fun y => c + f y) s x :=
  (hf.hasFDerivWithinAt.const_add c).differentiableWithinAt
#align differentiable_within_at.const_add DifferentiableWithinAt.const_add

@[simp]
theorem differentiableWithinAt_const_add_iff (c : F) :
    DifferentiableWithinAt 𝕜 (fun y => c + f y) s x ↔ DifferentiableWithinAt 𝕜 f s x :=
  ⟨fun h => by simpa using h.const_add (-c), fun h => h.const_add c⟩
#align differentiable_within_at_const_add_iff differentiableWithinAt_const_add_iff

theorem DifferentiableAt.const_add (hf : DifferentiableAt 𝕜 f x) (c : F) :
    DifferentiableAt 𝕜 (fun y => c + f y) x :=
  (hf.hasFDerivAt.const_add c).differentiableAt
#align differentiable_at.const_add DifferentiableAt.const_add

@[simp]
theorem differentiableAt_const_add_iff (c : F) :
    DifferentiableAt 𝕜 (fun y => c + f y) x ↔ DifferentiableAt 𝕜 f x :=
  ⟨fun h => by simpa using h.const_add (-c), fun h => h.const_add c⟩
#align differentiable_at_const_add_iff differentiableAt_const_add_iff

theorem DifferentiableOn.const_add (hf : DifferentiableOn 𝕜 f s) (c : F) :
    DifferentiableOn 𝕜 (fun y => c + f y) s := fun x hx => (hf x hx).const_add c
#align differentiable_on.const_add DifferentiableOn.const_add

@[simp]
theorem differentiableOn_const_add_iff (c : F) :
    DifferentiableOn 𝕜 (fun y => c + f y) s ↔ DifferentiableOn 𝕜 f s :=
  ⟨fun h => by simpa using h.const_add (-c), fun h => h.const_add c⟩
#align differentiable_on_const_add_iff differentiableOn_const_add_iff

theorem Differentiable.const_add (hf : Differentiable 𝕜 f) (c : F) :
    Differentiable 𝕜 fun y => c + f y := fun x => (hf x).const_add c
#align differentiable.const_add Differentiable.const_add

@[simp]
theorem differentiable_const_add_iff (c : F) :
    (Differentiable 𝕜 fun y => c + f y) ↔ Differentiable 𝕜 f :=
  ⟨fun h => by simpa using h.const_add (-c), fun h => h.const_add c⟩
#align differentiable_const_add_iff differentiable_const_add_iff

theorem fderivWithin_const_add (hxs : UniqueDiffWithinAt 𝕜 s x) (c : F) :
    fderivWithin 𝕜 (fun y => c + f y) s x = fderivWithin 𝕜 f s x := by
  simpa only [add_comm] using fderivWithin_add_const hxs c
#align fderiv_within_const_add fderivWithin_const_add

theorem fderiv_const_add (c : F) : fderiv 𝕜 (fun y => c + f y) x = fderiv 𝕜 f x := by
  simp only [add_comm c, fderiv_add_const]
#align fderiv_const_add fderiv_const_add

end Add

section Sum

/-! ### Derivative of a finite sum of functions -/


open BigOperators

variable {ι : Type*} {u : Finset ι} {A : ι → E → F} {A' : ι → E →L[𝕜] F}

theorem HasStrictFDerivAt.sum (h : ∀ i ∈ u, HasStrictFDerivAt (A i) (A' i) x) :
    HasStrictFDerivAt (fun y => ∑ i in u, A i y) (∑ i in u, A' i) x := by
  dsimp [HasStrictFDerivAt] at *
  convert IsLittleO.sum h
  simp [Finset.sum_sub_distrib, ContinuousLinearMap.sum_apply]
#align has_strict_fderiv_at.sum HasStrictFDerivAt.sum

theorem HasFDerivAtFilter.sum (h : ∀ i ∈ u, HasFDerivAtFilter (A i) (A' i) x L) :
    HasFDerivAtFilter (fun y => ∑ i in u, A i y) (∑ i in u, A' i) x L := by
  dsimp [HasFDerivAtFilter] at *
  convert IsLittleO.sum h
  simp [ContinuousLinearMap.sum_apply]
#align has_fderiv_at_filter.sum HasFDerivAtFilter.sum

theorem HasFDerivWithinAt.sum (h : ∀ i ∈ u, HasFDerivWithinAt (A i) (A' i) s x) :
    HasFDerivWithinAt (fun y => ∑ i in u, A i y) (∑ i in u, A' i) s x :=
  HasFDerivAtFilter.sum h
#align has_fderiv_within_at.sum HasFDerivWithinAt.sum

theorem HasFDerivAt.sum (h : ∀ i ∈ u, HasFDerivAt (A i) (A' i) x) :
    HasFDerivAt (fun y => ∑ i in u, A i y) (∑ i in u, A' i) x :=
  HasFDerivAtFilter.sum h
#align has_fderiv_at.sum HasFDerivAt.sum

theorem DifferentiableWithinAt.sum (h : ∀ i ∈ u, DifferentiableWithinAt 𝕜 (A i) s x) :
    DifferentiableWithinAt 𝕜 (fun y => ∑ i in u, A i y) s x :=
  HasFDerivWithinAt.differentiableWithinAt <|
    HasFDerivWithinAt.sum fun i hi => (h i hi).hasFDerivWithinAt
#align differentiable_within_at.sum DifferentiableWithinAt.sum

@[simp]
theorem DifferentiableAt.sum (h : ∀ i ∈ u, DifferentiableAt 𝕜 (A i) x) :
    DifferentiableAt 𝕜 (fun y => ∑ i in u, A i y) x :=
  HasFDerivAt.differentiableAt <| HasFDerivAt.sum fun i hi => (h i hi).hasFDerivAt
#align differentiable_at.sum DifferentiableAt.sum

theorem DifferentiableOn.sum (h : ∀ i ∈ u, DifferentiableOn 𝕜 (A i) s) :
    DifferentiableOn 𝕜 (fun y => ∑ i in u, A i y) s := fun x hx =>
  DifferentiableWithinAt.sum fun i hi => h i hi x hx
#align differentiable_on.sum DifferentiableOn.sum

@[simp]
theorem Differentiable.sum (h : ∀ i ∈ u, Differentiable 𝕜 (A i)) :
    Differentiable 𝕜 fun y => ∑ i in u, A i y := fun x => DifferentiableAt.sum fun i hi => h i hi x
#align differentiable.sum Differentiable.sum

theorem fderivWithin_sum (hxs : UniqueDiffWithinAt 𝕜 s x)
    (h : ∀ i ∈ u, DifferentiableWithinAt 𝕜 (A i) s x) :
    fderivWithin 𝕜 (fun y => ∑ i in u, A i y) s x = ∑ i in u, fderivWithin 𝕜 (A i) s x :=
  (HasFDerivWithinAt.sum fun i hi => (h i hi).hasFDerivWithinAt).fderivWithin hxs
#align fderiv_within_sum fderivWithin_sum

theorem fderiv_sum (h : ∀ i ∈ u, DifferentiableAt 𝕜 (A i) x) :
    fderiv 𝕜 (fun y => ∑ i in u, A i y) x = ∑ i in u, fderiv 𝕜 (A i) x :=
  (HasFDerivAt.sum fun i hi => (h i hi).hasFDerivAt).fderiv
#align fderiv_sum fderiv_sum

end Sum

section Neg

/-! ### Derivative of the negative of a function -/


theorem HasStrictFDerivAt.neg (h : HasStrictFDerivAt f f' x) :
    HasStrictFDerivAt (fun x => -f x) (-f') x :=
  (-1 : F →L[𝕜] F).hasStrictFDerivAt.comp x h
#align has_strict_fderiv_at.neg HasStrictFDerivAt.neg

theorem HasFDerivAtFilter.neg (h : HasFDerivAtFilter f f' x L) :
    HasFDerivAtFilter (fun x => -f x) (-f') x L :=
  (-1 : F →L[𝕜] F).hasFDerivAtFilter.comp x h tendsto_map
#align has_fderiv_at_filter.neg HasFDerivAtFilter.neg

nonrec theorem HasFDerivWithinAt.neg (h : HasFDerivWithinAt f f' s x) :
    HasFDerivWithinAt (fun x => -f x) (-f') s x :=
  h.neg
#align has_fderiv_within_at.neg HasFDerivWithinAt.neg

nonrec theorem HasFDerivAt.neg (h : HasFDerivAt f f' x) : HasFDerivAt (fun x => -f x) (-f') x :=
  h.neg
#align has_fderiv_at.neg HasFDerivAt.neg

theorem DifferentiableWithinAt.neg (h : DifferentiableWithinAt 𝕜 f s x) :
    DifferentiableWithinAt 𝕜 (fun y => -f y) s x :=
  h.hasFDerivWithinAt.neg.differentiableWithinAt
#align differentiable_within_at.neg DifferentiableWithinAt.neg

@[simp]
theorem differentiableWithinAt_neg_iff :
    DifferentiableWithinAt 𝕜 (fun y => -f y) s x ↔ DifferentiableWithinAt 𝕜 f s x :=
  ⟨fun h => by simpa only [neg_neg] using h.neg, fun h => h.neg⟩
#align differentiable_within_at_neg_iff differentiableWithinAt_neg_iff

theorem DifferentiableAt.neg (h : DifferentiableAt 𝕜 f x) : DifferentiableAt 𝕜 (fun y => -f y) x :=
  h.hasFDerivAt.neg.differentiableAt
#align differentiable_at.neg DifferentiableAt.neg

@[simp]
theorem differentiableAt_neg_iff : DifferentiableAt 𝕜 (fun y => -f y) x ↔ DifferentiableAt 𝕜 f x :=
  ⟨fun h => by simpa only [neg_neg] using h.neg, fun h => h.neg⟩
#align differentiable_at_neg_iff differentiableAt_neg_iff

theorem DifferentiableOn.neg (h : DifferentiableOn 𝕜 f s) : DifferentiableOn 𝕜 (fun y => -f y) s :=
  fun x hx => (h x hx).neg
#align differentiable_on.neg DifferentiableOn.neg

@[simp]
theorem differentiableOn_neg_iff : DifferentiableOn 𝕜 (fun y => -f y) s ↔ DifferentiableOn 𝕜 f s :=
  ⟨fun h => by simpa only [neg_neg] using h.neg, fun h => h.neg⟩
#align differentiable_on_neg_iff differentiableOn_neg_iff

theorem Differentiable.neg (h : Differentiable 𝕜 f) : Differentiable 𝕜 fun y => -f y := fun x =>
  (h x).neg
#align differentiable.neg Differentiable.neg

@[simp]
theorem differentiable_neg_iff : (Differentiable 𝕜 fun y => -f y) ↔ Differentiable 𝕜 f :=
  ⟨fun h => by simpa only [neg_neg] using h.neg, fun h => h.neg⟩
#align differentiable_neg_iff differentiable_neg_iff

theorem fderivWithin_neg (hxs : UniqueDiffWithinAt 𝕜 s x) :
    fderivWithin 𝕜 (fun y => -f y) s x = -fderivWithin 𝕜 f s x :=
  if h : DifferentiableWithinAt 𝕜 f s x then h.hasFDerivWithinAt.neg.fderivWithin hxs
  else by
    rw [fderivWithin_zero_of_not_differentiableWithinAt h,
      fderivWithin_zero_of_not_differentiableWithinAt, neg_zero]
    simpa
#align fderiv_within_neg fderivWithin_neg

@[simp]
theorem fderiv_neg : fderiv 𝕜 (fun y => -f y) x = -fderiv 𝕜 f x := by
  simp only [← fderivWithin_univ, fderivWithin_neg uniqueDiffWithinAt_univ]
#align fderiv_neg fderiv_neg

end Neg

section Sub

/-! ### Derivative of the difference of two functions -/


theorem HasStrictFDerivAt.sub (hf : HasStrictFDerivAt f f' x) (hg : HasStrictFDerivAt g g' x) :
    HasStrictFDerivAt (fun x => f x - g x) (f' - g') x := by
  simpa only [sub_eq_add_neg] using hf.add hg.neg
#align has_strict_fderiv_at.sub HasStrictFDerivAt.sub

theorem HasFDerivAtFilter.sub (hf : HasFDerivAtFilter f f' x L) (hg : HasFDerivAtFilter g g' x L) :
    HasFDerivAtFilter (fun x => f x - g x) (f' - g') x L := by
  simpa only [sub_eq_add_neg] using hf.add hg.neg
#align has_fderiv_at_filter.sub HasFDerivAtFilter.sub

nonrec theorem HasFDerivWithinAt.sub (hf : HasFDerivWithinAt f f' s x)
    (hg : HasFDerivWithinAt g g' s x) : HasFDerivWithinAt (fun x => f x - g x) (f' - g') s x :=
  hf.sub hg
#align has_fderiv_within_at.sub HasFDerivWithinAt.sub

nonrec theorem HasFDerivAt.sub (hf : HasFDerivAt f f' x) (hg : HasFDerivAt g g' x) :
    HasFDerivAt (fun x => f x - g x) (f' - g') x :=
  hf.sub hg
#align has_fderiv_at.sub HasFDerivAt.sub

theorem DifferentiableWithinAt.sub (hf : DifferentiableWithinAt 𝕜 f s x)
    (hg : DifferentiableWithinAt 𝕜 g s x) : DifferentiableWithinAt 𝕜 (fun y => f y - g y) s x :=
  (hf.hasFDerivWithinAt.sub hg.hasFDerivWithinAt).differentiableWithinAt
#align differentiable_within_at.sub DifferentiableWithinAt.sub

@[simp]
theorem DifferentiableAt.sub (hf : DifferentiableAt 𝕜 f x) (hg : DifferentiableAt 𝕜 g x) :
    DifferentiableAt 𝕜 (fun y => f y - g y) x :=
  (hf.hasFDerivAt.sub hg.hasFDerivAt).differentiableAt
#align differentiable_at.sub DifferentiableAt.sub

theorem DifferentiableOn.sub (hf : DifferentiableOn 𝕜 f s) (hg : DifferentiableOn 𝕜 g s) :
    DifferentiableOn 𝕜 (fun y => f y - g y) s := fun x hx => (hf x hx).sub (hg x hx)
#align differentiable_on.sub DifferentiableOn.sub

@[simp]
theorem Differentiable.sub (hf : Differentiable 𝕜 f) (hg : Differentiable 𝕜 g) :
    Differentiable 𝕜 fun y => f y - g y := fun x => (hf x).sub (hg x)
#align differentiable.sub Differentiable.sub

theorem fderivWithin_sub (hxs : UniqueDiffWithinAt 𝕜 s x) (hf : DifferentiableWithinAt 𝕜 f s x)
    (hg : DifferentiableWithinAt 𝕜 g s x) :
    fderivWithin 𝕜 (fun y => f y - g y) s x = fderivWithin 𝕜 f s x - fderivWithin 𝕜 g s x :=
  (hf.hasFDerivWithinAt.sub hg.hasFDerivWithinAt).fderivWithin hxs
#align fderiv_within_sub fderivWithin_sub

theorem fderiv_sub (hf : DifferentiableAt 𝕜 f x) (hg : DifferentiableAt 𝕜 g x) :
    fderiv 𝕜 (fun y => f y - g y) x = fderiv 𝕜 f x - fderiv 𝕜 g x :=
  (hf.hasFDerivAt.sub hg.hasFDerivAt).fderiv
#align fderiv_sub fderiv_sub

theorem HasStrictFDerivAt.sub_const (hf : HasStrictFDerivAt f f' x) (c : F) :
    HasStrictFDerivAt (fun x => f x - c) f' x := by
  simpa only [sub_eq_add_neg] using hf.add_const (-c)
#align has_strict_fderiv_at.sub_const HasStrictFDerivAt.sub_const

theorem HasFDerivAtFilter.sub_const (hf : HasFDerivAtFilter f f' x L) (c : F) :
    HasFDerivAtFilter (fun x => f x - c) f' x L := by
  simpa only [sub_eq_add_neg] using hf.add_const (-c)
#align has_fderiv_at_filter.sub_const HasFDerivAtFilter.sub_const

nonrec theorem HasFDerivWithinAt.sub_const (hf : HasFDerivWithinAt f f' s x) (c : F) :
    HasFDerivWithinAt (fun x => f x - c) f' s x :=
  hf.sub_const c
#align has_fderiv_within_at.sub_const HasFDerivWithinAt.sub_const

nonrec theorem HasFDerivAt.sub_const (hf : HasFDerivAt f f' x) (c : F) :
    HasFDerivAt (fun x => f x - c) f' x :=
  hf.sub_const c
#align has_fderiv_at.sub_const HasFDerivAt.sub_const

theorem DifferentiableWithinAt.sub_const (hf : DifferentiableWithinAt 𝕜 f s x) (c : F) :
    DifferentiableWithinAt 𝕜 (fun y => f y - c) s x :=
  (hf.hasFDerivWithinAt.sub_const c).differentiableWithinAt
#align differentiable_within_at.sub_const DifferentiableWithinAt.sub_const

@[simp]
theorem differentiableWithinAt_sub_const_iff (c : F) :
    DifferentiableWithinAt 𝕜 (fun y => f y - c) s x ↔ DifferentiableWithinAt 𝕜 f s x := by
  simp only [sub_eq_add_neg, differentiableWithinAt_add_const_iff]
#align differentiable_within_at_sub_const_iff differentiableWithinAt_sub_const_iff

theorem DifferentiableAt.sub_const (hf : DifferentiableAt 𝕜 f x) (c : F) :
    DifferentiableAt 𝕜 (fun y => f y - c) x :=
  (hf.hasFDerivAt.sub_const c).differentiableAt
#align differentiable_at.sub_const DifferentiableAt.sub_const

@[simp]
theorem differentiableAt_sub_const_iff (c : F) :
    DifferentiableAt 𝕜 (fun y => f y - c) x ↔ DifferentiableAt 𝕜 f x := by
  simp only [sub_eq_add_neg, differentiableAt_add_const_iff]
#align differentiable_at_sub_const_iff differentiableAt_sub_const_iff

theorem DifferentiableOn.sub_const (hf : DifferentiableOn 𝕜 f s) (c : F) :
    DifferentiableOn 𝕜 (fun y => f y - c) s := fun x hx => (hf x hx).sub_const c
#align differentiable_on.sub_const DifferentiableOn.sub_const

@[simp]
theorem differentiableOn_sub_const_iff (c : F) :
    DifferentiableOn 𝕜 (fun y => f y - c) s ↔ DifferentiableOn 𝕜 f s := by
  simp only [sub_eq_add_neg, differentiableOn_add_const_iff]
#align differentiable_on_sub_const_iff differentiableOn_sub_const_iff

theorem Differentiable.sub_const (hf : Differentiable 𝕜 f) (c : F) :
    Differentiable 𝕜 fun y => f y - c := fun x => (hf x).sub_const c
#align differentiable.sub_const Differentiable.sub_const

@[simp]
theorem differentiable_sub_const_iff (c : F) :
    (Differentiable 𝕜 fun y => f y - c) ↔ Differentiable 𝕜 f := by
  simp only [sub_eq_add_neg, differentiable_add_const_iff]
#align differentiable_sub_const_iff differentiable_sub_const_iff

theorem fderivWithin_sub_const (hxs : UniqueDiffWithinAt 𝕜 s x) (c : F) :
    fderivWithin 𝕜 (fun y => f y - c) s x = fderivWithin 𝕜 f s x := by
  simp only [sub_eq_add_neg, fderivWithin_add_const hxs]
#align fderiv_within_sub_const fderivWithin_sub_const

theorem fderiv_sub_const (c : F) : fderiv 𝕜 (fun y => f y - c) x = fderiv 𝕜 f x := by
  simp only [sub_eq_add_neg, fderiv_add_const]
#align fderiv_sub_const fderiv_sub_const

theorem HasStrictFDerivAt.const_sub (hf : HasStrictFDerivAt f f' x) (c : F) :
    HasStrictFDerivAt (fun x => c - f x) (-f') x := by
  simpa only [sub_eq_add_neg] using hf.neg.const_add c
#align has_strict_fderiv_at.const_sub HasStrictFDerivAt.const_sub

theorem HasFDerivAtFilter.const_sub (hf : HasFDerivAtFilter f f' x L) (c : F) :
    HasFDerivAtFilter (fun x => c - f x) (-f') x L := by
  simpa only [sub_eq_add_neg] using hf.neg.const_add c
#align has_fderiv_at_filter.const_sub HasFDerivAtFilter.const_sub

nonrec theorem HasFDerivWithinAt.const_sub (hf : HasFDerivWithinAt f f' s x) (c : F) :
    HasFDerivWithinAt (fun x => c - f x) (-f') s x :=
  hf.const_sub c
#align has_fderiv_within_at.const_sub HasFDerivWithinAt.const_sub

nonrec theorem HasFDerivAt.const_sub (hf : HasFDerivAt f f' x) (c : F) :
    HasFDerivAt (fun x => c - f x) (-f') x :=
  hf.const_sub c
#align has_fderiv_at.const_sub HasFDerivAt.const_sub

theorem DifferentiableWithinAt.const_sub (hf : DifferentiableWithinAt 𝕜 f s x) (c : F) :
    DifferentiableWithinAt 𝕜 (fun y => c - f y) s x :=
  (hf.hasFDerivWithinAt.const_sub c).differentiableWithinAt
#align differentiable_within_at.const_sub DifferentiableWithinAt.const_sub

@[simp]
theorem differentiableWithinAt_const_sub_iff (c : F) :
    DifferentiableWithinAt 𝕜 (fun y => c - f y) s x ↔ DifferentiableWithinAt 𝕜 f s x := by
  simp [sub_eq_add_neg]
#align differentiable_within_at_const_sub_iff differentiableWithinAt_const_sub_iff

theorem DifferentiableAt.const_sub (hf : DifferentiableAt 𝕜 f x) (c : F) :
    DifferentiableAt 𝕜 (fun y => c - f y) x :=
  (hf.hasFDerivAt.const_sub c).differentiableAt
#align differentiable_at.const_sub DifferentiableAt.const_sub

@[simp]
theorem differentiableAt_const_sub_iff (c : F) :
    DifferentiableAt 𝕜 (fun y => c - f y) x ↔ DifferentiableAt 𝕜 f x := by simp [sub_eq_add_neg]
#align differentiable_at_const_sub_iff differentiableAt_const_sub_iff

theorem DifferentiableOn.const_sub (hf : DifferentiableOn 𝕜 f s) (c : F) :
    DifferentiableOn 𝕜 (fun y => c - f y) s := fun x hx => (hf x hx).const_sub c
#align differentiable_on.const_sub DifferentiableOn.const_sub

@[simp]
theorem differentiableOn_const_sub_iff (c : F) :
    DifferentiableOn 𝕜 (fun y => c - f y) s ↔ DifferentiableOn 𝕜 f s := by simp [sub_eq_add_neg]
#align differentiable_on_const_sub_iff differentiableOn_const_sub_iff

theorem Differentiable.const_sub (hf : Differentiable 𝕜 f) (c : F) :
    Differentiable 𝕜 fun y => c - f y := fun x => (hf x).const_sub c
#align differentiable.const_sub Differentiable.const_sub

@[simp]
theorem differentiable_const_sub_iff (c : F) :
    (Differentiable 𝕜 fun y => c - f y) ↔ Differentiable 𝕜 f := by simp [sub_eq_add_neg]
#align differentiable_const_sub_iff differentiable_const_sub_iff

theorem fderivWithin_const_sub (hxs : UniqueDiffWithinAt 𝕜 s x) (c : F) :
    fderivWithin 𝕜 (fun y => c - f y) s x = -fderivWithin 𝕜 f s x := by
  simp only [sub_eq_add_neg, fderivWithin_const_add, fderivWithin_neg, hxs]
#align fderiv_within_const_sub fderivWithin_const_sub

theorem fderiv_const_sub (c : F) : fderiv 𝕜 (fun y => c - f y) x = -fderiv 𝕜 f x := by
  simp only [← fderivWithin_univ, fderivWithin_const_sub uniqueDiffWithinAt_univ]
#align fderiv_const_sub fderiv_const_sub

end Sub

end

