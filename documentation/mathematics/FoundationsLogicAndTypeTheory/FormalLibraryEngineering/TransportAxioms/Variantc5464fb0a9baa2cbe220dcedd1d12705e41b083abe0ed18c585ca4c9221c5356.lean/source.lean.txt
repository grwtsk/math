import Surface.Core.Transport
import Presentation.Transport

/-!
# Payload-neutral finite transport axiom audit

This audit keeps executable finite routing, admission, convergence, and the
downstream presentation adapter visible without granting any of them theorem
authority.  Domain adapters and generated fixtures are intentionally absent.
-/

#print axioms Surface.Core.Transport.orderedRoute_deterministic
#print axioms Surface.Core.Transport.orderedRoute_edges_declared
#print axioms Surface.Core.Transport.orderedRoute_hosts_nodup
#print axioms Surface.Core.Transport.orderedRoute_reaches_exactly_reachable
#print axioms Surface.Core.Transport.staleRevision_rejected
#print axioms Surface.Core.Transport.equalRevision_conflict_rejected
#print axioms Surface.Core.Transport.equalRevision_identical_replay
#print axioms Surface.Core.Transport.merge_revision_monotone
#print axioms Surface.Core.Transport.verifyProposal_sound
#print axioms Surface.Core.Transport.rejectedProposal_leavesModelUnchanged
#print axioms Surface.Core.Transport.sourceSnapshotRace_leavesModelUnchanged
#print axioms Surface.Core.Transport.targetRevisionRace_leavesModelUnchanged
#print axioms Surface.Core.Transport.eventual_convergence_to_latestAdmitted
#print axioms Surface.Core.Transport.finiteTransport_has_no_theorem_authority

#print axioms Presentation.Transport.projection_preserves_transport_revision
#print axioms Presentation.Transport.projection_preserves_payload_identity_reference
#print axioms Presentation.Transport.rejectedPublication_leavesPresentationModelUnchanged
#print axioms Presentation.Transport.stalePublication_leavesPresentationModelUnchanged
#print axioms Presentation.Transport.sameRevisionConflict_leavesPresentationModelUnchanged
#print axioms Presentation.Transport.presentationProjection_has_no_theorem_authority
