-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ManifestDir.Variante45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ManifestDir.Variante45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec","mathematical_subject":"Computation.DataStructures","original_sha256":"e45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/Manifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ManifestDir.Variante45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec

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
