# Verification target: Dimension Constructions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2616590f7387c5ef7ded451ecd988c1ac27c61a3",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2616590f7387c5ef7ded451ecd988c1ac27c61a3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Free` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basis` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearIndependent.sumElim_of_quotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/linearindependent-sumelim-of-quotient.md) | 55 | `result-track:b058694b951ada1fabef29207596ee7fe71cb1fb7013921ed8496f3ef26e0fe9` |
| 2 | `theorem` | [LinearIndepOn.union_of_quotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/linearindepon-union-of-quotient.md) | 69 | `result-track:85eab5a846630fe5ff177b824cb21d0e8bd35eacc38587992c01b945edcde8d1` |
| 3 | `theorem` | [LinearIndepOn.union_id_of_quotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/linearindepon-union-id-of-quotient.md) | 76 | `result-track:1e881e8510dbd6d5ed58481053010cea4ecaaab21e428cc42e7225d3398e56a7` |
| 4 | `theorem` | [linearIndepOn_union_iff_quotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/linearindepon-union-iff-quotient.md) | 86 | `result-track:e2bd734ccdac819cb74c13b75cd1d862745345e1626bd99d0683a6dde64ed524` |
| 5 | `theorem` | [LinearIndepOn.quotient_iff_union](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/linearindepon-quotient-iff-union.md) | 94 | `result-track:ae77b067f048da78c2c9384d0f54fb366ef2e401542cb9eeb83a444167feed65` |
| 6 | `theorem` | [rank_quotient_add_rank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-quotient-add-rank-le.md) | 99 | `result-track:aa1ee95bf86a0b5db4c4e76defcfab6df93b500734206e0c15140c70add1e1bb` |
| 7 | `theorem` | [rank_quotient_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-quotient-le.md) | 108 | `result-track:9a387adde583eba9fb49b45e9f3b17b3afe5496e2b136d1456be110b24653864` |
| 8 | `theorem` | [Submodule.finrank_quotient_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/submodule-finrank-quotient-le.md) | 112 | `result-track:e8df9c59b06a24b60f35acfc7c9fd512dc8da239bdeb1779bce18a9ccfaa979b` |
| 9 | `theorem` | [rank_ulift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-ulift.md) | 125 | `result-track:165ee116ee5ac8eadf78ad1e776528bbd796b192ab12d3ceb99bad8e4ecc1770` |
| 10 | `theorem` | [finrank_ulift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-ulift.md) | 129 | `result-track:4bdf0b7f993beb48490c7ef9d433699e285918decc09121d5e62d14b42d49234` |
| 11 | `theorem` | [rank_add_rank_le_rank_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-add-rank-le-rank-prod.md) | 139 | `result-track:f65db7b77bbc16768a52ba988fe4e5183449c06ed056fdf96a8f65717bb9fcda` |
| 12 | `theorem` | [lift_rank_add_lift_rank_le_rank_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/lift-rank-add-lift-rank-le-rank-prod.md) | 146 | `result-track:2bea2daa102bebe8293cd6c6d98de69c718d60274d7f454db0038f6dd6dc8a4d` |
| 13 | `theorem` | [rank_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-prod-source-edition-2.md) | 160 | `result-track:35c28fb66c0ef6a16eac915d5ba445db151ee54746a2ad785e5c0835a204ef79` |
| 14 | `theorem` | [rank_prod'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-prod.md) | 167 | `result-track:18938a2fbad6d9a5855ce70cd76afb8b2a949e1e910eccf8b8291b2889f61659` |
| 15 | `theorem` | [Module.finrank_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/module-finrank-prod.md) | 171 | `result-track:9c3f1ef2408eb5af9f8ff6e36f67f5eedf0ab2e8ecb79c072b7ca69bc7301ec6` |
| 16 | `theorem` | [rank_finsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-finsupp.md) | 185 | `result-track:0e181504d9c8feb69c9c701239944aea55937989bca722561fa873535fd0336f` |
| 17 | `theorem` | [rank_finsupp'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-finsupp-source-edition-2.md) | 191 | `result-track:57b28797b9ecd29d9902f20da5caab4c1a9070f8bb9f656cdd847856d178aef6` |
| 18 | `theorem` | [rank_finsupp_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-finsupp-self-source-edition-2.md) | 195 | `result-track:a06f6b5c9353a7a9226297580e5bd4c412a5e97ff0b80228f80daf7d5660c3bd` |
| 19 | `theorem` | [rank_finsupp_self'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-finsupp-self.md) | 199 | `result-track:84b90960bd2f5f3bc4a45f4e88ce8dccf903fd5e47d5b0facd6d10af1a714efc` |
| 20 | `theorem` | [rank_directSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-directsum.md) | 203 | `result-track:bd6b679dc99ad2d6ea49e06a8c87f5c84dce1a6e7959362285954c9eccd074cf` |
| 21 | `theorem` | [rank_matrix_module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-matrix-module-source-edition-2.md) | 213 | `result-track:f7b59c06687480e537387c6f003be34ba1a05c4686f408b26f59ec6fd4489292` |
| 22 | `theorem` | [rank_matrix_module'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-matrix-module.md) | 226 | `result-track:26f01707fffad7b547bb9509a3a32f43ad35afa0ce2e75387c7ce596ea0698e9` |
| 23 | `theorem` | [rank_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-matrix.md) | 232 | `result-track:26c3dc2758d4c085fef2104da503aa6a86ec64dcad926da83151ed0424bddc2c` |
| 24 | `theorem` | [rank_matrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-matrix-source-edition-2.md) | 240 | `result-track:31cbfeff1738def57c5903371d26589ab7d6368c06fec97c5fe2900c4d2991aa` |
| 25 | `theorem` | [rank_matrix''](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-matrix-source-edition-3.md) | 246 | `result-track:802ab1dd385223407576a06d35ad83f927bb301ff613fc9485a4381caad36173` |
| 26 | `theorem` | [finrank_finsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-finsupp.md) | 254 | `result-track:b8e77b78709394d881638d7d717ead30d58faaa586be859b3d4136c63e2cb170` |
| 27 | `theorem` | [finrank_finsupp_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-finsupp-self.md) | 259 | `result-track:b5256c13f7520bacfcdd648bab011c42b2f185c4318609e33c7c162667b7da55` |
| 28 | `theorem` | [finrank_directSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-directsum.md) | 264 | `result-track:807667d1c0c9bde4aeaed18688800682a2d450c3d5644c626d36d4bb8b4b364f` |
| 29 | `theorem` | [finrank_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-matrix.md) | 273 | `result-track:68676a5426cdab5dfac70ead43108cfd46e82307992460a4f79eb254b89bed02` |
| 30 | `theorem` | [rank_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-pi.md) | 292 | `result-track:6cebd6360bae1599d5ec970269aa2b791a859d98fb197961e89ce74a941c4bb1` |
| 31 | `theorem` | [Module.finrank_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/module-finrank-pi.md) | 302 | `result-track:73e3beb16ecc1285d8ba5cea2febf274e2ddeb89b2269062481664571adaf8c7` |
| 32 | `theorem` | [Module.finrank_pi_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/module-finrank-pi-fintype.md) | 308 | `result-track:31b7c49c53d3599f97f07bb5d7000ae4c2d0a190f4e88ff88ac20fc9a23f48c0` |
| 33 | `theorem` | [rank_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-fun.md) | 319 | `result-track:221c23dde8e7d399ef1bc1c881e3c62c76a87c5edb38e5ac02da73b23de9c1b3` |
| 34 | `theorem` | [rank_fun_eq_lift_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-fun-eq-lift-mul.md) | 323 | `result-track:bee19736e457533aa38e96152bd3d7e5220236a87dd0ba8db7aa166624be7d87` |
| 35 | `theorem` | [rank_fun'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-fun-source-edition-2.md) | 327 | `result-track:3199fba60adac93fbc78d2d18dcb0a5c1df0ced65f8fe55bb8a64e037b061317` |
| 36 | `theorem` | [rank_fin_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-fin-fun.md) | 330 | `result-track:f98556fdd0d72a0b9d3fd6a2d59885a62e510712467db7fe2cb50c68b9164b48` |
| 37 | `theorem` | [Module.finrank_fintype_fun_eq_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/module-finrank-fintype-fun-eq-card.md) | 336 | `result-track:feb4f7599f7c944164604c950bf519e0ca5a4c6dcba06016badecb987701c00a` |
| 38 | `theorem` | [Module.finrank_fin_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/module-finrank-fin-fun.md) | 340 | `result-track:e0b4a6de77c20a00f2a2fc8ae6f22e0279640f034f435011f44ded3082aee200` |
| 39 | `def` | [finDimVectorspaceEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/findimvectorspaceequiv.md) | 346 | `declaration-track:697a3e848a8a82ed24898bc7e84b8bbb4e067a2f07aa5fd9e750ff2c903e31ca` |
| 40 | `theorem` | [rank_tensorProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-tensorproduct.md) | 370 | `result-track:2d7260e82bfb17561ac5010ce40db9a919bba58227eafc22ac6a1a62b7139851` |
| 41 | `theorem` | [rank_tensorProduct'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-tensorproduct-source-edition-2.md) | 379 | `result-track:cea18fe0552780fccd9babcc6bb420f3c6a96520cc6fa73405c8a0a15ca5a6ce` |
| 42 | `theorem` | [Module.rank_baseChange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/module-rank-basechange.md) | 382 | `result-track:c287ef7393d30698805b9f10a9ccfae07e215e67e8c34ba6cf0243e40f36fe93` |
| 43 | `theorem` | [Module.finrank_tensorProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/module-finrank-tensorproduct.md) | 387 | `result-track:f618ce186bf6a0c75c9c64280cdc71cc5933f264bd2ab87df97edec4e15fd445` |
| 44 | `theorem` | [Module.finrank_baseChange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/module-finrank-basechange.md) | 390 | `result-track:52c68fccf027e5fcf6a5d4091a952356ed2777b49b967e3df44f6849e8774fed` |
| 45 | `theorem` | [lt_of_le_of_finrank_lt_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/lt-of-le-of-finrank-lt-finrank.md) | 402 | `result-track:0adcb5c1c23009fa4784a997e994e2d53c5c079b9adb1d617feefd1e205bff2d` |
| 46 | `theorem` | [lt_top_of_finrank_lt_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/lt-top-of-finrank-lt-finrank.md) | 406 | `result-track:864cfacb2ec84ddd0b22794c4773081e8f93515a7418744c461e2638a5bcf66b` |
| 47 | `theorem` | [Submodule.finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/submodule-finrank-le.md) | 416 | `result-track:7ad235328b332519c4a6fefde8b91de8c790d604a39d6972745d35e3557349e7` |
| 48 | `theorem` | [Submodule.finrank_map_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/submodule-finrank-map-le.md) | 421 | `result-track:377d62183e65fa7c5bca4365b8a43c36d8295ebf407b45508a202d91e9ca812c` |
| 49 | `theorem` | [Submodule.finrank_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/submodule-finrank-mono.md) | 426 | `result-track:4a28a123e41ed7f5453446fab5b70a67dc867733505345f2d230942284687a5b` |
| 50 | `theorem` | [rank_span_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-span-le.md) | 438 | `result-track:fd18ebca7565337cc32cd8f14d983f41fb80c7f84a40b724243b62113bfb8385` |
| 51 | `theorem` | [rank_span_finset_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-span-finset-le.md) | 444 | `result-track:23562cef92a21e8f99dca49eb33b42bafe53f8bbdf39123ef1e8de60ad876ee3` |
| 52 | `theorem` | [rank_span_of_finset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/rank-span-of-finset.md) | 447 | `result-track:98c11a3a0ed6ee4e5ecda3de5585d2e50c58edb49b13dd007b4ba0befad03464` |
| 53 | `def` | [Set.finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/set-finrank.md) | 454 | `declaration-track:8d968ffe3793dea332fc3017bb47feb4a371c6416657e2041ae65e2cd41b7d41` |
| 54 | `theorem` | [finrank_span_le_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-span-le-card.md) | 457 | `result-track:6e707026406cc696e3f43d49dbbca0436fd91cbdfe0358594ca324abb6e9cd67` |
| 55 | `theorem` | [finrank_span_finset_le_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-span-finset-le-card.md) | 460 | `result-track:4229db151d9b22f237d297ed8a3828fa67df5dc963b77734571cabb68951215d` |
| 56 | `theorem` | [finrank_range_le_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-range-le-card.md) | 465 | `result-track:46237f520a74951221a8ff0b202c600f95928e27e5260f5e8c49e8268967560c` |
| 57 | `theorem` | [finrank_span_eq_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-span-eq-card.md) | 472 | `result-track:f7d9eb26eb3b51fbebcaa4fe5055641bbc60bdd1a72fbd448335febb2627b900` |
| 58 | `theorem` | [finrank_span_set_eq_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-span-set-eq-card.md) | 481 | `result-track:d1ac22c88b06e4e6b241fe2583c0f1dbeaaf1000388ef66a0af8489eb7c9c2cc` |
| 59 | `theorem` | [finrank_span_finset_eq_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-span-finset-eq-card.md) | 488 | `result-track:c9691b70c880d7df0ea7aab69bbde836cbb0cf1141ab1a76e0aefae0a7df7cea` |
| 60 | `theorem` | [span_lt_of_subset_of_card_lt_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/span-lt-of-subset-of-card-lt-finrank.md) | 494 | `result-track:771e27479e591607327ff02379977179ec943b8236675ac4bf19ffd222b503f3` |
| 61 | `theorem` | [span_lt_top_of_card_lt_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/span-lt-top-of-card-lt-finrank.md) | 499 | `result-track:96e950b4df999c24b078efb2d3b16948843295738328fdfaa6eda44394d42eff` |
| 62 | `lemma` | [finrank_le_of_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/finrank-le-of-span-eq-top.md) | 503 | `result-track:5e96929a9e5b7924dcb734354d8bf6498e86ee77f3834f0c82436a11f1bd1be8` |
| 63 | `theorem` | [Subalgebra.rank_toSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/subalgebra-rank-tosubmodule.md) | 520 | `result-track:20f6df000af9b56cc1d3cd8eebe805702eef31a6ef67d5cd209efb410da6d3ca` |
| 64 | `theorem` | [Subalgebra.finrank_toSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/subalgebra-finrank-tosubmodule.md) | 525 | `result-track:67708b647c1a6066f8c5188988bb7161d0a32039eeb2b64152a7a1cd804ddefb` |
| 65 | `theorem` | [subalgebra_top_rank_eq_submodule_top_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/subalgebra-top-rank-eq-submodule-top-rank.md) | 529 | `result-track:be8bd1de835233596fc3b853f279055aad0d621c0068ad8b40043aa2fa48afc9` |
| 66 | `theorem` | [subalgebra_top_finrank_eq_submodule_top_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/subalgebra-top-finrank-eq-submodule-top-finrank.md) | 534 | `result-track:11b661203114adf65416d51c3073d9e2cef18c32cab1517080278924e9c9707b` |
| 67 | `theorem` | [Subalgebra.rank_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/subalgebra-rank-top.md) | 539 | `result-track:25f349b13454b4e268e2f9d372ed042658ffcfceeecfd549df397fd4eebc6242` |
| 68 | `theorem` | [Subalgebra.rank_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/subalgebra-rank-bot.md) | 551 | `result-track:2971ce4e4cfa871598581494834b1c658f470f13ff57f45f16f445bddf86f557` |
| 69 | `theorem` | [Subalgebra.finrank_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructionsNamespaced.lean/declarations/subalgebra-finrank-bot.md) | 558 | `result-track:c5e26790e0ba990f4066ea792b48c12734697277620935a2facf9168413b976c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a0e82b882ea4b3d19e70a80d9e9436551a6273120ab5a30bfc01f35940a5ed7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
