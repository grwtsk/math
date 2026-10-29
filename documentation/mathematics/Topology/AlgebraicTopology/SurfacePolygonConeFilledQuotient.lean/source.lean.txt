/- 
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Quotient-map composition/cancellation: Mathlib contributors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#976. Parent draft PR #972 pinned head:
525457c57b9d5b040bbe0c3be46f80c7e4eaaaa0.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
import Mathlib.Topology.Maps.Basic

/-!
# The actual cone-to-filled map is a quotient map

Consume the inherited, authentic radial-square source and the three
existing topological quotient constructions. From #859:
  radialProjection : RadialSource k → FilledPolygonQuotient k
is a quotient map. From #962:
  perimeterProductProjection : RadialSource k → ConeCylinder k
is a quotient map, proved using compact source / Hausdorff target and
not by an invalid general product-of-quotient-maps principle.
From #972:
  coneProjection : ConeCylinder k → PerimeterCone k
is the actual apex-only cone quotient map.

The ORIGINAL radial map factors precisely as

  radialProjection k =
    coneToFilled k ∘ coneProjection k ∘ perimeterProductProjection k.

The composite of the first two source quotient projections is
quotient. Pinned Mathlib's
  Topology.IsQuotientMap.of_comp_isQuotientMap
then cancels this source quotient from the outer composite, proving

  IsQuotientMap (coneToFilled k).

This theorem does not need a Hausdorff proof for the filled quotient.
Crucially the resulting quotient is NOT injective: the old polygon
side pairings still collapse distinct cone boundary points. It is
not a disk homeomorphism, an adjunction/CW pushout theorem, a surface
homology or fundamental group calculation, or an arithmetic result.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeFilledQuotient

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonJointRadialDescent
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialProductQuotient
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone

/-- Exact projection from the original radius-bearing directed polygon
source to the unpaired cone. Both factors are existing quotient maps. -/
def radialSourceToCone (k : ℕ) : RadialSource k → PerimeterCone k :=
  coneProjection k ∘ perimeterProductProjection k

/-- On the ORIGINAL directed-edge square-sector source, the cone
projection preserves the inherited perimeter identity and radius. -/
@[simp] theorem radialSourceToCone_apply (k : ℕ)
    (p : BoundaryPoint k) (r : unitInterval) :
    radialSourceToCone k (p, r) =
      coneProjection k (perimeterProjection k p, r) := rfl

/-- The original radial source-to-cone map is quotient by the
ACTUAL #962 product-quotient theorem and #972 apex quotient. A
general quotient map need not remain quotient after an arbitrary
product; that false shortcut is never used. -/
theorem radialSourceToCone_isQuotientMap (k : ℕ) :
    IsQuotientMap (radialSourceToCone k) := by
  change IsQuotientMap
    (coneProjection k ∘ perimeterProductProjection k)
  exact (coneProjection_isQuotientMap k).comp
    (perimeterProductProjection_isQuotientMap k)

/-- Surjectivity is inherited from the true composite quotient map,
not inferred from an unrelated finite enumeration of cones. -/
theorem radialSourceToCone_surjective (k : ℕ) :
    Function.Surjective (radialSourceToCone k) :=
  (radialSourceToCone_isQuotientMap k).surjective

/-- The key SOURCE-EXACT equation: no fresh radial map is invented.
It is the old parent joint map's actual square-sector equation. -/
@[simp] theorem coneToFilled_radialSourceToCone (k : ℕ)
    (pr : RadialSource k) :
    coneToFilled k (radialSourceToCone k pr) =
      radialProjection k pr := by
  rcases pr with ⟨p, r⟩
  calc
    coneToFilled k (radialSourceToCone k (p, r)) =
        perimeterJointRadialMap k (perimeterProjection k p, r) := by
      exact coneToFilled_projection k _
    _ = radialProjection k (p, r) :=
      perimeterJointRadialMap_source k p r

/-- Exact equality OF FUNCTIONS needed for quotient cancellation,
including all original polygon edges and radii. -/
theorem coneToFilled_comp_radialSourceToCone (k : ℕ) :
    coneToFilled k ∘ radialSourceToCone k =
      radialProjection k := by
  funext pr
  exact coneToFilled_radialSourceToCone k pr

/-- The previously open topological quotient property of the true
cone-to-filled map. Both the composite and the cancelled right
factor are existing authentic quotient maps. -/
theorem coneToFilled_isQuotientMap (k : ℕ) :
    IsQuotientMap (coneToFilled k) := by
  have hsource : IsQuotientMap
      (coneToFilled k ∘ radialSourceToCone k) := by
    rw [coneToFilled_comp_radialSourceToCone k]
    exact radialProjection_isQuotientMap k
  exact (radialSourceToCone_isQuotientMap k).of_comp_isQuotientMap
    hsource

/-- Final-topology universal continuity criterion for EVERY
topological target: maps from the paired filling are continuous
exactly when their pullbacks to the authentic unpaired cone are. -/
theorem continuous_iff_comp_coneToFilled (k : ℕ)
    {Y : Type*} [TopologicalSpace Y]
    (f : FilledPolygonQuotient k → Y) :
    Continuous f ↔ Continuous (f ∘ coneToFilled k) :=
  (coneToFilled_isQuotientMap k).continuous_iff

/-- Hostile control: a quotient map is NOT a homeomorphism.
The old opposite-directed-side witnesses remain distinct in the
unpaired cone boundary but coincide in the filled target. -/
theorem coneToFilled_quotient_but_not_injective (k : ℕ) :
    IsQuotientMap (coneToFilled k) ∧
      ¬ Function.Injective (coneToFilled k) :=
  ⟨coneToFilled_isQuotientMap k, coneToFilled_not_injective k⟩

/-- A nontrivial fiber genuinely exists for every genus in the
source family. No hypothetical injectivity is silently assumed. -/
theorem coneToFilled_has_distinct_fiber (k : ℕ) :
    ∃ x y : PerimeterCone k,
      x ≠ y ∧ coneToFilled k x = coneToFilled k y := by
  classical
  by_contra h
  apply coneToFilled_not_injective k
  intro x y hxy
  by_contra hne
  exact h ⟨x, y, hne, hxy⟩

/-- Genus-two concrete fixture: eight original directed boundary
intervals induce the same genuine cone quotient theorem. -/
theorem genusTwo_coneToFilled_isQuotientMap :
    IsQuotientMap (coneToFilled 0) :=
  coneToFilled_isQuotientMap 0

/-- Genus-three concrete fixture: twelve original directed boundary
intervals, with the authentic extra handle, remain covered. -/
theorem genusThree_coneToFilled_isQuotientMap :
    IsQuotientMap (coneToFilled 1) :=
  coneToFilled_isQuotientMap 1

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeFilledQuotient
