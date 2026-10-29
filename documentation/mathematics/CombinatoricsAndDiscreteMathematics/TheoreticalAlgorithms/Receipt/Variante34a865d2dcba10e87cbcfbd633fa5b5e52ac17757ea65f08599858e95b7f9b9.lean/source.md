# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variante34a865d2dcba10e87cbcfbd633fa5b5e52ac17757ea65f08599858e95b7f9b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f1d43702380e338708d898485bc3f3930adbcc5` · SHA-256 `e34a865d2dcba10e87cbcfbd633fa5b5e52ac17757ea65f08599858e95b7f9b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Attribute
import Mathematics.Ingestion.Blueprint
import Mathematics.Ingestion.Data
import Mathematics.Ingestion.Issue
import Mathematics.Ingestion.Obligation
import Mathematics.Ingestion.Proof
import Mathematics.Ingestion.Workflow

/-! # Total finite-snapshot ingestion receipts -/

namespace Mathematics.Ingestion

inductive ArtifactDisposition
  | source (sourceId : StableId)
  | opaque (reason : OpacityReason)
  deriving DecidableEq, Repr

structure ArtifactReceipt where
  artifactId : Ecosystem.ArtifactId
  disposition : ArtifactDisposition
  receiptDigest : Digest
  deriving DecidableEq, Repr

/--
Every manifest artifact has exactly one receipt.  Semantic indexes are
additional views and cannot remove the raw source.
-/
structure IngestionReceipt where
  raw : RawIngestion
  artifactReceipts : List ArtifactReceipt
  receiptIdsUnique :
    (artifactReceipts.map ArtifactReceipt.artifactId).Nodup
  artifactCoverage :
    ∀ artifactId,
      artifactId ∈ raw.snapshot.manifest.sourceInventory ↔
        ∃ receipt ∈ artifactReceipts,
          receipt.artifactId = artifactId
  declarations : List Declaration
  environment : EnvironmentCapture
  environment_matches :
    environment.capsuleKey =
      raw.reconstruction.sandboxed.capsule.key
  declarationIdsUnique :
    (declarations.map Extractor.DeclarationRecord.declarationId).Nodup
  declarationCoverage :
    ∀ declarationId,
      declarationId ∈ environment.declarationInventory ↔
        ∃ declaration ∈ declarations,
          declaration.declarationId = declarationId
  proofs : List ProofCapture
  proofObligations : List ProofObligation
  sorryCoverage :
    ∀ closure ∈ environment.verification.extraction.trustClosures,
      ∀ assumption ∈ closure.assumptions,
        assumption.kind = .sorryDerivedDeclaration →
          ∃ obligation ∈ proofObligations,
            obligation.declarationId = closure.declarationId ∧
            obligation.assumption = assumption
  attributes : List DeclarationAttribute
  blueprints : List BlueprintRecord
  workflows : List WorkflowRecord
  issues : List IssueRecord
  data : List DataRecord
  receiptDigest : Digest

namespace IngestionReceipt

/-- Total ingestion cannot silently omit an inventoried artifact. -/
theorem disposition_exists
    (receipt : IngestionReceipt)
    {artifactId : Ecosystem.ArtifactId}
    (inventoried :
      artifactId ∈ receipt.raw.snapshot.manifest.sourceInventory) :
    ∃ artifactReceipt ∈ receipt.artifactReceipts,
      artifactReceipt.artifactId = artifactId :=
  (receipt.artifactCoverage artifactId).mp inventoried

/-- Every elaborated environment declaration has one extracted record. -/
theorem declaration_exists
    (receipt : IngestionReceipt)
    {declarationId : StableId}
    (elaborated :
      declarationId ∈ receipt.environment.declarationInventory) :
    ∃ declaration ∈ receipt.declarations,
      declaration.declarationId = declarationId :=
  (receipt.declarationCoverage declarationId).mp elaborated

end IngestionReceipt

end Mathematics.Ingestion
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71becdf493890651eb981fcf07669e32e94ea12d536ab150d9c9283c0110bfd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variante34a865d2dcba10e87cbcfbd633fa5b5e52ac17757ea65f08599858e95b7f9b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
