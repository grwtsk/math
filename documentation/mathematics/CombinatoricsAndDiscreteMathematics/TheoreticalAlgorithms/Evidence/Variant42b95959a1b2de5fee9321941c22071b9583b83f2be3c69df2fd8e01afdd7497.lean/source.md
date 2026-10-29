# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Evidence.Variant42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c20da4eb8adcd51b7a301b4fd517edb005382ed` · SHA-256 `42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Oracle.Naming.Name
import MathDiscovery.Core.Id

/-! # Exact evidence packets for deterministic naming -/

namespace MathDiscovery.Oracle.Naming

open MathDiscovery

structure NamingEvidence where
  atomId : SourceAtomId
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

def NamingEvidence.StableFor (evidence : NamingEvidence) (atomId : SourceAtomId) : Prop :=
  evidence.atomId = atomId

end MathDiscovery.Oracle.Naming
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6182725bc9a87223342a80774d7c3f8f4c5519a163938e631390224c7125b7fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Evidence/Variant42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
