# Verification target: Information Theory Hamming Hamming Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "236214f73af185981924ec4a6aeebb360a00bbe7",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hamming/Variantf53b3bae1c9ef6f0d65a8e4b93fd14704dc0759b16dc8634e3d81712cbf105fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `236214f73af185981924ec4a6aeebb360a00bbe7`.

Source path: `GRWTSK/Topology/MetricTopology/Hamming/Variantf53b3bae1c9ef6f0d65a8e4b93fd14704dc0759b16dc8634e3d81712cbf105fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hamming/Variantf53b3bae1c9ef6f0d65a8e4b93fd14704dc0759b16dc8634e3d81712cbf105fa.lean.json)

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
| 1 | `def` | [hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist.md) | 45 | `declaration-track:b9ef411dc92552b2efaa8b9124b5b1b693ffb2353efe3007ae38c9d4357259cf` |
| 2 | `theorem` | [hammingDist_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-self.md) | 49 | `result-track:9155a66ef6e28cf765b24701a59c42f0da053f9511d1f5e004b262bae310ccfe` |
| 3 | `theorem` | [hammingDist_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-nonneg.md) | 54 | `result-track:dc3409a17e2270608a0c25e582d6f4ae5a9c9b3d9f563c46331ca1cd27bc6aee` |
| 4 | `theorem` | [hammingDist_comm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-comm.md) | 58 | `result-track:c0322f2b0e9ff491ff34acf6d990555fb7c342798b57de1739a7404f3c9fe5d1` |
| 5 | `theorem` | [hammingDist_triangle](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-triangle.md) | 62 | `result-track:1a03f6121bff1f6d9592a649c9b53f00c7dc8898fe8669a010ab7476f21410e2` |
| 6 | `theorem` | [hammingDist_triangle_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-triangle-left.md) | 71 | `result-track:1d2dccf4cfb9b7e8f6cc0245d7682abbb7893703776eafdf7651cad09960b719` |
| 7 | `theorem` | [hammingDist_triangle_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-triangle-right.md) | 77 | `result-track:4a96e61d688dbd623634606801e00c9a5e63adb902952e82239daf738d857842` |
| 8 | `theorem` | [swap_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/swap-hammingdist.md) | 83 | `result-track:56b8c6e8e182386b0d79d83056fad4da28eaf7363e086ff16db6ad0965175622` |
| 9 | `theorem` | [eq_of_hammingDist_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/eq-of-hammingdist-eq-zero.md) | 88 | `result-track:bc687595315b5c3549e7a0d8ba9c7e4e5a4c0e2d2a2987b5de6af8f67bc6b428` |
| 10 | `theorem` | [hammingDist_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-eq-zero.md) | 94 | `result-track:cd4b90c12d0e17fbb8005d6b75d46bff0d0185502e8b5208bcde628ee5e87160` |
| 11 | `theorem` | [hamming_zero_eq_dist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hamming-zero-eq-dist.md) | 101 | `result-track:735d1f26ae72cc248e83ff52c911ec124585d796717df0daed2723d294117e73` |
| 12 | `theorem` | [hammingDist_ne_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-ne-zero.md) | 105 | `result-track:f386de5a3a3568a80ca124213b836a451a9ec255c3acbe75572152cab37acbe9` |
| 13 | `theorem` | [hammingDist_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-pos.md) | 110 | `result-track:85f17fd04f856875b63db6ac1de99692cd28013b15a9534df95665cc7c7ab139` |
| 14 | `theorem` | [hammingDist_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-lt-one.md) | 113 | `result-track:7eaea28448670972aa04de112808ed7fca9b80853654b5aa34c812e5481ccb04` |
| 15 | `theorem` | [hammingDist_le_card_fintype](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-le-card-fintype.md) | 116 | `result-track:ca13bb240ef9802a815c9e6281c0973d90a33dbe5c2c6bffbd5e6cd85fefd8d4` |
| 16 | `theorem` | [hammingDist_comp_le_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-comp-le-hammingdist.md) | 119 | `result-track:40a01069ea776e58d8106c5fbb70bcfcd1b3cf93c98fe4f080c95e89380bd6e0` |
| 17 | `theorem` | [hammingDist_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-comp.md) | 123 | `result-track:aaaed9200414800a72ea255a2894ea7ab644bfe2b5b064d0d4cfe34e29ba894a` |
| 18 | `theorem` | [hammingDist_smul_le_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-smul-le-hammingdist.md) | 128 | `result-track:87a59e48b4c33db0de7ec3f187209886805bbf81aadffc8c76155c09d8d45009` |
| 19 | `theorem` | [hammingDist_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-smul.md) | 133 | `result-track:752932001ec4df8c1f536d90e322dfc75f1683a8cb4e154314d3a4d05ae5f58a` |
| 20 | `def` | [hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm.md) | 142 | `declaration-track:df8da6d57952e46344b93046e5779e46b87a359ca1a2d0eb4e7b330293d27595` |
| 21 | `theorem` | [hammingDist_zero_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-zero-right.md) | 146 | `result-track:df368992d451e131a542b1976fbf1c61812aa2c476eb60425ba482ff8786a43c` |
| 22 | `theorem` | [hammingDist_zero_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-zero-left.md) | 151 | `result-track:a19a2cc7aee70f303290bbf1c5cc54601d54cc90d7f5d7587e871d7f79807dab` |
| 23 | `theorem` | [hammingNorm_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-nonneg.md) | 155 | `result-track:79c6cc314145ee6ef2ea613e00e49832b2909f7c1c5e3d66aa26542a50caecf2` |
| 24 | `theorem` | [hammingNorm_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-zero.md) | 160 | `result-track:b13b4e5949e51e8a3a43a2d9cb912b064479fd8a2fb1642a459d0b965945150c` |
| 25 | `theorem` | [hammingNorm_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-eq-zero.md) | 165 | `result-track:274afdc8177646813c17c37db0afba2460872241ae6e054859713d8b33b3103c` |
| 26 | `theorem` | [hammingNorm_ne_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-ne-zero-iff.md) | 169 | `result-track:bfb9fddb9e69421d9e5583d940ceddaf90c52ab15d666063156d2745d3ed80a2` |
| 27 | `theorem` | [hammingNorm_pos_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-pos-iff.md) | 174 | `result-track:37ac2937be6ac5956d770761fe882913c7516e58ccc74eee081c3e502c5a4f26` |
| 28 | `theorem` | [hammingNorm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-lt-one.md) | 177 | `result-track:82e59b36f8bbbf55a7b7c9d5fa80965f6a95499dd5ece917cfa5e0b0cb580049` |
| 29 | `theorem` | [hammingNorm_le_card_fintype](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-le-card-fintype.md) | 180 | `result-track:aeb354a03f698e11aa619b8ad8b15e8498d0ff92e6361d07dfa88b292930db99` |
| 30 | `theorem` | [hammingNorm_comp_le_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-comp-le-hammingnorm.md) | 183 | `result-track:004c628f96cdba592891f92e46664481514f67decdc5ced05454a1b8dc0f73df` |
| 31 | `theorem` | [hammingNorm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-comp.md) | 187 | `result-track:08b69490d22b741177385ef9ddf91b0936fb9557dc480bdab96febe9a51be69d` |
| 32 | `theorem` | [hammingNorm_smul_le_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-smul-le-hammingnorm.md) | 191 | `result-track:fca636d9579b22eea44346e6c893068f018a2322de8b396a8356c345d31e4b17` |
| 33 | `theorem` | [hammingNorm_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingnorm-smul.md) | 195 | `result-track:b624e29e85018756cf93a0e4cb91fd70811823965b0f31433e1bf4d2a46217dd` |
| 34 | `theorem` | [hammingDist_eq_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hammingdist-eq-hammingnorm.md) | 202 | `result-track:c21a2ab3c86c8c2fdf7e716c3f57a85c699c879cbea4db115b42161cc8d6dca0` |
| 35 | `def` | [Hamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/hamming.md) | 213 | `declaration-track:df12003c269c4a0d3356ac4224a402fef652ad6fbd74d1ade2c73b40356ab990` |
| 36 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-14.md) | 222 | `declaration-track:b64708e015cf98b64248da6be55abcbc6bee32522bd2d94bd865c3f3863208f2` |
| 37 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-15.md) | 225 | `declaration-track:c0166336de42061bb5a6cf4fc6ff6582df5923812cd5e94a1b27d88ba1857efc` |
| 38 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-6.md) | 228 | `declaration-track:29a7e0da6211aa8863d64487b8e47faab36da3a9a5fb82f044b62a88fe79b084` |
| 39 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-17.md) | 231 | `declaration-track:c7f60f49f5885b6e4e892444fa012f93ec99605b9fa8a2a19370df16dafac238` |
| 40 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-11.md) | 234 | `declaration-track:9809031f89db5581c018683b5f93a63c1ddee5a36a1aa7ef1b213d45f97ccd24` |
| 41 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-13.md) | 237 | `declaration-track:aeee11c4509cfc7f764be53f005062037969dd8249cc110cc6d58d7509e08f18` |
| 42 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance.md) | 240 | `declaration-track:0434cec94f1a7cf67a3287fdbe4900b5e6c0aef4ea8ede586ba6c2cb38a2c1f3` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 243 | `declaration-track:11dd3f78fd72761db854affa381bb6f54aa547dd39f33ab1c22b30015b974964` |
| 44 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 246 | `declaration-track:1137d8da6b0215aefe66fed23c9f79b9ff2efa33a79f4cebc3cc901e5bbf8241` |
| 45 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-12.md) | 249 | `declaration-track:9d299b7687084fc3c484b807cf02d644efd8720dabd9fef623d235e0057b2104` |
| 46 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-19.md) | 252 | `declaration-track:d21bdb16a441113c0b6b7e321166ab7f52129bdff9ed056758a0dc808c0bd5f5` |
| 47 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-18.md) | 255 | `declaration-track:ce51940ca7b6e17380b3e7184a295b2360156580a2a0c7e549d3af9c770b236a` |
| 48 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 257 | `declaration-track:1d2b255670301f7a539710f57df89afa35e9bbf114ab43b2b6e38a3f8eb1885c` |
| 49 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-22.md) | 260 | `declaration-track:ec74c239d03f4e254b5b0d8f2d222a67a164b20100721d07a3dbf3b38c8a85d6` |
| 50 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 263 | `declaration-track:1b52a9c98bec3b4b41080832d666c40a0a73dca9c51f50740ed59c73cc62753b` |
| 51 | `def` | [toHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/tohamming.md) | 272 | `declaration-track:56ec86789d61a660b6025f224202eb02a836cf8014a775ddaf474d9795b0dca9` |
| 52 | `def` | [ofHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/ofhamming.md) | 277 | `declaration-track:e5b058ef2493e6ef77f38c1dbe029d1e98318de9ed5447a68f49ee733795a2c5` |
| 53 | `theorem` | [toHamming_symm_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/tohamming-symm-eq.md) | 281 | `result-track:cb1d7a9b2fe656df4349c83b2eec68cccc9190fd56cb5e52008ca7feef205268` |
| 54 | `theorem` | [ofHamming_symm_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/ofhamming-symm-eq.md) | 285 | `result-track:9b20f2fa270ef3fb0cc41b67a66d250da65ef3f573bc910617ccd9eb131b1e0b` |
| 55 | `theorem` | [toHamming_ofHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/tohamming-ofhamming.md) | 289 | `result-track:31d4bac2dd4d9fa53b5257f88e314c213ed0d237be1307c3cd261ff55c6491f1` |
| 56 | `theorem` | [ofHamming_toHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/ofhamming-tohamming.md) | 293 | `result-track:c84df649f26d8d5a7892b43682467cdb46ef02fd3664ae4c5e9b090e33ea2038` |
| 57 | `theorem` | [toHamming_inj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/tohamming-inj.md) | 296 | `result-track:cf104cc1b81dab9ce110ec908ab4b9a6a62e449611107afc9fecfcb1b0e927cd` |
| 58 | `theorem` | [ofHamming_inj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/ofhamming-inj.md) | 299 | `result-track:db3bc85a1b318f37ab5a2a026efd1155529120f2164db0c983644fa30811eb7f` |
| 59 | `theorem` | [toHamming_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/tohamming-zero.md) | 303 | `result-track:f0720bea228afc307a33329170b17f7c2c89c86f4920149e3cbd0af6f6d0fd0f` |
| 60 | `theorem` | [ofHamming_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/ofhamming-zero.md) | 307 | `result-track:f3876a0335661a24ce639028de0a887b9c78c45e2150fb061447a9fed6e2a885` |
| 61 | `theorem` | [toHamming_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/tohamming-neg.md) | 311 | `result-track:16e20c089d55ea8e3ea5fc73e607363a80b90dd0a91bce939bff1a4d9f22d62e` |
| 62 | `theorem` | [ofHamming_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/ofhamming-neg.md) | 315 | `result-track:67c9ceb9c0d0c33099f90fe60874198cb6b25c82db685180ba297a5476ebbe89` |
| 63 | `theorem` | [toHamming_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/tohamming-add.md) | 319 | `result-track:1bb2e5d5060b322103bcc4d0f17f5a3eca45c016be9a387dd6709d70155b203c` |
| 64 | `theorem` | [ofHamming_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/ofhamming-add.md) | 324 | `result-track:6386ca4de4f5cf34f792e8e74a762888bcceb7da2f54fb5dc4231fa12d185f1a` |
| 65 | `theorem` | [toHamming_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/tohamming-sub.md) | 329 | `result-track:548e1997490f57e6899c14016ff18510c0b2f00815e346eac3ec3c7fac50915a` |
| 66 | `theorem` | [ofHamming_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/ofhamming-sub.md) | 334 | `result-track:0f0d9320e728b46ecd329368eef4e850c87975a7ef2ba93c406c245086322560` |
| 67 | `theorem` | [toHamming_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/tohamming-smul.md) | 339 | `result-track:713e35bb7bb1faa2b2cf47be87c4c7d02c0c7ed5787f7aeaff27bf16bd8a11e2` |
| 68 | `theorem` | [ofHamming_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/ofhamming-smul.md) | 344 | `result-track:8684c1bb86e99e81d16d6e70664a87f8408560890ea90114400778f8b8b08a83` |
| 69 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-10.md) | 354 | `declaration-track:87352a9fcecff3e8c5089ced97a15d3822a0b2e245f22b290c24c3bf5701a224` |
| 70 | `theorem` | [dist_eq_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/dist-eq-hammingdist.md) | 358 | `result-track:5b65aa2d0b522d005214820fcc813da618d3f62394bf264536794818f38199c9` |
| 71 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-21.md) | 362 | `declaration-track:ea136f19770a15ff34585facd9e40cf3bb88c54c75bf8462919efb1d3c26ca5b` |
| 72 | `theorem` | [nndist_eq_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/nndist-eq-hammingdist.md) | 393 | `result-track:2cd47bcd7f07bc41d9b149b0fc43294dc6c6ef10496435c875b6041fba357ed7` |
| 73 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-9.md) | 397 | `declaration-track:419947bef2a3bc7a7d13778d63b8a3a8e5796b8860912b6bed3c2ebb8063dd09` |
| 74 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-8.md) | 399 | `declaration-track:3cb7aeeee8f526b5cecafd430883fbe2075a88eb44d23dfad56885b9894a9b2e` |
| 75 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-16.md) | 401 | `declaration-track:c0f3fa5687b08774c507173e601ab20d6a38429bd3070a6b39cb6729d49e28e3` |
| 76 | `theorem` | [norm_eq_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/norm-eq-hammingnorm.md) | 405 | `result-track:a240dd25d02b7748b3658a6aae6bc81eecc0edfb63575fec26aca851227d357f` |
| 77 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-7.md) | 408 | `declaration-track:31d57f013b18765b29d9a1870cae7d34d9bd6fff31982c4307d4907ac405bfef` |
| 78 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/instance-source-edition-20.md) | 411 | `declaration-track:e54f3e72bddc0d5a34a4a655642121a44a84230d6d6b34704c7b76cf652f73d3` |
| 79 | `theorem` | [nnnorm_eq_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingNamespacedSourceEdition2.lean/declarations/nnnorm-eq-hammingnorm.md) | 415 | `result-track:1888415253506199cfe44ada1a03ac85263e62acc5d43d74afda41e8b8d9a1b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c231b513c1545a6c8eeb2c3b44bc88350b951ed08d425fec877a1190b58c6c30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Hamming/Variantf53b3bae1c9ef6f0d65a8e4b93fd14704dc0759b16dc8634e3d81712cbf105fa.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Hamming/Variantf53b3bae1c9ef6f0d65a8e4b93fd14704dc0759b16dc8634e3d81712cbf105fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
