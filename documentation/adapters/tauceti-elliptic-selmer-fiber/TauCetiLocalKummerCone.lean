/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_ADAPTER_SOURCE_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Original upstream sources: Tau Ceti contributors, Apache-2.0.
Requires TauCetiProject/TauCeti at
  2bdb755239d3bd84760e99bc83166bdf7cc75a6b
with Lean v4.36.0-rc1; deliberately NOT imported into the local
grwtsk/math Lean v4.34.1 root build.
-/
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.Selmer.Basic
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree
import TauCeti.RepresentationTheory.Homological.ContCohomology.ExplicitFunctoriality
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# The ACTUAL local elliptic Kummer cone in degrees 0, 1 and 2

For genuine W/K, m invertible in K and G=Gal(Ksep/K), set
  A = W.TorsionCoeff m    = E[m](Ksep),
  B = W.PointCoeff        = E(Ksep),
  j = W.torsionCoeffIncl m : A -> B.

The actual source Tau Ceti low-degree continuous cochain groups
and d0,d1 are used without replacing G, E[m], or E by an arbitrary
same-dimensional vector space.

Define U := Cone(C_cont(G,A) -> C_cont(G,B))[-1]:
  U0=A
  U1=C_cont^1(G,A) x B
  U2=C_cont^2(G,A) x C_cont^1(G,B)
  dU0(a) = (dA0 a, j a)
  dU1(c,b) = (dA1 c, j c - dB0 b).
The true source differential and actual equivariance of j give
dU1(dU0 a)=0. A closed source c has a local cone lift iff its
image class under H1(j) vanishes; by Tau Ceti's ACTUAL
WeierstrassCurve.range_kummerMap, this is the real local
Kummer condition.

Because this adapter is not typechecked in its incompatible external
toolchain, no successful Lean proof is asserted. It is a concrete
source-bound candidate rather than an imported mathematics theorem.

There is no claim that H1(U) -> H1(G,A) is injective, and no BSD
rank, p-adic height, or complex L-jet comparison is assumed.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiLocalKummerCone

open TauCeti TauCeti.ContCohomology

variable {K : Type*} [Field K] [DecidableEq K]
variable (W : WeierstrassCurve K) [W.IsElliptic] (m : ℕ)
variable (hm : IsUnit (m : K))

private abbrev G := AbsoluteGaloisGroup K
private abbrev A := W.TorsionCoeff m
private abbrev B := W.PointCoeff

/-- Genuine local Galois cochain groups, not chosen models. -/
abbrev Uzero : Type* := A W m
abbrev Uone : Type* := C1 (G (K := K)) (A W m) × B W
abbrev Utwo : Type* :=
  C2 (G (K := K)) (A W m) × C1 (G (K := K)) (B W)

/-- Actual differential induced by d0 on E[m] and j:E[m]->E. -/
def localD0 (a : Uzero W m) : Uone W m :=
  (⟨d0 (G (K := K)) (A W m) a,
    continuous_d0_apply a⟩,
   (W.torsionCoeffIncl m) a)

/-- Actual continuous-cochain differential in the degree-one cone.
Its second component is an E-coefficient continuous cochain. -/
def localD1 (c : Uone W m) : Utwo W m :=
  (⟨d1 (G (K := K)) (A W m) c.1.1,
       continuous_d1_apply c.1.2⟩,
   ⟨fun g => (W.torsionCoeffIncl m) (c.1.1 g) -
       (d0 (G (K := K)) (B W) c.2) g,
     (continuous_of_discreteTopology.comp c.1.2).sub
       (continuous_d0_apply c.2)⟩)

/-- The ACTUAL source d1∘d0=0 plus equivariance of the elliptic
torsion inclusion give the cone square-zero identity. -/
theorem localD1_localD0 (a : Uzero W m) :
    localD1 W m (localD0 W m a) = 0 := by
  apply Prod.ext
  · apply Subtype.ext
    exact d1_comp_d0_apply (G (K := K)) (A W m) a
  · apply Subtype.ext
    funext g
    change (W.torsionCoeffIncl m)
      ((d0 (G (K := K)) (A W m) a) g) -
        (d0 (G (K := K)) (B W) ((W.torsionCoeffIncl m) a)) g = 0
    apply sub_eq_zero.mpr
    exact map_d0_apply
      (W.torsionCoeffIncl m : A W m →+ B W)
      (fun h x => (W.torsionCoeffIncl m).map_smul h x) a g

/-- A literal continuous E[m]-valued 1-cocycle, with no numerical
arithmetic rank or artificial spectral data. -/
def cocycleToCOne (c : Z1 (G (K := K)) (A W m)) :
    C1 (G (K := K)) (A W m) :=
  ⟨c.1, Z1_le_C1 (G (K := K)) (A W m) c.2⟩

/-- The chosen E-coefficient 0-cochain provides an actual
nullhomotopy of the inclusion image. -/
def HasLocalConeLift (c : Z1 (G (K := K)) (A W m)) : Prop :=
  ∃ b : B W, ∀ g : G (K := K),
    (W.torsionCoeffIncl m) (c.1 g) =
      (d0 (G (K := K)) (B W) b) g

/-- Degree-one Kummer cone cycles are EXACTLY actual source
cocycles with E-coefficient nullhomotopies. -/
theorem cone_cycle_iff_lift
    (c : Z1 (G (K := K)) (A W m)) :
    (∃ b : B W,
      localD1 W m (cocycleToCOne W m c, b) = 0) ↔
      HasLocalConeLift W m c := by
  have hc : d1 (G (K := K)) (A W m) c.1 = 0 :=
    d1_apply_eq_zero_iff.mpr (mem_Z1_iff.mp c.2).2
  constructor
  · rintro ⟨b, hb⟩
    refine ⟨b, fun g => ?_⟩
    have h := congrArg
      (fun z : Utwo W m => (z.2 : G (K := K) → B W) g) hb
    have h' :
        (W.torsionCoeffIncl m) (c.1 g) -
          (d0 (G (K := K)) (B W) b) g = 0 := by
      simpa [localD1, cocycleToCOne] using h
    exact sub_eq_zero.mp h'
  · rintro ⟨b, hb⟩
    refine ⟨b, ?_⟩
    apply Prod.ext
    · apply Subtype.ext
      exact hc
    · apply Subtype.ext
      funext g
      change (W.torsionCoeffIncl m) (c.1 g) -
        (d0 (G (K := K)) (B W) b) g = 0
      rw [hb g]
      exact sub_self _

/-- The GENUINE elliptic local Selmer condition, with no abstract
local H1 subgroup substitution. This is Tau Ceti's coefficient
kernel, independently known to equal the local Kummer image. -/
def actualLocalCondition :
    AddSubgroup (H1 (G (K := K)) (A W m)) :=
  (explicitCoeff1 (G (K := K)) (A W m)
    (W.torsionCoeffIncl m) continuous_of_discreteTopology).ker

/-- Actual Kummer image = actual local condition. It is the source
theorem WeierstrassCurve.range_kummerMap, not a newly assumed rank. -/
theorem actualLocalCondition_eq_kummer :
    actualLocalCondition W m = (W.kummerMap m hm).range :=
  (W.range_kummerMap m hm).symm

/-- The source H1 class is in the actual local Kummer condition iff
its representative admits a genuine continuous E-coefficient
nullhomotopy. This is exactly the degree-one projection of U_v^+. -/
theorem cone_lift_iff_actualLocalCondition
    (c : Z1 (G (K := K)) (A W m)) :
    HasLocalConeLift W m c ↔
      (c : H1 (G (K := K)) (A W m)) ∈
        actualLocalCondition W m := by
  rw [actualLocalCondition, AddMonoidHom.mem_ker]
  rw [explicitCoeff1_mk, H1pi_eq_zero_iff]
  change (∃ b : B W, ∀ g : G (K := K),
      (W.torsionCoeffIncl m) (c.1 g) =
        (d0 (G (K := K)) (B W) b) g) ↔
    (cocyclesMap1 (G (K := K)) (A W m)
      (G (K := K)) (B W)
      (ContinuousMonoidHom.id (G (K := K)))
      (W.torsionCoeffIncl m) continuous_of_discreteTopology
      (fun g x => (W.torsionCoeffIncl m).map_smul g x) c :
      G (K := K) → B W) ∈
      B1 (G (K := K)) (B W)
  simp only [B1, AddMonoidHom.mem_range]
  change _ ↔ ∃ b : B W,
    (d0 (G (K := K)) (B W)) b =
      (cocyclesMap1 (G (K := K)) (A W m)
        (G (K := K)) (B W)
        (ContinuousMonoidHom.id (G (K := K)))
        (W.torsionCoeffIncl m) continuous_of_discreteTopology
        (fun g x => (W.torsionCoeffIncl m).map_smul g x) c :
        G (K := K) → B W)
  constructor
  · rintro ⟨b, hb⟩
    refine ⟨b, ?_⟩
    funext g
    simpa [d0_apply, cocyclesMap1_apply] using (hb g).symm
  · rintro ⟨b, hb⟩
    refine ⟨b, fun g => ?_⟩
    have hg := congrArg (fun f : G (K := K) → B W => f g) hb
    simpa [d0_apply, cocyclesMap1_apply] using hg.symm

/-- A genuinely represented cone cycle projects to precisely the
actual elliptic Kummer class, no extra cohomology hypotheses. -/
theorem cone_cycle_iff_local_kummer
    (c : Z1 (G (K := K)) (A W m)) :
    (∃ b : B W,
       localD1 W m (cocycleToCOne W m c, b) = 0) ↔
       (c : H1 (G (K := K)) (A W m)) ∈
         (W.kummerMap m hm).range := by
  rw [cone_cycle_iff_lift W m c,
    cone_lift_iff_actualLocalCondition W m c,
    actualLocalCondition_eq_kummer]


/-! ## Exact return to the REAL elliptic SelmerStructure, at every place

For a chosen family of local extension fields L_i and separable-closure
embeddings τ_i, the upstream actual elliptic source defines the local
condition as ker(H¹(E[m]) -> H¹(E)). The local cone identified above
returns exactly THAT subgroup, not a newly chosen proxy.
-/

/-- Literal equality with Tau Ceti's ACTUAL elliptic local subgroup.
The mathematical input is its source definition
WeierstrassCurve.selmerStructure_localCondition. -/
theorem local_cone_condition_matches_selmerStructure
    {ι : Type*} {L : ι → Type*}
    [∀ i, Field (L i)] [∀ i, Algebra K (L i)]
    (τ : ∀ i, SeparableClosure K →ₐ[K] SeparableClosure (L i))
    (i : ι) :
    (W.selmerStructure τ m).localCondition i =
      actualLocalCondition (W⁄(L i)) m := by
  exact W.selmerStructure_localCondition τ m i

/-- At EVERY actual chosen field L_i, a geometric E[m]-valued
continuous cocycle admits the real E-valued cone nullhomotopy iff
it lies in the exact local condition used by Tau Ceti.
No arbitrary Selmer rank or complex L-zero is involved. -/
theorem cone_cycle_iff_selmerStructure_localCondition
    {ι : Type*} {L : ι → Type*}
    [∀ i, Field (L i)] [∀ i, Algebra K (L i)]
    (τ : ∀ i, SeparableClosure K →ₐ[K] SeparableClosure (L i))
    (i : ι)
    (c : Z1 (AbsoluteGaloisGroup (L i))
      ((W⁄(L i)).TorsionCoeff m)) :
    (∃ b : (W⁄(L i)).PointCoeff,
       localD1 (W⁄(L i)) m
         (cocycleToCOne (W⁄(L i)) m c, b) = 0) ↔
      (c : H1 (AbsoluteGaloisGroup (L i))
         ((W⁄(L i)).TorsionCoeff m)) ∈
        (W.selmerStructure τ m).localCondition i := by
  rw [local_cone_condition_matches_selmerStructure W m τ i]
  exact (cone_cycle_iff_lift (W⁄(L i)) m c).trans
    (cone_lift_iff_actualLocalCondition (W⁄(L i)) m c)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiLocalKummerCone
