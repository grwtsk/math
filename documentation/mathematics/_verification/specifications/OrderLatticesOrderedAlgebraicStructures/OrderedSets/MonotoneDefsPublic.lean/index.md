# Verification target: Monotone Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc6f01210e9fb3eb001121d20566820f89617b06",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9b75e423f4425994dec847788cbcf1a510fce43c1c69facba3f9cdef50ed37d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc6f01210e9fb3eb001121d20566820f89617b06`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9b75e423f4425994dec847788cbcf1a510fce43c1c69facba3f9cdef50ed37d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9b75e423f4425994dec847788cbcf1a510fce43c1c69facba3f9cdef50ed37d6.lean.json)

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
| 1 | `def` | [Monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-source-edition-2.md) | 62 | `declaration-track:f28600d8df54cf83cbc50d46473fe5cf27621f221dfe8f9a6453cc36d0e1e011` |
| 2 | `def` | [Antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone.md) | 68 | `declaration-track:2a1fe51b3dccc11054048778a625ff044d2b3bd34e71a45f6fd831360284ad7a` |
| 3 | `def` | [MonotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotoneon.md) | 74 | `declaration-track:1fee039efe79fa49592ab1203e2423498da5ed7d774d338708285fa4691a6e6e` |
| 4 | `def` | [AntitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitoneon.md) | 80 | `declaration-track:59a552ffe2c6f46b38717f0a2136ff6139a4772717e2458c513d7583a35904ca` |
| 5 | `def` | [StrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono.md) | 86 | `declaration-track:35d9de6ed04016c9fa78f91c6197fe6ae3b0b36d0301fd87c4c1fb429bcbee2f` |
| 6 | `def` | [StrictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-source-edition-2.md) | 92 | `declaration-track:bfa9569cbfb2193a96b9a70ef13c33539ff0dc44219f404ded08dd176a8a1177` |
| 7 | `def` | [StrictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmonoon.md) | 99 | `declaration-track:1bedf6379507f78b43a5dc04211ee86020e34a92a353bac3a7931d651a6e8f36` |
| 8 | `def` | [StrictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictantion.md) | 106 | `declaration-track:1d79942245eb7b694f714eea92c04becfe4018ebd799849f099db0b17c9ce6a4` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/instance-source-edition-3.md) | 117 | `declaration-track:7731d487eb9f86e339319ec366b35df69c05ab3745a137f1443e87899404d7e7` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/instance-source-edition-6.md) | 118 | `declaration-track:90172e708d4d54f5f153f1aa68afa2274e5e66f7874c38cba5ef86a03cae6482` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/instance-source-edition-4.md) | 120 | `declaration-track:82cec65e49fddccfe0938dec99b93b073d8af4b1739a957ba2007d7d08871f54` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/instance.md) | 123 | `declaration-track:09069e905a2e0f06c4a68223e2199d29963348cfb1f622840f829f7c2c29e836` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/instance-source-edition-7.md) | 126 | `declaration-track:dd6a870813b09b8a639ae5cdf8e02b3e37f9e27ff789d60fb533196bc87b2608` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/instance-source-edition-8.md) | 127 | `declaration-track:f07dcaad8c10503547b6a6a0ef5ea83d28f793fdf178b9b8ba83c8fcdf3fb26b` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/instance-source-edition-5.md) | 129 | `declaration-track:84041cab2fe72dad630be0f112bc2aa4349a5939faecfc094e6a1fc2643d2431` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/instance-source-edition-2.md) | 132 | `declaration-track:1a67665a6330215f22c205a8b9f9f2a8aba26f30e6401df5a690f105a1209d28` |
| 17 | `theorem` | [Monotone.comp_le_comp_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-comp-le-comp-left.md) | 145 | `result-track:64b752665509c919124ec226e191fd64daf49969b9172a6e25b697e714ca8aa3` |
| 18 | `theorem` | [monotone_lam](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-lam.md) | 152 | `result-track:5ee14bc9d8ded78a292d70939d32866b43dcba3baef5fdc2f709b74fc7c7de35` |
| 19 | `theorem` | [monotone_app](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-app.md) | 155 | `result-track:8c36b48edfcf11c1a7ccc7390b85d4dac395df90f50c4a871f6f19fba56e6e7d` |
| 20 | `theorem` | [antitone_lam](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-lam.md) | 158 | `result-track:2db6d81e9b903b15a3d7913f9b2a36e7671629d8326f4d283346771bf6f15dd5` |
| 21 | `theorem` | [antitone_app](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-app.md) | 161 | `result-track:44e5f118a67e360f0b85ac84ff7edb5ba3b54763a51785bb9cc7fde40a176f6b` |
| 22 | `theorem` | [Function.monotone_eval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/function-monotone-eval.md) | 166 | `result-track:4633beb8fa3cd922d985aa8ebaa3a903d7513645d41d598dbdab07a8f3129dd2` |
| 23 | `theorem` | [Monotone.imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-imp.md) | 187 | `result-track:e01847a8830fed08824133b2633cc0f24620e27549969b0b94b7bd5d83b9a877` |
| 24 | `theorem` | [Antitone.imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-imp.md) | 191 | `result-track:9c7326501ef92a897e3dc095cffc8a1994c3fb7585c5c3c56776dce7c1402118` |
| 25 | `theorem` | [StrictMono.imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-imp.md) | 195 | `result-track:621b509641284e4639c62208a6afd0151af808fd53c35b21398ccd91ab7dede5` |
| 26 | `theorem` | [StrictAnti.imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-imp.md) | 199 | `result-track:72884a095f12fcfe980b3feeb8502f2a2aa5382f50dde9dfe8c1a8fce1035127` |
| 27 | `theorem` | [Monotone.monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-monotoneon.md) | 202 | `result-track:681f90065bff8e4f1da7911864d8afdc5a32d951aa6a56297540d599424449ed` |
| 28 | `theorem` | [Antitone.antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-antitoneon.md) | 205 | `result-track:1d786adf74371bf743ddc429f056d763ca9d69f96cc7f10d7640d2ba3ba961c2` |
| 29 | `theorem` | [monotoneOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotoneon-univ.md) | 208 | `result-track:d4ba8cb24ed20e4520cf8bfe4b531080f2fc0368c84159796b9f7f9e649342c1` |
| 30 | `theorem` | [antitoneOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitoneon-univ.md) | 211 | `result-track:9ecb8da863629ecc1e17bcb1cdcc7dac2bff66e8816e384f3d3c99221f491e9c` |
| 31 | `theorem` | [StrictMono.strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-strictmonoon.md) | 214 | `result-track:e6e4430c9e375f4a99d559e5892e27f8a338c28ff00313ebeefc23603c43d32f` |
| 32 | `theorem` | [StrictAnti.strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-strictantion.md) | 217 | `result-track:97db10ee55ff9293322dba53d46170514587b32928be70d0831d9b54f3a0aa49` |
| 33 | `theorem` | [strictMonoOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmonoon-univ.md) | 220 | `result-track:54b614af8f11acba8c9d1bc9bad366ce9adcab86fe8605826ccb3d623fc1ddf7` |
| 34 | `theorem` | [strictAntiOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictantion-univ.md) | 223 | `result-track:ef1d61a4350e8ee747a2fc67328055c40bfdddb37ebf744a25000385aec7b2e2` |
| 35 | `theorem` | [Monotone.strictMono_of_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-strictmono-of-injective.md) | 232 | `result-track:d1782c23d8c166faf1781213072c3eee70c2ba1d1cbcafda5484bbf4d3fde7e0` |
| 36 | `theorem` | [Antitone.strictAnti_of_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-strictanti-of-injective.md) | 235 | `result-track:3f81fe0b7f3f47cf77f069411813ea242f572adfb0e2b5b0d8526690a02ac671` |
| 37 | `theorem` | [monotone_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-iff-forall-lt.md) | 247 | `result-track:a9a0ab2ccf5f0d8e5e7b11f7f0df5629b7d91633be172d658dc7d1d359a7bb47` |
| 38 | `theorem` | [antitone_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-iff-forall-lt.md) | 252 | `result-track:8cbf9606036f827536e391a9dad1b24daaf96b5b7ffac2008d1e9e12b9de142e` |
| 39 | `theorem` | [monotoneOn_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotoneon-iff-forall-lt.md) | 257 | `result-track:a131d0c5b3a3e98e4c9665394fbcbf6a01c812d2693c435556fc1d4dc3e032b7` |
| 40 | `theorem` | [antitoneOn_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitoneon-iff-forall-lt.md) | 263 | `result-track:7bbc860ef8f299a0d9e0f5d5be8b5b35b6114553b782148fca84f4c58ffd40d2` |
| 41 | `theorem` | [StrictMonoOn.monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmonoon-monotoneon.md) | 270 | `result-track:d5a73088c29a7c39361ce3857db07c79e2c423f2bb4eeb36119b8531e0503490` |
| 42 | `theorem` | [StrictAntiOn.antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictantion-antitoneon.md) | 273 | `result-track:4277fe7277107d26d549654adbebaed96da180a449d324c12d3ff1dc6056d9f7` |
| 43 | `theorem` | [StrictMono.monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-monotone.md) | 276 | `result-track:56723183b926285b2e2ae282e961a55725362737d7abce5cadb4869e441165ae` |
| 44 | `theorem` | [StrictAnti.antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-antitone.md) | 279 | `result-track:2c9fbb9c133d50f69f749decc3bfb5ee5578296c1479ed8883ab2e77906b9d36` |
| 45 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone.md) | 291 | `result-track:d67b838efc6ae535ed42749770574471c2e5e710276b87030b88b32d181e7d3f` |
| 46 | `theorem` | [antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-source-edition-3.md) | 294 | `result-track:f0e7157996e779890e9a421ba36fb55fff02da2275813766b66d05bcf71952c1` |
| 47 | `theorem` | [monotone'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-source-edition-3.md) | 297 | `result-track:f3ac08bbf5188f88c6a1eb4c22952755330bbf865b2e72359b4fc1c5474525a5` |
| 48 | `theorem` | [antitone'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-source-edition-2.md) | 300 | `result-track:9f450cdca0cbad451e4987a5a36766b11c32aa6b235529071f03b059002697e4` |
| 49 | `theorem` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-source-edition-2.md) | 303 | `result-track:57c1904d797493d06590fd485b665b2fb8c463142f03feaebcd613d621bcf115` |
| 50 | `theorem` | [strictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti.md) | 306 | `result-track:5c90373a8896664e2872e90b99d709f1a5d8c407434e80086dff948bd6cea077` |
| 51 | `theorem` | [monotone_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-id.md) | 314 | `result-track:3f11a26eeaab516c77f1e01be882b644782cdebaeb0c36f6c8c0d236cae0baae` |
| 52 | `theorem` | [monotoneOn_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotoneon-id.md) | 316 | `result-track:1a61169ffaf48d6415a098e6aa88c78ce6cc0aaaad6d4e719769da7eff3413a9` |
| 53 | `theorem` | [strictMono_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-id.md) | 318 | `result-track:ab88f8bbb35b681e50e68dcb729950bfa467e48a6cad5873c93cbc23d925acd1` |
| 54 | `theorem` | [strictMonoOn_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmonoon-id.md) | 320 | `result-track:2cc0f4e902cf72f807b3aa0f3b7dcf01f5bd9b8940e8d12db4b4db85f4d56fcd` |
| 55 | `theorem` | [monotone_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-const.md) | 322 | `result-track:c0ef613f0f6c575f1141495ae890f38b56d0317bd72eda61abb6b7da77eb6bf1` |
| 56 | `theorem` | [monotoneOn_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotoneon-const.md) | 325 | `result-track:f207fdb9902a4f36e98a86ba88cf02ff28844da3e1a7669b7b1b13d9921488d5` |
| 57 | `theorem` | [antitone_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-const.md) | 329 | `result-track:11060b6b4ecbac06ea34e9f67a367f4cd47f8c6367f05ef04f4f25a8f6c01380` |
| 58 | `theorem` | [antitoneOn_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitoneon-const.md) | 332 | `result-track:1a7c99d417c8a1e85889388cf9fffd506efc4a76e1f0870c6b131c5cf6618065` |
| 59 | `theorem` | [strictMono_of_le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-of-le-iff-le.md) | 337 | `result-track:51356a8611c5cabae8df8430c2cb178c5529d1a20dd7581d380c98adb7fcde3f` |
| 60 | `theorem` | [strictAnti_of_le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-of-le-iff-le.md) | 341 | `result-track:740444b0532ba138b4934dfc465e7bd255abb8f0fdf1a893a0b081b1f7656141` |
| 61 | `theorem` | [Function.Injective.of_lt_imp_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/function-injective-of-lt-imp-ne.md) | 346 | `result-track:383c637bc8f26ac761ac4d5c7c5e58d6c110910a7e9bddb0ce13c05769010d85` |
| 62 | `theorem` | [Function.Injective.of_eq_imp_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/function-injective-of-eq-imp-le.md) | 350 | `result-track:bd2d2305dbae4d057c88f4247e1ebbb1a82c84e2284a4268448d9448d0b81d7f` |
| 63 | `theorem` | [Monotone.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-comp.md) | 361 | `result-track:034b7309bc72b415cde74c1eba3a3b6890696dede866a9e40be001bc5416ade1` |
| 64 | `theorem` | [Monotone.comp_antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-comp-antitone.md) | 364 | `result-track:1a040f81d2608c30357ba312772dc30466b9d349698884d3fd9eaf2d0e4aa24e` |
| 65 | `theorem` | [Antitone.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-comp.md) | 367 | `result-track:9fff00b482d0b7aace9cf44eb1b0df34042e175ed118454ad9feeced1d1962bc` |
| 66 | `theorem` | [Antitone.comp_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-comp-monotone.md) | 370 | `result-track:4403c3490ab8a5d396d260e0283b6e0e7ac45f1cd6a7c5fa3041895433711ad5` |
| 67 | `theorem` | [Monotone.iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-iterate.md) | 373 | `result-track:daedc82a45e62bc0b8682b40d4d1a0df9b7542a30368e635acd7e75f807a2276` |
| 68 | `theorem` | [Monotone.comp_monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-comp-monotoneon.md) | 376 | `result-track:35ed67f463fbabc7692ef24089a409af12fd5d467189c2154fc46d7322105556` |
| 69 | `theorem` | [Monotone.comp_antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-comp-antitoneon.md) | 380 | `result-track:a7655d5fb6bd03fce2d08c361b23a229a9d9a1ea3c155020c444987604c7ea69` |
| 70 | `theorem` | [Antitone.comp_antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-comp-antitoneon.md) | 383 | `result-track:2f50240ba7293257d0ccf47b6584357468cd260f48b7a29c8089a2d15d6f18a4` |
| 71 | `theorem` | [Antitone.comp_monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-comp-monotoneon.md) | 387 | `result-track:9d43eedf948a7e3764886df7e483fe127eba3cf68cc6c24b362790335696c167` |
| 72 | `theorem` | [StrictMono.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-comp.md) | 390 | `result-track:fc28fd9220ad494c83e5af58fb025205ad7808a367c62cee2073148948661a53` |
| 73 | `theorem` | [StrictMono.comp_strictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-comp-strictanti.md) | 393 | `result-track:f31b0e9784f2f0b37f62003f73912390e6ecab5ea19e6ec33b4340f571bad14c` |
| 74 | `theorem` | [StrictAnti.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-comp.md) | 396 | `result-track:4b73bb2d5fea68da987563a1c254d203038cb65ce9fef80959955b69e0831131` |
| 75 | `theorem` | [StrictAnti.comp_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-comp-strictmono.md) | 399 | `result-track:110e9acb1e9a1f2d481029a232459be60452ac97e32af82c531e17496cc3d9dd` |
| 76 | `theorem` | [StrictMono.iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-iterate.md) | 402 | `result-track:adcaf25b796b6658a8eabb01581c7f798893d2e071bf9f75fff737dc74c8b9be` |
| 77 | `theorem` | [StrictMono.comp_strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-comp-strictmonoon.md) | 405 | `result-track:2b0dcc57095780295bbaabe08da4523f237865d3f553b379d5ff67f9f7e69273` |
| 78 | `theorem` | [StrictMono.comp_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-comp-strictantion.md) | 409 | `result-track:8fd9cfa4292bcd7e9305793a76780172afa8a9346a4d4299b562bfb225566243` |
| 79 | `theorem` | [StrictAnti.comp_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-comp-strictantion.md) | 413 | `result-track:f057048fb037b6f2cf9dbc263e8a354866acd0b75b2e7e2f76b42df9c63972f5` |
| 80 | `theorem` | [StrictAnti.comp_strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-comp-strictmonoon.md) | 417 | `result-track:9001c585dfb2c191c982eb6bc7f2f7f6e05e2a6edd57b055bdb817f2cf0dabf4` |
| 81 | `lemma` | [MonotoneOn.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotoneon-comp.md) | 421 | `result-track:04bc6896d53bd883971da7a19b49ddb44b6963ba06f8fa85b3e6776e75ee2ddb` |
| 82 | `lemma` | [MonotoneOn.comp_AntitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotoneon-comp-antitoneon.md) | 424 | `result-track:8b195c3744dcea04b957a5acabfcd99972a4dd651564c3dddd18cfd7a5c3903b` |
| 83 | `lemma` | [AntitoneOn.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitoneon-comp.md) | 428 | `result-track:40816a2a321f52383f5d24594f399000a9e3dcbb4be9bbcea83ede86aa574e0d` |
| 84 | `lemma` | [AntitoneOn.comp_MonotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitoneon-comp-monotoneon.md) | 431 | `result-track:4906513cbc73de190e0bc5241c68fb1c70f0ee9ddb84ec3d47bb9e29a4d7d05a` |
| 85 | `lemma` | [StrictMonoOn.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmonoon-comp.md) | 435 | `result-track:a293b0ca4a10f91cc0ec77b61aef322ab5b418310eafd297f4336e6e97b6d22c` |
| 86 | `lemma` | [StrictMonoOn.comp_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmonoon-comp-strictantion.md) | 438 | `result-track:e8a9c2a4a992d6d0fa42d2e6fd97812d2761771ae158b3fd843da2c2b4f0b16e` |
| 87 | `lemma` | [StrictAntiOn.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictantion-comp.md) | 442 | `result-track:e0480322f722d9df26712670de2bec9bf1f357a4849e86ef69f8ee911ec716e0` |
| 88 | `lemma` | [StrictAntiOn.comp_strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictantion-comp-strictmonoon.md) | 445 | `result-track:4beb807c4d1c764e7b82f544a78db86af7e38bcad71bc2d43dd1d778a44f6a64` |
| 89 | `theorem` | [Monotone.reflect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-reflect-lt.md) | 463 | `result-track:3116dd1f4265fc3ea05c901d69d80bb1a84075da712513d6c59b7333b0046e35` |
| 90 | `theorem` | [Antitone.reflect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-reflect-lt.md) | 467 | `result-track:7bc222e5e4fc43a90ba022d134c29ca50856039705ea643cebd935b5036c3a16` |
| 91 | `theorem` | [MonotoneOn.reflect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotoneon-reflect-lt.md) | 471 | `result-track:27454fe23c44da3034fa26aaeccc228686772d11f3cbe9cf3cb21ee40e988052` |
| 92 | `theorem` | [AntitoneOn.reflect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitoneon-reflect-lt.md) | 476 | `result-track:389e6e9975838b650c15fefb11a1739c4406d352beceae293d29f9e97cba8bb2` |
| 93 | `theorem` | [Subtype.mono_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/subtype-mono-coe.md) | 484 | `result-track:2ae96b37eb323050983a475ce3c942f337f2a8601eebd318aec4ab1db30a715c` |
| 94 | `lemma` | [Set.mono_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/set-mono-coe.md) | 487 | `result-track:4e3c913e0987ff9765e6c1b83ef3c84ad3a46e4c22661681f6a59501417217d9` |
| 95 | `theorem` | [Subtype.strictMono_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/subtype-strictmono-coe.md) | 491 | `result-track:96f5e7ad9cd304eee12a49e48b2da34d9c01d399aecc60a886f406620aebfb96` |
| 96 | `theorem` | [Set.strictMono_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/set-strictmono-coe.md) | 495 | `result-track:0f327697036f537d3223d35d11e84c218e8454cb9268f8f2443994f2faa0a038` |
| 97 | `theorem` | [monotone_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-fst.md) | 503 | `result-track:5771370af1c6f3a91c2b64aaee5aed55ea48b2cbc55966dafc7d714e520353d1` |
| 98 | `theorem` | [monotone_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-snd.md) | 505 | `result-track:9b0690a18024f811d958933a4f761dc5fcd25ee0537c7d45d17a3bb9156d93a8` |
| 99 | `theorem` | [monotone_prodMk_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-prodmk-iff.md) | 507 | `result-track:45b1ef921c5b8ba8b9a4ac433332aa15cc45dd67f72cd5bbe5dcea6386605039` |
| 100 | `theorem` | [Monotone.prodMk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-prodmk.md) | 511 | `result-track:576028ea2692dacfbdfec096e6708ecd4e4615cdd1043ac2f7543b413d99bf1a` |
| 101 | `theorem` | [Monotone.prodMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-prodmap.md) | 515 | `result-track:b30ea81c62ef79c8e845923dab46a4502047cecb72a5d91cf4f5a8a1a7135fa1` |
| 102 | `theorem` | [Antitone.prodMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-prodmap.md) | 518 | `result-track:f6a29bb8ebef51d543d1081011e6bf33624c5a30cb9a17415c2f8d8ab5190131` |
| 103 | `lemma` | [monotone_prod_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-prod-iff.md) | 521 | `result-track:bedfada569110203d61c626d7df7b6a23806dd69371c07ce4e43557dd528ca63` |
| 104 | `lemma` | [antitone_prod_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-prod-iff.md) | 527 | `result-track:6fae1b72aa194d214be1a82a3b21be42d2bd7565157d55ad30fe5fbaf423ef41` |
| 105 | `theorem` | [StrictMono.prodMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictmono-prodmap.md) | 539 | `result-track:782b42db34ccde774e1950e6560c755172be181baa434c6db68a99b13550cff0` |
| 106 | `theorem` | [StrictAnti.prodMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/strictanti-prodmap.md) | 544 | `result-track:85a2fcd79628319b82fc91982cf635116fe94cda5ed51b8d7b0f7ce0e923155e` |
| 107 | `theorem` | [update_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/update-mono.md) | 558 | `result-track:99865ffcc96696207e198100725cf82dcca8f97a6a6f2d915a128ea572dd4788` |
| 108 | `theorem` | [update_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/update-strictmono.md) | 560 | `result-track:06572f08082bb5f35e0a0e5c8321be6f1da12bc0843500f6b73941dcedfd38fa` |
| 109 | `theorem` | [const_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/const-mono.md) | 562 | `result-track:46d144b301eead620a66820d23e26b6472e9fc3f50f95b8fbb00d1942299f526` |
| 110 | `theorem` | [const_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/const-strictmono.md) | 564 | `result-track:b5221021d6e740fece7b578881ea8909734afc35a30af00da5ae8be0733619e1` |
| 111 | `lemma` | [monotone_iff_apply₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/monotone-iff-apply.md) | 572 | `result-track:1d1dd4f9c6325fceb746beda9b7248d61ac762a0ab0dd0436fb0921620e1de41` |
| 112 | `lemma` | [antitone_iff_apply₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsPublic.lean/declarations/antitone-iff-apply.md) | 575 | `result-track:4bb0eb61a46078aae177ab07399c477c3346c56ef109f1c2e5a65237613c886d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48e0ba6638195fc756adc7737518713c2e1a1774173bae3d2a62254f0cd68fa1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9b75e423f4425994dec847788cbcf1a510fce43c1c69facba3f9cdef50ed37d6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9b75e423f4425994dec847788cbcf1a510fce43c1c69facba3f9cdef50ed37d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
