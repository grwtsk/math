# Witness Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec30b21d2b68323adff83e2c5d7a4dd9c26be942` · SHA-256 `70afc53c00c96ec62503f29f498260fca2575ec0e8dfcc3b29a037462246f2f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Formal.Checked.Geometry.Authority.Witness

def rustLeaf : String := "src/lib/geometry/src/authority_bit_matrix/witness.rs"

def leanLeaf : String := "src/formal/Formal/Checked/Geometry/Authority/Witness.lean"

theorem authority_witness_leaf_maps_to_rust_leaf :
    rustLeaf = "src/lib/geometry/src/authority_bit_matrix/witness.rs" := by
  rfl

end Formal.Checked.Geometry.Authority.Witness
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95531325de5c2d9f3ad12f72ef9d5b74dc3d2503f95271eaa96e2b5e3fb953ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variant70afc53c00c96ec62503f29f498260fca2575ec0e8dfcc3b29a037462246f2f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
