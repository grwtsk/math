-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SessionIdentity.Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SessionIdentity.Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941","mathematical_subject":"Computation.DataStructures","original_sha256":"05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/network/NetworkElements/Session.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.ClientChart
import NetworkElements.Cursor
import NetworkElements.Kind

/-! # Resumable duplex session state -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SessionIdentity.Variant05cd44bf72dec012292f327ceeca14f36fde36023f0d7ee2df1572f71ed0c941

namespace URSM.Network

open Mathematics
open Mathematics.Capability

structure SessionIdentity where
  sessionId : StableId
  principal : Principal
  device : DeviceId
  chart : ClientChart
  chart_device_bound :
    chart.device = device

structure SessionState where
  identity : SessionIdentity
  resume : ResumePoint
  inflight : List StableId
  subscriptions : List Lane

inductive SessionEvent
  | observe (revision : ViewRevision)
  | acknowledge (cursor : OutcomeCursor) (eventId : StableId)
  | disconnect

inductive SessionStep :
    SessionState → SessionEvent → SessionState → Prop
  | observe
      {state : SessionState}
      {revision : ViewRevision}
      (monotone : state.resume.view.Reaches revision) :
      SessionStep state (.observe revision)
        { state with
          resume := { state.resume with view := revision } }
  | acknowledge
      {state : SessionState}
      {cursor : OutcomeCursor}
      {eventId : StableId}
      (monotone : state.resume.outcome.Advances cursor) :
      SessionStep state (.acknowledge cursor eventId)
        { state with
          resume := { state.resume with outcome := cursor }
          inflight := state.inflight.erase eventId }
  | disconnect
      (state : SessionState) :
      SessionStep state .disconnect state

theorem disconnect_preserves_logical_session
    (state : SessionState) :
    SessionStep state .disconnect state :=
  .disconnect state

end URSM.Network
