-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ActionAsFunctor.Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ActionAsFunctor.Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Action.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 David Wärn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Wärn
-/
import Mathlib.CategoryTheory.Elements
import Mathlib.CategoryTheory.IsConnected
import Mathlib.CategoryTheory.SingleObj
import Mathlib.GroupTheory.GroupAction.Quotient
import Mathlib.GroupTheory.SemidirectProduct


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ActionAsFunctor.Variant73228b4afbb267b79001ac50b4d50e5e7fc9f6d9f771e36a97de567085aa0188

#align_import category_theory.action from "leanprover-community/mathlib"@"aa812bd12a4dbbd2c129b38205f222df282df26d"

/-!
# Actions as functors and as categories

From a multiplicative action M ↻ X, we can construct a functor from M to the category of
types, mapping the single object of M to X and an element `m : M` to map `X → X` given by
multiplication by `m`.
  This functor induces a category structure on X -- a special case of the category of elements.
A morphism `x ⟶ y` in this category is simply a scalar `m : M` such that `m • x = y`. In the case
where M is a group, this category is a groupoid -- the *action groupoid*.
-/


open MulAction SemidirectProduct

namespace CategoryTheory

universe u

variable (M : Type*) [Monoid M] (X : Type u) [MulAction M X]

/-- A multiplicative action M ↻ X viewed as a functor mapping the single object of M to X
  and an element `m : M` to the map `X → X` given by multiplication by `m`. -/
@[simps]
def actionAsFunctor : SingleObj M ⥤ Type u where
  obj _ := X
  map := (· • ·)
  map_id _ := funext <| MulAction.one_smul
  map_comp f g := funext fun x => (smul_smul g f x).symm
#align category_theory.action_as_functor CategoryTheory.actionAsFunctor

/-- A multiplicative action M ↻ X induces a category structure on X, where a morphism
 from x to y is a scalar taking x to y. Due to implementation details, the object type
 of this category is not equal to X, but is in bijection with X. -/
def ActionCategory :=
  (actionAsFunctor M X).Elements
#align category_theory.action_category CategoryTheory.ActionCategory

instance : Category (ActionCategory M X) := by
  dsimp only [ActionCategory]
  infer_instance

namespace ActionCategory

/-- The projection from the action category to the monoid, mapping a morphism to its
  label. -/
def π : ActionCategory M X ⥤ SingleObj M :=
  CategoryOfElements.π _
#align category_theory.action_category.π CategoryTheory.ActionCategory.π

@[simp]
theorem π_map (p q : ActionCategory M X) (f : p ⟶ q) : (π M X).map f = f.val :=
  rfl
#align category_theory.action_category.π_map CategoryTheory.ActionCategory.π_map

@[simp]
theorem π_obj (p : ActionCategory M X) : (π M X).obj p = SingleObj.star M :=
  Unit.ext _ _
#align category_theory.action_category.π_obj CategoryTheory.ActionCategory.π_obj

variable {M X}

/-- The canonical map `ActionCategory M X → X`. It is given by `fun x => x.snd`, but
  has a more explicit type. -/
protected def back : ActionCategory M X → X := fun x => x.snd
#align category_theory.action_category.back CategoryTheory.ActionCategory.back

instance : CoeTC X (ActionCategory M X) :=
  ⟨fun x => ⟨(), x⟩⟩

@[simp]
theorem coe_back (x : X) : ActionCategory.back (x : ActionCategory M X) = x :=
  rfl
#align category_theory.action_category.coe_back CategoryTheory.ActionCategory.coe_back

@[simp]
theorem back_coe (x : ActionCategory M X) : ↑x.back = x := by cases x; rfl
#align category_theory.action_category.back_coe CategoryTheory.ActionCategory.back_coe

variable (M X)

/-- An object of the action category given by M ↻ X corresponds to an element of X. -/
def objEquiv : X ≃ ActionCategory M X where
  toFun x := x
  invFun x := x.back
  left_inv := coe_back
  right_inv := back_coe
#align category_theory.action_category.obj_equiv CategoryTheory.ActionCategory.objEquiv

theorem hom_as_subtype (p q : ActionCategory M X) : (p ⟶ q) = { m : M // m • p.back = q.back } :=
  rfl
#align category_theory.action_category.hom_as_subtype CategoryTheory.ActionCategory.hom_as_subtype

instance [Inhabited X] : Inhabited (ActionCategory M X) :=
  ⟨show X from default⟩

instance [Nonempty X] : Nonempty (ActionCategory M X) :=
  Nonempty.map (objEquiv M X) inferInstance

variable {X} (x : X)

/-- The stabilizer of a point is isomorphic to the endomorphism monoid at the
  corresponding point. In fact they are definitionally equivalent. -/
def stabilizerIsoEnd : Stabilizer.submonoid M x ≃* @End (ActionCategory M X) _ x :=
  MulEquiv.refl _
#align category_theory.action_category.stabilizer_iso_End CategoryTheory.ActionCategory.stabilizerIsoEnd

@[simp]
theorem stabilizerIsoEnd_apply (f : Stabilizer.submonoid M x) :
    (stabilizerIsoEnd M x) f = f :=
  rfl
#align category_theory.action_category.stabilizer_iso_End_apply CategoryTheory.ActionCategory.stabilizerIsoEnd_apply

@[simp 1100]
theorem stabilizerIsoEnd_symm_apply (f : End _) : (stabilizerIsoEnd M x).symm f = f :=
  rfl
#align category_theory.action_category.stabilizer_iso_End_symm_apply CategoryTheory.ActionCategory.stabilizerIsoEnd_symm_apply

variable {M}

@[simp]
protected theorem id_val (x : ActionCategory M X) : Subtype.val (𝟙 x) = 1 :=
  rfl
#align category_theory.action_category.id_val CategoryTheory.ActionCategory.id_val

@[simp]
protected theorem comp_val {x y z : ActionCategory M X} (f : x ⟶ y) (g : y ⟶ z) :
    (f ≫ g).val = g.val * f.val :=
  rfl
#align category_theory.action_category.comp_val CategoryTheory.ActionCategory.comp_val

instance [IsPretransitive M X] [Nonempty X] : IsConnected (ActionCategory M X) :=
  zigzag_isConnected fun x y =>
    Relation.ReflTransGen.single <|
      Or.inl <| nonempty_subtype.mpr (show _ from exists_smul_eq M x.back y.back)

section Group

variable {G : Type*} [Group G] [MulAction G X]

noncomputable instance : Groupoid (ActionCategory G X) :=
  CategoryTheory.groupoidOfElements _

/-- Any subgroup of `G` is a vertex group in its action groupoid. -/
def endMulEquivSubgroup (H : Subgroup G) : End (objEquiv G (G ⧸ H) ↑(1 : G)) ≃* H :=
  MulEquiv.trans (stabilizerIsoEnd G ((1 : G) : G ⧸ H)).symm
    (MulEquiv.subgroupCongr <| stabilizer_quotient H)
#align category_theory.action_category.End_mul_equiv_subgroup CategoryTheory.ActionCategory.endMulEquivSubgroup

/-- A target vertex `t` and a scalar `g` determine a morphism in the action groupoid. -/
def homOfPair (t : X) (g : G) : @Quiver.Hom (ActionCategory G X) _ (g⁻¹ • t) t :=
  Subtype.mk g (smul_inv_smul g t)
#align category_theory.action_category.hom_of_pair CategoryTheory.ActionCategory.homOfPair

@[simp]
theorem homOfPair.val (t : X) (g : G) : (homOfPair t g).val = g :=
  rfl
#align category_theory.action_category.hom_of_pair.val CategoryTheory.ActionCategory.homOfPair.val

/-- Any morphism in the action groupoid is given by some pair. -/
protected def cases {P : ∀ ⦃a b : ActionCategory G X⦄, (a ⟶ b) → Sort*}
    (hyp : ∀ t g, P (homOfPair t g)) ⦃a b⦄ (f : a ⟶ b) : P f := by
  refine' cast _ (hyp b.back f.val)
  rcases a with ⟨⟨⟩, a : X⟩
  rcases b with ⟨⟨⟩, b : X⟩
  rcases f with ⟨g : G, h : g • a = b⟩
  cases inv_smul_eq_iff.mpr h.symm
  rfl
#align category_theory.action_category.cases CategoryTheory.ActionCategory.cases

-- porting note: added to ease the proof of `uncurry`
lemma cases' ⦃a' b' : ActionCategory G X⦄ (f : a' ⟶ b') :
    ∃ (a b : X) (g : G) (ha : a' = a) (hb : b' = b) (hg : a = g⁻¹ • b),
      f = eqToHom (by rw [ha, hg]) ≫ homOfPair b g ≫ eqToHom (by rw [hb]) := by
  revert a' b' f
  exact ActionCategory.cases (fun t g => ⟨g⁻¹ • t, t, g, rfl, rfl, rfl, by simp⟩)

variable {H : Type*} [Group H]

/-- Given `G` acting on `X`, a functor from the corresponding action groupoid to a group `H`
    can be curried to a group homomorphism `G →* (X → H) ⋊ G`. -/
@[simps]
def curry (F : ActionCategory G X ⥤ SingleObj H) : G →* (X → H) ⋊[mulAutArrow] G :=
  have F_map_eq : ∀ {a b} {f : a ⟶ b}, F.map f = (F.map (homOfPair b.back f.val) : H) := by
    apply ActionCategory.cases
    intros
    rfl
  { toFun := fun g => ⟨fun b => F.map (homOfPair b g), g⟩
    map_one' := by
      congr
      dsimp
      ext1
      ext b
      exact F_map_eq.symm.trans (F.map_id b)
      rfl
    map_mul' := by
      intro g h
      congr
      ext b
      exact F_map_eq.symm.trans (F.map_comp (homOfPair (g⁻¹ • b) h) (homOfPair b g))
      rfl }
#align category_theory.action_category.curry CategoryTheory.ActionCategory.curry

/-- Given `G` acting on `X`, a group homomorphism `φ : G →* (X → H) ⋊ G` can be uncurried to
    a functor from the action groupoid to `H`, provided that `φ g = (_, g)` for all `g`. -/
@[simps]
def uncurry (F : G →* (X → H) ⋊[mulAutArrow] G) (sane : ∀ g, (F g).right = g) :
    ActionCategory G X ⥤ SingleObj H where
  obj _ := ()
  map {_ b} f := (F f.val).left b.back
  map_id x := by
    dsimp
    rw [F.map_one]
    rfl
  map_comp f g := by
    -- porting note: I was not able to use `ActionCategory.cases` here,
    -- but `ActionCategory.cases'` seems as good; the original proof was:
    -- intro x y z f g; revert y z g
    -- refine' action_category.cases _
    -- simp [single_obj.comp_as_mul, sane]
    obtain ⟨_, z, γ₁, rfl, rfl, rfl, rfl⟩ := ActionCategory.cases' g
    obtain ⟨_, y, γ₂, rfl, hy, rfl, rfl⟩ := ActionCategory.cases' f
    obtain rfl : y = γ₁⁻¹ • z := congr_arg Sigma.snd hy.symm
    simp [sane]
    rfl
#align category_theory.action_category.uncurry CategoryTheory.ActionCategory.uncurry

end Group

end ActionCategory

end CategoryTheory
