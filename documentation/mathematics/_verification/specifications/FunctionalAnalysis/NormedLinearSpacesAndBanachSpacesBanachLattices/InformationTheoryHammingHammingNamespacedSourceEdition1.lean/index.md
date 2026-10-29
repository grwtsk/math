# Verification target: Information Theory Hamming Hamming Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "755742fae16b41e35914628c51ec6e5a02325f4b",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `755742fae16b41e35914628c51ec6e5a02325f4b`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist.md) | 48 | `declaration-track:bdd83c2b778c7c510b88ffc421eafcecebd5df8372d627d63b00937d78b4df10` |
| 2 | `theorem` | [hammingDist_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-self.md) | 54 | `result-track:c45162cb5fb8811080576208f00826146cf9603b8d4570c629bbc1d02b3aad47` |
| 3 | `theorem` | [hammingDist_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-nonneg.md) | 60 | `result-track:7664840c8611b17bd45d0451ca9aec704fb2b67c785530d8693f31173c5a25d6` |
| 4 | `theorem` | [hammingDist_comm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-comm.md) | 65 | `result-track:7475f3e9d095fcd209f63c8a4de859633aed19e20294b11149cafaddf63adfcf` |
| 5 | `theorem` | [hammingDist_triangle](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-triangle.md) | 70 | `result-track:46e3b7686d78ef2e831d858c791e7ceec0d4585220a94d2e73eb0beaacf359ff` |
| 6 | `theorem` | [hammingDist_triangle_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-triangle-left.md) | 80 | `result-track:bb1e40270e5abd2b101a920c3b019e724c70bdfbcb3637aedc921e0acfa24a24` |
| 7 | `theorem` | [hammingDist_triangle_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-triangle-right.md) | 87 | `result-track:815cb8437f965b30135840de7b6a33a1318dfe608bf36f1a5c27cade96f8bbbe` |
| 8 | `theorem` | [swap_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/swap-hammingdist.md) | 94 | `result-track:22ccc5dadab750dc54e2fd5ffa6fdc437d4fc44abee18b0c30f12ad45710f99c` |
| 9 | `theorem` | [eq_of_hammingDist_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/eq-of-hammingdist-eq-zero.md) | 100 | `result-track:ad9eded390fde01efdac70786e534cb7621a8ae225015d1000e4d91471e885b1` |
| 10 | `theorem` | [hammingDist_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-eq-zero.md) | 107 | `result-track:4580cc579cde027c601decd793eca248e7341827c6776613ae5910411afb2f4a` |
| 11 | `theorem` | [hamming_zero_eq_dist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hamming-zero-eq-dist.md) | 115 | `result-track:b7910c637a73535b2935f50c67424cb039cd3110aa57990f91eedfc0149e5471` |
| 12 | `theorem` | [hammingDist_ne_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-ne-zero.md) | 120 | `result-track:09a83ac1cf7209c8cde982fba78e783e167c6cfcc8c84ad3dd9ef03e971353ee` |
| 13 | `theorem` | [hammingDist_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-pos.md) | 126 | `result-track:20a69942b9c50d4cc8fe5aa77a11df534b8cde436c95def81577ba685fa39a9e` |
| 14 | `theorem` | [hammingDist_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-lt-one.md) | 131 | `result-track:9bb4a5ef8b603b34904ac447cecf8bcc82654d133eb5c59d2675b30ba77dd86d` |
| 15 | `theorem` | [hammingDist_le_card_fintype](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-le-card-fintype.md) | 135 | `result-track:e4e032d3a12eac5ee9d21f398e79f0c66a53b942d2e4d03b9038be18b8fa33da` |
| 16 | `theorem` | [hammingDist_comp_le_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-comp-le-hammingdist.md) | 139 | `result-track:a9973e6db4211c514dc77e4412d6c2ebae80e0fdc97b93ec14fdd26d828f45f3` |
| 17 | `theorem` | [hammingDist_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-comp.md) | 144 | `result-track:570d2fbcda3bdb6783eef53afbdc6da4ae23f5fe6eb35d4384e6195d11030677` |
| 18 | `theorem` | [hammingDist_smul_le_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-smul-le-hammingdist.md) | 150 | `result-track:2d2b17e24469642ae755d4bace3891523991a8055cfcd60728acfd15857d832b` |
| 19 | `theorem` | [hammingDist_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-smul.md) | 156 | `result-track:ce887916aa2bc06cffb807fbeb9c73f05a6c8b681ae6ca90b28f2614799d17aa` |
| 20 | `def` | [hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm.md) | 166 | `declaration-track:b31d684b3b6c521db73188233deb28348c0468ea8d7456258ddb3eb1cf04b291` |
| 21 | `theorem` | [hammingDist_zero_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-zero-right.md) | 172 | `result-track:faed554e24ebd340bcfaf4b8fee157562bde3420e416d4a931b42b8589852a84` |
| 22 | `theorem` | [hammingDist_zero_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-zero-left.md) | 178 | `result-track:347aa156bdcdc01b564aa897a398c0966aa9d044d858bda66510e256e50fef41` |
| 23 | `theorem` | [hammingNorm_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-nonneg.md) | 184 | `result-track:dbefbdd971df7c432c0fbed4dee86548506997d205860936fec9e8cb10dd9fad` |
| 24 | `theorem` | [hammingNorm_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-zero.md) | 190 | `result-track:b31ddfc932882e67962039780f29547f5ba599f6b8e32e1b0ae2dbbf1c85d555` |
| 25 | `theorem` | [hammingNorm_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-eq-zero.md) | 196 | `result-track:a54adb3069e7ef6c1f1c57c23993b41101bc9ca0e607f3747f603c3601b4772b` |
| 26 | `theorem` | [hammingNorm_ne_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-ne-zero-iff.md) | 201 | `result-track:5126d8c823806d0203f887387f422df407a2112822c53b6facb96788c97b44bf` |
| 27 | `theorem` | [hammingNorm_pos_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-pos-iff.md) | 207 | `result-track:0193066669c59bb475d7420c99ff5ed127e89dbd309dd85108d2271db3bc2daf` |
| 28 | `theorem` | [hammingNorm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-lt-one.md) | 212 | `result-track:4f98f41263ba7bed94ff24e9c7d63357b00cc71183b61891f9e798afd9fe63bf` |
| 29 | `theorem` | [hammingNorm_le_card_fintype](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-le-card-fintype.md) | 216 | `result-track:628c43f51406ad60dfae10d80cae20991dc48fb94fbddf04a1cf8bfb446c6846` |
| 30 | `theorem` | [hammingNorm_comp_le_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-comp-le-hammingnorm.md) | 220 | `result-track:d338b29c765fd9bbb21bc0ac388c275a45be57b496b28993c34377359bf8b1c8` |
| 31 | `theorem` | [hammingNorm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-comp.md) | 225 | `result-track:5acbef18c1a5112294f84e492cf2fa6086c0b75296baffb723c20c41c3b6fa86` |
| 32 | `theorem` | [hammingNorm_smul_le_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-smul-le-hammingnorm.md) | 230 | `result-track:98e7c11b259c7146d04f34c208f31ac3e4fe8fe0228fd3bdda5ba6bb34f6d9d9` |
| 33 | `theorem` | [hammingNorm_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingnorm-smul.md) | 235 | `result-track:17fbf9ad60ca9346f37eb3efe0900d9f7fa6f5d049408db78ed64b8f52306e66` |
| 34 | `theorem` | [hammingDist_eq_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hammingdist-eq-hammingnorm.md) | 243 | `result-track:e16fd8da7f27b665bcbbe4c369246e215cfab542ecb086dfbdd3e69afaf7d8eb` |
| 35 | `def` | [Hamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/hamming.md) | 255 | `declaration-track:2b3f10377bbbb063e0ceb92462fc04fe84c7c25ebae37b7e791c64299f7d1dcf` |
| 36 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 265 | `declaration-track:0b650b4964a986c62a8b7e99d05419e55603fe19f9b94eb781560320360cf3eb` |
| 37 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-18.md) | 268 | `declaration-track:cecf63e6a508980874e6d50a1971fe53547ddfd44ba077e8b2e0ea85f2d5462b` |
| 38 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-10.md) | 271 | `declaration-track:67b646da2fb9bdc221b2e56eedc159c7e4f4f61e157aeab2d176040acdea16ff` |
| 39 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-20.md) | 274 | `declaration-track:ebbf31239361f2112a1f15591e02d5cd4cf8f11b5ff7321d570646f7c9993c48` |
| 40 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-6.md) | 277 | `declaration-track:1112fec147d5ce348b92522b808a917fa9bb761632da4dfb4c601d14f3f39d88` |
| 41 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-17.md) | 280 | `declaration-track:bbd6ef72d1f6261136a011780253165e0e5785f2d258ef34b2a8a3c7c099c158` |
| 42 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-9.md) | 283 | `declaration-track:540738e248c373daad37e077c8d0342fd03f3ed09c172432e276b166d335e479` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-7.md) | 286 | `declaration-track:4187a1a96e3ae8e34f9c91f16bf856e11c7498b09828d63aa749446a7fdf784a` |
| 44 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-15.md) | 289 | `declaration-track:a91825f55580b6c1bf864da41e3416dd29e7f88960e6c887de950c69a26eacf3` |
| 45 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 292 | `declaration-track:0b6ae02ce7975b51497e4bf9a773f92870620f827a4abd760a76b1e90b5a2623` |
| 46 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 295 | `declaration-track:0d57cf2a9a5e14626a98a062cde936259bc4f5f8fdf50edb5bd3e0970ddff8f5` |
| 47 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-19.md) | 298 | `declaration-track:d7ebd11c21553365904db43f76430c5d145d78feb4579ef3c6944226c674fc88` |
| 48 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 301 | `declaration-track:0b8a9c93898063fe83dc08b1143e2d598de964acae773a0186dd8aba1971040f` |
| 49 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-13.md) | 304 | `declaration-track:86429140b531dc9f4345cd972902c32dc0323368674d54a1cd6fc9a2e39aa576` |
| 50 | `def` | [toHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/tohamming.md) | 313 | `declaration-track:91aad946bb9a4c1c5cfa2378d52b8ea1fcd86c4557cf8dcc08b119e07de65d20` |
| 51 | `def` | [ofHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/ofhamming.md) | 319 | `declaration-track:27eb2bf71983a8afa7e96283ead48922e9493ec5c75668a8001493e22d4e26a1` |
| 52 | `theorem` | [toHamming_symm_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/tohamming-symm-eq.md) | 324 | `result-track:2d642adc739168b74f4be4bad28acbcfbf456902f1ef7e629f4bdc4efc2b4f98` |
| 53 | `theorem` | [ofHamming_symm_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/ofhamming-symm-eq.md) | 329 | `result-track:263b87962ea66388e7959626d1c27f66ac27ea8b9784838040df5bfea28be483` |
| 54 | `theorem` | [toHamming_ofHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/tohamming-ofhamming.md) | 334 | `result-track:008e074edba763f9e80a94b162d88269b12e209625f7573776442c38cf0194c7` |
| 55 | `theorem` | [ofHamming_toHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/ofhamming-tohamming.md) | 339 | `result-track:5998d004b2fade27546e574eb1387a5ce8fc7507f4f812cf7756c3cd2146ed1b` |
| 56 | `theorem` | [toHamming_inj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/tohamming-inj.md) | 344 | `result-track:337f4a5b1176eccebb66b04a93a74bae6256a829e057d27e4de34811e45856ba` |
| 57 | `theorem` | [ofHamming_inj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/ofhamming-inj.md) | 349 | `result-track:f63e0920cc264cef027c0e615db136df18bafb9e1eabf43894beac777bba64c8` |
| 58 | `theorem` | [toHamming_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/tohamming-zero.md) | 354 | `result-track:ecfa92c3eccf0c8604b52924c53c174ed56a0b3e30229852eb57c1216a6a6599` |
| 59 | `theorem` | [ofHamming_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/ofhamming-zero.md) | 359 | `result-track:ef4115305a383de320e039472bc4f664a0194be933d68cf4d72ccf011e23a329` |
| 60 | `theorem` | [toHamming_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/tohamming-neg.md) | 364 | `result-track:6d3b58146f2aa0219277a7c5952724a96601934550bed36565e8dd8c3a57b807` |
| 61 | `theorem` | [ofHamming_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/ofhamming-neg.md) | 369 | `result-track:36c9b521a925f6f03b81a65988864272b03a2ed1b7d5d2b7e319eadaf4f3841d` |
| 62 | `theorem` | [toHamming_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/tohamming-add.md) | 374 | `result-track:ca73acbcf7a643a53af935f8d8b4ebb21cf02fc7a95bcc2d668dfb5c92f5faa2` |
| 63 | `theorem` | [ofHamming_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/ofhamming-add.md) | 380 | `result-track:911237d793af0432c757681c682249b8252347c0df09d5bc456159d8e6412269` |
| 64 | `theorem` | [toHamming_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/tohamming-sub.md) | 386 | `result-track:ca195cc7bc60b06d0606060550a41d10478bb3f8a85f9b2b59f05196bf6f1280` |
| 65 | `theorem` | [ofHamming_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/ofhamming-sub.md) | 392 | `result-track:cc6a7e109d29f48eeee9bd22aa3f329c844a2abb5754f1589f73c371e0744fab` |
| 66 | `theorem` | [toHamming_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/tohamming-smul.md) | 398 | `result-track:b18d93b77e6ff4c74a20ff06a5ae68751c3af84576799c2d119cc66b781b6e9c` |
| 67 | `theorem` | [ofHamming_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/ofhamming-smul.md) | 404 | `result-track:3d96b6bf70eee0c286d0a5476640bd5c18a9ffce2715f04b0d01bacb72bef4c6` |
| 68 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-8.md) | 415 | `declaration-track:46ec15ce6a8e5bb8d76230b87417f0ff1f90af674d883bfab6bbf05d5cb101c0` |
| 69 | `theorem` | [dist_eq_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/dist-eq-hammingdist.md) | 419 | `result-track:679a7efb28d455ed2264ae65557a05652b84a1fa721a989ac370c286e8f03aaf` |
| 70 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-16.md) | 424 | `declaration-track:aedb0337128676921577df61db8f5b45b7b8ae133acb6e7718f90faa3be9294f` |
| 71 | `theorem` | [nndist_eq_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/nndist-eq-hammingdist.md) | 456 | `result-track:b9799676c327a8e7981b5cfb0933da3da3a14d8dd9471a73ee944cfb845ca7cf` |
| 72 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-12.md) | 462 | `declaration-track:7c3616c09002422f27d22cb99c583a2ce9167873744c3d8ce434b797c687b719` |
| 73 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-11.md) | 464 | `declaration-track:6ab133a1696ba0c2d1f7123112bb20f4ca9c41fd125f5926a26621c7a7313e59` |
| 74 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance-source-edition-14.md) | 466 | `declaration-track:a55f18fd2755542678695df5dbae847a3a0c612e6f0fcde25be55d21aba69795` |
| 75 | `theorem` | [norm_eq_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/norm-eq-hammingnorm.md) | 470 | `result-track:871b229ff02d11acc17b1c5b408ba447380ea0bc85a1b6227cdd5ba2eaef2c4f` |
| 76 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/instance.md) | 476 | `declaration-track:06ef21be921a1611e3dea46b03292b55c6c178c7091a6513227be53cf4dc3c14` |
| 77 | `theorem` | [nnnorm_eq_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition1.lean/declarations/nnnorm-eq-hammingnorm.md) | 480 | `result-track:68a69b0ae5e53d2d095fa5120115be4457eabefdb5e74b009c6701cf3964a4a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=964eac1629548e9e83dce4623ca37f87871436119dd881e6d1057748d0a8930e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
