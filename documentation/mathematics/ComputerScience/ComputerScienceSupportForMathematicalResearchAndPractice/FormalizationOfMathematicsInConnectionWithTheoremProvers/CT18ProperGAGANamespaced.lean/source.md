# CT18 Proper GAGANamespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66dc8d95769d060c0bcbf51f7b3bbef7a0690dbd` · SHA-256 `2cb94a6d18587c5e2a30cbbad294ca21f96419d603056baf06dc05b44ca972e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ct18ProperGAGA.Variantcf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Ct18ProperGAGA.Variantcf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a","mathematical_subject":"Foundations.Unclassified","original_sha256":"cf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Theorems/CT18_ProperGAGA.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ct18ProperGAGA.Variantcf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a

namespace FCRS.Theorems

/--
CT-18: proper non-Archimedean GAGA.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct18_properGAGA
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT18Claim S :=
  registry.ct18

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c167267ef9061bebc1f4f183d3c01d1c22f5fb04b67793a16d5ed64665601026 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT18ProperGAGA/Variant509682d886684570e4944a5c02cc7e7db1ebc1aeab438c22d3b2ee9d02dc791a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
