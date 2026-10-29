# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Definition.Variantb19bb818cb2046f8a690bd04ed767cc23dfee3c5577fab10bffd855a32753684

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0ba1f3201e0574a06733190b0334c3728ac2545` · SHA-256 `64b83a88d5b4b14f0fdcb788dd2b4466aa0f95f62c18435cd8f1ea89d512ddd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionDifference.Variantfad26fe6030015a84f8dfcbfad1d9d967f404c06e8d7bb3a329a1af80da304e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fad26fe6030015a84f8dfcbfad1d9d967f404c06e8d7bb3a329a1af80da304e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectionDifference.Variantfad26fe6030015a84f8dfcbfad1d9d967f404c06e8d7bb3a329a1af80da304e9","mathematical_subject":"Foundations.Unclassified","original_sha256":"fad26fe6030015a84f8dfcbfad1d9d967f404c06e8d7bb3a329a1af80da304e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/Increment/Definition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP2.ProjectionProfile

/-!
# Projection-increment primitives
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionDifference.Variantfad26fe6030015a84f8dfcbfad1d9d967f404c06e8d7bb3a329a1af80da304e9

namespace Mathematics.SemiLocalDefect.SoninCore

def projectionDifference
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S T : PrimeCut U) :
    HilbertEnd H.Ambient :=
  P.projection T -
  P.projection S

def soninIncrement
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (p : U.Prime) :
    HilbertEnd H.Ambient :=
  projectionDifference
    P
    S
    (insert p S)

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6e35fcb20ac2fe2a927331db9c9e6fa669c8d2862af195d73ce3a8818c348fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Definition/Variantb19bb818cb2046f8a690bd04ed767cc23dfee3c5577fab10bffd855a32753684.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
