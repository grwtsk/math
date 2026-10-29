# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M536f75726365547265652f56657262576f72642e6c65616e.Variant4840e0af43b459e4a7bd50914059b4413cc79ec57bd7aa00b2c1b05d223807d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67292b34d80ff6839506d52a5108427e52bfad58` · SHA-256 `534bf31b5ac592517682e542566ada4f034baedd50d5037b53e5e407d2d881a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VerbShadow.Variant7a1800501468bab3a96a17664bb8d7b8c449ac3a0acd067d2095a5efc87aaa41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a1800501468bab3a96a17664bb8d7b8c449ac3a0acd067d2095a5efc87aaa41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.VerbShadow.Variant7a1800501468bab3a96a17664bb8d7b8c449ac3a0acd067d2095a5efc87aaa41","mathematical_subject":"Computation.DataStructures","original_sha256":"7a1800501468bab3a96a17664bb8d7b8c449ac3a0acd067d2095a5efc87aaa41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit1/Bit1/Bit1/Bit1/Bit1/M536f75726365547265652f56657262576f72642e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.M536f75726365547265652f5072696d65566572622e6c65616e

/- source-tree-label: STL1|L|addr=11111111|role=proof_code_atom|slug=sourcetree-verbword|owner=canonical_owner|core=SourceTree/VerbWord.lean|leaf=M536f75726365547265652f56657262576f72642e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VerbShadow.Variant7a1800501468bab3a96a17664bb8d7b8c449ac3a0acd067d2095a5efc87aaa41

set_option autoImplicit false

def verbShadow : List PrimeVerb → Nat | [] => 1 | v :: rest => primeVerbLabel v * verbShadow rest

theorem verb_shadow_append (a b : List PrimeVerb) : verbShadow (a ++ b) = verbShadow a * verbShadow b := by
  induction a with
  | nil => simp [verbShadow]
  | cons v rest ih => simp [verbShadow, ih, Nat.mul_assoc]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6ab19e6da7063fa6797c6237d683a3cdad9c1b6284a36401c9c4fc5e8794191 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f56657262576f72642e6c65616e/Variant4840e0af43b459e4a7bd50914059b4413cc79ec57bd7aa00b2c1b05d223807d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
