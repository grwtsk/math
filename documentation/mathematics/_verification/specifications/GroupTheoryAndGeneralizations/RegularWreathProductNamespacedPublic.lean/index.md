# Verification target: Regular Wreath Product Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f5d13feb961993cd0f42a357b0caba17697eeef",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f5d13feb961993cd0f42a357b0caba17697eeef`.

Source path: `GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean.json)

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
| 1 | `structure` | [RegularWreathProduct](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/regularwreathproduct.md) | 53 | `declaration-track:f8f9722c4fc77df1e425fdd0a1774d2565e80c9d03c178c1db9c2fa7f42ed3b5` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 64 | `declaration-track:8aa546a9c1fe03ac0e7f29c3e875846e458ea83ee6d6260bb4fe1db17a0c4e9d` |
| 3 | `lemma` | [mul_def](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/mul-def.md) | 67 | `result-track:8ad3632aa55cbbb5fb16a330ef26593ac114aec719ce1cc04cf803af4b5d352e` |
| 4 | `theorem` | [mul_left](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/mul-left.md) | 70 | `result-track:eb3db514b1f797ae718320266ace8be8a2a2fc058233f2ef3c420bc6e71c39af` |
| 5 | `theorem` | [mul_right](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/mul-right.md) | 73 | `result-track:94e269d690a1c92214308601622f6a26318a89c3fc6562560026d9f591b646f6` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 75 | `declaration-track:3c04cd4706a458040410903c482e97322724cea2aaabd4e3dfc6614079331ed4` |
| 7 | `theorem` | [one_left](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/one-left.md) | 78 | `result-track:e1d225726873ac62f58939652b33b40d69d648066521b3ba4578e2f9c4bae7c4` |
| 8 | `theorem` | [one_right](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/one-right.md) | 81 | `result-track:7c2f6afc8cfb592037f2ca8fe69a08bbf8eed212261af6b78d5a901d9a9d955e` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 83 | `declaration-track:88e3e64d17cbcb5961a182088bdf25980d404a44b008791f15e4c621bee22376` |
| 10 | `theorem` | [inv_left](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/inv-left.md) | 87 | `result-track:24f1bfcbdfe2d9d0988389db56dea6ee9d390e144e2e4337ceaf9a8d38b934c6` |
| 11 | `theorem` | [inv_right](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/inv-right.md) | 90 | `result-track:6a0fbe7df1db7679eaf0434c951cc8cfe54b46b13dc7781c81c5259738b19adc` |
| 12 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance.md) | 92 | `declaration-track:384a43e25c125ef178e899c670dc9f8971830ba5bfd0d84820b074adc951ad0f` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 98 | `declaration-track:dfcff49e31949630e9ae616a92e5f0d1f9b93802b2b8d5f1162a443ff212836f` |
| 14 | `def` | [rightHom](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/righthom.md) | 101 | `declaration-track:0072f879af7b38865d8dd5dfe21a3707056441ce06ef51ff50b39707ce6d7846` |
| 15 | `def` | [inl](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/inl.md) | 107 | `declaration-track:ea1c96c9a38973b256a18ca97b00c2f677885fdcefaac95daf168e143ebe32fb` |
| 16 | `theorem` | [left_inl](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/left-inl.md) | 113 | `result-track:09db3070cf7099e1ab755c43eccbd0a9a374a2141064478d4e37e0c95becae73` |
| 17 | `theorem` | [right_inl](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/right-inl.md) | 116 | `result-track:6a1c089f52256a4627009173d2fa7689a4d4956096dd3f0f69821209e4d3c481` |
| 18 | `theorem` | [rightHom_eq_right](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/righthom-eq-right.md) | 119 | `result-track:2a7718d8cc59b6c75efd2bedce91757944e65545e383c06704c7ff9ebdef1cf2` |
| 19 | `theorem` | [rightHom_comp_inl_eq_id](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/righthom-comp-inl-eq-id.md) | 122 | `result-track:855559739de007162954631f74cbe2d79b148d2f0defcb72604adcf530ced5eb` |
| 20 | `theorem` | [fun_id](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/fun-id.md) | 125 | `result-track:c12881734c53aa5c95466da8c81c90ba9e19ee5d29f258dfd54493cc8ab8d16d` |
| 21 | `def` | [equivProd](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/equivprod.md) | 128 | `declaration-track:50bc2a4fdfbf77a6dcbbb4390fa6481e7b4825e044b9f4a9035694e87aafbcf6` |
| 22 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 134 | `declaration-track:9d7e9f921d349d6e80335c50cda2163e3c46ae8dbc8f086f20f7d1e86f382936` |
| 23 | `theorem` | [card](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/card.md) | 138 | `result-track:b97f067d15e9f962656983cbee647734cdf8f9b9f54fc7030876309763f9710c` |
| 24 | `def` | [congr](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/congr.md) | 143 | `declaration-track:eaba6ced8ecba42edecaa3062d50c2210f67104c0911dbb6d1a23be55a5a9dd2` |
| 25 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 156 | `declaration-track:8f54ef1195c0bcb23cc2e255afb7cec4b7b62663d1a73a5f919a6ad8597de22d` |
| 26 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/smul-def.md) | 160 | `result-track:bfafab090b175f0c9d3b15d4ebc2e6d775918dcdea577f4aeca994da344eb236` |
| 27 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 162 | `declaration-track:8ab309d4b980c1445befd52f8e3efafea643c397266242fde9ab645470dfd654` |
| 28 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 167 | `declaration-track:b212290716b8675bb56d7ec7bb89d0461460e6d106b7118df7eb34281d85eff5` |
| 29 | `def` | [toPerm](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/toperm.md) | 182 | `declaration-track:959cfd8bd3fd1020a0be6b1f7c3c364099c2caa629a5d53324818a72ab1858d9` |
| 30 | `theorem` | [toPermInj](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/toperminj.md) | 185 | `result-track:640159bad3fad4ef2bdfb48bd47df503f90ea847323f669e4aa535181afec9a6` |
| 31 | `def` | [IteratedWreathProduct](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/iteratedwreathproduct.md) | 196 | `declaration-track:1144b284ad4e94d7ee1319a6397890b0f8351b2481ed727e0155c836dbaa666b` |
| 32 | `lemma` | [IteratedWreathProduct_zero](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/iteratedwreathproduct-zero.md) | 203 | `result-track:949bebd7853979648a79b19d9f4d082e02021b940986a602bfd0fe4ba992603b` |
| 33 | `lemma` | [IteratedWreathProduct_succ](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/iteratedwreathproduct-succ.md) | 206 | `result-track:750323763b3c2663465bc585c6ff5fd551fdaa62962b5ab83792241534ac8205` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 209 | `declaration-track:d8f4655aa76c4a05a314dcd5e619c5c4a2b86c2d6504d96ab9abfea0b15ec557` |
| 35 | `theorem` | [IteratedWreathProduct.card](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/iteratedwreathproduct-card.md) | 214 | `result-track:4e5633d524e91b0453fb76515a4725ef9600a2fb83a37ab31446f42a08b85fd8` |
| 36 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 223 | `declaration-track:5d720145c824b9ff12e2e503e4685e465c372874728ffe2802281627dc55413f` |
| 37 | `def` | [iteratedWreathToPermHom](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/iteratedwreathtopermhom.md) | 229 | `declaration-track:75a5942912249bf7e6a47166873e0fc6bcc24b4180550238b07e4b928671aa94` |
| 38 | `lemma` | [iteratedWreathToPermHomInj](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/iteratedwreathtopermhominj.md) | 237 | `result-track:38373395b9fa39472482d2bfa90e904187cdc90b47449dc60f3717ef14729ee8` |
| 39 | `def` | [Sylow.mulEquivIteratedWreathProduct](../../../../GroupTheoryAndGeneralizations/RegularWreathProductNamespacedPublic.lean/declarations/sylow-mulequiviteratedwreathproduct.md) | 250 | `declaration-track:1321dc4c587cc3189f7b68246a65deab5a2b0049e8b48c90f257e87c796ab0f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5662cd7035b361078f783c7b562b15fcef7ce7b2cb91248a41d5739f2c45c6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/RegularWreathProduct/Variantb80347866be45f4394e9e90d2dd7c70228c99b0548537960ce7df00f557d584e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
