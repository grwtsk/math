# Verification target: Real Imaginary Part Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab32d017f00854aa1a1b965435f152f9d5a0c02b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RealImaginaryPart/Variantacb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab32d017f00854aa1a1b965435f152f9d5a0c02b`.

Source path: `GRWTSK/Topology/GeneralTopology/RealImaginaryPart/Variantacb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RealImaginaryPart/Variantacb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cfcₙ_re_id](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-re-id.md) | 25 | `result-track:2ea88c8a82b07a6edec1976ab5b352e5a64560ab036d89839302be0784f71eda` |
| 2 | `lemma` | [cfcₙ_im_id](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-im-id-source-edition-2.md) | 32 | `result-track:a97635b12aa1e91f036fa3258625865e4b976ec048e0a9256e1e0e706138c5a4` |
| 3 | `lemma` | [quasispectrum_realPart](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/quasispectrum-realpart-source-edition-2.md) | 39 | `result-track:2d5d2b808cc594d6ce43f5f9a29c0f8187829586c2a0e0b38ab059c342d0ce69` |
| 4 | `lemma` | [quasispectrum_realPart'](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/quasispectrum-realpart.md) | 44 | `result-track:277f42fa96c813501cb20ec9b09c2b706558e51bafad5a0ab9601c7bd1b26894` |
| 5 | `lemma` | [quasispectrum_imaginaryPart](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/quasispectrum-imaginarypart.md) | 48 | `result-track:217e3fde96a276f950cf673d1b4671b15b7583b1de3f2e1a668bf5c32bafd3f1` |
| 6 | `lemma` | [quasispectrum_imaginaryPart'](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/quasispectrum-imaginarypart-source-edition-2.md) | 53 | `result-track:fbf8c2c25b4ce723d3e4979c05c2778b68d15e57925c4b9b7e988916359920b1` |
| 7 | `lemma` | [cfcₙ_realPart](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-realpart.md) | 59 | `result-track:1376fcf3f3b46763bc9abc417b6f06428f96958571c132390b41e6d548c70873` |
| 8 | `lemma` | [cfcₙ_imaginaryPart](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-imaginarypart.md) | 66 | `result-track:8e5c642662cd5867d6263b6235e6120cec4c6385d2f204d3220453ec5b097cf9` |
| 9 | `lemma` | [cfcₙ_comp_re](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-comp-re.md) | 75 | `result-track:169a6670e26c742235023b29ab2492bf586b338faf89e22445aa6b0a8f4020f3` |
| 10 | `lemma` | [cfcₙ_comp_im](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-comp-im-source-edition-2.md) | 87 | `result-track:f8b69dc9fed8d2fdcb7377100fa025ec88a4d91d41796b5b49f467c78641c9ce` |
| 11 | `lemma` | [cfc_re_id](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-re-id-source-edition-2.md) | 106 | `result-track:55dc6442c33346ef9d86bbaa0ed097f3abe6c6997c7131cbd5e19afe3871f80d` |
| 12 | `lemma` | [cfc_im_id](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-im-id.md) | 113 | `result-track:86be80003c3a51105d240c5c7e35b6b75466c8f3fcd4008972024be7996cf4d8` |
| 13 | `lemma` | [spectrum_realPart](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/spectrum-realpart.md) | 120 | `result-track:3cd4d178de327b95d195a5ee9a3c427ef58b42a5aa0b15304fe8de965dad2c4e` |
| 14 | `lemma` | [spectrum_realPart'](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/spectrum-realpart-source-edition-2.md) | 124 | `result-track:91510afd206054e421efd739f51ce6b6702992ca3fc7636694374fd46d955aea` |
| 15 | `lemma` | [spectrum_imaginaryPart](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/spectrum-imaginarypart-source-edition-2.md) | 128 | `result-track:c8504652a5ce033569e9650427cd0e908f4f1cde8ee20afc2b0f9355d713ccd5` |
| 16 | `lemma` | [spectrum_imaginaryPart'](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/spectrum-imaginarypart.md) | 132 | `result-track:9c06016a4eaa701141b1d795f438c21d5670a60633c129f8fa8094fbda188556` |
| 17 | `lemma` | [cfc_realPart](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-realpart-source-edition-2.md) | 138 | `result-track:89defa51a70b97e71bb2a929a22b8ee30e5ce48445a5dcaa692e359ce8597145` |
| 18 | `lemma` | [cfc_imaginaryPart](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-imaginarypart-source-edition-2.md) | 144 | `result-track:e32aa548e0dbe684e5ebfff9429cf2f3284706a0c1afec33f6edf5c21b6f01ef` |
| 19 | `lemma` | [cfc_comp_re](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-comp-re-source-edition-2.md) | 153 | `result-track:942e855874bb557aaa75489d9af108453c9f1f1846018940d49672836240558f` |
| 20 | `lemma` | [cfc_comp_im](../../../../FunctionalAnalysis/RealImaginaryPartPublic.lean/declarations/cfc-comp-im.md) | 165 | `result-track:eaaa5a4026bd9cdab02ce467c06ce97884c2c9062e269e470b5870f956d3c205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=daaa7b77a8c370bd18bdb3a5b96e0912ac9a9a3de4296eb80ec9497599e13bb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/RealImaginaryPart/Variantacb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/RealImaginaryPart/Variantacb053df9aa4d4b3002dce67dbff8dfa1b8651c0fa440c3424c93aead56658c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
