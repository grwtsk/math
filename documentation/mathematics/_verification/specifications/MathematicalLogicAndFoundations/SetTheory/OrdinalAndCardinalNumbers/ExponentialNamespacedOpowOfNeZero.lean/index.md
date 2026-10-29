# Verification target: Exponential Namespaced Opow Of Ne Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "111ccab22fac5946e45cc039a818e4f7f3569a5d",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant48c5b97fd54ae41a8779d1275fb1e4caa10c0982c3567c53bdfe7041ed312551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `111ccab22fac5946e45cc039a818e4f7f3569a5d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant48c5b97fd54ae41a8779d1275fb1e4caa10c0982c3567c53bdfe7041ed312551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant48c5b97fd54ae41a8779d1275fb1e4caa10c0982c3567c53bdfe7041ed312551.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Family` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instPow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/instpow.md) | 35 | `declaration-track:60fd5acb13c25ae7d0ccccd6f2a133200ed7a03c149be3db7ce3cff2b3cd8212` |
| 2 | `theorem` | [opow_of_ne_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-of-ne-zero.md) | 39 | `result-track:892002c6910162f3aeb8d0b37471647162ef627971d9cf8b5356bfd4d581ed2c` |
| 3 | `theorem` | [zero_opow'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/zero-opow.md) | 44 | `result-track:233e3d124465e4eb9242c3dff7f39b16e0e43881f65ac1c4afa782924b63d581` |
| 4 | `theorem` | [zero_opow_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/zero-opow-le.md) | 47 | `result-track:d152ab0af29c6fd60fc32a8794c05fa6ea3d06ea68288adcad9c456cafaa9d1f` |
| 5 | `theorem` | [zero_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/zero-opow-source-edition-2.md) | 52 | `result-track:8b76a9d18598268e4421d9a747e05ffe8ab5b8e8f44456282d803663dba55044` |
| 6 | `theorem` | [opow_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-zero.md) | 56 | `result-track:3c32f1667c61a84effe5bee785d486ea4471c5f5deb7a7afe2f07a3751e7a43b` |
| 7 | `theorem` | [opow_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-succ.md) | 62 | `result-track:17b3a68e4d06fd944db336c65370aec28d7ab316ad657c6fe87b340c882bece7` |
| 8 | `theorem` | [opow_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-limit.md) | 67 | `result-track:5ce38f87f74c32bb0462613f0147239f4a91fe682eeb6d362c5322896de76b73` |
| 9 | `theorem` | [opow_le_of_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-le-of-limit.md) | 71 | `result-track:870de0dd0f29e84a1526ccab4033fee583d296e83fa77a3d3413a3b9430e47d4` |
| 10 | `theorem` | [lt_opow_of_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/lt-opow-of-limit.md) | 76 | `result-track:97fc47c7244491e06f3c2dd8b6cbe8eae82e50c70d4188d1cc47dd267353c1ab` |
| 11 | `theorem` | [opow_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-one.md) | 82 | `result-track:9a938c17530de99188785843085402e9c3b8807150fc3a97a0a70fcaf820fcd3` |
| 12 | `theorem` | [one_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/one-opow.md) | 87 | `result-track:5991cfc21afce2df4d5723eb1485a07a23c374e5af9a53bc671530051738b2d7` |
| 13 | `theorem` | [opow_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-pos.md) | 97 | `result-track:62b670b78eb45ce1d32c91e1b140cb9cdcbd6f23df4bc3d666e39247bb3ae06a` |
| 14 | `theorem` | [opow_ne_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-ne-zero.md) | 107 | `result-track:4cc0523e0ee804700d72cb039f72d586573ed7c474e421df089872fa8a87eefd` |
| 15 | `theorem` | [opow_eq_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-eq-zero.md) | 111 | `result-track:f2b6fb07bc0a911692d83ec03f1f4cd164d21348a2f78f3913450860c942203f` |
| 16 | `theorem` | [opow_natCast](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-natcast.md) | 119 | `result-track:d2526d75195a1dd3d4590843a63307a1c5aed0737088ad7405eff8d1d53e64a5` |
| 17 | `theorem` | [isNormal_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/isnormal-opow.md) | 124 | `result-track:8a1e84c715135174db25d805f1d3fcc3dc76fc6a7b73aca8c3ccc57f500b1dad` |
| 18 | `theorem` | [opow_lt_opow_iff_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-lt-opow-iff-right.md) | 129 | `result-track:83fd797fec3e0df590baa5bfcdc73cd20d84986618a9d8c108c8fd7065c3920e` |
| 19 | `theorem` | [opow_le_opow_iff_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-le-opow-iff-right.md) | 132 | `result-track:a0b287a4dd2cf9995bcffa6e4aa9e031147e54429913c141ab7b1793734b31b7` |
| 20 | `theorem` | [opow_right_inj](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-right-inj.md) | 135 | `result-track:d1ded38e6b680879226a365207f3f11c4506ecd73c66ea683ec2de9a9b2f92b6` |
| 21 | `theorem` | [isLimit_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/islimit-opow.md) | 138 | `result-track:65dcc2eb3dfe6cf7fa5049d57f8624c5a0de95e082485417fa9d6d9673a068f7` |
| 22 | `theorem` | [isLimit_opow_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/islimit-opow-left.md) | 141 | `result-track:050b708972f3e49b11ad3a47b26443c4f4cefb70cec90b97344e041a29765ccb` |
| 23 | `theorem` | [opow_le_opow_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-le-opow-right.md) | 148 | `result-track:30bee569d82009dbb88e0d19e8c1ccce1a67414d1022b9106daec39463c6f6d7` |
| 24 | `theorem` | [opow_le_opow_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-le-opow-left.md) | 155 | `result-track:d2468d98270c82606e3db1afe00441f1267fd47daed1b101ce7db0245c72ddb8` |
| 25 | `theorem` | [opow_le_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-le-opow.md) | 172 | `result-track:ab7af828e6ac37dde2d95c3cb1f697861161588812c8289d7301c1e6f78f1f3f` |
| 26 | `theorem` | [left_le_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/left-le-opow.md) | 175 | `result-track:405f76da0e21c46831b77bd1db15b646914a04ba523b6bd6be34f3025eabe78b` |
| 27 | `theorem` | [left_lt_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/left-lt-opow.md) | 185 | `result-track:c6c92883b776384724a70e529d0ea9c4a63a980ca5e2869998b9989662111926` |
| 28 | `theorem` | [right_le_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/right-le-opow.md) | 189 | `result-track:df26ead943a9d2086d1cb8ff006c2307d4c5ae45443ef7b5c4b952f3ae102e08` |
| 29 | `theorem` | [opow_lt_opow_left_of_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-lt-opow-left-of-succ.md) | 192 | `result-track:8c1f322c154199a6a28418f21496fa1e3c82f4279ed94ecf710c7ce7ee16ca8f` |
| 30 | `theorem` | [opow_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-add.md) | 198 | `result-track:1369b2e504f8c25ca84555df403ef51ef33556d7802a4d9be9c319a78e6d7fea` |
| 31 | `theorem` | [opow_one_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-one-add.md) | 221 | `result-track:7cb2dc1c0571422fb786d0380f8eef88be65da6c2e028f5fb22d230cc2321f92` |
| 32 | `theorem` | [opow_dvd_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-dvd-opow.md) | 223 | `result-track:fc8f99be5956f12e3fd63041f634f45540546a1dea112b083b34fa121e594ae6` |
| 33 | `theorem` | [opow_dvd_opow_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-dvd-opow-iff.md) | 226 | `result-track:e48f88be01519975acb797286f53b1dbe577d1a0014897c017b1f1784a61455f` |
| 34 | `theorem` | [opow_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-mul.md) | 233 | `result-track:851f05effce600e9cb00a36c16f40a1a42bde09ee962086f5ff31a3cdd6ed613` |
| 35 | `theorem` | [opow_mul_add_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-mul-add-pos.md) | 257 | `result-track:7044cb525970bebfd9585a7daf39f6b0f007d70bcfd776f5c0e5d55562365068` |
| 36 | `theorem` | [opow_mul_add_lt_opow_mul_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-mul-add-lt-opow-mul-succ.md) | 262 | `result-track:96bd0e778a912da81577bc49fbd603d93ca34ceebc2ef6e29cfbe602622428b4` |
| 37 | `theorem` | [opow_mul_add_lt_opow_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-mul-add-lt-opow-succ.md) | 266 | `result-track:62df367a4996ff8dece14a76c61d8e51c3dd741aff425d3eca40bba8dd84c7f4` |
| 38 | `def` | [log](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log.md) | 278 | `declaration-track:d3b19a281948318072df2ba2d8ec09038cccc02686a961436d8a92089e710c4b` |
| 39 | `theorem` | [log_nonempty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-nonempty.md) | 282 | `result-track:1119acbe223f5a0ed925d4a9fa38546a84efc3657998fa97720ec195c9eb6898` |
| 40 | `theorem` | [log_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-def.md) | 285 | `result-track:0d520b4b73817edaa25e6cf3602b20f71023ec85b0c8ea685da4fa0c501852b3` |
| 41 | `theorem` | [log_of_left_le_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-of-left-le-one.md) | 288 | `result-track:38625134bf3e27939732d124ff415bffda3c63eba7bb84cf778ddfd4437a4ec1` |
| 42 | `theorem` | [log_zero_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-zero-left.md) | 292 | `result-track:a4a2221d0496dc1fb4b68cab3e0194dc90bc65726953e527ddc786e9eadbb9aa` |
| 43 | `theorem` | [log_zero_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-zero-right.md) | 296 | `result-track:13b0bc3e27fae952d25b1a9d930ef780fa7d7606e52b25e1cb7f2bde610dd59a` |
| 44 | `theorem` | [log_one_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-one-left.md) | 305 | `result-track:a30df3758426ec921a78882bbade0c79a8b583b160ffeda2b04d17bd483d3553` |
| 45 | `theorem` | [succ_log_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/succ-log-def.md) | 308 | `result-track:d9ab7d7cc3edc2e529950ca5fe7ab02446eecd2ca9b8305585de7249deea1903` |
| 46 | `theorem` | [lt_opow_succ_log_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/lt-opow-succ-log-self.md) | 319 | `result-track:3d02e994d51d7593e8a3ba4d34f901fecaaa48b8c227b954cbfedb8f3f3a8be0` |
| 47 | `theorem` | [opow_log_le_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-log-le-self.md) | 326 | `result-track:3b38570a619c0c9af157b63c21216f8c50b0226e6668179d3e4ebb69fa296f65` |
| 48 | `theorem` | [opow_le_iff_le_log](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-le-iff-le-log.md) | 340 | `result-track:50c8ef8d416fe9e8a1c8b602a1647e2ada3994323401a539a3c2042904ee678b` |
| 49 | `theorem` | [opow_le_iff_le_log'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-le-iff-le-log-source-edition-2.md) | 355 | `result-track:cd45fa8b92aad13726b56f8902df7ccffaf38d2617737dbc46504fafc1726b66` |
| 50 | `theorem` | [le_log_of_opow_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/le-log-of-opow-le.md) | 362 | `result-track:061561d4d112c7e8a27c255d5cac453d82d6992087d30f8c487a9766fb5beb56` |
| 51 | `theorem` | [opow_le_of_le_log](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/opow-le-of-le-log.md) | 368 | `result-track:2ed4e8b783ce2f5af7eb9dd64273ff93e31f2ff509aa645ecf3ce9fc3730acac` |
| 52 | `theorem` | [lt_opow_iff_log_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/lt-opow-iff-log-lt-source-edition-2.md) | 379 | `result-track:a1394e6951a5607b8b24abd68855b8bbbaf8659a4373c2c8ccf92ada544a2293` |
| 53 | `theorem` | [lt_opow_iff_log_lt'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/lt-opow-iff-log-lt.md) | 387 | `result-track:220154a0bec4a2c760c4ac0f3ec6ed8eb31da3c4218b0d0ccff87de43c06aef5` |
| 54 | `theorem` | [lt_opow_of_log_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/lt-opow-of-log-lt.md) | 390 | `result-track:6ac4af37c77c14bd2b224e0f1342176c5f08ff69c24ccfa439abb0a2931bbe1a` |
| 55 | `theorem` | [lt_log_of_lt_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/lt-log-of-lt-opow.md) | 393 | `result-track:d1102ddb425246e2270140072e23f59def190639a275b61d0e4b23549bf572e1` |
| 56 | `theorem` | [log_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-pos.md) | 396 | `result-track:afad65488a9c4dbf3c8c158405e44e95ed093c20c3e727257c69f9c0ac8deb09` |
| 57 | `theorem` | [log_eq_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-eq-zero.md) | 399 | `result-track:3c11fd225c5f79879fe5c763b9ff60daad475da00a285111c401f285b6fe2e5b` |
| 58 | `theorem` | [log_mono_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-mono-right.md) | 409 | `result-track:dea4354ac9b4040e3c3280a47993580c364251672446aa34acac388bbb78f33d` |
| 59 | `theorem` | [log_le_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-le-self.md) | 417 | `result-track:81b20e69dbc62c3189eeed112424ebc3dae08367c502528606a5f8bd215c0ebe` |
| 60 | `theorem` | [log_one_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-one-right.md) | 425 | `result-track:eff75081ac8cb169ba499a95da0b4540ecbbeb8c4f8055e0ec13a22ebcc1b1cb` |
| 61 | `theorem` | [mod_opow_log_lt_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/mod-opow-log-lt-self.md) | 430 | `result-track:a1824a0a1e10ea4e619d21377d8d1c01966246b2ccc7a25f91545e7ce260e77f` |
| 62 | `theorem` | [log_mod_opow_log_lt_log_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-mod-opow-log-lt-log-self.md) | 435 | `result-track:093d1bff4790505c2c01750c8760ddf5f11e6def4440d482fd52f33d00eb2f09` |
| 63 | `theorem` | [log_eq_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-eq-iff.md) | 446 | `result-track:46797aa1f377af9008074731e6890748f0c68e36cbc5aef55fa43cbe9c09caed` |
| 64 | `theorem` | [log_opow_mul_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-opow-mul-add.md) | 456 | `result-track:07ba9f3b480d1730e3028c049cc64efbed8c176601ce684811f0053baaf47f94` |
| 65 | `theorem` | [log_opow_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-opow-mul.md) | 470 | `result-track:de14c8bea8c75890abc272caaa18c668798293eb650defe6cd7ca2bbd197f002` |
| 66 | `theorem` | [log_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/log-opow.md) | 474 | `result-track:5521f336d0dc1ef5b354e80f7238c3d25d3a52c8a9dd94827f3cd4b8f93d73e2` |
| 67 | `theorem` | [div_opow_log_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/div-opow-log-pos.md) | 479 | `result-track:3cd9e36dcf98aea36a09f9e4de0dadd6629a60e74904e39cbfb177ce01a12094` |
| 68 | `theorem` | [div_opow_log_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/div-opow-log-lt.md) | 485 | `result-track:5226e95d9e11935592a4aaf52a3ecc8d6e256efbae65ac98c35fc2763771776e` |
| 69 | `theorem` | [add_log_le_log_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/add-log-le-log-mul.md) | 489 | `result-track:b9e6cc4f22890bcd01fc91006cdb051d634a3db213f270246fc65b96e8edccc9` |
| 70 | `theorem` | [omega0_opow_mul_nat_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/omega0-opow-mul-nat-lt.md) | 496 | `result-track:c01d79491d7a4779e5026a267fa5bb8b378eea3277a0610ce1ba76f12cc9b1b5` |
| 71 | `theorem` | [lt_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/lt-omega0-opow.md) | 501 | `result-track:3f9b92689573487c3792076caa1a98dc36c8a80e82d624408ea095d44a1a67cf` |
| 72 | `theorem` | [lt_omega0_opow_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/lt-omega0-opow-succ.md) | 510 | `result-track:4d6e47bffb3bdacc7dc994e6f3cc748fbcd0976fcf63d51e14d708b621605c31` |
| 73 | `theorem` | [natCast_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/natcast-opow.md) | 519 | `result-track:003976e475318d8b7d33e82a03a8ba67f40bf60dd0b75954b4e4321d98b8f316` |
| 74 | `theorem` | [iSup_pow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialNamespacedOpowOfNeZero.lean/declarations/isup-pow.md) | 524 | `result-track:23fc5c9b53fb59d341b795d9f4c9ac54b82423de1198cfcccc5aa8245173e5b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a54523147437402c886def093751f9b1c95541474bc4b836e09228898d1cc43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant48c5b97fd54ae41a8779d1275fb1e4caa10c0982c3567c53bdfe7041ed312551.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant48c5b97fd54ae41a8779d1275fb1e4caa10c0982c3567c53bdfe7041ed312551.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
