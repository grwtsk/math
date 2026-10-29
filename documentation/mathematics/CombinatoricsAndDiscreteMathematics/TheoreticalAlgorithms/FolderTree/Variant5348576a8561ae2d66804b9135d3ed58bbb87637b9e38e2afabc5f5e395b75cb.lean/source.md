# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FolderTree.Variant5348576a8561ae2d66804b9135d3ed58bbb87637b9e38e2afabc5f5e395b75cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c17b4ca2c3bf4be5a18669a2008eeaef5e4ce979` · SHA-256 `5348576a8561ae2d66804b9135d3ed58bbb87637b9e38e2afabc5f5e395b75cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.FileEntry

/-!
# Folder.Archive.FolderTree

Radiation role: archive-manifest
BinaryMatrix spine: This module stores canonical archive entries before they are presented as BinaryMatrixStream layers.
Ontology: archive.folder_tree
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/

namespace Folder
namespace Archive

structure FolderTree where
  entries : List ArchiveEntry
  unique_paths :
    entries.Pairwise (fun a b => a.path.value ≠ b.path.value)
  parent_dirs_present : Prop
  sorted : Prop

theorem folderTree_unique_paths
    (T : FolderTree) :
    T.entries.Pairwise (fun a b => a.path.value ≠ b.path.value) :=
  T.unique_paths

end Archive
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b4bc367e5e22e2acad70ffee4f247b0e674268e8353b1d67521b84b2a77d360 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FolderTree/Variant5348576a8561ae2d66804b9135d3ed58bbb87637b9e38e2afabc5f5e395b75cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
