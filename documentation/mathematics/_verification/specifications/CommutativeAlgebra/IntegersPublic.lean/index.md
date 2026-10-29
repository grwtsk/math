# Verification target: Integers Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86f52ce812579f0172346a10f665739fec420617",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integers/Variant98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IntegersPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IntegersPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86f52ce812579f0172346a10f665739fec420617`.

Source path: `GRWTSK/Algebra/Integers/Variant98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integers/Variant98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integer](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/integer.md) | 32 | `declaration-track:0e88706a9d99525e30a37ff586822b9e622f256ebea469e340ab8c072ad3eb84` |
| 2 | `lemma` | [mem_integer_iff](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/mem-integer-iff.md) | 40 | `result-track:cb0c767554dd7dbc16ee7712c280a3571741a117511cb9da1ec1a77847637e19` |
| 3 | `structure` | [Integers](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/integers.md) | 52 | `declaration-track:8ba49889e7814729f3f2e5c4995feebb9c3c8667942a8c56ab43e86b5796cb75` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/instance.md) | 58 | `declaration-track:6b73c7ed8b6848e00aa97f025a4280b2f43a9a90813300771384813d2f559b1d` |
| 5 | `theorem` | [integer.integers](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/integer-integers.md) | 61 | `result-track:1146727972713557c253f99ea044c0cf301258a3e4f98a5ca64ba4d5c4f06875` |
| 6 | `theorem` | [one_of_isUnit'](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/one-of-isunit-source-edition-2.md) | 70 | `result-track:475c480e2f1069e75529303e1bcd211ce168e73923a34cfb9cf7913f5dca99dc` |
| 7 | `theorem` | [one_of_isUnit](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/one-of-isunit.md) | 77 | `result-track:0da9f7e8a574fef6de36c896b110ebe5e7b8407630cba398c352ff5490b95e4e` |
| 8 | `theorem` | [isUnit_of_one](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/isunit-of-one.md) | 84 | `result-track:189313b6f4f15b7b307f0b00949040fbaa869dc8d88fb0ed7ac8b81ef9d088b6` |
| 9 | `theorem` | [le_of_dvd](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/le-of-dvd.md) | 96 | `result-track:66d9d6f9b8438d554de8111da15a4e916505feaa1ed3c1de45c562acf1cf1642` |
| 10 | `lemma` | [nontrivial_iff](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/nontrivial-iff.md) | 101 | `result-track:ed850857e8973e5e5dd437f0cb2e5fcaacb64e4cbceb42ed5db4239fcdc8bdb5` |
| 11 | `theorem` | [IsTrivialOn.of_le_one](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/istrivialon-of-le-one.md) | 112 | `result-track:047211f30a9fefab231d5be3e7cf98a70742761a7e669de1bc5ee0a95523e3f0` |
| 12 | `lemma` | [integers_nontrivial](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/integers-nontrivial.md) | 116 | `result-track:24f94ab88d8d6ba7dc7cbe82aac17369a587367e35ecfb82efc374a507b3fa71` |
| 13 | `theorem` | [dvd_of_le](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/dvd-of-le.md) | 129 | `result-track:685a1ddbc7da23cdabf7cebd7dccb3879864e0b1c491bdf7b33d48bcfa5c93f6` |
| 14 | `theorem` | [dvd_iff_le](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/dvd-iff-le.md) | 143 | `result-track:d8db4784dac7a7c09464836ba2f9c18c6cc2118d54463b3633555301fd9a9e2b` |
| 15 | `theorem` | [le_iff_dvd](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/le-iff-dvd.md) | 147 | `result-track:9223b68ff05820e57cfe91f4febe006e062ae8444f40d3dd5f01b986f54ec300` |
| 16 | `theorem` | [isUnit_of_one'](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/isunit-of-one-source-edition-2.md) | 156 | `result-track:98dde6180e659cd68a10bbe8103d900b44cfc059d0c97aa6dba650454be0ad67` |
| 17 | `lemma` | [isUnit_iff_valuation_eq_one](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/isunit-iff-valuation-eq-one.md) | 160 | `result-track:4295291348da50cd500fd872e85baad0fa0fd27d3918487f3dbfc162537e72c3` |
| 18 | `lemma` | [valuation_irreducible_lt_one](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/valuation-irreducible-lt-one.md) | 164 | `result-track:b2f958b633d93c5a49ce4a21c2f1afc3341f7a5f0762645d9435112c5f2d68c0` |
| 19 | `lemma` | [valuation_unit](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/valuation-unit.md) | 168 | `result-track:748da91c36cbf97fdb6c67dbc766e1fd5c93cf6ec11880784ce004ea2c96c0a1` |
| 20 | `lemma` | [valuation_pos_iff_ne_zero](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/valuation-pos-iff-ne-zero.md) | 172 | `result-track:6cf74181bef6af43a2ad9484081c6ba6d48fd895f4b34fb33cdca003f0e787f5` |
| 21 | `lemma` | [valuation_irreducible_pos](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/valuation-irreducible-pos.md) | 178 | `result-track:7db292f782a9dc2fe7d0d55647daf6038bda480e09d3721c7db42154383b6d20` |
| 22 | `theorem` | [dvdNotUnit_iff_lt](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/dvdnotunit-iff-lt.md) | 182 | `result-track:551b5a3b23adbe4c58f37e44d7faa4f788c2841fdc35e00d2498e8c170381c4f` |
| 23 | `theorem` | [eq_algebraMap_or_inv_eq_algebraMap](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/eq-algebramap-or-inv-eq-algebramap.md) | 195 | `result-track:31565f9e10d8eac5d469b2e67c605b5911639caae0c774630029a4078cb736e4` |
| 24 | `lemma` | [coe_span_singleton_eq_setOfPred_le_v_algebraMap](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/coe-span-singleton-eq-setofpred-le-v-algebramap.md) | 201 | `result-track:95461b98da93f7b5a05da2ba32f299e2a2ceb67d6f99a4e09af14434045ec539` |
| 25 | `lemma` | [bijective_algebraMap_of_subsingleton_units_mrange](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/bijective-algebramap-of-subsingleton-units-mrange.md) | 211 | `result-track:6da1ee212f13f2e42c3b46e7893c3c831d9c7424b7ea9cebf31409cd17bf14d5` |
| 26 | `lemma` | [isPrincipal_iff_exists_isGreatest](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/isprincipal-iff-exists-isgreatest.md) | 220 | `result-track:a4893a528b13ff57200d0b7c856147d5250ecb16cfb8e2f0b3e49bd9d4b8e824` |
| 27 | `lemma` | [isPrincipal_iff_exists_eq_setOfPred_valuation_le](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/isprincipal-iff-exists-eq-setofpred-valuation-le.md) | 237 | `result-track:b25d260527ae02bf0df86775506cc9a5090330056bc70c8cf3160feb0cdea0f9` |
| 28 | `lemma` | [not_denselyOrdered_of_isPrincipalIdealRing](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/not-denselyordered-of-isprincipalidealring.md) | 257 | `result-track:48582ec344a87d07bb568f68cc63c33d8de8f475198885f4186cd7262de0c849` |
| 29 | `theorem` | [Integer.not_isUnit_iff_valuation_lt_one](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/integer-not-isunit-iff-valuation-lt-one.md) | 288 | `result-track:ff910ab05c627439fcf8f516f8df9cb7c17bcd42327b1190f5ee3744e4356a98` |
| 30 | `lemma` | [v_irreducible_lt_one](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/v-irreducible-lt-one.md) | 295 | `result-track:edb767e62f8b3bcac767af57a548a437ef351aa89469671dd32646452c0666dc` |
| 31 | `lemma` | [v_irreducible_pos](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/v-irreducible-pos.md) | 299 | `result-track:efc2cf3a9c483fd22e15bd04fd14eabc0db55a27898f8a7b145e32021e66a197` |
| 32 | `lemma` | [coe_span_singleton_eq_setOfPred_le_v_coe](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/coe-span-singleton-eq-setofpred-le-v-coe.md) | 302 | `result-track:d164bb32cf6c1f2830cd5318afeaf609f5d1e1402f62b2b71796b3db73e9de76` |
| 33 | `def` | [leSubmodule](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/lesubmodule.md) | 321 | `declaration-track:ea570750d24ecf4254aee74abdc9964975b446bd735c10b89a42f9749885f569` |
| 34 | `def` | [ltSubmodule](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/ltsubmodule.md) | 327 | `declaration-track:eae2f7e409072e621cd7dd1aa319390d9a9daaeb6a0aaf01f14c6b764bf56b5c` |
| 35 | `lemma` | [leSubmodule_monotone](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/lesubmodule-monotone.md) | 332 | `result-track:f144d5b3bcaafc53f7ee46a1c77ea39d8107f359b115950de80d955c81d5d7e5` |
| 36 | `lemma` | [ltSubmodule_monotone](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/ltsubmodule-monotone.md) | 335 | `result-track:84504861ec7fb9b530aded4e454978367805329596ca2fae1dcec714a4569d22` |
| 37 | `lemma` | [ltSubmodule_le_leSubmodule](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/ltsubmodule-le-lesubmodule.md) | 338 | `result-track:5812f2f3a1654c617203c20e062620b68cd47e707b343a55e1dc4396ae9eea77` |
| 38 | `lemma` | [mem_leSubmodule_iff](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/mem-lesubmodule-iff.md) | 344 | `result-track:c691815f0b79e380671b87dd25c0a34ef207f239ef62a5136f758fe7a097ff52` |
| 39 | `lemma` | [mem_ltSubmodule_iff](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/mem-ltsubmodule-iff.md) | 350 | `result-track:cfb9d3161b67d989014ac38a6f9b4492dc97e9abfce1927bd02b51a8e5a1852d` |
| 40 | `lemma` | [leSubmodule_zero](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/lesubmodule-zero.md) | 355 | `result-track:73e89a0e4312f7e836a1ca5c4b51fd2055d43d524ee0e1d8821028554a213d1e` |
| 41 | `lemma` | [leSubmodule_v_le_of_mem](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/lesubmodule-v-le-of-mem.md) | 359 | `result-track:55b39525c8079b605a2f7363012ad5d52418abacd449154e5b231e54b30dacbd` |
| 42 | `lemma` | [ltSubmodule_v_le_of_mem](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/ltsubmodule-v-le-of-mem.md) | 368 | `result-track:a96c78d9e3358b484a4d7beb94f8ef0aea6fe516aaaad032c3a7898a811a32a9` |
| 43 | `def` | [leIdeal](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/leideal.md) | 378 | `declaration-track:9c966a5add5dba32efb2b32daf69d435ce41002edd1545aafe7a5f6f86aa6647` |
| 44 | `def` | [ltIdeal](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/ltideal.md) | 386 | `declaration-track:ca6da985aba5044197e2d2660787dea6ff3559fa37a7e243637b1b7b8d1f6e96` |
| 45 | `lemma` | [leIdeal_mono](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/leideal-mono.md) | 393 | `result-track:22ac3601a9fa3593bb80eee802466386fd935206472ec19aa9ebf2ee7ff44029` |
| 46 | `lemma` | [ltIdeal_mono](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/ltideal-mono.md) | 396 | `result-track:0a8497020f1e040796d49fde3bf7e68d84d4add3463b965ddfb0d881d51f8c30` |
| 47 | `lemma` | [ltIdeal_le_leIdeal](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/ltideal-le-leideal.md) | 399 | `result-track:56b896e72f7022aec56b5e029e1c56c6681053eb371a880e7af21ca5ef6b4661` |
| 48 | `lemma` | [mem_leIdeal_iff](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/mem-leideal-iff.md) | 405 | `result-track:6e89348be5a97e6cc951880bf97a7775a6400dc8e46ae84beec0d2b2ee2b5839` |
| 49 | `lemma` | [mem_ltIdeal_iff](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/mem-ltideal-iff.md) | 411 | `result-track:6f88b53ec77cd0e2716d68ea27e95c24ea37517e315964959f67502a02cc2f24` |
| 50 | `lemma` | [leIdeal_zero](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/leideal-zero.md) | 416 | `result-track:7976347dac3e993838406f1e0484faf45c615f8321fb4b393058d75df3626894` |
| 51 | `lemma` | [leSubmodule_comap_algebraMap_eq_leIdeal](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/lesubmodule-comap-algebramap-eq-leideal.md) | 420 | `result-track:83afc1269b7bbc1610b6dbeadf135d0a100dbbc1287d487cd17d2e02cdfd270c` |
| 52 | `lemma` | [leIdeal_map_algebraMap_eq_leSubmodule_min](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/leideal-map-algebramap-eq-lesubmodule-min.md) | 424 | `result-track:19078390bc125c4c19616d2a9251b1bdaa1658f789756c2db072b0758fd1b90d` |
| 53 | `lemma` | [leIdeal_v_le_of_mem](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/leideal-v-le-of-mem.md) | 442 | `result-track:0b93a8f0ab8c4d0139034b68f06c3f0a9db84a852521ef32d1c562d44f190570` |
| 54 | `lemma` | [ltIdeal_v_le_of_mem](../../../../CommutativeAlgebra/IntegersPublic.lean/declarations/ltideal-v-le-of-mem.md) | 452 | `result-track:e770d06e60793dca427d974d789014b6b749f5de3acf1442a04f744854853610` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a72fefc9a5ed5b8b18ed2a4e0dcaeb73ddf10b5947e0880e4cb44ac328b60562 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Integers/Variant98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean","GRWTSK/_verification/specifications/Algebra/Integers/Variant98b94deb6e79f1cfdc1b61a95670b335023aac26f961a333226c383ac893ade7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
