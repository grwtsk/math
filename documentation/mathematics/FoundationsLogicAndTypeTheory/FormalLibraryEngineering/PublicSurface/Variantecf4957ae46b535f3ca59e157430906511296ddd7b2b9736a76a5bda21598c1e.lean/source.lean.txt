namespace GatewayProof
namespace PublicSurface

/-- Public entrypoints intentionally exposed by Gateway's Rust crate. -/
inductive PublicEntrypoint
| runFromEnv
| runGateway
| runtimeTopologyConfig
| topologyMode
| upstreamMode
| relayRoutes
| relayRouteBindings
deriving Repr, DecidableEq

/-- Repository-layer claim posture for the Lean skeleton. -/
structure SkeletonPosture where
  leanPackageExists : Bool
  runtimeBehaviorChanged : Bool
  hostedRuntimeProof : Bool
  authorityExpansion : Bool
deriving Repr, DecidableEq

def firstSlicePosture : SkeletonPosture := {
  leanPackageExists := true,
  runtimeBehaviorChanged := false,
  hostedRuntimeProof := false,
  authorityExpansion := false
}

theorem skeleton_does_not_claim_runtime_change :
    firstSlicePosture.runtimeBehaviorChanged = false := by
  rfl

theorem skeleton_does_not_claim_hosted_runtime_proof :
    firstSlicePosture.hostedRuntimeProof = false := by
  rfl

theorem skeleton_does_not_expand_authority :
    firstSlicePosture.authorityExpansion = false := by
  rfl

end PublicSurface
end GatewayProof
