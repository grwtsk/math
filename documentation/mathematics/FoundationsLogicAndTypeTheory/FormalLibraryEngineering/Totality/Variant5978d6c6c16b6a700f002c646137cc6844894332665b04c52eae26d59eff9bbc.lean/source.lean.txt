import Mathematics.Ecosystem.CoverageBoundary
import Mathematics.Ingestion.ClosureLevel
import Mathematics.Ingestion.Receipt

/-!
# Bounded total-ingestion envelopes

The raw inventory may be total at one admitted snapshot while semantic,
historical, collaborative, or ecosystem closure remains partial.
-/

namespace Mathematics.Ingestion

def ArtifactTotal (receipt : IngestionReceipt) : Prop :=
  ∀ artifactId ∈ receipt.raw.snapshot.manifest.sourceInventory,
    ∃ artifactReceipt ∈ receipt.artifactReceipts,
      artifactReceipt.artifactId = artifactId

/--
One source-sovereign ingestion receipt paired with the exact ten-level closure
ledger and the finite discovery boundary under which its claims are valid.
-/
structure TotalityEnvelope where
  receipt : IngestionReceipt
  closure : ClosureLedger
  boundary : Ecosystem.CoverageBoundary
  artifactSemanticsExact :
    closure.semantics.Holds .artifact ↔
      ArtifactTotal receipt
  projectRegistered :
    receipt.raw.snapshot ∈ boundary.registry.snapshots
  completionClaim : String
  envelopeDigest : Digest

namespace TotalityEnvelope

/-- Manifest coverage proves artifact-total ingestion at the admitted scope. -/
theorem artifact_total
    (envelope : TotalityEnvelope) :
    ArtifactTotal envelope.receipt := by
  intro artifactId inventoried
  exact envelope.receipt.disposition_exists inventoried

/-- The artifact-level semantic proposition is established independently. -/
theorem artifact_semantics_hold
    (envelope : TotalityEnvelope) :
    envelope.closure.semantics.Holds .artifact :=
  envelope.artifactSemanticsExact.mpr envelope.artifact_total

/-- Every incomplete level remains queryable through a named obligation. -/
theorem incomplete_level_visible
    (envelope : TotalityEnvelope)
    (record : ClosureRecord)
    (member : record ∈ envelope.closure.records)
    (incomplete : record.status ≠ .complete) :
    record.obligationIds ≠ [] :=
  envelope.closure.incomplete_has_obligation
    record member incomplete

/-- An inventoried source object cannot be silently omitted. -/
theorem source_omission_rejected
    (envelope : TotalityEnvelope)
    {artifactId : Ecosystem.ArtifactId}
    (inventoried :
      artifactId ∈
        envelope.receipt.raw.snapshot.manifest.sourceInventory)
    (omitted :
      ¬ ∃ artifactReceipt ∈ envelope.receipt.artifactReceipts,
        artifactReceipt.artifactId = artifactId) :
    False :=
  omitted (envelope.receipt.disposition_exists inventoried)

end TotalityEnvelope

end Mathematics.Ingestion
