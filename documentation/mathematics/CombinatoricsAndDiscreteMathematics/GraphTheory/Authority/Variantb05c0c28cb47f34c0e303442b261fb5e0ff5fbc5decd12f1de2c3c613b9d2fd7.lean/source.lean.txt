namespace GatewayProof
namespace Authority

inductive Authority
| gatewayTransport
| quiverTruth
| bowRelease
| callIntake
| targetExecutionCustody
| operatorConsent
| songTruth
| hostedRuntimeProof
| humanReview
| publicationAcceptance
deriving Repr, DecidableEq

structure AuthorityBoundary where
  gatewayTransportOnly : Bool
  quiverTruthTransferred : Bool
  bowReleaseTransferred : Bool
  callIntakeTransferred : Bool
  targetExecutionCustodyTransferred : Bool
  operatorConsentCreated : Bool
  hostedRuntimeProofCreated : Bool
deriving Repr, DecidableEq

def gatewayBoundary : AuthorityBoundary := {
  gatewayTransportOnly := true,
  quiverTruthTransferred := false,
  bowReleaseTransferred := false,
  callIntakeTransferred := false,
  targetExecutionCustodyTransferred := false,
  operatorConsentCreated := false,
  hostedRuntimeProofCreated := false
}

def targetDescriptorCreatesRoute : Prop := False
def targetReceiptIsGatewayRuntimeProof : Prop := False
def songPacketIsGatewayTruth : Prop := False

theorem descriptor_does_not_create_route :
    ¬ targetDescriptorCreatesRoute := by
  intro h
  exact h

theorem target_receipt_not_runtime_proof :
    ¬ targetReceiptIsGatewayRuntimeProof := by
  intro h
  exact h

theorem song_packet_not_gateway_truth :
    ¬ songPacketIsGatewayTruth := by
  intro h
  exact h

theorem gateway_boundary_no_quiver_transfer :
    gatewayBoundary.quiverTruthTransferred = false := by
  rfl

theorem gateway_boundary_no_target_execution_transfer :
    gatewayBoundary.targetExecutionCustodyTransferred = false := by
  rfl

end Authority
end GatewayProof
