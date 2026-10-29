# Noninterference Namespaced Certified Stratified Presentation Change — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ab01031cdb8644962754d782b25af71d5106640` · SHA-256 `47c732714aed2603ea212af1c4aaf743e5546234f545dcdef22e8ccd0b744eec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CertifiedStratifiedPresentationChange.Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.CertifiedStratifiedPresentationChange.Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54","mathematical_subject":"Logic.SetTheory","original_sha256":"45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Presentation/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Presentation.StratifiedNode

/-!
# Presentation/ordinal noninterference
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CertifiedStratifiedPresentationChange.Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54

namespace Mathematics.StratifiedBoundary

structure CertifiedStratifiedPresentationChange
    (before after : StratifiedPresentationNode) where
  persistentIdentity :
    after.persistentIdentity = before.persistentIdentity
  ordinalProfile :
    after.ordinalProfileRef = before.ordinalProfileRef
  ordinalSemantics :
    after.normalizedStratumRef = before.normalizedStratumRef
  proposalOnly : Bool := true
  proposalOnly_exact : proposalOnly = true

theorem presentation_change_does_not_change_ordinal_semantics
    {before after : StratifiedPresentationNode}
    (change :
      CertifiedStratifiedPresentationChange before after) :
    after.normalizedStratumRef =
      before.normalizedStratumRef :=
  change.ordinalSemantics

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c995e0a6b2180121b572b9074f89669f1f8f040f9c92ca053b40aa0011f9ec1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant07f41a04e424a1b1ef11cd96b5f6ea55f410a8b611134195c9f3653a257228c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
