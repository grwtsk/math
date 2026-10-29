# Pole Boundary Leaf — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12fe62167d5b6d6725d56c2df42f645c6ca71956` · SHA-256 `d48c4a30d396a29d629df2384ad67207935f9fea7a9f6062afb790137961708c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=01010000|role=proof_code_atom|slug=pipeline-leaves-boundary-poleboundaryleaf|owner=canonical_owner|core=Pipeline/Leaves/Boundary/PoleBoundaryLeaf.lean|leaf=M506970656c696e652f4c65617665732f426f756e646172792f506f6c65426f756e646172794c6561662e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Leaves.Boundary.PoleBoundaryLeaf

def surfaceId : String := "Pipeline/Leaves/Boundary/PoleBoundaryLeaf"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Leaves/Boundary/PoleBoundaryLeaf" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Leaves.Boundary.PoleBoundaryLeaf
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ad246aeffb7e6ef26da384c613bb85d8bf366ba2ec46383f0cedf2e63acf85c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c65617665732f426f756e646172792f506f6c65426f756e646172794c656/Variantd48c4a30d396a29d629df2384ad67207935f9fea7a9f6062afb790137961708c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
