# Refinement — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47cd28fdc2144d8175c3cd3b753c9a7f5ec946c9` · SHA-256 `f64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed40e60d91275c9ce565841dca90f148d0854357a7210309bc1fa2b706aa6b62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Refinement/Variantf64636a6832345dda5bac7940b2d7242f949a42a55297c10a0ab6ac7e0ebc521.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
