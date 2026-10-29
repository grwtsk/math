# Verification target: Data Rel Rel Namespaced Source Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "222da86638da4e6dd3cc167734a508102a2a142a",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rel/Varianta2bb5323327aa24c22a1cb1902d54f9fe385d957ff39bd2cd8afd2c4987820bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `222da86638da4e6dd3cc167734a508102a2a142a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rel/Varianta2bb5323327aa24c22a1cb1902d54f9fe385d957ff39bd2cd8afd2c4987820bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Rel/Varianta2bb5323327aa24c22a1cb1902d54f9fe385d957ff39bd2cd8afd2c4987820bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.BooleanAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Rel](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/rel.md) | 50 | `declaration-track:2c5a29d54572db3adf5bb9e613f18bb38e9787ecea299cd45ea9b32b54031e37` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/instance.md) | 55 | `declaration-track:b93ed1f0654dfe170280ae52fb748155d5b482a0e14ad44821e814b0b2073365` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:da0a942ffbe998ee7335e723826524a708bb6f50bf487cb2a170f80fc4982b25` |
| 4 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/ext.md) | 62 | `result-track:7d7dd7da37f7c2db8c20e11283796dc07bc2eb9bb142f7f84619fb87405ad229` |
| 5 | `def` | [inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/inv.md) | 65 | `declaration-track:4aa4624ddc1660a368c8a394f747971060f43fd2a3bac20544da00d00e08133d` |
| 6 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/inv-def.md) | 68 | `result-track:b3191fe11d726dc81e8d6cd39f45a72273d8dff366e255f9c0bf7f5acbcd4fa6` |
| 7 | `theorem` | [inv_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/inv-inv.md) | 71 | `result-track:c59cd13c2bec7f8145aef47ee0678619ca371315afa580d4016fa8b60c6fa363` |
| 8 | `def` | [dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/dom.md) | 76 | `declaration-track:882de359c6de757ff946318254173e6f39bd956b9e003f8b558ec07657c25496` |
| 9 | `theorem` | [dom_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/dom-mono.md) | 78 | `result-track:3ba2fdf5aa743f5ccf443a8f46eb7a0c30103ca1d1d3d009e05a6d98181e5ba5` |
| 10 | `def` | [codom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/codom.md) | 81 | `declaration-track:759ea1d44f7ae2ece582de2f3ff6c4cb3b688013b5072083a6d9a86057077539` |
| 11 | `theorem` | [codom_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/codom-inv.md) | 83 | `result-track:f6632ab8250ddc46f0ffde34eb1926243c75b482a1352abf1d516647218028fc` |
| 12 | `theorem` | [dom_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/dom-inv.md) | 87 | `result-track:ae671705bb5f9794325e4d52e05bc5da4ef0e60356f707fe4700e3a389da7e6d` |
| 13 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/comp.md) | 92 | `declaration-track:e2cfcae43f55b2a39a7aae1600c06209bb9e3b290416c02f0ee934716657f7e5` |
| 14 | `theorem` | [comp_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/comp-assoc.md) | 98 | `result-track:84c1a7be05f38425a63bd805d1515cbc2a0ffddcc332d352211b02b9be210c74` |
| 15 | `theorem` | [comp_right_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/comp-right-id.md) | 105 | `result-track:c944dbde3cfc48c935e0bb1c0c235fb78a56b8bd0be177d1a8d4890efe2ea6d3` |
| 16 | `theorem` | [comp_left_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/comp-left-id.md) | 111 | `result-track:46cb0e5f7bc66d393bbc75fcabc6232b28303a60f0db063c369200d3d2daeaa8` |
| 17 | `theorem` | [comp_right_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/comp-right-bot.md) | 117 | `result-track:a76ed5689d76ee55959c2bba4f09e16e164f9fd4f5054616152137a641e72788` |
| 18 | `theorem` | [comp_left_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/comp-left-bot.md) | 122 | `result-track:f53e73e6ac85d6df5283dbcce3e7225bafbe3c4202cfddff0d9c154c1e8b8432` |
| 19 | `theorem` | [comp_right_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/comp-right-top.md) | 127 | `result-track:60c6deb9e83f8ebb51270a26854cb2e5b30e12ca6f581f176bbf91b958c836fd` |
| 20 | `theorem` | [comp_left_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/comp-left-top.md) | 132 | `result-track:2f251dac9149ead332453384ce8379a34c2b658c08715d24f72c0a15145fb6cd` |
| 21 | `theorem` | [inv_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/inv-id.md) | 136 | `result-track:3cb7dc789ef6a323d0f8e047107b0cd8c5a6d6bc91b20810637846986a157523` |
| 22 | `theorem` | [inv_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/inv-comp.md) | 140 | `result-track:46716fbfb1bff0f42530944687779b10f37e5575659672f4b8ada74460144d93` |
| 23 | `theorem` | [inv_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/inv-bot.md) | 145 | `result-track:338b5ab38d632edc56314fe1d41a0d9c0d7731d8064377bb7b67abd08264d4a7` |
| 24 | `theorem` | [inv_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/inv-top.md) | 149 | `result-track:e0adc88d273d4d144b71370356ab2a523d96f2dc698bdc63f08e0398a61e06f5` |
| 25 | `def` | [image](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image.md) | 153 | `declaration-track:bb01452ff83df9d82efa9cf73f5cd3c862ab0da831348825dc200c403d203efd` |
| 26 | `theorem` | [mem_image](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/mem-image.md) | 155 | `result-track:1202fbfde94206ee98746d959f5ed5d487378fd62209f202bb0bfac81914d8a7` |
| 27 | `theorem` | [image_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-subset.md) | 159 | `result-track:b8eeaae6133a342c0167bd92ef74c3e235aa4d9c8d47f2febe751e3d9e95e46b` |
| 28 | `theorem` | [image_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-mono.md) | 162 | `result-track:b7028622b6ecb5be7ee99ecc4b1119c94e7ef10cab6f2c2f63b8185087845f1f` |
| 29 | `theorem` | [image_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-inter.md) | 165 | `result-track:12220fcf2ecbf621da21051ebcdd763b82da3ebed767d0ec5c26ee80b68b23c7` |
| 30 | `theorem` | [image_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-union.md) | 168 | `result-track:c9ee4b9bc21ec91891bfbb7ec8716c18b184be8eb837a96aad0ab8c86738b01c` |
| 31 | `theorem` | [image_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-id.md) | 175 | `result-track:1b2626ad56c92fd531f9a712d2c2317e7837b15c38f4c2903c26590443ef87e0` |
| 32 | `theorem` | [image_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-comp.md) | 179 | `result-track:34c824cf633073cf2d5e93bc055d7680f1ab2d98ec4dd505ca8870115604deee` |
| 33 | `theorem` | [image_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-univ.md) | 184 | `result-track:2c58886ed0876cda0e9aad3f4a6b71579578298d16439e6c3b1fd16b1b97541d` |
| 34 | `theorem` | [image_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-empty.md) | 189 | `result-track:63b77c3a4f35bd93df5a72a691a9b4c201744c16061a3cab58f61c1da380add0` |
| 35 | `theorem` | [image_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-bot.md) | 194 | `result-track:231ea5862e022016288f7dd5b8a599b029dee24fb60d59f7a7ec4c28431f8b16` |
| 36 | `theorem` | [image_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-top.md) | 200 | `result-track:c54faf53453d5be2d3d0eda1f0731e63be38bad50aa316756bc90db3117316f6` |
| 37 | `def` | [preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage.md) | 205 | `declaration-track:855baaf6921d52f9663419ac1b0be7801f08111f5628094d3386c6eb411e6248` |
| 38 | `theorem` | [mem_preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/mem-preimage.md) | 208 | `result-track:7fec50ddb83a584037d15b683b02e8e0a7064f9544308b1b154f6ab0f72f9443` |
| 39 | `theorem` | [preimage_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-def.md) | 211 | `result-track:d0956b1030ac78e3838e7ce31bcd5e357fe9400ece4274767b0b3b26983a07d3` |
| 40 | `theorem` | [preimage_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-mono.md) | 214 | `result-track:7458ef146c87f70fbb25598065741ac9f3d29f9fa6ab753513343ad5abc3de4a` |
| 41 | `theorem` | [preimage_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-inter.md) | 217 | `result-track:d2fe377ffbf849e0502e5ac24509b9ff21f325136e362975958b380dda2de769` |
| 42 | `theorem` | [preimage_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-union.md) | 220 | `result-track:2d5a29911ef65e20d92550dfabfeaf6f83803267e5d18a863aa6860c336aa5cf` |
| 43 | `theorem` | [preimage_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-id.md) | 223 | `result-track:e406923aede3004c93d43a65f7345889d22a7d98deb0d0bbe29c6e0df93fb2ee` |
| 44 | `theorem` | [preimage_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-comp.md) | 226 | `result-track:0f8af616bb2a05b86e4732a872151d4edfc41aa31ba6004e2b8164deda626636` |
| 45 | `theorem` | [preimage_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-univ.md) | 229 | `result-track:132f3af29843c514b6676681ac74e42b2e4515baf18443ad35fb46601e3a1381` |
| 46 | `theorem` | [preimage_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-empty.md) | 232 | `result-track:988804bcb7834cbedac0f1bb9e27afa29ed9a125b0ee2e809a72bf536d28b1af` |
| 47 | `theorem` | [preimage_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-inv.md) | 235 | `result-track:b4c09bfa21fa3e81914a82268fb8a294ceb730d0506cd07eaeb378dbe52bc48b` |
| 48 | `theorem` | [preimage_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-bot.md) | 238 | `result-track:abb3a0a1c5b40b08f2ac0469b40b34d4948d52290f1f4267f28f989eb138d3a1` |
| 49 | `theorem` | [preimage_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-top.md) | 242 | `result-track:e4b707f73e4ee738ec72c7d66f56f4aeb264bafa1bea56c71638452a0796715b` |
| 50 | `theorem` | [image_eq_dom_of_codomain_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-eq-dom-of-codomain-subset.md) | 245 | `result-track:a8c84e23923d3e478f352b187792c705707efbc811c8e628ed05e40be8676048` |
| 51 | `theorem` | [preimage_eq_codom_of_domain_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-eq-codom-of-domain-subset.md) | 255 | `result-track:ce1249f980e95f277340340b1e9474ca99f8cf267791a861d188a6f9851a9479` |
| 52 | `theorem` | [image_inter_dom_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-inter-dom-eq.md) | 258 | `result-track:46c35da1cacea85b0c891ba7320610524c7846d5c5d239d80e10cb4eb54d7f46` |
| 53 | `theorem` | [preimage_inter_codom_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-inter-codom-eq.md) | 270 | `result-track:50071ad0b5e654def7741b25cdb9af079cb854d4c1cf57195d1d3a46c65beb87` |
| 54 | `theorem` | [inter_dom_subset_preimage_image](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/inter-dom-subset-preimage-image.md) | 273 | `result-track:48cd24e42798ada637555390d3aea05f5963d4b0c3173f891ac45f7d00e0088a` |
| 55 | `theorem` | [image_preimage_subset_inter_codom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-preimage-subset-inter-codom.md) | 281 | `result-track:e723562998fe759cdc816e00417d3a55dfe0ffff3dff33f3c29653657328049b` |
| 56 | `def` | [core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/core.md) | 287 | `declaration-track:ba4b43878c6dd0378025ccb35c8164dd9655a9991dcfffee697a9eae225a1cec` |
| 57 | `theorem` | [mem_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/mem-core.md) | 289 | `result-track:b11969cbb2eda3d2b348919ba4e32de5acd0cce2d5404c411401a4fc72a28405` |
| 58 | `theorem` | [core_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/core-subset.md) | 293 | `result-track:c9f015ed2e51676f796f014d50203062ede9f1c50724fe0cf22002eada217508` |
| 59 | `theorem` | [core_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/core-mono.md) | 295 | `result-track:cd88bab216e60ad2a87430085ca907948f2143afd39e85346f4ef2d7d57a6f49` |
| 60 | `theorem` | [core_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/core-inter.md) | 298 | `result-track:9ec0c5e238a97573ea3a0848298bffe8f953420a4a5822c17070cda107a5cd8c` |
| 61 | `theorem` | [core_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/core-union.md) | 301 | `result-track:6449df8a20c07f1b3b47d7248d0a2f6e9b78724a7dc120109276f41972503ba6` |
| 62 | `theorem` | [core_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/core-univ.md) | 305 | `result-track:fc40e9c1d55a961b7e8df37cbabbcd1b378315156ffb5c1c0d803192e1d4dd43` |
| 63 | `theorem` | [core_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/core-id.md) | 308 | `result-track:03b55eafac3990da31b85e0606542f24508271ce0c06e08e9a21c69100d1befe` |
| 64 | `theorem` | [core_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/core-comp.md) | 310 | `result-track:f4eaa676d5b70c8b337c32e957723160a205322b29d8b8744e77197d7da06864` |
| 65 | `def` | [restrictDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/restrictdomain.md) | 316 | `declaration-track:5f119724aed8d7b7a9f8afee478ce51c7c9bdadf66b3bfc0389360ca4bbd6404` |
| 66 | `theorem` | [image_subset_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-subset-iff.md) | 318 | `result-track:34d948ad2db6d55a797889070c7296ff672e9c2cfec739c8cbe354b10faaa638` |
| 67 | `theorem` | [image_core_gc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-core-gc.md) | 321 | `result-track:d92ffbb89ee7ca7b30c8b8713801c646f7a98b6676f6cbe30f77dc6f9c52d8be` |
| 68 | `def` | [graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/graph.md) | 329 | `declaration-track:086b135fda33b046516d84780767fb058de030bab954a5d6d7fdaf0d45120e87` |
| 69 | `lemma` | [graph_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/graph-def.md) | 331 | `result-track:e72806d4825ab9f66aad1063cb7c2030b6c9e259fef421b27fd43b3ca70d2467` |
| 70 | `theorem` | [graph_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/graph-injective.md) | 333 | `result-track:1a76f65ce9c275ba760ae48297d0cb5478da3a6805c670a7abc2af818316ae45` |
| 71 | `lemma` | [graph_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/graph-inj.md) | 340 | `result-track:86a9ff62e3554cda3f022d9321edfb2d0ab814734ff47f781de9a9dcf3f34c5e` |
| 72 | `theorem` | [graph_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/graph-id.md) | 342 | `result-track:6824c638e9460a5176c09f1dfa5ba64ec8223633a10331e35fdf4349b678aca6` |
| 73 | `theorem` | [graph_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/graph-comp.md) | 344 | `result-track:d0e1b927eee3bd8bb61db8626999baf5ae77b13bc2678d46a3c541ed4049220b` |
| 74 | `theorem` | [Equiv.graph_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/equiv-graph-inv.md) | 350 | `result-track:6d963184ca7bb4f81c5df97cf5a1f792139f033a197c109a2a121049d253a2ca` |
| 75 | `theorem` | [Relation.is_graph_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/relation-is-graph-iff.md) | 354 | `result-track:9e7acb458bbc6a38ada4f95ea9cf7629c6008de13d1494687a4a1abc067eb816` |
| 76 | `theorem` | [image_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/image-eq.md) | 374 | `result-track:a68a75d162d50d1bca85e44381829e1d77d9210944b8858da26c387eddc7a818` |
| 77 | `theorem` | [preimage_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-eq.md) | 377 | `result-track:5f5db987d130e3b7d264ab1e08f304380d9b43e9b93ecb781cee1816a3ef38fa` |
| 78 | `theorem` | [preimage_eq_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataRelRelNamespacedSourceEdition3.lean/declarations/preimage-eq-core.md) | 380 | `result-track:b1dc3f9499970148ca5908450b5064dd9a77f2f9cbc212f3bba2e3e49a1ab683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aea59b4422fac9b045195290eaed53520926928497a84f1f52baa658b9833768 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rel/Varianta2bb5323327aa24c22a1cb1902d54f9fe385d957ff39bd2cd8afd2c4987820bc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Rel/Varianta2bb5323327aa24c22a1cb1902d54f9fe385d957ff39bd2cd8afd2c4987820bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
