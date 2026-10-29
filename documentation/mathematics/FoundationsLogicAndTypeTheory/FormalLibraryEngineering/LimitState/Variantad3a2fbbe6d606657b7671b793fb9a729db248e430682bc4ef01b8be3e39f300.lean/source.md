# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitState.Variantad3a2fbbe6d606657b7671b793fb9a729db248e430682bc4ef01b8be3e39f300

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f3f48723c11ae53a5bd1792ada1ecccbd28fa31` · SHA-256 `6363c8308f812ca3205c1b48addd4c64853a197ad150a052e455e9abbcf52057`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectiveLimitPoint.Variant13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectiveLimitPoint.Variant13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50","mathematical_subject":"Foundations.Unclassified","original_sha256":"13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/LimitState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.ProjectiveSystem

/-!
# Inverse-limit state as compatibility data
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectiveLimitPoint.Variant13aaa772c060397876a350d701d817024ee36753e796ed42642e0a693fe58d50

namespace Mathematics.StratifiedBoundary

structure ProjectiveLimitPoint
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) where
  atStage : Nat → State
  compatible :
    ∀ {later earlier},
      earlier ≤ later →
      system.project later earlier (atStage later) =
        atStage earlier

def witnessedProjectiveLimitPoint
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) :
    ProjectiveLimitPoint system where
  atStage := system.compatibleWitness
  compatible := system.witnessCompatible

theorem projective_limit_inhabited
    {State : Type u}
    (system : FinitePrefixProjectiveSystem State) :
    Nonempty (ProjectiveLimitPoint system) :=
  ⟨witnessedProjectiveLimitPoint system⟩

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82b16c133cd62f539d685fe0aea5d500689f1c92b1768b9ada02b3e3be54f735 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitState/Variantad3a2fbbe6d606657b7671b793fb9a729db248e430682bc4ef01b8be3e39f300.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
