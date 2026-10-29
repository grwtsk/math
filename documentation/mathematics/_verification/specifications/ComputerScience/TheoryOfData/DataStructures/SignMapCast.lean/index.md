# Verification target: Sign Map Cast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd7e734e6c27ed4a33393fa6dee92e118a77b2fb",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd7e734e6c27ed4a33393fa6dee92e118a77b2fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Cast` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SignType](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/signtype.md) | 22 | `declaration-track:5b02d92a3b642027e959b17524be9f54e4084f1370c3c98420a7c2711940dba7` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance-source-edition-9.md) | 30 | `declaration-track:f65845b30d4fd5e041cc8d385384301709550dea023ec90e98c2eb9c0f512f5e` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance.md) | 33 | `declaration-track:0c28e548a04615dd99eb148501b6acd2798fbb33402ef8732791db75c9762953` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance-source-edition-5.md) | 36 | `declaration-track:5d999f39b884db0815978fdf0c1d53b9aa5536b6d1aa859f283d7e5d7cad6150` |
| 5 | `theorem` | [zero_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/zero-eq-zero.md) | 44 | `result-track:b670ada57eb0fbf72419919836f2e9956070bc1343c10553ab64d5fa03985288` |
| 6 | `theorem` | [neg_eq_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/neg-eq-neg-one.md) | 48 | `result-track:e81295695031888fb1cf61f5ffb48a2641f136ab756f709b1653167083746ae0` |
| 7 | `theorem` | [pos_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/pos-eq-one.md) | 52 | `result-track:d79877829fc3ca01d6d3b4609f2d9f5122595e6158c7f263b6dde37cafe32c85` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance-source-edition-7.md) | 55 | `declaration-track:868e3821385ee3a75faaac592f0ac5d6c1f4b8af281b78f919002d606244d6f8` |
| 9 | `inductive` | [LE](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/le.md) | 63 | `declaration-track:9b3984bf436ef5bc8693391bb4096500bbe8c89a8a4102fcbf19041309b4c164` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:4de7df43e97ea3c6a59efc3e73012f74475519e2af41ce6a77e08d975f3573f4` |
| 11 | `instance` | [LE.decidableRel](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/le-decidablerel.md) | 71 | `declaration-track:78105d620766ef55473d37345dfd39e059f19cd0a170366ff5811d8a202b0f4c` |
| 12 | `instance` | [decidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/decidableeq.md) | 74 | `declaration-track:e9335095a655afe81bee8d0ce84fee3c0563f45bb39ee1d77d6b8fbf817d8d3f` |
| 13 | `lemma` | [mul_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/mul-comm.md) | 77 | `result-track:8a2b254d7e45edb9df39dc9a2ed4e6d252500434420cf4c80ce2ca626d83b646` |
| 14 | `lemma` | [mul_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/mul-assoc.md) | 78 | `result-track:254727b4eb1965373d10fbb05c9ea2e21744f41759ecd680308dfd48c4f6fc8f` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance-source-edition-6.md) | 83 | `declaration-track:82d5fc78aa053a0feb00650a90e386970faccf4bb2cdabc6f636a4d19debb1f0` |
| 16 | `lemma` | [le_antisymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/le-antisymm.md) | 98 | `result-track:ed9b487da0f508ecb89a557abd41c0a8bb767aa31818f38405c369fee2b5494d` |
| 17 | `lemma` | [le_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/le-trans.md) | 101 | `result-track:675d22b571ece3a114bc6584ce9a9c4e364838a382d394d299cf98fb1319d103` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance-source-edition-2.md) | 104 | `declaration-track:2f674d0709dcd5af83e2912807847fc9bb302a9bdeb0e3a68101bcf44fb01ed8` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance-source-edition-10.md) | 113 | `declaration-track:f8734cdcaa83c804a97bad422fbea384766f8481d5ea17416a9fa5bac8ba4af9` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance-source-edition-8.md) | 122 | `declaration-track:dcbb4ae1f80244bef5ea67bc27fda5e56469e6cd5c9ac4f3d4547e1c341a677c` |
| 21 | `def` | [fin3Equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/fin3equiv.md) | 128 | `declaration-track:b11f171f7bfabe7851c99b9f6b8ff30cf8cdc78eda473dc6950c2b1218c831f1` |
| 22 | `theorem` | [nonneg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/nonneg-iff.md) | 150 | `result-track:8bf2d00a8abdf47656f6f657836d2aec1bd303ed5bf36445acada954b1f447a7` |
| 23 | `theorem` | [nonneg_iff_ne_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/nonneg-iff-ne-neg-one.md) | 152 | `result-track:b592b5df2e40f3b12bc4ed7108cb8cfd5f369cb6ddddf44aab21020be31ec456` |
| 24 | `theorem` | [neg_one_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/neg-one-lt-iff.md) | 154 | `result-track:e013b766f8d8612410bbe0fb6aa4826c1798903ee73ef427f6b71b2549b8830b` |
| 25 | `theorem` | [nonpos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/nonpos-iff.md) | 156 | `result-track:4dae959fa2ebd8f4e16cfd824c6a246d1a424ef2417d84885c1632d39a8362e8` |
| 26 | `theorem` | [nonpos_iff_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/nonpos-iff-ne-one.md) | 158 | `result-track:5223cc3436c45db1a5e07629dd299394683089121bf7d017ed3e7b936a5eb454` |
| 27 | `theorem` | [lt_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/lt-one-iff.md) | 160 | `result-track:549bd570311db0377fb90d5bea257a07b69beaf8a97caee914089448624c313b` |
| 28 | `theorem` | [neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/neg-iff.md) | 163 | `result-track:9d01c329a9ae4ab040d0bada998c95ad3958e6368550db0b2c93e6b8be8997a0` |
| 29 | `theorem` | [le_neg_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/le-neg-one-iff.md) | 166 | `result-track:a4ecaaf32753f4d47b753591c1ede74aeb5ff076122ff9d109afd896942a51d6` |
| 30 | `theorem` | [pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/pos-iff.md) | 170 | `result-track:d60478a48c779b52ff5ba2140d3fd88a373526459f850cc3fd77261a1c73c750` |
| 31 | `theorem` | [one_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/one-le-iff.md) | 173 | `result-track:1cb889730235a0ce7adc2d7373c69902a10cd8a29f38154de5d4fa88fce7dc93` |
| 32 | `theorem` | [neg_one_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/neg-one-le.md) | 177 | `result-track:adc45f097626c7f002c6da3be2208f29437b11e04c5aca81b5fd4f154877bab3` |
| 33 | `theorem` | [le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/le-one.md) | 181 | `result-track:3ca618a6e98df6927ff6ae893fdc19fdf6bda2737c218d6705e592ca7adff0f5` |
| 34 | `theorem` | [not_lt_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/not-lt-neg-one.md) | 185 | `result-track:d63647ec82ca39df5504a7f7e8b1bf4a6dbca3c4675ffcfe513968c4ad923c18` |
| 35 | `theorem` | [not_one_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/not-one-lt.md) | 189 | `result-track:42797ad82970914f7ae9c0c3d350ca51242b00acd1acbe521d251c1f7aea9c70` |
| 36 | `theorem` | [self_eq_neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/self-eq-neg-iff.md) | 193 | `result-track:cfbbfc14d71f1973b8e6b4c2b9cbfe8b74873ba4e874aac7ece89a035d8dd186` |
| 37 | `theorem` | [neg_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/neg-eq-self-iff.md) | 196 | `result-track:04a42547464a64720a4188f2cfe461355184d9b433ba6d8dac40b0830fa9d085` |
| 38 | `theorem` | [neg_one_lt_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/neg-one-lt-one.md) | 199 | `result-track:3c156e04e64cbcc35a902846a5b955899c91511e025878a80ee0ed5096f77df3` |
| 39 | `def` | [cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/cast.md) | 210 | `declaration-track:c691ab32e2b42cc067856f8c40ef271f998269433427ec6766c1be3868840d84` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/instance-source-edition-4.md) | 220 | `declaration-track:4e83a241ac24f2edcac5a20ea56df9656cf6a0447c80e9551a5b0136bc743248` |
| 41 | `lemma` | [map_cast'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/map-cast-source-edition-2.md) | 224 | `result-track:5fdc4a88c2e89671e49f26eae526e455ea9870bd95d2f40f5428933c0d3a5525` |
| 42 | `lemma` | [map_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/map-cast.md) | 230 | `result-track:5e21bfca107e09649a7011ac9b4ff731bcd9b344012f0c53ed37c9a6e5516b8d` |
| 43 | `theorem` | [coe_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/coe-zero.md) | 236 | `result-track:61d2e0fb9579a46ca1650864b680fffda1fca49db744236434bd368c9c888fd8` |
| 44 | `theorem` | [coe_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/coe-one.md) | 240 | `result-track:5a8807b0b41e8a82430cf76dcc18b7789a04d03188ea351cb57554d4889c62d3` |
| 45 | `theorem` | [coe_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/coe-neg-one.md) | 244 | `result-track:3f8544aa6d927455b66ce2bdb82e3e4e46fe6f746ed7c0aaf779777d46994922` |
| 46 | `lemma` | [coe_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/coe-neg.md) | 248 | `result-track:41597f1759892782125f6ceb706d1ae309ebbcd2b14880c3f6de069040369193` |
| 47 | `lemma` | [intCast_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/intcast-cast.md) | 254 | `result-track:d16ce30e2628c25659ad5ab79b9d0dfc2b95acc2f56405bb7d1806282397c751` |
| 48 | `def` | [castHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/casthom.md) | 261 | `declaration-track:2fd10bfca34c5ca0dd5a4fba9a0a1e743f9c89937d16e3d8a081990dc90209e5` |
| 49 | `theorem` | [univ_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/univ-eq.md) | 267 | `result-track:93f2e2dc08444ca54c92d63d4711836e2d146c21ad425d4e041ac4c81bda0e5d` |
| 50 | `theorem` | [range_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/range-eq.md) | 270 | `result-track:d98b3e845bbdd6516b0d8058717cd5c44ac8c7bdfadf961afedc36cfcb6d9cc5` |
| 51 | `lemma` | [coe_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/coe-mul.md) | 274 | `result-track:11cb368803d795a29812d489450aafd9b068169b172facf5fa064067c66a4e58` |
| 52 | `lemma` | [coe_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/coe-pow.md) | 278 | `result-track:0d4c0954e63065f97515ed117f3020e79b4a9143f4fb044489d62a96cb7aaea1` |
| 53 | `lemma` | [coe_zpow](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/coe-zpow.md) | 282 | `result-track:086e827e6d3431d761c1dbdefb65142579ed4591f57bcc52ea63333b77356684` |
| 54 | `def` | [SignType.sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/signtype-sign.md) | 300 | `declaration-track:d12067c9f3d28bd90bd44fd940327f7bf575ec2d8d24764783468257cbf76c43` |
| 55 | `theorem` | [sign_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-apply.md) | 308 | `result-track:31a3679a496a99b30f7e4e0fca271cf7c108d33e381a32df53f8f78deee3edea` |
| 56 | `theorem` | [sign_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-zero.md) | 312 | `result-track:e2f53b10e9d42703021abd901afb75046824a15aab68473c7aee0d1a824756d7` |
| 57 | `theorem` | [sign_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-pos.md) | 315 | `result-track:4855d17ad8b5de9f57d31d7e01229e78ac3dd71b2928d990d3cdcf18c1490e74` |
| 58 | `theorem` | [sign_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-neg.md) | 318 | `result-track:e4dfeb64886a2fd4261e2a1567c83215e85bf961cfaba8d63d1bef270b6d6147` |
| 59 | `theorem` | [sign_eq_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-eq-one-iff.md) | 320 | `result-track:c082f049cd67a669e0a22e2c7457cdae005a35602418fc43abeff517a5a0110a` |
| 60 | `theorem` | [sign_eq_neg_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-eq-neg-one-iff.md) | 326 | `result-track:14932049125c2130329d67c3beb2e5ac06db15b09eae9a6714080ef6a5782286` |
| 61 | `lemma` | [StrictMono.sign_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/strictmono-sign-comp.md) | 339 | `result-track:dea666f84dece2bfcc0453d1bec68ff43f44b241d034f151ff66cd21ec2c7363` |
| 62 | `theorem` | [sign_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-eq-zero-iff.md) | 345 | `result-track:c4c1506dab13a9da5685a880f1b5719e28a685a11b26c34ee4554d891d19719c` |
| 63 | `theorem` | [sign_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-ne-zero.md) | 352 | `result-track:a57d185b4288deaf3e49dbebb5bc09f60b14f0adffa32eb2a57e5657a361522e` |
| 64 | `theorem` | [sign_nonneg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-nonneg-iff.md) | 356 | `result-track:521d6c79f8aafa15ca7a374d9897ef3db29ca8a22e51d5f80c345facc6c6c582` |
| 65 | `theorem` | [sign_nonpos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-nonpos-iff.md) | 363 | `result-track:50ddf707d5e3957e6525a4f1e96d9c1661f8ef8a5358cb0a5bcba705e61f2694` |
| 66 | `theorem` | [sign_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-one.md) | 375 | `result-track:5c4a24800e9173e8c28fde86eb303ef15f9c4e90f5b550f53a750bc5db3ff87a` |
| 67 | `lemma` | [sign_intCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-intcast.md) | 383 | `result-track:bc78b5b41c7b14fd44731efea528f71fa49fd1840e1f974508ff21ab20cdccd4` |
| 68 | `theorem` | [sign_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-mul.md) | 394 | `result-track:28da0311ce71797763218aaad2617052d30ad94f154f50aaace00359f3a4e901` |
| 69 | `theorem` | [sign_mul_abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-mul-abs.md) | 398 | `result-track:f8622f2cd5fb3d2e136f4041e029874995c819cd70cc5585518dcecf9847549d` |
| 70 | `theorem` | [abs_mul_sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/abs-mul-sign.md) | 401 | `result-track:3279c7c74f7e6ee9b10c246e70be01b686ffd49696a6f5b768ac8aac8eacc5cc` |
| 71 | `theorem` | [sign_mul_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-mul-self.md) | 405 | `result-track:6650f9ad7adfd0f0be550997f8b9a339347d74c8c72193ffa992bb2bb1c20ec8` |
| 72 | `theorem` | [self_mul_sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/self-mul-sign.md) | 409 | `result-track:02c2c6922b5e621f46521ba6ff543f082b9d90073956ab01e9835299270c0b1f` |
| 73 | `def` | [signHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/signhom.md) | 417 | `declaration-track:301ee4c4defda87f45c30e368714789fc17409a4ac18a5a42f510401392a8cb1` |
| 74 | `theorem` | [sign_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-pow.md) | 423 | `result-track:bfe8272049a64c9c08e05c6dbcf3c84bdea7712a155d2adcf8ef8a7fd8d23ac7` |
| 75 | `theorem` | [Left.sign_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/left-sign-neg.md) | 431 | `result-track:6f5ac9e141d71fcaf3de3c4b2d030f515c632fc762886e89bc058fac70234522` |
| 76 | `theorem` | [Right.sign_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/right-sign-neg.md) | 439 | `result-track:db8dcd6483fc764efc103421dc1816faaebb49de41469c27f18853e16cb6c41f` |
| 77 | `theorem` | [sign_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-sum.md) | 454 | `result-track:d54b5911bd11f671f73d4481a0565a8d75f967da9b741a022eff13730960a29c` |
| 78 | `theorem` | [sign_eq_sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/sign-eq-sign.md) | 468 | `result-track:1e0068a40fa32e722617e0315c0484af19d5b9f63370e295e8ea30a929d685aa` |
| 79 | `theorem` | [exists_signed_sum_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/exists-signed-sum-aux.md) | 483 | `result-track:eb180be086331210913afb6c6e11fef502d0f4c62e16311ba2cee39c8424819c` |
| 80 | `theorem` | [exists_signed_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/exists-signed-sum-source-edition-2.md) | 497 | `result-track:639fb2cfd1a7edb83b8279ca6a9239f40ff2041cc563cf6bf3e2370d8a2c8255` |
| 81 | `theorem` | [exists_signed_sum'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignMapCast.lean/declarations/exists-signed-sum.md) | 507 | `result-track:151dbf5c788fd17d0ef47fb811a4a8b82713880e32922af892687312632de7c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9af34a446e7f219bc06787d883751bd8e8f44de095c883a3912f87a2672ccd31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
