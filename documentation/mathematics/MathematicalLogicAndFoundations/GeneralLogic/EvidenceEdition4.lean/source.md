# Evidence Edition4 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b34ac8d3300b27f07f85f0979bd05ab4bd446916` · SHA-256 `a6facaa7bcf05c86083fa7cf6a8783878508ff83c5f56c5014570a6488ec8341`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Oracle.Naming.Name
import Mathematics.Core.Id

/-! # Exact evidence packets for deterministic naming -/

namespace Mathematics.Oracle.Naming

open Mathematics

structure NamingEvidence where
  elementId : SourceElementId
  language : PointLanguage
  declarationNames : Array String
  declarationKinds : Array String
  typeSummaries : Array String
  conceptCoordinates : Array String
  taxonomyCoordinates : Array String
  publicInputs : Array String
  publicOutputs : Array String
  generatedCompanions : Array String
  providerKinds : Array String
  supportIds : Array String
  evidenceDigest : Digest
  deriving DecidableEq, Repr

def NamingEvidence.Supports (evidence : NamingEvidence) (supportId : String) : Prop :=
  supportId ∈ evidence.supportIds

def NamingEvidence.StableFor (evidence : NamingEvidence) (elementId : SourceElementId) : Prop :=
  evidence.elementId = elementId

end Mathematics.Oracle.Naming
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e4dd3f73ac39021d4de8272faa2a29f2b12549302f3bd771130e4616c778f5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Evidence/Varianta6facaa7bcf05c86083fa7cf6a8783878508ff83c5f56c5014570a6488ec8341.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
