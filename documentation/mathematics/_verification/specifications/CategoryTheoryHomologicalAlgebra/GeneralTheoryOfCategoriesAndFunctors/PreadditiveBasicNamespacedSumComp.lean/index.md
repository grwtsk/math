# Verification target: Preadditive Basic Namespaced Sum Comp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "201629991dd8c871cc91451525be8dca292adc91",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee36b80d75b3ee791e99ed236f407cf906a179d0c8e6efdab42857c7681741a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `201629991dd8c871cc91451525be8dca292adc91`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee36b80d75b3ee791e99ed236f407cf906a179d0c8e6efdab42857c7681741a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee36b80d75b3ee791e99ed236f407cf906a179d0c8e6efdab42857c7681741a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Preadditive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/preadditive.md) | 66 | `declaration-track:15839def35d4cdddbc47ca6928bca97f9920cc34faf819251b47d3edeffde938` |
| 2 | `instance` | [inducedCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/inducedcategory.md) | 104 | `declaration-track:5f9045553cc36e50c86ae5647a06d55e9d4ab47f0ee95b67335da368a3fa4a9a` |
| 3 | `instance` | [fullSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/fullsubcategory.md) | 111 | `declaration-track:e83767a514c3f66d883cda0e2f2039901f704a5f752e46ec470aa15a96baa53d` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/instance-source-edition-8.md) | 116 | `declaration-track:ebdf7f538c6ea905b885a51a044ef24d4c6b4f9e8c8811ed53133de8d0f39b8f` |
| 5 | `def` | [leftComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/leftcomp.md) | 121 | `declaration-track:3e3f746a87844719206c20e2fec814f094b3bba2046b25047d9bb5935325569b` |
| 6 | `def` | [rightComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/rightcomp.md) | 125 | `declaration-track:a753d9b07a623d24246eeff9cad5f2e513a467d8d3e21511d47a85be788c6039` |
| 7 | `def` | [compHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/comphom.md) | 131 | `declaration-track:4632b0f64829cdbd09821721f4920960fc4559254c40979e4620ba4aeb37d99c` |
| 8 | `theorem` | [sub_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/sub-comp.md) | 137 | `result-track:46f3d9873f78bec33b9e11e03a2ab36f2e0e72a76692ef4755606f900df66662` |
| 9 | `theorem` | [comp_sub](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/comp-sub.md) | 142 | `result-track:e941482aabed1f0fe9c8279c9cbb03997ff265b3d699ae63162acb9d88ca2039` |
| 10 | `theorem` | [neg_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/neg-comp.md) | 147 | `result-track:2619a127e55cfb067c77afc984f995fe54aac486d223ac6b969f03bf1b031d51` |
| 11 | `theorem` | [comp_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/comp-neg.md) | 152 | `result-track:52b4f6c5d08d568a7da341ecaf1e9cdc3f1e954941213f37c540d84a4c9c1212` |
| 12 | `theorem` | [neg_comp_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/neg-comp-neg.md) | 156 | `result-track:b16533856824811a911b8e70052136fadbff4ce84897bfa617c11cfdebe38492` |
| 13 | `theorem` | [nsmul_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/nsmul-comp.md) | 158 | `result-track:e7eeebb05669fa56aa80d4faa18a6e8996238af78d20387b085187e31315d63a` |
| 14 | `theorem` | [comp_nsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/comp-nsmul.md) | 161 | `result-track:9c047d72e206ac9dea8da68bc986d84fc65bf9ada7bac83f76b5dfb8afbfa5f5` |
| 15 | `theorem` | [zsmul_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/zsmul-comp.md) | 164 | `result-track:c44ddf73b895c3f4496e81cf00b2aa8c816b527bc0cb502ac19e3932c995edef` |
| 16 | `theorem` | [comp_zsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/comp-zsmul.md) | 167 | `result-track:1d96f507ac89cc476b9186cd1b6e798bfd1b8afd7dbf86564b35e4ba96000a72` |
| 17 | `theorem` | [comp_sum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/comp-sum.md) | 171 | `result-track:bd98273ac6c2ea2881c41fba5237a232be976e686f48d53d771e649a993267ca` |
| 18 | `theorem` | [sum_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/sum-comp.md) | 176 | `result-track:11cccedc990c41ca3e280ddfbfaf6106dba62f81da5f4b13ddcffa9e58b285f1` |
| 19 | `theorem` | [sum_comp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/sum-comp-source-edition-2.md) | 181 | `result-track:c11423d7c593e49561496525ef6d312905743cd60bf1c50c5a6a2e487cff4e52` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/instance-source-edition-4.md) | 186 | `declaration-track:7eb728e98d0dda4aab0f2679a797abb66a6b368e52430355e81aa15306800a60` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/instance-source-edition-5.md) | 189 | `declaration-track:a2e4a8eb9530cf351a99b178bd57400a6a95d5b9e010f528e2e5b2c94a170fd8` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/instance-source-edition-3.md) | 192 | `declaration-track:6daa4da68619a86d20d1b23ecee9850efe0af54e61ce03fc51c7d260d4817a2a` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/instance-source-edition-7.md) | 200 | `declaration-track:e6e09b0bfdb18df009f3ff0765984d8e87b387066feada61253214d3616926a6` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/instance.md) | 209 | `declaration-track:033ddbececfcaeeb923736403fe2dcfca488ae4fd2fa5a1acae51d14fa57a4f0` |
| 25 | `instance` | [moduleEndRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/moduleendright.md) | 214 | `declaration-track:9d029a7a2aed0585c84a5bc2b28185270835da37e04db2d9dc8902752b7f7241` |
| 26 | `theorem` | [mono_of_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/mono-of-cancel-zero.md) | 220 | `result-track:b09b6a28d4948ac3625620d7734a528941da00e258e4ac6ff4571d28d35352b3` |
| 27 | `theorem` | [mono_iff_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/mono-iff-cancel-zero.md) | 225 | `result-track:25bb2716ed9942ef0be64efe703e824e7670fe96700315cb8b320e5e9625c5ba` |
| 28 | `theorem` | [mono_of_kernel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/mono-of-kernel-zero.md) | 229 | `result-track:69253517c7ac751df01f38de23c9ac87e5d833c5bcc8837f250dc7fb2316fb5e` |
| 29 | `lemma` | [mono_of_isZero_kernel'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/mono-of-iszero-kernel-source-edition-2.md) | 233 | `result-track:ac170a3da560a13e21d13b710cf384275edb6a2d5198dd6875872afa236957f7` |
| 30 | `lemma` | [mono_of_isZero_kernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/mono-of-iszero-kernel.md) | 238 | `result-track:925e24bdfc9151f711a75747440606767c110b0159125ebc607efa13b2750dce` |
| 31 | `theorem` | [epi_of_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/epi-of-cancel-zero.md) | 242 | `result-track:858cda998e9927c2a7cdfde692499f3131d6079392a2f26c755c1e45b638f600` |
| 32 | `theorem` | [epi_iff_cancel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/epi-iff-cancel-zero.md) | 247 | `result-track:613c7b2208595355ef41e8f4600e51d0abbfeda8ad4c3b374ad7f027bdd8a4ed` |
| 33 | `theorem` | [epi_of_cokernel_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/epi-of-cokernel-zero.md) | 251 | `result-track:fb7918ce4471455a8567cc4c2871ced4b895cf653099b0cf7a29d9be0e3f0040` |
| 34 | `lemma` | [epi_of_isZero_cokernel'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/epi-of-iszero-cokernel-source-edition-2.md) | 255 | `result-track:b41d8aec7769f7cfa525ace678bc3d3215ebde9ab3e325b4536a862529593391` |
| 35 | `lemma` | [epi_of_isZero_cokernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/epi-of-iszero-cokernel.md) | 260 | `result-track:81de2369b1eeefd0007f1a2fcd69c4e71a1bea360b93ffda5ef5d057021b6617` |
| 36 | `theorem` | [comp_left_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/comp-left-eq-zero.md) | 267 | `result-track:bd445b25bd9c20d2669053a4e29b4eab675401ed0c697bc0f4035083ac3eac32` |
| 37 | `theorem` | [comp_right_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/comp-right-eq-zero.md) | 271 | `result-track:fd9383115dc509612aedeb1413ee44cda35e980880bcca2b90ec0529a8b4cdb1` |
| 38 | `theorem` | [mono_of_kernel_iso_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/mono-of-kernel-iso-zero.md) | 280 | `result-track:6350f9d967a4ff7348db8513121855d13d396cc5a21f3170b84eda5b5c861001` |
| 39 | `theorem` | [epi_of_cokernel_iso_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/epi-of-cokernel-iso-zero.md) | 284 | `result-track:7813ddec219024862c0251be562281e459bba3665c53333b54365631b22239ae` |
| 40 | `def` | [forkOfKernelFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/forkofkernelfork.md) | 300 | `declaration-track:4462bee4a1c083a6923e68524acc81fbac8d29a4e2022d14116f373b91e57013` |
| 41 | `theorem` | [forkOfKernelFork_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/forkofkernelfork-source-edition-2.md) | 304 | `result-track:9a6e8d47428fe963486612d8896c39cad890f33b2af944b99f221a65fe41a38c` |
| 42 | `def` | [kernelForkOfFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/kernelforkoffork-source-edition-2.md) | 308 | `declaration-track:95380cba68d2b231d2031d9ed29eda9b44cb1b24de56d348051829b8962d5248` |
| 43 | `theorem` | [kernelForkOfFork_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/kernelforkoffork.md) | 312 | `result-track:653a798fdd0b41c8a9f4d93accf20b9d3394522c6feea2edac869390faf1e680` |
| 44 | `theorem` | [kernelForkOfFork_ofι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/kernelforkoffork-of.md) | 316 | `result-track:8bebbc96f4a82c1aee380b182690b37244d92af7a0a53e9bbcb66a9eb5ccdd6b` |
| 45 | `def` | [isLimitForkOfKernelFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/islimitforkofkernelfork.md) | 321 | `declaration-track:c81d4ef53703799f756c59d91a4feba335c1dddcd03e86ebf73f06bba8f12b4e` |
| 46 | `theorem` | [isLimitForkOfKernelFork_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/islimitforkofkernelfork-lift.md) | 327 | `result-track:05e5d151987fa8aaaf64af010224a0055f5ad353e52203141e0829bf851cc3ad` |
| 47 | `def` | [isLimitKernelForkOfFork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/islimitkernelforkoffork.md) | 332 | `declaration-track:e50710dbca1e914bb0f97e656df921607c24d494d2769ceac00c89b86bd2263f` |
| 48 | `theorem` | [hasEqualizer_of_hasKernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/hasequalizer-of-haskernel.md) | 339 | `result-track:a8b79513d36851c348f5f1749ace5f035268eb7eed5fa64eb497926f84b94fb2` |
| 49 | `theorem` | [hasKernel_of_hasEqualizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/haskernel-of-hasequalizer.md) | 345 | `result-track:3b0ddc68ac804e08cc4d072c44827dfc5aec73e494ce600b12c6837f2cb1d54a` |
| 50 | `def` | [coforkOfCokernelCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/coforkofcokernelcofork.md) | 354 | `declaration-track:0375fe42a27032e832c2d129683ed608cb1817965b8a53d2ba1e169709b5587e` |
| 51 | `theorem` | [coforkOfCokernelCofork_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/coforkofcokernelcofork-source-edition-2.md) | 358 | `result-track:d9b7561986240ae853768991d236ee1643ff9c443e7204413a22fc5d83b50745` |
| 52 | `def` | [cokernelCoforkOfCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/cokernelcoforkofcofork-source-edition-2.md) | 363 | `declaration-track:450c17db9c9becadaf2d5e861d7d6977870955de043132fd88b2a6c9dfd1807a` |
| 53 | `theorem` | [cokernelCoforkOfCofork_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/cokernelcoforkofcofork.md) | 367 | `result-track:24f0c1734d77fe01bcdedbc88e8678230026ba7fc42665f18bffeec49fc92824` |
| 54 | `theorem` | [cokernelCoforkOfCofork_ofπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/cokernelcoforkofcofork-of.md) | 371 | `result-track:6ceeb2a720f1bae61f7a0366458e378af761809a7240153a82acdbe55ee89539` |
| 55 | `def` | [isColimitCoforkOfCokernelCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/iscolimitcoforkofcokernelcofork.md) | 376 | `declaration-track:79fe2f0e501c1ef1dccd9003669dda06871451d97bd133ad19f6d089fc13af38` |
| 56 | `theorem` | [isColimitCoforkOfCokernelCofork_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/iscolimitcoforkofcokernelcofork-desc.md) | 383 | `result-track:41c509955764847735f3a185d5629f90e73bda993b3438952f0484bdee5aab5b` |
| 57 | `def` | [isColimitCokernelCoforkOfCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/iscolimitcokernelcoforkofcofork.md) | 389 | `declaration-track:196d6a8cff1ba83e261520ef8a0a773a90ff3f64e72f7dc72100a51511a62df1` |
| 58 | `theorem` | [hasCoequalizer_of_hasCokernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/hascoequalizer-of-hascokernel.md) | 398 | `result-track:9904a7108a64c9ac3ff8b941ccca36ddcaacea0aa4cd66ee8af3a02371475daf` |
| 59 | `theorem` | [hasCokernel_of_hasCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/hascokernel-of-hascoequalizer.md) | 404 | `result-track:6b9970187e3894badb80d840e7dbd7806f51bdd846441468a478b9805d8b7a57` |
| 60 | `theorem` | [hasEqualizers_of_hasKernels](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/hasequalizers-of-haskernels.md) | 412 | `result-track:1c71712a3d5968204ae4f049f21f71effcc0573579c8532a5d5d703287773682` |
| 61 | `theorem` | [hasCoequalizers_of_hasCokernels](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/hascoequalizers-of-hascokernels.md) | 416 | `result-track:8f92f2d4a39969058e6efa182a1a4ca1f71cbbe70b3fc42e8b1ade27b9a11f45` |
| 62 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/instance-source-edition-6.md) | 426 | `declaration-track:d9ead7a2fcda22ab0719c672915fe0f1bb1daaa1332716e5dc794ee753a05794` |
| 63 | `lemma` | [smul_iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/smul-iso-hom.md) | 436 | `result-track:297bd901d36f04df968dc10a930b45961e2e8638876c337aefafd3e31d64b784` |
| 64 | `lemma` | [smul_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/smul-iso-inv.md) | 439 | `result-track:b9792a12057d898c48bb76e6b61a35c478d3f2ea4f120e2a7683addcbc93965e` |
| 65 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/instance-source-edition-2.md) | 441 | `declaration-track:4d492c90469ef8ddab9abc2856754a63d713cbf3c31f6612c67de0d0cc31ccd0` |
| 66 | `lemma` | [neg_iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/neg-iso-hom.md) | 447 | `result-track:6175dde2b301ee8c0c20f92177fc2c6bc87fb152ce3e16a6d1ba0fbd4909a30c` |
| 67 | `lemma` | [neg_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveBasicNamespacedSumComp.lean/declarations/neg-iso-inv.md) | 450 | `result-track:4f732038678b8d885e78108dbc70f705926f72f0ec6ad24d5422d9dc41d18774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cacfa4425e9ee92d8878b405e1f7f12ad6151d66a0cbb4e762e51358f3ae2c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee36b80d75b3ee791e99ed236f407cf906a179d0c8e6efdab42857c7681741a5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantee36b80d75b3ee791e99ed236f407cf906a179d0c8e6efdab42857c7681741a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
