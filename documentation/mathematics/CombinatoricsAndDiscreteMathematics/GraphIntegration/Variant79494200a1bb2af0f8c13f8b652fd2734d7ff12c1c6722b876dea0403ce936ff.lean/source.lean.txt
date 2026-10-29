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
