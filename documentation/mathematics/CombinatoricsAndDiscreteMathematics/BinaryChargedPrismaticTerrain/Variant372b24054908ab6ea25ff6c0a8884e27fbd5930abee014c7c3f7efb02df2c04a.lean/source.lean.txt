import DAF.Prismatic.RasterBridge
import DAF.Terrain.AbsoluteRegion
import DAF.Terrain.Core

/-!
# Binary-charged terrain with geometric and arithmetic realizations

This adapter keeps four representations distinct: finite terrain adjacency,
Boolean vertex charge, a continuous geometric raster, and an explicitly chosen
prismatic source object.  Vertex charge agrees with the raster by the raster's
own theorem, while arithmetic agreement is supplied by `RasterSourceBridge`.
No field or matrix structure is installed on the terrain carrier.
-/

namespace DAF.Integration

universe uState uV

/--
A proof-bearing absolute placement for every active cell of one finite mesh.
The locus is discrete: it is exactly the image of the cell's declared vertex
set in the fixed global coordinate frame.  This certificate does not identify
the continuous geometric carrier with that finite coordinate type.
-/
structure CellAbsolutePlacement
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V)
    (mesh : DAF.Geometry.PrismMesh carrier) where
  vertexCoordinate : V ↪ G.Coord
  locus : mesh.ActiveCell → DAF.Terrain.AbsoluteRegion G
  locus_coordinates :
    ∀ cell,
      (locus cell).coordinates =
        (mesh.cellVertices cell.1).map vertexCoordinate

/-- One charged finite terrain with explicit raster and arithmetic bridges. -/
structure BinaryChargedPrismaticTerrain
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V)
    (mesh : DAF.Geometry.PrismMesh carrier)
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory) where
  terrain : DAF.Terrain.Terrain V
  charge : DAF.Terrain.BinaryVertexCharge V
  raster : DAF.Geometry.ContinuousTerrainRaster mesh charge
  source : DAF.Prismatic.TerrainSourceRealization G F P
  bridge : DAF.Prismatic.RasterSourceBridge source raster

namespace BinaryChargedPrismaticTerrain

variable
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {V : Type uV} [Fintype V] [DecidableEq V]
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {mesh : DAF.Geometry.PrismMesh carrier}
    {F : DAF.Fabric.Fabric}
    {P : DAF.Prismatic.Theory}

/-- The raster bridge canonically supplies the active-cell placement certificate. -/
def cellAbsolutePlacement
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P) :
    CellAbsolutePlacement G V carrier mesh where
  vertexCoordinate := T.bridge.vertexCoordinate
  locus := fun cell ↦
    ⟨(mesh.cellVertices cell.1).map T.bridge.vertexCoordinate⟩
  locus_coordinates := by
    intro cell
    rfl

/--
The exact absolute discrete locus of an active geometric cell.  It is derived
from the cell's declared vertices and the raster bridge's global-coordinate
embedding, so no cell placement can silently depend on local enumeration.
-/
def activeCellGlobalLocus
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P)
    (cell : mesh.ActiveCell) :
    DAF.Terrain.AbsoluteRegion G :=
  T.cellAbsolutePlacement.locus cell

/-- Every active mesh cell has its exact vertex-defined absolute global locus. -/
@[simp]
theorem activeCell_global_locus
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P)
    (cell : mesh.ActiveCell) :
    (T.activeCellGlobalLocus cell).coordinates =
      (mesh.cellVertices cell.1).map T.bridge.vertexCoordinate :=
  T.cellAbsolutePlacement.locus_coordinates cell

/-- Every active cell admits the exact absolute locus certified above. -/
theorem activeCell_has_exact_global_locus
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P)
    (cell : mesh.ActiveCell) :
    ∃ locus : DAF.Terrain.AbsoluteRegion G,
      locus.coordinates =
        (mesh.cellVertices cell.1).map T.bridge.vertexCoordinate :=
  ⟨T.activeCellGlobalLocus cell, T.activeCell_global_locus cell⟩

/-- A vertex declared in an active cell is present at its exact global coordinate. -/
theorem activeCell_vertex_has_global_coordinate
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P)
    (cell : mesh.ActiveCell)
    {v : V}
    (hv : v ∈ mesh.cellVertices cell.1) :
    T.bridge.vertexCoordinate v ∈
      (T.activeCellGlobalLocus cell).coordinates :=
  T.cellAbsolutePlacement.locus_coordinates cell ▸
    Finset.mem_map_of_mem T.bridge.vertexCoordinate hv

/-- Embedded vertices retain their exact one-bit charge in the raster. -/
theorem raster_vertex_charge
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P)
    (v : V) (i : Fin T.charge.channels) :
    T.raster.field
        ⟨carrier.vertexPoint v, carrier.vertex_mem v⟩ i =
      DAF.Geometry.boolToReal (T.charge.bits v i) :=
  T.raster.at_vertex v i

/-- The chosen raster representation commutes with the located source object. -/
theorem raster_prismatic_square
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P)
    (v : V) :
    T.bridge.rasterRepresentation
        (fun i ↦ T.raster.field
          ⟨carrier.vertexPoint v, carrier.vertex_mem v⟩ i) =
      T.source.source.cellCorrespondence
        (T.source.cellAt (T.bridge.vertexCoordinate v)).2 :=
  T.bridge.realization_commutes_at_vertex v

/-- Vertex-to-global placement is exact and injective. -/
theorem vertex_global_injective
    (T : BinaryChargedPrismaticTerrain G V carrier mesh F P) :
    Function.Injective T.bridge.vertexCoordinate :=
  T.bridge.vertexCoordinate_injective

end BinaryChargedPrismaticTerrain

end DAF.Integration
