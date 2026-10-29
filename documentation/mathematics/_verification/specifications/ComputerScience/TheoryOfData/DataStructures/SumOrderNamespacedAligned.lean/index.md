# Verification target: Sum Order Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35b29b188f96e64170cc4fc443fd87fb3f1c8876",
  "lexical_observation_count": 111,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantb85ee9b522eec589348f893c05c67fabf52f9c04880b756a45a9a381b171fc4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35b29b188f96e64170cc4fc443fd87fb3f1c8876`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantb85ee9b522eec589348f893c05c67fabf52f9c04880b756a45a9a381b171fc4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantb85ee9b522eec589348f893c05c67fabf52f9c04880b756a45a9a381b171fc4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LiftRel.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/liftrel-refl.md) | 50 | `result-track:94a103b1f8faae06b62c458d8c1273aac8cd9e98d2db688e81e99c18360d1aa7` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-7.md) | 55 | `declaration-track:8a68ad4b86a71257593dca339f9f6b4987a4061fd9debcd4ce852ac3f7b1a96f` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-6.md) | 58 | `declaration-track:55100ce9fc7b9802ab14ba13ab94c6156893ab1484cd0155d9687f273dc4baee` |
| 4 | `theorem` | [LiftRel.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/liftrel-trans.md) | 62 | `result-track:8319d7089e43960c24d20556b9c8f6384fbbfbb9d09cb654677fb6ca05ba8b0b` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-8.md) | 68 | `declaration-track:8b25361e33d280b1313aca35c35bb774d21f6d8bbf7d955b81321f300278f402` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-9.md) | 71 | `declaration-track:a4e959176d9866b66a1eaa44ec441a808fdb64ab8180292def762a89d496c60c` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-11.md) | 80 | `declaration-track:d96c9ce37c5126ab8f421e0d0347c452c50b24e02e949d5b3308798dca587a43` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 85 | `declaration-track:1b4271905c19ec170d60900d347182ad660a37af9246d38adeae44d352da2386` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-5.md) | 88 | `declaration-track:48c0e9050afbe8a742bf9445b79ce850038e97e7123333e0d743e3b5fc840a55` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 93 | `declaration-track:28397fc56065be440ab5c855846b66503c7c69fab6a2a1bc679362de7ab81a32` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-12.md) | 96 | `declaration-track:fc4fb8bd8e2e5b9ce15c84a9e063ebe56205a965acf1b81d865a7c4bf9f6f206` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance.md) | 104 | `declaration-track:155e0ee3261f54a540a386572eeeba7086b1e0889ccb15959efa7a34c3a5541f` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-4.md) | 112 | `declaration-track:43a66eb9f4a660c9b7beac21396997e00dcceb7501ec1bf26c3da009b58f930d` |
| 14 | `instance` | [instLESum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instlesum.md) | 122 | `declaration-track:3a907ebd390a97cbd4131cb9e90546440660602797f687856aaa9949f75665d9` |
| 15 | `instance` | [instLTSum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instltsum.md) | 125 | `declaration-track:10c57f2280c7b3aa98ab3091112c4aa9678e994df032f1e79e95cdd3183ecff9` |
| 16 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/le-def.md) | 128 | `result-track:5fe95e1c4a32ce4a315897c3dd82f8b47c14f90b253b4927b569789e2ecd3871` |
| 17 | `theorem` | [lt_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/lt-def.md) | 132 | `result-track:085bd7363bcf53d34a3343309267388858f75761a2bd57a36bbb55b1fce7199e` |
| 18 | `theorem` | [inl_le_inl_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-le-inl-iff.md) | 137 | `result-track:5dbb25079597f3d81bb158f7936d287a64564282402d6fd190cf3382c5ab41a2` |
| 19 | `theorem` | [inr_le_inr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inr-le-inr-iff.md) | 142 | `result-track:25b6d12fa6d4e7d67cde9c70edc160f61fc3ba831fa694ab62c561527f65a5c1` |
| 20 | `theorem` | [inl_lt_inl_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-lt-inl-iff.md) | 147 | `result-track:4891b05d69b35c50ba4e1810461a614eca9d61e7c6f1c016ab9920ff9fe32e51` |
| 21 | `theorem` | [inr_lt_inr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inr-lt-inr-iff.md) | 152 | `result-track:25c4010f5cc54127e5c099b652f7ac07d7bdb115e72addabb49e5ab24464bf51` |
| 22 | `theorem` | [not_inl_le_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/not-inl-le-inr.md) | 157 | `result-track:bccfb922c802b1a592bf16075d893108046784a6225fdae3eeebc065e64db2b8` |
| 23 | `theorem` | [not_inl_lt_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/not-inl-lt-inr.md) | 162 | `result-track:afebb9ffc3f318f0c33f0e51c406cab0a577669f81b54bec756ea4f912a3177d` |
| 24 | `theorem` | [not_inr_le_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/not-inr-le-inl.md) | 167 | `result-track:200ae775e0906f66eb76764b64038ebe40446a5add2d5c3588181320effac38d` |
| 25 | `theorem` | [not_inr_lt_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/not-inr-lt-inl.md) | 172 | `result-track:2037e492110aee345a1931e748cc54dfae785ac1a10def0c79db970fb6ced076` |
| 26 | `instance` | [instPreorderSum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instpreordersum.md) | 180 | `declaration-track:19bfa732e87104469243b428dc8ce00cba659348ba83f784e83e1b08ad31a968` |
| 27 | `theorem` | [inl_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-mono-source-edition-2.md) | 193 | `result-track:f777716fe307a9c3be00173cde1eb66ff3899ef7725fc09d0410eef201695cc7` |
| 28 | `theorem` | [inr_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inr-mono-source-edition-2.md) | 196 | `result-track:89447815b853b37187540811f5df9b1f63b80ee47c7bf5983690b434924f882e` |
| 29 | `theorem` | [inl_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-strictmono-source-edition-2.md) | 199 | `result-track:cf29311a873cbbef128a53e5d79efffd4639602ffcb65a2897280d2d182797cf` |
| 30 | `theorem` | [inr_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inr-strictmono.md) | 202 | `result-track:4754cb7aa2c0bfb059852dbd6e5eda2012dda9f68b781f7828378945478961e7` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/instance-source-edition-10.md) | 207 | `declaration-track:a9e78564c15180288cbba244e07bfee8b58391d74fa82e67bee6ca4044285546` |
| 32 | `instance` | [noMinOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/nominorder.md) | 211 | `declaration-track:72d82eb8063355d379843528ca5479a3b9a3c7f76d7f9cd28e4153592666c408` |
| 33 | `instance` | [noMaxOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/nomaxorder-source-edition-2.md) | 222 | `declaration-track:9497995efafd466a9981eaadaa6f514a091c7c02226e317d5aaf475efcad7bad` |
| 34 | `theorem` | [noMinOrder_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/nominorder-iff.md) | 234 | `result-track:4288771d51d35184ce11042293eaa8ca966403c66f16676ee57187d1a74d3fb2` |
| 35 | `theorem` | [noMaxOrder_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/nomaxorder-iff.md) | 248 | `result-track:cffff4c1409a336284d7e3ba295276472e1bcb54cee715f13775584697c3a63b` |
| 36 | `instance` | [denselyOrdered](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/denselyordered.md) | 261 | `declaration-track:f6ff9c0bc5c9bbe3e6813cf9222fffb18bb57f877e5dbe72819b26c2db12cbed` |
| 37 | `theorem` | [denselyOrdered_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/denselyordered-iff.md) | 274 | `result-track:e1c81bd36e37f4a027ddb7f1398636f58034ad3c8fdadc9f86489db8fc4e89d2` |
| 38 | `theorem` | [swap_le_swap_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/swap-le-swap-iff.md) | 289 | `result-track:1abc447abcaa7a3c68e30e459156decb3947819e0c0af227ddbc77300b5f9d25` |
| 39 | `theorem` | [swap_lt_swap_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/swap-lt-swap-iff.md) | 294 | `result-track:c4815516e96268160cc07ef7d661147a3624902c8162072030d843c7fa89551d` |
| 40 | `abbrev` | [Sum Order Namespaced Aligned](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-li.md) | 312 | `declaration-track:4b6141a0884c1d3ce88f748c2d0dbacc6e6a15070ab68f484ad2b0016a178080` |
| 41 | `abbrev` | [Sum Order Namespaced Aligned](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-li-source-edition-2.md) | 318 | `declaration-track:56999639cf0f0e94aadd7b744ea02904a401b82cc7f813bba6dc16dc5af2bfbd` |
| 42 | `instance` | [LE](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/le.md) | 323 | `declaration-track:d2e97bfa82f7ddfef9ce398aa2546461b9b2697993687042f3ee90ae15c49b1a` |
| 43 | `instance` | [LT](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/lt.md) | 328 | `declaration-track:dbb783ae4f12735e02ab7579b63d161c3806220def15a160d8740e028073782e` |
| 44 | `theorem` | [toLex_le_toLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/tolex-le-tolex.md) | 333 | `result-track:3ad86d2b75ddaaacdcffc973ffad1c7ccf00fa2471019ae1f81d68b844d6f839` |
| 45 | `theorem` | [toLex_lt_toLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/tolex-lt-tolex.md) | 339 | `result-track:238022163d31560b5c83dd02fde46e074583d211f9f4e37dda2792db39456a67` |
| 46 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/le-def-source-edition-2.md) | 344 | `result-track:c37f764138b0dae89750a54a0ff965f6d051abe68bea6fa386f7347f81b6c9c0` |
| 47 | `theorem` | [lt_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/lt-def-source-edition-2.md) | 348 | `result-track:42430d9899de3b02018855cc1698ed3e3bd13c97a189fcc89b2fd3538c8b047f` |
| 48 | `theorem` | [inl_le_inl_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-le-inl-iff-source-edition-2.md) | 352 | `result-track:d5babea9bae311b8d1247633bea2aafd122b3098384d6eee39641df4a2e3d6e5` |
| 49 | `theorem` | [inr_le_inr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inr-le-inr-iff-source-edition-2.md) | 356 | `result-track:eb25bc5d957c54c9d87ba27cf2c57f97653f000a5ac7086ea1d20b07d53404f4` |
| 50 | `theorem` | [inl_lt_inl_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-lt-inl-iff-source-edition-2.md) | 360 | `result-track:b11f1c77e346961ea3d5bbe876007f74a42896af87c274bee1ab453c84c32e81` |
| 51 | `theorem` | [inr_lt_inr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inr-lt-inr-iff-source-edition-2.md) | 364 | `result-track:4ec2ff81908699d8b191ab9df2faec43608742e082a6fcd75df00afba629fbb5` |
| 52 | `theorem` | [inl_le_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-le-inr.md) | 368 | `result-track:2849e0cb623a03490a3885b7f4b00f73ba6824acbf201e3b2ac8686dea268d34` |
| 53 | `theorem` | [inl_lt_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-lt-inr.md) | 372 | `result-track:2a2f941bb6ffff9fbc0bf57616229ef87696544477ccb464e9f7042ecaf6ea13` |
| 54 | `theorem` | [not_inr_le_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/not-inr-le-inl-source-edition-2.md) | 376 | `result-track:6a1c8933f1dc8866d92d5d2dc04c8450ca776181d353d061a4e946ab7034d288` |
| 55 | `theorem` | [not_inr_lt_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/not-inr-lt-inl-source-edition-2.md) | 380 | `result-track:a7699d5b6154b5e692c8c73983cd8ba8656907da7398591005484aaca9d256be` |
| 56 | `instance` | [preorder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/preorder.md) | 388 | `declaration-track:6ceef8abbaec20f1d8529fdce5d116cc0c910da3433e499c4eef6ddd603c2077` |
| 57 | `theorem` | [toLex_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/tolex-mono.md) | 404 | `result-track:f915a02c2a3e069026f70f97af93bd0cabdb09a0a649dce03c04964008d52949` |
| 58 | `theorem` | [toLex_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/tolex-strictmono.md) | 407 | `result-track:89a90e20dffa37ac35e1ed5c468a189d94efe383c1b76c524e82a4ec29a916ea` |
| 59 | `theorem` | [inl_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-mono.md) | 410 | `result-track:262ae5d4e6f985b69d800d5469a4347956c32758c65bf672254f6cf303d64a31` |
| 60 | `theorem` | [inr_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inr-mono.md) | 414 | `result-track:64d27fa49bd60966e8c1cccaf2cbb82ff5210f290fcbd198357bcbdff1511b62` |
| 61 | `theorem` | [inl_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-strictmono.md) | 418 | `result-track:b3c573fed410a62a888f7045d4d0b4c327a157a0f077db44b25f706bcf70ce78` |
| 62 | `theorem` | [inr_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inr-strictmono-source-edition-2.md) | 422 | `result-track:b6174368424eb0fcad2cdf223ebf533b4aace12496b506148bcb4a20809b617a` |
| 63 | `instance` | [partialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/partialorder.md) | 428 | `declaration-track:8284d0420c1bc92cc6d28812fd133c3a01dd601308c1671e46503adcec1803da` |
| 64 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/linearorder.md) | 432 | `declaration-track:309e87543020652f9e4fb70cc599a5d6c6b64fe7dbb20ec89f2c29cdee15d3bd` |
| 65 | `instance` | [orderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderbot.md) | 440 | `declaration-track:7c4201e4da5267b229f54d38fe1011c6f2427dcfc37d587fe72ae027a6c4746e` |
| 66 | `theorem` | [inl_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inl-bot.md) | 450 | `result-track:4db216a5f3243b9d9170bf8d80bb326981e98a600c9da5807fc58a593524c7c0` |
| 67 | `instance` | [orderTop](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/ordertop.md) | 455 | `declaration-track:322c1f452dbce53783115f156186e16d89c52c35631cdb0f136ed186378e25cc` |
| 68 | `theorem` | [inr_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/inr-top.md) | 465 | `result-track:6c9ec7038ae49f370bb745e5df1b41ad552f88bd9c3eebc0444853e5df00d120` |
| 69 | `instance` | [boundedOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/boundedorder.md) | 469 | `declaration-track:bb020f02684f04e38be79b402d549b0a1336c7c11b6f3e6f789b4b7e96c3b53c` |
| 70 | `instance` | [noMinOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/nominorder-source-edition-2.md) | 473 | `declaration-track:857cbdbe4fdc1478cd4c11f4318cf0524b3af60e63a94a3abace9ef13235b5ea` |
| 71 | `instance` | [noMaxOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/nomaxorder.md) | 484 | `declaration-track:57b4e549e88cbc42b79d0eaed7341367cb096fd6dc31713d98db3b395f20b9dc` |
| 72 | `instance` | [noMinOrder_of_nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/nominorder-of-nonempty.md) | 495 | `declaration-track:c541b539344580cc66dd12efc69d20b43bf946f0a231bed201f956f868febe65` |
| 73 | `instance` | [noMaxOrder_of_nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/nomaxorder-of-nonempty.md) | 504 | `declaration-track:ecfd5f65e756e6e03f3ee0bae88261ab0a0292436fc2517080aee27ac18509d9` |
| 74 | `instance` | [denselyOrdered_of_noMaxOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/denselyordered-of-nomaxorder.md) | 513 | `declaration-track:ac68bbd1a7ef3fe4b80b7290fbe4421c0e5f17e479b1537be43b905dc9bfbf14` |
| 75 | `instance` | [denselyOrdered_of_noMinOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/denselyordered-of-nominorder.md) | 528 | `declaration-track:2615275db01732432efd9bf79dbd7951da2d766f4b8ad9e7b447f49c0c6d58e9` |
| 76 | `def` | [sumComm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumcomm.md) | 558 | `declaration-track:46355a217f19eb5038b9234a998b05715ecd06e784c1c5fa1aeaee22b3d6807c` |
| 77 | `theorem` | [sumComm_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumcomm-symm.md) | 564 | `result-track:52d95cdc070b1c001c8138ea5d489ff9c751eef1151357c787c0cec0d3f1c42c` |
| 78 | `def` | [sumAssoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumassoc.md) | 570 | `declaration-track:d47bda87936e381e99e31a044f64dab2e92d9c45ec6bef44ca90344c0069028e` |
| 79 | `theorem` | [sumAssoc_apply_inl_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumassoc-apply-inl-inl.md) | 578 | `result-track:9bdea5797ad1a229c2b98a29735dcca2f42710c431efa5df1956ad6d0193f957` |
| 80 | `theorem` | [sumAssoc_apply_inl_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumassoc-apply-inl-inr.md) | 583 | `result-track:6655c04317b5e76731457b4815d548855c086af7a1aa80bba656a3b250c6adef` |
| 81 | `theorem` | [sumAssoc_apply_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumassoc-apply-inr.md) | 588 | `result-track:8cd97f4342f680af7e67d498f6d954d4d2ff65266e9c892aabfd129878a7cd93` |
| 82 | `theorem` | [sumAssoc_symm_apply_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumassoc-symm-apply-inl.md) | 593 | `result-track:9b3e8536ae451b4cd509166a76dcab812e98eeba18a1d0c51b00ff2f2d1725ea` |
| 83 | `theorem` | [sumAssoc_symm_apply_inr_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumassoc-symm-apply-inr-inl.md) | 598 | `result-track:a5f686906c265bbc363cb39fb00c19e47e42e65a17886a4426a1f19e8e83cad6` |
| 84 | `theorem` | [sumAssoc_symm_apply_inr_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumassoc-symm-apply-inr-inr.md) | 603 | `result-track:a2bfff2dbf9306beb5961c8ecaa669f37b8a3526646f09315453bfa58073d0e3` |
| 85 | `def` | [sumDualDistrib](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumdualdistrib.md) | 608 | `declaration-track:53c08f7c97094d27ee25d4380e7a13b4044f452c5b24b98894dc6b87a9bc431a` |
| 86 | `theorem` | [sumDualDistrib_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumdualdistrib-inl.md) | 621 | `result-track:73498a0cd53320c4e42434009663714f794109b52f05cd3f88d9295e28a9c7d0` |
| 87 | `theorem` | [sumDualDistrib_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumdualdistrib-inr.md) | 626 | `result-track:71525abb0ca97831aa64afdab057500289c9fc1ec696b0a6e4419d7f2cb45211` |
| 88 | `theorem` | [sumDualDistrib_symm_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumdualdistrib-symm-inl.md) | 631 | `result-track:879b6ed7ec9597302405962157051506990a184874c23f3e378041d737dd8191` |
| 89 | `theorem` | [sumDualDistrib_symm_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumdualdistrib-symm-inr.md) | 636 | `result-track:4d7d5fc1447107bc800cb555139500cad7965d031500f45f83d653ac83d063f4` |
| 90 | `def` | [sumLexAssoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexassoc.md) | 641 | `declaration-track:93a31628a3d30a6eff9b38dfd9e6a0b61063d9e47fb90cb468b51bcdf6e7dc08` |
| 91 | `theorem` | [sumLexAssoc_apply_inl_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexassoc-apply-inl-inl.md) | 663 | `result-track:45053a44eb660bb24652e03cad640b06e579aae48a403d17442a4ac8ed9c9cba` |
| 92 | `theorem` | [sumLexAssoc_apply_inl_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexassoc-apply-inl-inr.md) | 669 | `result-track:6bde7756225d26bb250fa15f9bac8774ee04e8d3e33e9781e1bee9e20ffc8444` |
| 93 | `theorem` | [sumLexAssoc_apply_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexassoc-apply-inr.md) | 675 | `result-track:20657bd55bf18531a540ef442c34653f225095b7a524e1cf8ebc6c2aaa0e37ff` |
| 94 | `theorem` | [sumLexAssoc_symm_apply_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexassoc-symm-apply-inl.md) | 681 | `result-track:dc8e993407c78d57f0f65f1944d3b566cd2528202dd7b345021d2a98e9755c49` |
| 95 | `theorem` | [sumLexAssoc_symm_apply_inr_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexassoc-symm-apply-inr-inl.md) | 686 | `result-track:6762b02ddc802efb4307e27a48056b2473155b6a6e807587e54703fbdd42365b` |
| 96 | `theorem` | [sumLexAssoc_symm_apply_inr_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexassoc-symm-apply-inr-inr.md) | 691 | `result-track:d31ce21d533f6b97dd3ecbef2a6cb4cca554202f8d2a1243a3e553a21441ef7e` |
| 97 | `def` | [sumLexDualAntidistrib](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexdualantidistrib.md) | 696 | `declaration-track:4f1ae2dec54cea7e63ab2f0d63661dd54e7370a0746786eadb524df2e73b766a` |
| 98 | `theorem` | [sumLexDualAntidistrib_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexdualantidistrib-inl.md) | 715 | `result-track:f408ed139634653dd7b03490b3f3b851ce2b76c70db9e3bcfb3ef6893ab33c86` |
| 99 | `theorem` | [sumLexDualAntidistrib_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexdualantidistrib-inr.md) | 721 | `result-track:9e4b4169d808917ee10346f92cb4fe858b9e37a01f2f8cf5bc8ca960b806d7bc` |
| 100 | `theorem` | [sumLexDualAntidistrib_symm_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexdualantidistrib-symm-inl.md) | 727 | `result-track:0ffe0898349aec9f890d70d45130ba2c87f580e041fdf6bfe3eed6b0a8eb03a2` |
| 101 | `theorem` | [sumLexDualAntidistrib_symm_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/sumlexdualantidistrib-symm-inr.md) | 733 | `result-track:2b9c08cb66738c467d7b1356bece7ac474875a5e80b16debfc5b31a1288c286c` |
| 102 | `def` | [orderIsoPUnitSumLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisopunitsumlex.md) | 746 | `declaration-track:b1b8ff7c962e49f0353e37499a688b3dee35cad73dcaf4b88912c4d0d30cb358` |
| 103 | `theorem` | [orderIsoPUnitSumLex_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisopunitsumlex-bot.md) | 754 | `result-track:3f87d0e774e9bbadd17ae46a0d6a39d80180897cb9dac78f25a6ed965cda5438` |
| 104 | `theorem` | [orderIsoPUnitSumLex_toLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisopunitsumlex-tolex.md) | 759 | `result-track:6f8f0ac583517c08e072a90907077b6a4731966be7ee3be368b7c261684a3727` |
| 105 | `theorem` | [orderIsoPUnitSumLex_symm_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisopunitsumlex-symm-inl.md) | 764 | `result-track:eca726c00f594b66a98e8fee5acbee2524cf08294ec021bec4979eac2f00bc93` |
| 106 | `theorem` | [orderIsoPUnitSumLex_symm_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisopunitsumlex-symm-inr.md) | 770 | `result-track:2970c47106b9a2f04b5440c44d3de7bf6b4989dfce0cbde08adf9c43522a33b5` |
| 107 | `def` | [orderIsoSumLexPUnit](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisosumlexpunit.md) | 780 | `declaration-track:226b538436e4f9b410507161e7eeafb07478a2ac8da2d563c61c24ca65beb538` |
| 108 | `theorem` | [orderIsoSumLexPUnit_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisosumlexpunit-top.md) | 788 | `result-track:04a599df995e2d43e89fcdf3a52e948c4952e98e8e0b1d6dc67b8c8b287ec0e8` |
| 109 | `theorem` | [orderIsoSumLexPUnit_toLex](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisosumlexpunit-tolex.md) | 793 | `result-track:b22fa44e8b32c6e59bc6a9915cbe4f2b1a38ee9056b605db4528542e273954d0` |
| 110 | `theorem` | [orderIsoSumLexPUnit_symm_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisosumlexpunit-symm-inr.md) | 798 | `result-track:d961f8e6b94b1d87dc4cdbe40e70f49d139d10d3918ba91301f8cf02233de339` |
| 111 | `theorem` | [orderIsoSumLexPUnit_symm_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SumOrderNamespacedAligned.lean/declarations/orderisosumlexpunit-symm-inl.md) | 804 | `result-track:93cf04fe0a3f2525df5c552a23b27af959dbb87ce574d5a708ceef739e3bf614` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=436d95f46ab6eb1e697f6b3805fc744edd78b9f0f35e0ac72c395403355339da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantb85ee9b522eec589348f893c05c67fabf52f9c04880b756a45a9a381b171fc4a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantb85ee9b522eec589348f893c05c67fabf52f9c04880b756a45a9a381b171fc4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
