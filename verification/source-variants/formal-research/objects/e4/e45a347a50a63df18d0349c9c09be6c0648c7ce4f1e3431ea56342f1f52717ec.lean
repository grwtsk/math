import Folder.Archive.SafePath
import Folder.Archive.SymmetricStream

/-!
# Folder.Archive.Manifest

Radiation role: archive-manifest
BinaryMatrix spine: This module distinguishes atom dictionaries from logical BinaryMatrixStream layers in archive manifests.
Ontology: archive.manifest
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/

namespace Folder
namespace Archive

structure ManifestDir where
  path : SafeRelPath
  mode : Nat

structure AtomRef where
  index : Nat
  sha256 : String
  rows : Nat
  cols : Nat

structure SpinRef where
  spinName : String

structure RecipeRef where
  logicalLayer : Nat
  atomIndex : Nat
  spinName : String
  ruleName : String
  factorLabel : String

structure ManifestFile where
  path : SafeRelPath
  size : Nat
  sha256 : String
  logicalLayers : List Nat
  mode : Nat
  factorLabel : String

structure ArchiveManifest where
  dirs : List ManifestDir
  files : List ManifestFile
  atomCount : Nat
  logicalLayerCount : Nat
  symmetryGroup : String
  rulebookId : String
  bitOrder : String := "msb0"
  matrixCols : Nat := 8

def StreamMatchesManifest
    (M : ArchiveManifest)
    (S : SymmetricMatrixStream A E) : Prop :=
  S.length = M.logicalLayerCount ∧
    S.dictionary.atoms.length = M.atomCount

theorem stream_matches_logical_layer_count
    {M : ArchiveManifest}
    {S : SymmetricMatrixStream A E}
    (h : StreamMatchesManifest M S) :
    S.length = M.logicalLayerCount :=
  h.1

theorem stream_matches_atom_count
    {M : ArchiveManifest}
    {S : SymmetricMatrixStream A E}
    (h : StreamMatchesManifest M S) :
    S.dictionary.atoms.length = M.atomCount :=
  h.2

end Archive
end Folder
