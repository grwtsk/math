# Verification target: Preserves Shapes Kernels Namespaced Preserves Kernel Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f7a690b69da524326df96630e8f28c2bd96257",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f7a690b69da524326df96630e8f28c2bd96257`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/map-condition.md) | 45 | `result-track:d65d4f0b7f815d57768982437e4ad87ddc2a52e6799a71e654b8d06aa50e76dc` |
| 2 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/map-source-edition-4.md) | 50 | `declaration-track:f8608cf3b9a1a1889dee7741557addf27d95c33ce84aadb0c9146d825df037a7` |
| 3 | `lemma` | [map_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/map.md) | 54 | `result-track:21cb1aeb0a77ccd942d970cd1d42184aac07c3719e2175ea2d5580a63b90f1c2` |
| 4 | `def` | [isLimitMapConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/islimitmapconeequiv.md) | 58 | `declaration-track:f1a93e71f01da9c5571327b3fa30c02a72373564ce350d4938df94ee12955c64` |
| 5 | `def` | [mapIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/mapislimit.md) | 66 | `declaration-track:ee97c0c1eed0b94227423218fcc899ae85bd4a80c131e8d4a821808b54e18621` |
| 6 | `def` | [isLimitMapConeForkEquiv'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/islimitmapconeforkequiv.md) | 85 | `declaration-track:4bfcaec8365b99c062b639f9e3ff06b60c0c9ba911f54f850ff9d79b118ac1df` |
| 7 | `def` | [isLimitForkMapOfIsLimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/islimitforkmapofislimit.md) | 97 | `declaration-track:8015d2e98a49bfb71d642eeba2b751d50838826801594994bba3988a0767d69c` |
| 8 | `def` | [isLimitOfHasKernelOfPreservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/islimitofhaskernelofpreserveslimit.md) | 110 | `declaration-track:87cad1eea3ddfa292cfa5943de21e14d2ff6001aec63bdc351c07a2c9d87ea0c` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/instance.md) | 117 | `declaration-track:24d9be118fd0bc185dd4b4462c82e11cbf2ac6f5c0e13f14d968c90780091893` |
| 10 | `lemma` | [PreservesKernel.of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preserveskernel-of-iso-comparison.md) | 125 | `result-track:30178090908716885c129c0711002c291ea4cbb35858a765e2a4a40e153f2dbb` |
| 11 | `def` | [PreservesKernel.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preserveskernel-iso.md) | 136 | `declaration-track:0c19523037e92d10c40ce528b7eb04cfed857efa403beb30e9c3062ac247f09a` |
| 12 | `theorem` | [PreservesKernel.iso_inv_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preserveskernel-iso-inv.md) | 140 | `result-track:28fd0f9a02b97564ebfa4b51f9610cded4cd99a9db22b31d4a0b808fe872a19b` |
| 13 | `theorem` | [PreservesKernel.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preserveskernel-iso-hom.md) | 146 | `result-track:7a5b433b3b8b116587dd70a4217b54f3ee3333a09ceb4baf17b66e2cf65c38d0` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/instance-source-edition-3.md) | 150 | `declaration-track:edba8ccb9bd857be8cb90e3ad1a6a69b4cea8b0276473d27a7f4c4dc4ffcdde2` |
| 15 | `theorem` | [kernel_map_comp_preserves_kernel_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/kernel-map-comp-preserves-kernel-iso-inv.md) | 155 | `result-track:d2f714e3ec672600bd446a582e472d6f44a432e170df701208506ded6d088283` |
| 16 | `lemma` | [map_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/map-condition-source-edition-2.md) | 172 | `result-track:d8e31de35811c259b16840723dec400c6c24b7099b546500d6f4e7732eb3f2b7` |
| 17 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/map-source-edition-2.md) | 177 | `declaration-track:76d3af46b6e0dcf208320b6e6a928600f94d2c9e63ee6ae0cd90696205496d0e` |
| 18 | `lemma` | [map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/map-source-edition-3.md) | 181 | `result-track:a0d39de5620faf342e5a20c0b1780968493bf52632f8e92501f6ec400f9af54d` |
| 19 | `def` | [isColimitMapCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/iscolimitmapcoconeequiv.md) | 185 | `declaration-track:49c2ae6f1699f0a4f4f78ab96fbbc3860d0d1a30d9ed18eee8b5e22ffc2f6953` |
| 20 | `def` | [mapIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/mapiscolimit.md) | 193 | `declaration-track:c2cae53a581599ae1301809b3d2c5ca931e5b897cf1fba7491430c7406c953da` |
| 21 | `def` | [isColimitMapCoconeCoforkEquiv'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/iscolimitmapcoconecoforkequiv.md) | 212 | `declaration-track:179d46a8e36bb311a035d98f8c5ff71fb59cac9b196238a6032cc632c0393c8f` |
| 22 | `def` | [isColimitCoforkMapOfIsColimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/iscolimitcoforkmapofiscolimit.md) | 224 | `declaration-track:2d0417abd54b395db408306f42da41b94c74449bfd09ad880c824967fae36319` |
| 23 | `def` | [isColimitOfHasCokernelOfPreservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/iscolimitofhascokernelofpreservescolimit.md) | 238 | `declaration-track:7fc78200b89092099db5a47973d2ef5f800c699da694f088abfb407551165469` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/instance-source-edition-4.md) | 245 | `declaration-track:fb43f2eece22eae561bcd28d8a17bf7d1a39d061784e6521ffc4489c17fbf580` |
| 25 | `lemma` | [PreservesCokernel.of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preservescokernel-of-iso-comparison.md) | 253 | `result-track:d468efea517873298a3b28bd137144184a2a095d08989eef41b91fd16f27f4be` |
| 26 | `def` | [PreservesCokernel.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preservescokernel-iso.md) | 264 | `declaration-track:b284df2a4cce250c7be251edc52d9440ad37e7c12855b99e07bc86300185d23c` |
| 27 | `theorem` | [PreservesCokernel.π_iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preservescokernel-iso-hom.md) | 269 | `result-track:998e058d7249aebf01e4e4844ebc9c77a93c9c12ef1be4908476d63d90603cb0` |
| 28 | `theorem` | [PreservesCokernel.iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preservescokernel-iso-inv.md) | 274 | `result-track:926f349da36de19cea1059b1aa37337d06d6aaf558188b461f8c59e92e56026b` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/instance-source-edition-2.md) | 278 | `declaration-track:778a0abf13e0a97035d58aa3ef12663464838736da79bb09552e07c7d425db92` |
| 30 | `theorem` | [preserves_cokernel_iso_comp_cokernel_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preserves-cokernel-iso-comp-cokernel-map.md) | 283 | `result-track:f9776105f19493f39af2fb623b764303228f151f69b89f5f5070858f9499afb3` |
| 31 | `instance` | [preservesKernel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preserveskernel-zero-source-edition-2.md) | 297 | `declaration-track:a117ea449a33321453add6e2bd55e68081a7f21375824f38f998cb9d960d6455` |
| 32 | `instance` | [preservesCokernel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preservescokernel-zero-source-edition-2.md) | 305 | `declaration-track:dad44d6ad053e1450939fdcefa68952d882574430595b026756995a2b60f9c22` |
| 33 | `lemma` | [preservesKernel_zero'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preserveskernel-zero.md) | 316 | `result-track:3a49257df1ea552d9b6f67d9f994e447ace3505b64315ac46b42c17255186d3f` |
| 34 | `lemma` | [preservesCokernel_zero'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesKernelsNamespacedPreservesKernelZero.lean/declarations/preservescokernel-zero.md) | 322 | `result-track:d607b39d7565a9a1e0aa574de6589381163b342fe5231f9a536c63aefecbbf87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d3dea05a2ca3fd2a3284b4f360fe453d23c6474a39dc9953cae5e0de9b197ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant88ad562fc2c546a5e761561a8c5f70e63292fee67aac85c7c5c21432f400017a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
