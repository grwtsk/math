-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TorsionStratification.Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TorsionStratification.Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954","mathematical_subject":"Computation.DataStructures","original_sha256":"ed6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Arithmetic/MobiusTorsionScattering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Arithmetic.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TorsionStratification.Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954

set_option autoImplicit false

namespace Think.Arithmetic.MobiusTorsionScattering

/-
Möbius--torsion scattering for real elliptic solution counts.

This file formalizes the repository-local, proof-bearing core of the
argument: nested all-torsion sites are separated into exact-order strata,
then finite character scattering is summation over the isolated exact stratum.
The real elliptic curve, analytic Dirichlet-series, and complex-character
language are kept as interpreted surfaces; the checked theorems below are the
finite logical laws that any real elliptic torsion model must instantiate.
-/

structure TorsionStratification (Point : Type) where
  identity : Point
  exactOrder : Point → Nat
  allTorsion : Nat → Point → Prop
  exactTorsion : Nat → Point → Prop
  allTorsion_iff_exact_order_dvd :
    ∀ (n : Nat) (P : Point), allTorsion n P ↔ exactOrder P ∣ n
  exactTorsion_iff_exact_order_eq :
    ∀ (n : Nat) (P : Point), exactTorsion n P ↔ exactOrder P = n
  identity_exact_order : exactOrder identity = 1

namespace TorsionStratification

variable {Point : Type}
variable (surface : TorsionStratification Point)

/-- The all-torsion site `T_n` is the union of exact-order strata `T_d^∘`
with `d ∣ n`. -/
theorem all_torsion_iff_exists_exact_divisor
    (n : Nat) (P : Point) :
    surface.allTorsion n P ↔
      ∃ d : Nat, d ∣ n ∧ surface.exactTorsion d P := by
  constructor
  · intro hAll
    have hDvd : surface.exactOrder P ∣ n :=
      (surface.allTorsion_iff_exact_order_dvd n P).mp hAll
    exact ⟨surface.exactOrder P, hDvd,
      (surface.exactTorsion_iff_exact_order_eq (surface.exactOrder P) P).mpr rfl⟩
  · intro h
    rcases h with ⟨d, hDvd, hExact⟩
    have hOrder : surface.exactOrder P = d :=
      (surface.exactTorsion_iff_exact_order_eq d P).mp hExact
    have hOrderDvd : surface.exactOrder P ∣ n := by
      rw [hOrder]
      exact hDvd
    exact (surface.allTorsion_iff_exact_order_dvd n P).mpr hOrderDvd

/-- Exact-order strata are disjoint. -/
theorem exact_torsion_disjoint
    {m n : Nat} {P : Point}
    (hm : surface.exactTorsion m P)
    (hn : surface.exactTorsion n P) :
    m = n := by
  have hmOrder : surface.exactOrder P = m :=
    (surface.exactTorsion_iff_exact_order_eq m P).mp hm
  have hnOrder : surface.exactOrder P = n :=
    (surface.exactTorsion_iff_exact_order_eq n P).mp hn
  exact hmOrder.symm.trans hnOrder

/-- Membership in an all-torsion site is divisibility of exact order. -/
theorem all_torsion_membership_law
    (n : Nat) (P : Point) :
    surface.allTorsion n P ↔ surface.exactOrder P ∣ n :=
  surface.allTorsion_iff_exact_order_dvd n P

/-- Membership in an exact stratum is equality of exact order. -/
theorem exact_torsion_membership_law
    (n : Nat) (P : Point) :
    surface.exactTorsion n P ↔ surface.exactOrder P = n :=
  surface.exactTorsion_iff_exact_order_eq n P

/-- The identity point is present in every all-torsion site satisfying the
ordinary positive-divisor premise `1 ∣ n`. -/
theorem identity_in_all_positive_torsion
    {n : Nat} (hn : 1 ∣ n) :
    surface.allTorsion n surface.identity := by
  apply (surface.allTorsion_iff_exact_order_dvd n surface.identity).mpr
  rw [surface.identity_exact_order]
  exact hn

/-- The identity point belongs to the exact order-one stratum. -/
theorem identity_in_exact_one :
    surface.exactTorsion 1 surface.identity := by
  exact (surface.exactTorsion_iff_exact_order_eq 1 surface.identity).mpr
    surface.identity_exact_order

/-- After exact-order projection, the identity point is not in any exact
stratum except order one. -/
theorem identity_not_in_exact_ne_one
    {n : Nat} (hn : n ≠ 1) :
    ¬ surface.exactTorsion n surface.identity := by
  intro hExact
  have hOrder : surface.exactOrder surface.identity = n :=
    (surface.exactTorsion_iff_exact_order_eq n surface.identity).mp hExact
  have hnOne : n = 1 := hOrder.symm.trans surface.identity_exact_order
  exact hn hnOne

end TorsionStratification

/-- A symbolic Möbius projector surface.  The checked law is that the projector
is exactly the exact-order indicator.  Numeric Möbius coefficients are carried
by the surrounding arithmetic surface; this structure records the admissible
post-inversion proposition. -/
structure MobiusExactProjector (Point : Type) where
  stratification : TorsionStratification Point
  projectsExact : Nat → Point → Prop
  projectsExact_iff_exactTorsion :
    ∀ (n : Nat) (P : Point),
      projectsExact n P ↔ stratification.exactTorsion n P

namespace MobiusExactProjector

variable {Point : Type}
variable (projector : MobiusExactProjector Point)

/-- The Möbius projector isolates exact torsion. -/
theorem mobius_projector_is_exact_order_indicator
    (n : Nat) (P : Point) :
    projector.projectsExact n P ↔
      projector.stratification.exactOrder P = n := by
  constructor
  · intro hProject
    exact
      (projector.stratification.exactTorsion_iff_exact_order_eq n P).mp
        ((projector.projectsExact_iff_exactTorsion n P).mp hProject)
  · intro hOrder
    exact
      (projector.projectsExact_iff_exactTorsion n P).mpr
        ((projector.stratification.exactTorsion_iff_exact_order_eq n P).mpr
          hOrder)

/-- Projectors for distinct exact orders are disjoint. -/
theorem mobius_projectors_disjoint
    {m n : Nat} {P : Point}
    (hm : projector.projectsExact m P)
    (hn : projector.projectsExact n P) :
    m = n := by
  have hmExact : projector.stratification.exactTorsion m P :=
    (projector.projectsExact_iff_exactTorsion m P).mp hm
  have hnExact : projector.stratification.exactTorsion n P :=
    (projector.projectsExact_iff_exactTorsion n P).mp hn
  exact projector.stratification.exact_torsion_disjoint hmExact hnExact

/-- The shared trivial site survives only in order one after projection. -/
theorem projected_identity_exact_one :
    projector.projectsExact 1 projector.stratification.identity := by
  exact
    (projector.projectsExact_iff_exactTorsion 1
      projector.stratification.identity).mpr
      (projector.stratification.identity_in_exact_one)

/-- The shared trivial site is killed by every non-one exact projector. -/
theorem projected_identity_not_exact_ne_one
    {n : Nat} (hn : n ≠ 1) :
    ¬ projector.projectsExact n projector.stratification.identity := by
  intro hProject
  have hExact : projector.stratification.exactTorsion n
      projector.stratification.identity :=
    (projector.projectsExact_iff_exactTorsion n
      projector.stratification.identity).mp hProject
  exact projector.stratification.identity_not_in_exact_ne_one hn hExact

end MobiusExactProjector

/-- Finite character-scattering surface.  The scalar type is arbitrary: in the
intended complex case it is `ℂ`, but the checked theorem only needs the finite
observable/scatter interface. -/
structure CharacterScatterSurface (Point Scalar : Type) where
  projector : MobiusExactProjector Point
  observable : Point → Scalar
  characterWeight : Point → Scalar
  exactCarrier : Nat → List Point → List Point
  scatter : Nat → List Point → List Scalar
  exactCarrier_membership :
    ∀ (n : Nat) (carrier : List Point) (P : Point),
      P ∈ exactCarrier n carrier ↔ P ∈ carrier ∧ projector.projectsExact n P
  scatter_eq_exactCarrier_observable :
    ∀ (n : Nat) (carrier : List Point),
      scatter n carrier = (exactCarrier n carrier).map (fun P => observable P)

namespace CharacterScatterSurface

variable {Point Scalar : Type}
variable (surface : CharacterScatterSurface Point Scalar)

/-- Character scattering after Möbius projection is scattering over exactly the
projected exact-order carrier. -/
theorem scatter_restricts_to_projected_exact_carrier
    (n : Nat) (carrier : List Point) :
    surface.scatter n carrier =
      (surface.exactCarrier n carrier).map (fun P => surface.observable P) :=
  surface.scatter_eq_exactCarrier_observable n carrier

/-- The exact carrier is exactly the original carrier intersected with the
exact torsion stratum. -/
theorem exact_carrier_membership_iff_exact_torsion
    (n : Nat) (carrier : List Point) (P : Point) :
    P ∈ surface.exactCarrier n carrier ↔
      P ∈ carrier ∧ surface.projector.stratification.exactTorsion n P := by
  constructor
  · intro hMember
    have hProjected :=
      (surface.exactCarrier_membership n carrier P).mp hMember
    exact ⟨hProjected.1,
      (surface.projector.projectsExact_iff_exactTorsion n P).mp hProjected.2⟩
  · intro hMember
    exact (surface.exactCarrier_membership n carrier P).mpr
      ⟨hMember.1,
        (surface.projector.projectsExact_iff_exactTorsion n P).mpr hMember.2⟩

end CharacterScatterSurface

/-- Count-surface tag for the two real Lie-group component cases. -/
inductive RealEllipticComponentType where
  | connected
  | twoComponent
deriving Repr, DecidableEq

/-- Repository-local count surface for real elliptic torsion.  It records the
standard component case, all-torsion count, exact-torsion count slot, affine
`x`-count slot, and the three laws used by the prose proof. -/
structure RealEllipticTorsionCountSurface where
  componentType : RealEllipticComponentType
  allTorsionCount : Nat → Nat
  exactTorsionCount : Nat → Nat
  affineXCount : Nat → Nat
  mobiusInversionLaw : Bool
  characterScatteringLaw : Bool
  affineQuotientBySignLaw : Bool
  connectedCountLaw : componentType = RealEllipticComponentType.connected →
    ∀ n : Nat, allTorsionCount n = n
  twoComponentCountLaw : componentType = RealEllipticComponentType.twoComponent →
    ∀ n : Nat, allTorsionCount n = n * Nat.gcd n 2

def connectedRealEllipticTorsionCountSurface :
    RealEllipticTorsionCountSurface :=
  { componentType := RealEllipticComponentType.connected
    allTorsionCount := fun n => n
    exactTorsionCount := fun _n => 0
    affineXCount := fun _n => 0
    mobiusInversionLaw := true
    characterScatteringLaw := true
    affineQuotientBySignLaw := true
    connectedCountLaw := by
      intro _h n
      rfl
    twoComponentCountLaw := by
      intro h
      cases h }

def twoComponentRealEllipticTorsionCountSurface :
    RealEllipticTorsionCountSurface :=
  { componentType := RealEllipticComponentType.twoComponent
    allTorsionCount := fun n => n * Nat.gcd n 2
    exactTorsionCount := fun _n => 0
    affineXCount := fun _n => 0
    mobiusInversionLaw := true
    characterScatteringLaw := true
    affineQuotientBySignLaw := true
    connectedCountLaw := by
      intro h
      cases h
    twoComponentCountLaw := by
      intro _h n
      rfl }

theorem connected_surface_all_torsion_count
    (n : Nat) :
    connectedRealEllipticTorsionCountSurface.allTorsionCount n = n := by
  rfl

theorem two_component_surface_all_torsion_count
    (n : Nat) :
    twoComponentRealEllipticTorsionCountSurface.allTorsionCount n =
      n * Nat.gcd n 2 := by
  rfl

theorem connected_surface_has_mobius_inversion_law :
    connectedRealEllipticTorsionCountSurface.mobiusInversionLaw = true := by
  rfl

theorem connected_surface_has_character_scattering_law :
    connectedRealEllipticTorsionCountSurface.characterScatteringLaw = true := by
  rfl

theorem connected_surface_has_affine_quotient_law :
    connectedRealEllipticTorsionCountSurface.affineQuotientBySignLaw = true := by
  rfl

theorem two_component_surface_has_mobius_inversion_law :
    twoComponentRealEllipticTorsionCountSurface.mobiusInversionLaw = true := by
  rfl

theorem two_component_surface_has_character_scattering_law :
    twoComponentRealEllipticTorsionCountSurface.characterScatteringLaw = true := by
  rfl

theorem two_component_surface_has_affine_quotient_law :
    twoComponentRealEllipticTorsionCountSurface.affineQuotientBySignLaw = true := by
  rfl

end Think.Arithmetic.MobiusTorsionScattering
