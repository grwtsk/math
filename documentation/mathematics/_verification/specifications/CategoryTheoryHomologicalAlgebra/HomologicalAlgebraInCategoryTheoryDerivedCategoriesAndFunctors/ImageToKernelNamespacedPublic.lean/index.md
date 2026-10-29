# Verification target: Image To Kernel Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffb728d6d978f553cec0601426fd0845726d31e1",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantc5d9d05539d671108131da0bac43c858a1439b5394767cce5cfb2d87b1097c2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffb728d6d978f553cec0601426fd0845726d31e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantc5d9d05539d671108131da0bac43c858a1439b5394767cce5cfb2d87b1097c2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantc5d9d05539d671108131da0bac43c858a1439b5394767cce5cfb2d87b1097c2c.lean.json)

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
| 1 | `theorem` | [image_le_kernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/image-le-kernel.md) | 44 | `result-track:07772a715c302668797584de7039f3e889ffcba7398d3e12b8ae46f6d2489712` |
| 2 | `def` | [imageToKernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel.md) | 49 | `declaration-track:187dc58c7b4af351401ba8e7968e15345815e66ccc2a28f2b1a41a17963a73fe` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/instance.md) | 52 | `declaration-track:c343cdd870e3fe699bc6ab53e83ce62d6064cc5c7df0a102beb9a0b6344e56f9` |
| 4 | `theorem` | [subobject_ofLE_as_imageToKernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/subobject-ofle-as-imagetokernel.md) | 58 | `result-track:3d8f3288c255624b35b8183484a5f005b1a4124944d96246d6dfb05b0f83201f` |
| 5 | `theorem` | [imageToKernel_arrow](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-arrow.md) | 63 | `result-track:77e84fe3cd167108a7b1dc88649f71c8c66492cfac97e14d36d1c57671757924` |
| 6 | `theorem` | [factorThruImageSubobject_comp_imageToKernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/factorthruimagesubobject-comp-imagetokernel.md) | 69 | `result-track:edd4af4540a65cdc5740a4f255d6c2a0d1636ef139aa95bbbb41fa0097362524` |
| 7 | `theorem` | [imageToKernel_zero_left](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-zero-left.md) | 81 | `result-track:3ae48eb18db4466f7f4da5e1de6f82ebc4be1dd852b59a9a4d3e406e945032a1` |
| 8 | `theorem` | [imageToKernel_zero_right](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-zero-right.md) | 86 | `result-track:5c6b6d554b4a70f2837e4483b027496c1aadd47de5547852958a92f5bc198e55` |
| 9 | `theorem` | [imageToKernel_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-comp-right.md) | 95 | `result-track:cc2eecb09fdc48934248024f8d2f0372b58f89449cb35b64cc0bfca8a00cdfe9` |
| 10 | `theorem` | [imageToKernel_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-comp-left.md) | 101 | `result-track:2db04d37352001388ccac6704c84b8c636e148fb2cf82394ddc2e9827a2aa659` |
| 11 | `theorem` | [imageToKernel_comp_mono](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-comp-mono.md) | 108 | `result-track:2be17a4a968c588051fa3df174e05fde45e72f050b081e8745d39dbe2e3647bf` |
| 12 | `theorem` | [imageToKernel_epi_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-epi-comp.md) | 116 | `result-track:37e355691c216b7c396ea60e711e40a09b2138c801327c4d11a3e638da728e8b` |
| 13 | `theorem` | [imageToKernel_comp_hom_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-comp-hom-inv-comp.md) | 126 | `result-track:e76762a06880933833ea4580496a30df704ea39cf2626fcd9e65b0adec43b394` |
| 14 | `instance` | [imageToKernel_epi_of_zero_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-epi-of-zero-of-mono.md) | 136 | `declaration-track:d8e6689c9c3c94c37624f8db7f1beff5563e516c5b306c36a38a675880ac9914` |
| 15 | `instance` | [imageToKernel_epi_of_epi_of_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-epi-of-epi-of-zero.md) | 143 | `declaration-track:a816a31b9d391f7ac38f1a730839fd617c444c1a7e0c3c6d8d47d6d85d08bce1` |
| 16 | `def` | [imageToKernel'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-source-edition-2.md) | 168 | `declaration-track:2b604418d76620272099af63564c01113c738036f9b1a9c8b7d23b40a0a2943b` |
| 17 | `theorem` | [imageSubobjectIso_imageToKernel'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagesubobjectiso-imagetokernel.md) | 174 | `result-track:3817ef64169dee0502f1b188be4eb62e181f803b2adb042addd65947ee7b25bd` |
| 18 | `theorem` | [imageToKernel'_kernelSubobjectIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedPublic.lean/declarations/imagetokernel-kernelsubobjectiso.md) | 181 | `result-track:eef2b77960a5987a8f3ca525728b5e421673ceec609b15a8a1c3e15bfc8ecc78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52555e12746a17383e163a9d1500aa0f55c212d729d25c95d7aaf4e707133eb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantc5d9d05539d671108131da0bac43c858a1439b5394767cce5cfb2d87b1097c2c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantc5d9d05539d671108131da0bac43c858a1439b5394767cce5cfb2d87b1097c2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
