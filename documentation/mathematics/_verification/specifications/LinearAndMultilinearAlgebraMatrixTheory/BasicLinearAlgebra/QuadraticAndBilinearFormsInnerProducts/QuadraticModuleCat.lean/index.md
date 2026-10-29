# Verification target: Quadratic Module Cat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6672bf9c5e1106f4bcfa54a2f464712a1edae4f7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant74541d8ebd9d172eb485e5e1754b857f5d598764b6fade0516d6ca56647090ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6672bf9c5e1106f4bcfa54a2f464712a1edae4f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant74541d8ebd9d172eb485e5e1754b857f5d598764b6fade0516d6ca56647090ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant74541d8ebd9d172eb485e5e1754b857f5d598764b6fade0516d6ca56647090ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuadraticModuleCat](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/quadraticmodulecat.md) | 20 | `declaration-track:69c09ca539a6b76c9fe2d6cbb327d63d12971cda70145b587ae5775c5f29a24c` |
| 2 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/instance.md) | 30 | `declaration-track:06cfb392c620a4cb4dcfdf7a9ab152854b78e626fe0752e27cebc8715257a4f7` |
| 3 | `theorem` | [moduleCat_of_toModuleCat](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/modulecat-of-tomodulecat.md) | 33 | `result-track:e50d9f2af78cfe281fb5fa6035d436dd03930cf5f0430ccb7943a6c8378c62b8` |
| 4 | `abbrev` | [of](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/of.md) | 38 | `declaration-track:41f73cc51a444f2a0128d9aab139dda537a3d282a539c1d8402d4d7087c9663f` |
| 5 | `structure` | [Hom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/hom.md) | 46 | `declaration-track:b38144383aeb5a9a510c6cad8532de8826619b8c53d3049b4cc18d583bfeb61c` |
| 6 | `instance` | [category](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/category.md) | 50 | `declaration-track:f9ea5b3ba6e2a5c1935366f269864c921d5be2b39b3c8158dd64fbe8bb2c00cf` |
| 7 | `instance` | [concreteCategory](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/concretecategory.md) | 55 | `declaration-track:149799511c8a208275e0b89a33b55564745707dae6250af300b96f4bb0c78deb` |
| 8 | `abbrev` | [Hom.toIsometry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/hom-toisometry.md) | 61 | `declaration-track:dc53147e31837c5194bafaa8e71df2a261697b033f56bc350cad872eb6d4eb2d` |
| 9 | `abbrev` | [ofHom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/ofhom.md) | 65 | `declaration-track:34398c8605bc1501b09658c0b62fe0b3a7befe86a19fbf811b76a3c9b5c85f02` |
| 10 | `lemma` | [Hom.toIsometry_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/hom-toisometry-injective.md) | 70 | `result-track:1040b98fbfeae3ffedfb28c6c4ff8270440a1b17fea0e4e11ceb86711b732703` |
| 11 | `lemma` | [hom_ext](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/hom-ext.md) | 75 | `result-track:f91567e2692531445113f5f3e79d2c2849b0b877191630330fcc85451c4b5dd8` |
| 12 | `theorem` | [toIsometry_comp](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/toisometry-comp.md) | 79 | `result-track:666988b635f79e175dc4fa7d30e2edac456417a0eeb09ca0dd61e785e76fd5b9` |
| 13 | `theorem` | [toIsometry_id](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/toisometry-id.md) | 83 | `result-track:8b26ee155aebe8a5dbbe6f006a62448b520e9efd0caeda426e58996dfefebf35` |
| 14 | `instance` | [hasForgetToModule](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/hasforgettomodule.md) | 87 | `declaration-track:479d50146fbe6a47c1062197ff47c21964e0e817de7026df4d1820b46aeafe5e` |
| 15 | `theorem` | [forget₂_obj](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/forget-obj.md) | 93 | `result-track:14c192221653863d2030bcadabf02f3491b079937dd1c524bb90d3a13c79ed08` |
| 16 | `theorem` | [forget₂_map](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/forget-map.md) | 98 | `result-track:c787c582e9b9d250c08f571c3bf4370a61ed6301976d534d671187a488a16205` |
| 17 | `def` | [ofIso](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/ofiso.md) | 110 | `declaration-track:d7ae6976e97ddf5cdbe74a0adb08d228be2bee017beb6611840bbe7ad32c5ba7` |
| 18 | `theorem` | [ofIso_refl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/ofiso-refl.md) | 116 | `result-track:b7d2aed620c5596ef8167feb4e3af80ec470bd73f1dd513866ce1a3206a4529d` |
| 19 | `theorem` | [ofIso_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/ofiso-symm.md) | 119 | `result-track:b0f028abadc59804969f388662c04fcc5f5fb9602b82033a6d473074a1e19d15` |
| 20 | `theorem` | [ofIso_trans](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/ofiso-trans.md) | 122 | `result-track:cd7a9bd6f1291c7694d240c74ff1005d7ef2a2fd98a9617034b1a967c6c35753` |
| 21 | `def` | [toIsometryEquiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/toisometryequiv.md) | 137 | `declaration-track:8596d15556cdcfaf6e9cdce8f120464382d90435204e9949486010501fa6761a` |
| 22 | `theorem` | [toIsometryEquiv_refl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/toisometryequiv-refl.md) | 150 | `result-track:9b3eafa44cac0576602d8c9808eb9bce6bab76334228e8a8d0858a5c75435ff1` |
| 23 | `theorem` | [toIsometryEquiv_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/toisometryequiv-symm.md) | 153 | `result-track:c7c44ffd5de2f1f802f7c8e30e496513a840de7a5e1d763eee9d121e6b810c09` |
| 24 | `theorem` | [toIsometryEquiv_trans](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCat.lean/declarations/toisometryequiv-trans.md) | 157 | `result-track:c594f854422be130ecaa3c7fb938e63550a092af22c94901c60b26abbb1219f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df86e4ebb8af477ea2591ef90ed72beed751dee239aac2c64c644cdaf1dfb770 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant74541d8ebd9d172eb485e5e1754b857f5d598764b6fade0516d6ca56647090ad.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant74541d8ebd9d172eb485e5e1754b857f5d598764b6fade0516d6ca56647090ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
