# Verification target: Real Irrational Irrational Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a264b41b868409109de58f2d3190364ed62ab8d",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Irrational/Variant2dff63c82e2d3798047105aec5a065dbe534a7aefa8ae6c7985bb18b7ae5c7eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a264b41b868409109de58f2d3190364ed62ab8d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Irrational/Variant2dff63c82e2d3798047105aec5a065dbe534a7aefa8ae6c7985bb18b7ae5c7eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Irrational/Variant2dff63c82e2d3798047105aec5a065dbe534a7aefa8ae6c7985bb18b7ae5c7eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Sqrt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Irrational](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational.md) | 39 | `declaration-track:22f0f2628c82a35dd5bc67258f64136ec26d1b08ee26eb0624a167a18a1bbc5e` |
| 2 | `theorem` | [irrational_iff_ne_rational](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-iff-ne-rational.md) | 42 | `result-track:462afec84ed8500b77167b8e3fd5daf4aa30c8609e687c5eef8e7a64962780d0` |
| 3 | `theorem` | [Transcendental.irrational](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/transcendental-irrational.md) | 47 | `result-track:4d2ed9ea2a981844fdfaa137b5391dfabf6ad31f384ac6643080913103c4dc5e` |
| 4 | `theorem` | [irrational_nrt_of_notint_nrt](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-nrt-of-notint-nrt.md) | 58 | `result-track:8fc7f85fab2e1ccf65d0eb13817a928008be63a40600900135fc5ef8d730af65` |
| 5 | `theorem` | [irrational_nrt_of_n_not_dvd_multiplicity](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-nrt-of-n-not-dvd-multiplicity.md) | 77 | `result-track:7496c90fc7491c7cfc5fad982e68f7b34e2d4689b437d5d2b80d231f3790a38f` |
| 6 | `theorem` | [irrational_sqrt_of_multiplicity_odd](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sqrt-of-multiplicity-odd.md) | 94 | `result-track:5c4cfa757a0526b145b435ef5ea91a62fe647b9d410d308c06025531c0a07d4f` |
| 7 | `theorem` | [not_irrational_zero](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/not-irrational-zero.md) | 100 | `result-track:ad60e293e4533f6fc58c02c6d6c9303ce9259c648b20ec33ac8f2982ab93c733` |
| 8 | `theorem` | [not_irrational_one](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/not-irrational-one.md) | 101 | `result-track:208835d25467c9efef1ec9f53c6cd1f8a1eaae7582b3c45038002e1145c9e358` |
| 9 | `theorem` | [irrational_sqrt_ratCast_iff_of_nonneg](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sqrt-ratcast-iff-of-nonneg.md) | 103 | `result-track:96787d9478f0487c606aad7cf22e466f8417369b5eb997404464c944b4a7d2e2` |
| 10 | `theorem` | [irrational_sqrt_ratCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sqrt-ratcast-iff.md) | 113 | `result-track:1a43e7c1555ba536fb6f0499c9a264e5c72e4f33150266ebb96b066e051d2380` |
| 11 | `theorem` | [irrational_sqrt_intCast_iff_of_nonneg](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sqrt-intcast-iff-of-nonneg.md) | 120 | `result-track:4059148f32508e12a53dfaff2b0e210d254938f2fb2a4887ae07838994e5adeb` |
| 12 | `theorem` | [irrational_sqrt_intCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sqrt-intcast-iff.md) | 125 | `result-track:52a1b046b533655380814f5f51d72c525cbc4162e481f7dc06a4eb6357ffc5a6` |
| 13 | `theorem` | [irrational_sqrt_natCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sqrt-natcast-iff.md) | 129 | `result-track:fd8107fd2b66678473c9734ec20bbae47e047d86eae7bb726c0a2f2de9e8c34b` |
| 14 | `theorem` | [irrational_sqrt_ofNat_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sqrt-ofnat-iff.md) | 133 | `result-track:ab654cae2f457718ace352051f764df7608ebe6f6a882d7fa06456a57b9aa7e1` |
| 15 | `theorem` | [Nat.Prime.irrational_sqrt](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/nat-prime-irrational-sqrt.md) | 137 | `result-track:c44bac389de3bf75569ad5e27a5be2aad5f212533c513cded0117552643b21d6` |
| 16 | `theorem` | [irrational_sqrt_two](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sqrt-two.md) | 141 | `result-track:bd1444b5155a1c004a27c98b2dc8492502a352de6c285db03db42dcb32481a0e` |
| 17 | `instance` | [(anonymous)](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 151 | `declaration-track:e08308e32ee31c2ef491530151b73c97c772d92b223934f448a111bfd500454c` |
| 18 | `instance` | [(anonymous)](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 154 | `declaration-track:72799863e8402d7efa8670d2c67b39e8fde8e03f8f6ebb07cbad56c96716a504` |
| 19 | `instance` | [(anonymous)](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/instance.md) | 157 | `declaration-track:39ee45fba9d625f6a7405c59f1985507977c3c25020a51a22f25855c39d4784c` |
| 20 | `instance` | [(anonymous)](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 160 | `declaration-track:a20e1b0377fba09272bd73f424f2e10bbd412f14c203684bc0c9e7917465c713` |
| 21 | `theorem` | [ne_rat](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ne-rat.md) | 179 | `result-track:e34389d91eb29218399ee11a73ba360c58341167b9534749839496f77e31c459` |
| 22 | `theorem` | [ne_int](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ne-int.md) | 181 | `result-track:e26b786c065e1a516e2909689698dcb51cf63134929862449f66dea7af2be953` |
| 23 | `theorem` | [ne_nat](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ne-nat.md) | 185 | `result-track:6fdb05272a53aad1d54a1234e0f2a860ffedcfc9c0c56f8a172858a6ee69c35e` |
| 24 | `theorem` | [ne_zero](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ne-zero.md) | 188 | `result-track:afbf3b1de629fb39880c64447fe421931985d865ab62b15da334e01fe1d41759` |
| 25 | `theorem` | [ne_one](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ne-one.md) | 190 | `result-track:820373f401d1b35ff6bc492f8c3aa00d20d95a6b43dc9ffd192a75867160ce53` |
| 26 | `theorem` | [ne_ofNat](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ne-ofnat.md) | 192 | `result-track:07014cd1042ed8dfebdd5b28ee45350f4d6e835ce1c2c30b11d0646451ba2027` |
| 27 | `theorem` | [Rat.not_irrational](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/rat-not-irrational.md) | 198 | `result-track:408c9d45aeefa1a277a849cc0f6b465fe24c73d16ce19d8ecf4cbb82e202f482` |
| 28 | `theorem` | [Int.not_irrational](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/int-not-irrational.md) | 201 | `result-track:08b0c1bd58d56f9de8cf67e2b6ff3200b2c90cdd451c404850e66b50ed311b2e` |
| 29 | `theorem` | [Nat.not_irrational](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/nat-not-irrational.md) | 204 | `result-track:9cd857d2ca88c1595ee531625492fd2e1bd51b0ddc210dbaa42a038028bde64c` |
| 30 | `theorem` | [not_irrational_ofNat](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/not-irrational-ofnat.md) | 206 | `result-track:3e247313ce20cb8fec853bbdd991037e82f5ee3c79401fd5caf10024e706286a` |
| 31 | `theorem` | [add_cases](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/add-cases.md) | 218 | `result-track:3394f7668691d22af9ffa06853ae61ae6ed36ea7c88fcec13a24d37b534c3ad6` |
| 32 | `theorem` | [of_ratCast_add](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-ratcast-add.md) | 224 | `result-track:fc57915dc87366332284f73493dc01cf68c9a0d779e9ebc0acf3bf58f3d3b20d` |
| 33 | `theorem` | [ratCast_add](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ratcast-add.md) | 228 | `result-track:486856998bbca275981473265daaa907ed9f911b153f2ebc94d639660daa7d12` |
| 34 | `theorem` | [of_add_ratCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-add-ratcast.md) | 232 | `result-track:207ed2ff98fd0a433ff93b376c40b92c8480c8127064ba67858b846e5a6407db` |
| 35 | `theorem` | [add_ratCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/add-ratcast.md) | 236 | `result-track:6181e09d2eb31ba6c3649f1c0559e80dfce0970fccd4d80134a0edbe1e71ce27` |
| 36 | `theorem` | [of_intCast_add](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-intcast-add.md) | 240 | `result-track:0deb9b3d60ee5e9579926afae4423804c5e875089a9b29b24a223218d24c1c4c` |
| 37 | `theorem` | [of_add_intCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-add-intcast.md) | 245 | `result-track:6a99616917bd0712a00a04e13c40c304baffb581e6341407a41ba0856626bcf0` |
| 38 | `theorem` | [intCast_add](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/intcast-add.md) | 249 | `result-track:ad4faee1c9b47773c64a67c6ea2ff49780fbbb260e2ad3127f29b13bdb174871` |
| 39 | `theorem` | [add_intCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/add-intcast.md) | 255 | `result-track:8304a145ee586ab16179b040ce4adbeef886a4d15833ab8db2c0aa62e9d42560` |
| 40 | `theorem` | [of_natCast_add](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-natcast-add.md) | 259 | `result-track:1caac2b460038a03b01e5ab52ae09e4f28b231f482906746118c1b122418a6d9` |
| 41 | `theorem` | [of_add_natCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-add-natcast.md) | 263 | `result-track:d6883e083db83ab6ce4bd7b6e1d73942fd828686e37633aad000ffc2e6fd09db` |
| 42 | `theorem` | [natCast_add](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/natcast-add.md) | 267 | `result-track:92e7b824ea01a81d75395eed3f516faecab4de1e017a60d155e2ef31568f15c7` |
| 43 | `theorem` | [add_natCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/add-natcast.md) | 271 | `result-track:9889543b72950a050bf51217f9413d9b111a980d1103d92024ece2927754e868` |
| 44 | `theorem` | [of_neg](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-neg.md) | 280 | `result-track:9bec622ee950c548317acfb045bfebc090da5f9305e714985d8e4a8394b900fa` |
| 45 | `theorem` | [neg](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/neg.md) | 282 | `result-track:62a73515ccbea8e8be7f4850c1a364624fa17be894ba70fd7fb375c18b82a251` |
| 46 | `theorem` | [sub_ratCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/sub-ratcast.md) | 290 | `result-track:43e08115b18d693a08724cd0c7ac4b732cae6a45c12493be4d1eded554678e32` |
| 47 | `theorem` | [ratCast_sub](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ratcast-sub.md) | 294 | `result-track:b15223d6bf90866726a8408acc115817f8e28d419db3668fcab79500af2c7021` |
| 48 | `theorem` | [of_sub_ratCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-sub-ratcast.md) | 298 | `result-track:2b901d03c18f248982a0fed56d519a140328c421d7972f92274aef58ebafc187` |
| 49 | `theorem` | [of_ratCast_sub](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-ratcast-sub.md) | 302 | `result-track:73a7f2f6a1eda82aefd006ea43985317fd655c16bc262afb41e4623e16821809` |
| 50 | `theorem` | [sub_intCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/sub-intcast.md) | 306 | `result-track:950f4645ed65c068c0cec1de8c3b8b78952424e5a6e2a2344ddeffe60fedf3ab` |
| 51 | `theorem` | [intCast_sub](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/intcast-sub.md) | 310 | `result-track:c05448281bd7fdb51ccee9f973bd6dba027856966eff61d5c45a07022fe62a47` |
| 52 | `theorem` | [of_sub_intCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-sub-intcast.md) | 314 | `result-track:13ca0e0d709d4831c9e32ac890c0d9ed05057a0f5d10615d57b55022e9f0df87` |
| 53 | `theorem` | [of_intCast_sub](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-intcast-sub.md) | 318 | `result-track:0c2134467855968428d117c95a40740ebf5dd94b0e1a4ecec159453440d64bb3` |
| 54 | `theorem` | [sub_natCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/sub-natcast.md) | 322 | `result-track:3e16095a353ba517f1c9d359cf8c91571cfd4b97507944ccd0a84f20187a6016` |
| 55 | `theorem` | [natCast_sub](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/natcast-sub.md) | 326 | `result-track:e0ec7984c028bf05c1248171f743f980e6ec36a6ca746281c59a48dd3f92384a` |
| 56 | `theorem` | [of_sub_natCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-sub-natcast.md) | 330 | `result-track:1a96b84ace24b47c4016b9343c46bc90772340d3c2ffaae68f49c5b8869fe345` |
| 57 | `theorem` | [of_natCast_sub](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-natcast-sub.md) | 334 | `result-track:3860aac14fe151e5b52261098a070056d0dd1331869e328c589a402c57bac634` |
| 58 | `theorem` | [mul_cases](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/mul-cases.md) | 343 | `result-track:90087d9b1f2d53f832c28d4f56dd3ac7bd0ca9f6e233f03889157f3b1c2e4251` |
| 59 | `theorem` | [of_mul_ratCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-mul-ratcast.md) | 349 | `result-track:21feccda257426744c162dc33fec068ec68c6af40e09cdc2fd2847f4ce8a1228` |
| 60 | `theorem` | [mul_ratCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/mul-ratcast.md) | 353 | `result-track:ed3074d866d737ce4a54bb2ce38293f28e7866456df305697f4be8b74b792ebe` |
| 61 | `theorem` | [of_ratCast_mul](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-ratcast-mul.md) | 357 | `result-track:5d9cb398da3fb58c7c184ace73f5da07ac616f9c2de5b7801dff1f15075309db` |
| 62 | `theorem` | [ratCast_mul](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ratcast-mul.md) | 361 | `result-track:60ac5a0cf943fb718f30f70860d334704d0dde82713d98609e5c1de191c1b6f3` |
| 63 | `theorem` | [of_mul_intCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-mul-intcast.md) | 365 | `result-track:cd8e631830c3e04ecdd7c73bb056efb9c67f0f5d0b03d4cfa278772d86c2d0cb` |
| 64 | `theorem` | [of_intCast_mul](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-intcast-mul.md) | 369 | `result-track:006c98834fa5bde3f6ba8d9d69d166681e77022d659ea4df7ccd4946304282a5` |
| 65 | `theorem` | [mul_intCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/mul-intcast.md) | 373 | `result-track:c01bf841df477de9a76ca4b219f3129079ebf1cf57001e7d405f4cdae8c31954` |
| 66 | `theorem` | [intCast_mul](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/intcast-mul.md) | 379 | `result-track:b91b93d03c98e05dd06c40156f4fedb5abb75891b74dca551fac493876e93a5b` |
| 67 | `theorem` | [of_mul_natCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-mul-natcast.md) | 383 | `result-track:c1c5820c7819ffd668c0e7ae1842bf275ff0a03caf26e4c377167b7d39014d30` |
| 68 | `theorem` | [of_natCast_mul](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-natcast-mul.md) | 387 | `result-track:c0c04bb09de8e6313c931815e45fff1848b83a20fd5e51717aa3042aa59b0d54` |
| 69 | `theorem` | [mul_natCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/mul-natcast.md) | 391 | `result-track:54cab903599e277f94c44d69402801efc4f72faf1465e3bf99eddc84d327ef72` |
| 70 | `theorem` | [natCast_mul](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/natcast-mul.md) | 395 | `result-track:eebd840f8579f96860cfcf860bfbc20fb8ffc032b925db981e929e051b2b5232` |
| 71 | `theorem` | [of_inv](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-inv.md) | 404 | `result-track:0bb769c144a078af0965c6e3a131ee83abf9304a1c278ccf4aeff31c75b131f7` |
| 72 | `theorem` | [inv](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/inv.md) | 406 | `result-track:6441f673773660723b4ecf08a4612c99e7b3c648cc749e77016a1c8e87c0f478` |
| 73 | `theorem` | [div_cases](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/div-cases.md) | 414 | `result-track:4eaaf9c2d62bbf104fc1e7ef9450dbb6b7f9d7161042287c0c540b592a070601` |
| 74 | `theorem` | [of_ratCast_div](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-ratcast-div.md) | 417 | `result-track:03283c4cd49c714c63ea265190ced9325d89cfbd071042a7d72445f88d2e97f9` |
| 75 | `theorem` | [of_div_ratCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-div-ratcast.md) | 421 | `result-track:48b7e22fe8255beee7b6b94ba38ebc3b5d910240d62219502d35b76392c3868a` |
| 76 | `theorem` | [ratCast_div](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/ratcast-div.md) | 425 | `result-track:a0f62bedd62553ca450aa2ce41ce64fc16beca065aa33ee1ff27e68f9ca0d82b` |
| 77 | `theorem` | [div_ratCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/div-ratcast.md) | 429 | `result-track:5da79a6c9b45dfc57e22f21041689cda74bf197252ba5f48f9e9c5eef0878b09` |
| 78 | `theorem` | [of_intCast_div](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-intcast-div.md) | 434 | `result-track:89bbe046100a7dbe38eb36829f8540654b95496048e4a93c071ecf26c0bea6aa` |
| 79 | `theorem` | [of_div_intCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-div-intcast.md) | 438 | `result-track:4fe452355b813c83de35ef4d48a4865807ff840b2884fd632a93f6074dfc47cc` |
| 80 | `theorem` | [intCast_div](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/intcast-div.md) | 442 | `result-track:6d336e525268ba3d0da713607882f6adc20fa604035108c25611bb2c8db81fc2` |
| 81 | `theorem` | [div_intCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/div-intcast.md) | 446 | `result-track:f2e1706b1db3654e5ecdb69ffa76886ce2cc0e40df17556af7a5f45039a52ca1` |
| 82 | `theorem` | [of_natCast_div](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-natcast-div.md) | 452 | `result-track:6b0db4f013e41d48ca2c95d737935512224db51ac1b2c0b4607aa9aa0709d662` |
| 83 | `theorem` | [of_div_natCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-div-natcast.md) | 456 | `result-track:48fa0913079fb78dfa9b4df42002e879ad95df8dbd573ced204c062b1157f16d` |
| 84 | `theorem` | [natCast_div](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/natcast-div.md) | 460 | `result-track:8c33f0cad1d20ce647a86c52784558d1938a7eee94920c9ec69e9e7faa72a06e` |
| 85 | `theorem` | [div_natCast](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/div-natcast.md) | 464 | `result-track:baa6cefa2db39b399f62933693a837340b6e7e8b0eac15b3b2a5a990fb18b679` |
| 86 | `theorem` | [of_one_div](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-one-div.md) | 468 | `result-track:f28fd5fdd1cc5f66aa6e2b08d412bbd2b570a4025a4f0b65d3fb35ee5b0e8b19` |
| 87 | `theorem` | [of_mul_self](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-mul-self.md) | 476 | `result-track:5969d5d40c1f348dc2c08caafe26fc792905f4a6cd235221e6ec71caa2ab40d9` |
| 88 | `theorem` | [of_pow](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-pow.md) | 479 | `result-track:113f874b35a89528579ac7738671d27acbd60e088f08508d775f19357f55c442` |
| 89 | `theorem` | [of_zpow](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/of-zpow.md) | 488 | `result-track:6e71b53efb136145a79aa256fbce33fe92413ee1d368cd4c30ff3a52eb1d2601` |
| 90 | `theorem` | [one_lt_natDegree_of_irrational_root](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/one-lt-natdegree-of-irrational-root.md) | 504 | `result-track:71a2e5d99337b1138b2133bf1ca00949d1fb5c7cedcf55ce1b1e6059937f976b` |
| 91 | `theorem` | [irrational_ratCast_add_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-ratcast-add-iff.md) | 532 | `result-track:a928f9ac643c1dfc25a888b2f6128387a8025109b2b4d0f3748c31ef8b39c1b5` |
| 92 | `theorem` | [irrational_intCast_add_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-intcast-add-iff.md) | 537 | `result-track:2c55ff6e88d3c57541a2fa625edd627b58e3ada8b6be2aca0eca65f56a068b6c` |
| 93 | `theorem` | [irrational_natCast_add_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-natcast-add-iff.md) | 542 | `result-track:85dd3011ae9e0ea64028e468e223ffa4fb6609025130da9fda11f5c13516bd9d` |
| 94 | `theorem` | [irrational_add_ratCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-add-ratcast-iff.md) | 547 | `result-track:6755234a4e02bef8b8be9aade71afe25762a03b08c8de71a8dc4786f7e4e4a80` |
| 95 | `theorem` | [irrational_add_intCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-add-intcast-iff.md) | 552 | `result-track:af2cb74da62f701df0e1b45af408d15c63146693e4b7aeb2ea454e544120bcc3` |
| 96 | `theorem` | [irrational_add_natCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-add-natcast-iff.md) | 557 | `result-track:239db27ba0277f63a5a6e4bb29a5466ba8d8a1d94d76995de90cc2f5b779bb13` |
| 97 | `theorem` | [irrational_ratCast_sub_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-ratcast-sub-iff.md) | 562 | `result-track:44b68f32f9bb53ce85fe92b5168059507ba0fe024ad7527e2df5b39ac1cac443` |
| 98 | `theorem` | [irrational_intCast_sub_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-intcast-sub-iff.md) | 567 | `result-track:20f22a8ebbc0eeb1da302a3cd01877e43d6a9320f026de91ce9e2f15245a5764` |
| 99 | `theorem` | [irrational_natCast_sub_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-natcast-sub-iff.md) | 572 | `result-track:3a19111d80c8d2fb8cbeaf868c9ad21b4879c71257b3107c434d02528164c9ff` |
| 100 | `theorem` | [irrational_sub_ratCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sub-ratcast-iff.md) | 577 | `result-track:8d439a5c76c566d5cbea89da33f1a9b9d582ae8feb02692f504125e742596067` |
| 101 | `theorem` | [irrational_sub_intCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sub-intcast-iff.md) | 582 | `result-track:658a5c3720cd531c02b5deedb74c77ec0f61865183c3e141c80d614a223242cd` |
| 102 | `theorem` | [irrational_sub_natCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-sub-natcast-iff.md) | 587 | `result-track:82e3649fb5294dfb5c6ea3764aa19e3d5b8e02d27746e59c80355f4a7c7c1748` |
| 103 | `theorem` | [irrational_neg_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-neg-iff.md) | 592 | `result-track:b79b764b37dbb6a30d6b10094c7cb89a256f7799438820fa5a82ddb251f4483a` |
| 104 | `theorem` | [irrational_inv_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-inv-iff.md) | 596 | `result-track:b24d13f937bfcf9043b4316663febc35c929c46071646a49afb3d7c2f601e98a` |
| 105 | `theorem` | [irrational_ratCast_mul_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-ratcast-mul-iff.md) | 600 | `result-track:1d8a168484944d254eb5258135c9ab6818a0ad2a18477ab35c92a5b5e7d85338` |
| 106 | `theorem` | [irrational_mul_ratCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-mul-ratcast-iff.md) | 606 | `result-track:b049b0805f7345ec7ce425fa96a66f781e5ce8a8048efc58db4f880eee1026a7` |
| 107 | `theorem` | [irrational_intCast_mul_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-intcast-mul-iff.md) | 611 | `result-track:f917dd39c1882b2ecf894a0336e217965422d77ce36fd1813d096d088cecd61a` |
| 108 | `theorem` | [irrational_mul_intCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-mul-intcast-iff.md) | 616 | `result-track:2d4da9d1bb6cfef6d1474ac99e55a6eea81e0b4fa0ecdbe865a742dead8694cb` |
| 109 | `theorem` | [irrational_natCast_mul_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-natcast-mul-iff.md) | 621 | `result-track:1a9162319d9bbf84bc3cb213d3de55c0591f2ad8ff0c847f1ae3343e25971156` |
| 110 | `theorem` | [irrational_mul_natCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-mul-natcast-iff.md) | 626 | `result-track:cbb5c8315502f14e088d3a8f1fc35ec98fa8739f50420e1e47a6127e71ec078e` |
| 111 | `theorem` | [irrational_ratCast_div_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-ratcast-div-iff.md) | 631 | `result-track:1cfa1424238fbcae10b2b00df784c6b627344ae591901d5d804ca0d8f53ad126` |
| 112 | `theorem` | [irrational_div_ratCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-div-ratcast-iff.md) | 636 | `result-track:3f55c8c426211b0fcb2c6f35f75cf0d9a2331ebc8cc7a11a1208cc4027ea3f9c` |
| 113 | `theorem` | [irrational_intCast_div_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-intcast-div-iff.md) | 641 | `result-track:20095949eff5fa77cb0337c213457468fc07b7109232b5b83a3ad8e53348e9c4` |
| 114 | `theorem` | [irrational_div_intCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-div-intcast-iff.md) | 646 | `result-track:0237ec66543be58277a88d99c4c53111d2496e485a667d76548df55e0704d27c` |
| 115 | `theorem` | [irrational_natCast_div_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-natcast-div-iff.md) | 651 | `result-track:bb1cdc5221ccf0dfc2b9719b956885f501bbdb0c87402ff70e577ed3f05af755` |
| 116 | `theorem` | [irrational_div_natCast_iff](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/irrational-div-natcast-iff.md) | 656 | `result-track:f7ea223cf01a6945eb2f1d0571dd8c6f4122a0e4151eb21820239d4afe180157` |
| 117 | `theorem` | [exists_irrational_btwn](../../../../RealFunctions/RealIrrationalIrrationalNamespacedSourceEdition2.lean/declarations/exists-irrational-btwn.md) | 661 | `result-track:5000599580c53aab42c8756138a343d0d4958ab978b59e979bb863d617b603cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6295b505e4a724cd2e7615efdfee401930acbb0493a25be95be08307177016ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Irrational/Variant2dff63c82e2d3798047105aec5a065dbe534a7aefa8ae6c7985bb18b7ae5c7eb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Irrational/Variant2dff63c82e2d3798047105aec5a065dbe534a7aefa8ae6c7985bb18b7ae5c7eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
