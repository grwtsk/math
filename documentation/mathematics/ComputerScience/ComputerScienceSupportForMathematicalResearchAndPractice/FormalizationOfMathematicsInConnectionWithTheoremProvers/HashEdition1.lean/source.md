# Hash Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58b99f549072b9a2690d4dcb76f828726eb6486a` · SHA-256 `a2bb6409229382e8d65f654d7fac6a7b966e6b08f8b88a60c953244147f06b1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Formal.Checked.Geometry.Authority.Hash

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/hash.rs"

def leanLeaf : String := "src/formal/Formal/Checked/Geometry/Authority/Hash.lean"

theorem authority_hash_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/hash.rs" := by
  rfl

end Formal.Checked.Geometry.Authority.Hash
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4f7f51e79d8b4ba18066655f813b3f52c38cfcc3d73735189d6e351d8b56713 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Varianta2bb6409229382e8d65f654d7fac6a7b966e6b08f8b88a60c953244147f06b1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
