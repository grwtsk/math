/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#985. Exact parent PR #982:
073285147677ca4500f6ca8fa46fbccf34d07c31.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeOuterPairs

/-!
# Full cone-fiber characterization from seven original radial generators

The four cyclic seams and apex are already equal in the genuine
unpaired cone. Only the two outer reversed side pairs contribute new
generators. This file proposes the reverse kernel inclusion and an
exact quotient equivalence. The source has not been Lean elaborated.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonJointRadialDescent
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeFilledQuotient
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeOuterPairs

/-- Lift all SEVEN inherited radial source generators into the exact
outer-side equivalence relation on the unpaired cone. -/
theorem radialStep_to_outerConnected (k : ℕ)
    {p q : RadialSource k} (h : RadialGluingStep k p q) :
    ConeOuterConnected k (radialSourceToCone k p)
      (radialSourceToCone k q) := by
  cases h with
  | seam01 h r =>
      apply Relation.EqvGen.refl
      change coneProjection k
          (perimeterProjection k (((h, 0), 1)), r) =
        coneProjection k
          (perimeterProjection k (((h, 1), 0)), r)
      rw [perimeter_seam_01 k h]
  | seam12 h r =>
      apply Relation.EqvGen.refl
      change coneProjection k
          (perimeterProjection k (((h, 1), 1)), r) =
        coneProjection k
          (perimeterProjection k (((h, 2), 0)), r)
      rw [perimeter_seam_12 k h]
  | seam23 h r =>
      apply Relation.EqvGen.refl
      change coneProjection k
          (perimeterProjection k (((h, 2), 1)), r) =
        coneProjection k
          (perimeterProjection k (((h, 3), 0)), r)
      rw [perimeter_seam_23 k h]
  | seamNext h r =>
      apply Relation.EqvGen.refl
      change coneProjection k
          (perimeterProjection k (((h, 3), 1)), r) =
        coneProjection k
          (perimeterProjection k (((nextHandle k h, 0), 0)), r)
      rw [perimeter_seam_next k h]
  | apex p =>
      apply Relation.EqvGen.refl
      change coneProjection k (perimeterProjection k p, 0) =
        coneProjection k
          (perimeterProjection k
            (originalCornerPoint k (firstHandle k, 0)), 0)
      exact cone_zero_eq_apex k (perimeterProjection k p)
  | outerA h t =>
      exact Relation.EqvGen.rel _ _
        (ConeOuterPairStep.pairA h t)
  | outerB h t =>
      exact Relation.EqvGen.rel _ _
        (ConeOuterPairStep.pairB h t)

/-- The full radial source equivalence closure maps into the
outer-pairing equivalence closure, with no extra source generator. -/
theorem radialConnected_to_outerConnected (k : ℕ)
    {p q : RadialSource k} (h : RadialConnected k p q) :
    ConeOuterConnected k (radialSourceToCone k p)
      (radialSourceToCone k q) := by
  induction h with
  | rel p q hpq => exact radialStep_to_outerConnected k hpq
  | refl p => exact Relation.EqvGen.refl _
  | symm p q _ ih => exact Relation.EqvGen.symm _ _ ih
  | trans p q r _ _ ih₁ ih₂ =>
      exact Relation.EqvGen.trans _ _ _ ih₁ ih₂

/-- Converse kernel inclusion: equal filled images arise only from
the original cone outer-side relation. -/
theorem coneToFilled_eq_implies_outerConnected (k : ℕ)
    {x y : PerimeterCone k}
    (h : coneToFilled k x = coneToFilled k y) :
    ConeOuterConnected k x y := by
  obtain ⟨p, rfl⟩ := radialSourceToCone_surjective k x
  obtain ⟨q, rfl⟩ := radialSourceToCone_surjective k y
  have hrad : radialProjection k p = radialProjection k q := by
    simpa only [coneToFilled_radialSourceToCone] using h
  exact radialConnected_to_outerConnected k (Quotient.exact hrad)

/-- Exact full kernel: no additional interior positive-radius
identifications occur in the filled polygon quotient. -/
theorem coneToFilled_eq_iff_outerConnected (k : ℕ)
    (x y : PerimeterCone k) :
    coneToFilled k x = coneToFilled k y ↔
      ConeOuterConnected k x y := by
  constructor
  · exact coneToFilled_eq_implies_outerConnected k
  · exact coneToFilled_respects_outerConnected k

/-- The descended map on the actual outer-paired cone is injective. -/
theorem outerPairedConeToFilled_injective (k : ℕ) :
    Function.Injective (outerPairedConeToFilled k) := by
  intro x y
  refine Quotient.inductionOn x ?_
  intro a
  refine Quotient.inductionOn y ?_
  intro b hab
  apply Quotient.sound
  exact (coneToFilled_eq_iff_outerConnected k a b).mp
    (by simpa only [outerPairedConeToFilled_projection] using hab)

/-- Full quotient-level bijectivity, NOT an unpaired-cone
homeomorphism: the outer side identifications remain effective. -/
theorem outerPairedConeToFilled_bijective (k : ℕ) :
    Function.Bijective (outerPairedConeToFilled k) :=
  ⟨outerPairedConeToFilled_injective k,
    outerPairedConeToFilled_surjective k⟩

/-- The exact quotient descent is continuous using the inherited
coinduced quotient topology and the old continuous cone map. -/
theorem outerPairedConeToFilled_continuous (k : ℕ) :
    Continuous (outerPairedConeToFilled k) := by
  apply Continuous.quotient_lift (coneToFilled_continuous k)
  intro x y h
  exact coneToFilled_respects_outerConnected k h

/-- A homeomorphism of the TWO QUOTIENT SPACES, not a disk or CW
surface theorem. The target topology is already the final topology
under coneToFilled (#977). -/
noncomputable def outerPairedConeHomeomorph (k : ℕ) :
    Quotient (coneOuterPairSetoid k) ≃ₜ FilledPolygonQuotient k := by
  let hcont := outerPairedConeToFilled_continuous k
  let hbij := outerPairedConeToFilled_bijective k
  have hquot : IsQuotientMap (outerPairedConeToFilled k) := by
    have hproj : IsQuotientMap
        (Quotient.mk (coneOuterPairSetoid k) :
          PerimeterCone k → Quotient (coneOuterPairSetoid k)) :=
      isQuotientMap_quotient_mk'
    have hcomp : IsQuotientMap
        (outerPairedConeToFilled k ∘
          (Quotient.mk (coneOuterPairSetoid k))) := by
      change IsQuotientMap (coneToFilled k)
      exact coneToFilled_isQuotientMap k
    exact hproj.of_comp_isQuotientMap hcomp
  exact hquot.homeoOfBijective hbij

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel
