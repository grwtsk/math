# Import Acyclicity Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf6e167e5cfb001903675a92a9bb10561d6253ce` · SHA-256 `8a8c68c7f418fb69651f43193f01953d0913cea57a180223d324e77a22f574de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportClosureWitness.Variant63bad75472afa9d033f174a409b35d460f9175fcc4e4d41086de02727f876e43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63bad75472afa9d033f174a409b35d460f9175fcc4e4d41086de02727f876e43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ImportClosureWitness.Variant63bad75472afa9d033f174a409b35d460f9175fcc4e4d41086de02727f876e43","mathematical_subject":"Foundations.Unclassified","original_sha256":"63bad75472afa9d033f174a409b35d460f9175fcc4e4d41086de02727f876e43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Validation/ImportAcyclicity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Validation.TargetNonclaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportClosureWitness.Variant63bad75472afa9d033f174a409b35d460f9175fcc4e4d41086de02727f876e43

set_option autoImplicit false

namespace Think.Validation

structure ImportClosureWitness where
  root : Think.Target
  phaseCount : Nat
  residueCount : Nat

def importClosureWitness : ImportClosureWitness :=
  { root := FWR.Target.CenterWeightedPipeline
    phaseCount := Think.centerSpine.length
    residueCount := Think.Residues.ledger.length }

theorem importClosureWitness_root :
    importClosureWitness.root = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Validation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=315fb2065c10dc41ab87f4a0c7e13494448279a1b46f2557bd23527e77183f0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportAcyclicity/Variantef1a5029cd593d40775af90454b06af08b40a02e1d3cd8e62337e9bfdf45fb2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
