# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant5b9af9d53476f50381c24e8fb5d4e6be0e343a139863c5fdf8277b51e558ee40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65866ce707a305d8a71eb0183d6b0372119af0e2` · SHA-256 `5b9af9d53476f50381c24e8fb5d4e6be0e343a139863c5fdf8277b51e558ee40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Residues.Basic

set_option autoImplicit false

namespace Think.Residues

def ledger : List Think.Residue :=
  allPipelineResidues

theorem ledger_count :
    ledger.length = 71 := by
  rfl

end Think.Residues
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25ca77b5109386cdb9658e9636d32b78c95a55abd2694e12c459c870d2a0d159 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ledger/Variant5b9af9d53476f50381c24e8fb5d4e6be0e343a139863c5fdf8277b51e558ee40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
