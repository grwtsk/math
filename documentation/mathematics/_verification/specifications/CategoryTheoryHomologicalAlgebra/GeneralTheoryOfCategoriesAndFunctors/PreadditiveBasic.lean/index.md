# Verification target: Preadditive Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31544e809ec627b1334192794611d5e87634db6d",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd712a932bf7fd6fd3b6f2b8748068c289f3b0c8131f3254317db0fce3b7abaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31544e809ec627b1334192794611d5e87634db6d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd712a932bf7fd6fd3b6f2b8748068c289f3b0c8131f3254317db0fce3b7abaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd712a932bf7fd6fd3b6f2b8748068c289f3b0c8131f3254317db0fce3b7abaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Preadditive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/preadditive.md) | 60 | `declaration-track:8cad74f36e25857905f206a9e1cfd8588ae9c7f28befc15f078b663f3912c3ef` |
| 2 | `instance` | [inducedCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/inducedcategory.md) | 102 | `declaration-track:e21436b43f9c1e433ff4cddf15cc327e06319884ff4b3cb48b97edfc89617052` |
| 3 | `instance` | [fullSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/fullsubcategory.md) | 110 | `declaration-track:6e6c537108e5813da69ad1737caa0f14ef7e8701cfb9ae7cde51ad05b80f5d25` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/instance-source-edition-3.md) | 116 | `declaration-track:a84f98e063fbfac14a2e832b6927f39f0853d3271fa419cbc6c3fe4b9a726e98` |
| 5 | `def` | [leftComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/leftcomp.md) | 121 | `declaration-track:22045c57370b9463e76a13b39042fc8e18e1067f9ce9b715222afcb5e5c4aa5c` |
| 6 | `def` | [rightComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/rightcomp.md) | 126 | `declaration-track:e4901b02c3aad7ccf7aaeb6977aea0035d8a9a7f62f93606c839e81d61aa92b2` |
| 7 | `def` | [compHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/comphom.md) | 133 | `declaration-track:58b3fee5b3a8dba072e690abae7944a24dc07186b2a1cbf3ba14850314f3fd7f` |
| 8 | `theorem` | [sub_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/sub-comp.md) | 140 | `result-track:fc1480e34cb603f306a9d6d8a2810ed44a214eac1334dfb4325ff89a195ffca0` |
| 9 | `theorem` | [comp_sub](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/comp-sub.md) | 146 | `result-track:b7db48f7c298d82a6b0d2f73991ed109abd22ec3cb19a31369f43b8aeca55f99` |
| 10 | `theorem` | [neg_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/neg-comp.md) | 152 | `result-track:23094bd5edaae492d5f69a3790a2b5a761dad40d818db35c9f40d806bfe94f10` |
| 11 | `theorem` | [comp_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/comp-neg.md) | 158 | `result-track:e3bb14e5a2dc2f98ff5b0faf88f30ef9f9d7128a3a71c39e6e10e925c95c6c99` |
| 12 | `theorem` | [neg_comp_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/neg-comp-neg.md) | 163 | `result-track:847db3531dd292f04983f4605fd06f72d439a384cbed3e14f3ddc9662a7c8297` |
| 13 | `theorem` | [nsmul_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/nsmul-comp.md) | 166 | `result-track:e9fb93a88019119071a6e36ef99292b8a1f0722b8d5172ee85f642cf7b05076e` |
| 14 | `theorem` | [comp_nsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/comp-nsmul.md) | 170 | `result-track:98889d21db9d8be0c9dba01bd39a13438724f2a132f9aa537561390ed4f7fd80` |
| 15 | `theorem` | [zsmul_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/zsmul-comp.md) | 174 | `result-track:6840ad2045f6b95c85937e9d1513aaafbb4efdbd84d1fc69f2f797bd3ecbac1f` |
| 16 | `theorem` | [comp_zsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/comp-zsmul.md) | 178 | `result-track:e9e0532810cee8d47d5e3ee9a30128a178724c68a7e2375ef6c17226c941f44a` |
| 17 | `theorem` | [comp_sum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/comp-sum.md) | 183 | `result-track:1871d91e135a2f3a6fe70bc9645873d78d1d3868f557e40d172c30b84fe0daed` |
| 18 | `theorem` | [sum_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/sum-comp.md) | 189 | `result-track:9027b1da0ce04511e1ccfd36f8ab35ff63d5de303b0b6ed94719b3af671cecf6` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/instance-source-edition-5.md) | 194 | `declaration-track:ced29cd2f92a69e1236a44229acf2b9c0b68b14f684093b3bd3a30178339cdbf` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/instance-source-edition-4.md) | 197 | `declaration-track:bf149c1ad8758a54a1a07f9d41ce8999bcb4f7f14b8d0f96767b8a2fa25b2372` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/instance.md) | 200 | `declaration-track:1807c7e61bb35fb61b00b0a96b9e1e2aaed96ba52c3f01cfe5742eb844e63732` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/instance-source-edition-2.md) | 209 | `declaration-track:69fac8aaffd21a7d3d6a71da32508d1bc67acca3f8f8218555c1d55c2fe26009` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/instance-source-edition-6.md) | 218 | `declaration-track:eab8b9bfe6b361c1ee9346582d300298d360417ade08107b39d5ee9b28b35c6e` |
| 24 | `instance` | [moduleEndRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/moduleendright.md) | 223 | `declaration-track:078e3b0742e4d4a8476a656a43fecdc194ed4538335a9564f74c3e46ff9981be` |
| 25 | `theorem` | [mono_of_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/mono-of-cancel-zero.md) | 230 | `result-track:b0cf453b1b8e557a433833155d64b87c38e02a50799ceb6ba50ccf88b2354234` |
| 26 | `theorem` | [mono_iff_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/mono-iff-cancel-zero.md) | 236 | `result-track:1cf1e3d60e024300923b15856192c381a4a8e668aedfa418dce1b3e13234798a` |
| 27 | `theorem` | [mono_of_kernel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/mono-of-kernel-zero.md) | 241 | `result-track:44994fb6cfbbb3034fd9035dd3b6a75e60660b23f8bb2d2ba54af202f02ecbb5` |
| 28 | `theorem` | [epi_of_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/epi-of-cancel-zero.md) | 246 | `result-track:9da7815ef128e010bb4f0596e45339b7014108e1a8e96154b2859dd68fbeeb2e` |
| 29 | `theorem` | [epi_iff_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/epi-iff-cancel-zero.md) | 252 | `result-track:e5802d069d904b79ebdcc0ee2e07f2b4a3f6d464ec254b1d078b244f7fb79bc2` |
| 30 | `theorem` | [epi_of_cokernel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/epi-of-cokernel-zero.md) | 257 | `result-track:02ed7fec15b7b9c0a8399cce542311231e022afd3774cbe7ea3319c02766e3de` |
| 31 | `theorem` | [comp_left_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/comp-left-eq-zero.md) | 265 | `result-track:1af7856420cad0b30931c4268c148d46a49547b1fb26c1d7e902efe7eb8eaf0d` |
| 32 | `theorem` | [comp_right_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/comp-right-eq-zero.md) | 270 | `result-track:2eeed284e8d47d0a38a6d8cbff6c9b95cd957700f16ef985c7c47e0fdf47a389` |
| 33 | `theorem` | [mono_of_kernel_iso_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/mono-of-kernel-iso-zero.md) | 280 | `result-track:896557687a1b7c96ad37c3f626ade11bc589f91c7088ccde16536321a3d8521e` |
| 34 | `theorem` | [epi_of_cokernel_iso_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/epi-of-cokernel-iso-zero.md) | 285 | `result-track:0ebd2270eb597af124db78eee5d105986486bedafbf0b8b60e1dcd62e4ceb74e` |
| 35 | `def` | [forkOfKernelFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/forkofkernelfork.md) | 302 | `declaration-track:06f6fb6b8d17f8d851ea41d4670a552c4e68247c32131b2bb562026110414134` |
| 36 | `theorem` | [forkOfKernelFork_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/forkofkernelfork-source-edition-2.md) | 307 | `result-track:e12bb125e5656ab9359f20389025ce2bc707a06061401749f49cf846ef3644f3` |
| 37 | `def` | [kernelForkOfFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/kernelforkoffork-source-edition-2.md) | 312 | `declaration-track:eb107112169f480aa0370efd2e7c958ec090cdd6a1791da7bdc98b79f3514660` |
| 38 | `theorem` | [kernelForkOfFork_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/kernelforkoffork.md) | 317 | `result-track:c7683f565ae857e14fcb126cc154c5c6bc4767de0f35b8867549459ca1f0f8e5` |
| 39 | `theorem` | [kernelForkOfFork_ofι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/kernelforkoffork-of.md) | 322 | `result-track:9a8009f69ca25fad0550ac9e71058616e3ed6320e2d18be38b43b3f481a0db92` |
| 40 | `def` | [isLimitForkOfKernelFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/islimitforkofkernelfork.md) | 328 | `declaration-track:c613aa0d9be42693e5981a52465cae475407b1d49667b66e74f3b15338db3c33` |
| 41 | `theorem` | [isLimitForkOfKernelFork_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/islimitforkofkernelfork-lift.md) | 335 | `result-track:50fc1e1bd27ba6fe0ee81b1cfafe0ae505a160b8693d6109385f518a2d9d2dff` |
| 42 | `def` | [isLimitKernelForkOfFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/islimitkernelforkoffork.md) | 341 | `declaration-track:a43bc4cb89d91fd4c51d881108aed5ec9076154215a7eb39e68c8d08107f22d2` |
| 43 | `theorem` | [hasEqualizer_of_hasKernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/hasequalizer-of-haskernel.md) | 349 | `result-track:ba4ccf0cab3d238836bc756f4c6869df1652757511b123c5a841c6b623dcb57b` |
| 44 | `theorem` | [hasKernel_of_hasEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/haskernel-of-hasequalizer.md) | 356 | `result-track:1a55343e03f35783963f360965de7c0c9e24972403720fa5e2bb6edb1d964610` |
| 45 | `def` | [coforkOfCokernelCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/coforkofcokernelcofork.md) | 366 | `declaration-track:788c5f2df921400282e39bd8aa1b70f244ba87f9e2f3da6163db43396c22fd8c` |
| 46 | `theorem` | [coforkOfCokernelCofork_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/coforkofcokernelcofork-source-edition-2.md) | 371 | `result-track:865eaa7a1a1eaf0efc0abb1bda6006a7cf5cb82f1dae396f055cf0165211d1f0` |
| 47 | `def` | [cokernelCoforkOfCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/cokernelcoforkofcofork-source-edition-2.md) | 377 | `declaration-track:e42e4800a11021335a4b756903e28511ecfd405a2e9cda15ba0e3b848879b739` |
| 48 | `theorem` | [cokernelCoforkOfCofork_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/cokernelcoforkofcofork.md) | 382 | `result-track:98312fa8f4267cfa2f517595536d68c5524edb113e3c5f262a2e0c9938d27c5f` |
| 49 | `theorem` | [cokernelCoforkOfCofork_ofπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/cokernelcoforkofcofork-of.md) | 387 | `result-track:86d940928e7482aa8b659c142534bd056996bedba56e282d74258e6eb1477d9e` |
| 50 | `def` | [isColimitCoforkOfCokernelCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/iscolimitcoforkofcokernelcofork.md) | 393 | `declaration-track:c74a662f370d40a41e92997ce57e7dca182897692bf3881872a76a08331ce3e4` |
| 51 | `theorem` | [isColimitCoforkOfCokernelCofork_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/iscolimitcoforkofcokernelcofork-desc.md) | 401 | `result-track:723e85a1eda0649941dcf600909b29d01cd41348da6448320bbc5122890a7595` |
| 52 | `def` | [isColimitCokernelCoforkOfCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/iscolimitcokernelcoforkofcofork.md) | 408 | `declaration-track:c04f4df0d617e7f9ce60aedaab0d205c84508e0064f9ee73659163a20a71b1fc` |
| 53 | `theorem` | [hasCoequalizer_of_hasCokernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/hascoequalizer-of-hascokernel.md) | 418 | `result-track:4bf302782933096587bef06b6581ee74541126b8a47b48844f4a6c5fc56c123b` |
| 54 | `theorem` | [hasCokernel_of_hasCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/hascokernel-of-hascoequalizer.md) | 425 | `result-track:28b8218909e3af4ffa2ef2f34fdaf2a6be6e02e4dbf0cc0cece6f338163c7dc9` |
| 55 | `theorem` | [hasEqualizers_of_hasKernels](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/hasequalizers-of-haskernels.md) | 434 | `result-track:6b7a9fa7c349ab6f1901e98ce89ff4e7160333d927c7d30eb1c4e994b35c1f2b` |
| 56 | `theorem` | [hasCoequalizers_of_hasCokernels](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasic.lean/declarations/hascoequalizers-of-hascokernels.md) | 439 | `result-track:459150d4061565e9cd2d2a71e8c2c3dba8d5375cc307bc1998a038d79a128307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86d983fb598bf0d759d6dc4116b11eae4b4660903526d57f90a71b9f273532f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd712a932bf7fd6fd3b6f2b8748068c289f3b0c8131f3254317db0fce3b7abaa.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd712a932bf7fd6fd3b6f2b8748068c289f3b0c8131f3254317db0fce3b7abaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
