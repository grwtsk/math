# Verification target: Primitive Roots

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b726ff08f6710c6c8b5891d667b57d2ceb60dbd3",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PrimitiveRoots.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PrimitiveRoots.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b726ff08f6710c6c8b5891d667b57d2ceb60dbd3`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPrimitiveRoot](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/isprimitiveroot.md) | 54 | `declaration-track:8b316cd3045770a944281c0b529fdacb9e8052c02ef3cbff3a454628a215d8bf` |
| 2 | `def` | [IsPrimitiveRoot.toRootsOfUnity](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/isprimitiveroot-torootsofunity.md) | 60 | `declaration-track:b54eabb6a7ddf69be0bf6e0a01c95e0f4000365e48dbd587ae9c6be5c137a40c` |
| 3 | `def` | [primitiveRoots](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/primitiveroots.md) | 71 | `declaration-track:cb8d8803623c931a6c9f90ba9ec067e033838797f8e3035145587b5cdc54d563` |
| 4 | `theorem` | [mem_primitiveRoots](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/mem-primitiveroots.md) | 78 | `result-track:a6eb5e333e980423b79e52117384031be249702aa72ff4f8d8d0c75e345a25bb` |
| 5 | `theorem` | [primitiveRoots_zero](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/primitiveroots-zero.md) | 84 | `result-track:ee0e778ef65265b8caedbb2cc1b01f9c5785e0b0c5a89df02e9a9a16573c7cf3` |
| 6 | `theorem` | [isPrimitiveRoot_of_mem_primitiveRoots](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/isprimitiveroot-of-mem-primitiveroots.md) | 88 | `result-track:396c02ea09a17f9e3a5e5b5efd894e6f3f2266255f64019e2a700c94fbaebd23` |
| 7 | `theorem` | [mk_of_lt](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/mk-of-lt.md) | 98 | `result-track:f0c4c0a6c56b52449905cf96cb3a800d4e39e1c5f90de7df0e844d1c733db21f` |
| 8 | `theorem` | [of_subsingleton](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/of-subsingleton.md) | 112 | `result-track:77d95002fde24934611213ca8a575283ed5713903333faf41bcbaa5fd7d9a7f2` |
| 9 | `theorem` | [pow_eq_one_iff_dvd](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow-eq-one-iff-dvd.md) | 115 | `result-track:fdf6de1459233ce423b95647ac982ad8556c9f06f5315aef96d2348fee6a00c9` |
| 10 | `theorem` | [isUnit](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/isunit.md) | 119 | `result-track:f9c781d3a7a4939d0ca4f700f0e2afcb84bf8761d72a022b6c9ff3090a2046bb` |
| 11 | `theorem` | [pow_ne_one_of_pos_of_lt](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow-ne-one-of-pos-of-lt.md) | 123 | `result-track:7a244643a021793c7782f952c71a56797b3b9e69744c010b2ff3ba0a60d68c6a` |
| 12 | `theorem` | [ne_one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/ne-one.md) | 126 | `result-track:0e8594e0fd60aa5f34176df05a27ebd9afe497074ddcf4ceef979401a88f04e9` |
| 13 | `theorem` | [pow_inj](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow-inj.md) | 129 | `result-track:224150ad10a250272c5ff5b061b2b8dad4908e94b0f1ce16ddd7da588b4d9cfc` |
| 14 | `theorem` | [one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/one.md) | 140 | `result-track:c5c1ad96b1e9ed9195330b3f12cd6ee9944ff0a4216a1fe0c9b50134003539e8` |
| 15 | `theorem` | [one_right_iff](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/one-right-iff.md) | 145 | `result-track:2f964a70e62a92d9491d11e18f11e9a86ff3c5012337877dbd645deeac3d4791` |
| 16 | `theorem` | [coe_submonoidClass_iff](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/coe-submonoidclass-iff.md) | 151 | `result-track:eb6fa26424e19c2a8fd085159608ea5d3ade593b9c49ad1a48b95a0d57205f22` |
| 17 | `theorem` | [coe_units_iff](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/coe-units-iff.md) | 157 | `result-track:8014a0b23577fa1524467568896ab60b9ba6c8785c70a39b1c4e6b19706472ff` |
| 18 | `lemma` | [isUnit_unit](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/isunit-unit.md) | 160 | `result-track:98c6640a95231bad2035960c5223d870245dcaa7c80e5e5125a236cb80f007b8` |
| 19 | `lemma` | [isUnit_unit'](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/isunit-unit-source-edition-2.md) | 163 | `result-track:9dcae3b81dc9ef70f74395211ca42d9846953d3ef11377a38bff870f4f4498dc` |
| 20 | `theorem` | [pow_of_coprime](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow-of-coprime.md) | 166 | `result-track:0f0a8b94b54803d4af7746e550cba590d74de9513c4fa5671260f72cff05c4df` |
| 21 | `theorem` | [pow_of_prime](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow-of-prime.md) | 180 | `result-track:05c27d4b4370f0003c238f9fa52ba03b64fd95acaf8479c68b8cc2cfc70943ee` |
| 22 | `theorem` | [pow_iff_coprime](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow-iff-coprime.md) | 184 | `result-track:32c89b772f0865215b1d03810af90689230dde277bb91b6727c2ea0bda2b2ad4` |
| 23 | `theorem` | [orderOf](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/orderof.md) | 196 | `result-track:27074da2b49f8757cfbf8d2a0284a6179bedafef2f151436e30755beb770c0c9` |
| 24 | `theorem` | [unique](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/unique.md) | 199 | `result-track:f50571501aeb89e900890072826d65d036e8e38aebce257925d9db51e74695cd` |
| 25 | `theorem` | [eq_orderOf](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/eq-orderof.md) | 202 | `result-track:ecf69eff9e0cfea54dcf449f133c315f560b09d6646132eb7011dbaf2112dc1a` |
| 26 | `theorem` | [iff](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/iff.md) | 205 | `result-track:c81d66d61e43312d9d608531b24de34ce5fdc7be51aac5503dda104755ab4026` |
| 27 | `theorem` | [not_iff](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/not-iff.md) | 212 | `result-track:ae72a9a62986bdfc67799502e400eef12274d63611f0e873f0f3c7dcddc5831e` |
| 28 | `theorem` | [pow_mul_pow_lcm](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow-mul-pow-lcm.md) | 216 | `result-track:832ddd49a077735dfd035d340f8e0820bf8d5748ac28853137345c164bfa5413` |
| 29 | `theorem` | [pow_of_dvd](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow-of-dvd.md) | 226 | `result-track:f9675b457ed7dc2dbd46dfac2967407086b69e88788ba21060ff5ecf02c28206` |
| 30 | `theorem` | [mem_rootsOfUnity](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/mem-rootsofunity.md) | 232 | `result-track:c98884e7f4f3ecab174a7f39a3b39ab8fb1fba78015198cdfffb088291c2adbf` |
| 31 | `theorem` | [pow](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow.md) | 238 | `result-track:63a9b21ea1f23c593fa1a44c1a08c0cbbf72fed8076484561b2a4b988999d962` |
| 32 | `lemma` | [injOn_pow](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/injon-pow.md) | 245 | `result-track:fa1e86f77d246e7cae181a72826abd8b301d11adc23e7b8d901f6bab323ef3f5` |
| 33 | `lemma` | [exists_pos](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/exists-pos.md) | 251 | `result-track:74643edacb9813dbe1f785ed2c182192d39baeca10fdb768cd9dc92d2156ce6b` |
| 34 | `lemma` | [existsUnique](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/existsunique.md) | 257 | `result-track:32acc754fd815af74bb10f982d70cbaaf35684e9519f08b7e2263e42f10ad860` |
| 35 | `theorem` | [map_of_injective](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/map-of-injective.md) | 266 | `result-track:77862f0a0915478d1aeeddcb864f61aceda2029f3a04ec5e626c64040e4c9268` |
| 36 | `theorem` | [of_map_of_injective](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/of-map-of-injective.md) | 275 | `result-track:a92229fcc69304b0ea8d8bd87c5e01cf4ffd9215f4c2435a837090610358602e` |
| 37 | `theorem` | [map_iff_of_injective](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/map-iff-of-injective.md) | 285 | `result-track:61bc4864576ab4d07bb8218f5cb5e4d11aec5ef28cad4c10cd673697767c8e2a` |
| 38 | `theorem` | [zero](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zero.md) | 297 | `result-track:3429fd202fb30816eb633626c2598767273d63096712f8f4a8437d45a33f2493` |
| 39 | `theorem` | [ne_zero](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/ne-zero.md) | 300 | `result-track:15b3fbe60851605e24bd885eac930adea6df0c3edf8add088146f6f9ae7f6dd5` |
| 40 | `lemma` | [injOn_pow_mul](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/injon-pow-mul.md) | 309 | `result-track:a6e98540b7a8e4a799ac08cb3f7a64c03ced9104c4ca92a7bca5e1d76f8aba59` |
| 41 | `theorem` | [zpow_eq_one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zpow-eq-one.md) | 320 | `result-track:48690f5d4a631b3fe14e6b7206143173abe1a0548315c2e913264b0cb2431dc8` |
| 42 | `theorem` | [zpow_eq_one_iff_dvd](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zpow-eq-one-iff-dvd.md) | 323 | `result-track:4f914cb56424c1aea3a6734efaebfd91a2fb3f7fcbbc953d171eb9f2a7a5504e` |
| 43 | `theorem` | [inv](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/inv.md) | 332 | `result-track:a372484b445fb47e621217fb80afcd9df546db16abd38e37435d5e1f9bee0bce` |
| 44 | `theorem` | [inv_iff](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/inv-iff.md) | 340 | `result-track:1a9e87edc1c23939bf133672aa80bab169f8c2d952faed6736742837e187af67` |
| 45 | `theorem` | [zpow_of_gcd_eq_one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zpow-of-gcd-eq-one.md) | 343 | `result-track:684009d175792cbe93c626182d444b39a6e8762e78fac91cd77741ad5b6a8de1` |
| 46 | `theorem` | [sub_one_ne_zero](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/sub-one-ne-zero.md) | 360 | `result-track:4d8773e0a6ce73f747f8f9e0ac3195ff87dd0c5b5bcf2fe40c24cd252b8a65ed` |
| 47 | `theorem` | [primitiveRoots_one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/primitiveroots-one.md) | 370 | `result-track:b6b8a6faa3ca1149ef98f97c1bca9484395b0e5f99c5ebb4befe2c330e7e098b` |
| 48 | `theorem` | [neZero'](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/nezero.md) | 375 | `result-track:ede9065ba009b5c28bc74284211f1864ad2679282b91173a5ab0b376a1e6a76c` |
| 49 | `theorem` | [mem_nthRootsFinset](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/mem-nthrootsfinset.md) | 393 | `result-track:59bbb1e3f80d09ce8e1d0a26b6ac2f161bd6df57bb8620124d1046e241218b39` |
| 50 | `theorem` | [eq_neg_one_of_two_right](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/eq-neg-one-of-two-right.md) | 403 | `result-track:eee96b029f7a427e1977c6259a137cd3398d854eb182f8a88d4ff9f7e49f437d` |
| 51 | `theorem` | [neg_one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/neg-one.md) | 406 | `result-track:238b97bf80f26e164603f5c69b35d2770b6daacbbf4d9489cfa13854da157f8c` |
| 52 | `theorem` | [geom_sum_eq_zero](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/geom-sum-eq-zero.md) | 412 | `result-track:439c4699b5aa194a10044b2e88497ee906615ba86344bc09cb5e9c719f426817` |
| 53 | `theorem` | [pow_sub_one_eq](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/pow-sub-one-eq.md) | 418 | `result-track:ca544996e4adbd1cfcac8be755a1cb1f8406c532e18e664ec7b461f039e1e12d` |
| 54 | `def` | [zmodEquivZPowers](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zmodequivzpowers.md) | 425 | `declaration-track:e1bb5c3c206fda64bbc4ea7b1b356d607dd4655cc489689f5e377e4829a5b630` |
| 55 | `theorem` | [zmodEquivZPowers_apply_coe_int](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zmodequivzpowers-apply-coe-int.md) | 449 | `result-track:094327b65d6263b9524b5e84728d528fedbab6e36518aa5f6a22d1cce1f0982a` |
| 56 | `theorem` | [zmodEquivZPowers_apply_coe_nat](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zmodequivzpowers-apply-coe-nat.md) | 455 | `result-track:3b31cb1f7f623491b334d2b44bb190699c5eaf5e8a81ae10076390bae19b8f58` |
| 57 | `theorem` | [zmodEquivZPowers_symm_apply_zpow](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zmodequivzpowers-symm-apply-zpow-source-edition-2.md) | 461 | `result-track:bb60158ac6c8aba5b99bbed613d1d34bdf7de81e5d5de8aae56d57557d7f97ef` |
| 58 | `theorem` | [zmodEquivZPowers_symm_apply_zpow'](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zmodequivzpowers-symm-apply-zpow.md) | 466 | `result-track:66810ef93c01aba97e5f6d711d493db48e37fa040787156ae0d8b0df6ce6de44` |
| 59 | `theorem` | [zmodEquivZPowers_symm_apply_pow](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zmodequivzpowers-symm-apply-pow.md) | 470 | `result-track:b0b0ed8a88fba2dbf140a4a53fa4ddd2987507fe6d98f3d03fc4b55017979e3d` |
| 60 | `theorem` | [zmodEquivZPowers_symm_apply_pow'](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zmodequivzpowers-symm-apply-pow-source-edition-2.md) | 475 | `result-track:feb75128145e3ad2ae6b19e14f2b80561a59cffbf6144355fc17bce5deaff305` |
| 61 | `theorem` | [zpowers_eq](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zpowers-eq.md) | 480 | `result-track:ab1193b5fcb29d87dbb08203ec693eb811a23a076b71f15cc3eb330ab16afcd9` |
| 62 | `lemma` | [map_rootsOfUnity](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/map-rootsofunity.md) | 492 | `result-track:2c580d5610cdc9492c226a0a4abfd334153125a4795d5894f7ac75a520d8faa6` |
| 63 | `def` | [_root_.rootsOfUnityEquivOfPrimitiveRoots](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/root-rootsofunityequivofprimitiveroots.md) | 506 | `declaration-track:ade6948c15770870e9472d429a3ef2560ec7dd82dc4c5875503938814441d652` |
| 64 | `lemma` | [_root_.rootsOfUnityEquivOfPrimitiveRoots_symm_apply](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/root-rootsofunityequivofprimitiveroots-symm-apply.md) | 514 | `result-track:fd287210fec4f9961a898eaf3b5c7a04d6e2c6e3b7d29eff1d8a0e944221d20e` |
| 65 | `theorem` | [eq_pow_of_mem_rootsOfUnity](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/eq-pow-of-mem-rootsofunity.md) | 521 | `result-track:ef3dfc9c4340fa0856a2c5bab508af00c661e039229d7da419d4d7be92a33245` |
| 66 | `theorem` | [eq_pow_of_pow_eq_one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/eq-pow-of-pow-eq-one.md) | 533 | `result-track:e8c7f8d3bde7be0281a064e93cb053627137543f777af6c1c892273f1d446d23` |
| 67 | `theorem` | [isPrimitiveRoot_iff'](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/isprimitiveroot-iff-source-edition-2.md) | 542 | `result-track:91a201104e0a8fce3c53fdee0526bb1fee8e257be6e940b5dc17d3cf21d3e141` |
| 68 | `theorem` | [isPrimitiveRoot_iff](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/isprimitiveroot-iff.md) | 551 | `result-track:8f6876c76fbd17f7d354848a933eef8d18d7936152058db02a58747d9fd43064` |
| 69 | `theorem` | [nthRoots_eq](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/nthroots-eq.md) | 560 | `result-track:670db4600498af373cbaea2d0e2bfd9765dbd09366423ad535c9d0b6edce82c9` |
| 70 | `theorem` | [card_nthRoots](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/card-nthroots.md) | 580 | `result-track:d488acac97be3d2e18dff9d05e95665faf40fdff6a8754ce80d030e670683d13` |
| 71 | `theorem` | [card_rootsOfUnity'](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/card-rootsofunity.md) | 590 | `result-track:0cc84110f5e33fc732395080e4b52bcb2dccf380f901f50e3f005d310a92f3c3` |
| 72 | `theorem` | [card_rootsOfUnity](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/card-rootsofunity-source-edition-2.md) | 600 | `result-track:8870623b4909878d16853789de7aeb0befa6e86b93d75f822d21e5642389b9fe` |
| 73 | `theorem` | [card_nthRoots_one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/card-nthroots-one.md) | 608 | `result-track:4aedee95546be621222771bd82fdc68457354abfbbf289e57e26ff5a31799a0f` |
| 74 | `theorem` | [nthRoots_nodup](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/nthroots-nodup.md) | 612 | `result-track:1474cc37faa44cb3eefb0176fbb8e654c2684534164e41aaaee62c7078e72a8d` |
| 75 | `theorem` | [nthRoots_one_nodup](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/nthroots-one-nodup.md) | 627 | `result-track:5d2cc80c52a59993c0038810eec449571765076e5b8c392824dc675a8087e65c` |
| 76 | `theorem` | [card_nthRootsFinset](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/card-nthrootsfinset.md) | 632 | `result-track:734f2e7276595768ab743b94e4c2db05023d70c3b8a3be53eaaf57c94e52fe72` |
| 77 | `theorem` | [card_primitiveRoots](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/card-primitiveroots.md) | 640 | `result-track:13bf2935e1d42c757cb57f0282002f67a561aeccc24463ea4e3f8d567c356d75` |
| 78 | `theorem` | [disjoint](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/disjoint.md) | 661 | `result-track:a9d4a8eb75b1e4cb0ed14eb9148dc2ea597843e372af9da44e094e8c8f30c486` |
| 79 | `theorem` | [nthRoots_one_eq_biUnion_primitiveRoots'](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/nthroots-one-eq-biunion-primitiveroots.md) | 668 | `result-track:1471a5282cf9c97294c17f22f11c98e3a1830cab907d534c61307ac095e2b623` |
| 80 | `theorem` | [nthRoots_one_eq_biUnion_primitiveRoots](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/nthroots-one-eq-biunion-primitiveroots-source-edition-2.md) | 683 | `result-track:d5f2150306173005fd3ba10c9cb3ca87ab15a5c2b0d25a7c2b3ff50b605912c0` |
| 81 | `def` | [autToPow](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/auttopow.md) | 699 | `declaration-track:3fcb0ba715213f1e11c9adc6f022a253323ecff7715275581bac167a72acf07f` |
| 82 | `theorem` | [coe_autToPow_apply](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/coe-auttopow-apply.md) | 730 | `result-track:39a89f47573ef793bfb4da36a92bd0f3b1a5046a31fc85d7d0311c0b8a1bb23d` |
| 83 | `theorem` | [autToPow_spec](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/auttopow-spec.md) | 736 | `result-track:12d6e485b95a5a5e317965ba7ea3ae384ddd2274c07172ff138f9a47de2a7351` |
| 84 | `lemma` | [IsCyclic.exists_apply_ne_one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/iscyclic-exists-apply-ne-one.md) | 755 | `result-track:98c35abb2688daed9ca7d30589682cd38b3fa4c457ded6d31428300dba24dbad` |
| 85 | `lemma` | [ZMod.exists_monoidHom_apply_ne_one](../../../../CommutativeAlgebra/PrimitiveRoots.lean/declarations/zmod-exists-monoidhom-apply-ne-one.md) | 780 | `result-track:e30f567734797233dba86054cce03de2a9cc35af77fa9ea3d44e366997905386` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5914eaffa3bab6e285707c38f1d57e64077dc3db84a4bbdfb09a2c4acc0a23b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
