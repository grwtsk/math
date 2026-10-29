# Verification target: Associator Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e11e1e0c1f226156ff42fda66208fc470a6db8c6",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Associator/Variantb188ef6430c3c728293cfaf0b24e67bc12f15c284ab9bbde499458bc05c45f46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e11e1e0c1f226156ff42fda66208fc470a6db8c6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Associator/Variantb188ef6430c3c728293cfaf0b24e67bc12f15c284ab9bbde499458bc05c45f46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Associator/Variantb188ef6430c3c728293cfaf0b24e67bc12f15c284ab9bbde499458bc05c45f46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/lid.md) | 47 | `declaration-track:40bee08d71dd95d3baa7fe198ea9e611689cea2e500fbdff937e8cbd6264bba0` |
| 2 | `theorem` | [lid_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/lid-tmul.md) | 54 | `result-track:f5a3f65c3ca19227361e8119760a0e451b29f2710c75ee5c97623988d76f1154` |
| 3 | `theorem` | [lid_symm_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/lid-symm-apply.md) | 58 | `result-track:e84e1901af36f7f6a48b31f916ca75adca74ef9a7a1b3f13954af9eec3daaeb8` |
| 4 | `lemma` | [includeRight_lid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/includeright-lid.md) | 61 | `result-track:328c95889e373f84fdfe23420a934bd6053f703652621c3017e93105b4ca0a8e` |
| 5 | `def` | [rid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/rid.md) | 75 | `declaration-track:57e79d4bc05a329a47ed406cbdf4c377570c03a60855fc6b7e02b2f5d766635c` |
| 6 | `theorem` | [rid_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/rid-tmul.md) | 81 | `result-track:ae9565eb03d8d81df31ae7974474d08bda3b8213896a9db229568d99507af79c` |
| 7 | `theorem` | [rid_symm_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/rid-symm-apply.md) | 85 | `result-track:877e222490470329cf209a8f8df198a5a157f6a919592e95a743855b1b9758c0` |
| 8 | `theorem` | [lid_eq_rid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/lid-eq-rid.md) | 89 | `result-track:43e340bea882152863393ed9c4b8d7e614f95e7f40c330e48b408d6d31c62681` |
| 9 | `def` | [lidOfCompatibleSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/lidofcompatiblesmul.md) | 100 | `declaration-track:425293b16bedfdf831ad7268208a9991a3b86b79150fc2a8718ed0d7ea5facbf` |
| 10 | `theorem` | [lidOfCompatibleSMul_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/lidofcompatiblesmul-tmul.md) | 103 | `result-track:353f4e9eab2141a2ab5653ec4aa3a469f1d2f23f2a46fa4aba28f6a8460124d6` |
| 11 | `def` | [assoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/assoc.md) | 114 | `declaration-track:ee8442329f7536bd82fc196aa2db618037e94efd4e6e01f24b521bcef6163308` |
| 12 | `theorem` | [assoc_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/assoc-tmul.md) | 128 | `result-track:5b077879faafc6cdccf6d80b0a4f61180b6844f9992b8d538bbbeb622407705f` |
| 13 | `theorem` | [assoc_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/assoc-symm-tmul.md) | 133 | `result-track:f35d1bbbf017662346b3839f188d48990ec19d9d84755ed63ce1102ca46df7a8` |
| 14 | `lemma` | [map_map_comp_assoc_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/map-map-comp-assoc-eq.md) | 140 | `result-track:3ff59f643691d03f24a7490d17095483893641710b6d25c4f2f1d5438b8b66d4` |
| 15 | `lemma` | [map_map_assoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/map-map-assoc.md) | 145 | `result-track:cad194d37d195e0580151b70e1794a700fe13951c4e054150b49c6db3756e8ab` |
| 16 | `lemma` | [map_map_comp_assoc_symm_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/map-map-comp-assoc-symm-eq.md) | 153 | `result-track:a22cd5df2a38cb7a7f909cbf4ae0404c16f40ae6ec41afa37f0e2bb3edd6fa33` |
| 17 | `lemma` | [map_map_assoc_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/map-map-assoc-symm.md) | 158 | `result-track:ad90fb530f3458383c132748a10dd5f16430a5da56ee641b897a7bda3b329728` |
| 18 | `def` | [leftComm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/leftcomm.md) | 173 | `declaration-track:c31ecfc24781a9f1ab2b9b302d65cd47d07d6dfe26e2daca4ec3133a9a7503b2` |
| 19 | `theorem` | [leftComm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/leftcomm-tmul.md) | 182 | `result-track:8e0d49215c95e8e0d0f85ce4baca5fcb90a6c81a3f79b3d2d4d7c9c4dac66f39` |
| 20 | `theorem` | [leftComm_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/leftcomm-symm-tmul.md) | 186 | `result-track:fbb31f65374460f5f19afb346a3044ae87e5fb9be2dfd69e6f4a52e0246ba440` |
| 21 | `def` | [tensorTensorTensorComm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/tensortensortensorcomm.md) | 202 | `declaration-track:56640ccab4657896474cea4ba00537247b2eb08f38c0695aea91783f7e24768b` |
| 22 | `theorem` | [tensorTensorTensorComm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/tensortensortensorcomm-tmul.md) | 211 | `result-track:3d16f19ef77c6d42e81c50bfff52cd10ca7d2015e279f3aa83135428f2fda9ec` |
| 23 | `theorem` | [tensorTensorTensorComm_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/tensortensortensorcomm-symm.md) | 216 | `result-track:e08b2dcac4ed83f9fb6b12c1ec45c270c5764067260926bcac81d6da20bfb345` |
| 24 | `theorem` | [tensorTensorTensorComm_comp_map](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/tensortensortensorcomm-comp-map.md) | 220 | `result-track:e171ef8bcba774251fe97c3286d816c63b37817382bdd26532ab3e6a99ca5309` |
| 25 | `def` | [tensorTensorTensorAssoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/tensortensortensorassoc.md) | 237 | `declaration-track:be6e342b8325902905c356c9d11bb65e5aa135237f28b2fb37f50e03f482d8a5` |
| 26 | `theorem` | [tensorTensorTensorAssoc_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/tensortensortensorassoc-tmul.md) | 244 | `result-track:effdcf50be719859beed135f3bb732213b2d8a9231528d9a88b0599ee0904068` |
| 27 | `theorem` | [tensorTensorTensorAssoc_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/tensortensortensorassoc-symm-tmul.md) | 249 | `result-track:94d4ba153543621d50ba4b7971cb9e9c3947ee0ff45279376509faff78988ebb` |
| 28 | `theorem` | [rTensor_tensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/rtensor-tensor.md) | 267 | `result-track:8d08745a8d15dddab433616c458656a5c4c868604797ddde50d4d2ed621f39a5` |
| 29 | `theorem` | [lid_comp_rTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespaced.lean/declarations/lid-comp-rtensor.md) | 273 | `result-track:8ad79b89df46bd6a69f4fbe8ae982e058e5ccc17db359d076a04e90e6859431f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00d02b63e4a2319ebb570ac94278a88636adeecdd433ba36c6f5443eca330614 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Associator/Variantb188ef6430c3c728293cfaf0b24e67bc12f15c284ab9bbde499458bc05c45f46.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Associator/Variantb188ef6430c3c728293cfaf0b24e67bc12f15c284ab9bbde499458bc05c45f46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
