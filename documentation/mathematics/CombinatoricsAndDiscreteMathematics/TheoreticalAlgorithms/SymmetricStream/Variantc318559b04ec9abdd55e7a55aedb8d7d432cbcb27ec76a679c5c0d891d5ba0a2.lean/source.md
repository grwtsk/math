# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SymmetricStream.Variantc318559b04ec9abdd55e7a55aedb8d7d432cbcb27ec76a679c5c0d891d5ba0a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c3c3f851f8d8f3597a915d6515fb3c5085112d4` · SHA-256 `c318559b04ec9abdd55e7a55aedb8d7d432cbcb27ec76a679c5c0d891d5ba0a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.SymmetricStream

/-!
# Folder.Theorem.Archive.SymmetricStream

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes symbolic stream copy materialization.
Ontology: proof.archive.symmetric_stream
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: carrier
-/

namespace Folder
namespace Theorem
namespace Archive

theorem materialize_copy_atom_stream
    (xs : List Folder.Carrier.BinaryMatrix) :
    Folder.Archive.materialize? (Folder.Archive.copyAtomStream xs) =
      some (Folder.Archive.binaryMatrixStreamOfList xs) :=
  Folder.Archive.materialize_copy_atom_stream xs

end Archive
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aed49da4e0b24dd3c3e627ba66580f1f26b3204496eba332de9f4b85fc8122c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SymmetricStream/Variantc318559b04ec9abdd55e7a55aedb8d7d432cbcb27ec76a679c5c0d891d5ba0a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
