# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CognitiveLoad.Variantaf1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c61e2387025fed40e065c2482c4d219b5f490e8b` · SHA-256 `af1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Advisory stratified cognitive load

The score controls disclosure only and is not mathematical evidence.
-/

namespace Mathematics.StratifiedBoundary

structure StratifiedCognitiveLoad where
  prerequisiteLoad : Nat
  localLoad : Nat
  relationLoad : Nat
  unknownLoad : Nat
  operationLoad : Nat
  verificationLoad : Nat
  bitLoad : Nat
  obstructionLoad : Nat
  stratumLoad : Nat
  successorLoad : Nat
  limitLoad : Nat
  traceLoad : Nat

def StratifiedCognitiveLoad.total
    (load : StratifiedCognitiveLoad) : Nat :=
  load.prerequisiteLoad +
  load.localLoad +
  load.relationLoad +
  load.unknownLoad +
  load.operationLoad +
  load.verificationLoad +
  load.bitLoad +
  load.obstructionLoad +
  load.stratumLoad +
  load.successorLoad +
  load.limitLoad +
  load.traceLoad

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=076798fd75ad8753fcde59780b46fc803b5a2868d43a19328f499c5e5e4c3e1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveLoad/Variantaf1cd0eb4d83d221be425f20df4051fce968e4a6db8d83931e4f43523b7a0c49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
