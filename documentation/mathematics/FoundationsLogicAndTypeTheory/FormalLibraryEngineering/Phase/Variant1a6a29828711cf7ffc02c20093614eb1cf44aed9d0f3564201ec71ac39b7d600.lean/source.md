# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Phase.Variant1a6a29828711cf7ffc02c20093614eb1cf44aed9d0f3564201ec71ac39b7d600

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5b9a64d77fe5967cb01ddb8ea9220032c01b3fe` · SHA-256 `1a6a29828711cf7ffc02c20093614eb1cf44aed9d0f3564201ec71ac39b7d600`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Lean
public meta import Surface.Core.Classification

/-!
# Proof lifecycle

The lifecycle is indexed in Lean.  `PhaseStep` contains only legal adjacent
transitions, so metadata cannot skip elaboration, kernel checking, or audit.
-/

public section

namespace Surface.Core

/-- The canonical lifecycle of a theorem task. -/
@[surface_novel]
inductive ProofPhase where
  | proposed
  | normalized
  | mathlibRetrieved
  | elaborated
  | kernelChecked
  | minimized
  | published
deriving DecidableEq, Repr, BEq

/-- Legal adjacent transitions in the theorem lifecycle. -/
@[surface_novel]
inductive PhaseStep : ProofPhase → ProofPhase → Type where
  | normalize : PhaseStep .proposed .normalized
  | retrieveMathlib : PhaseStep .normalized .mathlibRetrieved
  | elaborate : PhaseStep .mathlibRetrieved .elaborated
  | kernelCheck : PhaseStep .elaborated .kernelChecked
  | minimize : PhaseStep .kernelChecked .minimized
  | publish : PhaseStep .minimized .published

/-- A monotone rank used by scheduling and audit code, never as proof authority. -/
def ProofPhase.rank : ProofPhase → Nat
  | .proposed => 0
  | .normalized => 1
  | .mathlibRetrieved => 2
  | .elaborated => 3
  | .kernelChecked => 4
  | .minimized => 5
  | .published => 6

@[surface_novel, surface_published] theorem PhaseStep.rank_strict
    {a b : ProofPhase} (step : PhaseStep a b) :
    a.rank < b.rank := by
  cases step <;> decide

end Surface.Core
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=459d81d385b899249fce6ce03c8940f635c024370b45b5d05b25f2443b0859a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Phase/Variant1a6a29828711cf7ffc02c20093614eb1cf44aed9d0f3564201ec71ac39b7d600.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
