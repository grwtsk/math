# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unknown.Variant289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da432e9161cea71b9c7ecaa27f0b673886bb95d0` · SHA-256 `289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Budget

/-!
# Graph-access unknown, rejection, and operational-failure channels

Unknown mathematics, malformed admission, and runtime failure inhabit separate
types and therefore cannot collapse into one another.
-/

namespace Mathematics.GraphAccess

inductive GraphAccessUnknownKind
  | graphFiniteness
  | neighborCompleteness
  | edgeAdmissibility
  | targetReachability
  | edgeCost
  | costProfileCompleteness
  | heuristicAdmissibility
  | heuristicConsistency
  | portLabelCompleteness
  | universalSequenceClass
  | actionAlphabetCompleteness
  | discrepancyBound
  | invariantLaw
  | testClassUniformity
  | recamanActionMap
  | plateauDetection
  | completionDecision
  | primitiveObstruction
  | projectiveCompatibility
  | cylinderStageIndependence
  | connectorResidual
  | independentVerification
  | replayCompatibility
  | resourceCompletion
  | modeInvariant
  | stateDecoding
deriving DecidableEq, Ord, Repr

inductive AccessRejection
  | modeObjectiveMismatch
  | invalidCostProfile
  | invalidAuthority
  | missingRequiredTarget
  | unsupportedGraphClass
  | invalidPortProfile
  | malformedLimitRequest
  | staleCut
  | malformedCheckpoint
  | cutDigestMismatch
  | missingProfile
  | unsupportedCombination
deriving DecidableEq, Repr

inductive OperationalFailure
  | storageUnavailable
  | checkpointCorrupt
  | checkerUnavailable
  | serializationFailure
  | internalInvariantViolation
  | profileRegistryUnavailable
deriving DecidableEq, Repr

structure VerificationProfileRef where
  digest : ProfileDigest
deriving DecidableEq, Repr

structure PresentationProfileRef where
  digest : ProfileDigest
deriving DecidableEq, Repr

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e7fe818b3e39748fe5647f7eb15cd4812d40e4a5caec987a239e2463938f9f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unknown/Variant289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
