# Verification target: Independent Affine Independent Of Ne Of Mem Of Mem Of Not Mem Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf0410409315d663e14db63a7511bfa3a3a29773",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf0410409315d663e14db63a7511bfa3a3a29773`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Independent/Variant1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Independent/Variant1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sign` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Combination` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineEquiv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AffineIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent.md) | 53 | `declaration-track:e047764e09364c362a4913a8727d4f70543ce00b3eedb665a5d776ffdee98328` |
| 2 | `theorem` | [affineIndependent_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-def.md) | 59 | `result-track:d486a9616e31694e40b12e8e73d2d0e69d5a270e492125c27b381685463083f3` |
| 3 | `theorem` | [affineIndependent_of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-of-subsingleton.md) | 67 | `result-track:291e4cdb447700be156a28250d6193a6ecaeac22802a06f958b50df8723f75bd` |
| 4 | `theorem` | [affineIndependent_iff_of_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-iff-of-fintype.md) | 74 | `result-track:b85ebf822e5e0d1df492a5c3345cc2d06a471bb82ae4474514da8756c8deaabb` |
| 5 | `theorem` | [affineIndependent_iff_linearIndependent_vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-iff-linearindependent-vsub.md) | 88 | `result-track:1f9a4561db0a78d5c8a3dc865374a9c5b906e64646796d8f602bf762b5b5e511` |
| 6 | `theorem` | [affineIndependent_set_iff_linearIndependent_vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-set-iff-linearindependent-vsub.md) | 141 | `result-track:d44b8bcede76fcb6382232aaea6546c286e56b0744b14e421f92b136784bac2a` |
| 7 | `theorem` | [linearIndependent_set_iff_affineIndependent_vadd_union_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/linearindependent-set-iff-affineindependent-vadd-union-singleton.md) | 166 | `result-track:8f849f4b7e53d3d0cdf67898b9770a1800253ffeb86d3c30d13282ab585c6d6c` |
| 8 | `theorem` | [affineIndependent_iff_indicator_eq_of_affineCombination_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-iff-indicator-eq-of-affinecombination-eq.md) | 181 | `result-track:fe1b0345660a99541671e7a1dad1ccc19b452241eaa997ad44dfbe09a252d8c4` |
| 9 | `theorem` | [affineIndependent_iff_eq_of_fintype_affineCombination_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-iff-eq-of-fintype-affinecombination-eq.md) | 236 | `result-track:44869f088f3f6bb037658da87ab61d009b489ef2c2e5f7a1d92435507eb17067` |
| 10 | `theorem` | [AffineIndependent.units_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-units-linemap.md) | 260 | `result-track:bb8545356aaa99aaca392c0aad99086d2e80d4ac044f43778b84c163d7e94546` |
| 11 | `theorem` | [AffineIndependent.indicator_eq_of_affineCombination_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-indicator-eq-of-affinecombination-eq.md) | 267 | `result-track:bc84d1bf664c75640e9835cec74ddc6ab9512589bab8752c55622c09143b30e2` |
| 12 | `theorem` | [AffineIndependent.injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-injective.md) | 276 | `result-track:b6b489484bbb45d23a13775d994f052ab2681e70651e4352911c04da12b78aa8` |
| 13 | `theorem` | [AffineIndependent.comp_embedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-comp-embedding.md) | 288 | `result-track:ab72ee62ae056585f6b6b7db538494617f47b025e8ffb565ca8085553626a189` |
| 14 | `theorem` | [AffineIndependent.subtype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-subtype.md) | 311 | `result-track:a04bde9f19dc55dbaa637f5741e73caf3b118800b59d7216900258f49924e38c` |
| 15 | `theorem` | [AffineIndependent.range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-range.md) | 318 | `result-track:429a31b5dfd98489b5722090c65e0fbad333228cd21a78656c7c0a3d00d475ba` |
| 16 | `theorem` | [affineIndependent_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-equiv.md) | 328 | `result-track:c580f84fc5655cf5530bd163cce91e0d033a70e3a76a44debf02592c2c81f9a6` |
| 17 | `theorem` | [AffineIndependent.mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-mono.md) | 340 | `result-track:5ab481dfd7fed3121fefd0fa0354119ec44d407cbf9eddb131396b23002e1d1c` |
| 18 | `theorem` | [AffineIndependent.of_set_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-of-set-of-injective.md) | 348 | `result-track:72524998d12065bd40286f26f771f2c79229a1e269e86c1dfe769c35c958c47f` |
| 19 | `theorem` | [AffineIndependent.of_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-of-comp.md) | 362 | `result-track:8189e874a19ecfbaa89b56061eb1bead4d0c84c1d6bbe8ca8f20f1746b6628f2` |
| 20 | `theorem` | [AffineIndependent.map'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-map.md) | 376 | `result-track:d9352194a7be8df7a5804a5800aa66c8c4f62cb503aa008208951e0976de1836` |
| 21 | `theorem` | [AffineMap.affineIndependent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affinemap-affineindependent-iff.md) | 390 | `result-track:cf2e5b5131c003f720925e42d60762ff40a3f579c2dc962c77a9cb9018183e83` |
| 22 | `theorem` | [AffineEquiv.affineIndependent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineequiv-affineindependent-iff.md) | 396 | `result-track:0328fd80e6b03ba6cc7534a66476ad36837beab45c04c4bd81e36c7ea39aa4b1` |
| 23 | `theorem` | [AffineEquiv.affineIndependent_set_of_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineequiv-affineindependent-set-of-eq-iff.md) | 402 | `result-track:381fc55ce28574880a7387d6974a3867f49d02e0d941b372fb7631b6432a1a31` |
| 24 | `theorem` | [AffineIndependent.exists_mem_inter_of_exists_mem_inter_affineSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-exists-mem-inter-of-exists-mem-inter-affinespan.md) | 414 | `result-track:483febc31d21cf41af7dd34e04196b4f17401097b1518b0b9a70a073d5c5c879` |
| 25 | `theorem` | [AffineIndependent.affineSpan_disjoint_of_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-affinespan-disjoint-of-disjoint.md) | 434 | `result-track:0de1cfe9f844f326a9a2ae9d14de3421f948178c400956c9139175f2ff7c14ba` |
| 26 | `theorem` | [AffineIndependent.mem_affineSpan_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-mem-affinespan-iff.md) | 447 | `result-track:304466c612320e7397d4b3844e33387316d6aad7e59eb98ca5a61dd50d288b2c` |
| 27 | `theorem` | [AffineIndependent.not_mem_affineSpan_diff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-not-mem-affinespan-diff.md) | 461 | `result-track:6d3789fe07d5d4d44bc7ce6fafa388b5b24a644d1688ad8573ad2ee34deea81b` |
| 28 | `theorem` | [exists_nontrivial_relation_sum_zero_of_not_affine_ind](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/exists-nontrivial-relation-sum-zero-of-not-affine-ind.md) | 466 | `result-track:8ae59301a36242c6c8dfc3756134ce3aae0ec91f05551aaa5c8104df53e25634` |
| 29 | `theorem` | [affineIndependent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-iff.md) | 487 | `result-track:0d906a21c13edd9bf099927f847a924ec2fe6aacd1428ca07e87ffa98d50cc03` |
| 30 | `theorem` | [weightedVSub_mem_vectorSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/weightedvsub-mem-vectorspan-pair.md) | 496 | `result-track:997d60df0348a591bcf412d00a6dfa0ed83a69b9c2e71f255f7d8cdc4e979ecf` |
| 31 | `theorem` | [affineCombination_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affinecombination-mem-affinespan-pair.md) | 526 | `result-track:dd38b88a3bc6a30618f5e3dd143802cde91ea71abd1c2e8c16962a2524704fb7` |
| 32 | `theorem` | [exists_subset_affineIndependent_affineSpan_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/exists-subset-affineindependent-affinespan-eq-top.md) | 549 | `result-track:d07380872a44dfdf1e50ba973db9976f40d9f19f24be44afc67a45735ea0db38` |
| 33 | `theorem` | [exists_affineIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/exists-affineindependent.md) | 584 | `result-track:8984dbd4d43542c66490e8e80746e3919509d52c8063caf68e51bf42715511b3` |
| 34 | `theorem` | [affineIndependent_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-of-ne.md) | 611 | `result-track:c457cbae197425a7101cc9f5abf3b90782ea42e9f822d9c04be14e674278174f` |
| 35 | `theorem` | [AffineIndependent.affineIndependent_of_not_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-affineindependent-of-not-mem-span.md) | 630 | `result-track:c8cce16845530adca68facba53f5b9a119efa27f9b68e301e3b9ed55a1214380` |
| 36 | `theorem` | [affineIndependent_of_ne_of_mem_of_mem_of_not_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-of-ne-of-mem-of-mem-of-not-mem.md) | 677 | `result-track:ccf38fccbf7259f821635c09ab510b25add535a28527531241fc9e9b9c006f09` |
| 37 | `theorem` | [affineIndependent_of_ne_of_mem_of_not_mem_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-of-ne-of-mem-of-not-mem-of-mem.md) | 695 | `result-track:383dd13321abb7d8db619b2614f3e657623354fe3189c35a35c7116f9fc4225d` |
| 38 | `theorem` | [affineIndependent_of_ne_of_not_mem_of_mem_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/affineindependent-of-ne-of-not-mem-of-mem-of-mem.md) | 706 | `result-track:d5b724ae90b243f933a7c4bca0859833fda1ce8e799e3a8bee37c85794fc4d3e` |
| 39 | `theorem` | [sign_eq_of_affineCombination_mem_affineSpan_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/sign-eq-of-affinecombination-mem-affinespan-pair.md) | 730 | `result-track:504f46665331d8bdf0b2fd8c9036346b8d34265857904a1c87ebef58835e9af9` |
| 40 | `theorem` | [sign_eq_of_affineCombination_mem_affineSpan_single_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/sign-eq-of-affinecombination-mem-affinespan-single-linemap.md) | 747 | `result-track:999f1d3a404dca1be38b363bf22a74f52c62f53cb96ebfd67b4e4c2009999290` |
| 41 | `structure` | [Simplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/simplex.md) | 777 | `declaration-track:08ed993583b4b32a1f3a552c7b4f6b202c175924c832c261f70156d83d6db0d5` |
| 42 | `abbrev` | [Triangle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/triangle.md) | 783 | `declaration-track:bbf7719c643e29e37350bc264de40165c708b74c26c0fd1dfd5249b5848c131f` |
| 43 | `def` | [mkOfPoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/mkofpoint.md) | 792 | `declaration-track:9a166b484a59ff67dcabd061528ce97c3263152043ba427e6ec4b43a5a2dd222` |
| 44 | `theorem` | [mkOfPoint_points](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/mkofpoint-points.md) | 799 | `result-track:5751826087c6aa3f041a2dd1897c8eed7f9d122238b28cc5fd534813f1db04a3` |
| 45 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/instance.md) | 803 | `declaration-track:b07541f8386472f4c91d51299a32bb445b8ab29ad9e89aef89f1c2ce9cf31fe2` |
| 46 | `instance` | [nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/nonempty.md) | 806 | `declaration-track:c5cd064803eac8215d8d91996868ac77f9bcf92610e5e85496f0f6088f6f3c59` |
| 47 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/ext.md) | 814 | `result-track:26330fae19c250b50e4eb1bd9de1d493ceea0d4fe755b1ce18a70beb3d41409a` |
| 48 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/ext-iff.md) | 822 | `result-track:a2e0219b638856c2b53566864f2ef936bdca0724478e201b1e4b41f7963beafb` |
| 49 | `def` | [face](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/face.md) | 828 | `declaration-track:3e1246464338b5fb047dffa587caaddde61d297ed10976dd0d66fb01a2bf6523` |
| 50 | `theorem` | [face_points](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/face-points.md) | 834 | `result-track:b281e4cb33e81a4a1b34dbd3b63fa10a2b14d5816e44e2a6c990385752b8b5d5` |
| 51 | `theorem` | [face_points'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/face-points-source-edition-2.md) | 841 | `result-track:ed3ff4f6c4d4400123aba14cd19ee0b860f21aa659bf7aa4d1c9ac259cbb0d17` |
| 52 | `theorem` | [face_eq_mkOfPoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/face-eq-mkofpoint.md) | 849 | `result-track:4b5f35c64886d47f0be81acbec45dba7549f625f39e55b503632d58ad6b1cbca` |
| 53 | `theorem` | [range_face_points](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/range-face-points.md) | 859 | `result-track:9fa7a3254f69b887530c57b355261c2a5a5d2c20dac0fae69a680246c9c6dccf` |
| 54 | `def` | [reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/reindex.md) | 866 | `declaration-track:370a5018f8e49d67fab0fae78e8497827aa51dc8ac7acafb7f90adebe57e6575` |
| 55 | `theorem` | [reindex_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/reindex-refl.md) | 872 | `result-track:f7ae5544fbcc27fc5ad4b278ec50088627a2b7eb30cbba0ed5a23049bbac1d11` |
| 56 | `theorem` | [reindex_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/reindex-trans.md) | 878 | `result-track:d1639c037c7014ae91d389a3b735983d6c39ec9f2fdbf4bc492b5c3c2e5f2349` |
| 57 | `theorem` | [reindex_reindex_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/reindex-reindex-symm.md) | 886 | `result-track:f5eb2e7688ae1a56f5dece8622db585317419d9ae89049988bccb20e71218c4a` |
| 58 | `theorem` | [reindex_symm_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/reindex-symm-reindex.md) | 892 | `result-track:bb6b88cbf1abb3a865ff47dedabe5a317d264aad7f592f00d060540c5dc6d983` |
| 59 | `theorem` | [reindex_range_points](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/reindex-range-points.md) | 898 | `result-track:45b68ea615ffaf5423f57369a0634593dc20d96e0af4019f6739fbde4bfae259` |
| 60 | `theorem` | [face_centroid_eq_centroid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/face-centroid-eq-centroid.md) | 917 | `result-track:543dd1021b6781306ba761fe8cd994e73b0703dd92f23205d5f1424e76b92a93` |
| 61 | `theorem` | [centroid_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/centroid-eq-iff.md) | 928 | `result-track:3184811feca6024454d9ad1882c0a4f5516d5dfb9c83c17be28dbd920ac55753` |
| 62 | `theorem` | [face_centroid_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/face-centroid-eq-iff.md) | 954 | `result-track:6e7d0cd6c990f6b8e0b33445fa657784f6869125ddf4f160eff1d0aa0370dbc1` |
| 63 | `theorem` | [centroid_eq_of_range_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IndependentAffineIndependentOfNeOfMemOfMemOfNotMemAligned.lean/declarations/centroid-eq-of-range-eq.md) | 963 | `result-track:5a391d6b9bc6dad2991117044df9a5f8ff1d87990914a39303cee813245de962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bbe918d51339903b3518544d6a529317ee6b072e779d381942ddc0393ca42fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Independent/Variant1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Independent/Variant1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
