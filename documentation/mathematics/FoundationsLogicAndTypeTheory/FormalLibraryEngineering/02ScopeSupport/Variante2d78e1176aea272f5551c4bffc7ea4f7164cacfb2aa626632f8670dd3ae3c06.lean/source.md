# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.02ScopeSupport.Variante2d78e1176aea272f5551c4bffc7ea4f7164cacfb2aa626632f8670dd3ae3c06

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99342f74ecb820a25ac27fef8c5b03c6c0205b34` · SHA-256 `e2d78e1176aea272f5551c4bffc7ea4f7164cacfb2aa626632f8670dd3ae3c06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle3ScopeWitness

open FCRS.Transport

def artifact {kind : ArtifactKind} (name : String) : ArtifactRef kind :=
  ⟨"https://example.invalid/cycle-3", name, "1", "sha256:" ++ name⟩

def graph : CoordinateGraph .Materialized Bool Unit where
  version := artifact "scope-graph"
  identityPolicy := .PairFunctional
  source := fun _ => false
  target := fun _ => false

def globalConsequence : GraphConsequence graph where
  consequenceArtifact := artifact "global-consequence"
  schema := artifact "global-schema"
  sensitivity := .Structural
  statement := ∀ coordinate : Bool, coordinate = coordinate

def falselyLocalProposition : GraphConsequenceProposition graph where
  consequence := globalConsequence
  source := false
  target := false

def falseOnlyScope : TransferScope (graphConsequenceTheory graph) where
  artifact := projectionVersion "false-only-graph-scope"
  contains := fun coordinate => coordinate = false

/-- The declared two-point support passes a false-only scope. -/
example : PropositionWithinScope (graphConsequenceTheory graph)
    falseOnlyScope falselyLocalProposition := by
  change false = false ∧ ∀ coordinate, coordinate ∈ [false] → coordinate = false
  simp

/-- The exact semantic proposition still universally quantifies over true. -/
example : (graphConsequenceTheory graph).Holds falselyLocalProposition ↔
    ∀ coordinate : Bool, coordinate = coordinate := Iff.rfl

example : ¬ falseOnlyScope.contains true := by
  change ¬ true = false
  decide

#check falselyLocalProposition

end FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle3ScopeWitness
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e76cf0f88d0715a143ea5fb01fcc8989ce16c98dd357db1fe3550e2ef1909a8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/02ScopeSupport/Variante2d78e1176aea272f5551c4bffc7ea4f7164cacfb2aa626632f8670dd3ae3c06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
