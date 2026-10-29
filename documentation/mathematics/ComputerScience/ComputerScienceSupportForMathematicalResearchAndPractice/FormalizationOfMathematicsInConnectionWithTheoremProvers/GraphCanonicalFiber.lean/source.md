# Graph Canonical Fiber — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7691f6a678f17a1ac3a85878ce20d2e34ef9f3c8` · SHA-256 `806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.Basic

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

inductive CanonicalFiber where
  | pipelineCenter
  | pipelinePhase
  | poleFamily
  | residueAlgebra
  | sourceTreeGeometry
  | targetBoundary
  | finiteWitness
  | modularCarrier
  | researchCorpus
  | validationShell
  | braidConformance
  | buildShell
deriving DecidableEq, Repr

inductive SourceEdgeKind where
  | parentChild
  | aggregator
  | phasePoleCorrespondence
  | targetWitnessMirror
  | modularWaveBridge
  | validationCoverage
  | researchTopicReference
deriving DecidableEq, Repr

structure SourceVertex where
  path : String
  fiber : CanonicalFiber
  heat : Nat
  weight : Nat
  residueClass : String
deriving DecidableEq, Repr

structure SourceEdge where
  source : String
  target : String
  kind : SourceEdgeKind
deriving DecidableEq, Repr

def buildShellExcluded (path : String) : Bool :=
  path = "formal/.lake"

theorem lake_is_excluded :
    buildShellExcluded "formal/.lake" = true := by
  rfl

end Think.RadoProjectedModularHeatflow
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05b3223486bf81d91132d0aa065e469b78ee712670317617c22dd9edc12b4bec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Graph/Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
