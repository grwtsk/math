# Index Spin Ref — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d34acf163ce1fb0bd3c0b0667d393577b161692` · SHA-256 `7c76b07bf6ee637e11fd0ed0139a32d482a326d24baf779ad2262c2da8404e3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.IndexSpinRef

/-!
# Folder.Theorem.Archive.IndexSpinRef

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes index-spin reference realization.
Ontology: proof.archive.index_spin_ref
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem realize_copy_id
    (D : Folder.Archive.MatrixAtomDictionary)
    (i : Nat)
    (M : Folder.Carrier.BinaryMatrix)
    (h : D.get? i = some M) :
    Folder.Archive.realizeIndexSpin? Folder.Archive.copyAction D
      { index := i, spin := () } = some M :=
  Folder.Archive.realize_copy_id D i M h

end Archive
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b78dba1cfc37160b5e20ab9322c3f607e33cb5a9d695f435902c9949d6399a24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexSpinRef/Variant7c76b07bf6ee637e11fd0ed0139a32d482a326d24baf779ad2262c2da8404e3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
