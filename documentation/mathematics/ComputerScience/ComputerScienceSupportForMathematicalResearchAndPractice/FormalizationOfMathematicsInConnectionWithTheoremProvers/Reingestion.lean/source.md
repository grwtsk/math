# Reingestion — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `015f721abc8f39a67fb1b8f21c82cb5346bb3980` · SHA-256 `4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Receipt
import Mathematics.Reflection.UpstreamBundle

/-! # Accepted-upstream re-ingestion -/

namespace Mathematics.Reflection

/--
An accepted upstream revision is re-ingested as a new immutable snapshot.  It
does not rewrite the source snapshot used to produce the patch.
-/
structure Reingestion where
  bundle : UpstreamBundle
  upstream_accepted : bundle.maintainerStatus = .accepted
  acceptedSnapshot : Ecosystem.ProjectSnapshot
  receipt : Ingestion.IngestionReceipt
  sameProject :
    acceptedSnapshot.identity.projectId =
      bundle.patch.candidate.targetSnapshot.identity.projectId
  newRevision :
    acceptedSnapshot.revision.revisionId ≠
      bundle.patch.baseSnapshot.revision.revisionId
  receipt_snapshot_exact :
    receipt.raw.snapshot = acceptedSnapshot
  reflectedObjectsRecovered :
    ∀ element ∈ bundle.patch.elements,
      ∀ outputDigest,
        element.outputDigest = some outputDigest →
          ∃ artifact ∈ acceptedSnapshot.manifest.artifacts,
            artifact.address.contentDigest = outputDigest
  upstreamAcceptanceDigest : Digest
  reingestionDigest : Digest

theorem Reingestion.source_snapshot_not_rewritten
    (reingestion : Reingestion) :
    reingestion.acceptedSnapshot.revision.revisionId ≠
      reingestion.bundle.patch.baseSnapshot.revision.revisionId :=
  reingestion.newRevision

/-- Every patch output is recovered under the accepted upstream snapshot. -/
theorem Reingestion.reflected_object_recovered
    (reingestion : Reingestion)
    {element : PatchElement}
    (member : element ∈ reingestion.bundle.patch.elements)
    {outputDigest : Digest}
    (hasOutput : element.outputDigest = some outputDigest) :
    ∃ artifact ∈ reingestion.acceptedSnapshot.manifest.artifacts,
      artifact.address.contentDigest = outputDigest :=
  reingestion.reflectedObjectsRecovered element member outputDigest hasOutput

inductive ReflectionLifecycle
  | candidate (value : Candidate)
  | upstreamAccepted (value : Reingestion)

theorem ReflectionLifecycle.candidate_not_accepted
    (candidate : Candidate)
    (accepted : Reingestion) :
    ReflectionLifecycle.candidate candidate ≠
      ReflectionLifecycle.upstreamAccepted accepted := by
  intro equality
  cases equality

end Mathematics.Reflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbbca9f558116ed30a9635c79221c50717dbc2cc520655af93d5d8a184bd2e5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reingestion/Variant4d51f54233dda0ff2d10140c64acc56cc5c4caa490b2d5f1152cc55f9b336ef8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
