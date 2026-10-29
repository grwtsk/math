# Verification target: Complement Namespaced Is Complement Univ Singleton

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d11e2118a7d6e899c0638a1bc3483af8b28bb7b6",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Complement/Variant1fc5847dcd75827362fd63eba20f99d583fdf6f26a11d649a04ac1224ceed175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d11e2118a7d6e899c0638a1bc3483af8b28bb7b6`.

Source path: `GRWTSK/Algebra/GroupTheory/Complement/Variant1fc5847dcd75827362fd63eba20f99d583fdf6f26a11d649a04ac1224ceed175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Complement/Variant1fc5847dcd75827362fd63eba20f99d583fdf6f26a11d649a04ac1224ceed175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Index` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsComplement](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-source-edition-2.md) | 45 | `declaration-track:516ca79ebf4089a400d723b2ac1165ae37c4cc59eb3d74d10ee24b18ad3e074f` |
| 2 | `abbrev` | [IsComplement'](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement.md) | 50 | `declaration-track:14547322fd7b581ebda6531d10cc100e19babdda25bab3673cb1fc0836528ac9` |
| 3 | `def` | [leftTransversals](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/lefttransversals.md) | 56 | `declaration-track:b75fecd205555ec007c8eedab7d3d98ddfebdcc9239bb3361c65110dbfd7afd7` |
| 4 | `def` | [rightTransversals](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/righttransversals.md) | 62 | `declaration-track:6d01786a08798d3f9f303680f76884a19714dd12c3afbe8ddb72864850718202` |
| 5 | `theorem` | [isComplement'_def](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-def.md) | 68 | `result-track:9d29ba86220d600761f6cac6414f20179749b742d0d2e2e64d1483d743d69cfd` |
| 6 | `theorem` | [isComplement_iff_existsUnique](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-iff-existsunique.md) | 72 | `result-track:7fcf23915b4a4fdb44dbaacda711f595eb9cd4cfe23a3bcdd9a2a50d0bf16c3c` |
| 7 | `theorem` | [IsComplement.existsUnique](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-existsunique.md) | 77 | `result-track:c823c5fa23f45e4714a0317afe09293c9bd35fa3c4a606d20f1239e03c457b65` |
| 8 | `theorem` | [IsComplement'.symm](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-symm.md) | 82 | `result-track:8bd58a9a72cad5cab5df8e73c285f5d3303c472e82272a56de9a980b8d2d32de` |
| 9 | `theorem` | [isComplement'_comm](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-comm.md) | 94 | `result-track:f4bc64a1eec644d2d4a0c1524fa13ed601514947a5b060c14adf565882ade822` |
| 10 | `theorem` | [isComplement_univ_singleton](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-univ-singleton.md) | 98 | `result-track:1f3e3b956c92553e25da70a5a266e1ff96a295b70aac82b1aba4881a0e400a0d` |
| 11 | `theorem` | [isComplement_singleton_univ](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-singleton-univ.md) | 103 | `result-track:44a651102b949758cac28e06ed3db59298d78c9605a026e8fdeebe01ebab5160` |
| 12 | `theorem` | [isComplement_singleton_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-singleton-left.md) | 108 | `result-track:d099dc27eacbf117e1b09ad7776397aa8fb214974b2ceb4d0d81db17a0d556a5` |
| 13 | `theorem` | [isComplement_singleton_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-singleton-right.md) | 115 | `result-track:e6c491c715c00a0a2baee7c0755d452eef941a55e9a1fa9b0d78b42153c6d02a` |
| 14 | `theorem` | [isComplement_univ_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-univ-left.md) | 124 | `result-track:55a6b02898ba2de6cacbb4d7e878349e24a33eac47a7503f5c8e582999a5cfd9` |
| 15 | `theorem` | [isComplement_univ_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-univ-right.md) | 136 | `result-track:79fd0c42c2a77ce0a6f8f85c7e607ae8bd3dfead281b46c777338b4f850f35d9` |
| 16 | `lemma` | [IsComplement.mul_eq](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-mul-eq.md) | 148 | `result-track:3c4f88ab89451ffaaadd4af8e59207646b366656aee351f4746bd8f8e08067c3` |
| 17 | `lemma` | [not_isComplement_empty_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/not-iscomplement-empty-left.md) | 152 | `result-track:cccfc4d047196f37b09c81c93f59f1fc5c4a3fa0592c04faf77a645a349015a6` |
| 18 | `lemma` | [not_isComplement_empty_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/not-iscomplement-empty-right.md) | 156 | `result-track:ebb1998f2725d3cb06266e24d125f5a2f748aac7b2ad9bdd4c5334642d032f64` |
| 19 | `lemma` | [IsComplement.nonempty_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-nonempty-left.md) | 160 | `result-track:00ec2b30a4b1a1c1a0c97fdf6057721f11fbe09acaf84e27b587624db14734b5` |
| 20 | `lemma` | [IsComplement.nonempty_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-nonempty-right.md) | 164 | `result-track:fae8b990cb8beb1d01ee20496deb54d34bce8b4a91c6178409374b31e154db12` |
| 21 | `lemma` | [IsComplement.pairwiseDisjoint_smul](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-pairwisedisjoint-smul.md) | 167 | `result-track:32cfbeacff075ee22118484d93b59bf6cc6199bb403b3090e2963ee3930ed019` |
| 22 | `lemma` | [IsComplement.card_mul_card](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-card-mul-card.md) | 173 | `result-track:c71792033a6acea125df52ea712986def87c74ddabfa70360838746de27dbad6` |
| 23 | `theorem` | [isComplement'_top_bot](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-top-bot.md) | 177 | `result-track:b10269c281738401bf7f63affa5f59e9f2f1c552500a983f83c886ebbd186336` |
| 24 | `theorem` | [isComplement'_bot_top](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-bot-top.md) | 181 | `result-track:76d43423ae5829aa5bf2a0a3370c50ff4b466629245e5ef72111573de80695dd` |
| 25 | `theorem` | [isComplement'_bot_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-bot-left.md) | 185 | `result-track:4dd1d083dcc8c7a2a205624024c9356d17f8add09f07d666bd6c1318592b5b14` |
| 26 | `theorem` | [isComplement'_bot_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-bot-right.md) | 189 | `result-track:7fa0381c347f0db75261a1314ca616f265fed3450f0a665c4faf3e8f5428d511` |
| 27 | `theorem` | [isComplement'_top_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-top-left.md) | 193 | `result-track:3705cce6b1f78b47b98794eb61a880d15d40f13afe1361ff793c00787e14876a` |
| 28 | `theorem` | [isComplement'_top_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-top-right.md) | 197 | `result-track:4dc4c670bb9cc162585a92e8e7faefdcd91cd23c0e99df98326b2bad16749c09` |
| 29 | `lemma` | [isComplement_iff_existsUnique_inv_mul_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-iff-existsunique-inv-mul-mem.md) | 201 | `result-track:6d83c27f4a8a62d413ca4be652fe85374044caa4ab2b293a3931f5920fd139ed` |
| 30 | `theorem` | [mem_leftTransversals_iff_existsUnique_inv_mul_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/mem-lefttransversals-iff-existsunique-inv-mul-mem.md) | 211 | `result-track:279d7417461781591410855aa29f7cf2731821c5598c0515f28a2df591aa2f0e` |
| 31 | `lemma` | [isComplement_iff_existsUnique_mul_inv_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-iff-existsunique-mul-inv-mem.md) | 225 | `result-track:5911a0a5b32a675009dfebf604f51b34b05af07dc7b452f492d526b98fb30bc3` |
| 32 | `theorem` | [mem_rightTransversals_iff_existsUnique_mul_inv_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/mem-righttransversals-iff-existsunique-mul-inv-mem.md) | 235 | `result-track:81f89176389297abf69defb6deb1be0cdd9f8ac4f616d3930fb41bdbd43a943a` |
| 33 | `lemma` | [isComplement_subgroup_right_iff_existsUnique_quotientGroupMk](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-subgroup-right-iff-existsunique-quotientgroupmk.md) | 249 | `result-track:c09ede0278c5dbdb210a6619cd599a1ca1ca69964e78ee9bbb6bab370b1a2d96` |
| 34 | `theorem` | [mem_leftTransversals_iff_existsUnique_quotient_mk''_eq](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/mem-lefttransversals-iff-existsunique-quotient-mk-eq.md) | 258 | `result-track:ffdd7e35f7626b0e5ea45fbc23eb1e443299abc864a0b7e9a343d33da937443a` |
| 35 | `lemma` | [isComplement_subgroup_left_iff_existsUnique_quotientMk''](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-subgroup-left-iff-existsunique-quotientmk.md) | 267 | `result-track:63f8d56fbc4f0ca4ba0b8aa51ecae2d13e4d0f3e110122e373632ffec36184d5` |
| 36 | `theorem` | [mem_rightTransversals_iff_existsUnique_quotient_mk''_eq](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/mem-righttransversals-iff-existsunique-quotient-mk-eq.md) | 277 | `result-track:8df4c38e73cdb6fae911af82154cb9154811f64a330fef6a9c9995563ba284bf` |
| 37 | `lemma` | [isComplement_subgroup_right_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-subgroup-right-iff-bijective.md) | 285 | `result-track:f5194f8e865bc7c8b45ae79c48f4220aab76a59b2f656f3a68854608c08f24bd` |
| 38 | `theorem` | [mem_leftTransversals_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/mem-lefttransversals-iff-bijective.md) | 293 | `result-track:e993d80f039e9245e0373fd06f1623e035b7eccda1a8875b6a320ad0bfa329a8` |
| 39 | `lemma` | [isComplement_subgroup_left_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-subgroup-left-iff-bijective.md) | 300 | `result-track:781728b508b1820d7295ad796a141f704cb77deaa670f2ee61ffda0a14caecbe` |
| 40 | `theorem` | [mem_rightTransversals_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/mem-righttransversals-iff-bijective.md) | 309 | `result-track:eb748d97f49306a51802a53c64bb617c648b2c814cc65a57c56ff27f5f3ed1a2` |
| 41 | `lemma` | [IsComplement.card_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-card-left.md) | 316 | `result-track:3dd583e6e31b70016f6337f441e6c7d1bcedfba0dd26d5144e10afd1ef6c2ec0` |
| 42 | `theorem` | [card_left_transversal](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/card-left-transversal.md) | 321 | `result-track:1aff7846d3e016a79cb62d9e5149928c3cee3da16b8929c1ef9b3c6556209299` |
| 43 | `lemma` | [IsComplement.card_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-card-right.md) | 325 | `result-track:ad642ab2f6928f86b3b0e9bc5ec6dc3694344894d0959104d2167612c62e6f0b` |
| 44 | `theorem` | [card_right_transversal](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/card-right-transversal.md) | 331 | `result-track:4ebdccb8bf25bb9e0e460f6153bbc0ff15de0531e5d4a59f9b5e8d5e835bd0bc` |
| 45 | `lemma` | [isComplement_range_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-range-left.md) | 337 | `result-track:e590423432ddf8de5ebfe1e921341312e4cb70cf02a32aa2d9a50194843021c1` |
| 46 | `theorem` | [range_mem_leftTransversals](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/range-mem-lefttransversals.md) | 346 | `result-track:28e2ade53d7c494fbcecf11be40eb92fc38297104e3bddd77bc5dd9db0add714` |
| 47 | `lemma` | [isComplement_range_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-range-right.md) | 354 | `result-track:e67bb7dde48a5ecf66e778359889d057856cbfa305a247257fddb4ec74e2502e` |
| 48 | `theorem` | [range_mem_rightTransversals](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/range-mem-righttransversals.md) | 363 | `result-track:67908d773377f235e9a9151e944969c5bad8b6b37fa90010e8fcb7ec117b1320` |
| 49 | `lemma` | [exists_isComplement_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/exists-iscomplement-left.md) | 371 | `result-track:17fe019c60ac9b6e5e90a8430911a9e5b7d640f91fbd53d3db128cfcc39cf1a7` |
| 50 | `lemma` | [exists_left_transversal](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/exists-left-transversal.md) | 382 | `result-track:49e0344aa56787860238623a0a63f48c498f24c19384729149d567b4e0043d08` |
| 51 | `lemma` | [exists_isComplement_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/exists-iscomplement-right.md) | 394 | `result-track:450bec0e7c8a6cd64f9b2e5a331bab058cd2a782ea288b4f9a90f7133c76981e` |
| 52 | `lemma` | [exists_right_transversal](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/exists-right-transversal.md) | 406 | `result-track:a0ef0c57771df2802e01e49be4bd3b02daccb1c332fd3c110c7d598a324030e3` |
| 53 | `lemma` | [exists_left_transversal_of_le](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/exists-left-transversal-of-le.md) | 418 | `result-track:c59d38b99784b5696127b44f838e0110fc2d4dd9c778a54c6b7190b3a03dedba` |
| 54 | `lemma` | [exists_right_transversal_of_le](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/exists-right-transversal-of-le.md) | 434 | `result-track:1753a920df7cc393a5e410fee4237c5a0f19fd7f16a7a07991322b9aaf09beac` |
| 55 | `def` | [equiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv.md) | 452 | `declaration-track:fb2b59f68253b6701eaa6f672a33a1226da1d1257cf0750a82f4cd5d5efaaf78` |
| 56 | `theorem` | [equiv_symm_apply](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-symm-apply.md) | 457 | `result-track:84fe8b696bbc799d410d61b9616c161aefd01438266d370b63910ff77fd154e2` |
| 57 | `theorem` | [equiv_fst_mul_equiv_snd](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-fst-mul-equiv-snd.md) | 460 | `result-track:7951f2d0ed1156f94c630edfda42acfd7044a2cab622f1820adf6f9fb1f431cd` |
| 58 | `theorem` | [equiv_fst_eq_mul_inv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-fst-eq-mul-inv.md) | 463 | `result-track:96588144e43e46ccc34f52ffb5dcc75f1a8556d7627c2f22ded42eafc5b08c3e` |
| 59 | `theorem` | [equiv_snd_eq_inv_mul](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-snd-eq-inv-mul.md) | 466 | `result-track:a056856b76a46e29422f192f9e2a30fd223ea7da3c9b7b2c89a9efdfa34bb328` |
| 60 | `theorem` | [equiv_fst_eq_iff_leftCosetEquivalence](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-fst-eq-iff-leftcosetequivalence.md) | 469 | `result-track:e671697d535af3d0f4b9a825f66716ec41ba219f43d31c8edd748205ba830db1` |
| 61 | `theorem` | [equiv_snd_eq_iff_rightCosetEquivalence](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-snd-eq-iff-rightcosetequivalence.md) | 485 | `result-track:da5a2e37b24f9ce1bf735cffd1277468977a5ecd6288f977b2783d985393f74d` |
| 62 | `theorem` | [leftCosetEquivalence_equiv_fst](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/leftcosetequivalence-equiv-fst.md) | 501 | `result-track:ac0a93c79032226158fdc1e4536967d99772a7018d101960619086ee3d5deb1d` |
| 63 | `theorem` | [rightCosetEquivalence_equiv_snd](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/rightcosetequivalence-equiv-snd.md) | 506 | `result-track:51e992e90f2636a36926a7cf43c392d218e93d0526382fb27f3048405bc75efb` |
| 64 | `theorem` | [equiv_fst_eq_self_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-fst-eq-self-of-mem-of-one-mem.md) | 511 | `result-track:dd35ec0c166b2d29a8a4c8b1f6fafafc7a7e9c59f2e30c53400384feb9e0d2f3` |
| 65 | `theorem` | [equiv_snd_eq_self_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-snd-eq-self-of-mem-of-one-mem.md) | 517 | `result-track:f1fc9a4831c3eb33c28f21d207c7cefbe1f23612450c7345901eee01cb1f93e6` |
| 66 | `theorem` | [equiv_snd_eq_one_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-snd-eq-one-of-mem-of-one-mem.md) | 523 | `result-track:1ad73480547675a605f51f1135c68c8dbb49307888595f7241512e969f466beb` |
| 67 | `theorem` | [equiv_fst_eq_one_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-fst-eq-one-of-mem-of-one-mem.md) | 528 | `result-track:818eb4c0a2932f79ec7d4c656cc34706cdf1870f3ace42d56504ac3cac9e2944` |
| 68 | `theorem` | [equiv_mul_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-mul-right.md) | 533 | `result-track:03111db4dff38d302534cecf287a38c4a9b61c10732e904e04107d89cb2ce316` |
| 69 | `theorem` | [equiv_mul_right_of_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-mul-right-of-mem.md) | 542 | `result-track:c9fff2a056ee346c4135e186d0da0f07d78c617ef1228663cf19cb7620af1273` |
| 70 | `theorem` | [equiv_mul_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-mul-left.md) | 546 | `result-track:8b765114d79adb2fc3ee729315023273063fb84f8b2fdcdbf45677ba92e4d121` |
| 71 | `theorem` | [equiv_mul_left_of_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-mul-left-of-mem.md) | 554 | `result-track:495e52bc613b332111337e6f0d053e431ae47006698060abff000c70223aeb5e` |
| 72 | `theorem` | [equiv_one](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-one.md) | 558 | `result-track:4af89361a3fb37b2fad48947d66387293b7ec418f4663ae626f57e8fbf2f4e39` |
| 73 | `theorem` | [equiv_fst_eq_self_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-fst-eq-self-iff-mem.md) | 562 | `result-track:e88019d150529d9948ff30580c6fbce0380c8410d4580245877e7179748f21b9` |
| 74 | `theorem` | [equiv_snd_eq_self_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/equiv-snd-eq-self-iff-mem.md) | 571 | `result-track:17c19d6b11eeab6ddde320e589cbda5277de5476ef1a310089e2531373953922` |
| 75 | `theorem` | [coe_equiv_fst_eq_one_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/coe-equiv-fst-eq-one-iff-mem.md) | 580 | `result-track:23d459c8bb06dec9e6346630c0375929b4439b5271d1a9971030b302fcbc678c` |
| 76 | `theorem` | [coe_equiv_snd_eq_one_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/coe-equiv-snd-eq-one-iff-mem.md) | 584 | `result-track:3e48c75bcd6cfd8357346b60544dc3f1ba410fc65f7f8c9ba4e12965eeb0fcc1` |
| 77 | `def` | [leftQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/leftquotientequiv.md) | 590 | `declaration-track:0abe130f99512f149f2544bbf5f50d1e0276cef411b72e65db1e2d573c88a4dc` |
| 78 | `theorem` | [finite_left_iff](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/finite-left-iff.md) | 598 | `result-track:c21a8e41918d4df0d6450dffcb72734b7b933d5d30108b8c866ababf3b4525a1` |
| 79 | `lemma` | [finite_left](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/finite-left.md) | 606 | `result-track:d7c0eb1e1aa0861917b2171a56732d1232af993aa09ef321be87f63bae2dee61` |
| 80 | `theorem` | [quotientGroupMk_leftQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/quotientgroupmk-leftquotientequiv.md) | 609 | `result-track:300e10c480361691a4f3852138ee66523e7830b1c230ca27f4319a8aa0cb3418` |
| 81 | `theorem` | [leftQuotientEquiv_apply](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/leftquotientequiv-apply.md) | 617 | `result-track:0f05260915a536e7302dac50c45f7595083d82950ba1a70c0fb588d47251dfa9` |
| 82 | `def` | [toLeftFun](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/toleftfun.md) | 629 | `declaration-track:5f2e6006bf25e03833401fbade7e6a2eb97b14768aa0003038437d2feb555bc1` |
| 83 | `theorem` | [inv_toLeftFun_mul_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/inv-toleftfun-mul-mem.md) | 635 | `result-track:8891cf9942fd6983e0687dddb848d4bbe605884d83234b9e63896e6865300c7a` |
| 84 | `theorem` | [inv_mul_toLeftFun_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/inv-mul-toleftfun-mem.md) | 643 | `result-track:a03a327abd714702f9d92c943eb23c04591a60386878acdce93fdb90b86f95a1` |
| 85 | `def` | [rightQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/rightquotientequiv.md) | 652 | `declaration-track:2f6b0fe01efaf061bcc1bb1ac12edca65856738696a39267e4c8491970cb8203` |
| 86 | `theorem` | [finite_right_iff](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/finite-right-iff.md) | 661 | `result-track:f3e55367e502dd404b544b8891b15f20edc6f0de6063c45e0896f4bf0a2ffd16` |
| 87 | `lemma` | [finite_right](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/finite-right.md) | 670 | `result-track:db94760d3a412d76ad41eb05cc038ca0a0890f35449e4db6e217b1175dee8c21` |
| 88 | `theorem` | [mk''_rightQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/mk-rightquotientequiv.md) | 673 | `result-track:cfd8c86cb783e339b867f84f9d31f62a7d07bc5127272b6c08e69ff24f66205a` |
| 89 | `theorem` | [rightQuotientEquiv_apply](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/rightquotientequiv-apply.md) | 681 | `result-track:d9ca73d2080679c9dac3262ad6f9d21482acc27da72e89e02c8b93660be2f7b7` |
| 90 | `def` | [toRightFun](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/torightfun.md) | 694 | `declaration-track:f9a0053acd7cd4346ef5f70b6df245dff952c173867fc752c2f5ee29ddf09aee` |
| 91 | `theorem` | [mul_inv_toRightFun_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/mul-inv-torightfun-mem.md) | 700 | `result-track:9bb1882a29e5cb0bff93d25e088580c536cb022f5b87f0130ae5680476af4caf` |
| 92 | `theorem` | [toRightFun_mul_inv_mem](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/torightfun-mul-inv-mem.md) | 708 | `result-track:368334362d076616a8d44d533e975f768f75edd04f6e91da4425f2ad6ed5719c` |
| 93 | `abbrev` | [LeftTransversal](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/lefttransversal.md) | 723 | `declaration-track:034d7e509c320bf6dfd98ebf031c568e32f43d3328a9e854f1b835dfa7c5e259` |
| 94 | `abbrev` | [RightTransversal](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/righttransversal.md) | 727 | `declaration-track:f0f47e01a574b361c0f7266743b0123e8d7f7496b2647a3350df93c74684eed6` |
| 95 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/instance-source-edition-3.md) | 732 | `declaration-track:e63c20482819fc0f39744e8e32e19c65ec4c07a7d4cf3a98ab38ee90b2a56039` |
| 96 | `theorem` | [smul_toLeftFun](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/smul-toleftfun.md) | 747 | `result-track:43430a859fa97858408aa9db6ee676406d84633e34c0e03fd0da633950a2e145` |
| 97 | `theorem` | [smul_leftQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/smul-leftquotientequiv.md) | 757 | `result-track:dd0f36e21dea5e6bda9f867401910b2116cfe9fd37bbb7a3aaab4300cb1faccd` |
| 98 | `theorem` | [smul_apply_eq_smul_apply_inv_smul](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/smul-apply-eq-smul-apply-inv-smul.md) | 762 | `result-track:d59b673758eaf3593986d5e2adafd027846a5d85f758eb3d3c40ae55724b6be6` |
| 99 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/instance.md) | 769 | `declaration-track:4608d4b995784d222e033240b92b729e188ec63c2f46619817aff401296bf0b7` |
| 100 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/instance-source-edition-2.md) | 773 | `declaration-track:de22c31c713978bb738a7257aeb75e8ff5cd6271a6f4f253bf42f154ac380857` |
| 101 | `theorem` | [IsComplement'.isCompl](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-iscompl.md) | 776 | `result-track:ea9486a1cf872b6a221d42ff26ac1bd50dc37b697325b5a8cab25b3e0469112a` |
| 102 | `theorem` | [IsComplement'.sup_eq_top](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-sup-eq-top.md) | 787 | `result-track:278b690f8e2e2258f66e65b0a984c5609f9c0d1ad4cfef754152c6418243fb79` |
| 103 | `theorem` | [IsComplement'.disjoint](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-disjoint.md) | 790 | `result-track:e585003ef327a04e832f25a1273e278baa84596e49b016ee36c2b9773507647b` |
| 104 | `theorem` | [IsComplement'.index_eq_card](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-index-eq-card.md) | 793 | `result-track:93ce173868f6ef1334cb8bb1f3786ae50744e054d4932ecab6210177662e0cdb` |
| 105 | `def` | [IsComplement'.QuotientMulEquiv](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-quotientmulequiv.md) | 798 | `declaration-track:553c2dcde8b4f97d74161a8bdc0a5917635f92c3644aaadbd84db41a25ac6a0c` |
| 106 | `theorem` | [IsComplement.card_mul](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-card-mul.md) | 804 | `result-track:2e6d367bce7368ec5786a6603b861adea5346b4a8d2aed494383c16c1498807d` |
| 107 | `theorem` | [IsComplement'.card_mul](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-card-mul-source-edition-2.md) | 808 | `result-track:e0410976255543ffcf43468d83aa4bf83b45a1e8cf9a9068799e39da846a74b8` |
| 108 | `theorem` | [isComplement'_of_disjoint_and_mul_eq_univ](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-of-disjoint-and-mul-eq-univ.md) | 812 | `result-track:018c9437fd2f7992dbb626a5fe870f7103889e43b1c9a5acbe36e4496f8a6d06` |
| 109 | `theorem` | [isComplement'_of_card_mul_and_disjoint](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-of-card-mul-and-disjoint.md) | 818 | `result-track:ea9f891ec1624c0b62c5677591f601211b9bf1e472c67b4ae82a90f15fbb27a7` |
| 110 | `theorem` | [isComplement'_iff_card_mul_and_disjoint](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-iff-card-mul-and-disjoint.md) | 824 | `result-track:85f9f1cbc30ef7c28791f9582c3300902300c6995e9499510174f8016f32762e` |
| 111 | `theorem` | [isComplement'_of_coprime](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-of-coprime.md) | 828 | `result-track:f4cef455ae78ea6a5f66e1e5151685908d5aa86562027f7f2b8b3046917815fb` |
| 112 | `theorem` | [isComplement'_stabilizer](../../../../GroupTheoryAndGeneralizations/ComplementNamespacedIsComplementUnivSingleton.lean/declarations/iscomplement-stabilizer.md) | 833 | `result-track:0d38cd1d0e5b59ca3155b86697fa0fdf87bef295ce216f4cd4825fdf0c4bd688` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=411b3515afb8025e8e32eb58da06fcdf9c1f7db03cb9b365e838e457f13a9b97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Complement/Variant1fc5847dcd75827362fd63eba20f99d583fdf6f26a11d649a04ac1224ceed175.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Complement/Variant1fc5847dcd75827362fd63eba20f99d583fdf6f26a11d649a04ac1224ceed175.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
