-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RasterSurgery.Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RasterSurgery.Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Geometry/RasterSurgery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Geometry.ContinuousRaster
import DAF.Geometry.MeshSurgery

/-!
# Continuous raster surgery

A raster patch is tied to one globally located mesh patch.  It certifies
continuity on retained and inserted cells, agreement on a declared seam, and
exact equality away from the changed cell carriers.  Binary vertex values are
preserved through the common `BinaryVertexCharge`; no Boolean claim is made
about interior real-valued samples.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RasterSurgery.Variant48492c28e9bc198d8884eb2ad82598413b4ec318db90d752026b4e5fcc2b8db8

namespace DAF.Geometry

open DAF.Terrain

universe uState uV

/-- The geometric support of the cells changed by a mesh surgery. -/
def pointInMeshSurgery
    {State : Type uState}
    {G : KnownMaximalState State}
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    {before after : PrismMesh M}
    (S : MeshSurgery G before after)
    (p : M.CarrierPoint) : Prop :=
  ∃ c ∈ S.removedCells ∪ S.insertedCells, p.1 ∈ M.cellCarrier c

/-- Restrict a raster field to one selected active cell. -/
def rasterFieldOnCell
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    {mesh : PrismMesh M}
    {charge : BinaryVertexCharge V}
    (raster : ContinuousTerrainRaster mesh charge)
    {c : M.CellId}
    (hc : c ∈ mesh.activeCells) :
    M.cellCarrier c → Fin charge.channels → ℝ :=
  fun p => raster.field (M.cellPoint (mesh.activeCell_mem hc) p.2)

/-- One continuous field replacement over a certified mesh replacement. -/
structure RasterSurgery
    {State : Type uState}
    (G : KnownMaximalState State)
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    {beforeMesh afterMesh : PrismMesh M}
    (meshSurgery : MeshSurgery G beforeMesh afterMesh)
    (charge : BinaryVertexCharge V)
    (beforeRaster : ContinuousTerrainRaster beforeMesh charge)
    (afterRaster : ContinuousTerrainRaster afterMesh charge) where
  patch : SurgeryPatch G
  isRasterLayer : patch.layer = .raster
  same_global_locus :
    patch.locus.region.coordinates =
      meshSurgery.patch.locus.region.coordinates
  seam : Set M.CarrierPoint
  seam_lies_on_shared_boundary :
    ∀ p, p ∈ seam →
      ∃ c ∈ meshSurgery.sharedBoundary, p.1 ∈ M.cellCarrier c
  seamAgreement :
    ∀ p, p ∈ seam → ∀ i,
      afterRaster.field p i = beforeRaster.field p i
  retainedCellContinuous :
    ∀ c, ∀ _hbefore : c ∈ beforeMesh.activeCells,
      ∀ hafter : c ∈ afterMesh.activeCells,
        Continuous (rasterFieldOnCell afterRaster hafter)
  insertedCellContinuous :
    ∀ c, ∀ _hc : c ∈ meshSurgery.insertedCells,
      ∀ hactive : c ∈ afterMesh.activeCells,
        Continuous (rasterFieldOnCell afterRaster hactive)
  outside_unchanged :
    ∀ p, ¬ pointInMeshSurgery meshSurgery p → ∀ i,
      afterRaster.field p i = beforeRaster.field p i

namespace RasterSurgery

variable {State : Type uState} {G : KnownMaximalState State}
variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {M : GeometricPrismCarrier V}
variable {beforeMesh afterMesh : PrismMesh M}
variable {meshSurgery : MeshSurgery G beforeMesh afterMesh}
variable {charge : BinaryVertexCharge V}
variable {beforeRaster : ContinuousTerrainRaster beforeMesh charge}
variable {afterRaster : ContinuousTerrainRaster afterMesh charge}

/-- Raster surgery preserves the common binary charge at every vertex. -/
theorem vertex_charge_preserved
    (_S : RasterSurgery G meshSurgery charge beforeRaster afterRaster)
    (v : V)
    (i : Fin charge.channels) :
    afterRaster.field ⟨M.vertexPoint v, M.vertex_mem v⟩ i =
      beforeRaster.field ⟨M.vertexPoint v, M.vertex_mem v⟩ i := by
  rw [afterRaster.vertexAgreement, beforeRaster.vertexAgreement]

/-- Away from changed cell carriers, the real-valued field is exact. -/
theorem field_eq_outside_locus
    (S : RasterSurgery G meshSurgery charge beforeRaster afterRaster)
    (p : M.CarrierPoint)
    (hp : ¬ pointInMeshSurgery meshSurgery p)
    (i : Fin charge.channels) :
    afterRaster.field p i = beforeRaster.field p i :=
  S.outside_unchanged p hp i

end RasterSurgery

/-- Reversible raster surgery requires an independently typed reverse patch. -/
structure ReversibleRasterSurgery
    {State : Type uState}
    (G : KnownMaximalState State)
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    {beforeMesh afterMesh : PrismMesh M}
    (meshForward : MeshSurgery G beforeMesh afterMesh)
    (meshBackward : MeshSurgery G afterMesh beforeMesh)
    (charge : BinaryVertexCharge V)
    (beforeRaster : ContinuousTerrainRaster beforeMesh charge)
    (afterRaster : ContinuousTerrainRaster afterMesh charge) where
  forward : RasterSurgery G meshForward charge beforeRaster afterRaster
  backward : RasterSurgery G meshBackward charge afterRaster beforeRaster

end DAF.Geometry
