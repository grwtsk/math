# Leaf Non Overlap Correct — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5929812deff3fa93afab01971f9ac0b6d5816700` · SHA-256 `c075868cd5453c5af75f4dcc5dbd35e9d1bbd2ff2b57323d931734099d670d7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=00110100|role=proof_code_atom|slug=pipeline-validation-leafnonoverlapcorrect|owner=canonical_owner|core=Pipeline/Validation/LeafNonOverlapCorrect.lean|leaf=M506970656c696e652f56616c69646174696f6e2f4c6561664e6f6e4f7665726c6170436f72726563742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation.LeafNonOverlapCorrect

def surfaceId : String := "Pipeline/Validation/LeafNonOverlapCorrect"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Validation/LeafNonOverlapCorrect" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Validation.LeafNonOverlapCorrect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ded2c624531f9b74fec78668eb38c62f5c266ae5375ae6f4a5e6a158be89211f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c6561664e6f6e4f7665726c6170436f7272656/Variantc075868cd5453c5af75f4dcc5dbd35e9d1bbd2ff2b57323d931734099d670d7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
