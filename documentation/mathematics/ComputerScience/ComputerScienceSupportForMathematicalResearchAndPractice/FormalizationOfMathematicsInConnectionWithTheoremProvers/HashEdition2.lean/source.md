# Hash Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f71823e2f2775386acb8036825baa920818cc483` · SHA-256 `cec94c87e43dee13c9ca904efe6a6f4aa9112657be3582d13a49a74cf4b2e27f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Formal.Geometry.Authority.Hash

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/hash.rs"

def leanLeaf : String := "src/formal/Formal/Geometry/Authority/Hash.lean"

theorem authority_hash_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/hash.rs" := by
  rfl

end Formal.Geometry.Authority.Hash
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e54dab8753968a7a75bbe3f32fa0f0d32ada456d4cdc88afad59b45e9b360123 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hash/Variantcec94c87e43dee13c9ca904efe6a6f4aa9112657be3582d13a49a74cf4b2e27f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
