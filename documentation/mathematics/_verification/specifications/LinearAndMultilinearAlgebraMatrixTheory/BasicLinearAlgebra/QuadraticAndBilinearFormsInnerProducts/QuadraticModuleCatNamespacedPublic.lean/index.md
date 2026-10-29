# Verification target: Quadratic Module Cat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41e3a83462bc3958c4a8ecf1ed13a65169b5be4c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant8ce466053c76f93f67c57c01dbb3af13077cb78c72e01c0ea8b6a18f20f14c58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41e3a83462bc3958c4a8ecf1ed13a65169b5be4c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant8ce466053c76f93f67c57c01dbb3af13077cb78c72e01c0ea8b6a18f20f14c58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant8ce466053c76f93f67c57c01dbb3af13077cb78c72e01c0ea8b6a18f20f14c58.lean.json)

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
| 1 | `structure` | [QuadraticModuleCat](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/quadraticmodulecat.md) | 32 | `declaration-track:596e4bd5ed92b5bd07723e0c2dba7b8dd88102c66fbf7f0414e3a95ceb251052` |
| 2 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/instance.md) | 42 | `declaration-track:84880abb45cb3d650f6c2abde28a3603dbbf8f7ae754107ef0b2d929b889d9f1` |
| 3 | `theorem` | [moduleCat_of_toModuleCat](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/modulecat-of-tomodulecat.md) | 45 | `result-track:8087e1b9d84da09cebd0d735cc525f59a1d8622040606a8eb56a3be74cc4da70` |
| 4 | `abbrev` | [of](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/of.md) | 50 | `declaration-track:90180daa3fc8b13ab0de6586717d8ca9ec7268b536c5b190746630463d1ac88f` |
| 5 | `structure` | [Hom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/hom.md) | 58 | `declaration-track:df46158bf6e45a355fc27f0b03873b61eed4b3ea73fa1d1aa134b7cfa5a58b2c` |
| 6 | `instance` | [category](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/category.md) | 62 | `declaration-track:624fb4804815ee57acbcf2aafb59be530a7c700a079ee886b27a6dcf24b0b945` |
| 7 | `instance` | [concreteCategory](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/concretecategory.md) | 67 | `declaration-track:145600852eadba1f753c59ee6cd172daf2c3a22125604f7aa49de118c44c6d47` |
| 8 | `abbrev` | [Hom.toIsometry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/hom-toisometry.md) | 73 | `declaration-track:d8cce59ee6a72adb176d1faf0df31b8d386f5cdf77048b945127cc1ae2938b8f` |
| 9 | `abbrev` | [ofHom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/ofhom.md) | 77 | `declaration-track:1ab0117a70dc4c7b74766a25a02c1271b408ff54cad92eb0c11bc12fd1ccaa65` |
| 10 | `lemma` | [Hom.toIsometry_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/hom-toisometry-injective.md) | 82 | `result-track:68ba291663802827aeb6840acaaa64c5edb3c7ca985b0b3a4a5fde8e952e811f` |
| 11 | `lemma` | [hom_ext](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/hom-ext.md) | 87 | `result-track:c85bc0151b3a2acc2b625991543506f9fb7e9122bf316f75ce6c98cf5874fb19` |
| 12 | `theorem` | [toIsometry_comp](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/toisometry-comp.md) | 91 | `result-track:759493dd8e483b999b2d638cec313c6aa2279428f573f9aa0ab3c4e68766fde3` |
| 13 | `theorem` | [toIsometry_id](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/toisometry-id.md) | 95 | `result-track:051cf89008bb8dd9fff8ce8846570442b7b3d417c1aa2239184b0dc6cd23123e` |
| 14 | `instance` | [hasForgetToModule](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/hasforgettomodule.md) | 99 | `declaration-track:aac06a4ade074c79a92654ec3ac2ebd1963f9e2e2023de245776b5adaf3153bb` |
| 15 | `theorem` | [forget₂_obj](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/forget-obj.md) | 105 | `result-track:ec3f04d72ab12b6f89de224728f2721b9b35135ccf93d511c3e92d1b7eca65a0` |
| 16 | `theorem` | [forget₂_map](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/forget-map.md) | 110 | `result-track:9a6c225fecf9c3ff40eea44375fcf1c36f9de2b71a20c04a2b6b413368fe0677` |
| 17 | `def` | [ofIso](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/ofiso.md) | 122 | `declaration-track:f35f452bf9f1cf95187d97987a090f86d322c7c7c3e18b9c3ab847c7ce7c1937` |
| 18 | `theorem` | [ofIso_refl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/ofiso-refl.md) | 128 | `result-track:9e892ddae6b00608728aff70231c28f1a97479b16330ce9ab017b9807a2963a3` |
| 19 | `theorem` | [ofIso_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/ofiso-symm.md) | 131 | `result-track:eb3b39146f8ae2f1ca223d4ba4466fafa29a89b10c362899c3304c7fe8df2910` |
| 20 | `theorem` | [ofIso_trans](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/ofiso-trans.md) | 134 | `result-track:d9c7aebe5ae1964f563425e10d4bf507ca273bb0f67e3ae92c1cf2d21be094b0` |
| 21 | `def` | [toIsometryEquiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/toisometryequiv.md) | 147 | `declaration-track:bccc84f36db9bb245b76554ec2db585155fa82fcf201ee9d5b8875ba8f00234e` |
| 22 | `theorem` | [toIsometryEquiv_refl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/toisometryequiv-refl.md) | 160 | `result-track:11c0b7be64368d900cb6c4b8a7b4162a5f54f0817af46afe70da72cc616d1b48` |
| 23 | `theorem` | [toIsometryEquiv_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/toisometryequiv-symm.md) | 163 | `result-track:ca84d7a145c7314d03b86c4078ccce86a491f6ae7704d45f301fa0ea89579495` |
| 24 | `theorem` | [toIsometryEquiv_trans](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatNamespacedPublic.lean/declarations/toisometryequiv-trans.md) | 167 | `result-track:3ac35b0ef81850efa85c5b227be2dd85a3242ad2a7bd2ec99ce2efd00a3e6136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22a590c16109730df240f8d703e691a0f5be05e95fc935dfffafc891b6b13286 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant8ce466053c76f93f67c57c01dbb3af13077cb78c72e01c0ea8b6a18f20f14c58.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant8ce466053c76f93f67c57c01dbb3af13077cb78c72e01c0ea8b6a18f20f14c58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
