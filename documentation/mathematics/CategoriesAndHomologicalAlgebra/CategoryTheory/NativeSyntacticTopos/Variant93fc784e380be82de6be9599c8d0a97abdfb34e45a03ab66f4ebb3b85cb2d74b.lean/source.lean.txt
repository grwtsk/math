-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SmallCategory.Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SmallCategory.Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/AffineTopos/NativeSyntacticTopos.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Surface.AST.Core
import Surface.Foundation.LogicalFoundation
import Surface.Legacy.Ricci.Coverage
import Surface.Legacy.Choice.ChoiceCoverage

/-!
# Native syntactic category and syntactic site

This module provides a native syntactic-site layer for historical
BinaryLogicMatrix theories in Legacy quarantine. It records syntax, de Bruijn variables,
formula substitution, geometric provability, generated covers, formula-level
finite-limit constructors, and a BLM signature shell.

The external classifying-topos theorem is not asserted here. This layer is the
finite syntactic substrate that certificate modules may reference.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SmallCategory.Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5

namespace Surface
namespace Legacy
namespace NativeSyntacticTopos

universe u v w
universe u1 v1 u2 v2

structure SmallCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  id_comp : {X Y : Obj} → (f : Hom X Y) → comp (id X) f = f
  comp_id : {X Y : Obj} → (f : Hom X Y) → comp f (id Y) = f
  assoc : {W X Y Z : Obj} →
    (f : Hom W X) → (g : Hom X Y) → (h : Hom Y Z) →
      comp (comp f g) h = comp f (comp g h)

namespace SmallCategory

def op (C : SmallCategory.{u, v}) : SmallCategory.{u, v} where
  Obj := C.Obj
  Hom := fun X Y => C.Hom Y X
  id := C.id
  comp := fun f g => C.comp g f
  id_comp := by
    intro X Y f
    exact C.comp_id f
  comp_id := by
    intro X Y f
    exact C.id_comp f
  assoc := by
    intro W X Y Z f g h
    exact (C.assoc h g f).symm

def TypeCat : SmallCategory.{w + 1, w} where
  Obj := Type w
  Hom := fun α β => α → β
  id := fun _ x => x
  comp := fun f g x => g (f x)
  id_comp := by
    intro α β f
    rfl
  comp_id := by
    intro α β f
    rfl
  assoc := by
    intro α β γ δ f g h
    rfl

end SmallCategory

structure Functor
    (C : SmallCategory.{u1, v1}) (D : SmallCategory.{u2, v2}) where
  obj : C.Obj → D.Obj
  map : {X Y : C.Obj} → C.Hom X Y → D.Hom (obj X) (obj Y)
  map_id : (X : C.Obj) → map (C.id X) = D.id (obj X)
  map_comp : {X Y Z : C.Obj} → (f : C.Hom X Y) → (g : C.Hom Y Z) →
    map (C.comp f g) = D.comp (map f) (map g)

namespace Functor

def id (C : SmallCategory.{u, v}) : Functor C C where
  obj := fun X => X
  map := fun f => f
  map_id := by
    intro X
    rfl
  map_comp := by
    intro X Y Z f g
    rfl

def comp {C : SmallCategory.{u1, v1}} {D : SmallCategory.{u2, v2}}
    {E : SmallCategory.{u, v}}
    (F : Functor C D) (G : Functor D E) : Functor C E where
  obj := fun X => G.obj (F.obj X)
  map := fun f => G.map (F.map f)
  map_id := by
    intro X
    rw [F.map_id, G.map_id]
  map_comp := by
    intro X Y Z f g
    rw [F.map_comp, G.map_comp]

end Functor

structure NatTrans {C : SmallCategory.{u1, v1}} {D : SmallCategory.{u2, v2}}
    (F G : Functor C D) where
  app : (X : C.Obj) → D.Hom (F.obj X) (G.obj X)
  naturality : {X Y : C.Obj} → (f : C.Hom X Y) →
    D.comp (F.map f) (app Y) = D.comp (app X) (G.map f)

namespace NatTrans

def id {C : SmallCategory.{u1, v1}} {D : SmallCategory.{u2, v2}}
    (F : Functor C D) : NatTrans F F where
  app := fun X => D.id (F.obj X)
  naturality := by
    intro X Y f
    rw [D.comp_id, D.id_comp]

def vcomp {C : SmallCategory.{u1, v1}} {D : SmallCategory.{u2, v2}}
    {F G H : Functor C D}
    (α : NatTrans F G) (β : NatTrans G H) : NatTrans F H where
  app := fun X => D.comp (α.app X) (β.app X)
  naturality := by
    intro X Y f
    calc
      D.comp (F.map f) (D.comp (α.app Y) (β.app Y))
          = D.comp (D.comp (F.map f) (α.app Y)) (β.app Y) := by
              exact (D.assoc (F.map f) (α.app Y) (β.app Y)).symm
      _ = D.comp (D.comp (α.app X) (G.map f)) (β.app Y) := by
              rw [α.naturality f]
      _ = D.comp (α.app X) (D.comp (G.map f) (β.app Y)) := by
              exact D.assoc (α.app X) (G.map f) (β.app Y)
      _ = D.comp (α.app X) (D.comp (β.app X) (H.map f)) := by
              rw [β.naturality f]
      _ = D.comp (D.comp (α.app X) (β.app X)) (H.map f) := by
              exact (D.assoc (α.app X) (β.app X) (H.map f)).symm

theorem ext {C : SmallCategory.{u1, v1}} {D : SmallCategory.{u2, v2}}
    {F G : Functor C D} {α β : NatTrans F G}
    (h : ∀ X, α.app X = β.app X) : α = β := by
  cases α with
  | mk appA natA =>
      cases β with
      | mk appB natB =>
          have happ : appA = appB := by
            funext X
            exact h X
          cases happ
          have hnat :
              @Eq ({X : C.Obj} → {Y : C.Obj} → (f : C.Hom X Y) →
                  D.comp (F.map f) (appA Y) = D.comp (appA X) (G.map f))
                natA natB := by
            funext X
            funext Y
            funext f
            exact Subsingleton.elim (@natA X Y f) (@natB X Y f)
          exact congrArg
            (fun naturality =>
              ({ app := appA, naturality := naturality } : NatTrans F G))
            hnat

end NatTrans

structure NativeEquiv (α : Sort u) (β : Sort v) where
  toFun : α → β
  invFun : β → α
  left_inv : ∀ x, invFun (toFun x) = x
  right_inv : ∀ y, toFun (invFun y) = y

structure Sieve (C : SmallCategory.{u, v}) (X : C.Obj) where
  arrows : (Y : C.Obj) → C.Hom Y X → Prop
  downwardClosed : {Y Z : C.Obj} →
    (f : C.Hom Y X) → (g : C.Hom Z Y) →
      arrows Y f → arrows Z (C.comp g f)

namespace Sieve

def top (C : SmallCategory.{u, v}) (X : C.Obj) : Sieve C X where
  arrows := fun _ _ => True
  downwardClosed := by
    intro Y Z f g hf
    exact hf

def pullback {C : SmallCategory.{u, v}} {X Y : C.Obj}
    (S : Sieve C X) (f : C.Hom Y X) : Sieve C Y where
  arrows := fun Z g => S.arrows Z (C.comp g f)
  downwardClosed := by
    intro Z W g h hg
    have pulled := S.downwardClosed (C.comp g f) h hg
    simpa [C.assoc h g f] using pulled

end Sieve

structure GrothendieckTopology (C : SmallCategory.{u, v}) where
  covers : (X : C.Obj) → Sieve C X → Prop
  topMem : (X : C.Obj) → covers X (Sieve.top C X)
  pullbackMem : {X Y : C.Obj} → (S : Sieve C X) →
    covers X S → (f : C.Hom Y X) → covers Y (Sieve.pullback S f)
  transitive : {X : C.Obj} → (S R : Sieve C X) → covers X S →
    ((Y : C.Obj) → (f : C.Hom Y X) → S.arrows Y f →
      covers Y (Sieve.pullback R f)) → covers X R

structure Site where
  C : SmallCategory.{u, v}
  J : GrothendieckTopology C

abbrev Presheaf (C : SmallCategory.{u, v}) :=
  Functor (SmallCategory.op C) (SmallCategory.TypeCat.{w})

namespace Presheaf

def res {C : SmallCategory.{u, v}} (F : Presheaf.{u, v, w} C)
    {X Y : C.Obj} (f : C.Hom Y X) : F.obj X → F.obj Y :=
  F.map f

end Presheaf

structure MatchingFamily {C : SmallCategory.{u, v}}
    (F : Presheaf.{u, v, w} C) {X : C.Obj}
    (S : Sieve C X) where
  sectionAt : {Y : C.Obj} → (f : C.Hom Y X) → S.arrows Y f → F.obj Y
  compatible : {Y Z : C.Obj} →
    (f : C.Hom Y X) → (hf : S.arrows Y f) → (g : C.Hom Z Y) →
      Presheaf.res F g (sectionAt f hf) =
        sectionAt (C.comp g f) (S.downwardClosed f g hf)

def Amalgamates {C : SmallCategory.{u, v}}
    (F : Presheaf.{u, v, w} C) {X : C.Obj} {S : Sieve C X}
    (a : F.obj X) (m : MatchingFamily F S) : Prop :=
  ∀ {Y : C.Obj} (f : C.Hom Y X) (hf : S.arrows Y f),
    Presheaf.res F f a = m.sectionAt f hf

def HasAmalgamation {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) (F : Presheaf.{u, v, w} C) : Prop :=
  ∀ {X : C.Obj} (S : Sieve C X), J.covers X S →
    ∀ m : MatchingFamily F S, ∃ a : F.obj X, Amalgamates F a m

def IsSeparated {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) (F : Presheaf.{u, v, w} C) : Prop :=
  ∀ {X : C.Obj} (S : Sieve C X), J.covers X S →
    ∀ a b : F.obj X,
      (∀ {Y : C.Obj} (f : C.Hom Y X) (_hf : S.arrows Y f),
        Presheaf.res F f a = Presheaf.res F f b) →
        a = b

def IsSheaf {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) (F : Presheaf.{u, v, w} C) : Prop :=
  ∀ {X : C.Obj} (S : Sieve C X), J.covers X S →
    ∀ m : MatchingFamily F S,
      ∃ a : F.obj X,
        Amalgamates F a m ∧
          ∀ b : F.obj X, Amalgamates F b m → b = a

structure Sheaf (S : Site.{u, v}) where
  val : Presheaf.{u, v, w} S.C
  isSheaf : IsSheaf S.J val

abbrev SheafHom {S : Site.{u, v}} (F G : Sheaf.{u, v, w} S) :=
  NatTrans F.val G.val

def SheafCategory (S : Site.{u, v}) : SmallCategory where
  Obj := Sheaf.{u, v, w} S
  Hom := fun F G => SheafHom F G
  id := fun F => NatTrans.id F.val
  comp := fun α β => NatTrans.vcomp α β
  id_comp := by
    intro F G α
    apply NatTrans.ext
    intro X
    rfl
  comp_id := by
    intro F G α
    apply NatTrans.ext
    intro X
    rfl
  assoc := by
    intro A B C D α β γ
    apply NatTrans.ext
    intro X
    rfl

structure CertifiedSheaf (S : Site.{u, v}) where
  val : Presheaf.{u, v, w} S.C
  amalgamate : {X : S.C.Obj} → (R : Sieve S.C X) →
    S.J.covers X R → MatchingFamily val R → val.obj X
  restrict_amalgamate : {X : S.C.Obj} → (R : Sieve S.C X) →
    (hR : S.J.covers X R) → (m : MatchingFamily val R) →
      Amalgamates val (amalgamate R hR m) m
  unique_amalgamate : {X : S.C.Obj} → (R : Sieve S.C X) →
    (hR : S.J.covers X R) → (m : MatchingFamily val R) →
      ∀ b : val.obj X, Amalgamates val b m → b = amalgamate R hR m
  certificateBoundary : List String

namespace CertifiedSheaf

def toSheaf {S : Site.{u, v}} (F : CertifiedSheaf.{u, v, w} S) :
    Sheaf.{u, v, w} S where
  val := F.val
  isSheaf := by
    intro X R hR m
    refine ⟨F.amalgamate R hR m, ?_, ?_⟩
    · exact F.restrict_amalgamate R hR m
    · intro b hb
      exact F.unique_amalgamate R hR m b hb

end CertifiedSheaf

theorem isSheaf_hasAmalgamation {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C} {F : Presheaf.{u, v, w} C} :
    IsSheaf J F → HasAmalgamation J F := by
  intro hSheaf X S hS m
  rcases hSheaf S hS m with ⟨a, ha, _⟩
  exact ⟨a, ha⟩

theorem isSheaf_isSeparated {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C} {F : Presheaf.{u, v, w} C} :
    IsSheaf J F → IsSeparated J F := by
  intro hSheaf X S hS a b hlocal
  let m : MatchingFamily F S := {
    sectionAt := fun f _hf => Presheaf.res F f a
    compatible := by
      intro Y Z f hf g
      change F.map g (F.map f a) = F.map (C.comp g f) a
      exact (congrFun (F.map_comp f g) a).symm
  }
  rcases hSheaf S hS m with ⟨x, _hx, uniq⟩
  have ha : Amalgamates F a m := by
    intro Y f hf
    rfl
  have hb : Amalgamates F b m := by
    intro Y f hf
    exact (hlocal f hf).symm
  exact (uniq a ha).trans (uniq b hb).symm

theorem isSheaf_iff_separated_and_hasAmalgamation {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C} {F : Presheaf.{u, v, w} C} :
    IsSheaf J F ↔ IsSeparated J F ∧ HasAmalgamation J F := by
  constructor
  · intro hSheaf
    exact ⟨isSheaf_isSeparated hSheaf, isSheaf_hasAmalgamation hSheaf⟩
  · intro h
    intro X S hS m
    rcases h.2 S hS m with ⟨a, ha⟩
    refine ⟨a, ha, ?_⟩
    intro b hb
    exact h.1 S hS b a (by
      intro Y f hf
      exact (hb f hf).trans (ha f hf).symm)

def terminalPresheaf (C : SmallCategory.{u, v}) : Presheaf.{u, v, w} C where
  obj := fun _ => PUnit
  map := fun _ _ => PUnit.unit
  map_id := by
    intro X
    funext x
    cases x
    rfl
  map_comp := by
    intro X Y Z f g
    funext x
    cases x
    rfl

theorem terminalPresheaf_isSheaf (C : SmallCategory.{u, v})
    (J : GrothendieckTopology C) :
    IsSheaf J (terminalPresheaf.{u, v, w} C) := by
  intro X S hS m
  refine ⟨PUnit.unit, ?_, ?_⟩
  · intro Y f hf
    cases m.sectionAt f hf
    rfl
  · intro b hb
    cases b
    rfl

def terminalSheaf (S : Site.{u, v}) : Sheaf.{u, v, w} S where
  val := terminalPresheaf S.C
  isSheaf := terminalPresheaf_isSheaf S.C S.J

def productPresheaf {C : SmallCategory.{u, v}}
    (F G : Presheaf.{u, v, w} C) : Presheaf.{u, v, w} C where
  obj := fun X => F.obj X × G.obj X
  map := fun f x => (F.map f x.1, G.map f x.2)
  map_id := by
    intro X
    funext x
    cases x with
    | mk left right =>
        change (F.map ((SmallCategory.op C).id X) left,
            G.map ((SmallCategory.op C).id X) right) = (left, right)
        rw [F.map_id X, G.map_id X]
        rfl
  map_comp := by
    intro X Y Z f g
    funext x
    cases x with
    | mk left right =>
        change (F.map ((SmallCategory.op C).comp f g) left,
            G.map ((SmallCategory.op C).comp f g) right) =
          (F.map g (F.map f left), G.map g (G.map f right))
        rw [F.map_comp f g, G.map_comp f g]
        rfl

theorem productPresheaf_isSheaf {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C} {F G : Presheaf.{u, v, w} C}
    (hF : IsSheaf J F) (hG : IsSheaf J G) :
    IsSheaf J (productPresheaf F G) := by
  intro X S hS m
  let mF : MatchingFamily F S := {
    sectionAt := fun f hf => (m.sectionAt f hf).1
    compatible := by
      intro Y Z f hf g
      exact congrArg Prod.fst (m.compatible f hf g)
  }
  let mG : MatchingFamily G S := {
    sectionAt := fun f hf => (m.sectionAt f hf).2
    compatible := by
      intro Y Z f hf g
      exact congrArg Prod.snd (m.compatible f hf g)
  }
  rcases hF S hS mF with ⟨aF, haF, uniqF⟩
  rcases hG S hS mG with ⟨aG, haG, uniqG⟩
  refine ⟨(aF, aG), ?_, ?_⟩
  · intro Y f hf
    exact Prod.ext (haF f hf) (haG f hf)
  · intro b hb
    apply Prod.ext
    · exact uniqF b.1 (by
        intro Y f hf
        exact congrArg Prod.fst (hb f hf))
    · exact uniqG b.2 (by
        intro Y f hf
        exact congrArg Prod.snd (hb f hf))

def productSheaf {S : Site.{u, v}}
    (F G : Sheaf.{u, v, w} S) : Sheaf.{u, v, w} S where
  val := productPresheaf F.val G.val
  isSheaf := productPresheaf_isSheaf F.isSheaf G.isSheaf

def equalizerPresheaf {C : SmallCategory.{u, v}}
    {F G : Presheaf.{u, v, w} C}
    (α β : NatTrans F G) : Presheaf.{u, v, w} C where
  obj := fun X => {x : F.obj X // α.app X x = β.app X x}
  map := fun {X Y} f x =>
    ⟨F.map f x.1, by
      calc
        α.app Y (F.map f x.1)
            = G.map f (α.app X x.1) := congrFun (α.naturality f) x.1
        _ = G.map f (β.app X x.1) := by rw [x.2]
        _ = β.app Y (F.map f x.1) := (congrFun (β.naturality f) x.1).symm⟩
  map_id := by
    intro X
    funext x
    apply Subtype.ext
    change F.map ((SmallCategory.op C).id X) x.1 = x.1
    rw [F.map_id X]
    rfl
  map_comp := by
    intro X Y Z f g
    funext x
    apply Subtype.ext
    change F.map ((SmallCategory.op C).comp f g) x.1 = F.map g (F.map f x.1)
    rw [F.map_comp f g]
    rfl

theorem equalizerPresheaf_isSheaf {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C} {F G : Presheaf.{u, v, w} C}
    {α β : NatTrans F G}
    (hF : IsSheaf J F) (hG : IsSheaf J G) :
    IsSheaf J (equalizerPresheaf α β) := by
  intro X S hS m
  let mF : MatchingFamily F S := {
    sectionAt := fun f hf => (m.sectionAt f hf).1
    compatible := by
      intro Y Z f hf g
      exact congrArg Subtype.val (m.compatible f hf g)
  }
  rcases hF S hS mF with ⟨a, ha, uniqA⟩
  have hsepG : IsSeparated J G := isSheaf_isSeparated hG
  have eqLocal :
      ∀ {Y : C.Obj} (f : C.Hom Y X) (hf : S.arrows Y f),
        Presheaf.res G f (α.app X a) =
          Presheaf.res G f (β.app X a) := by
    intro Y f hf
    calc
      Presheaf.res G f (α.app X a)
          = α.app Y (Presheaf.res F f a) := (congrFun (α.naturality f) a).symm
      _ = α.app Y ((m.sectionAt f hf).1) := by rw [ha f hf]
      _ = β.app Y ((m.sectionAt f hf).1) := (m.sectionAt f hf).2
      _ = β.app Y (Presheaf.res F f a) := by rw [ha f hf]
      _ = Presheaf.res G f (β.app X a) := congrFun (β.naturality f) a
  have aEq : α.app X a = β.app X a :=
    hsepG S hS (α.app X a) (β.app X a) eqLocal
  refine ⟨⟨a, aEq⟩, ?_, ?_⟩
  · intro Y f hf
    apply Subtype.ext
    exact ha f hf
  · intro b hb
    apply Subtype.ext
    exact uniqA b.1 (by
      intro Y f hf
      exact congrArg Subtype.val (hb f hf))

def equalizerSheaf {S : Site.{u, v}}
    {F G : Sheaf.{u, v, w} S}
    (α β : SheafHom F G) : Sheaf.{u, v, w} S where
  val := equalizerPresheaf α β
  isSheaf := equalizerPresheaf_isSheaf F.isSheaf G.isSheaf

structure SheafCategoryFiniteLimitData (S : Site.{u, v}) where
  terminal : Sheaf.{u, v, w} S
  product : Sheaf.{u, v, w} S → Sheaf.{u, v, w} S → Sheaf.{u, v, w} S
  equalizer : {F G : Sheaf.{u, v, w} S} →
    SheafHom F G → SheafHom F G → Sheaf.{u, v, w} S
  finiteLimitBoundary : List String

def sheafCategoryFiniteLimitData (S : Site.{u, v}) :
    SheafCategoryFiniteLimitData.{u, v, w} S where
  terminal := terminalSheaf S
  product := productSheaf
  equalizer := equalizerSheaf
  finiteLimitBoundary := [
    "Sheaf finite-limit data is pointwise: terminal object, product, and equalizer.",
    "The category uses proof-valued sheaf descent; no chosen amalgamation operator enters morphism equality."
  ]

theorem SheafCategory_hasFiniteLimits (S : Site.{u, v}) :
    Nonempty (SheafCategoryFiniteLimitData.{u, v, w} S) := by
  exact ⟨sheafCategoryFiniteLimitData S⟩

structure GeometricSignature where
  SortTy : Type u
  Func : Type v
  Rel : Type w
  funcDom : Func → List SortTy
  funcCod : Func → SortTy
  relArity : Rel → List SortTy

abbrev Ctx (signature : GeometricSignature.{u, v, w}) : Type u :=
  List signature.SortTy

inductive Var {signature : GeometricSignature.{u, v, w}} :
    Ctx signature → signature.SortTy → Type u where
| vz {context : Ctx signature} {sort : signature.SortTy} :
    Var (sort :: context) sort
| vs {context : Ctx signature} {sort extra : signature.SortTy} :
    Var context sort → Var (extra :: context) sort

namespace Var

def weaken {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature} {sort extra : signature.SortTy}
    (x : Var context sort) : Var (extra :: context) sort :=
  Var.vs x

def appendLeft {signature : GeometricSignature.{u, v, w}}
    {left right : Ctx signature} {sort : signature.SortTy}
    (x : Var left sort) : Var (left ++ right) sort :=
  match x with
  | Var.vz => Var.vz
  | Var.vs x => Var.vs (appendLeft x)

def appendRight {signature : GeometricSignature.{u, v, w}}
    (left : Ctx signature) {right : Ctx signature} {sort : signature.SortTy}
    (x : Var right sort) : Var (left ++ right) sort :=
  match left with
  | [] => x
  | _ :: rest => Var.vs (appendRight rest x)

end Var

mutual

inductive Term (signature : GeometricSignature.{u, v, w}) :
    Ctx signature → signature.SortTy → Type (max u v) where
| var {context : Ctx signature} {sort : signature.SortTy} :
    Var context sort → Term signature context sort
| app {context : Ctx signature} (symbol : signature.Func) :
    TermList signature context (signature.funcDom symbol) →
      Term signature context (signature.funcCod symbol)

inductive TermList (signature : GeometricSignature.{u, v, w}) :
    Ctx signature → List signature.SortTy → Type (max u v) where
| nil {context : Ctx signature} :
    TermList signature context []
| cons {context : Ctx signature} {sort : signature.SortTy}
    {sorts : List signature.SortTy} :
    Term signature context sort →
      TermList signature context sorts →
        TermList signature context (sort :: sorts)

end

abbrev Subst (signature : GeometricSignature.{u, v, w})
    (source target : Ctx signature) : Type (max u v) :=
  {sort : signature.SortTy} → Var target sort → Term signature source sort

namespace Term

mutual

def weaken {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature} {sort : signature.SortTy}
    (term : Term signature context sort) (extra : signature.SortTy) :
    Term signature (extra :: context) sort :=
  match term with
  | Term.var x => Term.var (Var.vs x)
  | Term.app symbol args => Term.app symbol (TermList.weaken args extra)

def TermList.weaken {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature} {sorts : List signature.SortTy}
    (terms : TermList signature context sorts) (extra : signature.SortTy) :
    TermList signature (extra :: context) sorts :=
  match terms with
  | TermList.nil => TermList.nil
  | TermList.cons term rest =>
      TermList.cons (weaken term extra) (TermList.weaken rest extra)

end

mutual

def subst {signature : GeometricSignature.{u, v, w}}
    {source target : Ctx signature} {sort : signature.SortTy}
    (term : Term signature target sort)
    (substitution : Subst signature source target) :
    Term signature source sort :=
  match term with
  | Term.var x => substitution x
  | Term.app symbol args => Term.app symbol (TermList.subst args substitution)

def TermList.subst {signature : GeometricSignature.{u, v, w}}
    {source target : Ctx signature} {sorts : List signature.SortTy}
    (terms : TermList signature target sorts)
    (substitution : Subst signature source target) :
    TermList signature source sorts :=
  match terms with
  | TermList.nil => TermList.nil
  | TermList.cons term rest =>
      TermList.cons (subst term substitution) (TermList.subst rest substitution)

end

mutual

theorem subst_id {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature} {sort : signature.SortTy}
    (term : Term signature context sort) :
    subst term (fun {_} x => Term.var x) = term := by
  cases term with
  | var x =>
      rfl
  | app symbol args =>
      change Term.app symbol (TermList.subst args (fun {_} x => Term.var x)) =
        Term.app symbol args
      rw [TermList.subst_id args]

theorem TermList.subst_id {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature} {sorts : List signature.SortTy}
    (terms : TermList signature context sorts) :
    TermList.subst terms (fun {_} x => Term.var x) = terms := by
  cases terms with
  | nil =>
      rfl
  | cons term rest =>
      change TermList.cons (subst term (fun {_} x => Term.var x))
          (TermList.subst rest (fun {_} x => Term.var x)) =
        TermList.cons term rest
      rw [subst_id term, TermList.subst_id rest]

end

end Term

namespace Subst

def id {signature : GeometricSignature.{u, v, w}}
    (context : Ctx signature) : Subst signature context context :=
  fun {_} x => Term.var x

def comp {signature : GeometricSignature.{u, v, w}}
    {source middle target : Ctx signature}
    (left : Subst signature source middle)
    (right : Subst signature middle target) :
    Subst signature source target :=
  fun {_} x => Term.subst (right x) left

def lift {signature : GeometricSignature.{u, v, w}}
    {source target : Ctx signature}
    (substitution : Subst signature source target)
    (extra : signature.SortTy) :
    Subst signature (extra :: source) (extra :: target) :=
  fun {_} x =>
    match x with
    | Var.vz => Term.var Var.vz
    | Var.vs y => Term.weaken (substitution y) extra

end Subst

namespace Term

mutual

theorem subst_comp {signature : GeometricSignature.{u, v, w}}
    {source middle target : Ctx signature} {sort : signature.SortTy}
    (term : Term signature target sort)
    (left : Subst signature source middle)
    (right : Subst signature middle target) :
    subst (subst term right) left = subst term (Subst.comp left right) := by
  cases term with
  | var x =>
      rfl
  | app symbol args =>
      change Term.app symbol (TermList.subst (TermList.subst args right) left) =
        Term.app symbol (TermList.subst args (Subst.comp left right))
      rw [TermList.subst_comp args left right]

theorem TermList.subst_comp {signature : GeometricSignature.{u, v, w}}
    {source middle target : Ctx signature} {sorts : List signature.SortTy}
    (terms : TermList signature target sorts)
    (left : Subst signature source middle)
    (right : Subst signature middle target) :
    TermList.subst (TermList.subst terms right) left =
      TermList.subst terms (Subst.comp left right) := by
  cases terms with
  | nil =>
      rfl
  | cons term rest =>
      change TermList.cons (subst (subst term right) left)
          (TermList.subst (TermList.subst rest right) left) =
        TermList.cons (subst term (Subst.comp left right))
          (TermList.subst rest (Subst.comp left right))
      rw [subst_comp term left right, TermList.subst_comp rest left right]

end

end Term

inductive Formula (signature : GeometricSignature.{u, v, w}) :
    Ctx signature → Type (max (u + 1) v w) where
| top {context : Ctx signature} : Formula signature context
| bot {context : Ctx signature} : Formula signature context
| eq {context : Ctx signature} {sort : signature.SortTy} :
    Term signature context sort →
      Term signature context sort →
        Formula signature context
| rel {context : Ctx signature} (relation : signature.Rel) :
    TermList signature context (signature.relArity relation) →
      Formula signature context
| and {context : Ctx signature} :
    Formula signature context → Formula signature context → Formula signature context
| or {context : Ctx signature} :
    Formula signature context → Formula signature context → Formula signature context
| iSup {context : Ctx signature} (index : Type u) :
    (index → Formula signature context) → Formula signature context
| existsSort {context : Ctx signature} (sort : signature.SortTy) :
    Formula signature (sort :: context) → Formula signature context

namespace Formula

def alphaEq {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature}
    (left right : Formula signature context) : Prop :=
  left = right

theorem alphaEq_refl {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature} (formula : Formula signature context) :
    alphaEq formula formula := by
  rfl

theorem alphaEq_symm {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature} {left right : Formula signature context} :
    alphaEq left right → alphaEq right left := by
  intro h
  exact h.symm

theorem alphaEq_trans {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature} {left middle right : Formula signature context} :
    alphaEq left middle → alphaEq middle right → alphaEq left right := by
  intro hleft hright
  exact hleft.trans hright

def subst {signature : GeometricSignature.{u, v, w}}
    {source target : Ctx signature}
    (formula : Formula signature target)
    (substitution : Subst signature source target) :
    Formula signature source :=
  match formula with
  | Formula.top => Formula.top
  | Formula.bot => Formula.bot
  | Formula.eq left right => Formula.eq (Term.subst left substitution) (Term.subst right substitution)
  | Formula.rel relation terms => Formula.rel relation (Term.TermList.subst terms substitution)
  | Formula.and left right => Formula.and (subst left substitution) (subst right substitution)
  | Formula.or left right => Formula.or (subst left substitution) (subst right substitution)
  | Formula.iSup index family => Formula.iSup index (fun i => subst (family i) substitution)
  | Formula.existsSort sort body => Formula.existsSort sort (subst body (Subst.lift substitution sort))

def weaken {signature : GeometricSignature.{u, v, w}}
    {context : Ctx signature}
    (formula : Formula signature context)
    (extra : signature.SortTy) :
    Formula signature (extra :: context) :=
  subst formula (fun {_} x => Term.var (Var.vs x))

end Formula

structure GeometricSequent (signature : GeometricSignature.{u, v, w}) where
  context : Ctx signature
  hypotheses : List (Formula signature context)
  conclusion : Formula signature context
  claimBoundary : List String

structure NativeGeometricTheory where
  signature : GeometricSignature.{u, v, w}
  rule : (context : Ctx signature) →
    List (Formula signature context) → Formula signature context → Prop
  ruleBoundary : (context : Ctx signature) →
    List (Formula signature context) → Formula signature context → List String
  allRulesGeometric : Prop
  theoryBoundary : List String

inductive Provable (theory : NativeGeometricTheory.{u, v, w}) :
    (context : Ctx theory.signature) →
      List (Formula theory.signature context) →
        Formula theory.signature context → Prop where
| hyp {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {formula : Formula theory.signature context} :
    formula ∈ hypotheses → Provable theory context hypotheses formula
| rule {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {formula : Formula theory.signature context} :
    theory.rule context hypotheses formula → Provable theory context hypotheses formula
| topIntro {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)} :
    Provable theory context hypotheses Formula.top
| botElim {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {formula : Formula theory.signature context} :
    Provable theory context hypotheses Formula.bot →
      Provable theory context hypotheses formula
| andIntro {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {left right : Formula theory.signature context} :
    Provable theory context hypotheses left →
      Provable theory context hypotheses right →
        Provable theory context hypotheses (Formula.and left right)
| andElimLeft {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {left right : Formula theory.signature context} :
    Provable theory context hypotheses (Formula.and left right) →
      Provable theory context hypotheses left
| andElimRight {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {left right : Formula theory.signature context} :
    Provable theory context hypotheses (Formula.and left right) →
      Provable theory context hypotheses right
| eqRefl {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {sort : theory.signature.SortTy}
    (term : Term theory.signature context sort) :
    Provable theory context hypotheses (Formula.eq term term)
| weakenHyp {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {left right : Formula theory.signature context} :
    Provable theory context hypotheses left →
      Provable theory context (right :: hypotheses) left
| cut {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {left right : Formula theory.signature context} :
    Provable theory context hypotheses left →
      Provable theory context (left :: hypotheses) right →
        Provable theory context hypotheses right
| alphaConvert {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {left right : Formula theory.signature context} :
    Formula.alphaEq left right →
      Provable theory context hypotheses left →
        Provable theory context hypotheses right

namespace Provable

theorem hyp_head {theory : NativeGeometricTheory.{u, v, w}}
    {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {formula : Formula theory.signature context} :
    Provable theory context (formula :: hypotheses) formula := by
  exact Provable.hyp (by simp)

theorem alpha_rw {theory : NativeGeometricTheory.{u, v, w}}
    {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)}
    {left right : Formula theory.signature context} :
    left = right →
      Provable theory context hypotheses left →
        Provable theory context hypotheses right := by
  intro h proof
  exact Provable.alphaConvert h proof

end Provable

structure SynObject (theory : NativeGeometricTheory.{u, v, w}) where
  context : Ctx theory.signature
  formula : Formula theory.signature context
  boundary : List String

structure NativeSynHom {theory : NativeGeometricTheory.{u, v, w}} (A B : SynObject theory) where
  substitution : Subst theory.signature A.context B.context
  respects : Prop
  respectsProof : respects
  boundary : List String

structure NativeSynHom0 {theory : NativeGeometricTheory.{u, v, w}} (A B : SynObject theory) where
  substitution : Subst theory.signature A.context B.context

namespace NativeSynHom0

def id {theory : NativeGeometricTheory.{u, v, w}} (A : SynObject theory) : NativeSynHom0 A A where
  substitution := Subst.id A.context

def comp {theory : NativeGeometricTheory.{u, v, w}} {A B C : SynObject theory}
    (left : NativeSynHom0 A B) (right : NativeSynHom0 B C) : NativeSynHom0 A C where
  substitution := Subst.comp left.substitution right.substitution

theorem ext {theory : NativeGeometricTheory.{u, v, w}} {A B : SynObject theory}
    {left right : NativeSynHom0 A B}
    (h : ∀ {sort : theory.signature.SortTy}
      (x : Var B.context sort), left.substitution x = right.substitution x) :
    left = right := by
  cases left with
  | mk leftSubst =>
      cases right with
      | mk rightSubst =>
          have hsub :
              @Eq ({sort : theory.signature.SortTy} →
                  Var B.context sort → Term theory.signature A.context sort)
                leftSubst rightSubst := by
            funext sort
            funext x
            exact @h sort x
          exact congrArg
            (fun substitution =>
              ({ substitution := substitution } : NativeSynHom0 A B))
            hsub

end NativeSynHom0

def SyntacticCategory (theory : NativeGeometricTheory.{u, v, w}) :
    SmallCategory.{max (u + 1) v w, max u v} where
  Obj := SynObject theory
  Hom := fun A B => NativeSynHom0 A B
  id := NativeSynHom0.id
  comp := fun left right => NativeSynHom0.comp left right
  id_comp := by
    intro A B f
    apply NativeSynHom0.ext
    intro sort x
    exact Term.subst_id (f.substitution x)
  comp_id := by
    intro A B f
    apply NativeSynHom0.ext
    intro sort x
    rfl
  assoc := by
    intro A B C D f g h
    apply NativeSynHom0.ext
    intro sort x
    exact (Term.subst_comp (h.substitution x) f.substitution g.substitution).symm

def terminalObject {theory : NativeGeometricTheory.{u, v, w}} :
    SynObject theory where
  context := []
  formula := Formula.top
  boundary := ["syntactic terminal object: empty context with truth"]

def productCtx {theory : NativeGeometricTheory.{u, v, w}}
    (A B : SynObject theory) : Ctx theory.signature :=
  A.context ++ B.context

def fstSubst {theory : NativeGeometricTheory.{u, v, w}}
    (A B : SynObject theory) :
    Subst theory.signature (productCtx A B) A.context :=
  fun {_} x => Term.var (Var.appendLeft x)

def sndSubst {theory : NativeGeometricTheory.{u, v, w}}
    (A B : SynObject theory) :
    Subst theory.signature (productCtx A B) B.context :=
  fun {_} x => Term.var (Var.appendRight A.context x)

def productObject {theory : NativeGeometricTheory.{u, v, w}}
    (A B : SynObject theory) : SynObject theory where
  context := productCtx A B
  formula := Formula.and
    (Formula.subst A.formula (fstSubst A B))
    (Formula.subst B.formula (sndSubst A B))
  boundary := ["syntactic product object: context append plus conjunction"]

def eqSubstFormula {theory : NativeGeometricTheory.{u, v, w}}
    {source : Ctx theory.signature}
    (target : Ctx theory.signature)
    (left right : Subst theory.signature source target) :
    Formula theory.signature source :=
  match target with
  | [] => Formula.top
  | _ :: rest =>
      Formula.and
        (Formula.eq (left Var.vz) (right Var.vz))
        (eqSubstFormula rest
          (fun {_} x => left (Var.vs x))
          (fun {_} x => right (Var.vs x)))

def equalizerObject {theory : NativeGeometricTheory.{u, v, w}}
    {A B : SynObject theory}
    (left right : NativeSynHom0 A B) : SynObject theory where
  context := A.context
  formula := Formula.and A.formula
    (eqSubstFormula B.context left.substitution right.substitution)
  boundary := ["syntactic equalizer object: source formula plus pointwise substitution equality descriptor"]

structure SyntacticFiniteLimitData (theory : NativeGeometricTheory.{u, v, w}) where
  terminal : SynObject theory
  product : SynObject theory → SynObject theory → SynObject theory
  equalizer : {A B : SynObject theory} →
    NativeSynHom0 A B → NativeSynHom0 A B → SynObject theory
  finiteLimitBoundary : List String

def syntacticFiniteLimitData (theory : NativeGeometricTheory.{u, v, w}) :
    SyntacticFiniteLimitData theory where
  terminal := terminalObject
  product := productObject
  equalizer := equalizerObject
  finiteLimitBoundary := [
    "Finite-limit constructors are formula-level data: truth, conjunction, context append, and equality descriptors.",
    "Quotient categorical universal properties are a later refinement boundary."
  ]

structure BasicCover (C : SmallCategory.{u, v}) (X : C.Obj) where
  sieve : Sieve C X
  name : String
  geometricSequentBoundary : List String
  claimBoundary : List String

inductive GeneratedCover (C : SmallCategory.{u, v})
    (basic : (X : C.Obj) → BasicCover C X → Prop) :
    (X : C.Obj) → Sieve C X → Prop where
| top {X : C.Obj} :
    GeneratedCover C basic X (Sieve.top C X)
| basic {X : C.Obj} (cover : BasicCover C X) :
    basic X cover → GeneratedCover C basic X cover.sieve
| pullback {X Y : C.Obj} {S : Sieve C X} :
    GeneratedCover C basic X S →
      (f : C.Hom Y X) →
        GeneratedCover C basic Y (Sieve.pullback S f)
| transitive {X : C.Obj} {S R : Sieve C X} :
    GeneratedCover C basic X S →
      ((Y : C.Obj) → (f : C.Hom Y X) → S.arrows Y f →
        GeneratedCover C basic Y (Sieve.pullback R f)) →
          GeneratedCover C basic X R

def generatedGrothendieckTopology (C : SmallCategory.{u, v})
    (basic : (X : C.Obj) → BasicCover C X → Prop) :
    GrothendieckTopology C where
  covers := GeneratedCover C basic
  topMem := by
    intro X
    exact GeneratedCover.top
  pullbackMem := by
    intro X Y S cover f
    exact GeneratedCover.pullback cover f
  transitive := fun S R cover localCover => GeneratedCover.transitive cover localCover

structure SyntacticCoverBasis (theory : NativeGeometricTheory.{u, v, w}) where
  basic : (X : (SyntacticCategory theory).Obj) →
    BasicCover (SyntacticCategory theory) X → Prop
  basisBoundary : List String

def syntacticTopology (theory : NativeGeometricTheory.{u, v, w})
    (basis : SyntacticCoverBasis theory) :
    GrothendieckTopology (SyntacticCategory theory) :=
  generatedGrothendieckTopology (SyntacticCategory theory) basis.basic

structure SyntacticSite (theory : NativeGeometricTheory.{u, v, w}) where
  category : SmallCategory.{max (u + 1) v w, max u v}
  categoryEq : category = SyntacticCategory theory
  finiteLimits : SyntacticFiniteLimitData theory
  coverBasis : SyntacticCoverBasis theory
  topology : GrothendieckTopology category
  topologyBoundary : List String
  alphaBoundary : List String
  proofBoundary : List String

def mkSyntacticSite (theory : NativeGeometricTheory.{u, v, w})
    (basis : SyntacticCoverBasis theory) : SyntacticSite theory where
  category := SyntacticCategory theory
  categoryEq := rfl
  finiteLimits := syntacticFiniteLimitData theory
  coverBasis := basis
  topology := syntacticTopology theory basis
  topologyBoundary := [
    "The topology is generated by the declared geometric cover basis.",
    "Pullback stability and transitivity are constructors of GeneratedCover."
  ]
  alphaBoundary := [
    "Alpha-equivalence is represented by canonical de Bruijn syntax.",
    "Named binders must be erased to de Bruijn form before entering this layer."
  ]
  proofBoundary := [
    "Provability is geometric and certificate-bearing.",
    "No external classifying-topos completeness theorem is claimed by this construction."
  ]

theorem syntacticTopology_top_cover {theory : NativeGeometricTheory.{u, v, w}}
    (basis : SyntacticCoverBasis theory)
    (object : (SyntacticCategory theory).Obj) :
    (syntacticTopology theory basis).covers object
      (Sieve.top (SyntacticCategory theory) object) := by
  exact (syntacticTopology theory basis).topMem object

theorem syntacticTopology_pullback_cover {theory : NativeGeometricTheory.{u, v, w}}
    (basis : SyntacticCoverBasis theory)
    {X Y : (SyntacticCategory theory).Obj}
    (sieve : Sieve (SyntacticCategory theory) X)
    (cover : (syntacticTopology theory basis).covers X sieve)
    (arrow : (SyntacticCategory theory).Hom Y X) :
    (syntacticTopology theory basis).covers Y (Sieve.pullback sieve arrow) := by
  exact (syntacticTopology theory basis).pullbackMem sieve cover arrow

theorem syntactic_has_formula_terminal {theory : NativeGeometricTheory.{u, v, w}}
    {context : Ctx theory.signature}
    {hypotheses : List (Formula theory.signature context)} :
    Provable theory context hypotheses Formula.top := by
  exact Provable.topIntro

theorem syntactic_product_projection_left {theory : NativeGeometricTheory.{u, v, w}}
    {context : Ctx theory.signature}
    {left right : Formula theory.signature context} :
    Provable theory context [Formula.and left right] left := by
  exact Provable.andElimLeft Provable.hyp_head

theorem syntactic_product_projection_right {theory : NativeGeometricTheory.{u, v, w}}
    {context : Ctx theory.signature}
    {left right : Formula theory.signature context} :
    Provable theory context [Formula.and left right] right := by
  exact Provable.andElimRight Provable.hyp_head

theorem syntactic_equalizer_reflexive {theory : NativeGeometricTheory.{u, v, w}}
    {context target : Ctx theory.signature}
    (substitution : Subst theory.signature context target) :
    Provable theory context [] (eqSubstFormula target substitution substitution) := by
  revert substitution
  induction target with
  | nil =>
      intro substitution
      exact Provable.topIntro
  | cons sort rest ih =>
      intro substitution
      exact Provable.andIntro
        (Provable.eqRefl (substitution Var.vz))
        (ih (fun {_} x => substitution (Var.vs x)))

inductive BLMSort where
| boolCell
| natDim
| matrix
| paddedMatrix
| matrixComparison
| similarity
| claimBoundary
| logicalFoundation
| gamma
| proofStatus
| trustedStatus
| declaration
| theoremOccurrence
| proofAdapter
| tensorExpression
| tensorFactor
| determinantDescriptor
| determinantFiber
| reductionCandidate
| similarityAttachment
| spectralCarrier
| flow
| average
| heat
| quotient
| oracle
| choice
| homology
| ricciObstruction
| infiniteTime
| affineComparison
deriving DecidableEq, Repr

inductive BLMFunc where
| matrixZero
| matrixTranspose
| pad
| compare
| similarityScore
| tensorBoundary
| determinantDescriptor
| reducerFold
deriving DecidableEq, Repr

inductive BLMRel where
| boundaryPreserving
| proofStatusPreserved
| trustedStatusPreserved
| theoremManifestPreserved
| reversibleFlowCertified
| irreversibleModality
| similarityWitnessed
| obstructionConstructed
| noAnalyticOverclaim
deriving DecidableEq, Repr

def BLMSignature : GeometricSignature where
  SortTy := BLMSort
  Func := BLMFunc
  Rel := BLMRel
  funcDom := fun
    | BLMFunc.matrixZero => [BLMSort.natDim, BLMSort.natDim]
    | BLMFunc.matrixTranspose => [BLMSort.matrix]
    | BLMFunc.pad => [BLMSort.matrix, BLMSort.natDim, BLMSort.natDim]
    | BLMFunc.compare => [BLMSort.matrix, BLMSort.matrix]
    | BLMFunc.similarityScore => [BLMSort.matrixComparison]
    | BLMFunc.tensorBoundary => [BLMSort.tensorFactor]
    | BLMFunc.determinantDescriptor => [BLMSort.matrix]
    | BLMFunc.reducerFold => [BLMSort.tensorExpression]
  funcCod := fun
    | BLMFunc.matrixZero => BLMSort.matrix
    | BLMFunc.matrixTranspose => BLMSort.matrix
    | BLMFunc.pad => BLMSort.paddedMatrix
    | BLMFunc.compare => BLMSort.matrixComparison
    | BLMFunc.similarityScore => BLMSort.similarity
    | BLMFunc.tensorBoundary => BLMSort.claimBoundary
    | BLMFunc.determinantDescriptor => BLMSort.determinantDescriptor
    | BLMFunc.reducerFold => BLMSort.affineComparison
  relArity := fun
    | BLMRel.boundaryPreserving => [BLMSort.claimBoundary]
    | BLMRel.proofStatusPreserved => [BLMSort.theoremOccurrence, BLMSort.proofStatus]
    | BLMRel.trustedStatusPreserved => [BLMSort.theoremOccurrence, BLMSort.trustedStatus]
    | BLMRel.theoremManifestPreserved => [BLMSort.theoremOccurrence]
    | BLMRel.reversibleFlowCertified => [BLMSort.flow]
    | BLMRel.irreversibleModality => [BLMSort.quotient]
    | BLMRel.similarityWitnessed => [BLMSort.determinantFiber, BLMSort.similarityAttachment]
    | BLMRel.obstructionConstructed => [BLMSort.ricciObstruction]
    | BLMRel.noAnalyticOverclaim => [BLMSort.claimBoundary]

def T_BLM_Native : NativeGeometricTheory where
  signature := BLMSignature
  rule := fun _ _ _ => False
  ruleBoundary := fun _ _ _ => [
    "No BLM rule has been declared in this shell.",
    "Populate this relation from the attached theorem manifest and claim-boundary export."
  ]
  allRulesGeometric := True
  theoryBoundary := [
    "Native BLM theory shell for claim-boundary-aware finite Surface tool substrates.",
    "No analytic equality, determinant completeness, spectral-triple authority, or Ricci-flow equivalence is asserted."
  ]

def T_BLM_emptyCoverBasis : SyntacticCoverBasis T_BLM_Native where
  basic := fun _ _ => False
  basisBoundary := [
    "Empty cover-basis shell.",
    "Add basic covers for foundation/gamma coverage, theorem-manifest preservation, flow-or-obstruction, determinant-fiber attachment, and modality separation."
  ]

def SyntacticSite_T_BLM : SyntacticSite T_BLM_Native :=
  mkSyntacticSite T_BLM_Native T_BLM_emptyCoverBasis

/-!
# J-closed sieves and the Omega_J presheaf

This fragment defines the native closed-sieve object used by the later
subobject-classifier proof. It gives both a generated-cover computation and a
characteristic-predicate presentation. It does not prove that Omega_J is a
sheaf, and it does not claim classification of all sheaf subobjects.
-/

namespace Sieve

theorem ext {C : SmallCategory.{u, v}} {X : C.Obj}
    {S R : Sieve C X}
    (h : ∀ {Y : C.Obj} (f : C.Hom Y X), S.arrows Y f ↔ R.arrows Y f) :
    S = R := by
  cases S with
  | mk Sarrows Sclosed =>
      cases R with
      | mk Rarrows Rclosed =>
          have harrows :
              @Eq ((Y : C.Obj) → C.Hom Y X → Prop) Sarrows Rarrows := by
            funext Y f
            exact propext (h f)
          subst Rarrows
          have hclosed :
              @Eq ({Y Z : C.Obj} →
                  (f : C.Hom Y X) → (g : C.Hom Z Y) →
                    Sarrows Y f → Sarrows Z (C.comp g f))
                Sclosed Rclosed := by
            funext Y Z f g hf
            exact Subsingleton.elim (Sclosed f g hf) (Rclosed f g hf)
          exact congrArg
            (fun closed =>
              ({ arrows := Sarrows, downwardClosed := closed } : Sieve C X))
            hclosed

theorem pullback_id {C : SmallCategory.{u, v}} {X : C.Obj}
    (S : Sieve C X) :
    Sieve.pullback S (C.id X) = S := by
  apply Sieve.ext
  intro Y f
  change S.arrows Y (C.comp f (C.id X)) ↔ S.arrows Y f
  rw [C.comp_id f]

theorem pullback_pullback {C : SmallCategory.{u, v}}
    {X Y Z : C.Obj}
    (S : Sieve C X)
    (f : C.Hom Y X)
    (g : C.Hom Z Y) :
    Sieve.pullback (Sieve.pullback S f) g =
      Sieve.pullback S (C.comp g f) := by
  apply Sieve.ext
  intro W k
  change S.arrows W (C.comp (C.comp k g) f) ↔
    S.arrows W (C.comp k (C.comp g f))
  rw [C.assoc k g f]

def empty (C : SmallCategory.{u, v}) (X : C.Obj) : Sieve C X where
  arrows := fun _ _ => False
  downwardClosed := by
    intro Y Z f g hf
    exact False.elim hf

theorem pullback_empty {C : SmallCategory.{u, v}}
    {X Y : C.Obj}
    (f : C.Hom Y X) :
    Sieve.pullback (Sieve.empty C X) f =
      Sieve.empty C Y := by
  apply Sieve.ext
  intro Z g
  constructor
  · intro h
    exact h
  · intro h
    exact False.elim h

end Sieve

def IsJClosed {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) {X : C.Obj}
    (S : Sieve C X) : Prop :=
  ∀ {Y : C.Obj} (f : C.Hom Y X),
    J.covers Y (Sieve.pullback S f) → S.arrows Y f

structure JClosedSieve {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) (X : C.Obj) where
  sieve : Sieve C X
  isClosed : IsJClosed J sieve

namespace JClosedSieve

theorem ext {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C} {X : C.Obj}
    {S R : JClosedSieve J X}
    (h : S.sieve = R.sieve) : S = R := by
  cases S with
  | mk Ss Sc =>
      cases R with
      | mk Rs Rc =>
          cases h
          have hc :
              @Eq ({Y : C.Obj} → (f : C.Hom Y X) →
                  J.covers Y (Sieve.pullback Ss f) → Ss.arrows Y f)
                Sc Rc := by
            funext Y f cover
            exact Subsingleton.elim (Sc f cover) (Rc f cover)
          exact congrArg
            (fun closed =>
              ({ sieve := Ss, isClosed := closed } : JClosedSieve J X))
            hc

def pullback {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) {X Y : C.Obj}
    (S : JClosedSieve J X) (f : C.Hom Y X) :
    JClosedSieve J Y where
  sieve := Sieve.pullback S.sieve f
  isClosed := by
    intro Z g hcover
    have hcover' :
        J.covers Z (Sieve.pullback S.sieve (C.comp g f)) := by
      rw [← Sieve.pullback_pullback S.sieve f g]
      exact hcover
    exact S.isClosed (C.comp g f) hcover'

end JClosedSieve

def topJClosedSieve {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) (X : C.Obj) :
    JClosedSieve J X where
  sieve := Sieve.top C X
  isClosed := by
    intro Y f hcover
    trivial

def OmegaPredicate {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) (X : C.Obj) :=
  JClosedSieve J X

def OmegaPredicatePresheaf {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) :
    Presheaf.{u, v, max u v} C where
  obj := fun X => OmegaPredicate J X
  map := fun {X Y} f S => JClosedSieve.pullback J S f
  map_id := by
    intro X
    funext S
    apply JClosedSieve.ext
    exact Sieve.pullback_id S.sieve
  map_comp := by
    intro X Y Z f g
    funext S
    apply JClosedSieve.ext
    exact (Sieve.pullback_pullback S.sieve f g).symm

def GeneratedClosureMembership (C : SmallCategory.{u, v})
    (basic : (X : C.Obj) → BasicCover C X → Prop)
    {X Y : C.Obj}
    (S : Sieve C X) (f : C.Hom Y X) : Prop :=
  GeneratedCover C basic Y (Sieve.pullback S f)

def IsGeneratedJClosed (C : SmallCategory.{u, v})
    (basic : (X : C.Obj) → BasicCover C X → Prop)
    {X : C.Obj}
    (S : Sieve C X) : Prop :=
  ∀ {Y : C.Obj} (f : C.Hom Y X),
    GeneratedClosureMembership C basic S f → S.arrows Y f

def OmegaGenerated (C : SmallCategory.{u, v})
    (basic : (X : C.Obj) → BasicCover C X → Prop)
    (X : C.Obj) :=
  {S : Sieve C X // IsGeneratedJClosed C basic S}

theorem isGeneratedJClosed_iff_isJClosed_generated
    (C : SmallCategory.{u, v})
    (basic : (X : C.Obj) → BasicCover C X → Prop)
    {X : C.Obj}
    (S : Sieve C X) :
    IsGeneratedJClosed C basic S ↔
      IsJClosed (generatedGrothendieckTopology C basic) S := by
  rfl

def OmegaGeneratedEquivPredicate
    (C : SmallCategory.{u, v})
    (basic : (X : C.Obj) → BasicCover C X → Prop)
    (X : C.Obj) :
    NativeEquiv (OmegaGenerated C basic X)
      (OmegaPredicate (generatedGrothendieckTopology C basic) X) where
  toFun := fun S =>
    {
      sieve := S.1
      isClosed :=
        (isGeneratedJClosed_iff_isJClosed_generated C basic S.1).1 S.2
    }
  invFun := fun S =>
    ⟨S.sieve,
      (isGeneratedJClosed_iff_isJClosed_generated C basic S.sieve).2 S.isClosed⟩
  left_inv := by
    intro S
    cases S with
    | mk S hS =>
        rfl
  right_inv := by
    intro S
    cases S with
    | mk S hS =>
        rfl

theorem generatedJClosed_forces_membership
    {C : SmallCategory.{u, v}}
    {basic : (X : C.Obj) → BasicCover C X → Prop}
    {X Y : C.Obj}
    {S : Sieve C X}
    (hS : IsGeneratedJClosed C basic S)
    (f : C.Hom Y X)
    (hcover : GeneratedCover C basic Y (Sieve.pullback S f)) :
    S.arrows Y f :=
  hS f hcover

structure ArrowPredicate (C : SmallCategory.{u, v})
    (X : C.Obj) where
  pred : {Y : C.Obj} → C.Hom Y X → Prop
  downward : {Y Z : C.Obj} →
    (f : C.Hom Y X) → (g : C.Hom Z Y) →
      pred f → pred (C.comp g f)

namespace ArrowPredicate

def toSieve {C : SmallCategory.{u, v}} {X : C.Obj}
    (P : ArrowPredicate C X) : Sieve C X where
  arrows := fun _ f => P.pred f
  downwardClosed := P.downward

def ofSieve {C : SmallCategory.{u, v}} {X : C.Obj}
    (S : Sieve C X) : ArrowPredicate C X where
  pred := fun {Y} f => S.arrows Y f
  downward := S.downwardClosed

theorem toSieve_ofSieve {C : SmallCategory.{u, v}} {X : C.Obj}
    (S : Sieve C X) :
    (ofSieve S).toSieve = S := by
  rfl

theorem ofSieve_toSieve {C : SmallCategory.{u, v}} {X : C.Obj}
    (P : ArrowPredicate C X) :
    ofSieve P.toSieve = P := by
  cases P
  rfl

end ArrowPredicate

def IsJClosedPredicate {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) {X : C.Obj}
    (P : ArrowPredicate C X) : Prop :=
  IsJClosed J P.toSieve

def OmegaCharacteristicPredicate {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) (X : C.Obj) :=
  {P : ArrowPredicate C X // IsJClosedPredicate J P}

def OmegaCharacteristicPredicate.toOmegaPredicate
    {C : SmallCategory.{u, v}} {J : GrothendieckTopology C}
    {X : C.Obj}
    (P : OmegaCharacteristicPredicate J X) :
    OmegaPredicate J X where
  sieve := P.1.toSieve
  isClosed := P.2

def OmegaPredicate.toCharacteristicPredicate
    {C : SmallCategory.{u, v}} {J : GrothendieckTopology C}
    {X : C.Obj}
    (S : OmegaPredicate J X) :
    OmegaCharacteristicPredicate J X :=
  ⟨ArrowPredicate.ofSieve S.sieve, by
    intro Y f hcover
    exact S.isClosed f (by
      simpa [ArrowPredicate.toSieve, ArrowPredicate.ofSieve] using hcover)⟩

def OmegaPredicateEquivCharacteristicPredicate
    {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C)
    (X : C.Obj) :
    NativeEquiv (OmegaPredicate J X) (OmegaCharacteristicPredicate J X) where
  toFun := OmegaPredicate.toCharacteristicPredicate
  invFun := OmegaCharacteristicPredicate.toOmegaPredicate
  left_inv := by
    intro S
    cases S with
    | mk S hS =>
        rfl
  right_inv := by
    intro P
    cases P with
    | mk P hP =>
        cases P
        rfl

def truthArrow {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) :
    NatTrans
      (terminalPresheaf.{u, v, max u v} C)
      (OmegaPredicatePresheaf J) where
  app := fun X _ => topJClosedSieve J X
  naturality := by
    intro X Y f
    funext x
    cases x
    apply JClosedSieve.ext
    apply Sieve.ext
    intro Z g
    constructor <;> intro h <;> trivial

structure Subpresheaf {C : SmallCategory.{u, v}}
    (F : Presheaf.{u, v, w} C) where
  mem : {X : C.Obj} → F.obj X → Prop
  res_mem : {X Y : C.Obj} →
    (f : C.Hom Y X) → {x : F.obj X} →
      mem x → mem (Presheaf.res F f x)

def characteristicSieve {C : SmallCategory.{u, v}}
    {F : Presheaf.{u, v, w} C}
    (A : Subpresheaf F)
    {X : C.Obj}
    (x : F.obj X) : Sieve C X where
  arrows := fun _ f => A.mem (Presheaf.res F f x)
  downwardClosed := by
    intro Y Z f g hf
    have hcomp :
        Presheaf.res F (C.comp g f) x =
          Presheaf.res F g (Presheaf.res F f x) := by
      exact congrFun (F.map_comp f g) x
    exact hcomp.symm ▸ A.res_mem g hf

structure LocalSubpresheaf {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C)
    (F : Presheaf.{u, v, w} C)
    extends Subpresheaf F where
  local_mem : {X : C.Obj} →
    (S : Sieve C X) → J.covers X S → (x : F.obj X) →
      (∀ {Y : C.Obj} (f : C.Hom Y X),
        S.arrows Y f → mem (Presheaf.res F f x)) →
        mem x

theorem characteristicSieve_isJClosed
    {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C}
    {F : Presheaf.{u, v, w} C}
    (A : LocalSubpresheaf J F)
    {X : C.Obj}
    (x : F.obj X) :
    IsJClosed J (characteristicSieve A.toSubpresheaf x) := by
  intro Y f hcover
  exact A.local_mem
    (Sieve.pullback (characteristicSieve A.toSubpresheaf x) f)
    hcover
    (Presheaf.res F f x)
    (by
      intro Z g hg
      have hcomp :
          Presheaf.res F (C.comp g f) x =
            Presheaf.res F g (Presheaf.res F f x) := by
        exact congrFun (F.map_comp f g) x
      exact hcomp ▸ hg)

def characteristicMap
    {C : SmallCategory.{u, v}}
    {J : GrothendieckTopology C}
    {F : Presheaf.{u, v, max u v} C}
    (A : LocalSubpresheaf J F) :
    NatTrans F (OmegaPredicatePresheaf J) where
  app := fun X x =>
    {
      sieve := characteristicSieve A.toSubpresheaf x
      isClosed := characteristicSieve_isJClosed A x
    }
  naturality := by
    intro X Y f
    funext x
    apply JClosedSieve.ext
    apply Sieve.ext
    intro Z g
    change A.mem (Presheaf.res F g (Presheaf.res F f x)) ↔
      A.mem (Presheaf.res F (C.comp g f) x)
    have hcomp :
        Presheaf.res F (C.comp g f) x =
          Presheaf.res F g (Presheaf.res F f x) := by
      exact congrFun (F.map_comp f g) x
    constructor
    · intro h
      exact hcomp.symm ▸ h
    · intro h
      exact hcomp ▸ h

theorem characteristicPredicate_fromGeneratedCover
    {C : SmallCategory.{u, v}}
    {basic : (X : C.Obj) → BasicCover C X → Prop}
    {F : Presheaf.{u, v, w} C}
    (A : LocalSubpresheaf (generatedGrothendieckTopology C basic) F)
    {X Y : C.Obj}
    (x : F.obj X)
    (f : C.Hom Y X)
    (hcover : GeneratedCover C basic Y
      (Sieve.pullback (characteristicSieve A.toSubpresheaf x) f)) :
    (characteristicSieve A.toSubpresheaf x).arrows Y f := by
  exact characteristicSieve_isJClosed A x f hcover

structure OmegaJFragment {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) where
  omega : Presheaf.{u, v, max u v} C
  omega_eq : omega = OmegaPredicatePresheaf J
  truth : NatTrans (terminalPresheaf.{u, v, max u v} C) omega
  truthBoundary : List String
  characteristicBoundary : List String

def omegaJFragment {C : SmallCategory.{u, v}}
    (J : GrothendieckTopology C) :
    OmegaJFragment J where
  omega := OmegaPredicatePresheaf J
  omega_eq := rfl
  truth := truthArrow J
  truthBoundary := [
    "Truth at X is the maximal sieve on X.",
    "The maximal sieve is J-closed because every arrow belongs to it."
  ]
  characteristicBoundary := [
    "A local subpresheaf gives a characteristic map into Omega_J.",
    "The characteristic sieve of a section is J-closed by local membership over covering sieves.",
    "For generated topologies, this local closure is computed by the GeneratedCover constructors."
  ]

namespace OmegaJ

variable {C : SmallCategory.{u, v}}

namespace Sieve

theorem pullback_top_of_mem {X Y : C.Obj}
    (S : Sieve C X)
    (f : C.Hom Y X)
    (hf : S.arrows Y f) :
    Sieve.pullback S f = Sieve.top C Y := by
  apply NativeSyntacticTopos.Sieve.ext
  intro Z g
  constructor
  · intro _
    trivial
  · intro _
    exact S.downwardClosed f g hf

theorem mem_of_pullback_eq_and_mem {X Y : C.Obj}
    {S R : Sieve C X}
    (f : C.Hom Y X)
    (h : Sieve.pullback S f = Sieve.pullback R f)
    (hf : S.arrows Y f) :
    R.arrows Y f := by
  have hmem :
      (Sieve.pullback S f).arrows Y (C.id Y) := by
    change S.arrows Y (C.comp (C.id Y) f)
    simpa [C.id_comp f] using hf
  have hmem' :
      (Sieve.pullback R f).arrows Y (C.id Y) := by
    simpa [h] using hmem
  change R.arrows Y (C.comp (C.id Y) f) at hmem'
  simpa [C.id_comp f] using hmem'

end Sieve

def LocallyEqualOnCover (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (S T : JClosedSieve J X) : Prop :=
  ∀ {Y : C.Obj}
    (f : C.Hom Y X),
      R.arrows Y f →
        Sieve.pullback S.sieve f =
          Sieve.pullback T.sieve f

theorem jclosed_sieve_separation
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (hR : J.covers X R)
    (S T : JClosedSieve J X)
    (hlocal : LocallyEqualOnCover J R S T) :
    S = T := by
  apply JClosedSieve.ext
  apply NativeSyntacticTopos.Sieve.ext
  intro Y f
  constructor
  · intro hfS
    have hcoverR :
        J.covers Y (Sieve.pullback R f) :=
      J.pullbackMem R hR f
    have hlocalCover :
        ∀ (Z : C.Obj)
          (g : C.Hom Z Y),
          (Sieve.pullback R f).arrows Z g →
            J.covers Z
              (Sieve.pullback (Sieve.pullback T.sieve f) g) := by
      intro Z g hg
      have hRf :
          R.arrows Z (C.comp g f) := hg
      have hSf :
          S.sieve.arrows Z (C.comp g f) :=
        S.sieve.downwardClosed f g hfS
      have heq :
          Sieve.pullback S.sieve (C.comp g f) =
            Sieve.pullback T.sieve (C.comp g f) :=
        hlocal (C.comp g f) hRf
      have hTf :
          T.sieve.arrows Z (C.comp g f) :=
        Sieve.mem_of_pullback_eq_and_mem
          (C := C)
          (f := C.comp g f)
          heq
          hSf
      have htop :
          Sieve.pullback T.sieve (C.comp g f) =
            Sieve.top C Z :=
        Sieve.pullback_top_of_mem
          (C := C)
          T.sieve
          (C.comp g f)
          hTf
      have hpull :
          Sieve.pullback (Sieve.pullback T.sieve f) g =
            Sieve.pullback T.sieve (C.comp g f) :=
        NativeSyntacticTopos.Sieve.pullback_pullback T.sieve f g
      rw [hpull, htop]
      exact J.topMem Z
    have hcoverT :
        J.covers Y (Sieve.pullback T.sieve f) :=
      J.transitive
        (Sieve.pullback R f)
        (Sieve.pullback T.sieve f)
        hcoverR
        hlocalCover
    exact T.isClosed f hcoverT
  · intro hfT
    have hcoverR :
        J.covers Y (Sieve.pullback R f) :=
      J.pullbackMem R hR f
    have hlocalCover :
        ∀ (Z : C.Obj)
          (g : C.Hom Z Y),
          (Sieve.pullback R f).arrows Z g →
            J.covers Z
              (Sieve.pullback (Sieve.pullback S.sieve f) g) := by
      intro Z g hg
      have hRf :
          R.arrows Z (C.comp g f) := hg
      have hTf :
          T.sieve.arrows Z (C.comp g f) :=
        T.sieve.downwardClosed f g hfT
      have heq :
          Sieve.pullback T.sieve (C.comp g f) =
            Sieve.pullback S.sieve (C.comp g f) :=
        (hlocal (C.comp g f) hRf).symm
      have hSf :
          S.sieve.arrows Z (C.comp g f) :=
        Sieve.mem_of_pullback_eq_and_mem
          (C := C)
          (f := C.comp g f)
          heq
          hTf
      have htop :
          Sieve.pullback S.sieve (C.comp g f) =
            Sieve.top C Z :=
        Sieve.pullback_top_of_mem
          (C := C)
          S.sieve
          (C.comp g f)
          hSf
      have hpull :
          Sieve.pullback (Sieve.pullback S.sieve f) g =
            Sieve.pullback S.sieve (C.comp g f) :=
        NativeSyntacticTopos.Sieve.pullback_pullback S.sieve f g
      rw [hpull, htop]
      exact J.topMem Z
    have hcoverS :
        J.covers Y (Sieve.pullback S.sieve f) :=
      J.transitive
        (Sieve.pullback R f)
        (Sieve.pullback S.sieve f)
        hcoverR
        hlocalCover
    exact S.isClosed f hcoverS

theorem matching_pullback_sieve
    (J : GrothendieckTopology C)
    {X : C.Obj}
    {R : Sieve C X}
    (m : MatchingFamily (OmegaPredicatePresheaf J) R)
    {Y Z : C.Obj}
    (f : C.Hom Y X)
    (hf : R.arrows Y f)
    (g : C.Hom Z Y) :
    Sieve.pullback (m.sectionAt f hf).sieve g =
      (m.sectionAt
        (C.comp g f)
        (R.downwardClosed f g hf)).sieve := by
  exact congrArg JClosedSieve.sieve (m.compatible f hf g)

theorem matching_id_mem_iff
    (J : GrothendieckTopology C)
    {X : C.Obj}
    {R : Sieve C X}
    (m : MatchingFamily (OmegaPredicatePresheaf J) R)
    {Y Z : C.Obj}
    (f : C.Hom Y X)
    (hf : R.arrows Y f)
    (g : C.Hom Z Y) :
    (m.sectionAt
        (C.comp g f)
        (R.downwardClosed f g hf)).sieve.arrows Z (C.id Z)
      ↔
    (m.sectionAt f hf).sieve.arrows Z g := by
  have heq :=
    matching_pullback_sieve
      (J := J)
      m
      f
      hf
      g
  constructor
  · intro hid
    have hid' :
        (Sieve.pullback (m.sectionAt f hf).sieve g).arrows Z (C.id Z) := by
      simpa [heq] using hid
    change
      (m.sectionAt f hf).sieve.arrows Z
        (C.comp (C.id Z) g) at hid'
    simpa [C.id_comp g] using hid'
  · intro hg
    have hid' :
        (Sieve.pullback (m.sectionAt f hf).sieve g).arrows Z (C.id Z) := by
      change
        (m.sectionAt f hf).sieve.arrows Z
          (C.comp (C.id Z) g)
      simpa [C.id_comp g] using hg
    simpa [heq] using hid'

def omegaGlueSieve
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (m : MatchingFamily (OmegaPredicatePresheaf J) R) :
    Sieve C X where
  arrows := fun Y f =>
    ∀ {Z : C.Obj}
      (g : C.Hom Z Y)
      (hg : R.arrows Z (C.comp g f)),
        (m.sectionAt (C.comp g f) hg).sieve.arrows Z (C.id Z)
  downwardClosed := by
    intro Y Z f g hf
    intro W h hh
    have hh' :
        R.arrows W (C.comp (C.comp h g) f) := by
      simpa [C.assoc h g f] using hh
    have hlocal :=
      hf (C.comp h g) hh'
    simpa [C.assoc h g f] using hlocal

theorem omegaGlue_restrict_eq
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (m : MatchingFamily (OmegaPredicatePresheaf J) R)
    {Y : C.Obj}
    (f : C.Hom Y X)
    (hf : R.arrows Y f) :
    Sieve.pullback (omegaGlueSieve J R m) f =
      (m.sectionAt f hf).sieve := by
  apply NativeSyntacticTopos.Sieve.ext
  intro Z g
  constructor
  · intro hg
    have hgf :
        R.arrows Z (C.comp g f) :=
      R.downwardClosed f g hf
    have hgf' :
        R.arrows Z (C.comp (C.id Z) (C.comp g f)) := by
      simpa [C.id_comp (C.comp g f)] using hgf
    have hid :
        (m.sectionAt
          (C.comp (C.id Z) (C.comp g f))
          hgf').sieve.arrows Z (C.id Z) :=
      hg (C.id Z) hgf'
    have hid' :
        (m.sectionAt (C.comp g f) hgf).sieve.arrows Z (C.id Z) := by
      simpa [C.id_comp (C.comp g f)] using hid
    exact
      (matching_id_mem_iff
        (J := J)
        m
        f
        hf
        g).1 hid'
  · intro hg
    intro W h hh
    have hmem :
        (m.sectionAt f hf).sieve.arrows W (C.comp h g) :=
      (m.sectionAt f hf).sieve.downwardClosed g h hg
    have hid :
        (m.sectionAt
          (C.comp (C.comp h g) f)
          (R.downwardClosed f (C.comp h g) hf)).sieve.arrows
            W (C.id W) :=
      (matching_id_mem_iff
        (J := J)
        m
        f
        hf
        (C.comp h g)).2 hmem
    simpa [C.assoc h g f] using hid

theorem omegaGlueSieve_isJClosed
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (_hR : J.covers X R)
    (m : MatchingFamily (OmegaPredicatePresheaf J) R) :
    IsJClosed J (omegaGlueSieve J R m) := by
  intro Y f hcover
  intro Z g hRgf
  let Sgf : JClosedSieve J Z :=
    m.sectionAt (C.comp g f) hRgf
  have hcover_g :
      J.covers Z
        (Sieve.pullback
          (Sieve.pullback (omegaGlueSieve J R m) f)
          g) :=
    J.pullbackMem
      (Sieve.pullback (omegaGlueSieve J R m) f)
      hcover
      g
  have hcover_g' :
      J.covers Z
        (Sieve.pullback
          (omegaGlueSieve J R m)
          (C.comp g f)) := by
    rw [← NativeSyntacticTopos.Sieve.pullback_pullback
      (omegaGlueSieve J R m) f g]
    exact hcover_g
  have localCover :
      ∀ (W : C.Obj)
        (h : C.Hom W Z),
        (Sieve.pullback
          (omegaGlueSieve J R m)
          (C.comp g f)).arrows W h →
          J.covers W
            (Sieve.pullback Sgf.sieve h) := by
    intro W h hh
    have heq :
        Sieve.pullback
          (omegaGlueSieve J R m)
          (C.comp g f) =
          Sgf.sieve :=
      omegaGlue_restrict_eq
        (J := J)
        R
        m
        (C.comp g f)
        hRgf
    have hSgf :
        Sgf.sieve.arrows W h := by
      have hh' :
          (Sieve.pullback
            (omegaGlueSieve J R m)
            (C.comp g f)).arrows W h := hh
      rw [heq] at hh'
      exact hh'
    have htop :
        Sieve.pullback Sgf.sieve h =
          Sieve.top C W :=
      Sieve.pullback_top_of_mem
        (C := C)
        Sgf.sieve
        h
        hSgf
    rw [htop]
    exact J.topMem W
  have hcoverSgf :
      J.covers Z Sgf.sieve :=
    J.transitive
      (Sieve.pullback
        (omegaGlueSieve J R m)
        (C.comp g f))
      Sgf.sieve
      hcover_g'
      localCover
  have hcoverSgf_id :
      J.covers Z
        (Sieve.pullback Sgf.sieve (C.id Z)) := by
    simpa [NativeSyntacticTopos.Sieve.pullback_id] using hcoverSgf
  exact Sgf.isClosed (C.id Z) hcoverSgf_id

def omegaGlueClosed
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (hR : J.covers X R)
    (m : MatchingFamily (OmegaPredicatePresheaf J) R) :
    JClosedSieve J X where
  sieve := omegaGlueSieve J R m
  isClosed := omegaGlueSieve_isJClosed J R hR m

theorem omegaGlue_amalgamates
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (hR : J.covers X R)
    (m : MatchingFamily (OmegaPredicatePresheaf J) R) :
    Amalgamates
      (OmegaPredicatePresheaf J)
      (omegaGlueClosed J R hR m)
      m := by
  intro Y f hf
  apply JClosedSieve.ext
  exact omegaGlue_restrict_eq J R m f hf

theorem omegaGlue_unique
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (hR : J.covers X R)
    (m : MatchingFamily (OmegaPredicatePresheaf J) R)
    (a : (OmegaPredicatePresheaf J).obj X)
    (ha :
      Amalgamates
        (OmegaPredicatePresheaf J)
        a
        m) :
    a = omegaGlueClosed J R hR m := by
  apply jclosed_sieve_separation
    (J := J)
    R
    hR
    a
    (omegaGlueClosed J R hR m)
  intro Y f hf
  have ha' :
      Presheaf.res (OmegaPredicatePresheaf J) f a =
        m.sectionAt f hf :=
    ha f hf
  have hg' :
      Presheaf.res (OmegaPredicatePresheaf J) f
        (omegaGlueClosed J R hR m) =
        m.sectionAt f hf :=
    omegaGlue_amalgamates
      (J := J)
      R
      hR
      m
      f
      hf
  have h1 :
      Sieve.pullback a.sieve f =
        (m.sectionAt f hf).sieve :=
    congrArg JClosedSieve.sieve ha'
  have h2 :
      Sieve.pullback
        (omegaGlueClosed J R hR m).sieve
        f =
        (m.sectionAt f hf).sieve :=
    congrArg JClosedSieve.sieve hg'
  exact h1.trans h2.symm

theorem OmegaPredicate_isSheaf
    (J : GrothendieckTopology C) :
    IsSheaf J (OmegaPredicatePresheaf J) := by
  intro X R hR m
  refine ⟨omegaGlueClosed J R hR m, ?_, ?_⟩
  · exact omegaGlue_amalgamates J R hR m
  · intro b hb
    exact omegaGlue_unique J R hR m b hb

def OmegaJCertifiedSheaf
    (S : Site.{u, v}) :
    CertifiedSheaf.{u, v, max u v} S where
  val := OmegaPredicatePresheaf S.J
  amalgamate := by
    intro X R hR m
    exact omegaGlueClosed S.J R hR m
  restrict_amalgamate := by
    intro X R hR m
    exact omegaGlue_amalgamates S.J R hR m
  unique_amalgamate := by
    intro X R hR m b hb
    exact omegaGlue_unique S.J R hR m b hb
  certificateBoundary := [
    "Omega_J is represented by J-closed sieves.",
    "Truth is the maximal sieve.",
    "The certified amalgamator glues matching families by local membership over a covering sieve.",
    "The categorical sheaf condition remains proof-valued; this certified structure is for executable Surface OS gluing."
  ]

def OmegaJSheaf
    (S : Site.{u, v}) :
    Sheaf.{u, v, max u v} S :=
  (OmegaJCertifiedSheaf S).toSheaf

end OmegaJ

namespace ExponentialSheaves

def emptyMatchingFamily
    {C : SmallCategory.{u, v}}
    (F : Presheaf.{u, v, w} C)
    (X : C.Obj) :
    MatchingFamily F (Sieve.empty C X) where
  sectionAt := by
    intro Y f hf
    exact False.elim hf
  compatible := by
    intro Y Z f hf g
    exact False.elim hf

theorem empty_cover_unique_amalgamation
    {S : Site.{u, v}}
    (F : Sheaf.{u, v, w} S)
    {X : S.C.Obj}
    (hX : S.J.covers X (Sieve.empty S.C X)) :
    ∃ a : F.val.obj X,
      Amalgamates F.val a (emptyMatchingFamily F.val X) ∧
        ∀ b : F.val.obj X,
          Amalgamates F.val b (emptyMatchingFamily F.val X) → b = a := by
  exact F.isSheaf (Sieve.empty S.C X) hX
    (emptyMatchingFamily F.val X)

theorem empty_cover_policy_is_generic
    {S : Site.{u, v}}
    {X : S.C.Obj}
    (hX : S.J.covers X (Sieve.empty S.C X)) :
    S.J.covers X (Sieve.empty S.C X) :=
  hX

end ExponentialSheaves

namespace SliceExponentials

structure SliceObj
    (C : SmallCategory.{u, v})
    (X : C.Obj) where
  base : C.Obj
  arrow : C.Hom base X

structure SliceHom
    {C : SmallCategory.{u, v}}
    {X : C.Obj}
    (A B : SliceObj C X) where
  map : C.Hom A.base B.base
  comm : C.comp map B.arrow = A.arrow

namespace SliceHom

theorem ext {C : SmallCategory.{u, v}} {X : C.Obj}
    {A B : SliceObj C X}
    {f g : SliceHom A B}
    (h : f.map = g.map) :
    f = g := by
  cases f with
  | mk fmap fcomm =>
      cases g with
      | mk gmap gcomm =>
          cases h
          have hcomm : fcomm = gcomm := Subsingleton.elim fcomm gcomm
          cases hcomm
          rfl

end SliceHom

def SliceCategory
    (C : SmallCategory.{u, v})
    (X : C.Obj) :
    SmallCategory.{max u v, v} where
  Obj := SliceObj C X
  Hom := fun A B => SliceHom A B
  id := fun A => {
    map := C.id A.base
    comm := by
      exact C.id_comp A.arrow
  }
  comp := by
    intro A B D f g
    exact {
      map := C.comp f.map g.map
      comm := by
        calc
          C.comp (C.comp f.map g.map) D.arrow
              = C.comp f.map (C.comp g.map D.arrow) :=
                  C.assoc f.map g.map D.arrow
          _ = C.comp f.map B.arrow := by rw [g.comm]
          _ = A.arrow := f.comm
    }
  id_comp := by
    intro A B f
    apply SliceHom.ext
    exact C.id_comp f.map
  comp_id := by
    intro A B f
    apply SliceHom.ext
    exact C.comp_id f.map
  assoc := by
    intro A B D E f g h
    apply SliceHom.ext
    exact C.assoc f.map g.map h.map

def SliceSieveUnderlying
    {C : SmallCategory.{u, v}}
    {X : C.Obj}
    {A : SliceObj C X}
    (R : Sieve (SliceCategory C X) A) :
    Sieve C A.base where
  arrows := fun Y f =>
    ∃ (arrowY : C.Hom Y X),
      ∃ (sf : SliceHom ({ base := Y, arrow := arrowY } : SliceObj C X) A),
        sf.map = f ∧ R.arrows ({ base := Y, arrow := arrowY } : SliceObj C X) sf
  downwardClosed := by
    intro Y Z f g hf
    rcases hf with ⟨arrowY, sf, hmap, hR⟩
    let Yslice : SliceObj C X := { base := Y, arrow := arrowY }
    let Zslice : SliceObj C X := { base := Z, arrow := C.comp g arrowY }
    let sg : SliceHom Zslice Yslice := {
      map := g
      comm := rfl
    }
    let composite : SliceHom Zslice A :=
      (SliceCategory C X).comp sg sf
    refine ⟨C.comp g arrowY, composite, ?_, ?_⟩
    · change C.comp sg.map sf.map = C.comp g f
      rw [hmap]
    · exact R.downwardClosed sf sg hR

structure SliceTopologyCertificate
    (S : Site.{u, v})
    (X : S.C.Obj) where
  sliceTopology : GrothendieckTopology (SliceCategory S.C X)
  covers_iff_underlying :
    ∀ {A : SliceObj S.C X}
      (R : Sieve (SliceCategory S.C X) A),
        sliceTopology.covers A R ↔
          S.J.covers A.base (SliceSieveUnderlying R)
  boundary : List String

theorem SliceTopologyCertificate.covers_reflect_underlying
    {S : Site.{u, v}}
    {X : S.C.Obj}
    (cert : SliceTopologyCertificate S X) :
    ∀ {A : SliceObj S.C X}
      (R : Sieve (SliceCategory S.C X) A),
        cert.sliceTopology.covers A R →
          S.J.covers A.base (SliceSieveUnderlying R) := by
  intro A R hR
  exact (cert.covers_iff_underlying R).1 hR

theorem SliceTopologyCertificate.covers_generated_by_underlying
    {S : Site.{u, v}}
    {X : S.C.Obj}
    (cert : SliceTopologyCertificate S X)
    {A : SliceObj S.C X}
    (R : Sieve (SliceCategory S.C X) A) :
    S.J.covers A.base (SliceSieveUnderlying R) →
      cert.sliceTopology.covers A R := by
  intro hR
  exact (cert.covers_iff_underlying R).2 hR

theorem slice_empty_cover_iff
    {S : Site.{u, v}}
    {X : S.C.Obj}
    (cert : SliceTopologyCertificate S X)
    (A : SliceObj S.C X) :
    cert.sliceTopology.covers A
      (Sieve.empty (SliceCategory S.C X) A)
      ↔
    S.J.covers A.base
      (SliceSieveUnderlying
        (A := A)
        (Sieve.empty (SliceCategory S.C X) A)) := by
  exact cert.covers_iff_underlying
    (A := A)
    (Sieve.empty (SliceCategory S.C X) A)

def SliceSite
    (S : Site.{u, v})
    (X : S.C.Obj)
    (cert : SliceTopologyCertificate S X) :
    Site.{max u v, v} where
  C := SliceCategory S.C X
  J := cert.sliceTopology

def restrictPresheafToSlice
    {S : Site.{u, v}}
    (F : Presheaf.{u, v, w} S.C)
    (X : S.C.Obj)
    (_cert : SliceTopologyCertificate S X) :
    Presheaf.{max u v, v, w} (SliceCategory S.C X) where
  obj := fun A => F.obj A.base
  map := by
    intro A B f
    exact Presheaf.res F f.map
  map_id := by
    intro A
    exact F.map_id A.base
  map_comp := by
    intro A B D f g
    exact F.map_comp f.map g.map

structure RestrictedSheaf
    {S : Site.{u, v}}
    (F : Sheaf.{u, v, w} S)
    (X : S.C.Obj)
    (cert : SliceTopologyCertificate S X) where
  val : Sheaf.{max u v, v, w} (SliceSite S X cert)
  val_eq : val.val = restrictPresheafToSlice F.val X cert
  boundary : List String

structure RestrictSheafToSliceCertificate
    {S : Site.{u, v}}
    (F : Sheaf.{u, v, w} S)
    (X : S.C.Obj)
    (cert : SliceTopologyCertificate S X) where
  restricted : RestrictedSheaf F X cert
  descentBoundary : List String

def pullbackSliceFunctor
    {C : SmallCategory.{u, v}}
    {X Y : C.Obj}
    (f : C.Hom Y X) :
    Functor (SliceCategory C Y) (SliceCategory C X) where
  obj := fun A => {
    base := A.base
    arrow := C.comp A.arrow f
  }
  map := by
    intro A B h
    exact {
      map := h.map
      comm := by
        calc
          C.comp h.map (C.comp B.arrow f)
              = C.comp (C.comp h.map B.arrow) f :=
                  (C.assoc h.map B.arrow f).symm
          _ = C.comp A.arrow f := by rw [h.comm]
    }
  map_id := by
    intro A
    apply SliceHom.ext
    rfl
  map_comp := by
    intro A B D h k
    apply SliceHom.ext
    rfl

structure PullbackLocalSheafHomCertificate
    {S : Site.{u, v}}
    (sliceCert : (X : S.C.Obj) → SliceTopologyCertificate S X)
    (A B : Sheaf.{u, v, w} S) where
  restrictA :
    (X : S.C.Obj) → RestrictedSheaf A X (sliceCert X)
  restrictB :
    (X : S.C.Obj) → RestrictedSheaf B X (sliceCert X)
  pullbackLocalSheafHom :
    {X Y : S.C.Obj} →
      (f : S.C.Hom Y X) →
        SheafHom
          (restrictA X).val
          (restrictB X).val →
            SheafHom
              (restrictA Y).val
              (restrictB Y).val
  respects_id :
    ∀ {X : S.C.Obj}
      (α :
        SheafHom
          (restrictA X).val
          (restrictB X).val),
        pullbackLocalSheafHom (S.C.id X) α = α
  respects_comp :
    ∀ {X Y Z : S.C.Obj}
      (f : S.C.Hom Y X)
      (g : S.C.Hom Z Y)
      (α :
        SheafHom
          (restrictA X).val
          (restrictB X).val),
        pullbackLocalSheafHom (S.C.comp g f) α =
          pullbackLocalSheafHom g (pullbackLocalSheafHom f α)
  boundary : List String

def SheafProduct
    {S : Site.{u, v}}
    (F G : Sheaf.{u, v, w} S) :
    Sheaf.{u, v, w} S :=
  productSheaf F G

structure LocalMorphismExponentialPresheaf
    {S : Site.{u, v}}
    (sliceCert : (X : S.C.Obj) → SliceTopologyCertificate S X)
    (A B : Sheaf.{u, v, w} S) where
  val : Presheaf.{u, v, w} S.C
  localRestriction :
    PullbackLocalSheafHomCertificate sliceCert A B
  sectionBoundary : List String
  restrictionBoundary : List String
  notPointwiseFunctionBoundary : List String

structure ExponentialSheafCertificate
    {S : Site.{u, v}}
    (sliceCert : (X : S.C.Obj) → SliceTopologyCertificate S X)
    (A B : Sheaf.{u, v, w} S) where
  expPresheaf : LocalMorphismExponentialPresheaf sliceCert A B
  expIsSheaf : IsSheaf S.J expPresheaf.val
  expSheaf : Sheaf.{u, v, w} S
  expSheaf_eq : expSheaf.val = expPresheaf.val
  eval :
    SheafHom
      (SheafProduct expSheaf A)
      B
  curry :
    {X : Sheaf.{u, v, w} S} →
      SheafHom (SheafProduct X A) B →
        SheafHom X expSheaf
  uncurry :
    {X : Sheaf.{u, v, w} S} →
      SheafHom X expSheaf →
        SheafHom (SheafProduct X A) B
  curry_uncurry :
    ∀ {X : Sheaf.{u, v, w} S}
      (f : SheafHom X expSheaf),
        curry (uncurry f) = f
  uncurry_curry :
    ∀ {X : Sheaf.{u, v, w} S}
      (f : SheafHom (SheafProduct X A) B),
        uncurry (curry f) = f
  emptyCoverHandledBySheafCondition : Prop
  noPointwiseFunctionSheafClaim : Prop
  certificateBoundary : List String

structure CertifiedExponentialSheaf
    {S : Site.{u, v}}
    (A B : Sheaf.{u, v, w} S) where
  exp : Sheaf.{u, v, w} S
  eval :
    SheafHom
      (SheafProduct exp A)
      B
  curry :
    {X : Sheaf.{u, v, w} S} →
      SheafHom (SheafProduct X A) B →
        SheafHom X exp
  uncurry :
    {X : Sheaf.{u, v, w} S} →
      SheafHom X exp →
        SheafHom (SheafProduct X A) B
  curry_uncurry :
    ∀ {X : Sheaf.{u, v, w} S}
      (f : SheafHom X exp),
        curry (uncurry f) = f
  uncurry_curry :
    ∀ {X : Sheaf.{u, v, w} S}
      (f : SheafHom (SheafProduct X A) B),
        uncurry (curry f) = f
  localMorphismBoundary : List String
  operationalBoundary : List String

def ExponentialSheafCertificate.toCertified
    {S : Site.{u, v}}
    {sliceCert : (X : S.C.Obj) → SliceTopologyCertificate S X}
    {A B : Sheaf.{u, v, w} S}
    (cert : ExponentialSheafCertificate sliceCert A B) :
    CertifiedExponentialSheaf A B where
  exp := cert.expSheaf
  eval := cert.eval
  curry := cert.curry
  uncurry := cert.uncurry
  curry_uncurry := cert.curry_uncurry
  uncurry_curry := cert.uncurry_curry
  localMorphismBoundary := [
    "The exponential object is supplied by local morphisms over slice sites.",
    "Sections are not interpreted as pointwise functions on raw presheaf values.",
    "Restriction is certified by pullback of local sheaf morphisms along slice functors."
  ]
  operationalBoundary := cert.certificateBoundary

structure SheafCategoryExponentialsCertificate
    (S : Site.{u, v}) where
  sliceCert :
    (X : S.C.Obj) → SliceTopologyCertificate S X
  exponential :
    (A B : Sheaf.{u, v, w} S) →
      ExponentialSheafCertificate sliceCert A B
  boundary : List String

end SliceExponentials

namespace ExponentialSheaves

abbrev SliceTopologyCertificate
    (S : Site.{u, v})
    (X : S.C.Obj) :=
  SliceExponentials.SliceTopologyCertificate S X

structure SheafProductData
    (S : Site.{u, v}) where
  prod :
    Sheaf.{u, v, w} S →
      Sheaf.{u, v, w} S →
        Sheaf.{u, v, w} S
  boundary : List String

abbrev defaultSheafProductData
    (S : Site.{u, v}) :
    SheafProductData.{u, v, w} S where
  prod := SliceExponentials.SheafProduct
  boundary := [
    "Product data is backed by the existing proof-valued sheaf product.",
    "Universal product laws remain certificate-facing when required by higher structure."
  ]

abbrev ExponentialSheafCertificate
    {S : Site.{u, v}}
    (sliceCert : (X : S.C.Obj) → SliceTopologyCertificate S X)
    (_products : SheafProductData.{u, v, w} S)
    (A B : Sheaf.{u, v, w} S) :=
  SliceExponentials.ExponentialSheafCertificate sliceCert A B

end ExponentialSheaves

namespace InternalLanguage

structure InternalBoundary where
  label : String
  proofStatus : AST.LeanProofStatus
  trustedStatus : AST.LeanTrustedStatus
  requiredFoundation? : Option LogicalFoundation
  claimBoundary : List String
  dependencies : List String
  paperReferences : List String
deriving Repr

namespace InternalBoundary

def checkedConstructive (label : String) (boundary : List String) :
    InternalBoundary where
  label := label
  proofStatus := AST.LeanProofStatus.checkedByLean
  trustedStatus := AST.LeanTrustedStatus.trusted
  requiredFoundation? := some LogicalFoundation.constructive
  claimBoundary := boundary
  dependencies := []
  paperReferences := []

def certificateRequired
    (label : String)
    (foundation : LogicalFoundation)
    (deps boundary : List String) :
    InternalBoundary where
  label := label
  proofStatus := AST.LeanProofStatus.notClaimed
  trustedStatus := AST.LeanTrustedStatus.untrusted
  requiredFoundation? := some foundation
  claimBoundary := boundary
  dependencies := deps
  paperReferences := []

def fromDeclaration
    (d : AST.LeanDeclarationAst)
    (foundation? : Option LogicalFoundation := none) :
    InternalBoundary where
  label := d.fullName
  proofStatus := d.proofStatus
  trustedStatus :=
    if d.trusted then
      AST.LeanTrustedStatus.trusted
    else
      AST.LeanTrustedStatus.untrusted
  requiredFoundation? := foundation?
  claimBoundary := d.claimBoundary
  dependencies := d.dependencies
  paperReferences := d.paperReferences

end InternalBoundary

abbrev Omega
    (S : Site.{u, v}) :
    Presheaf.{u, v, max u v} S.C :=
  OmegaPredicatePresheaf S.J

def TerminalPresheafOmega
    (C : SmallCategory.{u, v}) :
    Presheaf.{u, v, max u v} C where
  obj := fun _ => PUnit
  map := fun _ _ => PUnit.unit
  map_id := by
    intro X
    funext x
    cases x
    rfl
  map_comp := by
    intro X Y Z f g
    funext x
    cases x
    rfl

def truthArrowOmega
    (S : Site.{u, v}) :
    NatTrans (TerminalPresheafOmega S.C) (Omega S) where
  app := fun X _ => topJClosedSieve S.J X
  naturality := by
    intro X Y f
    funext x
    cases x
    apply JClosedSieve.ext
    apply Sieve.ext
    intro Z g
    constructor <;> intro _ <;> trivial

abbrev InternalContext
    (S : Site.{u, v}) :
    Type (max (u+1) v ((max u v)+1)) :=
  Sheaf.{u, v, max u v} S

structure InternalProp
    (S : Site.{u, v}) where
  char : NatTrans (TerminalPresheafOmega S.C) (Omega S)
  boundary : InternalBoundary

namespace InternalProp

def top (S : Site.{u, v}) : InternalProp S where
  char := truthArrowOmega S
  boundary :=
    InternalBoundary.checkedConstructive
      "internal_top"
      [
        "Internal truth is the maximal J-closed sieve.",
        "No classical excluded-middle principle is used."
      ]

def ForcesAt
    {S : Site.{u, v}}
    (φ : InternalProp S)
    (X : S.C.Obj) : Prop :=
  φ.char.app X PUnit.unit = topJClosedSieve S.J X

def Forces
    {S : Site.{u, v}}
    (φ : InternalProp S) : Prop :=
  ∀ X : S.C.Obj, ForcesAt φ X

theorem top_forces
    (S : Site.{u, v}) :
    Forces (top S) := by
  intro X
  rfl

end InternalProp

structure InternalFormula
    {S : Site.{u, v}}
    (Γ : InternalContext S) where
  char : NatTrans Γ.val (Omega S)
  boundary : InternalBoundary

namespace InternalFormula

def top
    {S : Site.{u, v}}
    (Γ : InternalContext S) :
    InternalFormula Γ where
  char := {
    app := fun X _x => topJClosedSieve S.J X
    naturality := by
      intro X Y f
      funext x
      apply JClosedSieve.ext
      apply Sieve.ext
      intro Z g
      constructor <;> intro _ <;> trivial
  }
  boundary :=
    InternalBoundary.checkedConstructive
      "contextual_internal_top"
      [
        "Truth in context is the constant maximal J-closed sieve.",
        "This is intuitionistic top, not a classical completeness assertion."
      ]

def ForcesSection
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (φ : InternalFormula Γ)
    (X : S.C.Obj)
    (x : Γ.val.obj X) : Prop :=
  φ.char.app X x = topJClosedSieve S.J X

def ForcesAt
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (φ : InternalFormula Γ)
    (X : S.C.Obj) : Prop :=
  ∀ x : Γ.val.obj X, ForcesSection φ X x

def Forces
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (φ : InternalFormula Γ) : Prop :=
  ∀ X : S.C.Obj, ForcesAt φ X

theorem top_forces
    {S : Site.{u, v}}
    (Γ : InternalContext S) :
    Forces (top Γ) := by
  intro X x
  rfl

structure ExtensionCertificate
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (φ : InternalFormula Γ) where
  extension : LocalSubpresheaf S.J Γ.val
  mem_iff_forces :
    ∀ {X : S.C.Obj} (x : Γ.val.obj X),
      extension.mem x ↔ ForcesSection φ X x
  localClosureBoundary : InternalBoundary

def ofLocalSubpresheaf
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (A : LocalSubpresheaf S.J Γ.val)
    (boundary : InternalBoundary) :
    InternalFormula Γ where
  char := characteristicMap A
  boundary := boundary

structure ClassifiesLocalSubpresheaf
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (A : LocalSubpresheaf S.J Γ.val)
    (φ : InternalFormula Γ) where
  formula_eq :
    φ = ofLocalSubpresheaf A φ.boundary
  forces_iff_mem :
    ∀ {X : S.C.Obj} (x : Γ.val.obj X),
      ForcesSection φ X x ↔ A.mem x
  pullbackTruthBoundary : InternalBoundary

end InternalFormula

def Forces
    {S : Site.{u, v}}
    (Γ : InternalContext S)
    (X : S.C.Obj)
    (φ : InternalFormula Γ) : Prop :=
  InternalFormula.ForcesAt φ X

def ForcesSection
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (X : S.C.Obj)
    (x : Γ.val.obj X)
    (φ : InternalFormula Γ) : Prop :=
  InternalFormula.ForcesSection φ X x

structure InternalType
    (S : Site.{u, v}) where
  carrier : InternalContext S
  boundary : InternalBoundary

structure InternalTerm
    {S : Site.{u, v}}
    (Γ : InternalContext S)
    (A : InternalType S) where
  map : NatTrans Γ.val A.carrier.val
  boundary : InternalBoundary

structure ProductTypeCertificate
    (S : Site.{u, v})
    (products : ExponentialSheaves.SheafProductData.{u, v, max u v} S)
    (A B : InternalType S) where
  productType : InternalType S
  product_eq :
    productType.carrier = products.prod A.carrier B.carrier
  fstTerm :
    InternalTerm productType.carrier A
  sndTerm :
    InternalTerm productType.carrier B
  pairing :
    ∀ {Γ : InternalContext S},
      InternalTerm Γ A →
      InternalTerm Γ B →
        InternalTerm Γ productType
  pairing_fst_sound : Prop
  pairing_snd_sound : Prop
  productBoundary : InternalBoundary

structure FunctionTypeCertificate
    (S : Site.{u, v})
    (sliceCert :
      (X : S.C.Obj) →
        ExponentialSheaves.SliceTopologyCertificate S X)
    (products : ExponentialSheaves.SheafProductData.{u, v, max u v} S)
    (A B : InternalType S) where
  exponential :
    ExponentialSheaves.ExponentialSheafCertificate
      sliceCert products A.carrier B.carrier
  functionType : InternalType S
  functionType_eq :
    functionType.carrier = exponential.expSheaf
  evalTerm :
    InternalTerm
      (products.prod functionType.carrier A.carrier)
      B
  lam :
    ∀ {Γ : InternalContext S},
      InternalTerm (products.prod Γ A.carrier) B →
        InternalTerm Γ functionType
  app :
    ∀ {Γ : InternalContext S},
      InternalTerm Γ functionType →
      InternalTerm Γ A →
        InternalTerm Γ B
  betaSound : Prop
  etaSound : Prop
  implicationBoundary : InternalBoundary

structure OmegaTypeCertificate
    (S : Site.{u, v}) where
  omegaSheaf : InternalContext S
  omega_val_eq :
    omegaSheaf.val = Omega S
  truth :
    NatTrans (TerminalPresheafOmega S.C) omegaSheaf.val
  truth_eq :
    HEq truth (truthArrowOmega S)
  certifiedOmega? :
    Option (CertifiedSheaf.{u, v, max u v} S)
  boundary : InternalBoundary

structure PowerObjectCertificate
    (S : Site.{u, v})
    (sliceCert :
      (X : S.C.Obj) →
        ExponentialSheaves.SliceTopologyCertificate S X)
    (products : ExponentialSheaves.SheafProductData.{u, v, max u v} S)
    (omegaCert : OmegaTypeCertificate S)
    (A : InternalType S) where
  powerType : InternalType S
  omegaExp :
    ExponentialSheaves.ExponentialSheafCertificate
      sliceCert products A.carrier omegaCert.omegaSheaf
  power_eq :
    powerType.carrier = omegaExp.expSheaf
  membershipPredicate : InternalFormula (products.prod A.carrier powerType.carrier)
  boundary : InternalBoundary

structure HeytingFormulaOps
    {S : Site.{u, v}}
    (Γ : InternalContext S) where
  top : InternalFormula Γ
  bottom : InternalFormula Γ
  and : InternalFormula Γ → InternalFormula Γ → InternalFormula Γ
  or : InternalFormula Γ → InternalFormula Γ → InternalFormula Γ
  imp : InternalFormula Γ → InternalFormula Γ → InternalFormula Γ
  top_forces :
    InternalFormula.Forces top
  and_intro :
    ∀ φ ψ,
      InternalFormula.Forces φ →
      InternalFormula.Forces ψ →
        InternalFormula.Forces (and φ ψ)
  and_elim_left :
    ∀ φ ψ,
      InternalFormula.Forces (and φ ψ) →
        InternalFormula.Forces φ
  and_elim_right :
    ∀ φ ψ,
      InternalFormula.Forces (and φ ψ) →
        InternalFormula.Forces ψ
  imp_intro :
    ∀ φ ψ,
      (InternalFormula.Forces φ → InternalFormula.Forces ψ) →
        InternalFormula.Forces (imp φ ψ)
  imp_elim :
    ∀ φ ψ,
      InternalFormula.Forces (imp φ ψ) →
      InternalFormula.Forces φ →
        InternalFormula.Forces ψ
  disjunctionBoundary : InternalBoundary
  implicationBoundary : InternalBoundary
  noExcludedMiddleClaim : Prop

structure InternalizationCertificate
    {S : Site.{u, v}}
    (P : Prop)
    (φ : InternalProp S) where
  sound :
    P → InternalProp.Forces φ
  complete? : Bool
  completeSound :
    complete? = true → InternalProp.Forces φ → P
  sourceDeclaration? : Option AST.LeanDeclarationAst
  boundary : InternalBoundary

theorem internalize_sound
    {S : Site.{u, v}}
    {P : Prop}
    {φ : InternalProp S}
    (I : InternalizationCertificate P φ)
    (hP : P) :
    InternalProp.Forces φ :=
  I.sound hP

structure InternalDeclaration where
  declaration : AST.LeanDeclarationAst
  requiredFoundation? : Option LogicalFoundation
  boundary : InternalBoundary
  theoremStatusVisible :
    boundary.proofStatus = declaration.proofStatus
  claimBoundaryVisible :
    boundary.claimBoundary = declaration.claimBoundary

structure RicciCoverageClaim where
  Γ : Gamma
  object : RicciFlowRepresentableObject

def RicciCoverageExternalProp
    (claim : RicciCoverageClaim) : Prop :=
  CoveredByExtendedEMLAt
    claim.Γ
    (DeclaredSurfaceObject.ricciFlow claim.object)

structure RicciCoverageInternalization
    (S : Site.{u, v})
    (claim : RicciCoverageClaim) where
  foundationFormula : InternalProp S
  coverageFormula : InternalProp S
  foundationSound :
    LogicalFoundation.ricciFlow ≤ claim.Γ.logicalFoundation →
      InternalProp.Forces foundationFormula
  coverageSound :
    RicciCoverageExternalProp claim →
      InternalProp.Forces coverageFormula
  sourceTheoremName : String
  sourceTheoremName_eq :
    sourceTheoremName = "ricciCoverage_requires_foundation"
  boundary : InternalBoundary
  noAnalyticRicciFlowClaim : Prop
  noTopologyClassificationClaim : Prop

theorem ricciCoverage_internal_forces
    {S : Site.{u, v}}
    {claim : RicciCoverageClaim}
    (I : RicciCoverageInternalization S claim)
    (hΓ : LogicalFoundation.ricciFlow ≤ claim.Γ.logicalFoundation) :
    InternalProp.Forces I.coverageFormula := by
  have external :
      RicciCoverageExternalProp claim := by
    exact (Surface.Legacy.ricciCoverage_requires_foundation claim.Γ hΓ) claim.object
  exact I.coverageSound external

structure RicciCoverageInternalRule
    (S : Site.{u, v})
    (claim : RicciCoverageClaim) where
  foundationFormula : InternalProp S
  coverageFormula : InternalProp S
  rule :
    InternalProp.Forces foundationFormula →
      InternalProp.Forces coverageFormula
  boundary : InternalBoundary
  noRicciFlowAsBinaryLogicMatrixFlowClaim : Prop

theorem ricciCoverage_apply_internal_rule
    {S : Site.{u, v}}
    {claim : RicciCoverageClaim}
    (R : RicciCoverageInternalRule S claim)
    (h : InternalProp.Forces R.foundationFormula) :
    InternalProp.Forces R.coverageFormula :=
  R.rule h

structure ChoiceCoverageClaim where
  Γ : Gamma
  object : ChoiceDependentObject

def ChoiceCoverageExternalProp
    (claim : ChoiceCoverageClaim) : Prop :=
  CoveredByExtendedEMLAt
    claim.Γ
    (DeclaredSurfaceObject.choice claim.object)

structure ChoiceCoverageInternalization
    (S : Site.{u, v})
    (claim : ChoiceCoverageClaim) where
  foundationFormula : InternalProp S
  coverageFormula : InternalProp S
  foundationSound :
    LogicalFoundation.choice ≤ claim.Γ.logicalFoundation →
      InternalProp.Forces foundationFormula
  coverageSound :
    ChoiceCoverageExternalProp claim →
      InternalProp.Forces coverageFormula
  sourceTheoremName : String
  sourceTheoremName_eq :
    sourceTheoremName = "choiceCoverage_requires_foundation"
  boundary : InternalBoundary
  noInternalChoiceAxiomClaim : Prop
  noExcludedMiddleClaim : Prop

theorem choiceCoverage_internal_forces
    {S : Site.{u, v}}
    {claim : ChoiceCoverageClaim}
    (I : ChoiceCoverageInternalization S claim)
    (hΓ : LogicalFoundation.choice ≤ claim.Γ.logicalFoundation) :
    InternalProp.Forces I.coverageFormula := by
  have external :
      ChoiceCoverageExternalProp claim := by
    exact (Surface.Legacy.choiceCoverage_requires_foundation claim.Γ hΓ) claim.object
  exact I.coverageSound external

structure ChoiceCoverageInternalRule
    (S : Site.{u, v})
    (claim : ChoiceCoverageClaim) where
  foundationFormula : InternalProp S
  coverageFormula : InternalProp S
  rule :
    InternalProp.Forces foundationFormula →
      InternalProp.Forces coverageFormula
  boundary : InternalBoundary
  choiceRemainsExplicit : Prop

theorem choiceCoverage_apply_internal_rule
    {S : Site.{u, v}}
    {claim : ChoiceCoverageClaim}
    (R : ChoiceCoverageInternalRule S claim)
    (h : InternalProp.Forces R.foundationFormula) :
    InternalProp.Forces R.coverageFormula :=
  R.rule h

class InternallyCovers
    (S : Site.{u, v})
    (Claim : Type w) where
  hypothesis : Claim → InternalProp S
  conclusion : Claim → InternalProp S
  forcesCoverage :
    ∀ c : Claim,
      InternalProp.Forces (hypothesis c) →
        InternalProp.Forces (conclusion c)
  boundary : InternalBoundary

class RicciInternalCoverageRules
    (S : Site.{u, v}) where
  rule : ∀ c : RicciCoverageClaim, RicciCoverageInternalRule S c

instance ricciInternallyCovers
    {S : Site.{u, v}}
    [rules : RicciInternalCoverageRules S] :
    InternallyCovers S RicciCoverageClaim where
  hypothesis := fun c => (rules.rule c).foundationFormula
  conclusion := fun c => (rules.rule c).coverageFormula
  forcesCoverage := fun c h => (rules.rule c).rule h
  boundary :=
    InternalBoundary.certificateRequired
      "ricci_internal_coverage_rule"
      LogicalFoundation.ricciFlow
      ["ricciCoverage_requires_foundation"]
      [
        "Ricci coverage is internalized only through explicit foundation forcing.",
        "No analytic Ricci-flow equivalence or topology classification is claimed."
      ]

class ChoiceInternalCoverageRules
    (S : Site.{u, v}) where
  rule : ∀ c : ChoiceCoverageClaim, ChoiceCoverageInternalRule S c

instance choiceInternallyCovers
    {S : Site.{u, v}}
    [rules : ChoiceInternalCoverageRules S] :
    InternallyCovers S ChoiceCoverageClaim where
  hypothesis := fun c => (rules.rule c).foundationFormula
  conclusion := fun c => (rules.rule c).coverageFormula
  forcesCoverage := fun c h => (rules.rule c).rule h
  boundary :=
    InternalBoundary.certificateRequired
      "choice_internal_coverage_rule"
      LogicalFoundation.choice
      ["choiceCoverage_requires_foundation"]
      [
        "Choice coverage is internalized only through explicit choice-foundation forcing.",
        "No internal global choice principle or excluded middle is installed."
      ]

theorem internally_cover
    {S : Site.{u, v}}
    {Claim : Type w}
    [I : InternallyCovers S Claim]
    (c : Claim)
    (h : InternalProp.Forces (I.hypothesis c)) :
    InternalProp.Forces (I.conclusion c) :=
  I.forcesCoverage c h

structure InternalJudgment
    {S : Site.{u, v}}
    (Γ : InternalContext S) where
  formula : InternalFormula Γ
  forced : InternalFormula.Forces formula
  boundary : InternalBoundary

structure GlobalInternalJudgment
    (S : Site.{u, v}) where
  proposition : InternalProp S
  forced : InternalProp.Forces proposition
  boundary : InternalBoundary

def GlobalInternalJudgment.ofInternalization
    {S : Site.{u, v}}
    {P : Prop}
    {φ : InternalProp S}
    (I : InternalizationCertificate P φ)
    (hP : P) :
    GlobalInternalJudgment S where
  proposition := φ
  forced := I.sound hP
  boundary := I.boundary

structure InternalAutomationRequest
    (S : Site.{u, v}) where
  requestName : String
  sourceDeclaration? : Option AST.LeanDeclarationAst
  requiredFoundation? : Option LogicalFoundation
  goal : InternalProp S
  available : List (InternalProp S)
  boundary : InternalBoundary

structure InternalAutomationResult
    {S : Site.{u, v}}
    (request : InternalAutomationRequest S) where
  proof : InternalProp.Forces request.goal
  usedHypotheses : List String
  proofBoundary : InternalBoundary

end InternalLanguage

namespace InternalLanguage

namespace InternalFormula

def PullbackTruth
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (φ : InternalFormula Γ)
    (X : S.C.Obj)
    (x : Γ.val.obj X) : Prop :=
  φ.char.app X x = topJClosedSieve S.J X

theorem forcesSection_iff_pullbackTruth
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (φ : InternalFormula Γ)
    (X : S.C.Obj)
    (x : Γ.val.obj X) :
    ForcesSection φ X x ↔ PullbackTruth φ X x := by
  rfl

theorem forces_iff_pullback_truth
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (A : LocalSubpresheaf S.J Γ.val)
    (boundary : InternalBoundary)
    {X : S.C.Obj}
    (x : Γ.val.obj X) :
    ForcesSection
      (ofLocalSubpresheaf A boundary)
      X
      x
      ↔
    A.mem x := by
  constructor
  · intro hforce
    change
      (characteristicMap A).app X x =
        topJClosedSieve S.J X at hforce
    have hsieve :
        characteristicSieve A.toSubpresheaf x =
          Sieve.top S.C X := by
      exact congrArg JClosedSieve.sieve hforce
    have hid :
        (characteristicSieve A.toSubpresheaf x).arrows X
          (S.C.id X) := by
      rw [hsieve]
      trivial
    change A.mem (Presheaf.res Γ.val (S.C.id X) x) at hid
    have hres :
        Presheaf.res Γ.val (S.C.id X) x = x := by
      exact congrArg (fun h => h x) (Γ.val.map_id X)
    simpa [hres] using hid
  · intro hx
    change
      (characteristicMap A).app X x =
        topJClosedSieve S.J X
    apply JClosedSieve.ext
    apply Sieve.ext
    intro Y f
    constructor
    · intro _h
      trivial
    · intro _h
      change A.mem (Presheaf.res Γ.val f x)
      exact A.res_mem f hx

theorem pullbackTruth_iff_mem
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (A : LocalSubpresheaf S.J Γ.val)
    (boundary : InternalBoundary)
    {X : S.C.Obj}
    (x : Γ.val.obj X) :
    PullbackTruth
      (ofLocalSubpresheaf A boundary)
      X
      x
      ↔
    A.mem x := by
  exact forces_iff_pullback_truth A boundary x

def extensionCertificateOfLocalSubpresheaf
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (A : LocalSubpresheaf S.J Γ.val)
    (boundary : InternalBoundary) :
    ExtensionCertificate (ofLocalSubpresheaf A boundary) where
  extension := A
  mem_iff_forces := by
    intro X x
    exact (forces_iff_pullback_truth A boundary x).symm
  localClosureBoundary := boundary

def classifiesLocalSubpresheaf
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    (A : LocalSubpresheaf S.J Γ.val)
    (boundary : InternalBoundary) :
    ClassifiesLocalSubpresheaf
      A
      (ofLocalSubpresheaf A boundary) where
  formula_eq := rfl
  forces_iff_mem := by
    intro X x
    exact forces_iff_pullback_truth A boundary x
  pullbackTruthBoundary := boundary

theorem forces_iff_mem_of_classified
    {S : Site.{u, v}}
    {Γ : InternalContext S}
    {A : LocalSubpresheaf S.J Γ.val}
    {φ : InternalFormula Γ}
    (C : ClassifiesLocalSubpresheaf A φ)
    {X : S.C.Obj}
    (x : Γ.val.obj X) :
    ForcesSection φ X x ↔ A.mem x := by
  exact C.forces_iff_mem x

end InternalFormula

structure InternalFoundationContext where
  available : List LogicalFoundation
  boundary : List String

inductive FoundationRequirementSatisfied
    (ctx : InternalFoundationContext) :
    Option LogicalFoundation → Prop where
| none :
    FoundationRequirementSatisfied ctx none
| some {f : LogicalFoundation} :
    f ∈ ctx.available →
      FoundationRequirementSatisfied ctx (some f)

def InternalBoundary.foundationSatisfied
    (ctx : InternalFoundationContext)
    (b : InternalBoundary) : Prop :=
  FoundationRequirementSatisfied ctx b.requiredFoundation?

theorem internally_cover_checked
    {S : Site.{u, v}}
    {Claim : Type w}
    [I : InternallyCovers S Claim]
    (ctx : InternalFoundationContext)
    (c : Claim)
    (_hFoundation : I.boundary.foundationSatisfied ctx)
    (hHyp :
      InternalProp.Forces (I.hypothesis c)) :
    InternalProp.Forces (I.conclusion c) := by
  exact I.forcesCoverage c hHyp

theorem internally_cover_checked_noFoundation
    {S : Site.{u, v}}
    {Claim : Type w}
    [I : InternallyCovers S Claim]
    (ctx : InternalFoundationContext)
    (c : Claim)
    (hNoFoundation : I.boundary.requiredFoundation? = none)
    (hHyp :
      InternalProp.Forces (I.hypothesis c)) :
    InternalProp.Forces (I.conclusion c) := by
  apply internally_cover_checked
    (S := S)
    (Claim := Claim)
    (ctx := ctx)
    (c := c)
  · unfold InternalBoundary.foundationSatisfied
    rw [hNoFoundation]
    exact FoundationRequirementSatisfied.none
  · exact hHyp

theorem internally_cover_checked_withFoundation
    {S : Site.{u, v}}
    {Claim : Type w}
    [I : InternallyCovers S Claim]
    (ctx : InternalFoundationContext)
    (c : Claim)
    {f : LogicalFoundation}
    (hReq : I.boundary.requiredFoundation? = some f)
    (hAvail : f ∈ ctx.available)
    (hHyp :
      InternalProp.Forces (I.hypothesis c)) :
    InternalProp.Forces (I.conclusion c) := by
  apply internally_cover_checked
    (S := S)
    (Claim := Claim)
    (ctx := ctx)
    (c := c)
  · unfold InternalBoundary.foundationSatisfied
    rw [hReq]
    exact FoundationRequirementSatisfied.some hAvail
  · exact hHyp

inductive CoverageModality where
  | constructive
  | bijectiveFiniteFlow
  | heat
  | homology
  | ricci
  | choice
  | oracle
  | infiniteTime
deriving DecidableEq, Repr

structure InternalCoverageRule
    (S : Site.{u, v})
    (Claim : Type w) where
  modality : CoverageModality
  requiredFoundation? : Option LogicalFoundation
  hypothesis : Claim → InternalProp S
  conclusion : Claim → InternalProp S
  rule :
    ∀ c : Claim,
      InternalProp.Forces (hypothesis c) →
        InternalProp.Forces (conclusion c)
  sourceTheoremNames : List String
  boundary : InternalBoundary

structure InternalCoverageContext where
  foundations : List LogicalFoundation
  trustedInputs : List String
  boundary : List String

def foundationAvailable
    (ctx : InternalCoverageContext)
    (f? : Option LogicalFoundation) : Prop :=
  match f? with
  | none => True
  | some f => f ∈ ctx.foundations

theorem applyCoverageRule_checked
    {S : Site.{u, v}}
    {Claim : Type w}
    (ctx : InternalCoverageContext)
    (R : InternalCoverageRule S Claim)
    (c : Claim)
    (_hf : foundationAvailable ctx R.requiredFoundation?)
    (h : InternalProp.Forces (R.hypothesis c)) :
    InternalProp.Forces (R.conclusion c) :=
  R.rule c h

inductive CoverageKind where
  | ricci
  | choice
deriving DecidableEq, Repr

structure CoverageClaim where
  kind : CoverageKind
  name : String
  claimBoundary : List String
deriving Repr

structure CoverageInternalRule
    (S : Site.{u, v}) where
  kind : CoverageKind
  requiredFoundation : LogicalFoundation
  premise : CoverageClaim → InternalProp S
  conclusion : CoverageClaim → InternalProp S
  applyRule :
    ∀ c,
      InternalProp.Forces (premise c) →
        InternalProp.Forces (conclusion c)
  sourceTheorem : String
  boundary : InternalBoundary

def ruleAllowed
    {S : Site.{u, v}}
    (ctx : InternalCoverageContext)
    (R : CoverageInternalRule S) : Prop :=
  R.requiredFoundation ∈ ctx.foundations

theorem applyCoverageInternalRule
    {S : Site.{u, v}}
    (ctx : InternalCoverageContext)
    (R : CoverageInternalRule S)
    (c : CoverageClaim)
    (_allowed : ruleAllowed ctx R)
    (h : InternalProp.Forces (R.premise c)) :
    InternalProp.Forces (R.conclusion c) :=
  R.applyRule c h

end InternalLanguage

end NativeSyntacticTopos
end Legacy
end Surface
