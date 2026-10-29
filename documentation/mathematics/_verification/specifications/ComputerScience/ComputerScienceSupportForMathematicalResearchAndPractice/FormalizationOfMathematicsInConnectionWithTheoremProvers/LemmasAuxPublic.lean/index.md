# Verification target: Lemmas Aux Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "291f0da752944d50e516503a2f4f36ffc2d9cee7",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `291f0da752944d50e516503a2f4f36ffc2d9cee7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natCast_le_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/natcast-le-zero.md) | 25 | `result-track:555c54a07f451c54eeeab874e266d392b0533de00c7dd391f52cbf67adacebf8` |
| 2 | `theorem` | [neg_nonpos_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/neg-nonpos-iff.md) | 27 | `result-track:ef21ea2003a429d0b64652f643fdcec0332bd4829e8ca07d8bf8a7e2a7c251ab` |
| 3 | `theorem` | [zero_le_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/zero-le-ofnat.md) | 29 | `result-track:b79888516714989b4bda715f253213f9f59787d9313d719160a18f349bb80ff1` |
| 4 | `theorem` | [neg_natCast_le_natCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/neg-natcast-le-natcast.md) | 32 | `result-track:dee3a60c686ecc68987d2baf18454b8527a18d3a212855a56d48576ca6b85543` |
| 5 | `theorem` | [neg_natCast_le_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/neg-natcast-le-ofnat.md) | 35 | `result-track:491057f52de9515c3cc202cd8e95c7c1a1c41b6a610d4e70a6ce6d68fc615801` |
| 6 | `theorem` | [neg_ofNat_le_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/neg-ofnat-le-ofnat.md) | 38 | `result-track:7c0d9f3fb88d407c3080a714d213e96d4ed1f3d28d1134dc3559ed339a11617c` |
| 7 | `theorem` | [neg_ofNat_le_natCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/neg-ofnat-le-natcast.md) | 41 | `result-track:5702bb208436e43d2f12a16a28e9c669bb3462fa9ecf1cc482a64d790a91704c` |
| 8 | `theorem` | [neg_lt_self_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/neg-lt-self-iff.md) | 44 | `result-track:8fecb39b9b2000e14241dfc68fce4829659e3b5598551fb6197d58ef693ba170` |
| 9 | `theorem` | [ofNat_add_out](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/ofnat-add-out.md) | 48 | `result-track:98bf75f97dfd2f01aba8fc9c24a53afb3247977c76a30cf1003ea9e2d9b28661` |
| 10 | `theorem` | [ofNat_mul_out](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/ofnat-mul-out.md) | 51 | `result-track:92567431d74ed71dffbb8583e201a9540db7100168e0b680c44ac76b073eefe7` |
| 11 | `theorem` | [ofNat_add_one_out](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/ofnat-add-one-out.md) | 53 | `result-track:51007d85ee6c058d0717ebeb97317d1c2ba2191b494818353ec5f3474c9b7cd7` |
| 12 | `theorem` | [natCast_inj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/natcast-inj.md) | 55 | `result-track:dbe0be0204858503a2a948b4109aaaed3baf90d12a0868729fc966c5f7b09517` |
| 13 | `theorem` | [natCast_sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/natcast-sub.md) | 58 | `result-track:39157d7cdfc186618a0b59ef3f3fc7064a8c6cbed3e59d70ff093ff2d5c9ec10` |
| 14 | `theorem` | [natCast_ne_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/natcast-ne-zero.md) | 60 | `result-track:5399a627b1e52cf72a722855480d7f199ea0a613f888e3fed40113bbfee4be8e` |
| 15 | `theorem` | [natCast_ne_zero_iff_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/natcast-ne-zero-iff-pos.md) | 62 | `result-track:70fcbf77e26eba7325e55a57ecb25229e25a6cd495e35dcddec27a4195cb5b91` |
| 16 | `theorem` | [natCast_succ_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/natcast-succ-pos.md) | 64 | `result-track:16ff85495c06254da8228d2bb76b2ac356cac01895abf0983ce6c25644c36039` |
| 17 | `theorem` | [natCast_nonpos_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/natcast-nonpos-iff.md) | 66 | `result-track:014fb6108805c145b859f2e2e2945363ff96df83e9bfe763e80e0db1c7868f4d` |
| 18 | `theorem` | [cast_id](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/cast-id.md) | 68 | `result-track:c95934ccf30264d9f69cd3760df253efa62beb5a9d1a20d7235ed724f19fa83e` |
| 19 | `theorem` | [ble'_eq_true](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/ble-eq-true.md) | 70 | `result-track:1f4e5a1baa112a61546f1351366b95d0d58cfe546d18827858ece8d486e98f2b` |
| 20 | `theorem` | [blt'_eq_true](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/blt-eq-true.md) | 73 | `result-track:db1d683fc31076d101e2d6b3eea2a2897dfad9160d5ab34ec7b5e870848bdba7` |
| 21 | `theorem` | [ble'_eq_false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/ble-eq-false.md) | 76 | `result-track:6cded5d2228b2293b161b1e1dc423e8a8d63690c905a4d57e309f5e14244d14a` |
| 22 | `theorem` | [blt'_eq_false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/blt-eq-false.md) | 79 | `result-track:2600e77c0da7eb2488c593820f1453688dd25c09d071427b3fe18f237218645d` |
| 23 | `theorem` | [toNat_sub'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/tonat-sub.md) | 84 | `result-track:195a10524845ad17c5cae29c433cc499e3cbfe4f3a5611992f3ddd2151689b91` |
| 24 | `theorem` | [toNat_sub_max_self](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/tonat-sub-max-self.md) | 100 | `result-track:5908bc355b22f9e59bb86ddea25a5983ce75b82caff40fbd8674f976c49234ac` |
| 25 | `theorem` | [toNat_sub_self_max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/tonat-sub-self-max.md) | 104 | `result-track:5a249e6016b7714ba9946ad0f55bf00d0abccf501795bd00e92ec3f66ab777ce` |
| 26 | `theorem` | [toNat_eq_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/tonat-eq-zero.md) | 108 | `result-track:e8adceeece58937cf3290c2048deb452bd097a73a3068e115b5a2a3e6b0d76a4` |
| 27 | `theorem` | [toNat_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/tonat-le.md) | 110 | `result-track:a2adb7a7dca09860ab6944152ed97b0ff65b3cc569fe30862dded4927f9fbd36` |
| 28 | `theorem` | [toNat_lt'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/tonat-lt.md) | 111 | `result-track:b7f89922d7a39aaef11062d742a34147dbbe0f4d3bfecbe1b77689bd2e11f6fc` |
| 29 | `theorem` | [lt_toNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/lt-tonat.md) | 112 | `result-track:c29656fd99dea6888e1cfbc296c8b06995089b9fc37dfbb41d99cc4b328ee191` |
| 30 | `theorem` | [lt_of_toNat_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/lt-of-tonat-lt.md) | 113 | `result-track:246e6cae0c25e26978493b3eb7e05a7c7db7cc12bf86034aae1bb05493ee43a7` |
| 31 | `theorem` | [toNat_sub_of_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/tonat-sub-of-le.md) | 115 | `result-track:c4c7c334a59126a14ea117a2920762c4787863cf8bea0d64e526e1495c4b16e3` |
| 32 | `theorem` | [pos_iff_toNat_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/pos-iff-tonat-pos.md) | 117 | `result-track:12776fa7fc25a42fbc80e3c1e00760fdc85c48e8d0261deccedabb1d1f182ad3` |
| 33 | `theorem` | [natCast_toNat_eq_self](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/natcast-tonat-eq-self.md) | 120 | `result-track:f8005fabfc7333fa61c533ccdef834766d72b6252aba093414b7bc834292885b` |
| 34 | `theorem` | [eq_natCast_toNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/eq-natcast-tonat.md) | 122 | `result-track:73e9c1e053bdfc1d91f7c13d228ee2f641392d04552a8f9d62c866c9d7c03eb9` |
| 35 | `theorem` | [toNat_le_toNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/tonat-le-tonat.md) | 124 | `result-track:171c6a6c4c79b5f45a68a4e4e4b480485569dac84a050c2f7257175175426192` |
| 36 | `theorem` | [toNat_lt_toNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/tonat-lt-tonat.md) | 125 | `result-track:32cf1c9e4904d646ebf86f29a07a8faf52cd2db51ca9889601e17c8a24b18ff2` |
| 37 | `theorem` | [min_assoc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/min-assoc.md) | 129 | `result-track:86527a1cccec55bd225c0ba8ab951a0f380ae3a1ebb0171462ea64a04dc19ef8` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/instance.md) | 130 | `declaration-track:2fca0ee10925e4ddb0a5a2dc05366e4b9a3663f3c34f253c452674ffb6fa0c62` |
| 39 | `theorem` | [min_self_assoc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/min-self-assoc.md) | 132 | `result-track:2b011bc6965edf86799193ccb2037a8903d537da00b137b42247b5e61d4b9d93` |
| 40 | `theorem` | [min_self_assoc'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/min-self-assoc-source-edition-2.md) | 135 | `result-track:c5384ace14b59cabb43209177d42cb61c9c9cc0d88394b99fc3c17eded04aec6` |
| 41 | `theorem` | [max_assoc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/max-assoc.md) | 138 | `result-track:e8eb4c7eebe07e068bc26b5dcc415ab4b011f91d0a544858ceef5f209bad2e29` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/instance-source-edition-2.md) | 139 | `declaration-track:41e9d93f9cca4e84feaefb39d2e05c390c0d3a4be7ae51fbc26c2fbe91593528` |
| 43 | `theorem` | [max_self_assoc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/max-self-assoc-source-edition-2.md) | 141 | `result-track:8c462b354e71454175fd0fea1428403bd4bd4f1b3d9dcb798e0444201d70e961` |
| 44 | `theorem` | [max_self_assoc'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/max-self-assoc.md) | 144 | `result-track:62b1c33bb3703e7e25a9eeab86f12806326bc1fa8ae4b1655fe9541653af59c7` |
| 45 | `theorem` | [max_min_distrib_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/max-min-distrib-left.md) | 147 | `result-track:5b1221324642d984ed689a8995f091af334a809776e004272f96cbb65a3ae7e7` |
| 46 | `theorem` | [min_max_distrib_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/min-max-distrib-left.md) | 149 | `result-track:2922a59298ef4cdf5f3c6f7e389a8bb30e7a12420e4862588f48de1689a3fa23` |
| 47 | `theorem` | [max_min_distrib_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/max-min-distrib-right.md) | 151 | `result-track:7fe39bbc4dc22829f111cd8b78c6f3006bf7da573d1d36b8913783e6a939c680` |
| 48 | `theorem` | [min_max_distrib_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/min-max-distrib-right.md) | 154 | `result-track:96db62a6966cd0356283e795a08a7779b0e60ed633b3672458137bcd533b45b1` |
| 49 | `theorem` | [sub_min_sub_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/sub-min-sub-right.md) | 157 | `result-track:a2b0f92f15a74f723251021a4f2c79e31a687b14116cb2225c6fa15c66d645ee` |
| 50 | `theorem` | [sub_max_sub_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/sub-max-sub-right.md) | 159 | `result-track:fc50d54a87f78214282b1b3d6ba933aac678177bc26ef8c1377e34d580d423e5` |
| 51 | `theorem` | [sub_min_sub_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/sub-min-sub-left.md) | 161 | `result-track:c5810fd0f7f7040d82d08174fa3698c8f771a49e5e14dea501c073c799de6f2f` |
| 52 | `theorem` | [sub_max_sub_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/sub-max-sub-left.md) | 163 | `result-track:4e4f73f1a70f76468e38d3c676297c3855f0e54c3dec7833da95468d8b01c7c4` |
| 53 | `theorem` | [mul_le_mul_of_natAbs_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/mul-le-mul-of-natabs-le.md) | 167 | `result-track:809e0b37b2994c82b6b679e5ec64154bb4e7c96eecb056ca8b6009b8f0afb32c` |
| 54 | `theorem` | [mul_le_mul_of_le_of_le_of_nonneg_of_nonpos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/mul-le-mul-of-le-of-le-of-nonneg-of-nonpos.md) | 186 | `result-track:3e9c65f092dea6a937231b4c58cc2f3da984b616651eeb24453270cbfa8c6827` |
| 55 | `theorem` | [mul_le_mul_of_le_of_le_of_nonneg_of_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/mul-le-mul-of-le-of-le-of-nonneg-of-nonneg.md) | 190 | `result-track:9baad6396ec9b288e02c2eb8e3b2d271d3ca304e3767822915abd754b9b22e93` |
| 56 | `theorem` | [mul_le_mul_of_le_of_le_of_nonpos_of_nonpos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/mul-le-mul-of-le-of-le-of-nonpos-of-nonpos.md) | 194 | `result-track:1de8e41cefc481b12f34a88910958d9841137ee51be46d8c13e32ac550f44b42` |
| 57 | `theorem` | [mul_le_mul_of_le_of_le_of_nonpos_of_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/mul-le-mul-of-le-of-le-of-nonpos-of-nonneg.md) | 198 | `result-track:a41ba9f8048d8a81de8e6659a1eaeb774f6fce4ab138eae88322b78d6be94910` |
| 58 | `theorem` | [neg_mul_le_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/neg-mul-le-mul.md) | 205 | `result-track:baa7e39c74e1db56e146a9d25d1496f0785acf9b1fda035ad076e01838c14281` |
| 59 | `theorem` | [natAbs_pow_two](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LemmasAuxPublic.lean/declarations/natabs-pow-two.md) | 220 | `result-track:ce1359c328c49d7b1c63059add115a9735d417c7d5b1a8fb20c7636c0d950a93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4474cb3ffe35f7f19dcd7428ec19a66df79a807ebdb54c93eb9fc8caee66b61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasAux/Variant0825a8f73573a8c6d26e2a9f2c7d13161f2c0fd6d59726fd4ed55c0e00ff6ef8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
