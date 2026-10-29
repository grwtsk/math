-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RasterSourceBridge.Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RasterSourceBridge.Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Prismatic/RasterBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Geometry.ContinuousRaster
import DAF.Prismatic.TerrainRealization

/-!
# Explicit raster-to-arithmetic realization bridge

Continuous raster values and arithmetic source objects live in unrelated
representations.  This bridge records the chosen conversion and its commuting
vertex square.  It does not infer arithmetic semantics from real-valued pixels
and it does not identify a geometric prism carrier with an arithmetic prism.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RasterSourceBridge.Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f

namespace DAF.Prismatic

universe uState uV

/-- A proof-bearing bridge from one raster to one globally located source. -/
structure RasterSourceBridge
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (terrain : TerrainSourceRealization G F P)
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {mesh : DAF.Geometry.PrismMesh carrier}
    {charge : DAF.Terrain.BinaryVertexCharge V}
    (raster : DAF.Geometry.ContinuousTerrainRaster mesh charge) where
  vertexCoordinate : V ↪ G.Coord
  rasterRepresentation : (Fin charge.channels → ℝ) → P.DerivedAlg
  vertexSquare :
    ∀ v : V,
      rasterRepresentation
          (fun i ↦ raster.field
            ⟨carrier.vertexPoint v, carrier.vertex_mem v⟩ i) =
        terrain.source.cellCorrespondence
          (terrain.cellAt (vertexCoordinate v)).2

namespace RasterSourceBridge

/-- The bridge retains exact absolute coordinate identity for every vertex. -/
theorem vertexCoordinate_injective
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {terrain : TerrainSourceRealization G F P}
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {mesh : DAF.Geometry.PrismMesh carrier}
    {charge : DAF.Terrain.BinaryVertexCharge V}
    {raster : DAF.Geometry.ContinuousTerrainRaster mesh charge}
    (bridge : RasterSourceBridge terrain raster) :
    Function.Injective bridge.vertexCoordinate :=
  bridge.vertexCoordinate.injective

/-- The exact raster/source realization square supplied by the bridge. -/
theorem realization_commutes_at_vertex
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    {terrain : TerrainSourceRealization G F P}
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {mesh : DAF.Geometry.PrismMesh carrier}
    {charge : DAF.Terrain.BinaryVertexCharge V}
    {raster : DAF.Geometry.ContinuousTerrainRaster mesh charge}
    (bridge : RasterSourceBridge terrain raster)
    (v : V) :
    bridge.rasterRepresentation
        (fun i ↦ raster.field
          ⟨carrier.vertexPoint v, carrier.vertex_mem v⟩ i) =
      terrain.source.cellCorrespondence
        (terrain.cellAt (bridge.vertexCoordinate v)).2 :=
  bridge.vertexSquare v

end RasterSourceBridge

end DAF.Prismatic
