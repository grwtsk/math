/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / LEAN_PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
/- Pure topology; intentionally built with the original Tau Ceti toolchain.
Original Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Original code/math sources are not edited by this isolated adapter.
The equivalent native grwtsk Mathlib source is separately UNCOMPILED;
the two editions are NOT independent arithmetic theorems. -/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Continuity of a REAL scalar connecting factor from orbit maps

The actual elliptic theta factor is not a freely chosen
continuous cocycle. Its value c(sigma,tau) is determined
by the exact original group equation
    i(c(sigma,tau)) =
      s(a(sigma)) * sigma(s(a(tau))) * s(a(sigma*tau))^-1,
where i is the injective inclusion of actual nonzero
separable-closure constants into the genuine theta group.

If a is an ORIGINAL continuous E[n]-valued 1-cocycle
and every selected theta lift s(t) has a continuous
Galois ORBIT map sigma |-> sigma(s(t)), then c is
automatically continuous in the original DISCRETE
coefficient topology. This avoids treating global
continuity of an arbitrarily chosen theta section
as an independent mysterious arithmetic hypothesis.

No full continuous action on the infinite theta group
is assumed. The orbit condition is only on the
selected genuine E[n] lifts; E[n] is finite in the
original pinned Tau Ceti arithmetic source.
The actual orbit continuity still requires original
elliptic rational-function finite Galois descent.

This isolated source edition is pure topology of discrete cochains, NOT a
proof of that arithmetic finite-descent supplier,
geometric theta commutator=Weil, n-torsion, Tate
separation or BSD.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.IsolatedThetaFiniteOrbitTopology

variable {X A Y : Type*}
variable [TopologicalSpace X] [TopologicalSpace A]
  [DiscreteTopology A] [TopologicalSpace Y] [DiscreteTopology Y]

/-- A family of continuous orbit maps indexed by a
discrete coefficient type is JOINTLY continuous.
No finite-dimensional replacement or Galois
cardinality assumption is used. -/
theorem continuous_uncurry_discrete
    (f : X → A → Y)
    (hf : ∀ a : A, Continuous (fun x : X => f x a)) :
    Continuous (fun p : X × A => f p.1 p.2) := by
  apply continuous_discrete_rng.mpr
  intro y
  have hpre :
      (fun p : X × A => f p.1 p.2) ⁻¹' {y} =
        ⋃ a : A,
          ((fun x : X => f x a) ⁻¹' {y}) ×ˢ ({a} : Set A) := by
    ext p
    constructor
    · intro h
      exact Set.mem_iUnion.mpr ⟨p.2, ⟨h, Set.mem_singleton p.2⟩⟩
    · intro h
      obtain ⟨a, h⟩ := Set.mem_iUnion.mp h
      obtain ⟨hf', ha⟩ := h
      have ha' : p.2 = a := Set.mem_singleton_iff.mp ha
      simpa only [Set.mem_preimage, Set.mem_singleton_iff, ha'] using hf'
  rw [hpre]
  exact isOpen_iUnion fun a =>
    ((isOpen_discrete ({y} : Set Y)).preimage (hf a)).prod
      (isOpen_discrete ({a} : Set A))

/-- If a scalar coefficient type and the receiving
central-extension group are discrete, continuity
of the IMAGE of a factor through a faithful scalar
inclusion forces continuity of the scalar factor.
No topological embedding is chosen as data. -/
theorem continuous_of_injective_discrete_comp
    {C Θ : Type*} [TopologicalSpace C] [DiscreteTopology C]
    [TopologicalSpace Θ] [DiscreteTopology Θ]
    (i : C → Θ) (hi : Function.Injective i)
    (c : X → C)
    (hc : Continuous (fun x => i (c x))) :
    Continuous c := by
  apply continuous_discrete_rng.mpr
  intro z
  have hpre :
      c ⁻¹' {z} = (fun x => i (c x)) ⁻¹' {i z} := by
    ext x
    simp only [Set.mem_preimage, Set.mem_singleton_iff]
    exact (hi.eq_iff).symm
  rw [hpre]
  exact (isOpen_discrete ({i z} : Set Θ)).preimage hc

section OriginalFactor

variable {G Θ C : Type*} [Group G] [Group Θ] [Group C]
variable [TopologicalSpace G] [IsTopologicalGroup G]
variable [TopologicalSpace Θ] [DiscreteTopology Θ]
variable [TopologicalSpace C] [DiscreteTopology C]
variable [MulDistribMulAction G Θ]

/-- The ORIGINAL discrete Galois 1-cocycle a, a
function assigning a real torsion coefficient
to each Galois element, determines a continuous
central factor when:
* a is continuous in its actual torsion topology;
* the selected theta lift of EVERY torsion
  coefficient has a continuous Galois orbit;
* the scalar inclusion is faithful and gives the
  EXACT source nonabelian boundary equation.

This is the complete topological return from a
finite list of arithmetic orbit-continuity facts.
Continuity of the entire theta group action is
NOT required for this conclusion. -/
theorem continuous_scalar_boundary_of_selected_orbits
    (a : G → A) (ha : Continuous a)
    (s : A → Θ)
    (horbit : ∀ t : A, Continuous (fun g : G => g • s t))
    (i : C →* Θ) (hi : Function.Injective i)
    (c : G → G → C)
    (hfactor : ∀ σ τ : G,
      i (c σ τ) =
        s (a σ) * (σ • s (a τ)) *
          (s (a (σ * τ)))⁻¹) :
    Continuous (fun p : G × G => c p.1 p.2) := by
  letI : ContinuousMul Θ := ⟨continuous_of_discreteTopology⟩
  letI : ContinuousInv Θ := ⟨continuous_of_discreteTopology⟩
  have hs : Continuous s := continuous_of_discreteTopology
  have hu : Continuous (fun σ : G => s (a σ)) := hs.comp ha
  have hmix : Continuous
      (fun p : G × G => p.1 • s (a p.2)) :=
    (continuous_uncurry_discrete
      (fun g t => g • s t) horbit).comp
      (continuous_fst.prodMk (ha.comp continuous_snd))
  have hboundary : Continuous
      (fun p : G × G =>
        s (a p.1) * (p.1 • s (a p.2)) *
          (s (a (p.1 * p.2)))⁻¹) :=
    ((hu.comp continuous_fst).mul hmix).mul
      ((hu.comp (continuous_fst.mul continuous_snd)).inv)
  have hcomp : Continuous (fun p : G × G => i (c p.1 p.2)) := by
    convert hboundary using 1
    funext p
    exact hfactor p.1 p.2
  exact continuous_of_injective_discrete_comp i hi
    (fun p : G × G => c p.1 p.2) hcomp

end OriginalFactor

end GRWTSK.ArithmeticGeometry.EllipticCurves.IsolatedThetaFiniteOrbitTopology
