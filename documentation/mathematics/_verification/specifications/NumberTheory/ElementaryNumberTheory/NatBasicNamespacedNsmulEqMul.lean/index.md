# Verification target: Nat Basic Namespaced Nsmul Eq Mul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "098ebfc22e883c6693f8a11bd08dca22b9a9302f",
  "lexical_observation_count": 138,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `098ebfc22e883c6693f8a11bd08dca22b9a9302f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [nontrivial](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/nontrivial.md) | 48 | `declaration-track:b4ce7f34cbd2ed97939c9bdd68e047913468cc114e416c7387405cac21e777dc` |
| 2 | `instance` | [commSemiring](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/commsemiring.md) | 51 | `declaration-track:89edac1bdc5fceaa1da03acf14da504ebf33e7be233109c6feca35b92be052d4` |
| 3 | `instance` | [addCommMonoid](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/addcommmonoid.md) | 81 | `declaration-track:7175977d4970c6afee4811d378cc5273f0387ff06f66fc45ac2048db681a9920` |
| 4 | `instance` | [addMonoid](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/addmonoid.md) | 84 | `declaration-track:bce5363ceb124c1bae9ed38fbe02896a01203a582332e718eab0db083d5fdcbd` |
| 5 | `instance` | [monoid](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/monoid.md) | 87 | `declaration-track:273461281a51efbfc1e710f6842b3125526e8610021c9ed4f0e91ada918075c8` |
| 6 | `instance` | [commMonoid](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/commmonoid.md) | 90 | `declaration-track:05aebd26c2660cde66f3b5c22fc16f0e03dc0376361f5ef3e91d5a7a7323b4d3` |
| 7 | `instance` | [commSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/commsemigroup.md) | 93 | `declaration-track:dff75cda1ddd5a94e7d47e03a73267f2e4912ad440a49174fd50291ec073ea44` |
| 8 | `instance` | [semigroup](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/semigroup.md) | 96 | `declaration-track:d02e981c6843febf82f0f609d7daf1c4376ce49c59cb1a3d9688177a5b5a4a8a` |
| 9 | `instance` | [addCommSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/addcommsemigroup.md) | 99 | `declaration-track:1cbb74cfa413eda02189ae505e335137c37c9ed4d035b66ed25e141b2b6d4b79` |
| 10 | `instance` | [addSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/addsemigroup.md) | 102 | `declaration-track:93a1944f92b5c2d8feb138228a013e9c7796920b8b7e91f05f80b95d3614ab37` |
| 11 | `instance` | [distrib](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/distrib.md) | 105 | `declaration-track:0d86436206a01b5a1767f5b3768db05c1a766d2b1e8154ae7dca55a8b32d8311` |
| 12 | `instance` | [semiring](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/semiring.md) | 108 | `declaration-track:a732ccef9b6e89b4c082f40c95e1450dc11af07f283d94066c88041f9c7bbe77` |
| 13 | `theorem` | [nsmul_eq_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/nsmul-eq-mul.md) | 111 | `result-track:b1679145d9fb03b49159fbb7ae1697a46c4b4c150226c6c3517bda5025bf3a87` |
| 14 | `instance` | [cancelCommMonoidWithZero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/cancelcommmonoidwithzero.md) | 118 | `declaration-track:262b75627e1269e8416e0eb5c5282e25d4f1608a6f8766b5b6ded8edbf60d581` |
| 15 | `theorem` | [and_forall_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/and-forall-succ.md) | 138 | `result-track:4bbb5558e36ea956a8a97f46e570926545a07772180b0708be34bdd9c97bdaa3` |
| 16 | `theorem` | [or_exists_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/or-exists-succ.md) | 145 | `result-track:56ffbbe869c14bb1b412652c5411015461280cdb6f159eb9e5f3bb04fd2f8c2e` |
| 17 | `theorem` | [Nat Basic Namespaced Nsmul Eq Mul](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-nsmuleqmul-v.md) | 154 | `result-track:5a99ffd79b43c226029640d159ea6539f7d4dc8c65d83db2d22f66f1715c0081` |
| 18 | `theorem` | [eq_of_lt_succ_of_not_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/eq-of-lt-succ-of-not-lt.md) | 161 | `result-track:580f65cfdff37d60cfd64a5865761931f44ef271412616b67c6f845054ea44df` |
| 19 | `theorem` | [eq_of_le_of_lt_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/eq-of-le-of-lt-succ.md) | 166 | `result-track:6985e483efb4e583d3e17783e4268160552b0e2bdbc7b03a038d10e8c9ed2865` |
| 20 | `theorem` | [succ_pos'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/succ-pos.md) | 174 | `result-track:f4d4527c102a496bdd04d38e25256ef74e48819148a43a686028f349a10dda14` |
| 21 | `theorem` | [succ_injective](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/succ-injective.md) | 181 | `result-track:9b2aae9861d7b42590440588ac75115b64e293f0404213c75a74ab58b57e2776` |
| 22 | `theorem` | [succ_ne_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/succ-ne-succ.md) | 184 | `result-track:8c5071dbbda2443c50cc215e8835a4a8f4ea955ec439ed98b47f7f4f15feef46` |
| 23 | `theorem` | [succ_succ_ne_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/succ-succ-ne-one.md) | 189 | `result-track:07249f34344299e13469861c4ed61eb36f57a3260af8b850968e45452d2c8baa` |
| 24 | `theorem` | [one_lt_succ_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/one-lt-succ-succ.md) | 194 | `result-track:279c16cc495de7ed358246796eacd0d9feea6ef781b8b9ff5d5f4bac935bb0b8` |
| 25 | `theorem` | [max_succ_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/max-succ-succ.md) | 200 | `result-track:d406e950b0609a592da0d4e92038832a1ceaf048d108b0438ecfc64a9c09b4f9` |
| 26 | `theorem` | [not_succ_lt_self](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/not-succ-lt-self.md) | 208 | `result-track:0e5a30fc58aa7ae8cd2ae93dc9395e6c0bfeb3dc739383b3752dae3e0d3a9cfd` |
| 27 | `theorem` | [lt_succ_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-succ-iff.md) | 212 | `result-track:4a0edff3534a41864867e926c4c45d2788643aceb48843c8e034afe32d23ae89` |
| 28 | `theorem` | [succ_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/succ-le-iff.md) | 216 | `result-track:2df6819c69e59c96f0209dd24ed3863b28fa4315446bff6c7b3c75abe2749888` |
| 29 | `theorem` | [lt_iff_add_one_le](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-iff-add-one-le.md) | 220 | `result-track:febbaac83aeed79b8a83a2b8a5a57e1b7f91e78f289902fea11c4c0826339870` |
| 30 | `theorem` | [lt_add_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-add-one-iff.md) | 224 | `result-track:3edbf71a27d8bdb68cc0ba32b488fc31104175cf6cc89a38ca95caf10c5a0ca3` |
| 31 | `theorem` | [lt_one_add_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-one-add-iff.md) | 229 | `result-track:08557cff5b8249113c5afc885ea53cce3e3b11a2ae4aa27b43a41bb4a3370dea` |
| 32 | `theorem` | [add_one_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/add-one-le-iff.md) | 234 | `result-track:2504415c7fc88749d11fe268511a3f3a33d357c5069ee651ddec80d88027941e` |
| 33 | `theorem` | [one_add_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/one-add-le-iff.md) | 238 | `result-track:0fba8080e94db47f01f120a9f954ba78c3c00e7c1d2e3d68c059912e906a7e0a` |
| 34 | `theorem` | [of_le_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/of-le-succ.md) | 241 | `result-track:35ea8cd5474e0854a556b5945d21e7b0058e6f1ee35f3208570553dd99a8435e` |
| 35 | `theorem` | [div_le_iff_le_mul_add_pred](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-le-iff-le-mul-add-pred.md) | 247 | `result-track:761c81a713837a6d736b6b3327fc3df13134a886bea83a33e21024bb3c03f6e5` |
| 36 | `theorem` | [two_lt_of_ne](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/two-lt-of-ne.md) | 255 | `result-track:0923735613aaf63c696f2955fdba9edc76f659b403d52d02fea714fb37336ff2` |
| 37 | `theorem` | [forall_lt_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/forall-lt-succ.md) | 263 | `result-track:92d6e7f632aebaa783d9cad509c3f6465d65f81b58f2c67c37f80105e53b00d8` |
| 38 | `theorem` | [exists_lt_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/exists-lt-succ.md) | 267 | `result-track:7b1dc7bc2b6d55081b8e2847bb76ed4f99daa7a0855a8c668d50e40d6e420eed` |
| 39 | `theorem` | [add_def](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/add-def.md) | 279 | `result-track:d73731b6552e761519dbdae8ef3d9d3370dca88a9228b7052fcde428f1840b20` |
| 40 | `theorem` | [mul_def](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-def.md) | 284 | `result-track:8e54431a8370e319974b7f211690a1087187e74216d58304c10cf036667eaec2` |
| 41 | `theorem` | [exists_eq_add_of_le](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/exists-eq-add-of-le-source-edition-2.md) | 288 | `result-track:f894c8ed72fb1d43e9be8dae8200f90cdc0513ebd2112c069336678b9fce4fa9` |
| 42 | `theorem` | [exists_eq_add_of_le'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/exists-eq-add-of-le.md) | 292 | `result-track:b7f7b901d466d1eb060e350a57a89347fb74f7d7e0cd16548ccbae8a549f6bd5` |
| 43 | `theorem` | [exists_eq_add_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/exists-eq-add-of-lt.md) | 296 | `result-track:52bf674d08747da71af95bb9eccfe51cb9b63824307d80be457cce6b9c918f09` |
| 44 | `theorem` | [add_succ_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/add-succ-sub-one.md) | 303 | `result-track:09621d102123013a02c8fe3ebec93b714c8b68b44e2dc38d45b4e6c3820e744b` |
| 45 | `theorem` | [succ_add_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/succ-add-sub-one.md) | 307 | `result-track:cd79219b0aa855d853742ffed8b8ceb3a639ff66084339da05a0d56a5c1394cb` |
| 46 | `theorem` | [pred_eq_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/pred-eq-sub-one.md) | 310 | `result-track:993176094285f6cd6a9c65c3a22ac636281cd74cf7a2f64e1dc2e3c604da9dc6` |
| 47 | `theorem` | [pred_eq_of_eq_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/pred-eq-of-eq-succ.md) | 314 | `result-track:5931422fba60ab1bc4140b29eaa8e9b2c601aba2415b84d083be23915856c33b` |
| 48 | `theorem` | [pred_eq_succ_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/pred-eq-succ-iff.md) | 318 | `result-track:f23b952dc9dc184d3f5b8e516cd54f990c827d0593397eec58ac8fa6caa9bc84` |
| 49 | `theorem` | [pred_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/pred-sub.md) | 322 | `result-track:652bc687502de61390aa1ba15ac23b5cbeda19eb881e865be5a230ce619f6ebf` |
| 50 | `theorem` | [le_of_pred_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/le-of-pred-lt.md) | 329 | `result-track:d730899b9599abd9063e6e6587b45b9c608662ed85be6a5878ebb8c42f1ed04e` |
| 51 | `theorem` | [pred_one_add](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/pred-one-add.md) | 337 | `result-track:3a904ba541e445c2c9bc340c7a697b58d5551460da520ca6fcfdef0aed1b0bd9` |
| 52 | `theorem` | [two_mul_ne_two_mul_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/two-mul-ne-two-mul-add-one.md) | 343 | `result-track:f879f27b204a7d0c0063af80a3ad812ef9629f23c4341682f638affec4c918d2` |
| 53 | `theorem` | [mul_ne_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-ne-mul-left.md) | 348 | `result-track:e47c2be3fb805bc18b6c3cb72759aeaa0a77216499a951f2bc13df1a51a089fc` |
| 54 | `theorem` | [mul_ne_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-ne-mul-right.md) | 352 | `result-track:af66dd6d5ffb079212b55562bf9fb0a319e39a99db5559863fac719759862b23` |
| 55 | `theorem` | [mul_right_eq_self_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-right-eq-self-iff.md) | 356 | `result-track:4a495d30b0382f77375bd0687ef1792cdf321c0497484b431e584a465e28081c` |
| 56 | `theorem` | [mul_left_eq_self_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-left-eq-self-iff.md) | 361 | `result-track:e5d4fa4a69772d93610442b7e926525d8310839a88f3fb15472983c47bd0e9a2` |
| 57 | `theorem` | [lt_succ_iff_lt_or_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-succ-iff-lt-or-eq.md) | 365 | `result-track:b1b25c8d4288fcc435b7da20c8774433a4e207c1f0687337ac8ea17393d5e6af` |
| 58 | `theorem` | [rec_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/rec-zero.md) | 380 | `result-track:3a7ab904526b4f4e3b858e60e15d8a3f0c7050422efd11f982a33f7ede83d9e4` |
| 59 | `theorem` | [rec_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/rec-add-one.md) | 386 | `result-track:440c40a41f44fad31e34c9d98bdacc257f5a696e19c61d4395fcb1fefe52e80f` |
| 60 | `def` | [leRecOn](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lerecon.md) | 395 | `declaration-track:146b25f24a2e14e595b3139a7363cec2e16af85d4d0553b8c20f5d7046e3689a` |
| 61 | `theorem` | [leRecOn_self](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lerecon-self.md) | 402 | `result-track:d9b2b61b78af97fdcf0344b8ef1ddf45afd4f4a36895b11fce31db2942f66b45` |
| 62 | `theorem` | [leRecOn_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lerecon-succ-source-edition-2.md) | 410 | `result-track:ff71fc66ebffbb3162dae8cd6bda923dbcfc8de28f6dcdab41d13bb8a90c3457` |
| 63 | `theorem` | [leRecOn_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lerecon-succ.md) | 417 | `result-track:70c9e492032a9dbd2c29dc4aa313913b7b99f731638e5bacde5d43a6540532ea` |
| 64 | `theorem` | [leRecOn_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lerecon-trans.md) | 422 | `result-track:49bcb001db6623d5afe8dee19e5a3bbbc33cfe5a4c80c1e0529fca6c9b9b8827` |
| 65 | `theorem` | [leRecOn_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lerecon-succ-left.md) | 430 | `result-track:3a2a4f35d2acbcbea5adf6ff8e75bf5207108c38fb2acb2b25f37a6796c6fa06` |
| 66 | `theorem` | [leRecOn_injective](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lerecon-injective.md) | 436 | `result-track:bdb6ca3485a3baa7df53d94b6a289da790e60ad5b57aad6b866dcc9769e913a1` |
| 67 | `theorem` | [leRecOn_surjective](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lerecon-surjective.md) | 448 | `result-track:3774efcc13766c386b316524ee6f57677d62496bd3afe178a4287fcd1908327f` |
| 68 | `def` | [strongRec'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/strongrec.md) | 465 | `declaration-track:5f1f86bac1f017501e2e59f8f41d5b3988af77242c56194494fadff1beeeb098` |
| 69 | `def` | [strongRecOn'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/strongrecon.md) | 471 | `declaration-track:39dd9f31ddf5f01178d70a1195705b9fe464de464c391812c4cc63d2eae4a145` |
| 70 | `theorem` | [strongRecOn'_beta](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/strongrecon-beta.md) | 475 | `result-track:6473eae1731058576e2ecbbe4d8e8220a77cdcc9720216809c44356e357f5ddb` |
| 71 | `theorem` | [le_induction](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/le-induction.md) | 485 | `result-track:838a26551f46f194918e9b8483a1701793776230e2cd18b2940f399ac69b29e0` |
| 72 | `def` | [decreasingInduction](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decreasinginduction-source-edition-2.md) | 498 | `declaration-track:cb61607593f50b754da6852b8130144eed0bece7bea427540dad7af81d1fabff` |
| 73 | `theorem` | [decreasingInduction_self](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decreasinginduction-self.md) | 504 | `result-track:6b3425c50c1c13362dcc8a5de95136507f9cb750bfecc48aa4128cb38cf1c24d` |
| 74 | `theorem` | [decreasingInduction_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decreasinginduction-succ.md) | 511 | `result-track:ee3687d7eec83ab0d391a4dd41cfb882c5ad7881dc8a4cc973958e59f037d848` |
| 75 | `theorem` | [decreasingInduction_succ'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decreasinginduction-succ-source-edition-2.md) | 519 | `result-track:fdb54501c078e8628b56eb2a0f8a0c386aae96f0c6177e43c85a9b4ced7bee55` |
| 76 | `theorem` | [decreasingInduction_trans](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decreasinginduction-trans.md) | 525 | `result-track:191f5b587a9e51bbd4f3f50c2711429a58163f1c802d666b7cc92e1d2d61fd26` |
| 77 | `theorem` | [decreasingInduction_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decreasinginduction-succ-left.md) | 534 | `result-track:dc82b022f1dc2e339214e6ca18d6edc4a759ed122475cc06a69180982b90dc9d` |
| 78 | `def` | [strongSubRecursion](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/strongsubrecursion.md) | 546 | `declaration-track:f1f0da3dc0fb87eff0f0c9dd98090b34eba70c5a25982fdedb18ea0bfa8c64d6` |
| 79 | `def` | [pincerRecursion](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/pincerrecursion.md) | 561 | `declaration-track:bd94509d3a52ce0130ebe6f8291107ca7aa2aa503a6b4f8600aebd3ed441a05b` |
| 80 | `def` | [leRecOn'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lerecon-source-edition-2.md) | 577 | `declaration-track:8cd05b6a0158445e1595a3ac50159b19017d3488d2690c5d0d998fdc9d2bcb50` |
| 81 | `def` | [decreasingInduction'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decreasinginduction.md) | 588 | `declaration-track:77cffdf6db1a79086ccee8b8c3e8bbec362cb3d9961718f67d2d03248217e345` |
| 82 | `theorem` | [div_lt_self'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-lt-self.md) | 606 | `result-track:1e568746fc655b631bff7c76ae7de24f6a9b8f40051f5f82ac73e56698d126f2` |
| 83 | `theorem` | [le_div_iff_mul_le'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/le-div-iff-mul-le.md) | 610 | `result-track:187f17ce0152fe1665ac44e8459f6fe3d9bca4a62f31d321d3f30cfb7383fde6` |
| 84 | `theorem` | [div_lt_iff_lt_mul'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-lt-iff-lt-mul.md) | 614 | `result-track:307ef4cadb47f02b1d05fa98c1674f2085f45a3ac5166134751557b83af4a913` |
| 85 | `theorem` | [one_le_div_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/one-le-div-iff.md) | 618 | `result-track:2f91b316f0c028a4523739b6b0b943f3823d78ed3ceae9559cb14cf3a31da940` |
| 86 | `theorem` | [div_lt_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-lt-one-iff.md) | 622 | `result-track:317d7cbe75171f3ed629dd3269386e11c13ac11d9be8690dee4dc683ec96e358` |
| 87 | `theorem` | [div_le_div_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-le-div-right.md) | 626 | `result-track:65f1b27a9cf600540636eb2f5fbecdbc51658cc587cc0825c3b1e1035270fd98` |
| 88 | `theorem` | [lt_of_div_lt_div](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-of-div-lt-div.md) | 631 | `result-track:9e96492c6563463b17f7b0388bd4051e5b6dfed53b6d291b6a6d8dd49a020101` |
| 89 | `theorem` | [div_pos](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-pos.md) | 635 | `result-track:705334e035150cbd28c394cfa488104adc6e9d9743156c3d8c6de726bbc50f72` |
| 90 | `theorem` | [lt_mul_of_div_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-mul-of-div-lt.md) | 645 | `result-track:a0e2944b66b626ca5d28ccb91a45959e860b370457007535dc99218698d91ebf` |
| 91 | `theorem` | [mul_div_le_mul_div_assoc](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-div-le-mul-div-assoc.md) | 649 | `result-track:622b3006d83ed96385bae3b790ba248f5ba5959993db628b52d2ce072868bfe3` |
| 92 | `theorem` | [eq_mul_of_div_eq_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/eq-mul-of-div-eq-right.md) | 656 | `result-track:f52439453a3311878d98fb915280fa447456906bef07f4b6d424a40b7484bfb9` |
| 93 | `theorem` | [div_eq_iff_eq_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-eq-iff-eq-mul-right.md) | 660 | `result-track:4a8113fedfa24a89f708348b69b8da4ccf3917e86c09751d0935ce2a77d1d236` |
| 94 | `theorem` | [div_eq_iff_eq_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-eq-iff-eq-mul-left.md) | 665 | `result-track:63050a9e667d4d0e52fd37667041cf015b5dae18415d74784c7c6529336f2abc` |
| 95 | `theorem` | [eq_mul_of_div_eq_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/eq-mul-of-div-eq-left.md) | 671 | `result-track:43a31ad27426a9a3a31c3542006820b5dbcb18bba1ede4d82552c6b81df85a6d` |
| 96 | `theorem` | [mul_div_cancel_left'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-div-cancel-left.md) | 675 | `result-track:d8f7f0553027465eecf9e1491c8d1c86212e1b25d4a84793017b9ee7ab81a386` |
| 97 | `theorem` | [lt_div_mul_add](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-div-mul-add.md) | 682 | `result-track:4b96bd1f1b18b3298a96176b53774f9e300fb9b7b9c0fd5613e7d40276acd483` |
| 98 | `theorem` | [div_left_inj](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-left-inj.md) | 688 | `result-track:d6411039e2e85ecfb97c479eae1e80d3fb1f2cdb795f232b9a2740cddd37b2f8` |
| 99 | `theorem` | [mod_eq_iff_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mod-eq-iff-lt.md) | 696 | `result-track:c3d7d5e083e79cfdf169bc6a68c36aaa6b71acf2e54160b3d889c7c3d44d7631` |
| 100 | `theorem` | [mod_succ_eq_iff_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mod-succ-eq-iff-lt.md) | 703 | `result-track:cb3025163114f956dd5daff2e6cd762aecb2b1d5d5c0ee293907e174feb4ed45` |
| 101 | `theorem` | [mod_add_div'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mod-add-div.md) | 709 | `result-track:3ae0a283fd4247568b2f5e523c3282199be769aac79e6e93993d1f23e0a47020` |
| 102 | `theorem` | [div_add_mod'](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-add-mod.md) | 714 | `result-track:000520ef0674974c1998db7b037f24f03d57d244fc78a55a49831c1411d7fb69` |
| 103 | `theorem` | [div_mod_unique](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-mod-unique.md) | 720 | `result-track:113d4c42cae486d60a971aea57c584d243b54d9b02dacc142d1a71bab69d97d2` |
| 104 | `theorem` | [dvd_add_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/dvd-add-left.md) | 728 | `result-track:cd9362004e4ce879a6234f0e638b87bf2589dd803137edd354c4e46caa94f507` |
| 105 | `theorem` | [dvd_add_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/dvd-add-right.md) | 732 | `result-track:a4672b12b449b4fd4385d6af75ac5ee3fcc89f3d714299c678113ebce791abe2` |
| 106 | `theorem` | [mul_dvd_mul_iff_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-dvd-mul-iff-left.md) | 736 | `result-track:9e33e818d69acaf1fd894c31eff1882f2b803fe15a91529d3db2286aa2c705c7` |
| 107 | `theorem` | [mul_dvd_mul_iff_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-dvd-mul-iff-right.md) | 740 | `result-track:ed81e57213aec66d26086a4f8b10cc823cbc4306aa94203617a03651c7a32ac2` |
| 108 | `theorem` | [mod_mod_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mod-mod-of-dvd.md) | 745 | `result-track:6d891d51cafdc54dae8508353af9da15f96efc74bcf53c799616d8f24d6f7017` |
| 109 | `theorem` | [add_mod_eq_add_mod_right](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/add-mod-eq-add-mod-right.md) | 759 | `result-track:8c04c9679bc40711e123292a219647b2df476d5103f63d2262c334390751fab9` |
| 110 | `theorem` | [add_mod_eq_add_mod_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/add-mod-eq-add-mod-left.md) | 764 | `result-track:2e633f05f2c045c6f7f3c9f4a307760b9a155006865fc230adad293b0a2b5f7f` |
| 111 | `theorem` | [mul_dvd_of_dvd_div](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-dvd-of-dvd-div.md) | 772 | `result-track:5373666bb685567b120c596012438898dba9f52c0af48aa30a276b43b788767a` |
| 112 | `theorem` | [eq_of_dvd_of_div_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/eq-of-dvd-of-div-eq-one.md) | 780 | `result-track:818f71931b2eb21af003fcfcd540ad2f125534f577c56ea2bd174a22c364e3cf` |
| 113 | `theorem` | [eq_zero_of_dvd_of_div_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/eq-zero-of-dvd-of-div-eq-zero.md) | 784 | `result-track:e764f2faf779bf1033977aae658378df688d180d947e33045a7c9c8f196067b6` |
| 114 | `theorem` | [div_le_div_left](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/div-le-div-left.md) | 788 | `result-track:c32d37141d1894a92fe80c6613840ba7d1ad2cba76a10ef75c2b7a9c59c36dfb` |
| 115 | `theorem` | [lt_iff_le_pred](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-iff-le-pred.md) | 792 | `result-track:cdc7a00587391dd4fcddf8cf77454c3593535fb664bf596024ba6f95e84c9692` |
| 116 | `theorem` | [lt_mul_div_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-mul-div-succ.md) | 799 | `result-track:f2d715aa5b9517b1a59d0d32d147d4980e55ff85147498232e0b2ac67107a74d` |
| 117 | `theorem` | [mul_add_mod](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-add-mod.md) | 804 | `result-track:1cb52aa996e28991aa36d1106a3a5f120012a324489abc04e33e6bfb441055ce` |
| 118 | `theorem` | [mul_add_mod_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/mul-add-mod-of-lt.md) | 807 | `result-track:b9c8e6db54b309903fa6582d62ab5fb66d2846bf53c24f1b3e37f633e732f311` |
| 119 | `theorem` | [pred_eq_self_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/pred-eq-self-iff.md) | 811 | `result-track:7d0f8de867b7f7a16a18e92d6baad7e75bf5c27d76ca99a684693a5edd4d0614` |
| 120 | `theorem` | [find_eq_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/find-eq-iff.md) | 822 | `result-track:ee1bac9d6f66ab03055c091cc99fe8f8107c1b9b6860d439a6fce0da7de43b67` |
| 121 | `theorem` | [find_lt_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/find-lt-iff.md) | 831 | `result-track:398b08ac6bc89aa9f5e21452602475e5120f9d2940cf3600862d1ecd0c9f504a` |
| 122 | `theorem` | [find_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/find-le-iff.md) | 837 | `result-track:595ceadace2fb08778196538b8c0b200846223b775c19282a225115ab9dce76f` |
| 123 | `theorem` | [le_find_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/le-find-iff.md) | 842 | `result-track:87cfcd8699b2500286749c0687df6a694554b323fc7bd7a5373078c1b9b2b57f` |
| 124 | `theorem` | [lt_find_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/lt-find-iff.md) | 847 | `result-track:d5d380d37ef2b53267d1ea38f42432f50ef958dcec5298dd2309e5115fe54b68` |
| 125 | `theorem` | [find_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/find-eq-zero.md) | 852 | `result-track:c4fd38159a31bf790a091f32bb9a7b1686f1b54e9223b5ddf80bd518a5d85bdd` |
| 126 | `theorem` | [find_mono](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/find-mono.md) | 855 | `result-track:4ddc0837ac4e9ef3dc2341646f735bf025878c0de03c1197ad87919e08e5068e` |
| 127 | `theorem` | [find_le](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/find-le.md) | 860 | `result-track:7261005f572b2eec0dd9af756b1e1ed178d77f215f0d1b02c4a47627f990daf4` |
| 128 | `theorem` | [find_comp_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/find-comp-succ.md) | 864 | `result-track:8e8f2cc32adba9bee43d9866c86333bb658bda5d97a3b986a807765ee7f6482c` |
| 129 | `def` | [findGreatest](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/findgreatest.md) | 880 | `declaration-track:03d9b65bfd250c4cbcb7750782d2b9e9e1321da0bc3d731f944835cdae15a31d` |
| 130 | `theorem` | [findGreatest_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/findgreatest-zero.md) | 888 | `result-track:2c62665d4bbd4cb8f0284f25a3486e4d8e8ebdf4bcf19543877e2b15b46c8d87` |
| 131 | `theorem` | [findGreatest_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/findgreatest-succ.md) | 892 | `result-track:1178e29224adbb40facd0439ff87f0068f2f668d0c46fd6c6dd15652a004d553` |
| 132 | `theorem` | [findGreatest_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/findgreatest-eq.md) | 898 | `result-track:98eeef04c64433f151722517ce0fa31b77293ab2eaa9eb6fdd473308cf911f20` |
| 133 | `theorem` | [findGreatest_of_not](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/findgreatest-of-not.md) | 904 | `result-track:ff4a5e9b1cb1386246dbd1bbc667107fa4ff867db587d47e84abe13b26931722` |
| 134 | `instance` | [decidableBallLT](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decidableballlt.md) | 913 | `declaration-track:22ef92a45d18050842e72add801da557b301eab7081b30987fa72d178adc0320` |
| 135 | `instance` | [decidableForallFin](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decidableforallfin.md) | 930 | `declaration-track:a7092646609cec14102ea228cd75cbc058d7016eab38e63cc1bd77616d936995` |
| 136 | `instance` | [decidableBallLe](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decidableballle.md) | 935 | `declaration-track:0c4e924d7e065b99cc544591a9e2334df7b032d42858adfef719d244fabbacee` |
| 137 | `instance` | [decidableExistsLT](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decidableexistslt.md) | 941 | `declaration-track:00176a759609d2b1eccf3a731dfec9b54242b8ccbd0919c7f6c2b0265a25f3f2` |
| 138 | `instance` | [decidableExistsLe](../../../../../NumberTheory/ElementaryNumberTheory/NatBasicNamespacedNsmulEqMul.lean/declarations/decidableexistsle.md) | 949 | `declaration-track:fa899beaa895cfbab5771166ffbaff90e5f6fc2342d2406030afcf4467ddae38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=351950e9557c862677bc814bc5836247b6b5a93adebe3ca0f45071da4c74b188 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
