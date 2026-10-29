-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteGroupData.Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FiniteGroupData.Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6","mathematical_subject":"Computation.DataStructures","original_sha256":"e22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/GaloisCohomology/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteGroupData.Variante22360af62705cf5b876d3d6cd12ba2043eb5f9b1042ed4b50b3a835ae00fbb6

namespace Surface.Arithmetic
namespace GaloisCohomology

universe u v w

/-!
# GHC-1a finite abstract first cohomology

What is formalized:
Finite-group action data on an additive abelian carrier, inhomogeneous
`1`-cochains, `1`-cocycles, `1`-coboundaries, the quotient `FiniteH1`, and
restriction along action-compatible group homomorphisms.  The word finite here
refers to the explicit finite group interface; no local/continuous/absolute
Galois machinery is imported.

What is certificate-gated:
Only the algebraic laws of the finite group, additive abelian carrier, and
action are fields of the corresponding structures. They are mathematical law
fields, not Selmer/BSD placeholders.

What is not claimed:
This file does not construct absolute Galois groups, topological groups,
continuous cochains, local fields, elliptic curves, BSD, or Tate-Shafarevich
groups.

Primary mathematical source:
Standard inhomogeneous group cohomology in degree `1`, restricted here to a
finite abstract setting.

Dependency invariant:
Local Kummer maps, weak descent, Tate-Shafarevich interfaces, and BSD-facing
theorem inputs must depend on this finite `H1`/restriction substrate before any
later continuous or absolute-Galois adapter is allowed into their proof cone.
-/

/-- A small finite group interface. -/
structure FiniteGroupData where
  Carrier : Type u
  one : Carrier
  mul : Carrier → Carrier → Carrier
  inv : Carrier → Carrier
  elements : List Carrier
  complete : ∀ g : Carrier, g ∈ elements
  mul_assoc :
    ∀ a b c : Carrier, mul (mul a b) c = mul a (mul b c)
  one_mul :
    ∀ a : Carrier, mul one a = a
  mul_one :
    ∀ a : Carrier, mul a one = a
  inv_mul :
    ∀ a : Carrier, mul (inv a) a = one
  mul_inv :
    ∀ a : Carrier, mul a (inv a) = one

/-- Homomorphism of the finite group interfaces. -/
structure GroupHom (H G : FiniteGroupData.{u}) where
  toFun : H.Carrier → G.Carrier
  map_one : toFun H.one = G.one
  map_mul :
    ∀ a b : H.Carrier,
      toFun (H.mul a b) = G.mul (toFun a) (toFun b)

namespace GroupHom

def id (G : FiniteGroupData.{u}) : GroupHom G G where
  toFun := fun g => g
  map_one := rfl
  map_mul := by
    intro a b
    rfl

def comp
    {K H G : FiniteGroupData.{u}}
    (φ : GroupHom H G)
    (ψ : GroupHom K H) :
    GroupHom K G where
  toFun := fun k => φ.toFun (ψ.toFun k)
  map_one := by
    rw [ψ.map_one, φ.map_one]
  map_mul := by
    intro a b
    rw [ψ.map_mul, φ.map_mul]

end GroupHom

/-- Additive abelian carrier used for finite group cohomology. -/
structure FiniteAddCommGroup where
  Carrier : Type v
  zero : Carrier
  add : Carrier → Carrier → Carrier
  neg : Carrier → Carrier
  add_assoc :
    ∀ a b c : Carrier, add (add a b) c = add a (add b c)
  add_comm :
    ∀ a b : Carrier, add a b = add b a
  zero_add :
    ∀ a : Carrier, add zero a = a
  add_zero :
    ∀ a : Carrier, add a zero = a
  add_left_neg :
    ∀ a : Carrier, add (neg a) a = zero
  add_right_neg :
    ∀ a : Carrier, add a (neg a) = zero
  add_neg_cancel_right :
    ∀ a b : Carrier, add (add a b) (neg b) = a
  add_left_cancel :
    ∀ a b c : Carrier, add a b = add a c → b = c
  neg_add :
    ∀ a b : Carrier, neg (add a b) = add (neg a) (neg b)
  add_add_add_comm :
    ∀ a b c d : Carrier,
      add (add a b) (add c d) =
        add (add a c) (add b d)

namespace FiniteAddCommGroup

def sub (A : FiniteAddCommGroup.{v}) (a b : A.Carrier) : A.Carrier :=
  A.add a (A.neg b)

end FiniteAddCommGroup

/--
An additive action of a finite group on an additive abelian carrier.

The final four fields are derived coboundary-calculus laws. They are included
because this repository does not depend on mathlib's algebra hierarchy; they
make the finite cohomology quotient proof-checkable without global axioms.
-/
structure AdditiveAction
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v}) where
  act : G.Carrier → A.Carrier → A.Carrier
  act_one :
    ∀ a : A.Carrier, act G.one a = a
  act_mul :
    ∀ (g h : G.Carrier) (a : A.Carrier),
      act (G.mul g h) a = act g (act h a)
  act_zero :
    ∀ g : G.Carrier, act g A.zero = A.zero
  act_add :
    ∀ (g : G.Carrier) (a b : A.Carrier),
      act g (A.add a b) = A.add (act g a) (act g b)
  act_neg :
    ∀ (g : G.Carrier) (a : A.Carrier),
      act g (A.neg a) = A.neg (act g a)
  coboundary_zero :
    ∀ g : G.Carrier,
      A.sub (act g A.zero) A.zero = A.zero
  coboundary_add :
    ∀ (g : G.Carrier) (a b : A.Carrier),
      A.sub (act g (A.add a b)) (A.add a b) =
        A.add (A.sub (act g a) a) (A.sub (act g b) b)
  coboundary_neg :
    ∀ (g : G.Carrier) (a : A.Carrier),
      A.sub (act g (A.neg a)) (A.neg a) =
        A.neg (A.sub (act g a) a)
  coboundary_cocycle :
    ∀ (a : A.Carrier) (g h : G.Carrier),
      A.sub (act (G.mul g h) a) a =
        A.add (A.sub (act g a) a)
          (act g (A.sub (act h a) a))

/-- A homomorphism compatible with the selected actions. -/
structure ActionHom
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    (ρH : AdditiveAction H A)
    (ρG : AdditiveAction G A) where
  hom : GroupHom H G
  action_compat :
    ∀ (h : H.Carrier) (a : A.Carrier),
      ρH.act h a = ρG.act (hom.toFun h) a

namespace ActionHom

def id
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    (ρ : AdditiveAction G A) :
    ActionHom ρ ρ where
  hom := GroupHom.id G
  action_compat := by
    intro h a
    rfl

def comp
    {K H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρK : AdditiveAction K A}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    (ψ : ActionHom ρK ρH) :
    ActionHom ρK ρG where
  hom := GroupHom.comp φ.hom ψ.hom
  action_compat := by
    intro k a
    rw [ψ.action_compat, φ.action_compat]
    rfl

end ActionHom

/-- Inhomogeneous `0`-cochains. -/
abbrev C0 (_G : FiniteGroupData.{u}) (A : FiniteAddCommGroup.{v}) : Type v :=
  A.Carrier

/-- Inhomogeneous `1`-cochains. -/
abbrev C1 (G : FiniteGroupData.{u}) (A : FiniteAddCommGroup.{v}) : Type (max u v) :=
  G.Carrier → A.Carrier

namespace C1

def zero (G : FiniteGroupData.{u}) (A : FiniteAddCommGroup.{v}) : C1 G A :=
  fun _ => A.zero

def add
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    (x y : C1 G A) :
    C1 G A :=
  fun g => A.add (x g) (y g)

def neg
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    (x : C1 G A) :
    C1 G A :=
  fun g => A.neg (x g)

def sub
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    (x y : C1 G A) :
    C1 G A :=
  fun g => A.sub (x g) (y g)

end C1

/-- The inhomogeneous `1`-cocycle equation `z(gh)=z(g)+g•z(h)`. -/
def OneCocycle
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    (ρ : AdditiveAction G A)
    (z : C1 G A) : Prop :=
  ∀ g h : G.Carrier,
    z (G.mul g h) =
      A.add (z g) (ρ.act g (z h))

/-- The inhomogeneous `1`-coboundary equation `z(g)=g•a-a`. -/
def OneCoboundary
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    (ρ : AdditiveAction G A)
    (z : C1 G A) : Prop :=
  ∃ a : A.Carrier,
    ∀ g : G.Carrier,
      z g = A.sub (ρ.act g a) a

/-- Cocycle subtype. -/
structure Z1
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v})
    (ρ : AdditiveAction G A) where
  cochain : C1 G A
  isCocycle : OneCocycle ρ cochain

/-- Coboundary subtype. -/
structure B1
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v})
    (ρ : AdditiveAction G A) where
  cochain : C1 G A
  isCoboundary : OneCoboundary ρ cochain

/-- Every `1`-coboundary is a `1`-cocycle. -/
theorem oneCoboundary_is_oneCocycle
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    {z : C1 G A}
    (hz : OneCoboundary ρ z) :
    OneCocycle ρ z := by
  rcases hz with ⟨a, ha⟩
  intro g h
  calc
    z (G.mul g h)
        = A.sub (ρ.act (G.mul g h) a) a := ha (G.mul g h)
    _ = A.add (A.sub (ρ.act g a) a)
          (ρ.act g (A.sub (ρ.act h a) a)) :=
        ρ.coboundary_cocycle a g h
    _ = A.add (z g) (ρ.act g (z h)) := by
        rw [ha g, ha h]

namespace Z1

def ext
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    {x y : Z1 G A ρ}
    (h : x.cochain = y.cochain) :
    x = y := by
  cases x
  cases y
  cases h
  rfl

def zero
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v})
    (ρ : AdditiveAction G A) :
    Z1 G A ρ where
  cochain := C1.zero G A
  isCocycle := by
    intro g h
    change A.zero = A.add A.zero (ρ.act g A.zero)
    rw [ρ.act_zero, A.add_zero]

def add
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (x y : Z1 G A ρ) :
    Z1 G A ρ where
  cochain := C1.add x.cochain y.cochain
  isCocycle := by
    intro g h
    exact by
      -- This closure law is part of the selected action calculus in this
      -- minimal non-mathlib algebra interface.
      change
        A.add (x.cochain (G.mul g h)) (y.cochain (G.mul g h)) =
          A.add (A.add (x.cochain g) (y.cochain g))
            (ρ.act g (A.add (x.cochain h) (y.cochain h)))
      rw [x.isCocycle g h, y.isCocycle g h, ρ.act_add]
      calc
        A.add
            (A.add (x.cochain g) (ρ.act g (x.cochain h)))
            (A.add (y.cochain g) (ρ.act g (y.cochain h)))
            =
          A.add (A.add (x.cochain g) (y.cochain g))
            (A.add (ρ.act g (x.cochain h)) (ρ.act g (y.cochain h))) := by
              rw [A.add_assoc]
              rw [← A.add_assoc (ρ.act g (x.cochain h))]
              rw [A.add_comm (ρ.act g (x.cochain h)) (y.cochain g)]
              rw [A.add_assoc]
              rw [← A.add_assoc]
        _ =
          A.add (A.add (x.cochain g) (y.cochain g))
            (A.add (ρ.act g (x.cochain h)) (ρ.act g (y.cochain h))) := rfl

def neg
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (x : Z1 G A ρ) :
    Z1 G A ρ where
  cochain := C1.neg x.cochain
  isCocycle := by
    intro g h
    change
      A.neg (x.cochain (G.mul g h)) =
        A.add (A.neg (x.cochain g))
          (ρ.act g (A.neg (x.cochain h)))
    rw [x.isCocycle g h, ρ.act_neg]
    exact A.neg_add (x.cochain g) (ρ.act g (x.cochain h))

end Z1

/-- The coboundary associated to a `0`-cochain `a`. -/
def coboundaryOf
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    (ρ : AdditiveAction G A)
    (a : A.Carrier) :
    C1 G A :=
  fun g => A.sub (ρ.act g a) a

/-- Two cocycles are cohomologous if they differ by a `1`-coboundary. -/
def OneCohomologous
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    (ρ : AdditiveAction G A)
    (x y : Z1 G A ρ) :
    Prop :=
  ∃ a : A.Carrier,
    ∀ g : G.Carrier,
      y.cochain g =
        A.add (x.cochain g) (coboundaryOf ρ a g)

theorem OneCohomologous.refl
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (x : Z1 G A ρ) :
    OneCohomologous ρ x x := by
  refine ⟨A.zero, ?_⟩
  intro g
  unfold coboundaryOf
  rw [ρ.coboundary_zero, A.add_zero]

theorem OneCohomologous.symm
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    {x y : Z1 G A ρ}
    (h : OneCohomologous ρ x y) :
    OneCohomologous ρ y x := by
  rcases h with ⟨a, ha⟩
  refine ⟨A.neg a, ?_⟩
  intro g
  unfold coboundaryOf
  rw [ρ.coboundary_neg, ha g]
  exact (A.add_neg_cancel_right (x.cochain g)
    (A.sub (ρ.act g a) a)).symm

theorem OneCohomologous.trans
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    {x y z : Z1 G A ρ}
    (hxy : OneCohomologous ρ x y)
    (hyz : OneCohomologous ρ y z) :
    OneCohomologous ρ x z := by
  rcases hxy with ⟨a, ha⟩
  rcases hyz with ⟨b, hb⟩
  refine ⟨A.add a b, ?_⟩
  intro g
  calc
    z.cochain g =
        A.add (y.cochain g) (coboundaryOf ρ b g) := hb g
    _ =
        A.add
          (A.add (x.cochain g) (coboundaryOf ρ a g))
          (coboundaryOf ρ b g) := by
          rw [ha g]
    _ =
        A.add (x.cochain g)
          (A.add (coboundaryOf ρ a g)
            (coboundaryOf ρ b g)) := A.add_assoc
          (x.cochain g)
          (coboundaryOf ρ a g)
          (coboundaryOf ρ b g)
    _ =
        A.add (x.cochain g) (coboundaryOf ρ (A.add a b) g) := by
          unfold coboundaryOf
          rw [ρ.coboundary_add]

def cohomologySetoid
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v})
    (ρ : AdditiveAction G A) :
    Setoid (Z1 G A ρ) where
  r := OneCohomologous ρ
  iseqv := {
    refl := OneCohomologous.refl
    symm := by
      intro x y h
      exact OneCohomologous.symm h
    trans := by
      intro x y z hxy hyz
      exact OneCohomologous.trans hxy hyz
  }

/-- First cohomology as cocycles modulo coboundaries. -/
abbrev FiniteH1
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v})
    (ρ : AdditiveAction G A) :
    Type (max u v) :=
  Quotient (cohomologySetoid G A ρ)

namespace FiniteH1

def mk
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (z : Z1 G A ρ) :
    FiniteH1 G A ρ :=
  Quotient.mk (cohomologySetoid G A ρ) z

def zero
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v})
    (ρ : AdditiveAction G A) :
    FiniteH1 G A ρ :=
  mk (Z1.zero G A ρ)

def addZ1
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (x y : Z1 G A ρ) :
    Z1 G A ρ :=
  Z1.add x y

def negZ1
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (x : Z1 G A ρ) :
    Z1 G A ρ :=
  Z1.neg x

theorem addZ1_respects
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    {x x' y y' : Z1 G A ρ}
    (hx : OneCohomologous ρ x x')
    (hy : OneCohomologous ρ y y') :
    OneCohomologous ρ (addZ1 x y) (addZ1 x' y') := by
  rcases hx with ⟨a, ha⟩
  rcases hy with ⟨b, hb⟩
  refine ⟨A.add a b, ?_⟩
  intro g
  unfold addZ1 Z1.add C1.add
  simp only
  calc
    A.add (x'.cochain g) (y'.cochain g)
        =
      A.add
        (A.add (x.cochain g) (coboundaryOf ρ a g))
        (A.add (y.cochain g) (coboundaryOf ρ b g)) := by
          rw [ha g, hb g]
    _ =
      A.add
        (A.add (x.cochain g) (y.cochain g))
        (A.add (coboundaryOf ρ a g)
          (coboundaryOf ρ b g)) := by
          rw [A.add_add_add_comm]
    _ =
      A.add
        (A.add (x.cochain g) (y.cochain g))
        (coboundaryOf ρ (A.add a b) g) := by
          unfold coboundaryOf
          rw [ρ.coboundary_add]

theorem negZ1_respects
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    {x y : Z1 G A ρ}
    (h : OneCohomologous ρ x y) :
    OneCohomologous ρ (negZ1 x) (negZ1 y) := by
  rcases h with ⟨a, ha⟩
  refine ⟨A.neg a, ?_⟩
  intro g
  unfold negZ1 Z1.neg C1.neg
  simp only
  calc
    A.neg (y.cochain g)
        =
      A.neg (A.add (x.cochain g) (A.sub (ρ.act g a) a)) := by
        rw [ha g]
        rfl
    _ =
      A.add (A.neg (x.cochain g))
        (A.neg (A.sub (ρ.act g a) a)) := A.neg_add
          (x.cochain g) (A.sub (ρ.act g a) a)
    _ =
      A.add (A.neg (x.cochain g))
        (A.sub (ρ.act g (A.neg a)) (A.neg a)) := by
        rw [ρ.coboundary_neg]

def add
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (x y : FiniteH1 G A ρ) :
    FiniteH1 G A ρ :=
  Quotient.liftOn₂ x y
    (fun x y => mk (addZ1 x y))
    (by
      intro x y x' y' hx hy
      exact Quotient.sound (addZ1_respects hx hy))

def neg
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (x : FiniteH1 G A ρ) :
    FiniteH1 G A ρ :=
  Quotient.liftOn x
    (fun x => mk (negZ1 x))
    (by
      intro x y h
      exact Quotient.sound (negZ1_respects h))

end FiniteH1

/-- Restriction of `1`-cochains along an action-compatible homomorphism. -/
def resC1
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    (z : C1 G A) :
    C1 H A :=
  fun h => z (φ.hom.toFun h)

/-- Restriction sends `1`-cocycles to `1`-cocycles. -/
theorem restriction_preserves_oneCocycle
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    {z : C1 G A}
    (hz : OneCocycle ρG z) :
    OneCocycle ρH (resC1 φ z) := by
  intro h k
  unfold resC1
  rw [φ.hom.map_mul]
  rw [hz (φ.hom.toFun h) (φ.hom.toFun k)]
  rw [φ.action_compat]

/-- Restriction sends `1`-coboundaries to `1`-coboundaries. -/
theorem restriction_preserves_oneCoboundary
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    {z : C1 G A}
    (hz : OneCoboundary ρG z) :
    OneCoboundary ρH (resC1 φ z) := by
  rcases hz with ⟨a, ha⟩
  refine ⟨a, ?_⟩
  intro h
  unfold resC1 FiniteAddCommGroup.sub
  rw [ha (φ.hom.toFun h)]
  unfold FiniteAddCommGroup.sub
  rw [φ.action_compat]

def resZ1
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    (z : Z1 G A ρG) :
    Z1 H A ρH where
  cochain := resC1 φ z.cochain
  isCocycle := restriction_preserves_oneCocycle φ z.isCocycle

theorem resZ1_respects
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    {x y : Z1 G A ρG}
    (h : OneCohomologous ρG x y) :
    OneCohomologous ρH (resZ1 φ x) (resZ1 φ y) := by
  rcases h with ⟨a, ha⟩
  refine ⟨a, ?_⟩
  intro k
  unfold resZ1 resC1 coboundaryOf
  simp only
  rw [ha (φ.hom.toFun k)]
  unfold coboundaryOf
  rw [φ.action_compat]

/-- Restriction on `FiniteH1`. -/
def resFiniteH1
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG) :
    FiniteH1 G A ρG → FiniteH1 H A ρH :=
  fun c =>
    Quotient.liftOn c
      (fun z => FiniteH1.mk (resZ1 φ z))
      (by
        intro x y h
        exact Quotient.sound (resZ1_respects φ h))

theorem resFiniteH1_id
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    (c : FiniteH1 G A ρ) :
    resFiniteH1 (ActionHom.id ρ) c = c := by
  refine Quotient.inductionOn c ?_
  intro z
  rfl

theorem resFiniteH1_comp
    {K H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρK : AdditiveAction K A}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    (ψ : ActionHom ρK ρH)
    (c : FiniteH1 G A ρG) :
    resFiniteH1 (ActionHom.comp φ ψ) c =
      resFiniteH1 ψ (resFiniteH1 φ c) := by
  refine Quotient.inductionOn c ?_
  intro z
  rfl

theorem resFiniteH1_zero
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG) :
    resFiniteH1 φ (FiniteH1.zero G A ρG) = FiniteH1.zero H A ρH := by
  rfl

theorem resFiniteH1_add
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    (x y : FiniteH1 G A ρG) :
    resFiniteH1 φ (FiniteH1.add x y) =
      FiniteH1.add (resFiniteH1 φ x) (resFiniteH1 φ y) := by
  refine Quotient.inductionOn₂ x y ?_
  intro x y
  rfl

theorem resFiniteH1_neg
    {H G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρH : AdditiveAction H A}
    {ρG : AdditiveAction G A}
    (φ : ActionHom ρH ρG)
    (x : FiniteH1 G A ρG) :
    resFiniteH1 φ (FiniteH1.neg x) =
      FiniteH1.neg (resFiniteH1 φ x) := by
  refine Quotient.inductionOn x ?_
  intro x
  rfl

end GaloisCohomology
end Surface.Arithmetic
