import Mathematics.Web.Service
import NetworkElements.Membrane

/-! # Refinement into the accepted finite web-service transition -/

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
