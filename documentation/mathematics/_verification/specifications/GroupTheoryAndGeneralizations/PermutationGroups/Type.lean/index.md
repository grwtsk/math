# Verification target: Type

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1944d46a5f536278d05602c104bfb54197c05d59",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Type/Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1944d46a5f536278d05602c104bfb54197c05d59`.

Source path: `GRWTSK/Algebra/GroupTheory/Type/Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Type/Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Multiset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Partition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Rotate` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.GCD` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype.md) | 47 | `declaration-track:7521120d6fba126f58849e8a653b72de64a48d1284d2a7b9c38fa01f695400ac` |
| 2 | `theorem` | [cycleType_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-def.md) | 51 | `result-track:eff373736c3eed1518ef6a8af1e58ecb0039fdc3d6f0a44696864764e897eeaa` |
| 3 | `theorem` | [cycleType_eq'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-eq-source-edition-2.md) | 56 | `result-track:8166d0348aea83295006f0c5adb20a3e8dacef4134076f4cfe4813066fd293cb` |
| 4 | `theorem` | [cycleType_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-eq.md) | 66 | `result-track:30d1b579d55be4738685cd5dd84d4529242eb30f4f23a5bde8c8c4500ba30144` |
| 5 | `theorem` | [cycleType_eq_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-eq-zero.md) | 78 | `result-track:c4453a093b267dd5ae8577edb824efc477a3b2dece206e3bf063a31510da8033` |
| 6 | `theorem` | [cycleType_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-one.md) | 83 | `result-track:d79b9d10df2f65718bef1e524bf51de3b6934f75e8cc6332c9e8f8418a7602d8` |
| 7 | `theorem` | [card_cycleType_eq_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/card-cycletype-eq-zero.md) | 86 | `result-track:0133b81cbf3d74544f88d291db562490755b602dc5ce20fb83e5c4a0ffd5c886` |
| 8 | `theorem` | [card_cycleType_pos](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/card-cycletype-pos.md) | 90 | `result-track:0c8166b1826307b3761189c43f5ba7bc22c216000f7b34364cf52f63f4fbeb5f` |
| 9 | `theorem` | [two_le_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/two-le-of-mem-cycletype.md) | 93 | `result-track:ac87ee22675d8959c37b06a834200513f138fd84da9b90badc2e1c8e5d2fb65f` |
| 10 | `theorem` | [one_lt_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/one-lt-of-mem-cycletype.md) | 100 | `result-track:6fc9f9307b5d4bd16301b7bec144b5fcf6271b5e40d360e3b088dffe5fdaa622` |
| 11 | `theorem` | [IsCycle.cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/iscycle-cycletype.md) | 104 | `result-track:567bcc0b9eb4e10feb80e6a87237a5ff5c0ee1a62ee664a3eab346e295e2f677` |
| 12 | `theorem` | [card_cycleType_eq_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/card-cycletype-eq-one.md) | 109 | `result-track:ada90acecec486c8e221043fdc66f979b286da089c27804640edebbf9e9e724e` |
| 13 | `theorem` | [Disjoint.cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/disjoint-cycletype.md) | 121 | `result-track:9e01b252feb2b92dcf6fe4183c002975e99ddf34f340ae816b03e2bdb93d6abe` |
| 14 | `theorem` | [cycleType_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-inv.md) | 129 | `result-track:cbd34af30c08127c6f12f2d39b5d111fd3f99d8c33d6dab7383dc931a7982a71` |
| 15 | `theorem` | [cycleType_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-conj.md) | 138 | `result-track:0f03bf0031d225825965a59125156946ee28147f7e8cfc384a965e43956e3218` |
| 16 | `theorem` | [sum_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/sum-cycletype.md) | 146 | `result-track:ecca7bd1265ada61af16e5cd285ce0e045fbbac519d3090180a7f7375cd991c6` |
| 17 | `theorem` | [sign_of_cycleType'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/sign-of-cycletype.md) | 153 | `result-track:97b6998e868579513def26c8c018c8095b3f2fd1de0b4563939e47d87629fcf2` |
| 18 | `theorem` | [sign_of_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/sign-of-cycletype-source-edition-2.md) | 161 | `result-track:bfba275c3f9c3837b33353eec766a2b6f8af8ed18e8bf1ad2d19eddf84300136` |
| 19 | `theorem` | [lcm_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/lcm-cycletype.md) | 171 | `result-track:ad36b6b25d2004659f087f3d55924021c1563568ba5f9e112e87645a69b8d949` |
| 20 | `theorem` | [dvd_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/dvd-of-mem-cycletype.md) | 178 | `result-track:26d7b18c1f7bf1b657a8e8d3ed4f4c68e0f7236da5d9d03d6fe682137b8abdeb` |
| 21 | `theorem` | [orderOf_cycleOf_dvd_orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/orderof-cycleof-dvd-orderof.md) | 183 | `result-track:77db98070c2ac146e996cf21d03e90f4394114ae77cb366718309cbc19f1dab6` |
| 22 | `theorem` | [two_dvd_card_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/two-dvd-card-support.md) | 194 | `result-track:9489317467b6269846448384aea31e57f640a374d3593f724bf5c8942814d6af` |
| 23 | `theorem` | [cycleType_prime_order](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-prime-order.md) | 203 | `result-track:a5d416237e4d27e9a1cbef674c718f4ea7cbfd00ee3a2392ffc8228cbd1e6c56` |
| 24 | `theorem` | [isCycle_of_prime_order](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/iscycle-of-prime-order-source-edition-2.md) | 213 | `result-track:26bb08917f72fff54621c6a26b8a722fca296f82d26948aa461cfa0f14ccb0f2` |
| 25 | `theorem` | [cycleType_le_of_mem_cycleFactorsFinset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-le-of-mem-cyclefactorsfinset.md) | 221 | `result-track:9a91cb2f38311572ee48bd09073e69624c1c3ec3d617c7d85b694d76afbd2d4c` |
| 26 | `theorem` | [cycleType_mul_inv_mem_cycleFactorsFinset_eq_sub](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-mul-inv-mem-cyclefactorsfinset-eq-sub.md) | 229 | `result-track:93fc6182216bb4eb596cd16d71e8d389c674c864526024c7cd05514dad262b8c` |
| 27 | `theorem` | [isConj_of_cycleType_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/isconj-of-cycletype-eq.md) | 237 | `result-track:9dd8a3678e59b43b49e8aa7228c7cf26ce1b6d5c5791d4a741d0b5dc4a204f59` |
| 28 | `theorem` | [isConj_iff_cycleType_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/isconj-iff-cycletype-eq.md) | 266 | `result-track:c44b385c07b2e79d2d50a4131116df762fd42adad5213cc0e7c56a9b167779e3` |
| 29 | `theorem` | [cycleType_extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-extenddomain.md) | 273 | `result-track:2ff8926a596c5fe833d3034f37595a583000be632d4e1e5e92c5a4bb0e8c6498` |
| 30 | `theorem` | [cycleType_ofSubtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-ofsubtype.md) | 284 | `result-track:b442f7e3a18908c9551a9a92d9e146b0360bd7a1aa0e818152821d3bc8400810` |
| 31 | `theorem` | [mem_cycleType_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/mem-cycletype-iff.md) | 289 | `result-track:71b10cbcd1e876f5da23daef7037537866f776dde87c08495e31c7875d03586c` |
| 32 | `theorem` | [le_card_support_of_mem_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/le-card-support-of-mem-cycletype.md) | 304 | `result-track:f94bcea0170ade388d289493e7bbb0b54ed3b5b184fccc1fce8743dbe182f2ce` |
| 33 | `theorem` | [cycleType_of_card_le_mem_cycleType_add_two](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-of-card-le-mem-cycletype-add-two.md) | 309 | `result-track:d7bec72d1534fafb489ce664dae7f8045f6bd78ce1ec82693572352987291fd5` |
| 34 | `theorem` | [card_compl_support_modEq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/card-compl-support-modeq.md) | 322 | `result-track:97226297e1b1092036dcc42ff2105a3aa712c0ef60635e695ae6bd957631f12b` |
| 35 | `theorem` | [exists_fixed_point_of_prime](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/exists-fixed-point-of-prime-source-edition-2.md) | 333 | `result-track:4686ab0a6e8650b6179a27fa35a9ded770eaab1a562abd22ec59a5aea3ac0b24` |
| 36 | `theorem` | [exists_fixed_point_of_prime'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/exists-fixed-point-of-prime.md) | 342 | `result-track:2d222da85b162ac52c266fd1206a515ac8de9e9243882f0c437a50e81382d154` |
| 37 | `theorem` | [isCycle_of_prime_order'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/iscycle-of-prime-order.md) | 353 | `result-track:1635ecaf33f747d6ea81c5f064f37931bebb3d60b69d4ab453d3eba84d058367` |
| 38 | `theorem` | [isCycle_of_prime_order''](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/iscycle-of-prime-order-source-edition-3.md) | 358 | `result-track:5709975a33330c863649e2941fcc34cdb07471475cd3a940bf0f46579300af93` |
| 39 | `def` | [vectorsProdEqOne](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/vectorsprodeqone.md) | 370 | `declaration-track:12204e91a56db96acce26c3774b57a642c3f49f47e73f72296443128619e7436` |
| 40 | `theorem` | [mem_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/mem-iff.md) | 376 | `result-track:b378af0c4bc54845f16fceedb4d0d5858673cd400aee7cea4f047609de691975` |
| 41 | `theorem` | [zero_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/zero-eq.md) | 380 | `result-track:2813117f1d342251baa3e31e5f02dbc416326c8bbb84566304e81d2baca972e9` |
| 42 | `theorem` | [one_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/one-eq.md) | 384 | `result-track:f238138baa28dd0403f6bf37511bfbb4c6faf3a755128ec0506b4547c3a5c611` |
| 43 | `instance` | [zeroUnique](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/zerounique.md) | 390 | `declaration-track:c5de4149cbc966a5d3edf16beea9de5cacb47d28af73487c979a0692757d6aef` |
| 44 | `instance` | [oneUnique](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/oneunique.md) | 395 | `declaration-track:f06887f27d9a7488850614f7132f596927f59dbc6a7fb8ba4dd87ab696e67dc5` |
| 45 | `def` | [vectorEquiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/vectorequiv.md) | 403 | `declaration-track:a76e73fd4f50448003e6e8de6f852c8bdbb7fd3b4de622a44e0809acb54577ec` |
| 46 | `def` | [equivVector](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/equivvector.md) | 419 | `declaration-track:031aaf07cade0f8bdf2bc98065bdfadf6860421a9dccf6e51a9fe41a380259cc` |
| 47 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/instance.md) | 424 | `declaration-track:7379f906ed6ddcfa740617ef6a94af79b4cf0074bf4020126f7778ed794d403f` |
| 48 | `theorem` | [card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/card.md) | 427 | `result-track:cf4a113d78af7daf83fd632a92651ccf2c8e124dbe8447eb9bc6163ca87ce918` |
| 49 | `def` | [rotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/rotate.md) | 435 | `declaration-track:6a9560bc9b9314ad3111adad5fd36e65e6bbb63c0bdf5137b10580534d746d5f` |
| 50 | `theorem` | [rotate_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/rotate-zero.md) | 439 | `result-track:a274ae180da228ca44a29a3596de472e8b0158f634df7b0703f612a954e702bf` |
| 51 | `theorem` | [rotate_rotate](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/rotate-rotate.md) | 443 | `result-track:f7ec7c5a47e316a47d54b8cb3ca0f7b75fb49a56851128e391669b85abfd419d` |
| 52 | `theorem` | [rotate_length](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/rotate-length.md) | 447 | `result-track:2d7f98ebb46d846abd5054a16f5ee9c79d80f8e6f0590d236ae44be748004831` |
| 53 | `theorem` | [_root_.exists_prime_orderOf_dvd_card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/root-exists-prime-orderof-dvd-card.md) | 455 | `result-track:26d2f0f7d7e37132946845b9e33f3c4dab48ea380420dbebadfb7e71c757f6ab` |
| 54 | `theorem` | [_root_.exists_prime_addOrderOf_dvd_card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/root-exists-prime-addorderof-dvd-card.md) | 488 | `result-track:f58ad3c0d6741ae402a76e4deb513fddc75918e7cf82c96288e33a29702e6683` |
| 55 | `theorem` | [subgroup_eq_top_of_swap_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/subgroup-eq-top-of-swap-mem.md) | 497 | `result-track:966955904e819c53e1bf13bbb69ee793355e3cc2cc64a0db4ea390f7055ade4a` |
| 56 | `def` | [partition](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/partition.md) | 516 | `declaration-track:4da4fca48c190bf714dc08ce3f417daa46437cd8ac86b41da09f92928bcfd130` |
| 57 | `theorem` | [parts_partition](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/parts-partition.md) | 527 | `result-track:5a9d3f8e731cd72fb1429cda10e5869227648fa89d7287446cc0ade4dd1b77ba` |
| 58 | `theorem` | [filter_parts_partition_eq_cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/filter-parts-partition-eq-cycletype.md) | 532 | `result-track:9401999ecead2111666b82024c94b2c238c73e238515fc9531bb49c880757392` |
| 59 | `theorem` | [partition_eq_of_isConj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/partition-eq-of-isconj.md) | 540 | `result-track:6d3729ab7d2ef5b25c2ba0c3ce01c4949d225a57564082a63c26afaf8e283a83` |
| 60 | `def` | [IsThreeCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/isthreecycle.md) | 556 | `declaration-track:f34de969ada20f16df0e807ee12cddfef8a04f7cd41fb945aa39ac56503fcba6` |
| 61 | `theorem` | [cycleType](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/cycletype-source-edition-2.md) | 564 | `result-track:a1ad765f5260f47be8d09c04492ef86215256bd1a303775f81b25d8a50a47f48` |
| 62 | `theorem` | [card_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/card-support.md) | 568 | `result-track:e0e1e59f3c9a1862fac7c90e1d1d43331dade3ced971f416ec6179cbfa258334` |
| 63 | `theorem` | [_root_.card_support_eq_three_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/root-card-support-eq-three-iff.md) | 572 | `result-track:5925cff2894e768678e89cabc4e79117ca55142d3ccbc6e8b009cc7396c883d8` |
| 64 | `theorem` | [isCycle](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/iscycle.md) | 590 | `result-track:b26edced0b7db905442dd50750ae73331c53ec9d6609a32ac12515ae949e67df` |
| 65 | `theorem` | [sign](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/sign.md) | 594 | `result-track:daaac99a0d662a319b34af054636eecb41fee0b8fad1c0b4a2e7320d7a05f7ac` |
| 66 | `theorem` | [inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/inv.md) | 599 | `result-track:d509a3a1b80e409d712b4738b97993784b956ed99059f192bdf9f02607ceffbd` |
| 67 | `theorem` | [inv_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/inv-iff.md) | 604 | `result-track:034d0f8650704002056d21a05f35fbf20922af5db7c8c5f114441f09b08b379a` |
| 68 | `theorem` | [orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/orderof.md) | 610 | `result-track:8770967b6fb85d07376b1b57da8b44b13cf8c2359727e3bc884ff9190dfe7344` |
| 69 | `theorem` | [isThreeCycle_sq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/isthreecycle-sq.md) | 614 | `result-track:16c7be47eceabd5c32bc25ab82a1a6f2e88d1a60f341b5ca92c720a355623338` |
| 70 | `theorem` | [isThreeCycle_swap_mul_swap_same](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/isthreecycle-swap-mul-swap-same.md) | 626 | `result-track:340079f18a03970fe197e265ada14d7c515552687ad5620078dcc2e0e0977f54` |
| 71 | `theorem` | [swap_mul_swap_same_mem_closure_three_cycles](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/swap-mul-swap-same-mem-closure-three-cycles.md) | 647 | `result-track:3fe6d4a53b90f3622e2a707acae02078c783c79a67d23c0201b22d9c200cd3c1` |
| 72 | `theorem` | [IsSwap.mul_mem_closure_three_cycles](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/Type.lean/declarations/isswap-mul-mem-closure-three-cycles.md) | 655 | `result-track:765f1562c4ecdcc1d336b78ddef3b6524c857f6decab9ce00830a3611ab0b3b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd69fb4aa8ab8985d4d3d39f29408515edf93f89f465feedc6e2123b8ae24a37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Type/Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Type/Variantb1157e94ec00bc325510face2a0a77b8a1d80b95949845b5970da52c9b57b991.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
