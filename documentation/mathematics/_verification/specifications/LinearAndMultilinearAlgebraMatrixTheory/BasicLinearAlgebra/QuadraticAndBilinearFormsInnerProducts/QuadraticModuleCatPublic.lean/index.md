# Verification target: Quadratic Module Cat Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0af93d296b78f05e846a394324fd77af380c5b7a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant91323cb5966ac77a615c30d1559cf4fd61fdd7e526aed72f0f26bc9171822492.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0af93d296b78f05e846a394324fd77af380c5b7a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant91323cb5966ac77a615c30d1559cf4fd61fdd7e526aed72f0f26bc9171822492.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant91323cb5966ac77a615c30d1559cf4fd61fdd7e526aed72f0f26bc9171822492.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuadraticModuleCat](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/quadraticmodulecat.md) | 24 | `declaration-track:84a7d1888ca149508168055c2cabcfe38d9e0a06d8b0ae98d5035242410ee326` |
| 2 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/instance.md) | 34 | `declaration-track:c166ba146c60f52bb074fca1b4dc556d3d476df351b93741dccfa62f895fc1e3` |
| 3 | `theorem` | [moduleCat_of_toModuleCat](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/modulecat-of-tomodulecat.md) | 37 | `result-track:9c0bbb64d16e60f341d69789929ca83e67b4c92a9633d77871b1adf4ea0a1a60` |
| 4 | `abbrev` | [of](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/of.md) | 42 | `declaration-track:138d50a2eaa5faad5e690d77c8ef47686f8bf2cd8d79ef54f884ecbcad3ebf9e` |
| 5 | `structure` | [Hom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/hom.md) | 50 | `declaration-track:6f5c8b632d734eae8c7114eca7515775039a66b0ad2a4afc79681358d4eb2b1d` |
| 6 | `instance` | [category](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/category.md) | 54 | `declaration-track:75c19f3dd36f6a4801689f8e72d2313a2cfcbf83b47786054484dfb19f8f2b0a` |
| 7 | `instance` | [concreteCategory](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/concretecategory.md) | 59 | `declaration-track:241fac60f1fc062188476d5f55b3dddec6bf74b954814a7428d088e2516a44be` |
| 8 | `abbrev` | [Hom.toIsometry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/hom-toisometry.md) | 65 | `declaration-track:b7078764deb74668c5a258f972df0ac1f3e47d7b856f67742dc0668fbdd1b6a3` |
| 9 | `abbrev` | [ofHom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/ofhom.md) | 69 | `declaration-track:d3b55889a9d1f7456e6c5f700e22bda10cf79263ed8b0ba95fd33c408cbde983` |
| 10 | `lemma` | [Hom.toIsometry_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/hom-toisometry-injective.md) | 74 | `result-track:f646eba160b1886362d17164f976b8035ca2474104ccc7fc40ed331be0718e06` |
| 11 | `lemma` | [hom_ext](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/hom-ext.md) | 79 | `result-track:b347d9807225b842d987efbf518e810443ccbee24e48a63a8893aa46467c5cd7` |
| 12 | `theorem` | [toIsometry_comp](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/toisometry-comp.md) | 83 | `result-track:28937c02f9a2ad7b5036a9d93576914520ff85312becf510c5f481defc39f514` |
| 13 | `theorem` | [toIsometry_id](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/toisometry-id.md) | 87 | `result-track:08b67078fe566d975e48595b3b9555f4ef321af7696fe2d7cd40c03501bcb256` |
| 14 | `instance` | [hasForgetToModule](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/hasforgettomodule.md) | 91 | `declaration-track:fe3b0872651e2f68fcfb9c0bd03080fe80977c6bc7071f67c1389c3f34326192` |
| 15 | `theorem` | [forget₂_obj](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/forget-obj.md) | 97 | `result-track:63bd06dac42edd8dc6201fbb123464f78153270698b9fd8592c48c1dcdf28b21` |
| 16 | `theorem` | [forget₂_map](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/forget-map.md) | 102 | `result-track:2d98c167d7a673c83e11e6fd585494be2cfedcdb957dceec6fc9b13c52d29ca0` |
| 17 | `def` | [ofIso](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/ofiso.md) | 114 | `declaration-track:296d1c8197dc8690d6d94c4f4ce940f0fc7f1f17527816be85273489f819be36` |
| 18 | `theorem` | [ofIso_refl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/ofiso-refl.md) | 120 | `result-track:80ec6eb2ec7487d582d7887ceefddd8930ff88238ddf0dddeb5345f3af4e6c09` |
| 19 | `theorem` | [ofIso_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/ofiso-symm.md) | 123 | `result-track:cdae5222d1b6dd6a389ec35d3548fcd4d39f37c1438da37fb2fa6457fe39904d` |
| 20 | `theorem` | [ofIso_trans](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/ofiso-trans.md) | 126 | `result-track:de0f09c11ede094dcd77f8355c2460bb26b82db061c86d712f677f1a813654ef` |
| 21 | `def` | [toIsometryEquiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/toisometryequiv.md) | 139 | `declaration-track:bf1194fd1cc41d24d5217f230087028dde8456cb290da59cb4a1294ac2e61430` |
| 22 | `theorem` | [toIsometryEquiv_refl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/toisometryequiv-refl.md) | 152 | `result-track:da18b6d4535d1903e07c391c961603de375667f8c54443cd4dd76f3efcfe5018` |
| 23 | `theorem` | [toIsometryEquiv_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/toisometryequiv-symm.md) | 155 | `result-track:971be467c56699afff30f7096cc6fb6eb28827fdb1050fa5213f7c40b66fe4b4` |
| 24 | `theorem` | [toIsometryEquiv_trans](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatPublic.lean/declarations/toisometryequiv-trans.md) | 159 | `result-track:4cfe0708d928cb64007b6872c5df04e83101174b38e6a8a7e4b26a457069eb55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e2fc242a7012e16f3044450565648f463b490b1c2ef97d382ba013062ef3364 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant91323cb5966ac77a615c30d1559cf4fd61fdd7e526aed72f0f26bc9171822492.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant91323cb5966ac77a615c30d1559cf4fd61fdd7e526aed72f0f26bc9171822492.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
