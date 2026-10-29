# Verification target: Algebra Ring Defs Bit0 Eq Two Mul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465f793c1031d9d45b54455380f7d5aeb8d70515",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465f793c1031d9d45b54455380f7d5aeb8d70515`.

Source path: `GRWTSK/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Distrib](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/distrib.md) | 48 | `declaration-track:d5380f5944332303e03963d88e718e903679eaee0efd781052a409106e465f05` |
| 2 | `class` | [LeftDistribClass](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/leftdistribclass.md) | 56 | `declaration-track:30de20abb2dee4f53ddc5f56ea51282ed1c119af64634e785f2b5092901ebd04` |
| 3 | `class` | [RightDistribClass](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/rightdistribclass.md) | 62 | `declaration-track:010afd6696da965b58609bea6cb025a41690e0a53c74de07f663615cc425981e` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-6.md) | 68 | `declaration-track:b11bcaacd905e8838582f017858eb7f187043c26fd0b10d563d07971ce3ced1a` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-10.md) | 73 | `declaration-track:dce77a4e683eca97bb0d0b8eda4f181d5280e1dab024fb9978c43fd1218c0dfc` |
| 6 | `theorem` | [left_distrib](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/left-distrib.md) | 78 | `result-track:1dc136e5fbfab0582c61b7df13fd592fe2ee51ffb3583008e69efee7678157b7` |
| 7 | `theorem` | [right_distrib](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/right-distrib.md) | 86 | `result-track:850575406c3f07a6753263292a1ff610de2a8914cb137e65efe9761e9cace42e` |
| 8 | `theorem` | [distrib_three_right](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/distrib-three-right.md) | 94 | `result-track:3e82dc1852a4d65c5d493eaf6f7c4466b1f45e36987247cdc18bf009870d9433` |
| 9 | `class` | [NonUnitalNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/nonunitalnonassocsemiring.md) | 113 | `declaration-track:2f4d1c249dd0a0291a845f822671636118edd795a1ac6f7e9e18f32026ff330c` |
| 10 | `class` | [NonUnitalSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/nonunitalsemiring.md) | 117 | `declaration-track:6d9e0d48813fd74e663eb98cd8eafca2e220b245c10b34ce44ae9452629a3d56` |
| 11 | `class` | [NonAssocSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/nonassocsemiring.md) | 121 | `declaration-track:e131c1a91c02e6907098b843aa1247f1c7aa7a69fa0f93e5643d745191e3328f` |
| 12 | `class` | [NonUnitalNonAssocRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/nonunitalnonassocring.md) | 126 | `declaration-track:df67a9686d06e776465dd09b803fce9c6c7855641811b5f49ec9d8a84e692241` |
| 13 | `class` | [NonUnitalRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/nonunitalring.md) | 132 | `declaration-track:42b52eff395fe6116c4516dfe1e30f3d69a015cf0833ffbd09cec1fba5787b6b` |
| 14 | `class` | [NonAssocRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/nonassocring.md) | 136 | `declaration-track:7bf12959a31d87fd3c55eed145a9d962901d87757d3a1b439fb860e5d00e1123` |
| 15 | `class` | [Semiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/semiring.md) | 140 | `declaration-track:21c228dd8ec3de09f273a19b8e754085d8af6fd2431b1ede17b4f6bbae8b6d73` |
| 16 | `class` | [Ring](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/ring.md) | 143 | `declaration-track:521dc30dbda7bf8c8c2cc4b106c240c52e0cf55e74c38cc16f7402fcc6c45c06` |
| 17 | `theorem` | [add_one_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/add-one-mul.md) | 154 | `result-track:5dc29d821998c4271751771a3b23378cd536a30eb38ced7504a31b09b829e918` |
| 18 | `theorem` | [mul_add_one](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-add-one.md) | 158 | `result-track:be89b8828d67455dca05d45c94e561a493d2104fd52ae2bba4c98c66c6b623d8` |
| 19 | `theorem` | [one_add_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/one-add-mul.md) | 162 | `result-track:04d0b9842b2e5b99802157c693916d29ef24cfc6186590b7e452bab24551cb5c` |
| 20 | `theorem` | [mul_one_add](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-one-add.md) | 166 | `result-track:614bf481312a9655cac076ebbbb452c61a90397b8c4b97caa1f824d417791ce5` |
| 21 | `theorem` | [two_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/two-mul.md) | 177 | `result-track:13edf584b366af1002542ee0756a5606eb39895b625cfe583af2b2e172dba66e` |
| 22 | `theorem` | [bit0_eq_two_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/bit0-eq-two-mul.md) | 183 | `result-track:87e370c8f4da1b5b61716baaa9527e250bc8bc58416e154e2e8b56904e41c27a` |
| 23 | `theorem` | [mul_two](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-two.md) | 188 | `result-track:c7d1c35f3ed3d70f5e334bcd8812bc2c7a97f806d4e0e6420a7d44d14e29f05f` |
| 24 | `theorem` | [mul_ite](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-ite.md) | 195 | `result-track:afbf820afcf3e17f633b22484bed69376a193257bec328cf4d70469cd8a55103` |
| 25 | `theorem` | [ite_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/ite-mul.md) | 201 | `result-track:f719f23cf6ea18e25e1db2d4b8f4e6ad4eed2a9c97d553d22f50015e2bc0790d` |
| 26 | `theorem` | [mul_boole](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-boole.md) | 217 | `result-track:cc23d55b5d4bd3c582f694765db4e2dbb96e94f1371f7b91f464181341961ad8` |
| 27 | `theorem` | [boole_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/boole-mul.md) | 222 | `result-track:c9b27ba2ffaabc9868a18ece9a1058ee46f4033d7c96b51be0c251f9ac53ad1e` |
| 28 | `theorem` | [ite_mul_zero_left](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/ite-mul-zero-left.md) | 226 | `result-track:ff22dfcf61aab170b6293cc5fc6d67433873ee404a27c68f2b1f7648015748fa` |
| 29 | `theorem` | [ite_mul_zero_right](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/ite-mul-zero-right.md) | 230 | `result-track:3e019e44daf980fa453b31d57466c84c5135b5d938323e9450fc67fc7888e61f` |
| 30 | `theorem` | [ite_and_mul_zero](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/ite-and-mul-zero.md) | 234 | `result-track:a18d787f97d1f9abfd64a0450ececfce61e01ec6c9e034f084685873a05879c6` |
| 31 | `class` | [NonUnitalCommSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/nonunitalcommsemiring.md) | 243 | `declaration-track:2db083491d30cb9042c0714338402a206f2a9025fae74116978c07c6aef7fb83` |
| 32 | `class` | [CommSemiring](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/commsemiring.md) | 246 | `declaration-track:922859143557840d184dc84dd7a1e8012209885a353a5c96139e953c7e6c7e31` |
| 33 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-13.md) | 250 | `declaration-track:fb59cbe9235403dbbd75f4910590cb00887c9481f61cf005295692f03e44a715` |
| 34 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-9.md) | 256 | `declaration-track:d153c6c20b72151beef3439050b3f78676aed4affaac7728eaa88101dc95f510` |
| 35 | `theorem` | [add_mul_self_eq](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/add-mul-self-eq.md) | 265 | `result-track:624bf3950f1114e309972517b6838ba85081b39ff7013b2226ab1c87db32373d` |
| 36 | `class` | [HasDistribNeg](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/hasdistribneg.md) | 277 | `declaration-track:65d6acfe9d488773b867c9838535065363bfc23ea6ac021a23a13146e662ce0d` |
| 37 | `theorem` | [neg_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/neg-mul.md) | 289 | `result-track:12bb1bb642d8c94ddeb094814deaf9eff0c10ea1ebc952601f1e271ea8c2471b` |
| 38 | `theorem` | [mul_neg](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-neg.md) | 294 | `result-track:89f5963dc460df5edaf5daa5086e27088dcff29a1a5c758451d38bc204d18698` |
| 39 | `theorem` | [neg_mul_neg](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/neg-mul-neg.md) | 298 | `result-track:549345ebb0602ed06366e48e1a571ae0daa75eda7be0bf36ae3f5ba9b09e8814` |
| 40 | `theorem` | [neg_mul_eq_neg_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/neg-mul-eq-neg-mul.md) | 301 | `result-track:acb2e72e50f84939e047cbd738260e48728755eb6b905498b2476c2a5c273ceb` |
| 41 | `theorem` | [neg_mul_eq_mul_neg](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/neg-mul-eq-mul-neg.md) | 305 | `result-track:9d709b434feed030ca5c3e7d631ce6a97939b229f04b4583a1205791f56ecd18` |
| 42 | `theorem` | [neg_mul_comm](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/neg-mul-comm.md) | 309 | `result-track:897d52f38884b75e045daaa3d155559b7a876f738bacb62cf5d30e90c4fe9afc` |
| 43 | `theorem` | [neg_eq_neg_one_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/neg-eq-neg-one-mul.md) | 318 | `result-track:cf95defb3f854328f9459a3fcc278917cca2e4d1e79877332c65023117269b69` |
| 44 | `theorem` | [mul_neg_one](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-neg-one.md) | 323 | `result-track:b7a0f18e8f49af62dcbfdd08c97f15ec84fff7749f3282dcd65ba48a2120988e` |
| 45 | `theorem` | [neg_one_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/neg-one-mul.md) | 328 | `result-track:fcab5c136d0ca8863d9a3d2a6557f3dc0029665d00a0aa042de0bc3c86fd9238` |
| 46 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-8.md) | 337 | `declaration-track:c882bd54f6b224d6ca80adf96f75cd79ef0a46ddf3a1b9c14d30d7d04e0a9217` |
| 47 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance.md) | 354 | `declaration-track:175dee6daa0082f3eaa1a1df92123f85e872aa234691cb21cbf6904f09be0176` |
| 48 | `theorem` | [mul_sub_left_distrib](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-sub-left-distrib.md) | 361 | `result-track:8ba81cc1f9204dc49febbd8d4be809d255ff537ccf0e20f5d2373cc1eb85f10f` |
| 49 | `theorem` | [mul_sub_right_distrib](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-sub-right-distrib.md) | 368 | `result-track:6b07048273cd293dded4ef9767bbfbc6048ebf37fa698ca0be45d875c4f409b2` |
| 50 | `theorem` | [mul_add_eq_mul_add_iff_sub_mul_add_eq](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-add-eq-mul-add-iff-sub-mul-add-eq.md) | 379 | `result-track:a43f17cf188738e2375ced011a1437fdea802478d9a8dc94d783b1116cebead7` |
| 51 | `theorem` | [sub_mul_add_eq_of_mul_add_eq_mul_add](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/sub-mul-add-eq-of-mul-add-eq-mul-add.md) | 395 | `result-track:9c88f849e0682d3a47e23c5e84a1d97f41f9a84baf452f554a6a9d31bc8efb77` |
| 52 | `theorem` | [sub_one_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/sub-one-mul.md) | 407 | `result-track:12391b41880ee5bdb90177821a0edf98f16956aa0095fd028fc9236ca27870cb` |
| 53 | `theorem` | [mul_sub_one](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-sub-one.md) | 410 | `result-track:f79435725fa51d215f01111ac78c2f4ad92aa24e29ef7f0843a0ef399e8dbbc9` |
| 54 | `theorem` | [one_sub_mul](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/one-sub-mul.md) | 413 | `result-track:13bd4231adeef76be1d132a4b64d706296ff15013ded63500d9832b8b6076136` |
| 55 | `theorem` | [mul_one_sub](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/mul-one-sub.md) | 416 | `result-track:4f140e5facb8b1f2f77eda6a547345f60ca9b55b4a54f58accba9855d5b4e5d2` |
| 56 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-4.md) | 427 | `declaration-track:60965aa4ba9093926769a57833bc52f2015a6316ef88a8116a82df83264be6de` |
| 57 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-7.md) | 435 | `declaration-track:b2655bf091ea504a3947dfe6e35f01560962cca905ce2c7827abab18b830195a` |
| 58 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-5.md) | 445 | `declaration-track:97c6d54739e6a180dc45e102f36fc2507f181355e22b5c590b0507bf5b49006c` |
| 59 | `class` | [NonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/nonunitalcommring.md) | 452 | `declaration-track:7afaef2afe6041dbb663c861a9815382d0b2d1daee15119f6848057dd0fbe384` |
| 60 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-11.md) | 456 | `declaration-track:e2b4d7e6541db16e58138e678030ea72db715668738c620c829485f8f5a7898c` |
| 61 | `class` | [CommRing](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/commring.md) | 461 | `declaration-track:d37f55010b76caf38f6a4f80537cc47d8ebe47b14b8c1614e91dfd5ff898232f` |
| 62 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-3.md) | 464 | `declaration-track:2e32b01ea7a2e1f1e5ab7e28ec916d9eaa68fb3400aa0b2022ad3274090d3b43` |
| 63 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-2.md) | 469 | `declaration-track:296bef5aed82645ae3aa45e636d5571ead9863a00241f14804696a393d6f77a9` |
| 64 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/instance-source-edition-12.md) | 474 | `declaration-track:e63ec7e7a4e03827489e32a6cfff926d005a55888e1cda51845dd840b5e12e55` |
| 65 | `class` | [IsDomain](../../../../AssociativeRingsAndAlgebras/AlgebraRingDefsBit0EqTwoMul.lean/declarations/isdomain.md) | 485 | `declaration-track:dbf7319ce000a43ba7224e93908b90e8d0687be3d08cf3b34afe7051ca73283f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bf7db605b4e19638c327db1b32fc5d23728654d4392bd21e6a9abe21a34bfe7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variantf83a64c7769460fa14ed570d1b0a703d422c2841010e022e9bc307d35ab8f995.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
