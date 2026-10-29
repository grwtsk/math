# Verification target: Preadditive Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe81433c80bf1f31ea63063c485e9ff84ccc76ba",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6056e14d16b6fb052fdbff0e59f45641566fe493cfc05abc7d1c562de9e41bd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe81433c80bf1f31ea63063c485e9ff84ccc76ba`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6056e14d16b6fb052fdbff0e59f45641566fe493cfc05abc7d1c562de9e41bd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6056e14d16b6fb052fdbff0e59f45641566fe493cfc05abc7d1c562de9e41bd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Preadditive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/preadditive.md) | 68 | `declaration-track:6cc2c3c6686bbb96dfee2fa8e7d9ea21afde8ffe8a3c09fdba697af241e877d0` |
| 2 | `instance` | [inducedCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/inducedcategory.md) | 110 | `declaration-track:6bdc5380cfeeac2d8e81b0c3b6e7ad18037aa39d85403b56c05baae3cb675849` |
| 3 | `instance` | [fullSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/fullsubcategory.md) | 118 | `declaration-track:e53e4e848095f7593f1154857847a3e576e2f555c9988fb5de3f6e14634aec62` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/instance.md) | 124 | `declaration-track:2202fac012a1a12781e0dcfd608ea6ffcec681848f11ee1f24e9c666afa92fef` |
| 5 | `def` | [leftComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/leftcomp.md) | 129 | `declaration-track:71d081be91d0ddf94fb7abbe2e9fcacb99e51f64cec95a6992c9f1ef7d3587f0` |
| 6 | `def` | [rightComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/rightcomp.md) | 134 | `declaration-track:2828a9054ddea0a7e009224e846a81aee5eb0483a95a0f5503420aa827700043` |
| 7 | `def` | [compHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/comphom.md) | 141 | `declaration-track:52000f428953a3845d1f4c62f51a188eaf3320639b37890877a63f93c97d0d91` |
| 8 | `theorem` | [sub_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/sub-comp.md) | 148 | `result-track:a5fbcaf8ad262690e1c6a78f4ff443bd26a7b78c38865214207de13febd824b3` |
| 9 | `theorem` | [comp_sub](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/comp-sub.md) | 154 | `result-track:fbdeea77945f888dd3b0d2d7489813f089e5fa10449000603e1d0a477cacb565` |
| 10 | `theorem` | [neg_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/neg-comp.md) | 160 | `result-track:7605b051176f7bf9057aa7e91e7842ca9a9898e7cf024fef4958dcf01a992bb9` |
| 11 | `theorem` | [comp_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/comp-neg.md) | 166 | `result-track:44f74a04ba9fd5d6d65f54fed4966d957c3393d583608983858fee1c8d2e49c0` |
| 12 | `theorem` | [neg_comp_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/neg-comp-neg.md) | 171 | `result-track:e6570a16e6aca582ff6e85c22bfc97cd6cf58f65c7fa685c556bfe6ea42a3b47` |
| 13 | `theorem` | [nsmul_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/nsmul-comp.md) | 174 | `result-track:fb19548944f749f7efecb24c9102b6dcab25f4a4ce3a2cd7ca8713228fbd08af` |
| 14 | `theorem` | [comp_nsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/comp-nsmul.md) | 178 | `result-track:20603ea4ee588c8e95d0ba042482bb8dbb2a6e093e8564833da9b03474b4d2e6` |
| 15 | `theorem` | [zsmul_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/zsmul-comp.md) | 182 | `result-track:818f99559f5f5a713ed47c7e5d360fbde90f33b66aee3ab6336408961578cf7f` |
| 16 | `theorem` | [comp_zsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/comp-zsmul.md) | 186 | `result-track:59b2b76bd71db28f041e961bdb136d03f90aecb0063be9fe73cd2e0a184e0fe2` |
| 17 | `theorem` | [comp_sum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/comp-sum.md) | 191 | `result-track:8528f236edc278d3372ec31453304775f5d47fbc5a88cbfeb20706a109b66bdc` |
| 18 | `theorem` | [sum_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/sum-comp.md) | 197 | `result-track:87e3dfaeec5d3af7b645330fce08996916ba6684408415b9d2f3747b9c06824d` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 202 | `declaration-track:2a15b69b61d04b3b64d278ec87354ace3035f3215173ebdc00baaadfc814d810` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 205 | `declaration-track:96cfca50796b5226725d84abce12dcece3f2a193959985c36a5c6f091e66688d` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 208 | `declaration-track:928bc2fe66b24e6ff5af16b38060ae0e32231b3b47441f0e6ada9f60741ca7dc` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 217 | `declaration-track:bc8f20d9d3383fcccf32efa253ee8378431e12263044f98cc84b68ceaaf35aaa` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 226 | `declaration-track:e9fc9b38d6d4c2dedb72db95d28e0dd66a9fc1360865984d3e8b28998d3dcdb3` |
| 24 | `instance` | [moduleEndRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/moduleendright.md) | 231 | `declaration-track:d358fff2a6bc36e0c36747bcaeab74712a237ea49c9c81862650332215e1fe0e` |
| 25 | `theorem` | [mono_of_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/mono-of-cancel-zero.md) | 238 | `result-track:54d41448aae693c8f63f8675b6e4a0d0d7d086156a02d873cbdc40e44e6057b6` |
| 26 | `theorem` | [mono_iff_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/mono-iff-cancel-zero.md) | 244 | `result-track:b0f87fbeca97defa538fd1f24d9ebfb1c13c0464d4b873af927e8cb2dcb27274` |
| 27 | `theorem` | [mono_of_kernel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/mono-of-kernel-zero.md) | 249 | `result-track:8cc97ba25f2e1dc7f40167fb4543be671c0c21b4f05e7ac2e62fec9f59641e69` |
| 28 | `theorem` | [epi_of_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/epi-of-cancel-zero.md) | 254 | `result-track:c6d71d7847bc2ef3b1696e113cbe9d31ba9633be3e9b076b6d0a251d7c13940e` |
| 29 | `theorem` | [epi_iff_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/epi-iff-cancel-zero.md) | 260 | `result-track:95109c046f5e91697b643c1aa87e120f3268aba1012500d309f72cbbe90348ff` |
| 30 | `theorem` | [epi_of_cokernel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/epi-of-cokernel-zero.md) | 265 | `result-track:856f2ee1eb4a3e940c8cac48cb5c0688d1e38756750eb4ce05cf1a9a2508234f` |
| 31 | `theorem` | [comp_left_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/comp-left-eq-zero.md) | 273 | `result-track:fe14d0d607e66878da61637a9e9765510cb8d032ac6788e09b29ed0d28db51f2` |
| 32 | `theorem` | [comp_right_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/comp-right-eq-zero.md) | 278 | `result-track:4f8076068750d55660e3824973717fedc487526537bb9dff2ba2407dc1336520` |
| 33 | `theorem` | [mono_of_kernel_iso_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/mono-of-kernel-iso-zero.md) | 288 | `result-track:0384b15355a549073fe87a1c8fe801f46ba482f8bfa04246c9f9b22e3b69dde9` |
| 34 | `theorem` | [epi_of_cokernel_iso_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/epi-of-cokernel-iso-zero.md) | 293 | `result-track:e353e3d46fcec8db548ff9cddfef269469ffb9c33d6e78fe0d1d3807c3026e2e` |
| 35 | `def` | [forkOfKernelFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/forkofkernelfork.md) | 310 | `declaration-track:3e5c4c9c251b1e2468a8bdaa51aa1dbbaccb93e896f9f437c48b5ef9e459215d` |
| 36 | `theorem` | [forkOfKernelFork_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/forkofkernelfork-source-edition-2.md) | 315 | `result-track:7672e83efea1fa7be94097199ab0b31547e0937fa7d3c70efa493ae1fe6d92a0` |
| 37 | `def` | [kernelForkOfFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/kernelforkoffork.md) | 320 | `declaration-track:07385750c7fce5cba36d48865e27452e4ad4fe08b936513ea82f91abd85e56ac` |
| 38 | `theorem` | [kernelForkOfFork_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/kernelforkoffork-source-edition-2.md) | 325 | `result-track:3634a249c5055dd079f5d33087fb571e7b14d0eaf5c85f409129a39d1cc9610d` |
| 39 | `theorem` | [kernelForkOfFork_ofι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/kernelforkoffork-of.md) | 330 | `result-track:0f5916a6354f9444391b703c9fcc660ba94871c25715ccaa9994bae7a81660df` |
| 40 | `def` | [isLimitForkOfKernelFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/islimitforkofkernelfork.md) | 336 | `declaration-track:a2d18fa87eddab49a51d8c2decae1d707a58ab4e19bf367378301359388655e7` |
| 41 | `theorem` | [isLimitForkOfKernelFork_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/islimitforkofkernelfork-lift.md) | 343 | `result-track:175f07d0387846a0d890e9ce9b694eaef67057962978256195f9ccaa67cedb0c` |
| 42 | `def` | [isLimitKernelForkOfFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/islimitkernelforkoffork.md) | 349 | `declaration-track:1efbae69a8716b179c0515c41e224575d0643d2297c4506e9c6e44f06fe73f1a` |
| 43 | `theorem` | [hasEqualizer_of_hasKernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/hasequalizer-of-haskernel.md) | 357 | `result-track:299a6f21814efdab8abc17db3f28823cd6428785870ea38a64501ca9e2d15dde` |
| 44 | `theorem` | [hasKernel_of_hasEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/haskernel-of-hasequalizer.md) | 364 | `result-track:b6e5564191f6f822c20f5f9f1b0401feff6f420cfa118f06eb57917b0bfd8257` |
| 45 | `def` | [coforkOfCokernelCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/coforkofcokernelcofork.md) | 374 | `declaration-track:01212aa75e5326f4bee14ab796bc6106bbf5768a18554d2567857c3edeeef52b` |
| 46 | `theorem` | [coforkOfCokernelCofork_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/coforkofcokernelcofork-source-edition-2.md) | 379 | `result-track:d3093d45a7bc2a7e7bf6018bd937b6f75aa810a5435e2c9a8b7172a6a390d5d1` |
| 47 | `def` | [cokernelCoforkOfCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/cokernelcoforkofcofork.md) | 385 | `declaration-track:11c802dc655c510ccc1e720da0cc6f43305bf35f82606b08630cdb476fb3a174` |
| 48 | `theorem` | [cokernelCoforkOfCofork_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/cokernelcoforkofcofork-source-edition-2.md) | 390 | `result-track:b19ec57fd608419543e569f6759b659db586a19d2ab729d911663bee8a696e8d` |
| 49 | `theorem` | [cokernelCoforkOfCofork_ofπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/cokernelcoforkofcofork-of.md) | 395 | `result-track:711c49c1dfd3adbbfa2aa5d51125885e00e68579595fa945486451e1a4832c81` |
| 50 | `def` | [isColimitCoforkOfCokernelCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/iscolimitcoforkofcokernelcofork.md) | 401 | `declaration-track:3b7f5d77c674be96eba1d10ccd1251cf57c55e3324acbe8b0398dfd8c43adcee` |
| 51 | `theorem` | [isColimitCoforkOfCokernelCofork_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/iscolimitcoforkofcokernelcofork-desc.md) | 409 | `result-track:357e5b056724f7fbf38189c5363108421f3361f540ac556b685aaf1fc4b5da41` |
| 52 | `def` | [isColimitCokernelCoforkOfCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/iscolimitcokernelcoforkofcofork.md) | 416 | `declaration-track:7e44e156601ed93416b51f489e2e2b0ecdf12e24b885f1a9b0ca212beb185d77` |
| 53 | `theorem` | [hasCoequalizer_of_hasCokernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/hascoequalizer-of-hascokernel.md) | 426 | `result-track:7cff71beb1427f8bb330f353d73b18877c572254d0255d1afca61fd66ce9997b` |
| 54 | `theorem` | [hasCokernel_of_hasCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/hascokernel-of-hascoequalizer.md) | 433 | `result-track:2caf63b6b0ecafc9d9f4ee135f869edd9b34cde75498a35049a91d3bdef63f58` |
| 55 | `theorem` | [hasEqualizers_of_hasKernels](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/hasequalizers-of-haskernels.md) | 442 | `result-track:70595a30557644f661a17279510c300ad681f4b2f59d7bb0f537e841c38c9e09` |
| 56 | `theorem` | [hasCoequalizers_of_hasCokernels](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespaced.lean/declarations/hascoequalizers-of-hascokernels.md) | 447 | `result-track:11be8d744fe721550141df6de7420914975339cd2a3fb3ac2ded6df99470e9b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43f7203c063ddd65831ffb17b116eb817e7922d2082f68b0365649f0ed4808ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6056e14d16b6fb052fdbff0e59f45641566fe493cfc05abc7d1c562de9e41bd2.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6056e14d16b6fb052fdbff0e59f45641566fe493cfc05abc7d1c562de9e41bd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
