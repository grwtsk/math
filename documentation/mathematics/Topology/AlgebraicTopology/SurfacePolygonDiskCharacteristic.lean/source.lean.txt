/-
Copyright (c) 2026 grwtsk contributors. Released under MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #999 exact head 23f2053ab1213a518a8140a543f76c63b7111050.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk

/-!
# Standard closed-disk characteristic map of the genuine polygon filling

This source consumes the proposed homeomorphism of the authentic
UNPAIRED cone with the standard closed complex unit disk. It then
transports the previously constructed, noninjective cone-to-filled
map to a genuine characteristic-map candidate. The source boundary
equation is retained without claiming a CW pushout or a manifold.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk

/-- The standard disk characteristic map into the actual paired
radial filling. It is NOT an embedding or a homeomorphism. -/
def diskCharacteristic (k : ℕ) :
    Complex.UnitClosedDisc → FilledPolygonQuotient k :=
  coneToFilled k ∘ (perimeterConeHomeomorphUnitClosedDisc k).symm

/-- Joint continuity follows from the actual continuous cone map
and the inverse direction of the candidate disk homeomorphism. -/
theorem diskCharacteristic_continuous (k : ℕ) :
    Continuous (diskCharacteristic k) :=
  (coneToFilled_continuous k).comp
    (perimeterConeHomeomorphUnitClosedDisc k).symm.continuous

/-- The characteristic map covers the entire original filled
quotient because the authentic cone-to-filled map is surjective. -/
theorem diskCharacteristic_surjective (k : ℕ) :
    Function.Surjective (diskCharacteristic k) := by
  intro y
  obtain ⟨x, hx⟩ := coneToFilled_surjective k y
  refine ⟨perimeterConeHomeomorphUnitClosedDisc k x, ?_⟩
  simpa [diskCharacteristic] using hx

/-- The characteristic map commutes with the exact original cone
projection at every point, not merely at the outer boundary. -/
theorem diskCharacteristic_cone (k : ℕ) (x : PerimeterCone k) :
    diskCharacteristic k (perimeterConeHomeomorphUnitClosedDisc k x) =
      coneToFilled k x := by
  simp [diskCharacteristic]

/-- On each ORIGINAL unpaired polygon perimeter point, the
characteristic map restricts to the original attaching direction
followed by inclusion into the filled polygon quotient. -/
theorem diskCharacteristic_boundary (k : ℕ)
    (x : UnpairedPerimeter k) :
    diskCharacteristic k
      (perimeterConeHomeomorphUnitClosedDisc k (coneBoundary k x)) =
      boundaryInclusion k (perimeterAttach k x) := by
  rw [diskCharacteristic_cone]
  exact coneToFilled_boundary k x

/-- The center of the standard disk maps to the actual radial apex. -/
theorem diskCharacteristic_center (k : ℕ) :
    diskCharacteristic k 0 = apexPoint k := by
  have hcenter := perimeterConeHomeomorphUnitClosedDisc_apex k
  rw [← hcenter, diskCharacteristic_cone]
  exact coneToFilled_apex k

/-- Negative control: the characteristic map remains noninjective,
because opposite sides of the polygon are paired in the target. -/
theorem diskCharacteristic_not_injective (k : ℕ) :
    ¬ Function.Injective (diskCharacteristic k) := by
  intro hinj
  apply coneToFilled_not_injective k
  intro x y hxy
  apply (perimeterConeHomeomorphUnitClosedDisc k).injective
  apply hinj
  simpa only [diskCharacteristic_cone] using hxy

/-- Concrete genus-two fixture. -/
theorem genusTwo_diskCharacteristic_continuous :
    Continuous (diskCharacteristic 0) :=
  diskCharacteristic_continuous 0

/-- Concrete genus-three fixture. -/
theorem genusThree_diskCharacteristic_continuous :
    Continuous (diskCharacteristic 1) :=
  diskCharacteristic_continuous 1

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic
