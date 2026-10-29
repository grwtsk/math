# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dependency.Variantdfc48ced0c7798bf0e83786dac6d1757fe0ee4813bef5f35a62a5c80366d5a16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7de626ad7e5fa7abab02467ba6a59d54e7ad805` · SHA-256 `dfc48ced0c7798bf0e83786dac6d1757fe0ee4813bef5f35a62a5c80366d5a16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-!
# Explicit reconstruction dependencies

Every edge is indexed by its semantic source element.  Historical labels and
filesystem placement are absent from the target language.
-/

namespace Mathematics.Geometry

inductive AssumptionChannel
  | incidence
  | order
  | congruence
  | construction
  | parallel
  | continuity
  deriving DecidableEq, Repr

inductive DependencyTarget
  | assumption
      (channel : AssumptionChannel)
      (assumptionId : StableId)
  | theoremElement (elementId : ElementId)
  | kernelPrimitive (declarationName : String)
  deriving DecidableEq, Repr

inductive DependencyRole
  | statementVocabulary
  | hypothesis
  | proof
  | constructionCertificate
  deriving DecidableEq, Repr

/-- One declared edge from the type-indexed semantic source. -/
structure DependencyEdge (source : ElementId) where
  edgeId : StableId
  edgeId_valid : edgeId.Valid
  target : DependencyTarget
  role : DependencyRole

namespace DependencyEdge

/-- The edge source is determined by its type, never by a path lookup. -/
def sourceId {source : ElementId} (_ : DependencyEdge source) : ElementId :=
  source

end DependencyEdge

def incidenceAssumptionId : StableId :=
  { value := "assumption:geometry:incidence" }

def orderAssumptionId : StableId :=
  { value := "assumption:geometry:order" }

def congruenceAssumptionId : StableId :=
  { value := "assumption:geometry:congruence" }

def constructionAssumptionId : StableId :=
  { value := "assumption:geometry:construction" }

def parallelAssumptionId : StableId :=
  { value := "assumption:geometry:parallel" }

def continuityAssumptionId : StableId :=
  { value := "assumption:geometry:continuity" }

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b33fe36cce5391b48d74740e3e1e72646a61039e498c3e1ab84dc8fa4cbed455 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variantdfc48ced0c7798bf0e83786dac6d1757fe0ee4813bef5f35a62a5c80366d5a16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
