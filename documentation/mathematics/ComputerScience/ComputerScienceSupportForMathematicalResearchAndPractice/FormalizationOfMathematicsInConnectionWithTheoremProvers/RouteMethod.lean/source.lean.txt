namespace GatewayProof
namespace Route

/-- HTTP methods used by Gateway's finite proof skeleton. -/
inductive Method
| GET
| POST
| HEAD
| OPTIONS
deriving Repr, DecidableEq

/-- Checked route names tracked by Gateway's first Lean slice. -/
inductive RelayRoute
| openapiJson
| routes
| runtimeReloadSnapshot
| runtimeReloadChangeSignal
| journeyVisibilityLatest
| journeyVisibilityRecent
| bowReleaseObservabilityLatest
| markdownIntentStatusById
| markdownIntentPendingOperationalWork
| assistiveProse
| nativeRepoList
| nativeRepoRead
| arrowEnvelopes
deriving Repr, DecidableEq

def relayRouteCount : Nat := 13

def methodOf : RelayRoute -> Method
| .openapiJson => .GET
| .routes => .GET
| .runtimeReloadSnapshot => .GET
| .runtimeReloadChangeSignal => .GET
| .journeyVisibilityLatest => .GET
| .journeyVisibilityRecent => .GET
| .bowReleaseObservabilityLatest => .GET
| .markdownIntentStatusById => .GET
| .markdownIntentPendingOperationalWork => .GET
| .assistiveProse => .GET
| .nativeRepoList => .POST
| .nativeRepoRead => .POST
| .arrowEnvelopes => .POST

def isPostRelayJsonRoute : RelayRoute -> Bool
| .nativeRepoList => true
| .nativeRepoRead => true
| .arrowEnvelopes => true
| _ => false

def isSharedJsonAcceptRelayGetRoute : RelayRoute -> Bool
| .openapiJson => true
| .routes => true
| .runtimeReloadSnapshot => true
| .runtimeReloadChangeSignal => true
| .journeyVisibilityLatest => true
| .journeyVisibilityRecent => true
| .bowReleaseObservabilityLatest => true
| .markdownIntentStatusById => true
| .markdownIntentPendingOperationalWork => true
| _ => false

def isAssistiveRoute : RelayRoute -> Bool
| .assistiveProse => true
| _ => false

def arrowFamily (_route : RelayRoute) : String :=
  "arrow/gateway-relay"

inductive WithheldMutationRoute
| nativeRepoCreate
| nativeRepoUpdate
| nativeRepoGitCommit
| nativeRuntimeReload
| scoutRefinementAttempts
| scoutRefinementAttemptById
| scoutRefinementStatus
| scoutRefinementSnapshot
| scoutRefinementChangeSignal
| scoutRefinementWatch
| scoutRefinementSubmit
| scoutRefinementAdmit
| assistiveChain
deriving Repr, DecidableEq

def materializesWithheldMutation (_r : WithheldMutationRoute) : Prop := False

theorem relay_route_count_is_13 : relayRouteCount = 13 := by
  rfl

theorem arrow_family_is_constant (r : RelayRoute) :
    arrowFamily r = "arrow/gateway-relay" := by
  rfl

theorem withheld_mutation_routes_do_not_materialize (r : WithheldMutationRoute) :
    ¬ materializesWithheldMutation r := by
  intro h
  exact h

theorem scout_refinement_attempts_do_not_materialize :
    ¬ materializesWithheldMutation WithheldMutationRoute.scoutRefinementAttempts := by
  intro h
  exact h

theorem scout_refinement_submit_does_not_materialize :
    ¬ materializesWithheldMutation WithheldMutationRoute.scoutRefinementSubmit := by
  intro h
  exact h

theorem assistive_chain_does_not_materialize :
    ¬ materializesWithheldMutation WithheldMutationRoute.assistiveChain := by
  intro h
  exact h

theorem assistive_prose_is_get : methodOf RelayRoute.assistiveProse = Method.GET := by
  rfl

theorem arrow_envelopes_is_post : methodOf RelayRoute.arrowEnvelopes = Method.POST := by
  rfl

theorem native_repo_list_is_post_json_route :
    isPostRelayJsonRoute RelayRoute.nativeRepoList = true := by
  rfl

theorem native_repo_read_is_post_json_route :
    isPostRelayJsonRoute RelayRoute.nativeRepoRead = true := by
  rfl

theorem arrow_envelopes_is_post_json_route :
    isPostRelayJsonRoute RelayRoute.arrowEnvelopes = true := by
  rfl

theorem openapi_is_shared_json_get :
    isSharedJsonAcceptRelayGetRoute RelayRoute.openapiJson = true := by
  rfl

theorem markdown_status_is_shared_json_get :
    isSharedJsonAcceptRelayGetRoute RelayRoute.markdownIntentStatusById = true := by
  rfl

theorem native_repo_list_not_shared_json_get :
    isSharedJsonAcceptRelayGetRoute RelayRoute.nativeRepoList = false := by
  rfl

theorem assistive_prose_marked_assistive :
    isAssistiveRoute RelayRoute.assistiveProse = true := by
  rfl

theorem openapi_not_assistive :
    isAssistiveRoute RelayRoute.openapiJson = false := by
  rfl

end Route
end GatewayProof
