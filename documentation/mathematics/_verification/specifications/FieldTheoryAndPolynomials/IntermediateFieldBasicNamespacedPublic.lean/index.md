# Verification target: Intermediate Field Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94908e2e288cbd6efce28c01f622379222eb7319",
  "lexical_observation_count": 175,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/Basic/Variant1f0e1c7ed415d7524245d1260c28a75952c579f9e8c5d844cdfe08f3c71421c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94908e2e288cbd6efce28c01f622379222eb7319`.

Source path: `GRWTSK/Algebra/FieldTheory/Basic/Variant1f0e1c7ed415d7524245d1260c28a75952c579f9e8c5d844cdfe08f3c71421c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/Basic/Variant1f0e1c7ed415d7524245d1260c28a75952c579f9e8c5d844cdfe08f3c71421c0.lean.json)

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
| 1 | `structure` | [IntermediateField](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/intermediatefield.md) | 60 | `declaration-track:5ec8847b72e1e3d77c2b90f5991c68f75ff6e9222b32e5fa4f578d3003b50569` |
| 2 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 71 | `declaration-track:2e6d47be233cdf8e74bd9ab392f764bc0ec7282b4c4b0e2c56332c1a30ac3d88` |
| 3 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 76 | `declaration-track:2c5a086815ed4ae0b22a34c3e90bd6ae8fa79665802614a2c20b46b5356e2287` |
| 4 | `theorem` | [neg_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/neg-mem.md) | 78 | `result-track:9a75b2cd3620577437cf02568fc9c45d6ffb8db7516cbb132b9314f39606f4e4` |
| 5 | `def` | [toSubfield](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubfield.md) | 83 | `declaration-track:806e631ccaf365ae4f879a3b9749dc05c51f88920da9219dc5fa79ebf13b4b0a` |
| 6 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 88 | `declaration-track:638580706a191247b1cff7e9fdb614b821ab1dfeb4a149fe5cf24cae101d1a8e` |
| 7 | `theorem` | [mem_carrier](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-carrier.md) | 96 | `result-track:42a76039067efd2feda54d577e0b3f15b9eafffed5cf451731b0e6e79ac29d65` |
| 8 | `theorem` | [ext](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/ext.md) | 101 | `result-track:cff14820563cf7046da30d2e6176d117560087047a9b4c850edc917677e23c4e` |
| 9 | `theorem` | [coe_toSubalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-tosubalgebra.md) | 105 | `result-track:42c38d1654f2ba8b2e39e5b1afb4071c6902217b3bbe0ca2de7ae1f46c582fce` |
| 10 | `theorem` | [coe_toSubfield](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-tosubfield.md) | 109 | `result-track:729c5cc322608428e93e38b185ae03867b0e6d674c768e25ea47af6a75bcc6ff` |
| 11 | `theorem` | [coe_type_toSubalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-type-tosubalgebra.md) | 113 | `result-track:e77e8e498e7679eccb06a2bd4770351774eadd8c2df800b9ed0915adfaabd855` |
| 12 | `theorem` | [coe_type_toSubfield](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-type-tosubfield.md) | 117 | `result-track:332593a01cd4104970ca5421a8892f2a62da86b5f6038e32b82ee744d8324145` |
| 13 | `theorem` | [mem_mk](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-mk.md) | 121 | `result-track:527d2c6fc977579f111edbc5f2f3bba5bcd50447eb959f3eb9f61662a445a277` |
| 14 | `theorem` | [mem_toSubalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-tosubalgebra.md) | 126 | `result-track:a4fe4c218a14fcd34a95f88e7842bf3314214a3dc1008abb1070dc1b49327a2d` |
| 15 | `theorem` | [mem_toSubfield](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-tosubfield.md) | 129 | `result-track:cf5bf35be570979c5cbad8a8652e2f5534dccd8a6c67d3af16175af7d1d4fa17` |
| 16 | `theorem` | [toSubalgebra_strictMono](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubalgebra-strictmono.md) | 132 | `result-track:ae4204b997c83213dd91022085e4b0f62e271e551394b83253c7f356e5ed01ec` |
| 17 | `def` | [copy](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/copy.md) | 137 | `declaration-track:58a32117447bf156822c0c84774ac645f638cf47cb10faf068b2739cd8e03c20` |
| 18 | `theorem` | [coe_copy](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-copy.md) | 143 | `result-track:41f2a37e10213b3f98893638d41c998ca93671184bfd7dd096561fbbdcfcea1f` |
| 19 | `theorem` | [copy_eq](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/copy-eq.md) | 147 | `result-track:b3e2a1c2629e2927fc75c0e26c8cbb5e3f3b7862c7f73e39a48a3e26edd3c3f6` |
| 20 | `theorem` | [algebraMap_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/algebramap-mem.md) | 161 | `result-track:1da9e3fe229f9db0294ed6136654c81d57994d0b00cd4b40c22cacc8861f5c75` |
| 21 | `theorem` | [smul_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/smul-mem.md) | 165 | `result-track:551d19e049fdce0e8f738e0789be2877a882c65abb1034c4dd5f2e1139441d31` |
| 22 | `theorem` | [one_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/one-mem.md) | 169 | `result-track:9141d871a7f0dde7a0b17ca6b966b876ad2ed9760cac933a5826017c0d17481e` |
| 23 | `theorem` | [zero_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/zero-mem.md) | 173 | `result-track:6da5fc6a66d6b168edf15dbbf2756a65ab2deabdd36ee8668a83e29e94712866` |
| 24 | `theorem` | [mul_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mul-mem.md) | 177 | `result-track:a47c26ce5bba20b98d06a0676ab485a0c98f5b28918cf48eefdc82a67d4dfe51` |
| 25 | `theorem` | [add_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/add-mem.md) | 181 | `result-track:32a92612f5ff21e481a9c7115606dac833a7d772c07dd4049e63da825a48a04f` |
| 26 | `theorem` | [sub_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/sub-mem.md) | 185 | `result-track:ff127cff769fd127c15da1e08cac2c925bc3ff63d015c0ad050dcbe48abd7fd4` |
| 27 | `theorem` | [inv_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/inv-mem.md) | 189 | `result-track:1b019b18f79b224d6ce631d70dec7a54c8385ba729a3b0ecae2c1b00a5fb042c` |
| 28 | `theorem` | [div_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/div-mem.md) | 193 | `result-track:265a7bdd58e1ac038b3050ec0613fb81663414b9f8e4ad7be9af37c4a1a26088` |
| 29 | `theorem` | [list_prod_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/list-prod-mem.md) | 197 | `result-track:ca03346496cd2a16d832e332d5a4e981d8f116924236982be2f0c05eadb4cf4f` |
| 30 | `theorem` | [list_sum_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/list-sum-mem.md) | 201 | `result-track:f564789c8240f4e677eb05efdfbdfc79505ed78aa25d11dcaf266e899bad8a68` |
| 31 | `theorem` | [multiset_prod_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/multiset-prod-mem.md) | 205 | `result-track:9deef9f083089cfe670a1ba7c43d9b2a2c3f23e01fc2c6b9d807e44ed870f909` |
| 32 | `theorem` | [multiset_sum_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/multiset-sum-mem.md) | 209 | `result-track:519188a03b08706f7a9729b6825876b934a4fa2730de1888dc7501cc1e1b0c36` |
| 33 | `theorem` | [prod_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/prod-mem.md) | 214 | `result-track:f7e1c6370d29991585d129b1bd87a73466a367b08332c34d10be1cb9aa20064a` |
| 34 | `theorem` | [sum_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/sum-mem.md) | 220 | `result-track:f5cf6f1a690ffe4c6789e464f8c8f327d89fa86096589344c246f03266c178d4` |
| 35 | `theorem` | [pow_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/pow-mem.md) | 224 | `result-track:f2a5a1a889c9a0df1b621cd6ee962baf384ba751ad2a912d54f80068d16b76ae` |
| 36 | `theorem` | [zsmul_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/zsmul-mem.md) | 227 | `result-track:2c4181f13cb38926c16b891f97442c84cdfce68901b9743e4c34870aad1bf5b3` |
| 37 | `theorem` | [intCast_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/intcast-mem.md) | 230 | `result-track:0ffa93bfb37ee4bd2f925f27b644c31a3424d802bc6998d1d8feb5be858eeea9` |
| 38 | `theorem` | [coe_add](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-add.md) | 234 | `result-track:621e7f02a5ff0e0bcbd4f9c9f562da90e903773dfdd2770d9b4f10dfda318881` |
| 39 | `theorem` | [coe_neg](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-neg.md) | 238 | `result-track:6ee6ad3c4f03de0ee0ca9dc3706eb366a90a03093c7bd66b2b507b4104ebda5c` |
| 40 | `theorem` | [coe_mul](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-mul.md) | 242 | `result-track:7a8a2b76402499751cf5d8d8ba9634d8ed646d9df54c84891eb8629adc13905d` |
| 41 | `theorem` | [coe_inv](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-inv.md) | 246 | `result-track:2feecfea8a7730e65aaccc7bdaf4d2047552cf7318d0f820a28380f8f626f124` |
| 42 | `theorem` | [coe_div](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-div.md) | 250 | `result-track:34625395a753a2f0290e6721e8319cd45b423df2952c322796b0240021e4d808` |
| 43 | `theorem` | [coe_zero](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-zero.md) | 254 | `result-track:2ec3c5f0f06b13ea829e1d07c4e301c14ad0f076bd510b10a6ea52109f56c2c7` |
| 44 | `theorem` | [coe_one](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-one.md) | 258 | `result-track:fdb60b9445060abc849fbd7774813fa1e5b2a095bf7cc36be2e4d75822c0db83` |
| 45 | `theorem` | [coe_pow](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-pow.md) | 262 | `result-track:2fe96fb52d5c135742e2415dc831dbea9788666c75bd8e7d3e2ed17bffbfe150` |
| 46 | `theorem` | [natCast_mem](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/natcast-mem.md) | 267 | `result-track:7ed3275a5a096f28edee968f68420080eb1643355d9e3467db9b40046960d00a` |
| 47 | `instance` | [instSMulMemClass](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instsmulmemclass.md) | 269 | `declaration-track:a8c3e47574b2ecb787d23a0942f7dae1141ac3017b1354b1f8d7b0297f1d35f2` |
| 48 | `def` | [Subalgebra.toIntermediateField](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/subalgebra-tointermediatefield-source-edition-2.md) | 275 | `declaration-track:9784f2201490b8daa6799bb5781a85cc931901318e9c51488da58c4652817f95` |
| 49 | `theorem` | [toSubalgebra_toIntermediateField](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubalgebra-tointermediatefield-source-edition-2.md) | 281 | `result-track:cdf1aeaa471e073f1a92205292436a7f73df215db932812b5a921bf00d364116` |
| 50 | `theorem` | [toIntermediateField_toSubalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tointermediatefield-tosubalgebra.md) | 287 | `result-track:654127b3b82720aefc3840e17151e1e990efc6824948d6ff09f6e8985e7abdc0` |
| 51 | `def` | [Subalgebra.toIntermediateField'](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/subalgebra-tointermediatefield.md) | 293 | `declaration-track:6f0d5b61b63d9ee10b585e0f06f8b625c78cda096e376ca19eb42c86c40478c7` |
| 52 | `theorem` | [toSubalgebra_toIntermediateField'](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubalgebra-tointermediatefield.md) | 304 | `result-track:a9b514ff519d1c6b726427142767ed0e6b0186f3b4f2373c2b9f7888510d82c3` |
| 53 | `theorem` | [toIntermediateField'_toSubalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tointermediatefield-tosubalgebra-source-edition-2.md) | 310 | `result-track:f10dfb43bfe6ee2ba9cc0a92281291fbaa90b95f8aa64273fb407e17b5250100` |
| 54 | `def` | [Subfield.toIntermediateField](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/subfield-tointermediatefield.md) | 316 | `declaration-track:af25949813c8e8d680720c443b96084dade9d05e23f24490c24146d3a99b8db5` |
| 55 | `theorem` | [Subfield.toIntermediateField_toSubfield](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/subfield-tointermediatefield-tosubfield.md) | 322 | `result-track:77d461039f988779ec9eec07b14e6448b970a878757f3d09c9da1bd133f05d55` |
| 56 | `theorem` | [Subfield.coe_toIntermediateField](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/subfield-coe-tointermediatefield.md) | 327 | `result-track:6e3bb1afc92802529cb8b3518f4f65389f818b4370adcb9e12cd7b5fee311d87` |
| 57 | `instance` | [toField](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tofield.md) | 334 | `declaration-track:f8bb282c6770798bda0183536d95982878275f9b94ac121ef68c5d942cd55ccd` |
| 58 | `theorem` | [coe_sum](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-sum.md) | 338 | `result-track:2c0c126eb86d3867f1246a6325a3ca05b9d7f4bdb1a221bddb0f4825a77e83f0` |
| 59 | `theorem` | [coe_prod](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-prod.md) | 342 | `result-track:9c3512fd5455341b40cbc3fcddbf470062e4f5f74162457b7ce1c97f0378a503` |
| 60 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 352 | `declaration-track:ae4551abcdb2d358efcb1f7700cf55f817c46da0f17951c0ed2c733362e8a462` |
| 61 | `theorem` | [smul_def](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/smul-def.md) | 355 | `result-track:26e1a9cd7f514699b6c0875e8ed40775ae6140798c4fe5a73870a2925f5e9424` |
| 62 | `instance` | [smulCommClass_left](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/smulcommclass-left.md) | 358 | `declaration-track:562bc5758a54a2e3567df218981b4b3892316d42ec005ce7eb17162287fcdab6` |
| 63 | `instance` | [smulCommClass_right](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/smulcommclass-right.md) | 362 | `declaration-track:794689d5289e1ffc08eb3c0adae7565b972a8906fb5081a7d2130bdb7440590c` |
| 64 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 372 | `declaration-track:a9fbb31e759616b15daa204e3740dfb0d11cc573f5f1ba3f95704dfae73e428d` |
| 65 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 376 | `declaration-track:4ce5f2827ba71ff0f111557a0e2092d294519ef9d6195663a4f1a2239d96732c` |
| 66 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 380 | `declaration-track:7d7d518a3b0ce6bb6baa30a011aa5df0b471a2b49aa1e227e166a01d1b7efb8e` |
| 67 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 384 | `declaration-track:c5c91d899e4ea46b558e68d7d4ea24a371bb7c495791fdabff855779c4701a5e` |
| 68 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance.md) | 388 | `declaration-track:0d61c9e8d6bb5f363c561a93483af6a32f33848b92688171ff2f7748f98c0bf8` |
| 69 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 393 | `declaration-track:108c2d6cc33ad4d2eccb2fceb9b862a7ac5757ab00bfd5379f34dfc39c7faf92` |
| 70 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 397 | `declaration-track:0e4060e382d42fe3ed610af8317f535f840b379b548d9b0180dbd73f6843ff51` |
| 71 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 401 | `declaration-track:1de12cd9dfbfe089495324867d131797a08548a4420df0fdfe358f1ca4cd1e27` |
| 72 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 405 | `declaration-track:6577260dfc99c256856bcafa0867aa09aea6d4841af5b618227449db33eb537b` |
| 73 | `instance` | [toAlgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/toalgebra.md) | 410 | `declaration-track:63c1b9cae2c11298af3dbaf47038415ede0f14474c0374ba3fed1094ab1d5eee` |
| 74 | `instance` | [module'](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/module.md) | 413 | `declaration-track:c10435c490e7601218ce86399885ff419651bfec1a24cb3804861345303ae31a` |
| 75 | `instance` | [algebra'](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/algebra.md) | 416 | `declaration-track:5c6beaed172a908430b7a1f76f6bf2f049cc106ed2347ade1d7df34724eb23b8` |
| 76 | `example` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/example.md) | 422 | `declaration-track:8bb5994ff633bb8b9ac1769fdee479fca4fe59cbf2a5565aa827026a082afcd6` |
| 77 | `instance` | [isScalarTower](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/isscalartower.md) | 426 | `declaration-track:8474500105bfc06201e541a5a8b8b1870db0b8670b0af6c34c988ee88cf255b3` |
| 78 | `theorem` | [coe_smul](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-smul.md) | 431 | `result-track:6c67e68a6994f21cf08254bc7c90bf644c8ee844cbf29099f889faa91a3a9937` |
| 79 | `lemma` | [algebraMap_apply](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/algebramap-apply.md) | 435 | `result-track:11a54ae57b24ea710eca781f4b62d104e1380394d7ad5f630b35fb37377f9354` |
| 80 | `lemma` | [coe_algebraMap_apply](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-algebramap-apply.md) | 437 | `result-track:1813239f4f02d715763abc7a86cdcc392b193fdfba27e531f022fa05e1b81a91` |
| 81 | `instance` | [isScalarTower_bot](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/isscalartower-bot.md) | 439 | `declaration-track:d62d0e4f068bab335ae91989e7e631feb23beb0b024474f81664632129991033` |
| 82 | `instance` | [isScalarTower_mid](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/isscalartower-mid.md) | 442 | `declaration-track:5252f2f981f542e3d7347a793aeaa6ba8b1a3f398d94edf0ea3b02d354d4c413` |
| 83 | `instance` | [isScalarTower_mid'](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/isscalartower-mid-source-edition-2.md) | 447 | `declaration-track:762c18a910a0760cf66ce3a2d7ae2c612869008a915fa61ce9ba4799cb3993d0` |
| 84 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 450 | `declaration-track:509bdb676ee6e5d00c76b60b543481025c48645dd0f896b7d37d6a58b4991f67` |
| 85 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 456 | `declaration-track:7080ead6b50e0eee0ce065668443e2089a36bbaa49acf40d16d90d983bcdba36` |
| 86 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 458 | `declaration-track:a00a00d489fd4a4bb741ccefe13c4de15a2fac4ba8a784d0dad97fcf39d53e4b` |
| 87 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 460 | `declaration-track:3796a0f13871e251021e9945aacb3d1948f825e9605bbb90e78a56fc7f5b21d5` |
| 88 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 462 | `declaration-track:e24fa96e8c335e469830895d0f6096ce9dbdd1276bb28b19d1d25304ed5c52d3` |
| 89 | `def` | [comap](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/comap.md) | 468 | `declaration-track:cb5276b46fe155ca176059ffc6d2644d1a3eb8581e871ed1ce300f6148cef186` |
| 90 | `def` | [map](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/map.md) | 474 | `declaration-track:9b9a92a0de63c64eab6bbecb3ea0101856f1870f8dce45e2ef5aea8f4700aa2c` |
| 91 | `theorem` | [coe_map](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-map.md) | 481 | `result-track:830f0ad45b32c9b234f85e954d61d9b97917e21be3a064f54dd3e37b0a8c6050` |
| 92 | `theorem` | [toSubalgebra_map](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubalgebra-map.md) | 485 | `result-track:b829d3858ae7807c4f0b993b6a8ca39bb01afd92c8d50b199e4eb3fdb4c70541` |
| 93 | `theorem` | [toSubfield_map](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubfield-map.md) | 489 | `result-track:386796a8ad25a294e3347c3cb3e96fb260a19bb862cfe7581d43e2ddfc242879` |
| 94 | `theorem` | [map_id](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/map-id.md) | 493 | `result-track:93b9754b9e49cd69af5585913c83231be95e061903e537469d0a927abbcdc339` |
| 95 | `lemma` | [mem_map](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-map.md) | 497 | `result-track:d614b35dcdf3fcf2d03b2afae6fa68c91aafe3a86a0427d15cb12d7b22f20fb4` |
| 96 | `theorem` | [map_mem_map](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/map-mem-map.md) | 502 | `result-track:7e2e882e3155376ce2bacd6727cfd125b0566b4e12e194d5ac7fa6f01b476eb2` |
| 97 | `theorem` | [map_map](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/map-map.md) | 508 | `result-track:7ccf74e24cdb0a7c08d5745d3f47b83e2a817a793be6f627deec7cd2f3c08908` |
| 98 | `theorem` | [map_mono](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/map-mono.md) | 514 | `result-track:5653cf186968c06e57a6624bc038e43057b49db445dbfabc43f373c48080dd8f` |
| 99 | `theorem` | [map_le_iff_le_comap](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/map-le-iff-le-comap.md) | 518 | `result-track:1ccf5a957c9ab0be9481cd01e4071451eac57c03d6e768b5c820c5fc105bf3ca` |
| 100 | `theorem` | [gc_map_comap](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/gc-map-comap.md) | 523 | `result-track:c0396fd8ad899c8a009385efe6f2a0a77d04bdbc896ba3b21e0cec5ad6725fba` |
| 101 | `def` | [intermediateFieldMap](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/intermediatefieldmap.md) | 529 | `declaration-track:a0409ba427221e673560a9a242466bcb1cb78a94e32e137fe5f7cec50513f4a3` |
| 102 | `theorem` | [intermediateFieldMap_apply_coe](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/intermediatefieldmap-apply-coe.md) | 532 | `result-track:3fa771597754ea6c280873ea09e332b4c9991afe1ac3b56c27d3f0a893106f05` |
| 103 | `theorem` | [intermediateFieldMap_symm_apply_coe](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/intermediatefieldmap-symm-apply-coe.md) | 536 | `result-track:7028829e132beed2e14aa772978ab9f56949724f03f0ad28b05077d9d2237a4c` |
| 104 | `def` | [fieldRange](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/fieldrange.md) | 548 | `declaration-track:a31c6b65cc6d25a2110b2e6db0aa4c0fdc0b4f45c1c7faf26ebac554a788ac71` |
| 105 | `theorem` | [coe_fieldRange](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-fieldrange.md) | 552 | `result-track:64bc6fc35aed252b30f1231c0258ca55730a07445b117be8c378bdbcbdebd991` |
| 106 | `theorem` | [fieldRange_toSubfield](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/fieldrange-tosubfield.md) | 556 | `result-track:679ceec92107bcb199b5b575fa1b385e471d0f39cf0410126991983ac1197a58` |
| 107 | `theorem` | [mem_fieldRange](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-fieldrange.md) | 561 | `result-track:07ca8b965fad733bb90c705f09c3ac6384dd47097f1b018a8772327cf07855de` |
| 108 | `def` | [equivFieldRange](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/equivfieldrange.md) | 566 | `declaration-track:422b2ee0f6811d24250b3e4848b03e563a8d6d0a6a36710edec47e3d71efe0b6` |
| 109 | `theorem` | [IsScalarTower.toAlgHom_fieldRange](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/isscalartower-toalghom-fieldrange.md) | 575 | `result-track:e9a0bcc932e06cd0c085a4b512a12d255a14f34ebd05e18d5cb39a7fa93ad3ec` |
| 110 | `def` | [val](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/val.md) | 582 | `declaration-track:155d060d660c29294594a7bb64f08f034ff32a2132487d9d1f6d6bf9a1734cab` |
| 111 | `theorem` | [coe_val](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-val.md) | 586 | `result-track:b0d5c5e2d261cdc0507f0b840271d6327ef792f43d2842c56a7c5913537128fd` |
| 112 | `theorem` | [val_mk](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/val-mk.md) | 590 | `result-track:6b7b0bb957dcba8087d1674ed7ac969a4f044866775c00dc301c67b5c620f430` |
| 113 | `theorem` | [range_val](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/range-val.md) | 593 | `result-track:e6bd6f652c17d08dbda1eeaab03825191b8801d96dc9392f66ff5291cb615ba9` |
| 114 | `theorem` | [fieldRange_val](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/fieldrange-val.md) | 597 | `result-track:5522a02e5fd06e857cc2aadec24752ab1553baa100a2f7a59294de8a00cacaa2` |
| 115 | `instance` | [AlgHom.inhabited](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/alghom-inhabited.md) | 600 | `declaration-track:d6838779f8521ef9072d07c3c436f3122f12fa60a1abdc573aa0e274e4facd39` |
| 116 | `theorem` | [aeval_coe](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/aeval-coe.md) | 603 | `result-track:d25e1157645ce5d734ce1addbaf06af2f93e4eeba8166791d8c170a80937110b` |
| 117 | `def` | [inclusion](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/inclusion.md) | 610 | `declaration-track:e2836c87bdd191cf27899ef602c6b6ce65a6762d6d8bd8e8e9ccdc260865bb55` |
| 118 | `theorem` | [inclusion_injective](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/inclusion-injective.md) | 613 | `result-track:65bb7e7e72fd5fcfa2d7bd17ddce08f1ca5a6fcffcb311d1d57a986540494b9f` |
| 119 | `theorem` | [inclusion_self](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/inclusion-self.md) | 618 | `result-track:fe9c32a5c405d24b4aa80aa3103d42502219ef9241ec15becd58b7ad9fb9e30b` |
| 120 | `theorem` | [inclusion_inclusion](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/inclusion-inclusion.md) | 622 | `result-track:80b5c65a870c1c974873b35adbe9d3a655b709e3cb4c3fcb204a7c1d0aa31734` |
| 121 | `theorem` | [coe_inclusion](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-inclusion.md) | 627 | `result-track:40f57273996e7b18fa62faeda7069324a411d7c8fe78d1288fbcf10c32844b47` |
| 122 | `theorem` | [toSubalgebra_injective](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubalgebra-injective.md) | 633 | `result-track:400cdbc1a0cd7345ccd34da48bf20ffe3e542a9bbc34d7f76f3b3ac9145026ae` |
| 123 | `theorem` | [toSubfield_injective](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubfield-injective.md) | 638 | `result-track:8ebedf666a52424dad76a93ee9278ff5058850fb2e4826b26d76e557005a82c3` |
| 124 | `theorem` | [toSubalgebra_inj](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubalgebra-inj.md) | 646 | `result-track:9b4b8897762e3ee6951b97c70ca0d8984a33522f7742be5ae2073780c0dc03d4` |
| 125 | `theorem` | [toSubfield_inj](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubfield-inj.md) | 648 | `result-track:a84f3c5e37ea99cc76ea1d6f7453539ca4ada1916b30c6adda509b73be44fed5` |
| 126 | `theorem` | [map_injective](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/map-injective.md) | 650 | `result-track:e482208cea367e8b177ffae4d2e622c82d575c943b7720b907b89165ce4273f2` |
| 127 | `theorem` | [set_range_subset](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/set-range-subset.md) | 657 | `result-track:8825523572b4d1363e315899804e397b1e824c12239883fb68c4db0e41f53c03` |
| 128 | `theorem` | [fieldRange_le](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/fieldrange-le.md) | 660 | `result-track:28cc8986013c4d5a853cf41fe99853b1fa1941cfaed31bf70035215ebac84c47` |
| 129 | `theorem` | [toSubalgebra_le_toSubalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubalgebra-le-tosubalgebra.md) | 664 | `result-track:305d5c04600b67f8fc0eac43653066169f1a7f37500112f1ec9624f0dbda799c` |
| 130 | `theorem` | [toSubalgebra_lt_toSubalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/tosubalgebra-lt-tosubalgebra.md) | 669 | `result-track:c7644b3b8a08787147cffd735a1976a079af0dcb9fcdd88b940416cbe526790f` |
| 131 | `def` | [lift](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/lift.md) | 678 | `declaration-track:d3c12ad690ba4f28c8ff52c86d128acc79248e481a06a8c0c378c85344a820b9` |
| 132 | `theorem` | [lift_injective](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/lift-injective.md) | 681 | `result-track:568568bd04472f43bfb1df7dbd9da31ba1fb5b67b220b01f00360e4df7919980` |
| 133 | `theorem` | [lift_inj](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/lift-inj.md) | 685 | `result-track:853df4e0cc029771a18678538adfa4f6fdd9173e3ca4fb8414fd611d2d629503` |
| 134 | `theorem` | [lift_le](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/lift-le.md) | 689 | `result-track:9a2a2fe66fd16ff0425a5011617ece227be2eced4551476ce7c4d1e0cc69eebd` |
| 135 | `theorem` | [mem_lift](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-lift.md) | 693 | `result-track:68b85d9f19f11cdfc0ad99e9e8b4c94fe72bb1f3ed5c0416618429ac42f245b3` |
| 136 | `def` | [liftAlgEquiv](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/liftalgequiv.md) | 698 | `declaration-track:5e680a8ce7f5d992457908f379a46f2d8d8794e18a4053f3a8b15f2b061a00e7` |
| 137 | `lemma` | [liftAlgEquiv_apply](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/liftalgequiv-apply.md) | 707 | `result-track:cd7bba54cf304b0e6bdb243e7f1f540ffbea5863e0bfac0961f9c91cd10fcbcc` |
| 138 | `def` | [restrictScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/restrictscalars.md) | 717 | `declaration-track:d03824b659e42b6c9087a643382449efb8dfd21e9fee9db46a38e870187cda9a` |
| 139 | `theorem` | [coe_restrictScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-restrictscalars.md) | 722 | `result-track:b3c73e11709fb877fae1a6364454fef103834ca0a07a3576e3fdf208d1ddb535` |
| 140 | `theorem` | [restrictScalars_toSubalgebra](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/restrictscalars-tosubalgebra.md) | 727 | `result-track:efb71f0835d876ce906fb37944d0820bc12d3b6c58520e710d1ee73ebe1dfb1c` |
| 141 | `theorem` | [restrictScalars_toSubfield](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/restrictscalars-tosubfield.md) | 732 | `result-track:fc4a4757a304a681cf95905fc8a080a5117abf58a55354079447ebbba16e2859` |
| 142 | `theorem` | [mem_restrictScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-restrictscalars.md) | 737 | `result-track:52252c22f7912b624d27d7e7cb6eb47ad6c6ea77641a8841f8c7cc084101d218` |
| 143 | `theorem` | [restrictScalars_injective](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/restrictscalars-injective.md) | 741 | `result-track:63960ce15980708e07be8620d40ecc4d0f2695e85be6a193208fcf42a1b8091f` |
| 144 | `theorem` | [restrictScalars_inj](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/restrictscalars-inj.md) | 746 | `result-track:f41ba9164ab63f5650cfbfd7f0147b83455326ce6a3f4ab3d7d14f65b485ee73` |
| 145 | `example` | [(anonymous)](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/example-source-edition-2.md) | 753 | `declaration-track:bc755ae1c0f7e8b9b1186fa3ff1a0c65d6cb03a73920fe8a84ada1cf941f0dd5` |
| 146 | `def` | [equivOfEq](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/equivofeq.md) | 764 | `declaration-track:5e2da91c33c7e406e32dbcfe3c826cd6f5fe39114cd29901a778aef14029db39` |
| 147 | `theorem` | [equivOfEq_symm](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/equivofeq-symm.md) | 768 | `result-track:c20b2dcbac0802a49ec2be01378bb085e2c8111d302a5201a9459a156b67d175` |
| 148 | `theorem` | [equivOfEq_rfl](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/equivofeq-rfl.md) | 773 | `result-track:190aba7cf55e324ad9c296166af01c798dbbbb057804ad6e92de465bf565cb45` |
| 149 | `theorem` | [equivOfEq_trans](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/equivofeq-trans.md) | 777 | `result-track:b1463a4d97c8724510c7afa545de690368dfe6c03ecfee20137f51d7b397b154` |
| 150 | `theorem` | [fieldRange_comp_val](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/fieldrange-comp-val.md) | 781 | `result-track:587cef47b8eeb55486fb7c9e122458c2f6e7559036ffaa74cb73864416baf73e` |
| 151 | `def` | [equivMap](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/equivmap.md) | 786 | `declaration-track:5bee93c0d6a389fbd19f6c6fae9046d272107a716399be4ca2730895444f521a` |
| 152 | `theorem` | [coe_equivMap_apply](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-equivmap-apply.md) | 790 | `result-track:afe734f5b5a5bf562f9c8274bbc10fee4badbf2e4d2b955dfba6164dbe86e5d0` |
| 153 | `def` | [extendScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars.md) | 804 | `declaration-track:578d10656c26f07d843685dc16326d1a4bffa1b140f474987e368763eea501d3` |
| 154 | `theorem` | [coe_extendScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-extendscalars.md) | 807 | `result-track:62b2c8cf2e4062444ec0f26ef5b379991ed0a344e6a00165839bb7bb9f1f0a34` |
| 155 | `theorem` | [extendScalars_toSubfield](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-tosubfield.md) | 810 | `result-track:02e1df4e98d05824a169b0b6e512d8a0a0e1e622e96a28014d7c8d68546c89c8` |
| 156 | `theorem` | [mem_extendScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-extendscalars.md) | 813 | `result-track:3b183037460dcfbd91b9a5896fe76a463982c16b4dc72571bb1424342d318e81` |
| 157 | `theorem` | [extendScalars_le_extendScalars_iff](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-le-extendscalars-iff-source-edition-2.md) | 815 | `result-track:93ee8d364326e87f323caaa86217760c8f447d835860edf331a2de6913865ecc` |
| 158 | `theorem` | [extendScalars_le_iff](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-le-iff-source-edition-2.md) | 817 | `result-track:d07dd781d2aec074dcbcc5f30794cbe63a6e7b89705bc4ad2fe45e67ce49f2a1` |
| 159 | `theorem` | [le_extendScalars_iff](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/le-extendscalars-iff-source-edition-2.md) | 820 | `result-track:b343aea91a9e64e6ef22578ccaa7f0aa83d85bd2323172c34569f2033841f860` |
| 160 | `def` | [extendScalars.orderIso](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-orderiso-source-edition-2.md) | 830 | `declaration-track:9e750c629c9da48a3842c5e7daee93ca2c6c439fc36bed68dbff12a00c6884a0` |
| 161 | `theorem` | [extendScalars_injective](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-injective.md) | 838 | `result-track:8a85731d39ac826273dd99d724b09c90c8d3020da82d0f2c766530cb906ca090` |
| 162 | `def` | [extendScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-source-edition-2.md) | 850 | `declaration-track:88076cc8f73969c6aeef6487fa0ca18bbc92886ad44f9308a4d09830cdd5e6ad` |
| 163 | `theorem` | [coe_extendScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/coe-extendscalars-source-edition-2.md) | 854 | `result-track:d0ad673e27f8511d0cd2a20864f0a21a74cede950e65f98da441c8ca98d23875` |
| 164 | `theorem` | [extendScalars_toSubfield](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-tosubfield-source-edition-2.md) | 857 | `result-track:eb4d15657491ce56c832e77df6ae4082fda6bba9b4323113c83ae144d264f1ed` |
| 165 | `theorem` | [mem_extendScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-extendscalars-source-edition-2.md) | 861 | `result-track:f8310a3754ee9c02542e6b66dc052c62a620d33deeac56d0fc091e7982869325` |
| 166 | `theorem` | [extendScalars_restrictScalars](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-restrictscalars.md) | 864 | `result-track:30471b95b51b5d732bb6c3d578504edf2f81eed63723f4b9e2eb514f353659e2` |
| 167 | `theorem` | [extendScalars_le_extendScalars_iff](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-le-extendscalars-iff.md) | 866 | `result-track:2195af6750d7bf5c8caa78c7bfb212c380155f24cfafc814ddd13f0e09b04f70` |
| 168 | `theorem` | [extendScalars_le_iff](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-le-iff.md) | 868 | `result-track:ccbbbccb62944ddaaeb3276bda6153a4a5056883f2a8308ee4522eed45c441ae` |
| 169 | `theorem` | [le_extendScalars_iff](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/le-extendscalars-iff.md) | 871 | `result-track:0cab45db590b8d6eedd28c98995bc1eb599c741f7e12f1020db4091dde906732` |
| 170 | `def` | [extendScalars.orderIso](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-orderiso.md) | 881 | `declaration-track:65b46b533618eb9fe88780a1a9ab27b46987e515388b527c55a52561a05a84eb` |
| 171 | `theorem` | [extendScalars_injective](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/extendscalars-injective-source-edition-2.md) | 888 | `result-track:e4b4cc18dee8dfc26eaf81737c45b000b832e306dec70cc29def004c12cef7d0` |
| 172 | `def` | [restrict](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/restrict.md) | 911 | `declaration-track:dbe75d4aa127330ac6e627976732dee56c7637ce177819f03090fd7e0f6e018f` |
| 173 | `theorem` | [mem_restrict](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/mem-restrict.md) | 914 | `result-track:6e82c7998a9cac500bbbaf5e5c0c6af68c56f8263981b8e921c93fedef29414b` |
| 174 | `theorem` | [lift_restrict](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/lift-restrict.md) | 918 | `result-track:2e2b2787ef14a7d21d34c13a6857c06a22b1c54415bbff1f7363c145701e2d5c` |
| 175 | `def` | [restrictAlgEquiv](../../../../FieldTheoryAndPolynomials/IntermediateFieldBasicNamespacedPublic.lean/declarations/restrictalgequiv.md) | 929 | `declaration-track:d3486497fc816dcd3e20d6b3171b23ac012e2734a31407cb5fcfb3b50a56eebc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03f6d89ca0b46d82e370e174075fbe8688db6ce5a48f79b3aaff8c48e3a6363c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FieldTheory/Basic/Variant1f0e1c7ed415d7524245d1260c28a75952c579f9e8c5d844cdfe08f3c71421c0.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/Basic/Variant1f0e1c7ed415d7524245d1260c28a75952c579f9e8c5d844cdfe08f3c71421c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
