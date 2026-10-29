# Verification target: Roots Of Unity Primitive Roots Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f4c2e50f26687e733bc861fc76113cdea9b3a69",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f4c2e50f26687e733bc861fc76113cdea9b3a69`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean.json)

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
| 1 | `structure` | [IsPrimitiveRoot](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isprimitiveroot.md) | 63 | `declaration-track:855a8a24686d547a98d1b71bafa65d8c70d4fb8ba518c48a44fc5e0c0742aaf7` |
| 2 | `def` | [IsPrimitiveRoot.toRootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isprimitiveroot-torootsofunity.md) | 69 | `declaration-track:8cc528a03b830c351087d0ea8f87ba5ad8cd4260b2b03c8af46a5abdb29d178a` |
| 3 | `def` | [primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/primitiveroots.md) | 80 | `declaration-track:ae34eeb4b9a9dca89358e0801bc85a8b511378be55925f558c717b26dbb32ec6` |
| 4 | `theorem` | [mem_primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/mem-primitiveroots.md) | 87 | `result-track:e4385fc59a47fde098fdcc956dceba816d9fcd34d6c0e13484b1af79f50643df` |
| 5 | `theorem` | [primitiveRoots_zero](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/primitiveroots-zero.md) | 93 | `result-track:da58cf9cbf14d83414faf27d7b9788d688bd0524452e8d615fea74fd977bab13` |
| 6 | `theorem` | [isPrimitiveRoot_of_mem_primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isprimitiveroot-of-mem-primitiveroots.md) | 97 | `result-track:22d2de9ef715c87448e0be07e3dc2f2ac30f43d0f1e4b9aaf7503ca46cacccd0` |
| 7 | `theorem` | [mk_of_lt](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/mk-of-lt.md) | 107 | `result-track:0813a2f3f1e4b19609650b0b12393dd49d8122773fa277903dbbe144d9cfa3fc` |
| 8 | `theorem` | [of_subsingleton](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/of-subsingleton.md) | 119 | `result-track:93d7f37e16bf4d571c51e98031ade3f19ebc8fe205103a2275ed0ea5e11cf171` |
| 9 | `theorem` | [pow_eq_one_iff_dvd](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-eq-one-iff-dvd.md) | 122 | `result-track:47fd3c708b993fffcfac84f5d36fd37caff78b2134c5ac005a22f4cbc81902f5` |
| 10 | `theorem` | [isUnit](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isunit.md) | 126 | `result-track:81d3c91b9539aa3f4bd92198bef75343e07e6252ba979332ed6a578567d54d7e` |
| 11 | `theorem` | [isOfFinOrder](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isoffinorder.md) | 129 | `result-track:cf0ba411630d061c007ce8c46376468a39798db493799409c2551621550c5919` |
| 12 | `theorem` | [pow_ne_one_of_pos_of_lt](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-ne-one-of-pos-of-lt.md) | 132 | `result-track:466c295fa29906f5d5632b098a3a3a2a857949e79450c3fb218f2de55d651e0c` |
| 13 | `theorem` | [ne_one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/ne-one.md) | 135 | `result-track:f57e6ffd449cdeca346319d24de44161e9d98e0dedbccdce0d16a3722c778e24` |
| 14 | `theorem` | [pow_inj](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-inj.md) | 138 | `result-track:21da52a6cf7b9ec2a97a79616cfd4d3e6758c613b5d4e26a3cadd945db57985b` |
| 15 | `theorem` | [one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/one.md) | 149 | `result-track:a0d2e95f4feaf0ff92288a60436e8e58c128696095dbe7d64a0d2dce98e336ba` |
| 16 | `theorem` | [one_right_iff](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/one-right-iff.md) | 154 | `result-track:fd1206406b9e781539da336b9403709442b6c1480be26e84eae22d793f649f24` |
| 17 | `theorem` | [one_left_iff](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/one-left-iff.md) | 160 | `result-track:89effaa3ad1c8ee5f548885dbe047efc123c1eabf3d33a64686b987703f7656f` |
| 18 | `theorem` | [coe_submonoidClass_iff](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/coe-submonoidclass-iff.md) | 164 | `result-track:0aa23a3aae2d678dc9acb404cafaf759b1bb59b520e36e6e8b5f02012fa2c924` |
| 19 | `theorem` | [coe_units_iff](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/coe-units-iff.md) | 170 | `result-track:236b3c56c5b18072cec6cd390f9391aff690bc8b49b242f42af9290fb5f05c39` |
| 20 | `lemma` | [isUnit_unit](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isunit-unit.md) | 173 | `result-track:0ce9951592676048df4224e95e7efcfd953e0e3073a8d781bcbf8fc1e36a1aca` |
| 21 | `lemma` | [isUnit_unit'](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isunit-unit-source-edition-2.md) | 176 | `result-track:e919313287119999a1ba4f95aec2694f3d5730b64f57c0af6a920cc3dbea84b6` |
| 22 | `theorem` | [pow_div_gcd](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-div-gcd.md) | 179 | `result-track:02c25dd1a7fb04186ca67e46b777f43765c8c21f37462ec9a413bfa11761222a` |
| 23 | `theorem` | [pow_of_coprime](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-of-coprime.md) | 191 | `result-track:c77e220c750a84952a3d4d1591e2a6e5c603577211286e02ee2b1eca62c5259d` |
| 24 | `theorem` | [pow_of_prime](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-of-prime.md) | 195 | `result-track:d6e33a64712d7e1d7fab5a6a312f7623c05c487bce8ae4b42189991c4ff4a2c6` |
| 25 | `theorem` | [pow_iff_coprime](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-iff-coprime.md) | 199 | `result-track:d9f450074e8381cf3038cd18d37feb76daa1d2713ca6110810ffe81cbb00a034` |
| 26 | `theorem` | [orderOf](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/orderof.md) | 211 | `result-track:e06b35accf1dcbb2bc71c799794efc1e48998a43035e9e6811e47e8eacdabe6a` |
| 27 | `theorem` | [unique](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/unique.md) | 214 | `result-track:520d2429ca0097d7d2a08a2a34d3129266c6f9dd675e4db3aebdbf3c634baa95` |
| 28 | `theorem` | [eq_orderOf](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/eq-orderof.md) | 217 | `result-track:6fa489f05249d6ee3a71e07970a0f465c39be280c04666310111b8b829f3d91b` |
| 29 | `theorem` | [iff](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/iff.md) | 220 | `result-track:33fc3fbaa509a3279e6cc3b776d292cd7064a9921391b9fa798581dd56197c90` |
| 30 | `theorem` | [not_iff](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/not-iff.md) | 227 | `result-track:6ee0c17cdb7a8ba6973f356b306beaac30017e091b2e687f38cc52cdead41c30` |
| 31 | `theorem` | [iff_orderOf](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/iff-orderof.md) | 231 | `result-track:cc6d90bf19916f37deef2bb97cb0d31859d81338422753a15ee6deb8e710f4b4` |
| 32 | `theorem` | [pow_mul_pow_lcm](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-mul-pow-lcm.md) | 234 | `result-track:0651d9b9ef3f7f7917afc264463347eada316b3c54ae0c55276897c21bc080ce` |
| 33 | `theorem` | [pow_of_dvd](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-of-dvd.md) | 245 | `result-track:977d0dbb17e30fad8ce0f4d2b39ebb70a89e4840f60f63b9a63f3122c7ce5dd6` |
| 34 | `theorem` | [exists_pow_eq_pow_two_mul](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/exists-pow-eq-pow-two-mul.md) | 253 | `result-track:97dfb8c643178fe8616d31dc293cec21e064459d4709dd2985c7cb85910e4958` |
| 35 | `theorem` | [mem_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/mem-rootsofunity.md) | 257 | `result-track:36489f7a5a44d33c14b373a141843e4932fe17850db0b392af563753bd5339d8` |
| 36 | `theorem` | [pow](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow.md) | 263 | `result-track:847766674ea3bde8056f26be7d8fa49a903d7a101a4464fef8fe8357257ce7ef` |
| 37 | `lemma` | [injOn_pow](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/injon-pow.md) | 270 | `result-track:02c90598891deaa64e541f36249bf5bc99a6719b263d771cd35de80a9a6ef885` |
| 38 | `lemma` | [exists_pos](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/exists-pos.md) | 276 | `result-track:0175bba18727f7d84f6c8c3935ed4038830637ed72d7958b1f5dff06ca817e9e` |
| 39 | `lemma` | [existsUnique](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/existsunique.md) | 282 | `result-track:c5dae2bd95e8ba7f27b56998a078305eecc77c9b72fc752f606b738908d9b195` |
| 40 | `theorem` | [_root_.isPrimitiveRoot_of_mem_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/root-isprimitiveroot-of-mem-rootsofunity.md) | 285 | `result-track:4f8e6891c4eb5801bd75146481b932d351bcde422bbaf1cb50e1bd01f1a9fd1f` |
| 41 | `theorem` | [map_of_injective](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/map-of-injective.md) | 298 | `result-track:de0a1413181fe995881a5fe306134fcbeebf906e17561c37b99d84b891693733` |
| 42 | `theorem` | [of_map_of_injective](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/of-map-of-injective.md) | 307 | `result-track:d1c4b14c557b4080792af1c61638cffa071e2f62b1e0478e7e4fb2fd2a367fc9` |
| 43 | `theorem` | [map_iff_of_injective](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/map-iff-of-injective.md) | 317 | `result-track:dda18067e71298d701a3ad1521848e64949bcd30b68087e6c08cb27298251ef1` |
| 44 | `theorem` | [zero](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zero.md) | 329 | `result-track:b879759c9f94d8291b2f9761534efbc29f957f9585d23461d311bef21a0859de` |
| 45 | `theorem` | [ne_zero](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/ne-zero.md) | 332 | `result-track:ff4931e8662b8cffa40e113ffdc87692fc2cc1046e2ee0254853e2db5695d384` |
| 46 | `lemma` | [injOn_pow_mul](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/injon-pow-mul.md) | 341 | `result-track:f080ea3c76726a3fe07e328baf5ca0b3469ec9744635f961720aad8a83a6293d` |
| 47 | `theorem` | [zpow_eq_one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zpow-eq-one.md) | 352 | `result-track:c0a6ad30687961d8029fcfbcb859c6a5570dd773ec65713255d216b1ee8d2af0` |
| 48 | `theorem` | [zpow_eq_one_iff_dvd](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zpow-eq-one-iff-dvd.md) | 355 | `result-track:2625b671a67d407b045e1c978b2eb835da62063ce961617f8321e19e3fb77c29` |
| 49 | `theorem` | [inv](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/inv.md) | 364 | `result-track:65fe00c7288d204f099fbfb4c320fbe5f87361e873c0319ee39025df81d428ef` |
| 50 | `theorem` | [inv_iff](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/inv-iff.md) | 372 | `result-track:fa2a6f977dd888f04e3105bde815afb9ccf397546d75913a6893392e5a904a00` |
| 51 | `theorem` | [zpow_of_gcd_eq_one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zpow-of-gcd-eq-one.md) | 375 | `result-track:b4daeb90fc5ec19bbc5b6ef98cdc3fee906c4200603369fea7c859832e2aa287` |
| 52 | `theorem` | [sub_one_ne_zero](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/sub-one-ne-zero.md) | 392 | `result-track:cc69d51f9285084e53050aca9eeeb85f18f0ac3e0f6c893f2ebdd5da957f28d5` |
| 53 | `theorem` | [isRoot](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isroot.md) | 395 | `result-track:9650f63834bf111b15fd2bd798a9fefdf9c6f9b0ef52313ee42e0b032c5d05bb` |
| 54 | `theorem` | [isRoot_of_dvd](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isroot-of-dvd.md) | 398 | `result-track:0d701bb6307487fcd6d28e614bc001ac5dcf46f5b791021b1d68598672fdf803` |
| 55 | `theorem` | [primitiveRoots_one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/primitiveroots-one.md) | 409 | `result-track:35ba3d26192f30a0a3a4d554544f06fd16ba869a6c7d2b6018815e1de1c81591` |
| 56 | `theorem` | [neZero'](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/nezero.md) | 414 | `result-track:1e9676300230f4d7207f163e1d17e2e4ebda69440d95345dbca1671a763562c7` |
| 57 | `theorem` | [mem_nthRootsFinset](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/mem-nthrootsfinset.md) | 425 | `result-track:d6342ee88fa9fb1a8a23c54d233747fad6e601f8d1adc27fa5f36419e0339831` |
| 58 | `theorem` | [eq_neg_one_of_two_right](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/eq-neg-one-of-two-right.md) | 435 | `result-track:8f60f4d3cd5284613031a22498ebfc400c1810a29832fc2051600cfdd7448492` |
| 59 | `theorem` | [neg_one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/neg-one.md) | 438 | `result-track:23025a516f0905da996954ef604e6066c3ddf030627b68c0071eeb1af51df5dc` |
| 60 | `theorem` | [geom_sum_eq_zero](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/geom-sum-eq-zero.md) | 444 | `result-track:441a0bc6e26708bc4447246f379b5548834453c97dd84f6b2b8f90a7df503da5` |
| 61 | `theorem` | [isRoot_geom_sum](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isroot-geom-sum.md) | 449 | `result-track:7c37fbc380c13d6a99660b1bacad38f53b4f4aaac8d988ca3e11649227d925ed` |
| 62 | `theorem` | [pow_sub_one_eq](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/pow-sub-one-eq.md) | 454 | `result-track:0957b16f316d2c611e29eab8d3c084e99d574243975b1d26bbfe7546c528daff` |
| 63 | `def` | [zmodEquivZPowers](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zmodequivzpowers.md) | 462 | `declaration-track:e8f0277f4b899f039b0ddb734bfc3018a2fe2a9812e57834d51d718abb49f009` |
| 64 | `theorem` | [zmodEquivZPowers_apply_coe_int](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zmodequivzpowers-apply-coe-int.md) | 486 | `result-track:a4b983811a85c94ec9524475b0f4a696d12778f32e8347982140df12c156e730` |
| 65 | `theorem` | [zmodEquivZPowers_apply_coe_nat](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zmodequivzpowers-apply-coe-nat.md) | 492 | `result-track:0bbc6d8b5b2e7f7de441c6d834ccea0d33497d317de54f1d422eafac2ec89480` |
| 66 | `theorem` | [zmodEquivZPowers_symm_apply_zpow](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zmodequivzpowers-symm-apply-zpow-source-edition-2.md) | 498 | `result-track:bcdc4e5cfabdcc0bc98220475c1b72cc32031aa9fae87075ee954fb9e43a6d50` |
| 67 | `theorem` | [zmodEquivZPowers_symm_apply_zpow'](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zmodequivzpowers-symm-apply-zpow.md) | 503 | `result-track:9c11db2f13e47e66f864b4ba1ac288303b559347fd79889e0c0b97d6339efcd3` |
| 68 | `theorem` | [zmodEquivZPowers_symm_apply_pow](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zmodequivzpowers-symm-apply-pow-source-edition-2.md) | 507 | `result-track:bb93a3f532ca7e2a14965c01986d995698ba8d2fc50203165ab2c3f0e2cdd1ce` |
| 69 | `theorem` | [zmodEquivZPowers_symm_apply_pow'](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zmodequivzpowers-symm-apply-pow.md) | 512 | `result-track:851ca315326694dc7acc5509f6cbbb19698fd3b6960f4617583c31f0af35b0f5` |
| 70 | `theorem` | [zpowers_eq](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zpowers-eq.md) | 517 | `result-track:05f5a6fbe1b83a4af5572e3dc77657aac9321e4688f933672e3557a6ab7260d9` |
| 71 | `lemma` | [map_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/map-rootsofunity.md) | 525 | `result-track:5f00182794d20c07f872e4c6b7e8e8b0271be390f19b335bd822dedb226ee321` |
| 72 | `def` | [_root_.rootsOfUnityEquivOfPrimitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/root-rootsofunityequivofprimitiveroots.md) | 539 | `declaration-track:ee5da7605215cae3ce7db8618a68badd39052fa1c3d4d05d7b7b080a7e91785a` |
| 73 | `lemma` | [_root_.rootsOfUnityEquivOfPrimitiveRoots_symm_apply](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/root-rootsofunityequivofprimitiveroots-symm-apply.md) | 547 | `result-track:e42a543afbd96776cccd1412a3b819d93cff0c686a524ca68cd889358d0ff5d7` |
| 74 | `theorem` | [eq_pow_of_mem_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/eq-pow-of-mem-rootsofunity.md) | 554 | `result-track:7fa5be545fa441d8fa249c52996f7061660ad6d4ff43846764b253a51aedf180` |
| 75 | `theorem` | [eq_pow_of_pow_eq_one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/eq-pow-of-pow-eq-one.md) | 566 | `result-track:0a0e33478d6006ea6b387980189ea3cc93f224c5c9734fafafbe65256985c2cc` |
| 76 | `theorem` | [isPrimitiveRoot_iff'](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isprimitiveroot-iff.md) | 575 | `result-track:073fc560d4d1473f242aa38e72c65dc7be293783ce37b595460675a2d4baa458` |
| 77 | `theorem` | [isPrimitiveRoot_iff](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isprimitiveroot-iff-source-edition-2.md) | 584 | `result-track:a6e19db3beedf3f08b3d63254874a262617d7de04ac19693686712ffa512ea2f` |
| 78 | `theorem` | [nthRoots_eq](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/nthroots-eq.md) | 593 | `result-track:19826342aed2904bfd3f1cf8ec4ce078246f28cc69f3f75812ef016f8b852afb` |
| 79 | `theorem` | [adjoin_pair_eq](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/adjoin-pair-eq.md) | 618 | `result-track:cdd0402a5b3639f7150d1eb9bafd85e7211306474cc810d2dc41c7ddcdcb3cc4` |
| 80 | `theorem` | [card_nthRoots](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/card-nthroots.md) | 636 | `result-track:97f30bb8ca4ecca72936280754396d86a002014a8c62e5b90dca7133fda987f0` |
| 81 | `theorem` | [card_rootsOfUnity'](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/card-rootsofunity-source-edition-2.md) | 646 | `result-track:ea510b6b5e8b89bbbf1b4576a42b7b5bb129603189008def07976e3450673297` |
| 82 | `theorem` | [card_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/card-rootsofunity.md) | 650 | `result-track:505554e56852d09c8fa225aeb9c5ec9a5b0e59524f8056bcee41069b98b5623f` |
| 83 | `lemma` | [_root_.card_rootsOfUnity_eq_iff_exists_isPrimitiveRoot](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/root-card-rootsofunity-eq-iff-exists-isprimitiveroot.md) | 656 | `result-track:3afceefcdfbdd966fe7e5a31e14ea99f350ccee287b6380b1e57e095bb1e61a4` |
| 84 | `theorem` | [card_nthRoots_one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/card-nthroots-one.md) | 666 | `result-track:539dd85abf2b8ab24dc62a2cbed94cb29e7a5bdc8d4d92dd06ea42d74defd242` |
| 85 | `theorem` | [nthRoots_nodup](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/nthroots-nodup.md) | 670 | `result-track:591fdca8e28c9e3a9b7abd63ac1d6d6a7e192635eba6a5ebc3d733af404f9379` |
| 86 | `theorem` | [nthRoots_one_nodup](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/nthroots-one-nodup.md) | 684 | `result-track:643f86209e6db48e94f8e3045bbb1ff8cefb0e0ea714f68eff2519f038291284` |
| 87 | `theorem` | [card_nthRootsFinset](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/card-nthrootsfinset.md) | 689 | `result-track:9291f6de0491eafaf98152375d3a7e13f163f53774cd254cc56fa83da0c701ab` |
| 88 | `theorem` | [card_primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/card-primitiveroots.md) | 697 | `result-track:ad27f64265f176f312a59b2197f4844b5e09644ceaeb9deb546fa643a999d624` |
| 89 | `def` | [primitiveRootsPowEquiv](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/primitiverootspowequiv.md) | 720 | `declaration-track:405a335fb6f6cdc8f78cbef208868c9b84412f499f67d5ead910c9f32c7e00c6` |
| 90 | `def` | [primitiveRootsPowEquivOfCoprime](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/primitiverootspowequivofcoprime.md) | 740 | `declaration-track:041183659ef4cd2a7b950888677d1532999e289d34a22b4c83416ccddaf5915d` |
| 91 | `theorem` | [disjoint](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/disjoint.md) | 747 | `result-track:76b5b9f57bd38f45fee680b501ddfbf1c95dfbb69296f635bcba5b5ab978a6af` |
| 92 | `theorem` | [nthRoots_one_eq_biUnion_primitiveRoots'](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/nthroots-one-eq-biunion-primitiveroots-source-edition-2.md) | 754 | `result-track:cea4f31b496ee9d2a645711c8ac6b8425ed204a57ecedfcf456e4f43ceddfa13` |
| 93 | `theorem` | [nthRoots_one_eq_biUnion_primitiveRoots](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/nthroots-one-eq-biunion-primitiveroots.md) | 769 | `result-track:9155b72dc52a1b3ca6e45e3e23b5fc6ae8a2732917c8847d4257e82bef23d379` |
| 94 | `def` | [autToPow](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/auttopow.md) | 785 | `declaration-track:5ff696c814b98b663544d909e15f63478661a04184b79b970a70e01087fca363` |
| 95 | `theorem` | [coe_autToPow_apply](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/coe-auttopow-apply.md) | 816 | `result-track:935e818ec79a2569be63a6c39e07ae0222ad0e4de8e80959625b48cba5a3a024` |
| 96 | `theorem` | [autToPow_spec](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/auttopow-spec.md) | 822 | `result-track:23a843b1c34a69fb165e6ca01534dd10898e7b4289295a4a76c0b7c5aa102dc4` |
| 97 | `theorem` | [nthRootsFinset_eq_of_prime](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/nthrootsfinset-eq-of-prime.md) | 845 | `result-track:da726c50f712ce2caa698594b9de43abfe59c35f99d3d3067c1ea4ef681b88f2` |
| 98 | `theorem` | [mem_nthRootsFinset_iff_of_prime](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/mem-nthrootsfinset-iff-of-prime.md) | 851 | `result-track:1dd5d20fbbc795f1df9b71b12a2b8a1629cd0d10b37dece38e7b46d45ad58f2a` |
| 99 | `theorem` | [isPrimitiveRoot_of_mem_nthRootsFinset](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/isprimitiveroot-of-mem-nthrootsfinset.md) | 857 | `result-track:2cd5e4fa0fe82c281b43f80c5bdee5390f443417e0b92e403f5e71185f553d49` |
| 100 | `theorem` | [mem_primitiveRoots_of_mem_nthRootsFinset](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/mem-primitiveroots-of-mem-nthrootsfinset.md) | 862 | `result-track:d5b22b46bf1ff9e9e17a584f143e3d0fa6fd59ff92d4c5ede438f9605031b22c` |
| 101 | `lemma` | [IsCyclic.exists_apply_ne_one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/iscyclic-exists-apply-ne-one.md) | 872 | `result-track:950bbd1758e2cc6be43740c3b0a6355fad118297510cbdab04ba6da57ab47c45` |
| 102 | `lemma` | [ZMod.exists_monoidHom_apply_ne_one](../../../../CommutativeAlgebra/RootsOfUnityPrimitiveRootsPublic.lean/declarations/zmod-exists-monoidhom-apply-ne-one.md) | 897 | `result-track:8529909553793f2b459af1578925347eb854769e84484e2028f913789eb9bf58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e23c5616af23e23e066a0a84a0725d20e114b2519f395348a0d17e1b6ee9820 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
