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
import TauCeti.Algebra.Module.ZMod.Dual
import TauCeti.AlgebraicGeometry.EllipticCurve.Isogeny.MulByInt.Torsion.Structure
import TauCeti.RepresentationTheory.Homological.ContCohomology.CohomologyComparison
import TauCeti.RepresentationTheory.Homological.ContCohomology.ExplicitFunctoriality

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

open TauCeti TauCeti.ClassFieldTheory TauCeti.ContCohomology
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

/-! ## Genuine Weil coefficient self-duality, including SURJECTIVITY

This uses the source elliptic torsion basis and original finite
ZMod-character cardinality theorem, not an assigned E[n] rank.
The argument never chooses a basis for the Galois representation.
-/

/-- Original geometric E[n] over the separable closure has a
two-element ZMod n basis, via the existing elliptic torsion theorem.
This is the ACTUAL coefficient group before the original
W.pointCoeffEquiv identifies it with W.TorsionCoeff n. -/
theorem source_geometric_torsion_basis (hn : IsUnit (n : F)) :
    Nonempty (Module.Basis (Fin 2) (ZMod n)
      (AddSubgroup.torsionBy
        (W⁄(SeparableClosure F)).toAffine.Point (n : ℤ))) := by
  classical
  exact (W⁄(SeparableClosure F)).nonempty_basis_torsionBy n
    hn.natCast_ne_zero_of_algebra

/-- Exact ORIGINAL additive identification, not a new proxy or
chosen abstract two-coordinate representation. -/
def source_geometric_torsion_equiv :
    AddSubgroup.torsionBy
      (W⁄(SeparableClosure F)).toAffine.Point (n : ℤ) ≃+
        (ellipticTorsionGalRep W n).V :=
  AddEquiv.torsionByCongr W.pointCoeffEquiv n

/-- Character cardinality of the SAME elliptic coefficient:
the source cyclic mu_n equivalence and TauCeti's finite ZMod-dual
count show the genuine Tate dual has exactly as many elements. -/
theorem ellipticTateDual_natCard_eq (hn : IsUnit (n : F)) :
    Nat.card (tateDual (ellipticTorsionGalRep W n)).V =
      Nat.card (ellipticTorsionGalRep W n).V := by
  let e : (muNRep n F).V ≃+ ZMod n :=
    (kummerCoeffEquivMuNRep n F).symm.trans
      (kummerCoeffAddEquivZMod hn)
  calc
    Nat.card (tateDual (ellipticTorsionGalRep W n)).V =
        Nat.card ((ellipticTorsionGalRep W n).V →+
          (muNRep n F).V) :=
      Nat.card_congr (tateDualEquiv (ellipticTorsionGalRep W n)).toEquiv
    _ = Nat.card (ellipticTorsionGalRep W n).V :=
      e.natCard_addMonoidHom_zmod
        (fun x => ZModModule.char_nsmul_eq_zero n x)

/-- The Weil map is BIJECTIVE: its injectivity came from actual
elliptic Weil nondegeneracy; source finite duality proves its
domain and codomain have equal cardinalities. Nothing here
assumes local Kummer orthogonality or a BSD theorem. -/
theorem ellipticWeilToTateDual_bijective (hn : IsUnit (n : F)) :
    Function.Bijective (ellipticWeilToTateDual W n hn).hom := by
  let A := ellipticTorsionGalRep W n
  letI : Finite (muNRep n F).V :=
    Finite.of_equiv _ ((kummerCoeffEquivMuNRep n F).symm.trans
      (kummerCoeffAddEquivZMod hn)).symm.toEquiv
  letI : Finite (A.V →+ (muNRep n F).V) :=
    Finite.of_injective _ DFunLike.coe_injective
  letI : Finite (tateDual A).V :=
    Finite.of_injective (tateDualEquiv A)
      (tateDualEquiv A).injective
  exact (Nat.bijective_iff_injective_and_card
      (ellipticWeilToTateDual W n hn).hom).2
    ⟨ellipticWeilToTateDual_injective W n hn,
      (ellipticTateDual_natCard_eq W n hn).symm⟩

/-- Genuine source-defined additive equivalence of elliptic
n-torsion with its Tate dual, preserving the preceding
Weil-character evaluation and Galois-equivariant source morphism.
This does NOT yet identify local Kummer image annihilators. -/
noncomputable def ellipticWeilTateDualAddEquiv
    (hn : IsUnit (n : F)) :
    (ellipticTorsionGalRep W n).V ≃+
      (tateDual (ellipticTorsionGalRep W n)).V :=
  AddEquiv.ofBijective
    (ellipticWeilToTateDual W n hn).hom.toAddMonoidHom
    (ellipticWeilToTateDual_bijective W n hn)

/-- The resulting actual duality equivalence evaluates on b as
the ORIGINAL e_n(a,b), with no argument-order reversal. -/
theorem ellipticWeilTateDualAddEquiv_evaluation
    (hn : IsUnit (n : F))
    (a b : (ellipticTorsionGalRep W n).V) :
    tateDualEquiv (ellipticTorsionGalRep W n)
      (ellipticWeilTateDualAddEquiv W n hn a) b =
        kummerCoeffEquivMuNRep n F
          (W.torsionCoeffWeilPairing n hn a b) := by
  exact ellipticWeilToTateDual_apply W n hn a b

/-! ## Exact ORIGINAL Kummer-H¹ bridge into canonical GalRep cohomology

The source Kummer sequence lives on H¹ of Gal(Fsep/F) with
W.TorsionCoeff n. The named local Tate pairing lives on
continuousCohomology 1 of the ACTUAL GalRep n F.
The canonical group/coefficient equivalences below identify
these exact types; no abstract module may replace the source.
-/

section CanonicalKummerHOne

attribute [local instance] TopRep.distribMulAction

/-- Continuous action on exactly the canonical elliptic
topological representation, using source smooth discreteness. -/
instance ellipticGalRepContinuousAction :
    ContinuousSMul (Field.absoluteGaloisGroup F)
      (ellipticTorsionGalRep W n).V :=
  (isSmoothDiscrete_iff_continuousSMul
    (ellipticTorsionGalRep W n)).1
      (ellipticTorsionGalRep_smooth W n)

/-- Compare the REAL separable-closure H¹ with the H¹ carrier
of the SAME elliptic GalRep over Field.absoluteGaloisGroup.
This uses TauCeti's existing explicitMap1Equiv and source
Galois action. -/
noncomputable def ellipticExplicitHOneEquiv :
    H1 (AbsoluteGaloisGroup F) (W.TorsionCoeff n) ≃+
      H1 (Field.absoluteGaloisGroup F)
        (ellipticTorsionGalRep W n).V := by
  classical
  refine ContCohomology.explicitMap1Equiv
    (absoluteGaloisGroupRestrictEquiv F)
    (AddEquiv.refl (W.TorsionCoeff n))
    continuous_id continuous_id ?_
  intro g a
  change (absoluteGaloisGroupRestrictEquiv F g • a : W.TorsionCoeff n) =
    (ellipticTorsionGalRep W n).ρ g a
  exact (ellipticTorsionGalRep_action W n g a).symm

/-- Canonical continuous degree-one Galois cohomology for the
ACTUAL source E[n] representation. The second equivalence is
TauCeti's original discrete-cochain-to-derived-H¹ comparison. -/
noncomputable def ellipticCanonicalHOneEquiv :
    H1 (AbsoluteGaloisGroup F) (W.TorsionCoeff n) ≃+
      continuousCohomology 1 (ellipticTorsionGalRep W n) :=
  (ellipticExplicitHOneEquiv W n).trans
    ((ellipticTorsionGalRep W n).
      explicitH1AddEquivContinuousCohomologyOfDiscrete)

/-- Original E(F) Kummer map, transported into the SAME
canonical cohomology object that local Tate duality consumes. -/
noncomputable def ellipticCanonicalKummerMap (hn : IsUnit (n : F)) :
    W.toAffine.Point →+
      continuousCohomology 1 (ellipticTorsionGalRep W n) := by
  classical
  exact (ellipticCanonicalHOneEquiv W n).toAddMonoidHom.comp
    (W.kummerMap n hn)

/-- The original point quotient under [n] maps into canonical
cohomology. Its domain is literally E(F)/nE(F). -/
noncomputable def ellipticCanonicalKummerClassMap
    (hn : IsUnit (n : F)) :
    W.toAffine.Point ⧸
      (nsmulAddMonoidHom (α := W.toAffine.Point) n).range →+
        continuousCohomology 1 (ellipticTorsionGalRep W n) := by
  classical
  exact (ellipticCanonicalHOneEquiv W n).toAddMonoidHom.comp
    (W.kummerClassMap n hn)

/-- The canonical Kummer map is genuinely injective on the
original point quotient, by the source Kummer exactness. -/
theorem ellipticCanonicalKummerClassMap_injective
    (hn : IsUnit (n : F)) :
    Function.Injective (ellipticCanonicalKummerClassMap W n hn) := by
  classical
  exact (ellipticCanonicalHOneEquiv W n).injective.comp
    (W.kummerClassMap_injective n hn)

/-- The source image is now a subgroup in the canonical
continuous H¹, not an invented abstract local condition. -/
noncomputable def ellipticCanonicalKummerImage
    (hn : IsUnit (n : F)) :
    AddSubgroup (continuousCohomology 1 (ellipticTorsionGalRep W n)) :=
  (ellipticCanonicalKummerMap W n hn).range

/-- Membership uses a LITERAL original rational elliptic
point and its transported source Kummer connecting class. -/
theorem mem_ellipticCanonicalKummerImage_iff
    (hn : IsUnit (n : F))
    (x : continuousCohomology 1 (ellipticTorsionGalRep W n)) :
    x ∈ ellipticCanonicalKummerImage W n hn ↔
      ∃ P : W.toAffine.Point, ellipticCanonicalKummerMap W n hn P = x := by
  constructor
  · intro hx
    exact hx
  · intro hx
    exact hx

/-- The exact source H¹(E[n]) -> H¹(E)[n] map transported
to the canonical continuous H¹. The codomain is the
ORIGINAL Weil-Chatelet n-torsion, not a replacement model. -/
noncomputable def ellipticCanonicalWeilChateletQuotient :
    continuousCohomology 1 (ellipticTorsionGalRep W n) →+
      AddSubgroup.torsionBy
        (H1 (AbsoluteGaloisGroup F) W.PointCoeff) n :=
  (W.torsionCoeffInclH1 n).comp
    (ellipticCanonicalHOneEquiv W n).symm.toAddMonoidHom

/-- The target of the real Kummer exact sequence is reached:
surjectivity follows from the source's
WeierstrassCurve.torsionCoeffInclH1_surjective. -/
theorem ellipticCanonicalWeilChateletQuotient_surjective
    (hn : IsUnit (n : F)) :
    Function.Surjective
      (ellipticCanonicalWeilChateletQuotient W n) := by
  exact (W.torsionCoeffInclH1_surjective n hn).comp
    (ellipticCanonicalHOneEquiv W n).symm.surjective

/-- The source quotient Kummer map at a genuine rational point
agrees exactly with the direct canonical Kummer map. -/
theorem ellipticCanonicalKummerClassMap_mk
    (hn : IsUnit (n : F)) (P : W.toAffine.Point) :
    ellipticCanonicalKummerClassMap W n hn (QuotientAddGroup.mk P) =
      ellipticCanonicalKummerMap W n hn P := by
  classical
  simp only [ellipticCanonicalKummerClassMap,
    ellipticCanonicalKummerMap, AddMonoidHom.comp_apply,
    W.kummerClassMap_mk]

/-- The actual canonical Kummer image is exactly the image
of the injective original E(F)/nE(F) Kummer map. -/
theorem ellipticCanonicalKummerImage_eq_classMapRange
    (hn : IsUnit (n : F)) :
    ellipticCanonicalKummerImage W n hn =
      (ellipticCanonicalKummerClassMap W n hn).range := by
  classical
  ext x
  constructor
  · rintro ⟨P, hP⟩
    exact ⟨QuotientAddGroup.mk P,
      (ellipticCanonicalKummerClassMap_mk W n hn P).trans hP⟩
  · rintro ⟨q, hq⟩
    obtain ⟨P, rfl⟩ := QuotientAddGroup.mk_surjective q
    exact ⟨P, (ellipticCanonicalKummerClassMap_mk W n hn P).symm.trans hq⟩

/-- The ACTUAL full Kummer short exact sequence in canonical
GalRep continuous cohomology: the image of the real elliptic
point-quotient map is the kernel of the genuine original
H¹(F,E[n]) -> H¹(F,E)[n] coefficient comparison. -/
theorem ellipticCanonicalKummerClassMap_range_eq_ker
    (hn : IsUnit (n : F)) :
    (ellipticCanonicalKummerClassMap W n hn).range =
      (ellipticCanonicalWeilChateletQuotient W n).ker := by
  classical
  have hsource : (W.kummerClassMap n hn).range =
      (W.torsionCoeffInclH1 n).ker :=
    (AddMonoidHom.exact_iff).mp
      (W.exact_kummerClassMap_torsionCoeffInclH1 n hn)
  ext y
  constructor
  · rintro ⟨a, rfl⟩
    change W.torsionCoeffInclH1 n
      ((ellipticCanonicalHOneEquiv W n).symm
        ((ellipticCanonicalHOneEquiv W n)
          (W.kummerClassMap n hn a))) = 0
    rw [AddEquiv.symm_apply_apply]
    change W.kummerClassMap n hn a ∈ (W.torsionCoeffInclH1 n).ker
    rw [← hsource]
    exact ⟨a, rfl⟩
  · intro hy
    change W.torsionCoeffInclH1 n
      ((ellipticCanonicalHOneEquiv W n).symm y) = 0 at hy
    have hm : (ellipticCanonicalHOneEquiv W n).symm y ∈
        (W.kummerClassMap n hn).range := by
      rw [hsource]
      exact hy
    obtain ⟨a, ha⟩ := hm
    refine ⟨a, ?_⟩
    change (ellipticCanonicalHOneEquiv W n)
      (W.kummerClassMap n hn a) = y
    rw [ha, AddEquiv.apply_symm_apply]

/-- Full exactness in the SAME canonical continuous H¹:
the genuine Kummer image is the coefficient-kernel local condition.
This is NOT YET the orthogonal annihilator comparison; that
requires the Poincare/Kummer cup adjunction. -/
theorem ellipticCanonicalKummerImage_eq_ker
    (hn : IsUnit (n : F)) :
    ellipticCanonicalKummerImage W n hn =
      (ellipticCanonicalWeilChateletQuotient W n).ker := by
  rw [ellipticCanonicalKummerImage_eq_classMapRange W n hn,
    ellipticCanonicalKummerClassMap_range_eq_ker W n hn]

end CanonicalKummerHOne

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

/-! ## The SOURCE-defined normalized (1,1) elliptic Weil cup

In the same canonical H¹ category, transport x by the actual
Weil coefficient morphism E[n] -> Hom(E[n],mu_n), then apply the
original TauCeti Tate-duality pairing with its original Brauer
normalized trace. This constructs the exact pairing to which
the missing Kummer orthogonality comparison must refer.
-/

/-- This is the real cup/Weil/Brauer-normalized pairing on
canonical H¹(F,E[n]), with original argument order (x,y).
It is NOT an assumed perfect form or a chosen Gram matrix. -/
noncomputable def ellipticNormalizedWeilCup
    (hn : IsUnit (n : F))
    (x y : continuousCohomology 1 (ellipticTorsionGalRep W n)) :
    ZMod n :=
  tateDualityPairing (ellipticTorsionGalRep W n)
    (ellipticNormalizedTrace W n (NeZero.ne n))
    1 1 (by omega)
    (TauCeti.ContinuousCohomology.coeffMap
      (ellipticWeilToTateDual W n hn) 1 x)
    y

/-- Exact finite Kummer-annihilator membership is equivalently
vanishing against all ORIGINAL rational-point Kummer classes.
No arithmetic vanishing or orthogonality is asserted here. -/
theorem ellipticNormalizedWeilCup_annihilatesKummer_iff
    (hn : IsUnit (n : F))
    (x : continuousCohomology 1 (ellipticTorsionGalRep W n)) :
    (∀ y, y ∈ ellipticCanonicalKummerImage W n hn →
      ellipticNormalizedWeilCup W n hn x y = 0) ↔
    (∀ P : W.toAffine.Point,
      ellipticNormalizedWeilCup W n hn x
        (ellipticCanonicalKummerMap W n hn P) = 0) := by
  constructor
  · intro h P
    exact h _ ⟨P, rfl⟩
  · intro h y hy
    obtain ⟨P, hp⟩ := hy
    rw [← hp]
    exact h P

/-! ## Construct the ORIGINAL abelian n-torsion local cup DESCENT

Unlike the earlier conditional theorem, this constructs a
biadditive form on the ACTUAL H¹(F,E)[n] and E(F)/nE(F)
from the original normalized finite Weil cup. The sole
remaining GEOMETRIC input is that the two genuine
Kummer classes cup to zero. This is not inferred from
finite Weil nondegeneracy or declared by a new axiom.

Fisher's divisor/Poincare construction provides the
separate identification of this descended pairing with
the classical abelian Tate pairing and fixes its sign.
The chosen quotient section here is NOT a chosen pairing;
its result is proved independent of that section.
-/

/-- The ORIGINAL normalized Weil cup, now bundled into the
two additive-homomorphism slots required for source Kummer
descent. The two additivity proofs use upstream true
Tate-duality pairing bilinearity. -/
noncomputable def ellipticNormalizedWeilCupHom
    (hn : IsUnit (n : F)) :
    continuousCohomology 1 (ellipticTorsionGalRep W n) →+
      continuousCohomology 1 (ellipticTorsionGalRep W n) →+ ZMod n := by
  refine {
    toFun := fun x =>
      { toFun := fun y => ellipticNormalizedWeilCup W n hn x y
        map_zero' := by
          simp [ellipticNormalizedWeilCup, tateDualityPairing_zero_right]
        map_add' := by
          intro y z
          exact tateDualityPairing_add_right _ _ 1 1 (by omega)
            _ y z }
    map_zero' := ?_
    map_add' := ?_
  }
  · apply AddMonoidHom.ext
    intro y
    change ellipticNormalizedWeilCup W n hn 0 y = 0
    simp [ellipticNormalizedWeilCup, tateDualityPairing_zero_left]
  · intro x x'
    apply AddMonoidHom.ext
    intro y
    change ellipticNormalizedWeilCup W n hn (x + x') y =
      ellipticNormalizedWeilCup W n hn x y +
      ellipticNormalizedWeilCup W n hn x' y
    unfold ellipticNormalizedWeilCup
    rw [map_add, tateDualityPairing_add_left]

/-- The original Kummer isotropy is a statement about
genuine rational elliptic points and the SOURCE finite
Weil cup, not arbitrary subgroup elements. -/
def OriginalKummerCupIsotropic (hn : IsUnit (n : F)) : Prop :=
  ∀ P Q : W.toAffine.Point,
    ellipticNormalizedWeilCup W n hn
      (ellipticCanonicalKummerMap W n hn P)
      (ellipticCanonicalKummerMap W n hn Q) = 0

/-- A SOURCE-TYPED original theta/period-index obstruction
would discharge the remaining Kummer isotropy from TWO
specific geometric identities: vanishing on rational Kummer
classes and its exact Weil-cup polarization identity.
These geometric identities are not yet proved by the pinned
Tau Ceti source and are retained as independent premises.
No chosen theta/regulator is asserted to exist here. -/
theorem originalThetaPolarization_implies_KummerIsotropy
    (hn : IsUnit (n : F))
    (theta : continuousCohomology 1 (ellipticTorsionGalRep W n) → ZMod n)
    (hzero : ∀ P : W.toAffine.Point,
      theta (ellipticCanonicalKummerMap W n hn P) = 0)
    (hpolar : ∀ (x : continuousCohomology 1
          (ellipticTorsionGalRep W n)) (P : W.toAffine.Point),
      ellipticNormalizedWeilCup W n hn x
          (ellipticCanonicalKummerMap W n hn P) =
        theta (x + ellipticCanonicalKummerMap W n hn P) -
        theta x - theta (ellipticCanonicalKummerMap W n hn P)) :
    OriginalKummerCupIsotropic W n hn := by
  intro P Q
  calc
    ellipticNormalizedWeilCup W n hn
        (ellipticCanonicalKummerMap W n hn P)
        (ellipticCanonicalKummerMap W n hn Q) =
      theta (ellipticCanonicalKummerMap W n hn P +
          ellipticCanonicalKummerMap W n hn Q) -
        theta (ellipticCanonicalKummerMap W n hn P) -
        theta (ellipticCanonicalKummerMap W n hn Q) :=
          hpolar _ Q
    _ = 0 := by
      rw [← map_add, hzero (P + Q), hzero P, hzero Q]
      simp

/-- Original point-level isotropy extends to the actual
E(F)/nE(F) quotient by exact Kummer representative maps. -/
theorem quotientKummerCup_isotropic
    (hn : IsUnit (n : F))
    (hisotropic : OriginalKummerCupIsotropic W n hn) :
    ∀ a b : W.toAffine.Point ⧸
        (nsmulAddMonoidHom (α := W.toAffine.Point) n).range,
      ellipticNormalizedWeilCup W n hn
        (ellipticCanonicalKummerClassMap W n hn a)
        (ellipticCanonicalKummerClassMap W n hn b) = 0 := by
  intro a b
  obtain ⟨P, rfl⟩ := QuotientAddGroup.mk_surjective a
  obtain ⟨Q, rfl⟩ := QuotientAddGroup.mk_surjective b
  rw [ellipticCanonicalKummerClassMap_mk W n hn,
    ellipticCanonicalKummerClassMap_mk W n hn]
  exact hisotropic P Q

/-- An entirely source-defined abelian local cup pairing
`H¹(F,E)[n] × E(F)/nE(F) → ZMod n`.
It uses the genuine H¹(E[n]) quotient and finite cup.
It is CONDITIONAL on the geometric Kummer isotropy and
does not yet claim identification with the independent
divisor/Poincare Tate pairing or its nondegeneracy. -/
noncomputable def ellipticAbelianCupDescent
    (hn : IsUnit (n : F))
    (hisotropic : OriginalKummerCupIsotropic W n hn) :
    AddSubgroup.torsionBy
      (H1 (AbsoluteGaloisGroup F) W.PointCoeff) n →+
      (W.toAffine.Point ⧸
        (nsmulAddMonoidHom (α := W.toAffine.Point) n).range) →+ ZMod n := by
  classical
  let q := ellipticCanonicalWeilChateletQuotient W n
  let δ := ellipticCanonicalKummerClassMap W n hn
  let B := ellipticNormalizedWeilCupHom W n hn
  let s : (AddSubgroup.torsionBy
      (H1 (AbsoluteGaloisGroup F) W.PointCoeff) n) →
      continuousCohomology 1 (ellipticTorsionGalRep W n) :=
    fun a => Classical.choose
      (ellipticCanonicalWeilChateletQuotient_surjective W n hn a)
  have hs : ∀ a, q (s a) = a :=
    fun a => Classical.choose_spec
      (ellipticCanonicalWeilChateletQuotient_surjective W n hn a)
  have hker : δ.range = q.ker := by
    exact ellipticCanonicalKummerClassMap_range_eq_ker W n hn
  have hiso := quotientKummerCup_isotropic W n hn hisotropic
  have hvanish : ∀ k, q k = 0 → ∀ p, B k (δ p) = 0 := by
    intro k hk p
    have hrange : k ∈ δ.range := by
      rw [hker]
      exact hk
    obtain ⟨a, ha⟩ := hrange
    rw [← ha]
    exact hiso a p
  refine {
    toFun := fun a => (B (s a)).comp δ
    map_zero' := ?_
    map_add' := ?_
  }
  · apply AddMonoidHom.ext
    intro p
    change B (s 0) (δ p) = 0
    exact hvanish _ (by simpa using hs 0) p
  · intro a b
    apply AddMonoidHom.ext
    intro p
    change B (s (a+b)) (δ p) =
      B (s a) (δ p) + B (s b) (δ p)
    have hk : q (s (a+b) - s a - s b) = 0 := by
      rw [map_sub, map_sub, hs, hs, hs]
      abel
    have hv := hvanish _ hk p
    have hh : B (s (a+b)) (δ p) -
        B (s a) (δ p) - B (s b) (δ p) = 0 := by
      simpa only [map_sub, AddMonoidHom.sub_apply] using hv
    apply sub_eq_zero.mp
    calc
      B (s (a+b)) (δ p) -
          (B (s a) (δ p) + B (s b) (δ p)) =
        B (s (a+b)) (δ p) -
          B (s a) (δ p) - B (s b) (δ p) := by abel
      _ = 0 := hh

/-- The resulting genuine quotient pairing has the EXACT
positive-sign finite-cup Kummer comparison by its
source-derived definition. The independent divisor
Tate identification remains to be proved. -/
theorem ellipticAbelianCupDescent_lift
    (hn : IsUnit (n : F))
    (hisotropic : OriginalKummerCupIsotropic W n hn)
    (x : continuousCohomology 1 (ellipticTorsionGalRep W n))
    (P : W.toAffine.Point) :
    ellipticAbelianCupDescent W n hn hisotropic
        (ellipticCanonicalWeilChateletQuotient W n x)
        (QuotientAddGroup.mk P) =
      ellipticNormalizedWeilCup W n hn x
        (ellipticCanonicalKummerMap W n hn P) := by
  classical
  let q := ellipticCanonicalWeilChateletQuotient W n
  let δ := ellipticCanonicalKummerClassMap W n hn
  let B := ellipticNormalizedWeilCupHom W n hn
  let s := fun a => Classical.choose
    (ellipticCanonicalWeilChateletQuotient_surjective W n hn a)
  have hs : ∀ a, q (s a) = a :=
    fun a => Classical.choose_spec
      (ellipticCanonicalWeilChateletQuotient_surjective W n hn a)
  have hq : q (s (q x) - x) = 0 := by
    rw [map_sub, hs]
    exact sub_self _
  have hker : δ.range = q.ker :=
    ellipticCanonicalKummerClassMap_range_eq_ker W n hn
  have hrange : s (q x) - x ∈ δ.range := by
    rw [hker]
    exact hq
  obtain ⟨a, ha⟩ := hrange
  have hzero := quotientKummerCup_isotropic W n hn hisotropic
    a (QuotientAddGroup.mk P)
  have hp : B (s (q x) - x) (δ (QuotientAddGroup.mk P)) = 0 := by
    rw [← ha]
    exact hzero
  have heq : B (s (q x)) (δ (QuotientAddGroup.mk P)) =
      B x (δ (QuotientAddGroup.mk P)) := by
    have hh : B (s (q x)) (δ (QuotientAddGroup.mk P)) -
          B x (δ (QuotientAddGroup.mk P)) = 0 := by
      simpa only [map_sub, AddMonoidHom.sub_apply] using hp
    exact sub_eq_zero.mp hh
  simpa only [ellipticAbelianCupDescent, AddMonoidHom.comp_apply,
      ellipticCanonicalKummerClassMap_mk W n hn] using heq

/-! ## Local Kummer annihilator: EXACT source-typed arithmetic frontier

The coefficient, canonical H¹, Kummer subgroup, quotient to the
original n-torsion Weil-Chatelet H¹, and normalized Weil-cup pairing
are all concrete source objects. The only external arithmetic
suppliers remaining are:
* the REAL local abelian Tate pairing on that actual Weil-Chatelet
  n-torsion and the ORIGINAL point quotient; and
* the Poincare/Kummer connecting-map cup adjunction with its ONE
  source-fixed global sign (plus or minus).

The following theorem proves the desired membership equivalence
from precisely those supplier statements. Neither supplier is
defined by the desired annihilator equality. They are separate
nontrivial arithmetic proof obligations.
-/

/-- Fully SOURCE-TYPED local annihilator consequence.

The `abelianTate` homomorphism is required on the ACTUAL
Weil-Chatelet torsion and point quotient, not on a chosen vector
space. The source must prove it separates the actual quotient
and that the Kummer connecting-map/cup adjunction holds with
one consistent sign `sign = 1` or `sign = -1`. This theorem
is conditional until those two *arithmetic* proofs are supplied,
and never asserts a completed elliptic local Tate duality. -/
theorem ellipticKummer_orthogonal_iff_of_localAbelianTate
    (hn : IsUnit (n : F))
    (abelianTate :
      AddSubgroup.torsionBy
        (H1 (AbsoluteGaloisGroup F) W.PointCoeff) n →+
      (W.toAffine.Point ⧸
        (nsmulAddMonoidHom (α := W.toAffine.Point) n).range) →+ ZMod n)
    (sign : ℤ) (hsign : sign = 1 ∨ sign = -1)
    (hconnecting :
      ∀ x : continuousCohomology 1 (ellipticTorsionGalRep W n),
        ∀ P : W.toAffine.Point,
          ellipticNormalizedWeilCup W n hn x
            (ellipticCanonicalKummerMap W n hn P) =
            sign • abelianTate
              (ellipticCanonicalWeilChateletQuotient W n x)
              (QuotientAddGroup.mk P))
    (hseparating :
      ∀ q : AddSubgroup.torsionBy
          (H1 (AbsoluteGaloisGroup F) W.PointCoeff) n,
        (∀ P : W.toAffine.Point,
          abelianTate q (QuotientAddGroup.mk P) = 0) → q = 0)
    (x : continuousCohomology 1 (ellipticTorsionGalRep W n)) :
    x ∈ ellipticCanonicalKummerImage W n hn ↔
      ∀ P : W.toAffine.Point,
        ellipticNormalizedWeilCup W n hn x
          (ellipticCanonicalKummerMap W n hn P) = 0 := by
  rw [ellipticCanonicalKummerImage_eq_ker W n hn]
  change ellipticCanonicalWeilChateletQuotient W n x = 0 ↔ _
  constructor
  · intro hx P
    rw [hconnecting x P, hx]
    simp
  · intro hx
    apply hseparating
    intro P
    have hp := hx P
    rw [hconnecting x P] at hp
    rcases hsign with hplus | hminus
    · rw [hplus] at hp
      simpa using hp
    · rw [hminus] at hp
      simpa using hp

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.EllipticTorsionGalRepWeil
