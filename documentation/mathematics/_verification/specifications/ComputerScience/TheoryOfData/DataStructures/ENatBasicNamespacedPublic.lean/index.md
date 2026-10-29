# Verification target: ENat Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24d90993f7b56791a353154b8dac7da436a4a6f7",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24d90993f7b56791a353154b8dac7da436a4a6f7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [some_eq_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/some-eq-natcast.md) | 61 | `result-track:420fa8f27f0d9f988ddf5a8e7e9047765de2b6b6d7f91f6c4fedb7831f6d8a0b` |
| 2 | `theorem` | [natCast_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-inj.md) | 65 | `result-track:e27f0c27eed966057303c72317fb0f14f9a724b71e3eb59592a331e20ce71779` |
| 3 | `theorem` | [natCast_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-zero.md) | 69 | `result-track:565841f7734b5f30ee8f5f006a2d6ef6bc7dbde93f2925496840aff891270f31` |
| 4 | `theorem` | [natCast_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-one.md) | 74 | `result-track:93111e2e25a0f9dd026b7e8885203c69654c8034ecaabca09354fb81e341ea1d` |
| 5 | `theorem` | [natCast_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-add.md) | 79 | `result-track:6d8c2bb8674ea69bebc3a21bfaabe64dfd1136b9652460bfa06c155e17907b8a` |
| 6 | `theorem` | [natCast_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-sub.md) | 85 | `result-track:91724153e7e6e93694fbdc2d4d18f02f7b61d08954404ac67c63c0a30bd0b371` |
| 7 | `lemma` | [natCast_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-lt-top.md) | 91 | `result-track:926006b42e6a48208282cf21fae043a9b06c0b30320fa8d8e650233b5dfc1720` |
| 8 | `def` | [lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/lift.md) | 97 | `declaration-track:c79bfed4dca243f5b83c4abd56be65c816fa9422679f7fb879e9d7e351f4777c` |
| 9 | `theorem` | [natCast_lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-lift.md) | 99 | `result-track:2159b226dfb778f95f11fc8a9e49c47b62b6c8975c03dfcf1c0dbb199e7e4b6d` |
| 10 | `theorem` | [lift_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/lift-natcast.md) | 104 | `result-track:c883330d722492522e02f894b103ef4967f6da90ecd9ae7b0670827a312df436` |
| 11 | `theorem` | [lift_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/lift-lt-iff.md) | 105 | `result-track:913bcd0c14ce09102c052f1e6417f3a3adfdada3c6d95d5e1238d1de8eb09719` |
| 12 | `theorem` | [lift_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/lift-le-iff.md) | 106 | `result-track:555ac448311f421b6c5ea7d4ced067a0329768e4e30b7b7a90d74185f030e4d6` |
| 13 | `theorem` | [lt_lift_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/lt-lift-iff.md) | 107 | `result-track:4e5a83ad587c9f32ddda3e1ad928e67271ccff4f9e49f20f2498608753db7886` |
| 14 | `theorem` | [le_lift_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/le-lift-iff.md) | 108 | `result-track:1a1c7433186ab63084d0110bedae7e9a1ecd4363efec57b7fb2212c44537182f` |
| 15 | `theorem` | [lift_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/lift-zero.md) | 112 | `result-track:0178df257e23c05a07c1ca6e51615ff74d9eb30961ca623cde0ad3e6a6e61af0` |
| 16 | `theorem` | [lift_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/lift-one.md) | 113 | `result-track:8d52ecdb3fbb8e92c0cfe014262e0e68742d707951454cb8de50f84a58c4413f` |
| 17 | `theorem` | [lift_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/lift-ofnat.md) | 114 | `result-track:3f3012bb2c25bae718934c81bc4c46ad8f62927515f63269244585ace59af8f5` |
| 18 | `theorem` | [add_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/add-lt-top.md) | 117 | `result-track:f58479a92c39e9c7da1e9484f584e3b941747c6b5dc860306f9964fd6ff4c2d3` |
| 19 | `theorem` | [add_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/add-eq-top.md) | 118 | `result-track:f45887e22397f39cf8e36ce3f51f76b41305be838fc49e591000d2095da159da` |
| 20 | `instance` | [canLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/canlift.md) | 120 | `declaration-track:9ca60e8778bd6f46ce71a7aab1133ce0114fcbe5420506ad618b2ceee792eb32` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/instance.md) | 122 | `declaration-track:1c1269548820d1cb6c775f29ffd3d006c395f513e3cc4e8ad1bac2846c024f6b` |
| 22 | `def` | [toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat.md) | 126 | `declaration-track:6a97b57aaaa3e7a0da2a5d0d4df9ac790264db3285244cd43f750a8c0c04ee2b` |
| 23 | `theorem` | [toNat_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-natcast.md) | 129 | `result-track:45fd874604d38718badff37f8676ab00de86c96d86e334990bf80e79cb921178` |
| 24 | `theorem` | [toNat_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-zero.md) | 135 | `result-track:3e2231f94c78547d3ce3e5a7554c20fb9c45b9439c5e11b6ff1ba2f85543c08b` |
| 25 | `theorem` | [toNat_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-one.md) | 139 | `result-track:a5e1edd2332a6b90d14d42aae6840e51c67ff302d2fa22034fdbbecd60fdd5b0` |
| 26 | `theorem` | [toNat_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-ofnat.md) | 143 | `result-track:3654aaaae1fb5706b36794a75304810bd0aca128a3bc255660efdd6788b27c9f` |
| 27 | `theorem` | [toNat_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-top.md) | 147 | `result-track:b5e4ce77864f7a2169890246dfdb03f3eca0d43d817088d77203b609fb7f9976` |
| 28 | `theorem` | [toNat_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-eq-zero.md) | 150 | `result-track:ab7e8f4a4c31cac1d07814c334f9bbb9b0e4e41dc39e912718a347d76d4e568b` |
| 29 | `theorem` | [toNat_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-pos.md) | 152 | `result-track:76e1c94cd5a572c1baaf2c60d41b47a325a0437c060694357ecba0647c22b182` |
| 30 | `theorem` | [lift_eq_toNat_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/lift-eq-tonat-of-lt-top.md) | 156 | `result-track:a32cd904cc0cd2124b4f8b170a4c536af1418a1130eeaaf54e8d528c9b4d06e8` |
| 31 | `theorem` | [recTopCoe_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/rectopcoe-zero.md) | 162 | `result-track:1658b931293f6601550eda2c994553150dbb77cac559855e26fc1a159c348cca` |
| 32 | `theorem` | [recTopCoe_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/rectopcoe-one.md) | 166 | `result-track:f10b07f8fc809df1900f00aada44146031d034beca76cb4d38bd4cc5f042d57e` |
| 33 | `theorem` | [recTopCoe_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/rectopcoe-ofnat.md) | 170 | `result-track:a32a1fb191c57eaee86d9fb94e61d9977194bea5f47685f9d192e6f4bf87a1b8` |
| 34 | `theorem` | [top_ne_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/top-ne-natcast.md) | 175 | `result-track:7aac1b2c7d6216a043f817a21e9ec8a5a3001655ff16597aedeff81aa91e7cdf` |
| 35 | `theorem` | [top_ne_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/top-ne-ofnat.md) | 181 | `result-track:03fef2eb3f2b8857f87924788d40f0f3b6da28f3aa1be432a9c14a1224554b08` |
| 36 | `lemma` | [top_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/top-ne-zero.md) | 184 | `result-track:379ce39d37ab15020548e8360e3a3b78fe52b85138a2145c2588adcc0ab78463` |
| 37 | `lemma` | [top_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/top-ne-one.md) | 185 | `result-track:c0d6aba0337f3c9043102ed8351e85759e52b88947be61e03ec3166202828d72` |
| 38 | `theorem` | [natCast_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-ne-top.md) | 188 | `result-track:e0b54126cb030d860da08059e1e19e0b424af61e8ea732b77a22b9a8e0f3b8c5` |
| 39 | `theorem` | [ofNat_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/ofnat-ne-top.md) | 194 | `result-track:ef2cdb892fff40fa1d92059922d3c2e5c8b54727ea0706be3832a8b434ad38cf` |
| 40 | `lemma` | [zero_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/zero-ne-top.md) | 197 | `result-track:4f1f9c0686cc8e6c3f837591405589205256433f09c246dee6fcc53fa75b470b` |
| 41 | `lemma` | [one_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/one-ne-top.md) | 198 | `result-track:34183d65c4999e08a81c63728776dd63d355081ca27fd3380ab3851edea74910` |
| 42 | `theorem` | [top_sub_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/top-sub-natcast.md) | 201 | `result-track:599ed549d9cc20b51e422b61352fd90ffd55a03aa59b0d4c0e3147e7cc86c22d` |
| 43 | `theorem` | [top_sub_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/top-sub-one.md) | 207 | `result-track:d43ddc45c263933aa4777255f68284fd871273dfb50e28e2443a25c6cea2833b` |
| 44 | `theorem` | [top_sub_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/top-sub-ofnat.md) | 211 | `result-track:0107b0241abd9974ad4051f2d264a653c247ea967ae1d74722d7fbe3b1684265` |
| 45 | `theorem` | [top_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/top-pos.md) | 215 | `result-track:a7041199c3e5d01fcfd57f6282575dfc5160f79ec035e9cbd4479895a2c284da` |
| 46 | `theorem` | [one_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/one-lt-top.md) | 219 | `result-track:3e2de3d8ff595eceb7fc8238514ebfc41425e50b100f3e1e7d4ffddf7ac376b0` |
| 47 | `theorem` | [sub_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/sub-top.md) | 222 | `result-track:4c1fb093ec012e4d19df229ab4751a93cef3e5aed505e070ffa8295fc6cd1e2d` |
| 48 | `theorem` | [natCast_toNat_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-tonat-eq-self.md) | 225 | `result-track:3dff9fc3e6175b580a570f2cccf5007a67d1da2e1567d85250cabe2f632b6530` |
| 49 | `lemma` | [toNat_eq_iff_eq_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-eq-iff-eq-natcast.md) | 234 | `result-track:2e170a470a9944a6ae3c4079a50defb80ee4d73980d42283cc8ad77d456d47fe` |
| 50 | `theorem` | [toNat_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-eq-iff.md) | 240 | `result-track:d6251134e5c7da8e8636251fa0f085abae0a7cbec060901c72a87606e75dd56f` |
| 51 | `theorem` | [natCast_toNat_le_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-tonat-le-self.md) | 243 | `result-track:f16bba0d37ba33b9ef99eacd1dff51710bbcc6715971547bb53e24dcab94af51` |
| 52 | `theorem` | [toNat_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-add.md) | 248 | `result-track:ec4f49ef51eb912affeff963b513e0ca47f7d58d871b974bd014318921dc968a` |
| 53 | `theorem` | [toNat_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-sub.md) | 253 | `result-track:6485b85bbc5221878d04ac3b8c0524e25e0daa645053b586dbe0b527a1b530a6` |
| 54 | `theorem` | [add_le_add_iff_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/add-le-add-iff-left.md) | 259 | `result-track:24ff876d4fd5f8cf698058c9149f9d81a53b6ba6e6fc0b2a38330baea7c766ef` |
| 55 | `theorem` | [add_le_add_iff_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/add-le-add-iff-right.md) | 263 | `result-track:02f35046550be32d003dae6f9f02fd8697edf97fe3b1f23de6c9d9b0009d5a2b` |
| 56 | `theorem` | [le_natCast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/le-natcast-iff.md) | 267 | `result-track:083b706881bf208819276437459d87d3832ecee914452772c1f2567decbcfa41` |
| 57 | `lemma` | [add_lt_add_iff_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/add-lt-add-iff-right.md) | 272 | `result-track:4e6be4a6c0db455a2733081ad69663bef9d02c757430e954a2ac2e86db98a721` |
| 58 | `lemma` | [add_lt_add_iff_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/add-lt-add-iff-left.md) | 275 | `result-track:64317f91d8952a62074d2aaec51eeb709d0ee8e732f25959eccf6379deb46a51` |
| 59 | `lemma` | [add_lt_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/add-lt-add.md) | 278 | `result-track:107562d043ee9b0ba226fdb038ec031f5f084a1615c4c0edad0e14bf95421064` |
| 60 | `theorem` | [add_lt_add_of_le_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/add-lt-add-of-le-of-lt.md) | 281 | `result-track:81656fcfa5452b749b57b88471f17adabbc09f8596df28c761a597370f7073d2` |
| 61 | `theorem` | [add_lt_add_of_lt_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/add-lt-add-of-lt-of-le.md) | 284 | `result-track:2f365186661957693f4f9f07d303f22f93a00b2c45a72b04f41605de39ce48b8` |
| 62 | `lemma` | [natCast_lt_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-lt-natcast.md) | 289 | `result-track:2469dc91cbf3de182498963e464e00e12e61c1a207ed123d8201f6e136a837b8` |
| 63 | `lemma` | [natCast_le_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/natcast-le-natcast.md) | 295 | `result-track:060a668f5ea6f5583f0040c6caa6279609c3cee967ea638d6646bcb530fcd3bb` |
| 64 | `lemma` | [toNat_le_of_le_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-le-of-le-natcast.md) | 299 | `result-track:edd120d9e69eec5d435711b81291c7dfdaface929f48c5eec9fd80452aa0a1e2` |
| 65 | `lemma` | [toNat_le_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/tonat-le-tonat.md) | 306 | `result-track:c1d089e44f1dcb9ea33093f1fb516f17a89be18dfac4017c1fd9b6e8222787cc` |
| 66 | `theorem` | [nat_induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/nat-induction.md) | 312 | `result-track:d4cff4118d05b4c7d0ca3d1a6803b8e5acd9aaae0b04fb465995394310cd733d` |
| 67 | `lemma` | [ne_top_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/ne-top-iff-exists.md) | 320 | `result-track:e7b93089a90524c058b37f53176a1a319be95beaf461b5d137ae1ec011a443c5` |
| 68 | `lemma` | [eq_top_iff_forall_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/eq-top-iff-forall-ne.md) | 322 | `result-track:7b8df20ef6ae4ad1952997a489f39d55e38a52fe662fdc079e84015dd387530a` |
| 69 | `lemma` | [forall_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/forall-ne-top.md) | 323 | `result-track:30fff5a6056a140873b77f54f416b0cd5f980224dd4d96d220ca39dfa290125b` |
| 70 | `lemma` | [exists_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/exists-ne-top.md) | 324 | `result-track:58155792ff5421d7f9ff463bdbf5107285eaa293c3d392907cc1aa6b47a40525` |
| 71 | `lemma` | [eq_top_iff_forall_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/eq-top-iff-forall-gt.md) | 325 | `result-track:d0d3e1a925e2d4186d87f422830140b70ff8e27a01484798fc8a06df216b859b` |
| 72 | `lemma` | [eq_top_iff_forall_ge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/eq-top-iff-forall-ge-source-edition-2.md) | 326 | `result-track:72caa64217faf25c8048a6ce233958164ae4354919300b70bc29be1a61a2c57a` |
| 73 | `lemma` | [forall_natCast_le_iff_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/forall-natcast-le-iff-le.md) | 329 | `result-track:6064ce4da5844025a092848271b7805898485256da9e6e5e1c7a61a89fd8a059` |
| 74 | `lemma` | [eq_of_forall_natCast_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/eq-of-forall-natcast-le-iff.md) | 332 | `result-track:61b8a46e044ffca166b8ebe82eb7f93b33ab1f891f802f0fca09401186284f84` |
| 75 | `lemma` | [exists_nat_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/exists-nat-gt.md) | 335 | `result-track:e6363805af1d67fae94ccb3946abef877fb6b0973afc2c3d1fcc0bee0e2b16f3` |
| 76 | `lemma` | [sub_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/sub-eq-top-iff.md) | 339 | `result-track:e6db0b067edfbd19907ea9636c2adf948e74daa07a39ac766c6b9e00c71ca5ff` |
| 77 | `lemma` | [sub_ne_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/sub-ne-top-iff.md) | 340 | `result-track:03e4ec500f1578efa0ae241442616e0ed02e705a70d29efe8a01acc51ef2e2ed` |
| 78 | `lemma` | [addLECancellable_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/addlecancellable-of-ne-top.md) | 342 | `result-track:10bcce7e04bb9fa064110bf95215aeedbe60e0485fb613f406a0f3f6891da2f6` |
| 79 | `lemma` | [addLECancellable_of_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/addlecancellable-of-lt-top.md) | 343 | `result-track:f8350f739940c1e9319ab74988e462736b018ac1a9c15a2a36703bfc7c40d975` |
| 80 | `lemma` | [addLECancellable_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/addlecancellable-natcast.md) | 344 | `result-track:c332bac9f78dfa03691e9ec895cb37f4c2f0fdef5443700747732050ecace3a8` |
| 81 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/map.md) | 353 | `declaration-track:c0333676867be8ab39bd545ef2927fbe6d638bc98bb392e3f3b0e6f9456c1c0d` |
| 82 | `theorem` | [map_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/map-top.md) | 356 | `result-track:81e92b3c5ee696bf236a419a107ad8a3453550e56d86f7cfb1bbf576c13f94f3` |
| 83 | `theorem` | [map_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/map-natcast.md) | 359 | `result-track:db63e37d06ea604d877a5533bd1a988b16ba508e645ce842fa293ad63d51b49d` |
| 84 | `theorem` | [map_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/map-zero.md) | 364 | `result-track:419077134c294adc0f427691f4d10e43e30339454c2e681a369e1fb73a94c1c6` |
| 85 | `theorem` | [map_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/map-one.md) | 367 | `result-track:fcfb346f1d1f21922372f76009534ab55d455fdcd66bfdc5608cb8211ed8ca49` |
| 86 | `theorem` | [map_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/map-ofnat.md) | 370 | `result-track:65be114ec04ecf3cdbd3c53aa53be44e58de4c7534d75c93cb5694802495781a` |
| 87 | `lemma` | [map_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/map-eq-top-iff.md) | 373 | `result-track:759ab5ba7f7e34b3ea4ebadfe1a820a7aef6e32f057593bb79e42720a0d0c4ee` |
| 88 | `theorem` | [strictMono_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/strictmono-map-iff.md) | 376 | `result-track:4829b93a44491f7a362920f518d502421ccaacbde4b93c915097b070b4bcd512` |
| 89 | `theorem` | [monotone_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/monotone-map-iff.md) | 380 | `result-track:3276efd4c95887748a1a09bf3fce01ec802d611fc14ef9a4ee42648b44b3ab16` |
| 90 | `theorem` | [map_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/map-add.md) | 384 | `result-track:7b5a4ce0dc45574c8efea292a9dc0036ef64f4aa7da1d99a68981d33e8c6483e` |
| 91 | `def` | [ENat Basic Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/enatmap.md) | 391 | `declaration-track:27851bc6a243022112c7bb48d8838bf3640802d0b015d6e309b558084716777d` |
| 92 | `def` | [ENat Basic Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/enatmap-source-line-397-occurrence-2.md) | 397 | `declaration-track:c12c467edd9757c28d31ba14123f47fd58a452dd6150eb5d8685b001f84782e7` |
| 93 | `def` | [ENat Basic Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/enatmap-source-line-404-occurrence-2.md) | 404 | `declaration-track:52560c88c0b2df346d6b645ba5ef997472341f0b7328d12f7cb574a39366a227` |
| 94 | `lemma` | [coe_eq_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/coe-eq-natcast.md) | 414 | `result-track:6142a7dc03f7223c5d5364a06814a73c43a240be7bbe3be9c641239e562bc2e0` |
| 95 | `lemma` | [eq_top_iff_forall_ge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBasicNamespacedPublic.lean/declarations/eq-top-iff-forall-ge.md) | 416 | `result-track:167bfb84e71e106cfb3b33549356a184d55cac59ec851cb547fff9a05438e11b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b39c4479e9750f243c92d7bf3e89c51d49ac3d5bf8171ca4329c9d6623c923ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variantba8dac0cd3a1287a15e3e86cd3d4d4e999b92e7f319774b67d19decaafada321.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
