# Graph Integration — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6403af25f42ef333119ba44a349379c4539a76b3` · SHA-256 `79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Priority
import Mathematics.GraphAccess.All

/-!
# Graph-access compilation

RH objectives compile into the existing closed graph-access objective/mode
contract.  Domain scheduling hints remain advisory when the foundational
support relation does not assign them the requested authority.
-/

namespace Mathematics.RHIsolation

open Mathematics.GraphAccess

inductive RHNodeClass
  | analyticCell
  | zeroCountCertificate
  | uniqueZeroEnvelope
  | spectralCandidate
  | localCorrespondence
  | traceContribution
  | unresolvedObligation
deriving DecidableEq, Ord, Repr, Fintype

inductive RHEdgeClass
  | refines
  | countedBy
  | containsSameZero
  | symmetryPartner
  | proposedBySpectrum
  | locallyCorresponds
  | contributesToTrace
  | blocksCompleteness
deriving DecidableEq, Ord, Repr, Fintype

inductive RHObjective
  | certifyZeroCount
  | isolateAllZeros
  | auditFiniteHeightCompleteness
  | proposeSpectralMatches
  | certifyFiniteSpectralClosure
  | inspectCofinalCompatibility
  | searchTraceFactorization
deriving DecidableEq, Repr

def canonicalGraphModePlan
    (objective : AccessObjective) :
    ModePlan objective where
  primary := canonicalPrimaryMode objective
  supports :=
    canonicalPrimaryMode_supports objective
  tieBreaker := .canonicalOrder
  tieBreakerAllowed :=
    .canonical (canonicalPrimaryMode objective)
  revision := ⟨1⟩

structure RHGraphAccessPlan
    (objective : RHObjective) where
  graphObjective : AccessObjective
  graphPlan : ModePlan graphObjective
  analyticSchedulerHint :
    Option TraversalMode
  schedulerHintAdvisory : Prop
  schedulerHintAdvisoryProof :
    schedulerHintAdvisory

def RHObjective.toGraphAccessPlan :
    (objective : RHObjective) →
      RHGraphAccessPlan objective
  | .certifyZeroCount =>
      {
        graphObjective := .primitiveObstruction
        graphPlan :=
          canonicalGraphModePlan
            .primitiveObstruction
        analyticSchedulerHint := none
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .isolateAllZeros =>
      {
        graphObjective := .universalCoverage
        graphPlan :=
          canonicalGraphModePlan
            .universalCoverage
        analyticSchedulerHint := some .bfs
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .auditFiniteHeightCompleteness =>
      {
        graphObjective := .universalCoverage
        graphPlan :=
          canonicalGraphModePlan
            .universalCoverage
        analyticSchedulerHint := some .bfs
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .proposeSpectralMatches =>
      {
        graphObjective := .goalDirectedCost
        graphPlan :=
          canonicalGraphModePlan
            .goalDirectedCost
        analyticSchedulerHint := some .astar
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .certifyFiniteSpectralClosure =>
      {
        graphObjective := .universalCoverage
        graphPlan :=
          canonicalGraphModePlan
            .universalCoverage
        analyticSchedulerHint := none
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .inspectCofinalCompatibility =>
      {
        graphObjective := .limitCylinderAccess
        graphPlan :=
          canonicalGraphModePlan
            .limitCylinderAccess
        analyticSchedulerHint := some .cylinder
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .searchTraceFactorization =>
      {
        graphObjective := .invariantSampling
        graphPlan :=
          canonicalGraphModePlan
            .invariantSampling
        analyticSchedulerHint :=
          some .lowDiscrepancy
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }

theorem RHObjective.compiledPlan_supported
    (objective : RHObjective) :
    Supports
      objective.toGraphAccessPlan.graphPlan.primary
      objective.toGraphAccessPlan.graphObjective :=
  objective.toGraphAccessPlan.graphPlan.supports

end Mathematics.RHIsolation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77b059ab0299f09f0e45aeba4180d32fb4e771c99534e1918cd5df61aaae27b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
