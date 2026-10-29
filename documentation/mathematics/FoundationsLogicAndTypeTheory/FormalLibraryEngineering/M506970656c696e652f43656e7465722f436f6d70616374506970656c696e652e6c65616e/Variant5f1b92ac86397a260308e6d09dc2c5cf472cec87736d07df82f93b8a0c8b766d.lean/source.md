# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f436f6d70616374506970656c696e652e6c65616e.Variant5f1b92ac86397a260308e6d09dc2c5cf472cec87736d07df82f93b8a0c8b766d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfc16ca4d6d9bb472f5cd71fad4e1e8d59d72b3c` · SHA-256 `d0be7252d9b7e329e15521bbd31c49b62c20589d5f02a8bf98c3f8a7f0abf7d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactPipelineMachine.Varianta418317cac426be9cc6cb6ac3e0df542bb543f94645b19bced8a76ba92e2c8c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a418317cac426be9cc6cb6ac3e0df542bb543f94645b19bced8a76ba92e2c8c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompactPipelineMachine.Varianta418317cac426be9cc6cb6ac3e0df542bb543f94645b19bced8a76ba92e2c8c4","mathematical_subject":"Foundations.Unclassified","original_sha256":"a418317cac426be9cc6cb6ac3e0df542bb543f94645b19bced8a76ba92e2c8c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit0/Bit1/Bit1/Bit1/Bit0/M506970656c696e652f43656e7465722f436f6d70616374506970656c696e652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/- source-tree-label: STL1|L|addr=1001110|role=proof_code_atom|slug=pipeline-center-compactpipeline|owner=canonical_owner|core=Pipeline/Center/CompactPipeline.lean|leaf=M506970656c696e652f43656e7465722f436f6d70616374506970656c696e652e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactPipelineMachine.Varianta418317cac426be9cc6cb6ac3e0df542bb543f94645b19bced8a76ba92e2c8c4

set_option autoImplicit false

namespace Think.Compact

structure CompactPipelineMachine where
  phaseCount : Nat
  centerOrdered : Bool
  emitsResidue : Bool
deriving Repr

def compactPipelineMachine : CompactPipelineMachine :=
  { phaseCount := 61
    centerOrdered := true
    emitsResidue := true }

theorem compactPipelineMachine_phaseCount :
    compactPipelineMachine.phaseCount = 61 := by
  rfl

theorem compactPipelineMachine_centerOrdered :
    compactPipelineMachine.centerOrdered = true := by
  rfl

theorem compactPipelineMachine_emitsResidue :
    compactPipelineMachine.emitsResidue = true := by
  rfl

end Think.Compact
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c9d77e4a17273d8e61f281bd9d0cef3fcaaf8db2df6be13b31ce139c6cfbbe2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f436f6d70616374506970656c696e652e6c65616e/Variant5f1b92ac86397a260308e6d09dc2c5cf472cec87736d07df82f93b8a0c8b766d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
