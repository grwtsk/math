# Verification target: Nat Basic Nsmul Eq Mul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf4f33438c96f0f307a86aa754bae33cc7517887",
  "lexical_observation_count": 138,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2caac56283da8a39f4fcfea3f42fa3dbca84af8c3227f7bda9ec9c96d71fe261.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf4f33438c96f0f307a86aa754bae33cc7517887`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2caac56283da8a39f4fcfea3f42fa3dbca84af8c3227f7bda9ec9c96d71fe261.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2caac56283da8a39f4fcfea3f42fa3dbca84af8c3227f7bda9ec9c96d71fe261.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [nontrivial](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/nontrivial.md) | 40 | `declaration-track:a381925fec2b73575b1ad16d4aa85b7d5ad675d232c5486ab003a162d26c32bb` |
| 2 | `instance` | [commSemiring](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/commsemiring.md) | 43 | `declaration-track:b96e47e86ab248e4697a3333c371af90db2c7d5dce09811e60d171bb7b66313f` |
| 3 | `instance` | [addCommMonoid](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/addcommmonoid.md) | 73 | `declaration-track:4eeafdb458b848a417bfca44197843c77eaa3c0c2727742dc84e92d7d8a0202b` |
| 4 | `instance` | [addMonoid](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/addmonoid.md) | 76 | `declaration-track:4fb8fb75c97d9773a48c55ef9c8d14e21d25962c76eacb70390068ea214d615a` |
| 5 | `instance` | [monoid](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/monoid.md) | 79 | `declaration-track:f05ba92453dab3ee16c9f34cef02d5bb00db3232be351f577f3d22c616841ef5` |
| 6 | `instance` | [commMonoid](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/commmonoid.md) | 82 | `declaration-track:d8bfa8b64ec5ca97c2c96e96666839be74b5e5d1f08d8888c1c7325400caf50a` |
| 7 | `instance` | [commSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/commsemigroup.md) | 85 | `declaration-track:80ef7ac9e1e1efbf422fd822a46f1e6fbe48858ed69432cec95a79444d26c456` |
| 8 | `instance` | [semigroup](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/semigroup.md) | 88 | `declaration-track:822b6f15a53eec01e5c2f12fa875e539fa988caf09fc507e8e8a70e8dae2cddf` |
| 9 | `instance` | [addCommSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/addcommsemigroup.md) | 91 | `declaration-track:5797107ae5e08947522493dbb7b42b94a744a6cd1ab5e96e08b61ec2282efc15` |
| 10 | `instance` | [addSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/addsemigroup.md) | 94 | `declaration-track:9649f2880931283d26b3cafb8cbb60f82ce2a33b3adc10328a0e004d54f2a62f` |
| 11 | `instance` | [distrib](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/distrib.md) | 97 | `declaration-track:a78eba2acbb851d46f938d4eae126b9116c3480a8cc87840f1817c0f31e8e53f` |
| 12 | `instance` | [semiring](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/semiring.md) | 100 | `declaration-track:bb33ccc72266def29d1b4c178ef1e0bfcaaa712319e0c9b281f5ae359850cf6c` |
| 13 | `theorem` | [nsmul_eq_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/nsmul-eq-mul.md) | 103 | `result-track:e3c949f3d44df4525aac93693252abbb3df19037294561f239b730329a3e9136` |
| 14 | `instance` | [cancelCommMonoidWithZero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/cancelcommmonoidwithzero.md) | 110 | `declaration-track:cb6dd29430ccefca41d9f7d221eb3b4b2ecf58e99303c1230b1b02ca2ce8b44c` |
| 15 | `theorem` | [and_forall_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/and-forall-succ.md) | 130 | `result-track:ed2b6d980f15a21cee0b890bca6c5995591ddf5f439834dbdbe8c27c0e8b27a8` |
| 16 | `theorem` | [or_exists_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/or-exists-succ.md) | 137 | `result-track:51b36999ed49b3b2c4aecca114af5e61e9bba83f94ebde3693722002eec8b495` |
| 17 | `theorem` | [_root_.LT.lt.nat_succ_le](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/root-lt-lt-nat-succ-le.md) | 146 | `result-track:2b054de31f52b4a2fa59e19b1dc379b319b8cf2581d13b99d32a0a2df859afbf` |
| 18 | `theorem` | [eq_of_lt_succ_of_not_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/eq-of-lt-succ-of-not-lt.md) | 153 | `result-track:80bc0d539f8b82b3ac54fb29c29429bf2ac396570320167c78fe4876a2ee13bc` |
| 19 | `theorem` | [eq_of_le_of_lt_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/eq-of-le-of-lt-succ.md) | 158 | `result-track:e7693a1f2f7ff908a356db3163bb88e57a8f2929add3ca70dd9bafde6f8addfb` |
| 20 | `theorem` | [succ_pos'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/succ-pos.md) | 166 | `result-track:2ccd789463ae8556ecf3317b0853c000e5c49d292d962add5ddc70e990fc4c09` |
| 21 | `theorem` | [succ_injective](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/succ-injective.md) | 173 | `result-track:4a88d91a4698eaf472f4f86e282878d4417911fde05b38cf6e9bf1cce15bc685` |
| 22 | `theorem` | [succ_ne_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/succ-ne-succ.md) | 176 | `result-track:f615ad310e5953c4ebab032fd1fc64e5c0d150b57219fbdee1a486b22979d6ee` |
| 23 | `theorem` | [succ_succ_ne_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/succ-succ-ne-one.md) | 181 | `result-track:245129b89620628a600ffbd670db0f2c44e040dc82543ba394a848a5452ffe23` |
| 24 | `theorem` | [one_lt_succ_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/one-lt-succ-succ.md) | 186 | `result-track:1b6a609627f64a1e326ac1195b7f0d31fe6a905de8927c791cb7784b9e0e0d1b` |
| 25 | `theorem` | [max_succ_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/max-succ-succ.md) | 192 | `result-track:c3901f2b1a0b11f504ae252deb0de96a75fc81448c2d1b1f671b8d60f3f615f7` |
| 26 | `theorem` | [not_succ_lt_self](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/not-succ-lt-self.md) | 200 | `result-track:14dbccbf2ed83b1697c0cf595e6703b1833f03124e36be66b5e5e9662e210ad3` |
| 27 | `theorem` | [lt_succ_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-succ-iff.md) | 204 | `result-track:86de84e2423949031abfaa1c4e39b5aa64849dbe0bd083057ae6e7ff3b063ab5` |
| 28 | `theorem` | [succ_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/succ-le-iff.md) | 208 | `result-track:23f116c30469ee04df98ebc04d1e53fc0d609e329cb87cf4c2442bdec9faae5d` |
| 29 | `theorem` | [lt_iff_add_one_le](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-iff-add-one-le.md) | 212 | `result-track:6fb89b873133eb5aeb46f86ad75d49069e0f7a2fe1267a09eac3550b5ca11a72` |
| 30 | `theorem` | [lt_add_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-add-one-iff.md) | 216 | `result-track:dbd67e2c4cd1bbb805afe3a5340c59248a285093d083530d80631b6d76c8dab7` |
| 31 | `theorem` | [lt_one_add_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-one-add-iff.md) | 221 | `result-track:541f2c87b577c3b8fe591b40bd74913f0fc2f116ea5de67ee3d2f28938cb6c05` |
| 32 | `theorem` | [add_one_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/add-one-le-iff.md) | 226 | `result-track:bbf4e5754c79a77a3eb7bd90736f796baae779ccce2f2914bb09e99f6db07c91` |
| 33 | `theorem` | [one_add_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/one-add-le-iff.md) | 230 | `result-track:d6e0599f37b8bfe047683671728be6ed297fb9a69f147d5766f4d952af79b1a7` |
| 34 | `theorem` | [of_le_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/of-le-succ.md) | 233 | `result-track:b5718e9a2ab83fe94377beedb8654d2d37bf603124794d602a85fc280b06c944` |
| 35 | `theorem` | [div_le_iff_le_mul_add_pred](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-le-iff-le-mul-add-pred.md) | 239 | `result-track:d8adb22df24d7c32827929b4169b1c19815838675f04f362bdeca442047ac7db` |
| 36 | `theorem` | [two_lt_of_ne](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/two-lt-of-ne.md) | 247 | `result-track:e1d67cdc7a7475170581c56b693667bb7fe16f2c0f3196d3b9a8ccfbbd83f66e` |
| 37 | `theorem` | [forall_lt_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/forall-lt-succ.md) | 255 | `result-track:9ed7248360fedd048b57b3314efc57d3bfcff0fa6399c2907042872dee190e50` |
| 38 | `theorem` | [exists_lt_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/exists-lt-succ.md) | 259 | `result-track:308b8e7abf578ace7a0108844fa6bd45d4d50018bcf43f2560e80230ef43050d` |
| 39 | `theorem` | [add_def](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/add-def.md) | 271 | `result-track:03c2093a8684a41447e91e43659256f70bcc6919efb45d10ab74864a74e92e42` |
| 40 | `theorem` | [mul_def](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-def.md) | 276 | `result-track:7f243b551ca6b695de0e8a77a8babecc6aa729a716923d6d84b210dec766e1ae` |
| 41 | `theorem` | [exists_eq_add_of_le](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/exists-eq-add-of-le.md) | 280 | `result-track:5af111d128b1ff826d84d94c4bb2777670e517fdd2623f4eaf658584d0ebffc8` |
| 42 | `theorem` | [exists_eq_add_of_le'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/exists-eq-add-of-le-source-edition-2.md) | 284 | `result-track:e0c491933a3226c26c968f7e07534e22c09635959e58b6e9867599ee144f496e` |
| 43 | `theorem` | [exists_eq_add_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/exists-eq-add-of-lt.md) | 288 | `result-track:5454526ef05b4e6f6197cd9f05c5cdbf9e6c7bb9db4f2d6ad733576723815c04` |
| 44 | `theorem` | [add_succ_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/add-succ-sub-one.md) | 295 | `result-track:d4ccfde912b38e3463bf787b6dc380ff134f0076da7cfb7a6d03f7991da46ac9` |
| 45 | `theorem` | [succ_add_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/succ-add-sub-one.md) | 299 | `result-track:a1c61ede84eacfe9509eb268d254add0cc323ddace83062eea1ce73f575108d3` |
| 46 | `theorem` | [pred_eq_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/pred-eq-sub-one.md) | 302 | `result-track:fc5302d820b00ce49195ae8e97454098c4d57b53b8b2fbaadd7fc2b1cea942ed` |
| 47 | `theorem` | [pred_eq_of_eq_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/pred-eq-of-eq-succ.md) | 306 | `result-track:d1019ec6acafa5059d1ddf98dfc23a3827d0cd2bc86536b771216d0e07b6a719` |
| 48 | `theorem` | [pred_eq_succ_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/pred-eq-succ-iff.md) | 310 | `result-track:bfe141fca2c54b7f1ec1a82c0b41535f360230a16370ceea65e5cbae50cf75bd` |
| 49 | `theorem` | [pred_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/pred-sub.md) | 314 | `result-track:6ff1d620638db5d1b776a03adfb3fc9f9ecd0d4b41bfd36155c3aa5987c3aea7` |
| 50 | `theorem` | [le_of_pred_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/le-of-pred-lt.md) | 321 | `result-track:5e1910b5a1451c63c5920945d4daa4dbf1672258c449102a45be58d826a250fb` |
| 51 | `theorem` | [pred_one_add](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/pred-one-add.md) | 329 | `result-track:86ea9f1e9bab73d8d78fc2420fc53b40ca20048b51d07730a2e056fa154d5986` |
| 52 | `theorem` | [two_mul_ne_two_mul_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/two-mul-ne-two-mul-add-one.md) | 335 | `result-track:21a4910893b8da6093ada83ee510ccd6cef46e6bd90c04fa13aad2360f044315` |
| 53 | `theorem` | [mul_ne_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-ne-mul-left.md) | 340 | `result-track:8c451669af0b51a583b1e3abd671629d5430a430138238c8779b9c1b9a41644f` |
| 54 | `theorem` | [mul_ne_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-ne-mul-right.md) | 344 | `result-track:9375f3b4d12918a82670eff485690d6892fed24ca3e960f9fd9d2a2340b2e5e8` |
| 55 | `theorem` | [mul_right_eq_self_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-right-eq-self-iff.md) | 348 | `result-track:624b181d32d0880ee60ce8326981ab43e8dc0bef3d6e6576b0ac24cee9740779` |
| 56 | `theorem` | [mul_left_eq_self_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-left-eq-self-iff.md) | 353 | `result-track:29065138122d656afc88e0035bf84545bb45d9085f1338bf8fba76cf94ae7f1c` |
| 57 | `theorem` | [lt_succ_iff_lt_or_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-succ-iff-lt-or-eq.md) | 357 | `result-track:dbda9f3bc8172dd555dd5aa9087630192ca776a7141210e1a205c0054fa53d3d` |
| 58 | `theorem` | [rec_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/rec-zero.md) | 372 | `result-track:408a7c231a3eceb5ee5383bb9a2dab35f22ee3f63d0fe59b4c7b265a55873057` |
| 59 | `theorem` | [rec_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/rec-add-one.md) | 378 | `result-track:f2e78b17d0f3401664f4bea7daedabcb472bfddd73aef4b594d2d890b9bb299c` |
| 60 | `def` | [leRecOn](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lerecon-source-edition-2.md) | 387 | `declaration-track:a4c6c61a1deaf8f567f4fcc72f74f613ef6b0fe01d7a220b98f7d43250ba9867` |
| 61 | `theorem` | [leRecOn_self](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lerecon-self.md) | 394 | `result-track:400db5437f14d51af5fdcef0cb986e5b055d0e0fdce5941d5a7c30c4baf8b8c2` |
| 62 | `theorem` | [leRecOn_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lerecon-succ-source-edition-2.md) | 402 | `result-track:e72284a8946c2409150668bf37c642025a7d149b8bcc83e64237f6258b5c8702` |
| 63 | `theorem` | [leRecOn_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lerecon-succ.md) | 409 | `result-track:4d7ec3e70d2e231e1c0581068147299a4b996f2c7881ba4b6b8a22b98a7046f4` |
| 64 | `theorem` | [leRecOn_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lerecon-trans.md) | 414 | `result-track:4ec6a40a641658237bffd27eefe816f2a9eae6b0bba44f05d3f2921c15b6661c` |
| 65 | `theorem` | [leRecOn_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lerecon-succ-left.md) | 422 | `result-track:c066a37331915436cb5719e803236301f481b317f3977b3d21df2166f2d05f07` |
| 66 | `theorem` | [leRecOn_injective](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lerecon-injective.md) | 428 | `result-track:16887b4518c403374cd89392050f7daf344476579c654d977305b357bac91e02` |
| 67 | `theorem` | [leRecOn_surjective](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lerecon-surjective.md) | 440 | `result-track:5560bdaca4b4ab4e686914a82fad91c63e2b8923fd2f956cda737ea7567b51a6` |
| 68 | `def` | [strongRec'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/strongrec.md) | 457 | `declaration-track:e91ff12e2eef77e3d17228eda97cc09a5e6a609d0e8f7bb5a05aa47c67c9f473` |
| 69 | `def` | [strongRecOn'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/strongrecon.md) | 463 | `declaration-track:08a2b87bdebb4e8414c1b66dc3a3489b873738ab0aaa55860e9aaed44b42ff9f` |
| 70 | `theorem` | [strongRecOn'_beta](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/strongrecon-beta.md) | 467 | `result-track:f7893a16765b25617bbbf829fbf4fbcd3be266c181e04dc3e8d8182ad0abe02c` |
| 71 | `theorem` | [le_induction](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/le-induction.md) | 477 | `result-track:28ecb22d47f1fcf848d90d48673f7719356ab5d3340884bf44927005e47e1f88` |
| 72 | `def` | [decreasingInduction](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decreasinginduction.md) | 490 | `declaration-track:92a28763fe9b78c2e3dd374189bf09be9bdac4cedb54e47f56f282409004f90b` |
| 73 | `theorem` | [decreasingInduction_self](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decreasinginduction-self.md) | 496 | `result-track:8c34e090d96be135f2aae9d4aa6c4ccc18830264f347c4a55f8cd31f965e0f05` |
| 74 | `theorem` | [decreasingInduction_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decreasinginduction-succ.md) | 503 | `result-track:241aa277c0c612a6e3e84c7a41d9aafbd4514151c48c77d0ff1e35136535afc1` |
| 75 | `theorem` | [decreasingInduction_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decreasinginduction-succ-source-edition-2.md) | 511 | `result-track:6f6735205619b3716b4de5e0091ebcc0fd47f98b10b8d7fd4fe227b2aa76e196` |
| 76 | `theorem` | [decreasingInduction_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decreasinginduction-trans.md) | 517 | `result-track:21e18cebe65882af9c4f9ae66aeb6e254e0cd8a7e4f2dec3d3e243c956573cb8` |
| 77 | `theorem` | [decreasingInduction_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decreasinginduction-succ-left.md) | 526 | `result-track:0c9af4040a08d4e44da34ed05de4a7277fdb84c95c8bce7535e97c4fbdf0774d` |
| 78 | `def` | [strongSubRecursion](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/strongsubrecursion.md) | 538 | `declaration-track:7b42017deecc1a736dd13d04894030d98f571cf84bc16987bf1cdf9a6418d42b` |
| 79 | `def` | [pincerRecursion](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/pincerrecursion.md) | 553 | `declaration-track:0fe14e56ad16c2fdd77f133b26bf5bcdb9b1c4dc87ea75cd0dc1dfbf1e8bfcdf` |
| 80 | `def` | [leRecOn'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lerecon.md) | 569 | `declaration-track:98056133e582f9eb2c8c89c2b0b96fa01bad0753b167f5efb6d513003e36688b` |
| 81 | `def` | [decreasingInduction'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decreasinginduction-source-edition-2.md) | 580 | `declaration-track:cb0501f0a1c1458d5e2fb26ceb85323d278faed76a73b43d001cf7e6e31c5c36` |
| 82 | `theorem` | [div_lt_self'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-lt-self.md) | 598 | `result-track:bb3fc3090a81178fc0550a89615ffc9d5b3d441b2914164037932cddbe93bd3c` |
| 83 | `theorem` | [le_div_iff_mul_le'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/le-div-iff-mul-le.md) | 602 | `result-track:eb6bd4810fe810da0eb7cb61470136bad6065aaa0c1d31f6e014e54991dbc970` |
| 84 | `theorem` | [div_lt_iff_lt_mul'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-lt-iff-lt-mul.md) | 606 | `result-track:8876e5efa14b2c09a1bd4886df58bda3bb9bc1b440a5105c8d5b07ba3a68d4ed` |
| 85 | `theorem` | [one_le_div_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/one-le-div-iff.md) | 610 | `result-track:162caa3e87424b0ee1bbd30bb4b700fcb83c9c3e54f38f5dcebc7a45112f6c61` |
| 86 | `theorem` | [div_lt_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-lt-one-iff.md) | 614 | `result-track:35092266c6d3c918400967310ca447555dfcb5435af10c92a757857aa8187bc8` |
| 87 | `theorem` | [div_le_div_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-le-div-right.md) | 618 | `result-track:76e878c18253cd4e38225e9eb22a6b989609d6042091afa888f23547032f536c` |
| 88 | `theorem` | [lt_of_div_lt_div](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-of-div-lt-div.md) | 623 | `result-track:92da626815fdc98cce736e108c8640f7ecae192ac58c7ab1a0dd10a442dd0f85` |
| 89 | `theorem` | [div_pos](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-pos.md) | 627 | `result-track:23894f5d08a3344dadac273dfb76784c17f4ee0b8913294a145b3705256b7c9b` |
| 90 | `theorem` | [lt_mul_of_div_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-mul-of-div-lt.md) | 637 | `result-track:20f2cadaee63fa7f5024e78438f8ca9a230ac312d8bd34f3a385a252158d865a` |
| 91 | `theorem` | [mul_div_le_mul_div_assoc](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-div-le-mul-div-assoc.md) | 641 | `result-track:04baf03d4ff223cc6dfa5bc50034da22e21ff4d968e312d6cb950e1988c29022` |
| 92 | `theorem` | [eq_mul_of_div_eq_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/eq-mul-of-div-eq-right.md) | 648 | `result-track:0bf8d6fa102c8cb0b4a13d6b1487083e5706d8082cf7d2e88bc779d65c2e2763` |
| 93 | `theorem` | [div_eq_iff_eq_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-eq-iff-eq-mul-right.md) | 652 | `result-track:53be43d011c1abd5b523e07b3fff3d98002f9ba65b2b5eba2b61587abc9be7b6` |
| 94 | `theorem` | [div_eq_iff_eq_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-eq-iff-eq-mul-left.md) | 657 | `result-track:8cc4c39093adbd9a89dbc336584958cf80e4eb7f3b0f8667c858b9b58b143d46` |
| 95 | `theorem` | [eq_mul_of_div_eq_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/eq-mul-of-div-eq-left.md) | 663 | `result-track:fffe0f0783c302b4f0757448472fd0c6c7a3deb38452befcb68f906264279c2f` |
| 96 | `theorem` | [mul_div_cancel_left'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-div-cancel-left.md) | 667 | `result-track:976aa522b102f728720b11761818af2aeec12f787fd798e2739fc79972c82ff7` |
| 97 | `theorem` | [lt_div_mul_add](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-div-mul-add.md) | 674 | `result-track:7e29731877f4f6e64d29ea493da01edea92fc69e08dcb5af11aa365e3a3acfa2` |
| 98 | `theorem` | [div_left_inj](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-left-inj.md) | 680 | `result-track:48ea341f30b0b9c17bbdc5ae6ab59a015286a3a014798ed67e7fe823ab8a44f6` |
| 99 | `theorem` | [mod_eq_iff_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mod-eq-iff-lt.md) | 688 | `result-track:3e80754d8b325a0f10b1264128688a9106e0581068a14791f428cbc9ab78b978` |
| 100 | `theorem` | [mod_succ_eq_iff_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mod-succ-eq-iff-lt.md) | 695 | `result-track:229602432cc47faa989fdc27dfaa6e31a718875316093385892babfc1fba5cc2` |
| 101 | `theorem` | [mod_add_div'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mod-add-div.md) | 701 | `result-track:0723900b2f3f9641ac33b25c8499eed2c5f22a0955aa55d4cd2fc7f2ca756571` |
| 102 | `theorem` | [div_add_mod'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-add-mod.md) | 706 | `result-track:f4210bb68d6b37fe93fa2d37fdc6612080146d463537401b33b3c02f953b62c4` |
| 103 | `theorem` | [div_mod_unique](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-mod-unique.md) | 712 | `result-track:459c7964a0e5f9d0994b412361778c43ca00a003ec2af49a5b486c5c61f802d3` |
| 104 | `theorem` | [dvd_add_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/dvd-add-left.md) | 720 | `result-track:9a3b17278ae2382f42c077ff1e0ce620d7340681ddc8885c35efb93310689c43` |
| 105 | `theorem` | [dvd_add_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/dvd-add-right.md) | 724 | `result-track:eb26078915f42e1fb9b1fc30405aa480b195255ea2f83f8fc5b335ad4497349d` |
| 106 | `theorem` | [mul_dvd_mul_iff_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-dvd-mul-iff-left.md) | 728 | `result-track:f635d8dce00edb71d40f54bd83df0a31ea27c96f6a034c470b71be24f0e911e1` |
| 107 | `theorem` | [mul_dvd_mul_iff_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-dvd-mul-iff-right.md) | 732 | `result-track:5a91006276ba314078fd3dd5fd9d04089babb6a59410e76b32b09d098221db65` |
| 108 | `theorem` | [mod_mod_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mod-mod-of-dvd.md) | 737 | `result-track:d324eb678b4d833e3060f7726adf626e97caef8ec7c29ada565c16185954c550` |
| 109 | `theorem` | [add_mod_eq_add_mod_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/add-mod-eq-add-mod-right.md) | 751 | `result-track:f280fae9d406976ca3838059f590d044c889c74bdf1b4a34edc0115a997bacd2` |
| 110 | `theorem` | [add_mod_eq_add_mod_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/add-mod-eq-add-mod-left.md) | 756 | `result-track:86130c41931a18f806253ef2e74b92caa7fd7814f438e7615729f6d2e7ca5eaa` |
| 111 | `theorem` | [mul_dvd_of_dvd_div](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-dvd-of-dvd-div.md) | 764 | `result-track:3a92f54307a9a0558a7a15fa651d23dfc9fadd917da41a72b28e1985c1367986` |
| 112 | `theorem` | [eq_of_dvd_of_div_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/eq-of-dvd-of-div-eq-one.md) | 772 | `result-track:839d3472eea0263a9c258f5979298384ff72b144a76ce6c0caa2220832637791` |
| 113 | `theorem` | [eq_zero_of_dvd_of_div_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/eq-zero-of-dvd-of-div-eq-zero.md) | 776 | `result-track:0b9e5408fafe6a2029a6c28a3c028a6c5da1b7805f83f5fcb3c8e40c4f8c091f` |
| 114 | `theorem` | [div_le_div_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/div-le-div-left.md) | 780 | `result-track:62d8a03648269ffd4eaa783ef2451eb082977f94bb5c59606adbd263eca9f45b` |
| 115 | `theorem` | [lt_iff_le_pred](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-iff-le-pred.md) | 784 | `result-track:dbc65fa9502889ace3fc28d5dd4f87a49d89fcff81789008214e2a0ad1cb15f8` |
| 116 | `theorem` | [lt_mul_div_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-mul-div-succ.md) | 791 | `result-track:291baf9b7facc46215853909aab699d27350ba7916787353832037b23751ea8e` |
| 117 | `theorem` | [mul_add_mod](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-add-mod.md) | 796 | `result-track:c4eb077c878f2d64ff88318c0c35e9db9dab067e16ed368cc270e4f40ee1325a` |
| 118 | `theorem` | [mul_add_mod_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/mul-add-mod-of-lt.md) | 799 | `result-track:82355cc6f695df9ac5bbf4060c802d9aa7bade8fb5757b2c5ead44c724982940` |
| 119 | `theorem` | [pred_eq_self_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/pred-eq-self-iff.md) | 803 | `result-track:9d260021725e0d208f9ebbb0320b65f50b12726204b4a9f19698fe380458b3f4` |
| 120 | `theorem` | [find_eq_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/find-eq-iff.md) | 814 | `result-track:31d6ea9e97b40b72f04a8ac589b8f8baebdea694a5e022671eea0cfe199802be` |
| 121 | `theorem` | [find_lt_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/find-lt-iff.md) | 823 | `result-track:10f288de411a20ed76ad2befbcd319a0d1c7246720b760c7ba7fae564d10f437` |
| 122 | `theorem` | [find_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/find-le-iff.md) | 829 | `result-track:abf002636ad94fc452d0f0cb7ceeff59e6c650c8e057fb173d45972c26a55644` |
| 123 | `theorem` | [le_find_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/le-find-iff.md) | 834 | `result-track:937ee6cff7f065e58e55ed345401d5ad95138fb8578474968e6f5925f59089b5` |
| 124 | `theorem` | [lt_find_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/lt-find-iff.md) | 839 | `result-track:6e91355ea96ddbefb6c98448aeb9fcba8a1e289c67495eac61aac243f9760e9d` |
| 125 | `theorem` | [find_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/find-eq-zero.md) | 844 | `result-track:13c2d9b82a1637b837c25a090eb59ece458347ab7085dc32bf3d31e947204f2f` |
| 126 | `theorem` | [find_mono](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/find-mono.md) | 847 | `result-track:d235ddc70e63377d7bf9044322e816e72e4fc517598a4cbc35e6b46756c8f5c1` |
| 127 | `theorem` | [find_le](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/find-le.md) | 852 | `result-track:157a66b58525e7d8353ca4349001ff2d688b7036b6c47578ea78fd0e1a61efcd` |
| 128 | `theorem` | [find_comp_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/find-comp-succ.md) | 856 | `result-track:0fd427aabcd86f8035e0feeb6f6d8f4ec18d5af22920653784ee4e7ad0d26eff` |
| 129 | `def` | [findGreatest](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/findgreatest.md) | 872 | `declaration-track:e5a181895f5c025c4b7c1b256cb1853f3f15210a8177d7139721837167787b17` |
| 130 | `theorem` | [findGreatest_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/findgreatest-zero.md) | 880 | `result-track:d7bdceecaea6eaa61ddd264eb3518b5710ba3ce528d9f89b0cdac56f4e1534fd` |
| 131 | `theorem` | [findGreatest_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/findgreatest-succ.md) | 884 | `result-track:b171bfb64fbd052e95a2f6bf83ec4117a38740c094052fc7740119829093674e` |
| 132 | `theorem` | [findGreatest_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/findgreatest-eq.md) | 890 | `result-track:8b054a7cafac387492b1b917b37720fe3020fc8b45a5edebf2fb46b2187106a4` |
| 133 | `theorem` | [findGreatest_of_not](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/findgreatest-of-not.md) | 896 | `result-track:5b13a12c21d0c32567bb6cf47004cb7f73d50eccc21b6e9dc0d8b527bc654210` |
| 134 | `instance` | [decidableBallLT](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decidableballlt.md) | 905 | `declaration-track:4deca71fdb69e5304535a63fe91534e5b791c94020ef678797c70fc65dffe46a` |
| 135 | `instance` | [decidableForallFin](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decidableforallfin.md) | 922 | `declaration-track:ce3ad4f6a363bc7c66a6883fa71880411a2fc50c7c94bdc9920d999659f454df` |
| 136 | `instance` | [decidableBallLe](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decidableballle.md) | 927 | `declaration-track:a853d02c0f399e63c5c89ec91116f3dfeb0415912d70bbb608d5dc50cd15a5ea` |
| 137 | `instance` | [decidableExistsLT](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decidableexistslt.md) | 933 | `declaration-track:407f51d3b47dd35b4897889133f739f690df0e3e1bfaeb6a4eda10f914a0fb6a` |
| 138 | `instance` | [decidableExistsLe](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNsmulEqMul.lean/declarations/decidableexistsle.md) | 941 | `declaration-track:e6e298cbdbe07f04c71a860fa2181ccf6f2550ff2bcc85f5c0e6c290a0146fc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f302e24e7ca6c88c89a486a006efd59b7c7995a85b5c93e451c3f66ebf9779f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2caac56283da8a39f4fcfea3f42fa3dbca84af8c3227f7bda9ec9c96d71fe261.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2caac56283da8a39f4fcfea3f42fa3dbca84af8c3227f7bda9ec9c96d71fe261.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
