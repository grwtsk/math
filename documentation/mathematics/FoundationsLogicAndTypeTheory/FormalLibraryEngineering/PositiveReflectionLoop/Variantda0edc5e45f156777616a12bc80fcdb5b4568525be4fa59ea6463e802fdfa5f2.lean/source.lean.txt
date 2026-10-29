import Mathematics.Reflection.All
import Mathematics.Relaxation.All
import Mathematics.System.FiniteEcosystem

/-!
# First finite relaxation/reflection closed loop

An exact scoped fixed point may produce a patch candidate.  Only independent
positive checks admit an upstream bundle, and accepted upstream work returns
as a new immutable source snapshot.
-/

namespace Mathematics.System

structure PositiveReflectionLoop where
  operator : Relaxation.Operator
  fixedPoint : Relaxation.ScopedFixedPointCertificate operator
  patch : Reflection.Patch
  workPackage_exact :
    patch.candidate.workPackage = fixedPoint.scope
  positive : Reflection.PositiveCertificate patch
  upstream : Reflection.UpstreamBundle
  upstream_matches : upstream.patch = patch
  reingestion : Reflection.Reingestion
  reingestion_matches : reingestion.bundle = upstream
  reflectedElement : Reflection.PatchElement
  reflectedElementMember :
    reflectedElement ∈ patch.elements
  reflectedOutputDigest : Digest
  reflectedElementOutput :
    reflectedElement.outputDigest = some reflectedOutputDigest
  loopDigest : Digest

namespace PositiveReflectionLoop

/-- The accepted reflection returns as a distinct immutable source revision. -/
theorem reingests_new_revision
    (loop : PositiveReflectionLoop) :
    loop.reingestion.acceptedSnapshot.revision.revisionId ≠
      loop.patch.baseSnapshot.revision.revisionId := by
  have newRevision := loop.reingestion.newRevision
  simpa [loop.reingestion_matches, loop.upstream_matches] using newRevision

/-- Positive reflection includes a successful target-native build. -/
theorem target_build_succeeded
    (loop : PositiveReflectionLoop) :
    loop.positive.build.receipt.status =
      Toolchain.BuildStatus.succeeded :=
  loop.positive.build_succeeded

/-- The source ecosystem digest survives every certified relaxation step. -/
theorem relaxation_preserves_source
    (loop : PositiveReflectionLoop) :
    (loop.operator.step loop.fixedPoint.fixedPoint.state).ecosystemDigest =
      loop.fixedPoint.fixedPoint.state.ecosystemDigest :=
  loop.fixedPoint.source_is_unchanged

/-- The intended patch output is present in the accepted upstream snapshot. -/
theorem reflected_object_recovered
    (loop : PositiveReflectionLoop) :
    ∃ artifact ∈
        loop.reingestion.acceptedSnapshot.manifest.artifacts,
      artifact.address.contentDigest = loop.reflectedOutputDigest := by
  have member :
      loop.reflectedElement ∈ loop.reingestion.bundle.patch.elements := by
    simpa [loop.reingestion_matches, loop.upstream_matches] using
      loop.reflectedElementMember
  exact
    loop.reingestion.reflected_object_recovered
      member loop.reflectedElementOutput

/-- Every theorem in the preservation cone has a target kernel proof. -/
theorem preserved_theorem_remains_proved
    (loop : PositiveReflectionLoop)
    (preserved : Reflection.PreservedTheorem)
    (_member :
      preserved ∈ loop.positive.theoremPreservation.preserved) :
    preserved.statement :=
  preserved.target_statement

end PositiveReflectionLoop

end Mathematics.System
