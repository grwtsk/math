# Manifest Manifest Dir — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a4d6b6c8dc0e4e3e87927e376a96aac40e08d46` · SHA-256 `e45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cc8dcdee30396780ca954d51fb7dab5885ea6b24040706188545de57ca4896d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variante45a347a50a63df18d0349c9c09be6c0648c7ce4f1e3431ea56342f1f52717ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
