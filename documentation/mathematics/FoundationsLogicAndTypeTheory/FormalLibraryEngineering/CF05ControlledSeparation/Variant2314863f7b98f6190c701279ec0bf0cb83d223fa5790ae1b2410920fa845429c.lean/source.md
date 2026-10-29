# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF05ControlledSeparation.Variant2314863f7b98f6190c701279ec0bf0cb83d223fa5790ae1b2410920fa845429c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67d6c20e616afa2218a7151a541064445decef2c` · SHA-256 `ed5f6224745137e17daebd70b055094ece441db1d8e2a1f7e8b1288149495863`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf05ControlledSeparation.Variante3fb9d16942be5fa5dd1dc44f356eada12cd0d67fb24a8dadd4282797d92f389","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3fb9d16942be5fa5dd1dc44f356eada12cd0d67fb24a8dadd4282797d92f389","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cf05ControlledSeparation.Variante3fb9d16942be5fa5dd1dc44f356eada12cd0d67fb24a8dadd4282797d92f389","mathematical_subject":"Foundations.Unclassified","original_sha256":"e3fb9d16942be5fa5dd1dc44f356eada12cd0d67fb24a8dadd4282797d92f389","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Theorems/CF05_ControlledSeparation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf05ControlledSeparation.Variante3fb9d16942be5fa5dd1dc44f356eada12cd0d67fb24a8dadd4282797d92f389

namespace FCRS.ControlledPlane.Theorems

/-- CF-05 is derived from the decoder left-inverse law. -/
theorem cf05_controlledSeparation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CF05Claim M :=
  separating_of_leftInverseDecoder D

end FCRS.ControlledPlane.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b98fb67907185027cb525b005155ded685517992980734bc5a37b53f91e05f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CF05ControlledSeparation/Variant2314863f7b98f6190c701279ec0bf0cb83d223fa5790ae1b2410920fa845429c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
