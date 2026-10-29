# Noninterference Namespaced Node Profile — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad524b52938fb386782b4ea2494d0badeae16e4c` · SHA-256 `c9f2023ecb76fdbb9a2c6cf773fb7500b1ba5b4d0ac59a22a2591810dd2fcd61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NodeProfileWithPresentation.Variant1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NodeProfileWithPresentation.Variant1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6","mathematical_subject":"Foundations.Unclassified","original_sha256":"1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Presentation/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Presentation.NodeProfile


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NodeProfileWithPresentation.Variant1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6

namespace Mathematics.SemiLocalDefect.Presentation

def NodeProfile.withPresentation
    (profile : NodeProfile)
    (presentationRef : String) :
    NodeProfile where
  nodeRef := profile.nodeRef
  capacityRef := profile.capacityRef
  openObligationRefs := profile.openObligationRefs
  presentationRef := presentationRef
  authoritativeEffect := profile.authoritativeEffect

theorem presentation_preserves_capacity_reference
    (profile : NodeProfile)
    (presentationRef : String) :
    (profile.withPresentation presentationRef).capacityRef =
      profile.capacityRef :=
  rfl

theorem presentation_has_no_authoritative_effect
    (profile : NodeProfile)
    (presentationRef : String)
    (profile_nonauthoritative :
      profile.authoritativeEffect = false) :
    (profile.withPresentation presentationRef).authoritativeEffect =
      false :=
  profile_nonauthoritative

end Mathematics.SemiLocalDefect.Presentation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91c914cae84ad45756428906ba374b47817019aa952d8628cb52851a93e26338 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant8417e8360dfc40263c8ce97017912e5445ae252a7036c4cd434e87aa03cfebd7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
