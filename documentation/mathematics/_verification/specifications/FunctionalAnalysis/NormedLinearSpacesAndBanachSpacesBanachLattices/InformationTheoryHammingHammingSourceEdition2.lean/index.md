# Verification target: Information Theory Hamming Hamming Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f3052167ecdd46380511f4466b007f4fede8d6d",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f3052167ecdd46380511f4466b007f4fede8d6d`.

Source path: `GRWTSK/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist.md) | 37 | `declaration-track:71e29781c88064697dcc1f1b8af844639059d1feaac63625dd31954d6c2371d0` |
| 2 | `theorem` | [hammingDist_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-self.md) | 41 | `result-track:6085d32719338d23fbae002786e6a83fac3ca2766d419c9363664c8bd171d6d9` |
| 3 | `theorem` | [hammingDist_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-nonneg.md) | 46 | `result-track:e32d8420cf671cbfbadbff0a22b59e303cc15af773e81bf39ede56a47c886157` |
| 4 | `theorem` | [hammingDist_comm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-comm.md) | 50 | `result-track:a52d2df5ae5f36427d43ee54a482582a38820308fa40bf8b82cc3802256de8f6` |
| 5 | `theorem` | [hammingDist_triangle](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-triangle.md) | 54 | `result-track:015c74d38603ab708bbb41b8be0f7f6aa1aec20dd9fc7015d671afc5b06993f0` |
| 6 | `theorem` | [hammingDist_triangle_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-triangle-left.md) | 63 | `result-track:69295e3bb14235b4e8c30f717c3f8bf0af6652413e35f52510bddf88e7a7f4f5` |
| 7 | `theorem` | [hammingDist_triangle_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-triangle-right.md) | 69 | `result-track:bfe3e6538a0278b473b127de2307fc895e2bd57b1898c1c840c68f02e0c652e0` |
| 8 | `theorem` | [swap_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/swap-hammingdist.md) | 75 | `result-track:debff142c67f029370c1a957d9b4a804199ffd97bed82266c3c1435d3de15e64` |
| 9 | `theorem` | [eq_of_hammingDist_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/eq-of-hammingdist-eq-zero.md) | 80 | `result-track:77de505df343a38b46d01e1ab4d9c67fd33c6ef5833737aa4dcd30b8604fe253` |
| 10 | `theorem` | [hammingDist_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-eq-zero.md) | 86 | `result-track:ee7aa5338cc9da4f25970af9f529c8606bbb9be4d72fa4edfeb5fbabdf13a7b6` |
| 11 | `theorem` | [hamming_zero_eq_dist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hamming-zero-eq-dist.md) | 93 | `result-track:59714c01e1a07f91278b1fdc71ae28dfc81e4d0c7eedbb50b5da2ac7de8a80fd` |
| 12 | `theorem` | [hammingDist_ne_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-ne-zero.md) | 97 | `result-track:5f85df6949a5dda0639e6fdc6cfd41b64c7d23ac5d5ddbe508fc9e52b6bb5ade` |
| 13 | `theorem` | [hammingDist_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-pos.md) | 102 | `result-track:8650c51ca01a3016a31b49df97548a72b82ad147215b3bc121f448f91c98d7e5` |
| 14 | `theorem` | [hammingDist_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-lt-one.md) | 105 | `result-track:3a635fc3b3cc60e6b6e0dca4dfafa381173184d956d3e559db806b313d300319` |
| 15 | `theorem` | [hammingDist_le_card_fintype](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-le-card-fintype.md) | 108 | `result-track:506869b0255c38487cb389b4de5e07fd9bc8a7605d89054fcb66828d82a8e425` |
| 16 | `theorem` | [hammingDist_comp_le_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-comp-le-hammingdist.md) | 111 | `result-track:e734f01bc3a546a30f074c2770df3fc00c606e68a2c3cdae1a0696ea6a5e9965` |
| 17 | `theorem` | [hammingDist_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-comp.md) | 115 | `result-track:b9fefa9b3120f417f94f45c5b38e470215a9e89aec0fd444d7022ea98de515d7` |
| 18 | `theorem` | [hammingDist_smul_le_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-smul-le-hammingdist.md) | 120 | `result-track:dd4b5b1cb395d46d128c5893d5ab5775be9237e30dd315b3e0f89f6da4647d31` |
| 19 | `theorem` | [hammingDist_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-smul.md) | 125 | `result-track:e61dc832e9837e12b38f73e84f1bf85b0f433c942fb94d23eed5d8bb19a7d776` |
| 20 | `def` | [hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm.md) | 134 | `declaration-track:c694b9ea4cb18a783d55a75460e0e97a0d145fe6500a347a3a103cdcf575d681` |
| 21 | `theorem` | [hammingDist_zero_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-zero-right.md) | 138 | `result-track:c67c6b944160fc179c367f298b34fedaee4e39507c6d2076650d7114e66924e3` |
| 22 | `theorem` | [hammingDist_zero_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-zero-left.md) | 143 | `result-track:7bd15d0c4694bc91142d176fcf11de25b9219d91ac34828f941bd39ca2ed2a7c` |
| 23 | `theorem` | [hammingNorm_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-nonneg.md) | 147 | `result-track:7654c26b7e85d0ed5293e02daa6552bd046b5043c98ddbce91fe4c12c84812af` |
| 24 | `theorem` | [hammingNorm_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-zero.md) | 152 | `result-track:676e6277a843da456e0188c8175207a424dd64212e04b2061f9e824482924a48` |
| 25 | `theorem` | [hammingNorm_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-eq-zero.md) | 157 | `result-track:297f816c40cb753f9dc3d8bf43635d758af106a27e7d69a2e291f801d870d8ed` |
| 26 | `theorem` | [hammingNorm_ne_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-ne-zero-iff.md) | 161 | `result-track:3038cd1b4f3157ff639a4ca8daf9e169358d1eb967f4635c3ce83c9fe45bc482` |
| 27 | `theorem` | [hammingNorm_pos_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-pos-iff.md) | 166 | `result-track:68d69df65c73cc1f4e26e90a638601e2835fcbd4c0bf6ffb809bbe618abc1616` |
| 28 | `theorem` | [hammingNorm_lt_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-lt-one.md) | 169 | `result-track:29660ae53eaf5a8eee748e247297aa4a63d425b7258e953d066005714ac484a0` |
| 29 | `theorem` | [hammingNorm_le_card_fintype](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-le-card-fintype.md) | 172 | `result-track:9b3f97a6b24f59617935489bc4e2287451cbfce6dc5e8dfccc3d8b6fe5a7c6cd` |
| 30 | `theorem` | [hammingNorm_comp_le_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-comp-le-hammingnorm.md) | 175 | `result-track:bd03f6789627d49d9fd1bcf0a5ce1bfc0c7f9148106f06a35f274f4331a0c973` |
| 31 | `theorem` | [hammingNorm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-comp.md) | 179 | `result-track:bd80a7713c6639f47cf56e5f32b957fff9d4656a76c0bc6980f180b8aa028681` |
| 32 | `theorem` | [hammingNorm_smul_le_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-smul-le-hammingnorm.md) | 183 | `result-track:083cf57ae8d744bdfb1246af58a0bb05c0c7f071a309871fb95b0066e4473f87` |
| 33 | `theorem` | [hammingNorm_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingnorm-smul.md) | 187 | `result-track:996a57d8f86b3063d4e221af74cf32a8bb99a6260c5611437fb070c16d8fa7d2` |
| 34 | `theorem` | [hammingDist_eq_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hammingdist-eq-hammingnorm.md) | 194 | `result-track:e19649f07993cd5f452a901e24efccc4076d4bf4d1ad422a7b7a7600df10ac70` |
| 35 | `def` | [Hamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/hamming.md) | 205 | `declaration-track:c91addbbb5ba44202a1e23fbda9dd4f06ba33a5a0ac107322e7175412c0a73b3` |
| 36 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-7.md) | 214 | `declaration-track:6c685e0692b4070f36515c04049a442be9fcdcd8281b48b7d7d7f7bcafb17259` |
| 37 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-17.md) | 217 | `declaration-track:b8452021f6591a433dab2b6fa0a61f4aaf1120c55a6660f5a7ff59f39b37c651` |
| 38 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-14.md) | 220 | `declaration-track:ab67df7bb8e22fb1e815aa4ebd4871933e07facb0126e6d94a60c0ac5412b661` |
| 39 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-21.md) | 223 | `declaration-track:fdc64b600b01a7b40044789ce5ae156ce4c73bdb9335bb3fb56204e971afe806` |
| 40 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-18.md) | 226 | `declaration-track:c096bed6f8895d11db22995b5f709d84ab08ba913d49e274aac31ca66cae5a9c` |
| 41 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-12.md) | 229 | `declaration-track:9ac9538401e500303d256d215ce6b5caf262a5e3bbfc83d8c6e000bd11afa8ac` |
| 42 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-10.md) | 232 | `declaration-track:861dc5ed509d1e51c3b83121955729929150048ce56f1cab6dba96df7c1c7d9e` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-22.md) | 235 | `declaration-track:fe27238fda9a6e2d57282fdc5e29e673cfa3e852ebbf7c547fd156633982b46a` |
| 44 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-9.md) | 238 | `declaration-track:7eebc98b8c479df9660efd4723cc975e2861fcc23e7520dd40855560c36bd216` |
| 45 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-6.md) | 241 | `declaration-track:61faa6550de94491a0cabd223f4446e912ca7f6e17a863e45f8b027cc5a5a2c5` |
| 46 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-13.md) | 244 | `declaration-track:a5fca4d33686d5b84099d8e09b447777f0d7ab175eff7b2df01dab1ba1a2bd22` |
| 47 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-2.md) | 247 | `declaration-track:19eecbb1107801e721b48dc39c86392af427b10334eaa2e60756a8749299c597` |
| 48 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-16.md) | 249 | `declaration-track:b5a6ce731cd262f26ed2ee751f0abfbd43108c80a8448332aa5a81df1322501f` |
| 49 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-15.md) | 252 | `declaration-track:ad01e653f9469ba47ef37c2b06867934afee168587169fac890b08560d4b8e1e` |
| 50 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-3.md) | 255 | `declaration-track:2318b638ea9745622ad6b281a5d58d03460a6e86f9b68aa91bcef352cdbb3057` |
| 51 | `def` | [toHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/tohamming.md) | 264 | `declaration-track:fe694d71ff1cc7d10fca03666e361de239710b9b1a0357e71d10a4251c90ffb5` |
| 52 | `def` | [ofHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/ofhamming.md) | 269 | `declaration-track:22df7dcc1d6a4d9d58b232120a0ce2b8c7993392ee7d79a2d420e58510dcfd53` |
| 53 | `theorem` | [toHamming_symm_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/tohamming-symm-eq.md) | 273 | `result-track:58712052ee7cd0bad3c7083bff3a54a7bc9e5516635c175dcd34955b744c5231` |
| 54 | `theorem` | [ofHamming_symm_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/ofhamming-symm-eq.md) | 277 | `result-track:597a49bf97f255e7ef46330db63dd12d3fc11668a02776e9b115c7ea71989deb` |
| 55 | `theorem` | [toHamming_ofHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/tohamming-ofhamming.md) | 281 | `result-track:d7e635825b31e21725f096ddaf050a821807bc99698fa42e7930f562fdc3cfb7` |
| 56 | `theorem` | [ofHamming_toHamming](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/ofhamming-tohamming.md) | 285 | `result-track:41a6e1ce86fab6aaac4b5fff90b937db5838bef8e0821fb4cfdb602532198bc7` |
| 57 | `theorem` | [toHamming_inj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/tohamming-inj.md) | 288 | `result-track:583d8b05264d793c93dec84f0ad2df03cefac13a8cacdfed925ee2473b891fe8` |
| 58 | `theorem` | [ofHamming_inj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/ofhamming-inj.md) | 291 | `result-track:933ad1c58c9a570ee0dc67e632ada16ed767a20c1f77d66ffd0d03e9d42775ba` |
| 59 | `theorem` | [toHamming_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/tohamming-zero.md) | 295 | `result-track:db068ca7d904c412b9ad09ab19b1a4b35ad3ddfb0a81272ca4ebfcb81890ba82` |
| 60 | `theorem` | [ofHamming_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/ofhamming-zero.md) | 299 | `result-track:c32a68316b98dd61c73137ae5c331964d7ace9a45441af39081d397b68b121de` |
| 61 | `theorem` | [toHamming_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/tohamming-neg.md) | 303 | `result-track:f659854418e200ae86cfb9e99dfd2d0bc0aa77d2609dc42ff479259af650e9a8` |
| 62 | `theorem` | [ofHamming_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/ofhamming-neg.md) | 307 | `result-track:b30ebca8a4d2d6ee5b67b8950e9223fd303e0bf5dcb16212153f29e6c76809b1` |
| 63 | `theorem` | [toHamming_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/tohamming-add.md) | 311 | `result-track:012d08073887360dfe57b54e5a397dda4e45e36685d6b62cac66523d38dd2626` |
| 64 | `theorem` | [ofHamming_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/ofhamming-add.md) | 316 | `result-track:7a11ec57fd7b2712358c13c8bb305ce56339fa9552b65f0761537d26c7b14569` |
| 65 | `theorem` | [toHamming_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/tohamming-sub.md) | 321 | `result-track:b67870ef38200f39b65ff45a64176ce31f4d5fe76f480dcdcca5788884d84c58` |
| 66 | `theorem` | [ofHamming_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/ofhamming-sub.md) | 326 | `result-track:ea39af8584cb7d2b60a82887ebf8844444f00fd10901d8024955833eef7f8a90` |
| 67 | `theorem` | [toHamming_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/tohamming-smul.md) | 331 | `result-track:6617ddaf54636a0bd33fbcb0f3cec77453bc3a28dcb2418d758b3cb3ed900fcf` |
| 68 | `theorem` | [ofHamming_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/ofhamming-smul.md) | 336 | `result-track:02db33300def68bcf657c0504652b9e95ce807adcbfa9afe4cbc5b036830bd28` |
| 69 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-20.md) | 346 | `declaration-track:f0546f876166d6e666790fd8bb4cda4256ccddbcc0555bedd3667c4d5923dec4` |
| 70 | `theorem` | [dist_eq_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/dist-eq-hammingdist.md) | 350 | `result-track:7d6f410acd3436e1edda9e750a204f49cf9930f4999701f7dcc207f63096c2d5` |
| 71 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance.md) | 354 | `declaration-track:16bec90dea104446a607cf9addd53661920501ac4c8fc38fb7c5768e176b4344` |
| 72 | `theorem` | [nndist_eq_hammingDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/nndist-eq-hammingdist.md) | 385 | `result-track:3afd6a9c618ce3d0ae3f0ff56ecadbbc9018e5431c9fbd516a2b9b680598b92c` |
| 73 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-8.md) | 389 | `declaration-track:6ee3ed5ee3ae95289d16f8a92e122b2d8ee4590b5785873d2e57163fe4408591` |
| 74 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-11.md) | 391 | `declaration-track:8712d5c1344bb988f43e85f6043de26b4fa8dbb6d6cf479ea2efa01b8185df26` |
| 75 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-19.md) | 393 | `declaration-track:e03f886786d960632ba91403e8a583f1bfba87ba5fdd5cfbf3dee09f87b37168` |
| 76 | `theorem` | [norm_eq_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/norm-eq-hammingnorm.md) | 397 | `result-track:9f5800b9c10a82e0d0c0b04013d85b3d736d2eccb20bd78fc4f6fa55d5279714` |
| 77 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-4.md) | 400 | `declaration-track:3627e7ec88e92ae3ee00990ab233aaffa5a49537b13bb7498c482b8fee12c38f` |
| 78 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/instance-source-edition-5.md) | 403 | `declaration-track:5a94c26eaf2e2f7524a8c83d654a14682aca182b27591c727866584efccf26dd` |
| 79 | `theorem` | [nnnorm_eq_hammingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/InformationTheoryHammingHammingSourceEdition2.lean/declarations/nnnorm-eq-hammingnorm.md) | 407 | `result-track:4908fd684ba3d652e57b5905b828b5510a80e073d95e42db650ec0019cd2d16c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a5671609d01da65a088bb62a91e800ffd99409203a7ec2f716b5bdb9365c155 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Hamming/Variantd17f015750c83bc119d3d73b44c2ca46b424e1635a9b572f43e400b70c77cfcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
