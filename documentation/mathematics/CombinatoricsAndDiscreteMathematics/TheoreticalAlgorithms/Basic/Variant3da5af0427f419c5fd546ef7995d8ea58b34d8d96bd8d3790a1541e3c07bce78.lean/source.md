# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant3da5af0427f419c5fd546ef7995d8ea58b34d8d96bd8d3790a1541e3c07bce78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e680831724ba38cdc1151d5da26c965b4c08f35f` · SHA-256 `3da5af0427f419c5fd546ef7995d8ea58b34d8d96bd8d3790a1541e3c07bce78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.Residue

set_option autoImplicit false

namespace Think.Residues

def allPipelineResidues : List Think.Residue :=
  Think.pipelineResidues

theorem allPipelineResidues_count :
    allPipelineResidues.length = 71 := by
  rfl

end Think.Residues
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6289081cfb493ca7f337768902fe8faeade7408e4fe7380efe6ba6820e38d6b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3da5af0427f419c5fd546ef7995d8ea58b34d8d96bd8d3790a1541e3c07bce78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
