# Verification target: Complex Circle Circle Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "390b1068414e84c8d8f5a8ff5b96919756963dd8",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Circle/Variantfa6c958fb20df5f545be78b62dffcebe627f4f78924e612b3351b125060cf210.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `390b1068414e84c8d8f5a8ff5b96919756963dd8`.

Source path: `GRWTSK/Analysis/Circle/Variantfa6c958fb20df5f545be78b62dffcebe627f4f78924e612b3351b125060cf210.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Circle/Variantfa6c958fb20df5f545be78b62dffcebe627f4f78924e612b3351b125060cf210.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_arg](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/injective-arg.md) | 32 | `result-track:b9f6fe42d7d6782838b5edfea549392fc7ed3c6d0ba6397d7a72c07886533d35` |
| 2 | `theorem` | [arg_eq_arg](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/arg-eq-arg.md) | 36 | `result-track:17959c685b2123ecd92318af6d9f9fdfc984dd8ae5bbc97fd3222f61e904db12` |
| 3 | `theorem` | [arg_exp](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/arg-exp.md) | 39 | `result-track:b366919181199a931529e468c5ada3fe5279ebe3de2309dacfd2070a667d8072` |
| 4 | `theorem` | [exp_arg](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/exp-arg.md) | 43 | `result-track:aff6833057ff3be47d307148a8f4f537da25439ebaa86dab320d30ec8207a500` |
| 5 | `def` | [argPartialEquiv](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/argpartialequiv.md) | 49 | `declaration-track:75aa7aacf979cdb9627e6fa98f332492483c4533c387b797789e37d670b148eb` |
| 6 | `def` | [argEquiv](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/argequiv.md) | 61 | `declaration-track:12b49d2c63cb546446a0613da023b9017b73704999c6e8342a0ebabd9ac56fde` |
| 7 | `lemma` | [leftInverse_exp_arg](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/leftinverse-exp-arg.md) | 67 | `result-track:e5e4c629597102d700e287346ad0034a4cd0fc7146a68afbcaa97509ba30199b` |
| 8 | `lemma` | [invOn_arg_exp](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/invon-arg-exp.md) | 68 | `result-track:9efbfd7047ef34249240cea315a9b3286b1e4d9c63231078f6c7bd820b8697d6` |
| 9 | `lemma` | [surjOn_exp_neg_pi_pi](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/surjon-exp-neg-pi-pi.md) | 69 | `result-track:14198c058ba79e3afd19f48f25bc06c1f4db745ad014eee091b13bc392ab75a6` |
| 10 | `lemma` | [exp_eq_exp](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/exp-eq-exp.md) | 71 | `result-track:f7d6fb4fba5bbfd32ccaee149cdd92e821d40c17ed36334c8260892135da5b3b` |
| 11 | `lemma` | [periodic_exp](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/periodic-exp.md) | 77 | `result-track:730121fa83bdde5bed63a1e5d48ce5461a4d5873c56613fc7c23416b6be6602a` |
| 12 | `lemma` | [exp_two_pi](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/exp-two-pi.md) | 79 | `result-track:f0f2c90e7c290f1c78282f51cc22859fe9360144b545aed99db5388845190e19` |
| 13 | `lemma` | [exp_int_mul_two_pi](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/exp-int-mul-two-pi.md) | 81 | `result-track:1a835ea68259c67aeda970e6c284d013157064a130f1bdb10be136722f2e3008` |
| 14 | `lemma` | [exp_two_pi_mul_int](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/exp-two-pi-mul-int.md) | 84 | `result-track:a3703c91c7f8f99973a6742ba3ec0a99b5af343300f3600b300b0baa23fe13ec` |
| 15 | `lemma` | [exp_eq_one](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/exp-eq-one.md) | 87 | `result-track:645217a9868e7dbdfad718496ed771305f51d5df402334b77364586561d3ae7f` |
| 16 | `lemma` | [exp_inj](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/exp-inj.md) | 91 | `result-track:9d9d4c1bef6c6ae87d2850b3fdbb1c664aad70c1a1bbdca758fd6382851cfabf` |
| 17 | `lemma` | [exp_sub_two_pi](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/exp-sub-two-pi.md) | 94 | `result-track:20157a708216d54d7a4be4b420922b6a9ac9233d1b3c633463fe109fa69c7e6f` |
| 18 | `lemma` | [exp_add_two_pi](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/exp-add-two-pi.md) | 95 | `result-track:02dcb1a66f4fdf188fa970f9fce1451a2358d522929bb70b5abecb2f7265ba2d` |
| 19 | `def` | [toCircle](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/tocircle-source-edition-2.md) | 102 | `declaration-track:e8a60ab079b96df537e26f061656cc16dd9d62ed23a408d8707121d1900ed74d` |
| 20 | `lemma` | [toCircle_coe](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/tocircle-coe.md) | 104 | `result-track:7bde4f9e0b35a495fa4f5288bac40b56622589e70d99973f5a4b96736e432ab1` |
| 21 | `lemma` | [coe_toCircle](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/coe-tocircle.md) | 106 | `result-track:e743c641d2e442b184bf5f3fc220071f9ce84789b7b6ba55c26328e64115e1b4` |
| 22 | `lemma` | [toCircle_zero](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/tocircle-zero.md) | 110 | `result-track:4e623016cdc27cec155e7f4254fb8d1b41971d668b3cbed6a163bda8c1bd54b2` |
| 23 | `lemma` | [toCircle_neg](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/tocircle-neg.md) | 112 | `result-track:78497e88f281ce7799f5e91b928be3cea48edbead726ab7fcf0f365f2be1242a` |
| 24 | `lemma` | [toCircle_add](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/tocircle-add-source-edition-2.md) | 116 | `result-track:f740df8e1cec96987b0abb5969ae6e3fd9849b9b8372bba1f16ea2f135a2ea6e` |
| 25 | `lemma` | [arg_toCircle](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/arg-tocircle.md) | 121 | `result-track:323f37eec82ddcb4c788aaad71c3001417f0edec89736696da96962add3a7f37` |
| 26 | `theorem` | [scaled_exp_map_periodic](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/scaled-exp-map-periodic.md) | 134 | `result-track:ac1391c4d722a7289aee3a8666fd5333113624fe14e882a3a91308438f48e644` |
| 27 | `def` | [toCircle](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/tocircle.md) | 142 | `declaration-track:07961c564d6be2dd1d81a0e4dba170ecccd6bc004a9fd2f1d58caa264e4efbad` |
| 28 | `theorem` | [toCircle_apply_mk](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/tocircle-apply-mk.md) | 145 | `result-track:6556958d4ae4de32c8a6c7f4f9e6c89ac4f3053fa6a97aa1c6ed27cffd0267fd` |
| 29 | `theorem` | [toCircle_add](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/tocircle-add.md) | 148 | `result-track:dec12fb6a681e451809270e557369cf2b90f35690617f6cf59472680407c2b19` |
| 30 | `lemma` | [toCircle_zero](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/tocircle-zero-source-edition-2.md) | 154 | `result-track:951de07d44146533f1f6b54a7adc27d458fcd09549d4adc8a186312c7e46b178` |
| 31 | `theorem` | [continuous_toCircle](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/continuous-tocircle.md) | 157 | `result-track:16e068a135f469cc3211161b4d50b5a96a85878f85acb9f3aa1dbc9766df8385` |
| 32 | `theorem` | [injective_toCircle](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/injective-tocircle.md) | 160 | `result-track:d2d5d09e211a8671541683afb965039fc5acda1fb0b410ae70a21b64f9066c6f` |
| 33 | `def` | [homeomorphCircle'](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/homeomorphcircle.md) | 173 | `declaration-track:219cbea350e3789191ff4b90c1a86e2254e86479c8a8cd1a819383d5f32d2c4c` |
| 34 | `theorem` | [homeomorphCircle'_apply_mk](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/homeomorphcircle-apply-mk.md) | 184 | `result-track:d4efb608db10ef34163120a53108a7d9fda0b9e66905675ef5ce315051d618c7` |
| 35 | `def` | [homeomorphCircle](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/homeomorphcircle-source-edition-2.md) | 187 | `declaration-track:2b74a4af46ba878cd79425c84aeea6ab2594b9cbdce2722a243502bae15d30b2` |
| 36 | `theorem` | [homeomorphCircle_apply](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/homeomorphcircle-apply.md) | 190 | `result-track:5a311e342c92abe13b1e3dbe0456f1046bffc5e264808a205f8499ca4e4daf28` |
| 37 | `lemma` | [isLocalHomeomorph_circleExp](../../../../SpecialFunctions/ComplexCircleCircleNamespacedSourceEdition1.lean/declarations/islocalhomeomorph-circleexp.md) | 202 | `result-track:eb58df7f7e1070035781b32cd551f0bccd4747e822ada8c992f97ec2d934578c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9ee273d386a31a81129826693461a0dec11cdd8ddf71ae2798cc82cf8beab80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Circle/Variantfa6c958fb20df5f545be78b62dffcebe627f4f78924e612b3351b125060cf210.lean","GRWTSK/_verification/specifications/Analysis/Circle/Variantfa6c958fb20df5f545be78b62dffcebe627f4f78924e612b3351b125060cf210.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
