# Verification target: Fubini Namespaced Diagram Of Cocones

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "939ceb4c1d9088653e2199fab5a7241a98fce3c2",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `939ceb4c1d9088653e2199fab5a7241a98fce3c2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Bifunctor` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiagramOfCones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofcones.md) | 57 | `declaration-track:f6da5e1a634e8b366f64ddb98b8b151304db1f1ffe9fa7b288dc9b6a02c9b763` |
| 2 | `structure` | [DiagramOfCocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofcocones.md) | 68 | `declaration-track:b08e1320555a279042a4e530ec69b7ca4ef538b83e95245c355ee1959a01deae` |
| 3 | `def` | [DiagramOfCones.conePoints](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofcones-conepoints.md) | 83 | `declaration-track:8f9930a78a6fe79d9c575a9f0cd4822c6c749b220bca08f9a1f0fe14577da961` |
| 4 | `def` | [DiagramOfCocones.coconePoints](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofcocones-coconepoints.md) | 93 | `declaration-track:b7a6855992675bb6e222773021af77528c14b558698eb5c4eee554aad93e4766` |
| 5 | `def` | [coneOfConeUncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/coneofconeuncurry.md) | 103 | `declaration-track:04450b8dfd6081c5eb8542b23193511d00e3914823ef2e431fe9995c84db9925` |
| 6 | `def` | [coneOfConeCurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/coneofconecurry.md) | 137 | `declaration-track:59df48a60113fbb850a250053dfaa53850a657a7421014d27e645b0a38561bd6` |
| 7 | `def` | [coconeOfCoconeUncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/coconeofcoconeuncurry.md) | 150 | `declaration-track:5ef2bf278980a9cda71a520d8f5fae0ad8a1f65dcfa2dfaad8aa6f6ea064338d` |
| 8 | `def` | [coconeOfCoconeCurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/coconeofcoconecurry.md) | 184 | `declaration-track:ce661952c2ae133c95db2c0ed0ae0f7c473ba6b71c46b65d944e9ab4b2ca66f3` |
| 9 | `def` | [coneOfConeUncurryIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/coneofconeuncurryislimit.md) | 195 | `declaration-track:e3349f7ee7199c43785b64f29acfd4bcaef60f704fbb0ceb0dd13a042e951769` |
| 10 | `def` | [IsLimit.ofConeOfConeUncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/islimit-ofconeofconeuncurry.md) | 234 | `declaration-track:08f586b72188c81163a5f98e767f186a8a643518ef084f1ace473628d33d5240` |
| 11 | `def` | [coconeOfCoconeUncurryIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/coconeofcoconeuncurryiscolimit.md) | 267 | `declaration-track:55eb2fed50b5fe17ce4cb2bf49d5b162c6012f0e99a3828c9433b07f33fb4229` |
| 12 | `def` | [IsColimit.ofCoconeUncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/iscolimit-ofcoconeuncurry.md) | 305 | `declaration-track:04e57b86c08ee7da3498106aec75c27871fd2f23ede961cd3c164c6d954b5aa4` |
| 13 | `def` | [DiagramOfCones.mkOfHasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofcones-mkofhaslimits.md) | 347 | `declaration-track:023fe7019f08c20933df1ea43f294c6ccc2d9ba6c02ce4b21626ef810806643f` |
| 14 | `instance` | [diagramOfConesInhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofconesinhabited.md) | 352 | `declaration-track:d3291e66d8b85f2833753f1c48899a9a3c41a8670a2505ff3d52561f2c6e33f5` |
| 15 | `theorem` | [DiagramOfCones.mkOfHasLimits_conePoints](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofcones-mkofhaslimits-conepoints.md) | 356 | `result-track:ea914dfee0a4d85f54cce399ac237beb4be95440de88816910f81daf7a2c68b4` |
| 16 | `def` | [coneOfHasLimitCurryCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/coneofhaslimitcurrycomplim.md) | 366 | `declaration-track:91ff273b4845d8f2d8bc68e8561f6481d6882de5571a7c5460dbe6ef36337f35` |
| 17 | `def` | [isLimitConeOfHasLimitCurryCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/islimitconeofhaslimitcurrycomplim.md) | 381 | `declaration-track:fcfd8cef3211631a7bcf46f21db095d7b8b6c14f7e641960a966395a128cf6f5` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/instance.md) | 393 | `declaration-track:78e223c500c521bb4729ad3b7f195519dc27c5bc248a3012191de0daa79de3c9` |
| 19 | `def` | [limitUncurryIsoLimitCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limituncurryisolimitcomplim.md) | 406 | `declaration-track:2edc9d48852ba32681625ea6556e5403bb1403913de0da32477fc417cbaf7c83` |
| 20 | `theorem` | [limitUncurryIsoLimitCompLim_hom_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limituncurryisolimitcomplim-hom.md) | 416 | `result-track:0f74f89e7cdc02b1d684772474c1ac44d5337ab06f65a8fbe7c294622b0001cc` |
| 21 | `theorem` | [limitUncurryIsoLimitCompLim_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limituncurryisolimitcomplim-inv.md) | 422 | `result-track:668d04cbc8facd10c1807dec42cd9e4790940d611db3440a7cc8a503a16f3b4e` |
| 22 | `def` | [DiagramOfCocones.mkOfHasColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofcocones-mkofhascolimits.md) | 440 | `declaration-track:6703faafce82fc0c3012bf080e1cca439fe1d2c1ce55d7a346f061420719f169` |
| 23 | `instance` | [diagramOfCoconesInhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofcoconesinhabited.md) | 445 | `declaration-track:0494a8c23557f1d2b00ca75083764a8279e46d9a638b5cfc51d6c1eebcf37e2d` |
| 24 | `theorem` | [DiagramOfCocones.mkOfHasColimits_coconePoints](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/diagramofcocones-mkofhascolimits-coconepoints.md) | 449 | `result-track:700f13d7127298c7a7febf87686c275289fbc199d5e6e4bdce103f5b9e5a8b63` |
| 25 | `def` | [coconeOfHasColimitCurryCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/coconeofhascolimitcurrycompcolim.md) | 459 | `declaration-track:4c8f3bfdb5310f66edac9396f19ed5b27b2d6d7696ad0fb7f46873c6c33d368c` |
| 26 | `def` | [isColimitCoconeOfHasColimitCurryCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/iscolimitcoconeofhascolimitcurrycompcolim.md) | 475 | `declaration-track:0c11c94407e4e39bd478db0044e21a8e67b58e72750d6ef60d7e3745be091d2f` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/instance-source-edition-2.md) | 488 | `declaration-track:b6bc2961af9efb96e3f16da9a3de07a657868b6c43d193a4c074144128322898` |
| 28 | `def` | [colimitUncurryIsoColimitCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimituncurryisocolimitcompcolim.md) | 501 | `declaration-track:871ff33b5ec48ddca29dc61499582874c34fed8581576cc547871b0787679ce9` |
| 29 | `theorem` | [colimitUncurryIsoColimitCompColim_ι_ι_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimituncurryisocolimitcompcolim-inv.md) | 512 | `result-track:ebef24219dea64725c17d1910f4881299a7e13686c603289e06d362d5714e793` |
| 30 | `theorem` | [colimitUncurryIsoColimitCompColim_ι_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimituncurryisocolimitcompcolim-hom.md) | 520 | `result-track:a24f498050965c802ca6c4797d7eb35b9399bebb5c314d1d91bd15d289761d8d` |
| 31 | `def` | [limitFlipCompLimIsoLimitCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limitflipcomplimisolimitcomplim.md) | 533 | `declaration-track:1450e6cc8afb7f94bc372c6bb986c73f456da8f2eb8ce2e493cf4aa214d8487b` |
| 32 | `theorem` | [limitFlipCompLimIsoLimitCompLim_hom_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limitflipcomplimisolimitcomplim-hom.md) | 541 | `result-track:236cdb77ee36c1c3ceae12af782bef402b40876c39651b742dd16aa9c1a6f35b` |
| 33 | `theorem` | [limitFlipCompLimIsoLimitCompLim_inv_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limitflipcomplimisolimitcomplim-inv.md) | 548 | `result-track:c5ee7b0e9e5ed049d97e5d41c477f30220e5c9569e6b533d1005f1b9c50e7396` |
| 34 | `def` | [colimitFlipCompColimIsoColimitCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimitflipcompcolimisocolimitcompcolim.md) | 560 | `declaration-track:c68cf8cd3c1256e99a602367ac9a13aca0b0708973b5d1a6d27332e725b8efdb` |
| 35 | `theorem` | [colimitFlipCompColimIsoColimitCompColim_ι_ι_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimitflipcompcolimisocolimitcompcolim-hom.md) | 569 | `result-track:aecbf738699684689a2011ea13d7b2908e608af239e833d83e1988dbe7cdbbad` |
| 36 | `theorem` | [colimitFlipCompColimIsoColimitCompColim_ι_ι_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimitflipcompcolimisocolimitcompcolim-inv.md) | 578 | `result-track:9c610c32f9c5b90639bf80ce09c795c3464ac66ce6cfe9c0c981724063f146a1` |
| 37 | `def` | [limitIsoLimitCurryCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limitisolimitcurrycomplim.md) | 596 | `declaration-track:59114c3189cce3c3c19cf7f8fb80aa21bf736e43d4ace270085a27a8d801d5a7` |
| 38 | `theorem` | [limitIsoLimitCurryCompLim_hom_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limitisolimitcurrycomplim-hom.md) | 604 | `result-track:45293f03af2b3fd13073c1a0e7a8a7f718738aeabf5cc8d64f5caa3ed73f3b4a` |
| 39 | `theorem` | [limitIsoLimitCurryCompLim_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limitisolimitcurrycomplim-inv.md) | 609 | `result-track:151b5579ae9b56d2b97f49ebea259596ce2647ee0ce2575930ef9d36506527ac` |
| 40 | `def` | [colimitIsoColimitCurryCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimitisocolimitcurrycompcolim.md) | 625 | `declaration-track:285ded17a4cd4ca0eda3f58428648a94084dc0a618483781ceaf11cd0be73e14` |
| 41 | `theorem` | [colimitIsoColimitCurryCompColim_ι_ι_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimitisocolimitcurrycompcolim-inv.md) | 633 | `result-track:80897e73b10ff2027031b27020724e2e0c3636cb71951d1aac3e3db87583a50f` |
| 42 | `theorem` | [colimitIsoColimitCurryCompColim_ι_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimitisocolimitcurrycompcolim-hom.md) | 639 | `result-track:11df7ecc4cab7d62a73a0f4ed04c5d6c37f409f4ba8ddde33709c88b020cd3d1` |
| 43 | `def` | [limitCurrySwapCompLimIsoLimitCurryCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limitcurryswapcomplimisolimitcurrycomplim.md) | 656 | `declaration-track:e88a30edf3c955b63a6599d0aad2aec361426933eb22572842a23e5cf57a08f0` |
| 44 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_hom_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limitcurryswapcomplimisolimitcurrycomplim-hom.md) | 665 | `result-track:bf8e9f39e592cb45fff2b772cb285d1fe5373a04601d075b386cb1c493a500a5` |
| 45 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/limitcurryswapcomplimisolimitcurrycomplim-inv.md) | 676 | `result-track:7ac74bf1f6247cc1a4b2cac877c6cd0e736dd4b46054cba9d1d8447ab85417a8` |
| 46 | `def` | [colimitCurrySwapCompColimIsoColimitCurryCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimitcurryswapcompcolimisocolimitcurrycompcolim.md) | 692 | `declaration-track:53a7ec4428491feedb0353440319a702f5ab98bf718236d9caa91a7f6ab065f2` |
| 47 | `theorem` | [colimitCurrySwapCompColimIsoColimitCurryCompColim_ι_ι_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimitcurryswapcompcolimisocolimitcurrycompcolim-hom.md) | 701 | `result-track:b40520f36c04cb494a62b1b027ffe24b133308ae1be5c65b879afe77e92c8c17` |
| 48 | `theorem` | [colimitCurrySwapCompColimIsoColimitCurryCompColim_ι_ι_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedDiagramOfCocones.lean/declarations/colimitcurryswapcompcolimisocolimitcurrycompcolim-inv.md) | 710 | `result-track:66a42723fc4c15ff867dfaf23b11f6ac50a195ced30e79d176d84582965aa01c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6bd412c3784d3977f9cd7419eddb3c72e18b464fccef930748edb0da2aca4bd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
