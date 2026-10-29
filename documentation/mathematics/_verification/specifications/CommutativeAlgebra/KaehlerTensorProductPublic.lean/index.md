# Verification target: Kaehler Tensor Product Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b52bcf03286c3a0bcc7663022c09d1bc7213749",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TensorProduct/Variant405cfb790690597c7a850256bb4ac4007104c66795eec24c429763d0fdf9ab11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b52bcf03286c3a0bcc7663022c09d1bc7213749`.

Source path: `GRWTSK/Algebra/TensorProduct/Variant405cfb790690597c7a850256bb4ac4007104c66795eec24c429763d0fdf9ab11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TensorProduct/Variant405cfb790690597c7a850256bb4ac4007104c66795eec24c429763d0fdf9ab11.lean.json)

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
| 1 | `abbrev` | [mulActionBaseChange](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/mulactionbasechange.md) | 38 | `declaration-track:71e6528cab6bd1e113c9bbbdc94bbf681f5ceb5d8d2bda8fe561398b0546af82` |
| 2 | `lemma` | [mulActionBaseChange_smul_tmul](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/mulactionbasechange-smul-tmul.md) | 44 | `result-track:d05eb27352bd5c54e0f0c6b88f3085422121ba76891395aad0ff8bf2a5a77eac` |
| 3 | `lemma` | [mulActionBaseChange_smul_zero](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/mulactionbasechange-smul-zero.md) | 48 | `result-track:2d45c871f3e10cfdae50dd72429806129c1c6317de2e257d0a9233ee0effec14` |
| 4 | `lemma` | [mulActionBaseChange_smul_add](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/mulactionbasechange-smul-add.md) | 53 | `result-track:4522047d419a12a37025078aa7c5b0d0f6074994d42e8d70574e009525a49718` |
| 5 | `abbrev` | [moduleBaseChange](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/modulebasechange-source-edition-2.md) | 61 | `declaration-track:9f91d57cb5800958520038306fe532c0d1895ff1f8577e53f3ac519e5df8a401` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:48304a0aa73b995437393389bee3f28f4f511eb7173523b40421301cb041ed44` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/instance-source-edition-4.md) | 78 | `declaration-track:76981060c1d5d42f841be303f6d2ce9b2a1efcdff15a0aaa1c66161a821b095e` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/instance-source-edition-3.md) | 84 | `declaration-track:56d6a15a3ee1a4a84dab3a2594c70b468438e169f5698e24ef1e683f37986a17` |
| 9 | `def` | [moduleBaseChange'](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/modulebasechange.md) | 89 | `declaration-track:9086132ac59bb7c3a8cd2d36035619913d5b20519fd2830a81388f50c0721896` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/instance-source-edition-5.md) | 96 | `declaration-track:f7d9a86971fa1abdc0b6d740e0f609237a8b63ccfc82267b79e191f29058903e` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/instance.md) | 105 | `declaration-track:24fea92bfccd4b5d4ec55d1560d1c39577d22c0b6866a3cf15c209b1384a9cf7` |
| 12 | `lemma` | [map_liftBaseChange_smul](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/map-liftbasechange-smul.md) | 114 | `result-track:b8131f1b5154ee291e49a2497349f60bd34472c111125fc102b47974ec2123f7` |
| 13 | `def` | [derivationTensorProduct](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/derivationtensorproduct.md) | 128 | `declaration-track:41653c956060a5bd482432ade317195fef61a0e380b3c1c29d1e73dbd251bd90` |
| 14 | `lemma` | [derivationTensorProduct_algebraMap](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/derivationtensorproduct-algebramap.md) | 158 | `result-track:bd0463d8d39b044dca392667d87e66b994cbec4a7a6b7e8e6fa3ac9f5426b39e` |
| 15 | `lemma` | [tensorKaehlerEquiv_left_inv](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/tensorkaehlerequiv-left-inv.md) | 163 | `result-track:19feb3eb774a7c72a73fe24bc5f3463ee8c92ae9038a87ed8202bb161e167d3e` |
| 16 | `def` | [tensorKaehlerEquivBase](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/tensorkaehlerequivbase.md) | 182 | `declaration-track:ca23765e431a85a249a7a28f31e746288e74b4ea22be36c94e7c985137d3f57b` |
| 17 | `lemma` | [tensorKaehlerEquivBase_tmul](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/tensorkaehlerequivbase-tmul.md) | 205 | `result-track:576400a29f7642cd1df626ed5b3b0f8ed6e6dd82c63a9aaec8310f1a715ec064` |
| 18 | `lemma` | [isBaseChange](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/isbasechange.md) | 213 | `result-track:aff93f0467c1d531fe32a9a7c971dd00b7b4062edef8463623277ab94f3eed43` |
| 19 | `instance` | [isLocalizedModule](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/islocalizedmodule.md) | 222 | `declaration-track:34dbc43cb25e52c79946c8d17ec293b0d179cee9149ffa03373499482ebc5517` |
| 20 | `instance` | [isLocalizedModule_of_isLocalizedModule](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/islocalizedmodule-of-islocalizedmodule.md) | 228 | `declaration-track:9e0db906a58ad41d83feecad1e36b4ec02bbd3c348286f966f7132a96aedf2a4` |
| 21 | `def` | [tensorKaehlerEquiv](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/tensorkaehlerequiv.md) | 238 | `declaration-track:e524ba9c5a67af6f16691bd73c559ace7d77a5aa77a3e6f83c1d56ef5aaed63d` |
| 22 | `lemma` | [tensorKaehlerEquiv_tmul_D](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/tensorkaehlerequiv-tmul-d.md) | 269 | `result-track:b1cc9bd2140e27ae86b845ad97ed185c4b88585a6b78dbbf6099b3e2353b6e4d` |
| 23 | `lemma` | [tensorKaehlerEquiv_symm_D_tmul](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/tensorkaehlerequiv-symm-d-tmul-source-edition-2.md) | 282 | `result-track:eb7d2aec778c4f2300a6dd0529e0ba9b26b088cf91849faa70ca8fe7a92b7e0d` |
| 24 | `lemma` | [tensorKaehlerEquiv_symm_D_tmul'](../../../../CommutativeAlgebra/KaehlerTensorProductPublic.lean/declarations/tensorkaehlerequiv-symm-d-tmul.md) | 292 | `result-track:34e02072c523ea312de8969d92f2138b97d0e530a1fb70204391081069f829d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2190630b966198b4fb3926882e8966c7f078db93e564b4cd15a17f665df5f8e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TensorProduct/Variant405cfb790690597c7a850256bb4ac4007104c66795eec24c429763d0fdf9ab11.lean","GRWTSK/_verification/specifications/Algebra/TensorProduct/Variant405cfb790690597c7a850256bb4ac4007104c66795eec24c429763d0fdf9ab11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
