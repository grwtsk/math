-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExternalAssertion.Variantcb66cfa22c1066c391b8de72933a64c0738735b41b34226da1ab7c72a28e4096","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb66cfa22c1066c391b8de72933a64c0738735b41b34226da1ab7c72a28e4096","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExternalAssertion.Variantcb66cfa22c1066c391b8de72933a64c0738735b41b34226da1ab7c72a28e4096","mathematical_subject":"Computation.DataStructures","original_sha256":"cb66cfa22c1066c391b8de72933a64c0738735b41b34226da1ab7c72a28e4096","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/ExternalInterpretation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Boundary

/-!
# External interpretation boundary

Interpretation payloads enter as snapshot-bound evidence records.  This module
contains no function from characters to meanings.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExternalAssertion.Variantcb66cfa22c1066c391b8de72933a64c0738735b41b34226da1ab7c72a28e4096

namespace Mathematics.SemanticTokenization

structure ExternalAssertion
    (text : TextCarrier)
    (kind : MetadataType) where
  metadata : MetadataAssertion text kind
  context : Context
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  authority : SemanticAuthorityClass
  snapshot : SnapshotId
  evidence_snapshot_exact :
    ∀ item ∈ evidence.refs,
      item.snapshot = snapshot
  context_snapshot_exact :
    context.snapshot = snapshot
  provenance_covers :
    ∀ item ∈ evidence.refs,
      ∃ path ∈ provenance,
        path.evidenceId = item.evidenceId

structure SomeExternalAssertion (text : TextCarrier) where
  kind : MetadataType
  assertion : ExternalAssertion text kind

structure MeaningPayload where
  meaningId : StableId
  representationDigest : Digest
  digest_valid : representationDigest.Valid

structure ExternalContextualReading (text : TextCarrier) where
  readingId : StableId
  sourceSpans : List (Span text)
  sourceSpans_nonempty : sourceSpans ≠ []
  context : Context
  meaning : MeaningPayload
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  authority : SemanticAuthorityClass
  snapshot : SnapshotId
  context_snapshot_exact :
    context.snapshot = snapshot
  evidence_snapshot_exact :
    ∀ item ∈ evidence.refs,
      item.snapshot = snapshot

theorem ExternalAssertion.has_evidence
    {text : TextCarrier}
    {kind : MetadataType}
    (assertion : ExternalAssertion text kind) :
    ∃ evidence, evidence ∈ assertion.evidence.refs :=
  assertion.evidence.has_evidence

end Mathematics.SemanticTokenization
