# Verification target: Linear Algebra Direct Sum Finsupp Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d784ef53e40eaf2c815662da129d8211b010d212",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d784ef53e40eaf2c815662da129d8211b010d212`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variant80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppleft.md) | 56 | `declaration-track:400593793a918cb985e734f1a0d628e980c659b7f72020becc4c136fc0296db8` |
| 2 | `lemma` | [finsuppLeft_apply_tmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppleft-apply-tmul.md) | 63 | `result-track:10607e63bdfcdc8308cd59ce41e12a06f937d9fe540b61fbbe02a8612d4d936b` |
| 3 | `lemma` | [finsuppLeft_apply_tmul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppleft-apply-tmul-apply.md) | 71 | `result-track:ec2a6195ef5ebda298baf6066a6cfc89aec2db18e3d812552f2c792ce1f4d93a` |
| 4 | `theorem` | [finsuppLeft_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppleft-apply.md) | 76 | `result-track:2abbfe17b29881ddefde66ed12be3ae84c7ec185868f7ca125368302a032a48e` |
| 5 | `lemma` | [finsuppLeft_symm_apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppleft-symm-apply-single.md) | 83 | `result-track:6808e987793397a957a795dde3184dfcd7e90d77fc624e948ec9cb8a6505746a` |
| 6 | `def` | [finsuppRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppright.md) | 90 | `declaration-track:42c75c007ed003f3d3ca1bfc440135cb07aa81318bc42d9807b6a8877c487542` |
| 7 | `lemma` | [finsuppRight_apply_tmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppright-apply-tmul.md) | 95 | `result-track:ad4360d165cafada8573683431cefba19dc4d14e050d74bad9c171f03021b1c6` |
| 8 | `lemma` | [finsuppRight_apply_tmul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppright-apply-tmul-apply.md) | 103 | `result-track:47ae779f055f6a72937a1452ebd21e902d891db0bf949095f002ad6b20223d27` |
| 9 | `theorem` | [finsuppRight_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppright-apply.md) | 108 | `result-track:73d0398faf23fa586aa144be3faccb97045928ec4891fa5362fd9aead83a6ab2` |
| 10 | `lemma` | [finsuppRight_tmul_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppright-tmul-single.md) | 115 | `result-track:140b4f1c7e1e66c4c561c271de360e73df726ebba146f3e4a7dcd66d77552a6f` |
| 11 | `lemma` | [finsuppRight_symm_apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppright-symm-apply-single.md) | 120 | `result-track:33818034e30a6c67413783af8ed23dccf2fa22c84bfcf236c817d0cf7da20b18` |
| 12 | `lemma` | [finsuppLeft_smul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppleft-smul.md) | 125 | `result-track:f276abff13c7d689860f0e9c153e64539d1109add2480d73bba3a5b252e87e49` |
| 13 | `def` | [finsuppScalarLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarleft.md) | 131 | `declaration-track:aa34fb89bcf27af81b2cc022725ec0d1682eb47153c20d154ccd85bf969929d9` |
| 14 | `lemma` | [finsuppScalarLeft_apply_tmul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarleft-apply-tmul-apply.md) | 136 | `result-track:b0b34911c5680cb9ea848185f1326f17933f5e47e949dde0fa7f70300bdcf851` |
| 15 | `lemma` | [finsuppScalarLeft_apply_tmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarleft-apply-tmul.md) | 140 | `result-track:cb6e308b07c31d9cec78e6ecea2b26bdb25deaca550dc2566c8efe1d74870938` |
| 16 | `lemma` | [finsuppScalarLeft_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarleft-apply.md) | 146 | `result-track:c955d6ad23532d81841d79d7f1b547c1a65a7844971c78c39ebc5951d1b9a2bb` |
| 17 | `lemma` | [finsuppScalarLeft_symm_apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarleft-symm-apply-single.md) | 151 | `result-track:c4201bb6774ed3d81b22214bc4f3c69d0cd58a3312811c0a8b6be2617110e5ff` |
| 18 | `def` | [finsuppScalarRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarright.md) | 158 | `declaration-track:1a7880c3fde7f0b098abf2e358fa7dc159e30d231be1b56ea6bb2e3fed501982` |
| 19 | `lemma` | [finsuppScalarRight_apply_tmul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarright-apply-tmul-apply.md) | 163 | `result-track:467d1f7c5bc66c910e8776f8c22f90c00ec81d4480b18cf17d303788a975d494` |
| 20 | `lemma` | [finsuppScalarRight_apply_tmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarright-apply-tmul.md) | 167 | `result-track:9cc120ef17ff347eb6b5eaa4a9967184d286f44e1ddb65778fd3365250d901e8` |
| 21 | `lemma` | [finsuppScalarRight_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarright-apply.md) | 173 | `result-track:9ae0fb4e1f8439aa12c49cbd16b0505b7c98a6aae9f64a834361bd679076579f` |
| 22 | `lemma` | [finsuppScalarRight_symm_apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarright-symm-apply-single.md) | 179 | `result-track:9d615deabde263eb52de0821cb2fee7ccc17a0376bbe50092629edbc36df7025` |
| 23 | `theorem` | [finsuppScalarRight_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsuppscalarright-smul.md) | 184 | `result-track:f664eabf88f7a719e296869bf854741277c8634d2a5997154fc33e044739df64` |
| 24 | `theorem` | [Finsupp.linearCombination_one_tmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupp-linearcombination-one-tmul.md) | 196 | `result-track:f3cecf0e56759b95f9d14493b7c573e66b32c5cf5130ef7853bcd704117dc374` |
| 25 | `def` | [finsuppTensorFinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp-source-edition-2.md) | 205 | `declaration-track:bc9e0e8746460fe65ee89de025ee2710528328ef0e2b416a19cd920adf556762` |
| 26 | `theorem` | [finsuppTensorFinsupp_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp-single.md) | 212 | `result-track:f1a13ba2edd7769d2b1e99c360d1b064774529683735ea7af3b87433aa6be81e` |
| 27 | `theorem` | [finsuppTensorFinsupp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp-apply.md) | 218 | `result-track:1baa233fc39905532e167b6a43611393398678a89bdc9cc1d2e3380790263738` |
| 28 | `theorem` | [finsuppTensorFinsupp_symm_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp-symm-single.md) | 233 | `result-track:f4adf9dd108a664c22993dfc5a5fac66e491302c2b8f654086b5ca07c8ec69e2` |
| 29 | `def` | [finsuppTensorFinsuppLid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupplid.md) | 240 | `declaration-track:ff24ecc25b976cabcf3937014269a0a925c1a7f11ebc0338526540dfd54e40b0` |
| 30 | `theorem` | [finsuppTensorFinsuppLid_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupplid-apply-apply.md) | 244 | `result-track:67175272280b52d38b2541119328a9c2f99bf7c3aeb01c5d186a47be6619f488` |
| 31 | `theorem` | [finsuppTensorFinsuppLid_single_tmul_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupplid-single-tmul-single.md) | 249 | `result-track:b1afda155f41fdfee42c07e89124aa558ee8238aa7aaf380a63c5bc3c5666195` |
| 32 | `theorem` | [finsuppTensorFinsuppLid_symm_single_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupplid-symm-single-smul.md) | 255 | `result-track:e4d92c71797c62c236b47187fc0685d49446cd1923b186bf71874c9e54fd3350` |
| 33 | `def` | [finsuppTensorFinsuppRid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupprid.md) | 262 | `declaration-track:2fef389ebf60b8ed033306e93d610505378c540fd0c5a17be1eadc68e5facc43` |
| 34 | `theorem` | [finsuppTensorFinsuppRid_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupprid-apply-apply.md) | 266 | `result-track:7cdafea865ac29a8800bb4aca5c709f93e680d3e6572e48ae4b4965f8b9eec38` |
| 35 | `theorem` | [finsuppTensorFinsuppRid_single_tmul_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupprid-single-tmul-single.md) | 271 | `result-track:7da40923bb40414c12e2d625aacd8f45f0b763714bd88aab0bc4295fd74bee7e` |
| 36 | `theorem` | [finsuppTensorFinsuppRid_symm_single_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupprid-symm-single-smul.md) | 277 | `result-track:334b989a1830cdd906fd21b9a795f6a95cbcce2ede2aeed584b0b32dde09ebc0` |
| 37 | `def` | [finsuppTensorFinsupp'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp.md) | 284 | `declaration-track:058aec0d9e46dd65c1d272f671539633cdfc29408ccba7b10f9837bff22868b7` |
| 38 | `theorem` | [finsuppTensorFinsupp'_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp-apply-apply.md) | 288 | `result-track:66db5d2560ebd7204f9cf50d2f923c6d3ee2d61231336c89890fd64b1c680ade` |
| 39 | `theorem` | [finsuppTensorFinsupp'_single_tmul_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp-single-tmul-single.md) | 293 | `result-track:e21a2a6f2019990ffbe094afdac790a0ad732b5a3a44b6bc6252cdb5a6f28d39` |
| 40 | `theorem` | [finsuppTensorFinsupp'_symm_single_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp-symm-single-mul.md) | 298 | `result-track:1d0c2287629e1b09d671e37b205954f6473ed69c7c9058eb0c0a1ea422625385` |
| 41 | `theorem` | [finsuppTensorFinsupp'_symm_single_eq_single_one_tmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp-symm-single-eq-single-one-tmul.md) | 303 | `result-track:b6bf01dd3a15975c77057c2db3d65a2fbaa2711cd6dec4c7487350c5c5258bec` |
| 42 | `theorem` | [finsuppTensorFinsupp'_symm_single_eq_tmul_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupp-symm-single-eq-tmul-single-one.md) | 309 | `result-track:26882b3646973223d55533c6f7e5ed124047ac906d6ce176fb5fa01db8d2001c` |
| 43 | `theorem` | [finsuppTensorFinsuppLid_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupplid-self.md) | 315 | `result-track:e89024f7e038f28339fd2f736bb0e5b9e423ef23b739c4ccafcd0d4019fe350a` |
| 44 | `theorem` | [finsuppTensorFinsuppRid_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDirectSumFinsuppPublic.lean/declarations/finsupptensorfinsupprid-self.md) | 318 | `result-track:708722af19105571b2a1f09d14d32ec03aa718319093560ac5e020a552e3fc9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe587c1a64f0e059b49bf2fc7058c657452bebde7aa69898dfcbe5fcf66e0e46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Finsupp/Variant80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
