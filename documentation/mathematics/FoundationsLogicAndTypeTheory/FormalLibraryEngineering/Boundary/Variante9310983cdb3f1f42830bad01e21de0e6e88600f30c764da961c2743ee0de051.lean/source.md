# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variante9310983cdb3f1f42830bad01e21de0e6e88600f30c764da961c2743ee0de051

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d8564b11a0533443aefd21779dbd0e7aebbea75` · SHA-256 `e9310983cdb3f1f42830bad01e21de0e6e88600f30c764da961c2743ee0de051`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GatewayProof.Authority

namespace GatewayProof
namespace Boundary

open GatewayProof.Authority

inductive ProjectionSurface
| targetServiceDescriptor
| targetGatewayDescriptor
| songAdventurePacket
| arrowStreamPacket
| repositoryProofRun
| bufferCarriagePacket
deriving Repr, DecidableEq

structure BoundaryFlags where
  candidateOnly : Bool
  createsRoute : Bool
  provesRuntime : Bool
  quiverTruthMoved : Bool
  bowReleaseMoved : Bool
  callIntakeMoved : Bool
  targetCustodyMoved : Bool
  operatorConsentCreated : Bool
deriving Repr, DecidableEq

def flagsFor : ProjectionSurface -> BoundaryFlags
| .targetServiceDescriptor => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .targetGatewayDescriptor => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .songAdventurePacket => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .arrowStreamPacket => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .repositoryProofRun => { candidateOnly := false, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .bufferCarriagePacket => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }

def noBoundaryCollapse (surface : ProjectionSurface) : Prop :=
  (flagsFor surface).createsRoute = false ∧
  (flagsFor surface).provesRuntime = false ∧
  (flagsFor surface).quiverTruthMoved = false ∧
  (flagsFor surface).bowReleaseMoved = false ∧
  (flagsFor surface).callIntakeMoved = false ∧
  (flagsFor surface).targetCustodyMoved = false ∧
  (flagsFor surface).operatorConsentCreated = false

theorem target_service_descriptor_no_boundary_collapse :
    noBoundaryCollapse ProjectionSurface.targetServiceDescriptor := by
  simp [noBoundaryCollapse, flagsFor]

theorem target_gateway_descriptor_no_boundary_collapse :
    noBoundaryCollapse ProjectionSurface.targetGatewayDescriptor := by
  simp [noBoundaryCollapse, flagsFor]

theorem song_packet_no_boundary_collapse :
    noBoundaryCollapse ProjectionSurface.songAdventurePacket := by
  simp [noBoundaryCollapse, flagsFor]

theorem repository_proof_run_not_runtime_proof :
    (flagsFor ProjectionSurface.repositoryProofRun).provesRuntime = false := by
  rfl

theorem gateway_boundary_transport_only :
    gatewayBoundary.gatewayTransportOnly = true ∧
    gatewayBoundary.quiverTruthTransferred = false ∧
    gatewayBoundary.bowReleaseTransferred = false ∧
    gatewayBoundary.callIntakeTransferred = false ∧
    gatewayBoundary.targetExecutionCustodyTransferred = false ∧
    gatewayBoundary.operatorConsentCreated = false ∧
    gatewayBoundary.hostedRuntimeProofCreated = false := by
  simp [gatewayBoundary]

end Boundary
end GatewayProof
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dec136e18550c531cec29d63b32d729bc66bce319bc4ca423b793792b36147d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variante9310983cdb3f1f42830bad01e21de0e6e88600f30c764da961c2743ee0de051.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
