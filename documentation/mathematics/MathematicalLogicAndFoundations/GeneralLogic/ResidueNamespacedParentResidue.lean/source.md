# Residue Namespaced Parent Residue — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `812a673b1fbfeef4954e9c8f3f3311969445fc69` · SHA-256 `d98e2a50187b0e0c24141ccd67756c3aa85660a1f7eac0b9c70a0bd4fa91de15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParentResidue.Variantdc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ParentResidue.Variantdc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e","mathematical_subject":"Foundations.Unclassified","original_sha256":"dc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Residue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParentResidue.Variantdc0c3fc1d76c743da59022a8eb38d85fa2324eea709706f2dc8d4245e01f419e

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure ParentResidue where
  canonicalNode : String
  residueClass : String
  selfContribution : String
  childContribution : String
  lateralContribution : String
  boundaryCorrected : Prop
deriving Repr

def phaseTableResidue : ParentResidue :=
  { canonicalNode := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    residueClass := "Pipeline.PhaseTable"
    selfContribution := "indexed phase records"
    childContribution := "mirror phase entries"
    lateralContribution := "pole-family placements"
    boundaryCorrected := True }

end Think.RadoProjectedModularHeatflow
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f8dc5617c3c91e0068ffdd9bdc29b398c562a81b15a11b9a71514c429041aed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residue/Variant7c43594dea7919684c33eb567895561f0612e1c0e9cb793c17bc7d9b00c2a290.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
