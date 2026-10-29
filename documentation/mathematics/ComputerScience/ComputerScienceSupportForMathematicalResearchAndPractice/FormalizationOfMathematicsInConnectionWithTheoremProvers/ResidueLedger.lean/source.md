# Residue Ledger — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `164f82e0a297c24badef6dd7c1c6283e55b69ec7` · SHA-256 `600d2e3ac4d0cc201110a6bb85d7c1d5ce300aac761888d4653766b09d5f59a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=11100000|role=proof_code_atom|slug=pipeline-reports-residueledger|owner=canonical_owner|core=Pipeline/Reports/ResidueLedger.lean|leaf=M506970656c696e652f5265706f7274732f526573696475654c65646765722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports.ResidueLedger

def surfaceId : String := "Pipeline/Reports/ResidueLedger"
def ownsDeclaredSurface : Bool := true
def crossLeafReasoningRequiresGlue : Bool := true

theorem surface_id_declared :
    surfaceId = "Pipeline/Reports/ResidueLedger" := by
  rfl

theorem owns_declared_surface :
    ownsDeclaredSurface = true := by
  rfl

end Think.Pipeline.Reports.ResidueLedger
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58b3dc3f57be316527d6d4fd5f2b2f45f2402489a8209b19c82c60e97e49d2cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f5265706f7274732f526573696475654c65646765722e6c65616e/Variant600d2e3ac4d0cc201110a6bb85d7c1d5ce300aac761888d4653766b09d5f59a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
