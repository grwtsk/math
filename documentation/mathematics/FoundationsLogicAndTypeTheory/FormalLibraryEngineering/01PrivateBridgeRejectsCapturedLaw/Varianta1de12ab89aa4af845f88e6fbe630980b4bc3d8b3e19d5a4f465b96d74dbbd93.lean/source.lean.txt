import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation

namespace FCRS.TheoremTransfer.Cycle6.PrivateBridge

open FCRS.Transport
open FCRS.TheoremTransfer.Adapters.FCRSTransport

universe uInput uWitness uCoordinate uEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate} {Edge : Type uEdge}
variable {profile : IntervalProfile Input Witness} {input : Input}
variable {graph : CoordinateGraph .Materialized Coordinate Edge}
variable {consequence : GraphConsequence graph}
variable (capturedTargetProof : consequence.statement)

/--
The cycle-5 arbitrary-law attack is submitted independently against the public
API.  `fail_if_success` makes this audit reproduction compile only when Lean
rejects direct construction of the module-private bridge constructor.
-/
example : True := by
  fail_if_success
    exact ({
      bridgeArtifact := projectionVersion "cycle-6-forbidden-captured-bridge"
      law := fun _sourceProof => capturedTargetProof
    } : FullNativePreservationBridge
      (profile := profile) (input := input) (consequence := consequence))
  trivial

end FCRS.TheoremTransfer.Cycle6.PrivateBridge
