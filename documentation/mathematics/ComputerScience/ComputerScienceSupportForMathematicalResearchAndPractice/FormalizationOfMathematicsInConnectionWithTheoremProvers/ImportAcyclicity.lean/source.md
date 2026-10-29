# Import Acyclicity — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15dd0fe67fe9798d7305017fcde77218236ce708` · SHA-256 `63bad75472afa9d033f174a409b35d460f9175fcc4e4d41086de02727f876e43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Validation.TargetNonclaims

set_option autoImplicit false

namespace Think.Validation

structure ImportClosureWitness where
  root : Think.Target
  phaseCount : Nat
  residueCount : Nat

def importClosureWitness : ImportClosureWitness :=
  { root := FWR.Target.CenterWeightedPipeline
    phaseCount := Think.centerSpine.length
    residueCount := Think.Residues.ledger.length }

theorem importClosureWitness_root :
    importClosureWitness.root = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Validation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=768128a32d5c6759035b42e74cd74093c58a891d1dff022d0cdf65f84db2a5a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportAcyclicity/Variant63bad75472afa9d033f174a409b35d460f9175fcc4e4d41086de02727f876e43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
