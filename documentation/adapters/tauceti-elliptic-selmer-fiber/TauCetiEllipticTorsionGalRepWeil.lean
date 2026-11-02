/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Upstream copyright and mathematical authors: The Tau Ceti contributors.
Upstream license Apache-2.0; no upstream source copied or modified.
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1. NOT imported into the grwtsk/math v4.34.1 root.
-/
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.WeilPairing.Basic
import TauCeti.NumberTheory.ClassFieldTheory.Local.Duality.Perfect
import TauCeti.NumberTheory.ClassFieldTheory.Brauer.RootsOfUnity

set_option autoImplicit false
noncomputable section

/-!
# The ORIGINAL E[n] as the Galois representation for local Tate duality

Unlike an abstract rank-two proxy, the coefficient of ellipticTorsionGalRep
is literally W.TorsionCoeff n = E[n](Fsep). The action comes from the
original absolute Galois group via the upstream restriction equivalence.
The module is the actual torsion-by-n ZMod n module.

The source supplies a genuine Galois-equivariant Weil pairing
  W.torsionCoeffWeilPairing n hn : E[n] x E[n] -> KummerCoeff F n.
Transporting it along the ORIGINAL KummerCoeff/μ_n dictionary
constructs a TopPairing of genuine finite Galois representations, and
therefore a source-defined morphism E[n] -> tateDual E[n].
Its injectivity is proved from the original Weil nondegeneracy;
surjectivity as a morphism, local Kummer annihilator orthogonality,
compatibility through n, and global Poitou--Tate remain separate gates.

The finite-coefficient local perfectness is already an upstream
theorem. Here it is specialized to this exact E[n] GalRep with the
original Brauer-normalized H²(F,μ_n) trace. No p-adic/complex BSD
statement or freely assigned regulator occurs in the construction.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.EllipticTorsionGalRepWeil

open TauCeti TauCeti.ClassFieldTheory
open CategoryTheory

variable {F : Type} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]
variable (n : ℕ) [NeZero n]

/-- Canonical ZMod n structure on the ACTUAL elliptic torsion coefficient
in the separable closure, not on a chosen two-dimensional model. -/
noncomputable instance ellipticTorsionZModModule :
    Module (ZMod n) (W.TorsionCoeff n) :=
  AddSubgroup.torsionBy.zmodModule

/-- All scalars and torsion coefficients carry the original
discrete topology; this is the continuity required by
TauCeti.ofDiscreteModule. -/
instance ellipticTorsionContinuousZMod :
    ContinuousSMul (ZMod n) (W.TorsionCoeff n) :=
  ⟨continuous_of_discreteTopology⟩

/-- EXACT original E[n] coefficient carrier with the original
Galois action, transported from Gal(Fsep/F) to the absolute Galois
group used by the local Tate duality category. -/
def ellipticTorsionGalRep : GalRep n F :=
  TopRep.res
    (absoluteGaloisGroupRestrictEquiv F :
      Field.absoluteGaloisGroup F →* AbsoluteGaloisGroup F)
    (ofDiscreteModule (ZMod n) (AbsoluteGaloisGroup F) (W.TorsionCoeff n))

/-- No replacement by an isomorphic finite module is performed:
the underlying coefficient type is literally the source E[n]. -/
theorem ellipticTorsionGalRep_carrier :
    (ellipticTorsionGalRep W n).V = W.TorsionCoeff n := rfl

/-- The original source coefficient at this exact n is finite. -/
instance ellipticTorsionGalRep_finite :
    Finite (ellipticTorsionGalRep W n).V :=
  inferInstanceAs (Finite (W.TorsionCoeff n))

/-- The actual original discrete topology survives the Galois
representation functor. -/
instance ellipticTorsionGalRep_discrete :
    DiscreteTopology (ellipticTorsionGalRep W n).V :=
  inferInstanceAs (DiscreteTopology (W.TorsionCoeff n))

/-- Smoothness is inherited from the original CONTINUOUS elliptic
torsion action, not inferred from the mere finiteness of E[n]. -/
theorem ellipticTorsionGalRep_smooth :
    IsSmoothDiscrete (ZMod n) (ellipticTorsionGalRep W n) :=
  (ofDiscreteModule_isSmoothDiscrete
    (ZMod n) (AbsoluteGaloisGroup F) (W.TorsionCoeff n)).res
      (absoluteGaloisGroupRestrictEquiv F).continuous

/-- The exact explicit proof is stored as the Fact instance consumed
by the real upstream local Tate-duality perfectness theorem. -/
instance ellipticTorsionGalRep_smoothFact :
    Fact (IsSmoothDiscrete (ZMod n) (ellipticTorsionGalRep W n)) :=
  ⟨ellipticTorsionGalRep_smooth W n⟩

/-- The Galois operator is literally the transported point action;
its argument is the SAME E[n](Fsep) as in the Selmer Kummer source. -/
@[simp] theorem ellipticTorsionGalRep_action
    (g : Field.absoluteGaloisGroup F) (x : W.TorsionCoeff n) :
    (ellipticTorsionGalRep W n).ρ g x =
      absoluteGaloisGroupRestrictEquiv F g • x := by
  exact
    (ofDiscreteModule_ρ_apply_apply (R := ZMod n)
      (absoluteGaloisGroupRestrictEquiv F g) x).symm.trans
      (ContRepresentation.restrict_apply_apply
        (ofDiscreteModule (ZMod n) (AbsoluteGaloisGroup F) (W.TorsionCoeff n)).ρ
        (absoluteGaloisGroupRestrictEquiv F :
          Field.absoluteGaloisGroup F →* AbsoluteGaloisGroup F)
        g x).symm

/-- Original torsion count, without an inferred Selmer or BSD rank. -/
theorem ellipticTorsionGalRep_card (hn : IsUnit (n : F)) :
    Nat.card (ellipticTorsionGalRep W n).V = n ^ 2 := by
  exact W.natCard_torsionCoeff hn

/-- The ORIGINAL Weil biadditive pairing, transported from the
source KummerCoeff to the upstream canonical μ_n coefficient.
Every additive map is ZMod n-linear on n-torsion modules. -/
private def ellipticWeilBilinear (hn : IsUnit (n : F)) :
    (ellipticTorsionGalRep W n).V →ₗ[ZMod n]
      (ellipticTorsionGalRep W n).V →ₗ[ZMod n] (muNRep n F).V :=
  AddMonoidHom.toZModLinearMap n
    { toFun := fun a =>
        AddMonoidHom.toZModLinearMap n
          ((kummerCoeffEquivMuNRep n F).toAddMonoidHom.comp
            (W.torsionCoeffWeilPairing n hn a))
      map_zero' := by
        ext b
        simp
      map_add' := by
        intro a b
        ext c
        simp [map_add] }

/-- The source Galois-equivariant Weil pairing is now a genuine
TopPairing of exactly the GalRep E[n] coefficient and μ_n. -/
def ellipticWeilTopPairing (hn : IsUnit (n : F)) :
    TopPairing (ellipticTorsionGalRep W n)
      (ellipticTorsionGalRep W n) (muNRep n F) where
  bil := ellipticWeilBilinear W n hn
  cont := continuous_of_discreteTopology
  equivariant g a b := by
    change
      kummerCoeffEquivMuNRep n F
        (W.torsionCoeffWeilPairing n hn
          ((ellipticTorsionGalRep W n).ρ g a)
          ((ellipticTorsionGalRep W n).ρ g b)) =
      (muNRep n F).ρ g
        (kummerCoeffEquivMuNRep n F
          (W.torsionCoeffWeilPairing n hn a b))
    rw [ellipticTorsionGalRep_action W n g a,
      ellipticTorsionGalRep_action W n g b,
      W.torsionCoeffWeilPairing_smul n hn,
      kummerCoeffEquivMuNRep_smul]

/-- Source evaluation, with Weil argument order a then b fixed. -/
theorem ellipticWeilTopPairing_apply (hn : IsUnit (n : F))
    (a b : (ellipticTorsionGalRep W n).V) :
    (ellipticWeilTopPairing W n hn).bil a b =
      kummerCoeffEquivMuNRep n F
        (W.torsionCoeffWeilPairing n hn a b) := by
  rfl

/-- The genuine Weil pairing defines a morphism from the ORIGINAL
elliptic E[n] representation into its exact Tate dual. -/
def ellipticWeilToTateDual (hn : IsUnit (n : F)) :
    ellipticTorsionGalRep W n ⟶ tateDual (ellipticTorsionGalRep W n) :=
  pairingToTateDual (ellipticWeilTopPairing W n hn)

/-- This dual character is exactly b |-> e_n(a,b).
No arbitrary dual basis or selected pairing occurs here. -/
theorem ellipticWeilToTateDual_apply (hn : IsUnit (n : F))
    (a b : (ellipticTorsionGalRep W n).V) :
    tateDualEquiv (ellipticTorsionGalRep W n)
      ((ellipticWeilToTateDual W n hn).hom a) b =
        kummerCoeffEquivMuNRep n F
          (W.torsionCoeffWeilPairing n hn a b) := by
  rw [ellipticWeilToTateDual,
    tateDualEquiv_pairingToTateDual_apply]
  exact ellipticWeilTopPairing_apply W n hn a b

/-- NONDEGENERACY transported to the genuine local Tate dual.
This is the injective half of the E[n] -> E[n]^vee(1) bridge,
not an unproved assertion of surjectivity. -/
theorem ellipticWeilToTateDual_injective (hn : IsUnit (n : F)) :
    Function.Injective (ellipticWeilToTateDual W n hn).hom := by
  intro a b hab
  have hzero : a - b = 0 := by
    apply W.torsionCoeffWeilPairing_nondegenerate n hn
    intro c
    have hchar := congrArg
      (fun f : (tateDual (ellipticTorsionGalRep W n)).V =>
        tateDualEquiv (ellipticTorsionGalRep W n) f c) hab
    rw [ellipticWeilToTateDual_apply W n hn a c,
      ellipticWeilToTateDual_apply W n hn b c] at hchar
    have hpair : W.torsionCoeffWeilPairing n hn a c =
        W.torsionCoeffWeilPairing n hn b c :=
      (kummerCoeffEquivMuNRep n F).injective hchar
    calc
      W.torsionCoeffWeilPairing n hn (a - b) c =
        W.torsionCoeffWeilPairing n hn a c -
          W.torsionCoeffWeilPairing n hn b c := by
            rw [map_sub]
            rfl
      _ = 0 := sub_eq_zero.mpr hpair
  exact sub_eq_zero.mp hzero

/-! The local field theorem is an unconditional specialization
of the EXISTING normalized local Tate duality supplier to this
source-exact finite elliptic representation. It pairs A^dual and
A, not yet A with itself: the separately defined Weil map above
is injective, with full dual isomorphism an open source consumer. -/

variable [CharZero F] [ValuativeRel F] [TopologicalSpace F]
  [IsNonarchimedeanLocalField F]

/-- Actual normalized local trace, with the original Brauer
invariant k/n -> k mod n. -/
def ellipticNormalizedTrace (hn : n ≠ 0) :
    continuousCohomology 2 (muNRep n F) ≃+ ZMod n :=
  h2MuEquivZMod F (Nat.cast_ne_zero.mpr hn).isUnit

/-- Perfectness for the EXACT source elliptic torsion representation,
as a pairing of its true Tate dual with the original E[n].
This does NOT assert Kummer orthogonality or the Weil map's
surjectivity, and does not involve a global rank. -/
theorem ellipticNormalizedLocalTatePerfect (hn : n ≠ 0)
    (i j : ℕ) (hij : i + j = 2) :
    (∀ x : continuousCohomology i (tateDual (ellipticTorsionGalRep W n)),
        (∀ y : continuousCohomology j (ellipticTorsionGalRep W n),
          tateDualityPairing (ellipticTorsionGalRep W n)
            (ellipticNormalizedTrace W n hn) i j hij x y = 0) → x = 0) ∧
      ∀ φ : continuousCohomology j (ellipticTorsionGalRep W n) →+ ZMod n,
        ∃ x : continuousCohomology i (tateDual (ellipticTorsionGalRep W n)),
          ∀ y : continuousCohomology j (ellipticTorsionGalRep W n),
            tateDualityPairing (ellipticTorsionGalRep W n)
              (ellipticNormalizedTrace W n hn) i j hij x y = φ y := by
  exact tateDualityPairing_perfect_mixed F n hn
    (ellipticTorsionGalRep W n) (ellipticNormalizedTrace W n hn)
    (by infer_instance) i j hij

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.EllipticTorsionGalRepWeil
