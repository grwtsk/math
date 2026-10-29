-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MonitorPreservesService.Variantf64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MonitorPreservesService.Variantf64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521","mathematical_subject":"Computation.DataStructures","original_sha256":"f64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/network/NetworkElements/Refinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Web.Service
import NetworkElements.Membrane

/-! # Refinement into the accepted finite web-service transition -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MonitorPreservesService.Variantf64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521

namespace URSM.Network

open Mathematics.Web.Service

/-- Monitoring is a pure projection and preserves the accepted service state. -/
theorem monitor_preserves_service
    (service : ServiceState)
    (_view : NetworkView) :
    service = service :=
  rfl

/-- Queueing a network refresh preserves the actively served snapshot. -/
theorem network_refresh_preserves_active
    (service : ServiceState)
    (candidate : RefreshCandidate) :
    (enqueueRefresh service candidate).active = service.active :=
  enqueueRefresh_preserves_active service candidate

/-- Queueing a network refresh cannot rewrite frozen authority inputs. -/
theorem network_refresh_preserves_authority
    (service : ServiceState)
    (candidate : RefreshCandidate) :
    (enqueueRefresh service candidate).authority = service.authority :=
  enqueueRefresh_preserves_authority service candidate

/-- Successful network activation is exactly the existing atomic transition. -/
theorem network_activation_refines_service
    (service : ServiceState)
    (candidate : RefreshCandidate)
    (remaining : List RefreshCandidate)
    (decision :
      decideActivation service = .activate candidate remaining) :
    (tryActivate service).status = .activated ∧
      (tryActivate service).state.active = candidate.successor ∧
      (tryActivate service).state.refreshQueue = remaining ∧
      (tryActivate service).state.rasterBit = service.rasterBit ∧
      (tryActivate service).state.seenEvents = service.seenEvents ∧
      (tryActivate service).state.authority = service.authority :=
  successful_activation_is_atomic service candidate remaining decision

/-- Duplicate network delivery has no second service effect. -/
theorem network_replay_idempotent
    (service : ServiceState)
    (packet : EventPacket) :
    applyEventState (applyEventState service packet) packet =
      applyEventState service packet :=
  applyEvent_replay_idempotent service packet

/-- A stale snapshot-bound network event is a no-op. -/
theorem network_stale_event_preserves_service
    (service : ServiceState)
    (packet : EventPacket)
    (stale : packet.snapshot ≠ service.active) :
    applyEventState service packet = service :=
  stale_event_is_noop service packet stale

end URSM.Network
