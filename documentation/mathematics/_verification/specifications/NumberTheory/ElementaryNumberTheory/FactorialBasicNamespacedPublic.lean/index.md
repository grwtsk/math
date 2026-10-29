# Verification target: Factorial Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88b49af15be7601bb308f21811d58f4ab718cc15",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88b49af15be7601bb308f21811d58f4ab718cc15`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial.md) | 45 | `declaration-track:2e618472b00244c571137e8fe505587e7479fc241cf2aac818f573697b91897c` |
| 2 | `theorem` | [factorial_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-zero.md) | 61 | `result-track:3ed831e47d4b78c84c057ff0cc40b85d75122c1bb7d306c64f841b54ed1aa2d3` |
| 3 | `theorem` | [factorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-succ.md) | 64 | `result-track:72f3afa38a6ffe80fe952f7e756bd13d42f888916ee3548d7a381b2f112fdded` |
| 4 | `theorem` | [factorial_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-one.md) | 68 | `result-track:035a2a026c9b8488af142ff30036574bd9fb7c08e3ad44da0a9192d000438e16` |
| 5 | `theorem` | [factorial_two](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-two.md) | 71 | `result-track:c7e95a6521538f98dd5d6c708c102a5ad20b573d9e808c8762f23e6213dde80d` |
| 6 | `theorem` | [mul_factorial_pred](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/mul-factorial-pred.md) | 74 | `result-track:9ebc2a63cb6064a0b82ae503d7312eccbcf9aafc4b418e798b2408efeb414609` |
| 7 | `theorem` | [factorial_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-pos.md) | 77 | `result-track:ba637a830c31066e4270502836221f484594e6c1b33ace6271e89e35e8659a81` |
| 8 | `theorem` | [factorial_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-ne-zero.md) | 81 | `result-track:b6aa1303a926270d733734178a02574af773acded062ba07d8db92e52595dc47` |
| 9 | `theorem` | [factorial_dvd_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-dvd-factorial.md) | 85 | `result-track:3a8f6c42009d925ee4c5050624d510ab62b7efd88e1bb29313338cf1d67f1d39` |
| 10 | `theorem` | [dvd_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/dvd-factorial.md) | 90 | `result-track:15132d38300c2ab60b212c21e529a91867968caade2dad91c16b0617b8c3f852` |
| 11 | `theorem` | [factorial_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-le.md) | 94 | `result-track:3d4b04810904d6be2879db04e69a4697232f7d6a3897c9fa9234ee09bd68e213` |
| 12 | `theorem` | [factorial_mul_pow_le_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-mul-pow-le-factorial.md) | 97 | `result-track:762e72d1e5e0abdbaeab4e93c6a6c8a215a04676598e200150071b2eef7dad0e` |
| 13 | `theorem` | [factorial_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-lt.md) | 103 | `result-track:0a26b4bc602763d2c703cbc5a5aab1181d888ef24098418a663c6d720f473d21` |
| 14 | `lemma` | [factorial_lt_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-lt-of-lt.md) | 114 | `result-track:364464cf9fde291090cb5cf968778d5c258b4a30e516590e5965d520a9998d33` |
| 15 | `lemma` | [one_lt_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/one-lt-factorial.md) | 116 | `result-track:e34ed00d4c70b99f9ff0c4d47b72ec4174da2bbb0929b9e1e00d745613cab4a5` |
| 16 | `theorem` | [factorial_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-eq-one.md) | 119 | `result-track:6ed2e99d5013dd7066d844c910802c256dd53f7633399fcba03194d07e1e2389` |
| 17 | `theorem` | [factorial_inj](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-inj.md) | 126 | `result-track:0e0100510fb8c0c661a3fe99578986208af58506760ef25474ec3cbe1bcbd3c2` |
| 18 | `theorem` | [factorial_inj'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-inj-source-edition-2.md) | 136 | `result-track:d6f19e45a62afd2fd6270b00663b084e1717b0b396871f6c03e548e2bf5cdf7b` |
| 19 | `theorem` | [self_le_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/self-le-factorial.md) | 141 | `result-track:42cf267e1083b40bd1bd4571d5ef295128b263da868c708243ffbd32ec216f2a` |
| 20 | `theorem` | [lt_factorial_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/lt-factorial-self.md) | 145 | `result-track:937c2f59f2ac42bfca7f0feb029469128dbc95548ee14d7bed5a017ff54f1809` |
| 21 | `theorem` | [add_factorial_succ_lt_factorial_add_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/add-factorial-succ-lt-factorial-add-succ.md) | 152 | `result-track:62c416f509ef9329eeb9d4e7c61e0a75a583af820136d64ca8999d2906c2daf9` |
| 22 | `theorem` | [add_factorial_lt_factorial_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/add-factorial-lt-factorial-add.md) | 159 | `result-track:04dfa05d40619c8c3d4bf89c8f7e72201244fa8b8b3240950461bc809bd76565` |
| 23 | `theorem` | [add_factorial_succ_le_factorial_add_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/add-factorial-succ-le-factorial-add-succ.md) | 166 | `result-track:6a8b27fd1e8a76eab24702f1d312770d837a7a3cd06c3c86ff5c5c08fc5343ef` |
| 24 | `theorem` | [add_factorial_le_factorial_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/add-factorial-le-factorial-add.md) | 181 | `result-track:b24f059ddc3259ff0298d46d3d63abb00f34e977c3a03f1a4b0e22795223e3eb` |
| 25 | `theorem` | [factorial_mul_pow_sub_le_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-mul-pow-sub-le-factorial.md) | 186 | `result-track:8ac7fcd815971bc12c1ade02bf2cd0ad8a08cf7fe69e636ed9b361d7b2284748` |
| 26 | `lemma` | [factorial_le_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-le-pow.md) | 191 | `result-track:c1337748f449af7269cc2da8ef112aae980959eb4edd4a8145e9c003cbc6d7aa` |
| 27 | `def` | [ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial.md) | 208 | `declaration-track:131c535a4c302a000b160005a37aee78acb8a13bea015931aad91bc8cb041cdb` |
| 28 | `theorem` | [ascFactorial_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-zero.md) | 213 | `result-track:30f05f155722054c05932b3e72505e86192e3d850fe3c4d1cc393fe06a873673` |
| 29 | `theorem` | [ascFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-succ.md) | 216 | `result-track:944a1d79728088f3dace1b486c45edb2e58ad0749370b8e25f709f39e036cc32` |
| 30 | `theorem` | [zero_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/zero-ascfactorial.md) | 219 | `result-track:a4f98bae8f1cbfdc1a28b2a8a8ff40a4c6528dbac029285e46b993bef2430ef1` |
| 31 | `theorem` | [one_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/one-ascfactorial.md) | 226 | `result-track:021d140d0ff9cd402e120f5359bbf7db0bd7a14b44b1a31570d1d8dc03f6e4b3` |
| 32 | `theorem` | [succ_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/succ-ascfactorial.md) | 231 | `result-track:18edbfa8080f40fe3f94748c24f1f0a4e55a76675f96e0cbf9bbecae1c6fd915` |
| 33 | `theorem` | [factorial_mul_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-mul-ascfactorial.md) | 239 | `result-track:743952e93f804a06b28ffce8f3f173a2e707d892800c00d033dc0c689672881a` |
| 34 | `theorem` | [factorial_mul_ascFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-mul-ascfactorial-source-edition-2.md) | 248 | `result-track:a8a8484acb15cafc1c23151600793b2f8560e90450396cbb458eee459318a5de` |
| 35 | `theorem` | [ascFactorial_mul_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-mul-ascfactorial.md) | 254 | `result-track:ddd46be0d8fc8cbae01ca6c40f9e8fb2eeb5de616f76debe1cd678b924a05356` |
| 36 | `theorem` | [ascFactorial_eq_div](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-eq-div-source-edition-2.md) | 267 | `result-track:fc3245bf2589050adf3757fe1ad103d749cee102c1dd2504df5d33df6309ffc0` |
| 37 | `theorem` | [ascFactorial_eq_div'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-eq-div.md) | 271 | `result-track:0c9b6ca0d77372d0c0ba744c62a27c7bfeb9b0a55a0a83df1607b1e5340081db` |
| 38 | `theorem` | [ascFactorial_of_sub](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-of-sub.md) | 275 | `result-track:8473e19bdc1efbbecc521e71382cc3dadaaba2ea41f2fd2cb3f66bb16fbcfd0e` |
| 39 | `theorem` | [ascFactorial_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-le.md) | 280 | `result-track:684982700c3365f8adf457aa6fc9f4f364cfc27de3d92198d01a50df17a722af` |
| 40 | `theorem` | [pow_succ_le_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/pow-succ-le-ascfactorial.md) | 286 | `result-track:41dc7a350833b993a3c49c6328431bb7d697435c14b691649798320807adf183` |
| 41 | `theorem` | [pow_lt_ascFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/pow-lt-ascfactorial-source-edition-2.md) | 293 | `result-track:562678b5f00a81caf5c66266e86f99d9c17f1fb495cbb91fffc4f42f9c911b49` |
| 42 | `theorem` | [pow_lt_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/pow-lt-ascfactorial.md) | 298 | `result-track:3322d860c494ffaf165752ce0764b032a076c2895d203fa5d1738d85cf7dd325` |
| 43 | `theorem` | [ascFactorial_le_pow_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-le-pow-add.md) | 303 | `result-track:a5691ee013cee0dba4e2305b3d473983ba5ad911b3ebb8c7fdf0511419638219` |
| 44 | `theorem` | [ascFactorial_le_factorial_mul_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-le-factorial-mul-pow.md) | 310 | `result-track:b0e1b19d661e2d715f24a3458ec33c35b4bfef1b70113e2ae66156f6666ffc1e` |
| 45 | `theorem` | [ascFactorial_lt_pow_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-lt-pow-add.md) | 322 | `result-track:c3a8653459202612d77ca6ea2089e98e1e65949133b816ad2a448ccd897da0de` |
| 46 | `theorem` | [ascFactorial_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-pos.md) | 330 | `result-track:8ed8c44a7f0f2af32328552f7e0451853ae01a68846b3cf8f89b65702269859d` |
| 47 | `def` | [descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial.md) | 340 | `declaration-track:64366969cb13214e21a0de0e8f30753966836377c1a3191ebe6ce66dcb1ec466` |
| 48 | `theorem` | [descFactorial_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-zero.md) | 345 | `result-track:e3126eee429869e79d990d88e373e0626dfc0fb2f63f264668393cc265c04f63` |
| 49 | `theorem` | [descFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-succ.md) | 349 | `result-track:724c1f7521b9cb6786213b4aa80a04f6eb78b216726c65b5ab74e56528fe6c08` |
| 50 | `theorem` | [zero_descFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/zero-descfactorial-succ.md) | 352 | `result-track:a10566331a63ae81f7faac39c9a734504b0ea44b2dbf9ecfa101784e309b95ce` |
| 51 | `theorem` | [descFactorial_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-one.md) | 355 | `result-track:2c213b83d09b42edad3c80ded811441dbb7856ca5415ac53c9f7393b8108dcb8` |
| 52 | `theorem` | [succ_descFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/succ-descfactorial-succ.md) | 357 | `result-track:4006ba7b3c5d333e6a83f550af13eb0620c7c88396e42d622d3b5d75df525bd2` |
| 53 | `theorem` | [succ_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/succ-descfactorial.md) | 364 | `result-track:a32112de95be77443e5eea46a07ded35838a851eef3963b39b8596f1bbea49e4` |
| 54 | `theorem` | [descFactorial_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-self.md) | 370 | `result-track:638bec094a661979b9d620e01e1bbae1101e8a04658bc45dbcde006d2bde3f62` |
| 55 | `theorem` | [descFactorial_eq_zero_iff_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-eq-zero-iff-lt.md) | 375 | `result-track:e452e66d31f4765b8e9eefd7a3c41d1fffcd0e84da3150d61da9ecff122f8f6f` |
| 56 | `lemma` | [descFactorial_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-pos.md) | 383 | `result-track:ba6f0c5888717fdd03ea8984c96755ff3fff7512048fb06c829c92120e5a9c50` |
| 57 | `theorem` | [descFactorial_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-mul-self.md) | 387 | `result-track:0ade1496b760278cf9c78d02c984411a6a5afdeb8612269b11fc35993a4afb66` |
| 58 | `theorem` | [add_descFactorial_eq_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/add-descfactorial-eq-ascfactorial-source-edition-2.md) | 393 | `result-track:f4e08cffb27f677b65819af935dbeaaf1aa20405edf476a36ba11255582d39c3` |
| 59 | `theorem` | [add_descFactorial_eq_ascFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/add-descfactorial-eq-ascfactorial.md) | 400 | `result-track:9ce649617d886ee1a1a79a8a93b68cda94e98f9639af41038dbc7f773de2b6c2` |
| 60 | `theorem` | [factorial_mul_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-mul-descfactorial.md) | 410 | `result-track:a9d736cdc4425a48c6eeb06cc0ea15f15949d2f214e0d1a5f2a198937e62fea7` |
| 61 | `theorem` | [descFactorial_mul_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-mul-descfactorial.md) | 419 | `result-track:0eec065c1a3a15de21627360dd01110bf02508650131f1167155f106472c48bd` |
| 62 | `theorem` | [descFactorial_eq_div](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-eq-div.md) | 432 | `result-track:5e4630a18df793c76c38e6e4c3e514dbb69099422e41a2e66dfb4b422466e06a` |
| 63 | `theorem` | [descFactorial_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-le.md) | 438 | `result-track:6c2e0a86974a916b810fb8c71c7f7c79f1d6f463023a7ee483363d04ec55e58a` |
| 64 | `theorem` | [pow_sub_le_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/pow-sub-le-descfactorial.md) | 446 | `result-track:04606d923a4adf89698c80510397a92371599b77b996c624a192b29d93d281ca` |
| 65 | `theorem` | [pow_sub_lt_descFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/pow-sub-lt-descfactorial-source-edition-2.md) | 454 | `result-track:c91768afe1b391fc7c48a1305961f5dee8f99aa9e6f5c4def699b804b99508ff` |
| 66 | `theorem` | [pow_sub_lt_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/pow-sub-lt-descfactorial.md) | 466 | `result-track:91da950806e28ae095f1d2d2dee0e36d58275a86fbf7f6a17cac66ce5483757e` |
| 67 | `theorem` | [descFactorial_le_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-le-pow.md) | 474 | `result-track:4a1172952840b10b28da6d75ddf2ffff4abc9b8ee10542ab00f303fe29777b8e` |
| 68 | `theorem` | [descFactorial_lt_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-lt-pow.md) | 480 | `result-track:3ede6512996feacbba4eafc796dfbcd99c10a7385c6ee49610b23a9fbff4957e` |
| 69 | `lemma` | [factorial_two_mul_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-two-mul-le.md) | 489 | `result-track:3191cf6755eadafd32f21c93f9d148ae4deb346d772ca24fbc3578fe94f6076b` |
| 70 | `lemma` | [two_pow_mul_factorial_le_factorial_two_mul](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/two-pow-mul-factorial-le-factorial-two-mul.md) | 493 | `result-track:fd5b60d5971cc656dc9b7a3d939aa099802e1b9049513f153c6b8d946e49627d` |
| 71 | `def` | [ascFactorialBinary](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorialbinary.md) | 530 | `declaration-track:f5b9d1907c6564d5862b021f4b303aa3da6938267e03a456070a52a3cff85861` |
| 72 | `lemma` | [ascFactorial_eq_ascFactorialBinary](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/ascfactorial-eq-ascfactorialbinary.md) | 537 | `result-track:9c88cba11136c0fc3e6fda58afacd0995fef84ee69536f4234c2e6e6725222f2` |
| 73 | `def` | [factorialBinarySplitting](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorialbinarysplitting.md) | 548 | `declaration-track:0d3e2db7a1b984dc781d4124d8ac5a4bb0094406c3ceaf1225dc9d8099816cc1` |
| 74 | `theorem` | [factorial_eq_factorialBinarySplitting](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/factorial-eq-factorialbinarysplitting.md) | 552 | `result-track:1a3da6d1758162f112dc196dcc137863bfd43fb9db492d715f70bf13d10ea249` |
| 75 | `def` | [descFactorialBinary](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorialbinary.md) | 557 | `declaration-track:3e4835cb675ee0d00355108257d78898563637319a84525d37f5342fdf11c7ea` |
| 76 | `theorem` | [descFactorial_eq_descFactorialBinary](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicNamespacedPublic.lean/declarations/descfactorial-eq-descfactorialbinary.md) | 562 | `result-track:71740bec25c9f39984ca9f255155b63ea59f78292139d3502900fa0d24bfab90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad6e3943e3d16aae9bf47d87a839ec6bb5bc148abc74d4d28872bada321b48ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2bf3c7ea9001511bc894fe326721627029e8ac7c94a126702f39e0e9eabc5e9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
