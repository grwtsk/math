# Verification target: Type Namespaced Cycle Type

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0044cc4dfb35333e8503f3a9912f0aeebf5bc7aa",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Type/Variant53da8484eb9a6767cb40cb8af7c6b7d620597dc47a2ce0ab5a2f1c5c2315a7fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0044cc4dfb35333e8503f3a9912f0aeebf5bc7aa`.

Source path: `GRWTSK/Algebra/GroupTheory/Type/Variant53da8484eb9a6767cb40cb8af7c6b7d620597dc47a2ce0ab5a2f1c5c2315a7fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Type/Variant53da8484eb9a6767cb40cb8af7c6b7d620597dc47a2ce0ab5a2f1c5c2315a7fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Multiset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Partition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Rotate` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Closure` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Factors` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.GCD` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype.md) | 57 | `declaration-track:40d09c77b7ef35bb1e9c82997054b9c6d1c5dd26df48b9a416a8135ca37ff0a3` |
| 2 | `theorem` | [cycleType_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-def.md) | 60 | `result-track:7581d190a8df10b085a1739dbcadccd61f92d5a1b7710857ab29550f69451f78` |
| 3 | `theorem` | [cycleType_eq'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-eq-source-edition-2.md) | 64 | `result-track:d63f101440e08502b8b8eabb996a7974c58677da4378037ffe2f89513cd79748` |
| 4 | `theorem` | [cycleType_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-eq.md) | 73 | `result-track:a9f876a653323f7ece93ce0de993989d09a854e7686b36071a37ceed95b516cf` |
| 5 | `theorem` | [CycleType.count_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-count-def.md) | 83 | `result-track:eec24f3868ada910b5f28433831ef3d18b8bae171183249b9f0f703acbc98a3b` |
| 6 | `theorem` | [cycleType_eq_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-eq-zero.md) | 99 | `result-track:3a018eb2d179a1ff11ff92c0da0dbde968922ae93c275568822075399533963b` |
| 7 | `theorem` | [cycleType_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-one.md) | 103 | `result-track:734c0175dfd6c27b6aa3a2b2643189f189149b2bd189091ee7603a946ad293fe` |
| 8 | `theorem` | [card_cycleType_eq_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/card-cycletype-eq-zero.md) | 105 | `result-track:9badcbb64cdcca04bab19148e1d315de535016d54af0c412c4ecf357af3a3ba3` |
| 9 | `theorem` | [card_cycleType_pos](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/card-cycletype-pos.md) | 108 | `result-track:a18a35d82b7117d33da46ca17fc5f0971aaae6ac5d66c77add6d3613c6cd830d` |
| 10 | `theorem` | [two_le_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/two-le-of-mem-cycletype.md) | 111 | `result-track:47be4606fe342e4517c38c948aa0c26529fe773aec99cc5084311f89bf156d6b` |
| 11 | `theorem` | [one_lt_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/one-lt-of-mem-cycletype.md) | 117 | `result-track:030d1204c6550da547257b0d55af29a99a33e4269f626b4e7b524f1dfe3f38e2` |
| 12 | `theorem` | [IsCycle.cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/iscycle-cycletype.md) | 120 | `result-track:bd0fa37d36400e15ab0166803e10bc213413616f8b4ae7ee9f170b9647db3240` |
| 13 | `theorem` | [card_cycleType_eq_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/card-cycletype-eq-one.md) | 124 | `result-track:d06385521f60c4f7c3b878262d0706ba3c2ddeaf218be83a6bb184537ee2bc79` |
| 14 | `theorem` | [Disjoint.cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/disjoint-cycletype.md) | 135 | `result-track:2a0217d193a212e3b406a01b0d50e0ad63546db81b8116f6f14b34ae8edd5baf` |
| 15 | `theorem` | [cycleType_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-inv.md) | 142 | `result-track:ef37241995e5f4299e33cbbc9376006199846994dffe92f143b56de6918c4c84` |
| 16 | `theorem` | [cycleType_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-conj.md) | 150 | `result-track:9877e1b9125ce2f8760ad86e7657416948c2d6d7ffad75d64ae4d00c9d92717c` |
| 17 | `theorem` | [sum_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/sum-cycletype.md) | 157 | `result-track:0e4f503493688e3855eaa9f5b32af4c797d463e535199ee5a0071f5e37dd55e0` |
| 18 | `theorem` | [card_fixedPoints](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/card-fixedpoints.md) | 163 | `result-track:adbbc65b7861a157b90256a2497fa3ced894eeb3ba951903364c58c27ffb4b9e` |
| 19 | `theorem` | [sign_of_cycleType'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/sign-of-cycletype-source-edition-2.md) | 168 | `result-track:3203abd28420bbd17c1281abea864e258f2cb137093ff9e81df85a94e65b7376` |
| 20 | `theorem` | [sign_of_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/sign-of-cycletype.md) | 175 | `result-track:2a626b474bfb3228fb75e9155232b35ba6f73a6ea5a4f58d09d3264e9f74c4c7` |
| 21 | `theorem` | [lcm_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/lcm-cycletype.md) | 184 | `result-track:446da327440055e569d6369595dca66f9676421263c809bb7a1c1f66885c4092` |
| 22 | `theorem` | [dvd_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/dvd-of-mem-cycletype.md) | 190 | `result-track:c4e23243dae7ff1f74cebd3f3324eed9b48d57952902013e0e02b87632c010bd` |
| 23 | `theorem` | [orderOf_cycleOf_dvd_orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/orderof-cycleof-dvd-orderof.md) | 194 | `result-track:768029b8c14e51d6d69dfd535a601a41b1b6287b4d440d2e6f6492d7220c7a75` |
| 24 | `theorem` | [two_dvd_card_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/two-dvd-card-support.md) | 204 | `result-track:80b633bd5629222fee7b3a6f97248c9709f94eff695e922718b08019fbbc2bfe` |
| 25 | `theorem` | [cycleType_prime_order](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-prime-order.md) | 212 | `result-track:07355939e2ab903b74bf8ae2a029e9febdd520383a80cd89402401ccd4ed22e9` |
| 26 | `theorem` | [pow_prime_eq_one_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/pow-prime-eq-one-iff.md) | 221 | `result-track:73ac0299eb9bc6766071d6a273a062691c5ac14113c79ca49cf2f9c59a7fa467` |
| 27 | `theorem` | [isCycle_of_prime_order](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/iscycle-of-prime-order-source-edition-3.md) | 229 | `result-track:d5f5c1f46ee488ea00826191da4b760b5ef9b631cbf8f22cbce95cf48367b297` |
| 28 | `theorem` | [cycleType_le_of_mem_cycleFactorsFinset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-le-of-mem-cyclefactorsfinset.md) | 236 | `result-track:f16ef3a1b460ef81c739246d76e381727f4fced32da6546f9e6e1b214bbccadc` |
| 29 | `theorem` | [Disjoint.cycleType_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/disjoint-cycletype-mul.md) | 243 | `result-track:c3af50e53a8608d74a3a6c69413c9938c6f31ea664bd738f9951b2389e3cbff7` |
| 30 | `theorem` | [Disjoint.cycleType_noncommProd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/disjoint-cycletype-noncommprod.md) | 251 | `result-track:b9022033eb829c3179c6b25d3aaadcf430648aae5d5d15e3f66d89980caf5731` |
| 31 | `theorem` | [cycleType_mul_inv_mem_cycleFactorsFinset_eq_sub](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-mul-inv-mem-cyclefactorsfinset-eq-sub.md) | 270 | `result-track:4b7db03d28bdc7eec2cb16f7e8c5641fcff091a463492f999af3c27a7d0302e3` |
| 32 | `theorem` | [isConj_of_cycleType_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/isconj-of-cycletype-eq.md) | 277 | `result-track:f12b9a0d211dadb17ab42202270f5c1664b38a7c2ac8649e2b1fe8c234f545dd` |
| 33 | `theorem` | [isConj_iff_cycleType_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/isconj-iff-cycletype-eq.md) | 304 | `result-track:7953fc0ed924d234ff5cb7125520ee780d3cada21a530357230d56c369d44452` |
| 34 | `theorem` | [cycleType_extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-extenddomain.md) | 310 | `result-track:0ddce6666276fdab3a0da728be2e40588eb97aa8c9cde50abc6d2e50562d9b21` |
| 35 | `theorem` | [cycleType_ofSubtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-ofsubtype.md) | 320 | `result-track:b923370c6027b2547a7e9c0d0aaa85bb17a05ec6851f4f6bc380e57dc0f4b12d` |
| 36 | `theorem` | [mem_cycleType_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/mem-cycletype-iff.md) | 324 | `result-track:8982136ca380e586d4dc3d2208d8f326e831924b913fc498155f292790ae1836` |
| 37 | `theorem` | [le_card_support_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/le-card-support-of-mem-cycletype.md) | 338 | `result-track:c23cdef94e0a5f503f85b817c371ec3591a6df06d17a23bddf6dcb0a84b268ee` |
| 38 | `theorem` | [cycleType_of_card_le_mem_cycleType_add_two](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-of-card-le-mem-cycletype-add-two.md) | 342 | `result-track:59edcc958899849796b6c4f323007ec01a23b47c93327411f22fcbebc5d48ac1` |
| 39 | `theorem` | [card_compl_support_modEq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/card-compl-support-modeq.md) | 354 | `result-track:66331c397b2b62d2c88317ff76a05f5df869ecbdb89ca26bef8ff2593aa19b61` |
| 40 | `theorem` | [card_fixedPoints_modEq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/card-fixedpoints-modeq.md) | 367 | `result-track:ef6832e81c468b30074bc3848ddbc707cee506c9d0668b09af260209d90eac6c` |
| 41 | `theorem` | [exists_fixed_point_of_prime](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/exists-fixed-point-of-prime-source-edition-2.md) | 382 | `result-track:e35d2da10b332f31a98e285a66328f34b5cf363290a999953dec84fcc765753b` |
| 42 | `theorem` | [exists_fixed_point_of_prime'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/exists-fixed-point-of-prime.md) | 390 | `result-track:a5d967834067f8b1e94431f2160cfbc4f41948e5e573c89bc937835569aa41c4` |
| 43 | `theorem` | [isCycle_of_prime_order'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/iscycle-of-prime-order.md) | 400 | `result-track:c310db0f86e070acba937be37348c34bc45ab811d9c7707f756bf960aadca6e1` |
| 44 | `theorem` | [isCycle_of_prime_order''](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/iscycle-of-prime-order-source-edition-2.md) | 404 | `result-track:c981e1f882807039c3b2322ef470b29579e707c7218489ec610ca47408e614a5` |
| 45 | `def` | [vectorsProdEqOne](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/vectorsprodeqone.md) | 415 | `declaration-track:0f5b240a1635cbd2477649037296788041ccea338633582610b281844571b16f` |
| 46 | `theorem` | [mem_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/mem-iff.md) | 420 | `result-track:908815702abb1569b4a5b055d56fc1b485d82c484c01e6bcf670840ce047f025` |
| 47 | `theorem` | [zero_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/zero-eq.md) | 423 | `result-track:1beef7e109546fed70f358b69b477ba2de16d98e296759c7d63b54956e14e256` |
| 48 | `theorem` | [one_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/one-eq.md) | 426 | `result-track:7b1c73d3de315d1545c2c0551d8b5ff23e57ccb73965138c34c3a1708a10a8f2` |
| 49 | `instance` | [zeroUnique](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/zerounique.md) | 431 | `declaration-track:9a165e2e37f01f2ea866318c861dab70cdb7833ecc90b03b6c725fa81c52c631` |
| 50 | `instance` | [oneUnique](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/oneunique.md) | 435 | `declaration-track:1a4e78867cdd177205816e96fedbe1132dab4c2de916a992d4aba0e58643673a` |
| 51 | `def` | [vectorEquiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/vectorequiv.md) | 442 | `declaration-track:e6a6b9f6a1da93a91910321702caa2a1f87fa023d253989fbb85c3d5629b63c4` |
| 52 | `def` | [equivVector](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/equivvector.md) | 457 | `declaration-track:6a797ae5711b4b97f4b54dfc90cd16967bd37a84d776251bc5a19a08876b0962` |
| 53 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/instance.md) | 461 | `declaration-track:5561adf8d70f1148cfb75a39a634de9afd539ec40bcd84d434b425fcd4ac2208` |
| 54 | `theorem` | [card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/card.md) | 464 | `result-track:e2e733240eea3c1b7ee696796a86d895da4e8d800da1a374330b57a842bd015c` |
| 55 | `def` | [rotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/rotate.md) | 471 | `declaration-track:fd08b11d5afac9b6b0cc334debf89b5f51fec6ca9f430e3e89fa54f7a823a9cd` |
| 56 | `theorem` | [rotate_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/rotate-zero.md) | 474 | `result-track:1be4725e89545b5527cf808c12ea4c5e1edc5f278eabf6495d417af26e028ad4` |
| 57 | `theorem` | [rotate_rotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/rotate-rotate.md) | 477 | `result-track:47ff558272f40f5e434b2dfd1ba16634c293957862e8075c4b84a653503886a6` |
| 58 | `theorem` | [rotate_length](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/rotate-length.md) | 480 | `result-track:ff3c77c41e93856f7c9799cfad5f377d6bc8b5dc2e585e79b49f374653187d3d` |
| 59 | `theorem` | [Type Namespaced Cycle Type](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/exists-prime-orderof-dvd-card-source-line-488-occurrence-2.md) | 488 | `result-track:e0e8fd34e9d9b56e7cc2eb9001437edccd1543cf3d3b59ef0d8447f903fc4d4e` |
| 60 | `theorem` | [Type Namespaced Cycle Type](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/exists-prime-addorderof-dvd-card.md) | 523 | `result-track:0667c416ea577f35d8d7ec581fccbddcfde1829ecb9458e22ba5bfc5ebf20304` |
| 61 | `theorem` | [Type Namespaced Cycle Type](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/exists-prime-orderof-dvd-card.md) | 533 | `result-track:7d679b2396f6da7245c5c48d9c0b4c95d2d3a2f91b148630d623825f8130d9f9` |
| 62 | `theorem` | [subgroup_eq_top_of_swap_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/subgroup-eq-top-of-swap-mem.md) | 541 | `result-track:74aa75a056babfd116aac0a75d3903c28a10b6fa58690406eb172bbfb9cae980` |
| 63 | `def` | [partition](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/partition.md) | 559 | `declaration-track:24db69827f4cec84fd71658fc00d3b305dbf56c2daaafed5a1f048870af0f2f6` |
| 64 | `theorem` | [parts_partition](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/parts-partition.md) | 569 | `result-track:d42b63b215b750aa2b04ed2394b2161dab6c3b3ba12da924226efd69589e3d6d` |
| 65 | `theorem` | [filter_parts_partition_eq_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/filter-parts-partition-eq-cycletype.md) | 573 | `result-track:4cd4e2fe63dd21a022e4e9ad8e9e49efd8b5a08ddc77578735a796262f7288f9` |
| 66 | `theorem` | [partition_eq_of_isConj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/partition-eq-of-isconj.md) | 580 | `result-track:691425d634b37015ab1511f01a7b074597fa40b87276a074e993505c922b7322` |
| 67 | `def` | [IsThreeCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/isthreecycle.md) | 595 | `declaration-track:f18b1715017450a6d7c923ef3b8b25044da9d1916b5aefcc132eea7c2bbc2179` |
| 68 | `theorem` | [cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/cycletype-source-edition-2.md) | 602 | `result-track:7d6373299b995e91a510b623a6962cbd5f8975b60f53eb8b28dfcaa8080a7f2d` |
| 69 | `theorem` | [card_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/card-support.md) | 605 | `result-track:95d02d4924fea16962c4066896121fe9b394a9e39eac00b03357554111e30126` |
| 70 | `theorem` | [Type Namespaced Cycle Type](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/card-support-eq-three-iff.md) | 608 | `result-track:304e3fe4d61c86c055f334df42aca6d14232eb3bceac59070f37f70b8d6debb0` |
| 71 | `theorem` | [isCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/iscycle.md) | 622 | `result-track:8d77792c0e1b412e1ba0d0630d5b0a86fe12e295080085151877514b25e2eb22` |
| 72 | `theorem` | [sign](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/sign.md) | 625 | `result-track:6da44730449a8102009a6fab86cb14880f7d6a472c36068495b43916637bbf12` |
| 73 | `theorem` | [inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/inv.md) | 629 | `result-track:f7b2da5c3c0547ff0a8b60fabc767a7c74d8d67e0f81a3c31a90f7611cf673ac` |
| 74 | `theorem` | [inv_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/inv-iff.md) | 633 | `result-track:a87e6a97112022434005dcc5aabcee6db2133019ee3a2632d872ec71d3a3e31b` |
| 75 | `theorem` | [orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/orderof.md) | 638 | `result-track:427cc22c0a6162d1e77585558c1d821ac97e34ae9bea304e056d1e2225836aee` |
| 76 | `theorem` | [isThreeCycle_sq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/isthreecycle-sq.md) | 641 | `result-track:0d1522bfbc0d6d04178f4e05a6722bfe7d51a92edd2135216231ecfbd496e212` |
| 77 | `theorem` | [isThreeCycle_swap_mul_swap_same](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/isthreecycle-swap-mul-swap-same.md) | 652 | `result-track:c6fda0ddb68e5a8b94c8d09988f36167230c8a8c11b9b0db6db334d771c3482b` |
| 78 | `theorem` | [swap_mul_swap_same_mem_closure_three_cycles](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/swap-mul-swap-same-mem-closure-three-cycles.md) | 672 | `result-track:5fd04694690ecc36ce64f2853c79694659b7a791b598c74bc8395dfc7cc5970e` |
| 79 | `theorem` | [IsSwap.mul_mem_closure_three_cycles](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/TypeNamespacedCycleType.lean/declarations/isswap-mul-mem-closure-three-cycles.md) | 679 | `result-track:ccea8878b5e9967ea692467a9a1a450de248b9e0793a6f761def3a3772c43afb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0116887f46efb92d41168718e1bd4dd2b24da2517658bc20e406cd90e877d9fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Type/Variant53da8484eb9a6767cb40cb8af7c6b7d620597dc47a2ce0ab5a2f1c5c2315a7fa.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Type/Variant53da8484eb9a6767cb40cb8af7c6b7d620597dc47a2ce0ab5a2f1c5c2315a7fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
