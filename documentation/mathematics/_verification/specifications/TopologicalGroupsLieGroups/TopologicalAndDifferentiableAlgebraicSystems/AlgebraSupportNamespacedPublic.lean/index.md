# Verification target: Algebra Support Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da02e37a4f7990f23c54c42fcac72a5a2b61cdbd",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da02e37a4f7990f23c54c42fcac72a5a2b61cdbd`.

Source path: `GRWTSK/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport.md) | 58 | `declaration-track:2971d00f1e805792a8c045e432a98a24a625286c290cf3ba24aa8c7a617830d4` |
| 2 | `theorem` | [subset_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/subset-multsupport.md) | 61 | `result-track:691b19bf0dd92542df5433233708486961d73588beaab0c191812129e0c467eb` |
| 3 | `theorem` | [isClosed_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/isclosed-multsupport.md) | 65 | `result-track:756e1f5c4b9a484735e32ce07962e77c9e859e77a178d5ee736f09b78ad1391f` |
| 4 | `theorem` | [mulTSupport_eq_empty_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-eq-empty-iff.md) | 69 | `result-track:c87fe40e9708e5d7ec6a57ad41b847b86ad18746d6574fa2bed87cd88ad0e7fe` |
| 5 | `theorem` | [mulTSupport_fun_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-fun-one.md) | 73 | `result-track:798a5aef5767d415348260cf4992c7ba658b3d4869cd36edb171d93ef754c551` |
| 6 | `theorem` | [mulTSupport_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-one.md) | 77 | `result-track:384c391c4277dd44f094f8ec8ea4c0b53b93b3e59df4816a03d1ce54cc4355d4` |
| 7 | `theorem` | [mulTSupport_binop_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-binop-subset.md) | 81 | `result-track:fdc623a71aaf8ca08e92e78a2f739bb1da4a5a52c054722f56342b10c71f01fa` |
| 8 | `lemma` | [mulTSupport_comp_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-comp-subset.md) | 87 | `result-track:c19c6055d2ee3f8c7394b0b633ee46cc3ce290866a4d97d009fbba3431aa5a1a` |
| 9 | `lemma` | [mulTSupport_subset_comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-subset-comp.md) | 92 | `result-track:8f64f2eadcaaea872fbadeee9c209596ceaa10a0a8dacc4687b11b5c7a6ce273` |
| 10 | `lemma` | [mulTSupport_comp_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-comp-eq.md) | 97 | `result-track:00a0874c6d3c96a2348668521b08027982906ae3acc2161be0e6288ab2e4914c` |
| 11 | `lemma` | [mulTSupport_comp_eq_of_range_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-comp-eq-of-range-subset.md) | 102 | `result-track:4d084edc36f41437f82d7aaf62419761b1e749c6082bb6bec623cfd32cc3254b` |
| 12 | `lemma` | [mulTSupport_comp_subset_preimage](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-comp-subset-preimage.md) | 108 | `result-track:2d5c6f33a4803bc325f4633dc2fc90405619a58200a5e2d293ee8b2eb2c0e57d` |
| 13 | `lemma` | [mulTSupport_comp_eq_preimage](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-comp-eq-preimage.md) | 115 | `result-track:a9c152b3bb539db6f416f03fb04845a30ac70bced8160b085066c8176c65041a` |
| 14 | `theorem` | [image_eq_one_of_notMem_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/image-eq-one-of-notmem-multsupport.md) | 120 | `result-track:79b337817b925a829878cccf562c42946151ab7857c0ef059d18a44395aa0242` |
| 15 | `theorem` | [range_subset_insert_image_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/range-subset-insert-image-multsupport.md) | 124 | `result-track:3baf955a8c7aadcbdb25ab165dc68534b558196e12ad2d9e087be3fc984f28cc` |
| 16 | `theorem` | [range_eq_image_mulTSupport_or](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/range-eq-image-multsupport-or.md) | 129 | `result-track:a24c80a715721a09f08b56c4786def6ede6d68315a3047d1fc0783a7be0ed112` |
| 17 | `theorem` | [tsupport_mul_subset_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/tsupport-mul-subset-left.md) | 133 | `result-track:1ef512c322c2203e291fbbc8698242867a71e69237085abd21fdb804364d2ee0` |
| 18 | `theorem` | [tsupport_mul_subset_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/tsupport-mul-subset-right.md) | 137 | `result-track:340591d589a5101f2b03584bf980ed70f6959870a107878fc9e5dcb18b02c720` |
| 19 | `theorem` | [mulTSupport_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-mul.md) | 148 | `result-track:4e46b36b155f1590b40f0742ca7cf15031191166861c4de2a46be996ddd1b0a7` |
| 20 | `theorem` | [mulTSupport_pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-pow.md) | 153 | `result-track:be02bbdb2ca0a9b0b02aab0fb1bb7581b4180bdd26d67a27af4ab8febb2d7934` |
| 21 | `theorem` | [mulTSupport_fun_inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-fun-inv.md) | 158 | `result-track:389762a5ad619a005b40a1f5f680debc141d85a3a4b85e8c82a23966d1ea6b90` |
| 22 | `theorem` | [mulTSupport_inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-inv.md) | 163 | `result-track:386da92da127905472bcd520f3447d0e36dd246512ac8fb10de472b542152aec` |
| 23 | `theorem` | [mulTSupport_mul_inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-mul-inv.md) | 168 | `result-track:4bc2e92dbd3ff132d978afa4241d4f7216f2ab44d0bd4495acaecc6c23387ca7` |
| 24 | `theorem` | [mulTSupport_div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-div.md) | 173 | `result-track:eecc62ec46e83199874e9f3560732f4afa4486db3865e0ebd2e920d624c4bd11` |
| 25 | `theorem` | [tsupport_smul_subset_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/tsupport-smul-subset-left.md) | 177 | `result-track:d7c00b564b9996e7955003204f5dad250603f384c3af5d12b04f3a27e181e8c2` |
| 26 | `theorem` | [tsupport_smul_subset_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/tsupport-smul-subset-right.md) | 181 | `result-track:ec585dec7b16f0232ec5c7e24517d81fba1dc45b6deafc022418e939290365d9` |
| 27 | `theorem` | [notMem_mulTSupport_iff_eventuallyEq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/notmem-multsupport-iff-eventuallyeq.md) | 194 | `result-track:687b80d726a31c596c365d00bde17b50c5988f8d4a39ddbd9a37260ff4b45230` |
| 28 | `theorem` | [continuous_of_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/continuous-of-multsupport.md) | 199 | `result-track:c608c04ae37a426a54456cf86914832f2e75fc7934084b54f1aae4706b6e5886` |
| 29 | `lemma` | [ContinuousOn.continuous_of_mulTSupport_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/continuouson-continuous-of-multsupport-subset.md) | 205 | `result-track:76912127d2cca13bfb06288bd6183c0cc26096d95fc78fab962e76a350fb7d9d` |
| 30 | `def` | [HasCompactMulSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport.md) | 224 | `declaration-track:c43c4fc7c1d115d025bc4269de7baeece04cc0e8eb457fc7829dac37c6aa0cef` |
| 31 | `theorem` | [hasCompactMulSupport_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-def.md) | 228 | `result-track:e76b592b277de03af62d392aa1994304b85cccd929f4af665b47a7909335e40f` |
| 32 | `theorem` | [exists_compact_iff_hasCompactMulSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/exists-compact-iff-hascompactmulsupport.md) | 232 | `result-track:84db4d783610403a0acf26e3476e7243926386b51b732ea5fb71ec59f0cc5650` |
| 33 | `theorem` | [intro](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/intro.md) | 242 | `result-track:0709639f184cf40de825e26201df35231f211142bd62bb8b1f7089828636ca39` |
| 34 | `theorem` | [intro'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/intro-source-edition-2.md) | 247 | `result-track:c8c1356a381f9a15faa14130957a07d693d5d13324ae6869dfb569f3df154b1f` |
| 35 | `theorem` | [of_mulSupport_subset_isCompact](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/of-mulsupport-subset-iscompact.md) | 255 | `result-track:4c43e0f8af0fc25de7a6536a66b834e420a3f67f0fd3837bfdee378dedf54324` |
| 36 | `theorem` | [isCompact](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/iscompact.md) | 260 | `result-track:86bef00361ca770b76a21ec0f3f45683c53031bfd82d6bbd6cef5a6b28ae8319` |
| 37 | `theorem` | [Algebra Support Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-iff-eventuallyeq.md) | 263 | `result-track:528a702ea7ed07e631e6862247ba03d6e0e520e4597b7d006a7690cc5e1d3ad8` |
| 38 | `theorem` | [Algebra Support Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/iscompact-range-of-mulsupport-subset-iscompact.md) | 268 | `result-track:319c10884d5ad162da95d812900620ee6474ff83ec34cab3184d2ecd01c43b91` |
| 39 | `theorem` | [isCompact_range](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/iscompact-range.md) | 275 | `result-track:c079047945e68d5c10dd25d004594ab5008bbcb6739cd5537d8fef37eaaa4040` |
| 40 | `theorem` | [mono'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/mono-source-edition-2.md) | 280 | `result-track:c9746fbb4ef0cd9874572821779af4fb4c3362023cc5d5989f04a0ca4951a533` |
| 41 | `theorem` | [mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/mono.md) | 285 | `result-track:481d2e601b3f166af199c253a2e26272ca634254c1a5d72608362d1694be72e4` |
| 42 | `theorem` | [comp_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/comp-left.md) | 290 | `result-track:293e7e687cd73181710772a80d70869c04eb7a16300611778205bbba69d00ead` |
| 43 | `theorem` | [Algebra Support Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-comp-left.md) | 295 | `result-track:ff6d4208f22bbd7dd9e1438c6e7facb08db50c3d4b040fbf47b0af83260c0102` |
| 44 | `theorem` | [comp_isClosedEmbedding](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/comp-isclosedembedding.md) | 300 | `result-track:baf5a7f9f872949a977857a2c5daf8a6757a93fd788b7dab779693b8f98df82d` |
| 45 | `theorem` | [comp₂_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/comp-left-source-edition-2.md) | 308 | `result-track:50e634508770584894e33cb1d6a570427842fa145f56e6494352f3228ec1a078` |
| 46 | `lemma` | [isCompact_preimage](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/iscompact-preimage.md) | 316 | `result-track:9112db4d5d48301f7497c330696cf48b00faa7b86331aece6c5b3f55e4a03e8f` |
| 47 | `theorem` | [mulTSupport_extend_one_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-extend-one-subset.md) | 331 | `result-track:31b41e6cd31b3d894d52bc31ff4015e36183d5f455949db02a83ac2ba29c2f8c` |
| 48 | `theorem` | [extend_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/extend-one.md) | 337 | `result-track:637eb301d76c13f9125f7b5699cb8dcc1a74f4733a4507927c266fc7f51f1638` |
| 49 | `theorem` | [mulTSupport_extend_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/multsupport-extend-one.md) | 342 | `result-track:4d478e141e4f9036d32cbbfb10f7ec65e96509f6b3556f82c516df0709261849` |
| 50 | `theorem` | [continuous_extend_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/continuous-extend-one.md) | 351 | `result-track:be65b36603ca73a0550e716b06d987f5c5ce290973f36e89770bdba9036128fb` |
| 51 | `theorem` | [is_one_at_infty](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/is-one-at-infty.md) | 362 | `result-track:7176d2161f6de4758fdd0af7b38318dd78a6930b017c52a541062e6b9ee747e9` |
| 52 | `theorem` | [HasCompactMulSupport.of_compactSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-of-compactspace.md) | 380 | `result-track:55676b5fe1b5d1e33892a3d6893648160e6dd76eceaf519d6615e9b4bcaef2b1` |
| 53 | `theorem` | [HasCompactMulSupport.mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-mul.md) | 397 | `result-track:e2619602d1707a637b47fe9bc1d8b7368a74da9b9e0792c352a98b8f71faaaee` |
| 54 | `lemma` | [HasCompactMulSupport.one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-one.md) | 401 | `result-track:3bb223f55a1eafa1f970ad0427fc923f28b9d57084d7f5e50a06f0f8a70cdaab` |
| 55 | `def` | [HasCompactMulSupport.submonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-submonoid.md) | 408 | `declaration-track:839346896a0a4fe9db8ce6402cde032b18f53302447696c976cb71e0f4e81938` |
| 56 | `theorem` | [HasCompactMulSupport.mem_submonoid_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-mem-submonoid-iff.md) | 414 | `result-track:b0de3a55196a053570252fcc5480c21608088ab41bffdd5aa45db9d62d38a10c` |
| 57 | `theorem` | [HasCompactMulSupport.list_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-list-prod.md) | 419 | `result-track:0c76a200c1510e68ed69b9b5f428997f836a47d08cbcfcad50b4bef714a028d9` |
| 58 | `theorem` | [HasCompactMulSupport.multiset_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-multiset-prod.md) | 431 | `result-track:3fe434b9be522b29d75870f86543a17bd98beea817b072d70058ea16c7e1112b` |
| 59 | `theorem` | [HasCompactMulSupport.finset_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-finset-prod.md) | 437 | `result-track:7ef9de3bae89eb1fac7a1ced9e41718542a4ab483624224cace041c1b69a7916` |
| 60 | `lemma` | [HasCompactMulSupport.inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-inv.md) | 447 | `result-track:d6eaf8a93dbd20ce0d95dc7366f50f7ce349970ee4eef58625175b257ce7cde8` |
| 61 | `theorem` | [HasCompactSupport.div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactsupport-div.md) | 453 | `result-track:897224963b75de26e14125afccac62b2654f92870f9950d0b6d95378f814aca6` |
| 62 | `theorem` | [HasCompactSupport.smul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactsupport-smul-left.md) | 465 | `result-track:1a0b38c39f5e16e2fa548dafe75e256dd7f5b12b865804509863ec53485d86e5` |
| 63 | `theorem` | [HasCompactSupport.smul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactsupport-smul-right.md) | 476 | `result-track:7c7024adf0d39a0387a47634a674b55d14efadd5c00a8386d5a403484d22e774` |
| 64 | `theorem` | [HasCompactSupport.mul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactsupport-mul-right.md) | 487 | `result-track:f861e1bbefca7d22ab82cb4eafd13ed38059c726109c35ba831a196b7b11f44d` |
| 65 | `theorem` | [HasCompactSupport.mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactsupport-mul-left.md) | 491 | `result-track:14d22ea4eb9c91b3e63d4b25e60a318e68c81b1e0a78ccb7a1b95c8dc34d4c3f` |
| 66 | `theorem` | [HasCompactSupport.abs](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactsupport-abs.md) | 501 | `result-track:0c5327ad786089be207d5c0d77cc5697c6dd387761c69d505d7b944b651c74b6` |
| 67 | `theorem` | [LocallyFinite.exists_finset_nhds_mulSupport_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/locallyfinite-exists-finset-nhds-mulsupport-subset.md) | 520 | `result-track:a8aa03640fdc81f2a904827dadf697aef2abb89c020f976ccd6b9e5c099e8324` |
| 68 | `theorem` | [locallyFinite_mulSupport_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/locallyfinite-mulsupport-iff.md) | 551 | `result-track:1ab9a76b8c398eff88ad5b6e2342c945977c8ea77a13b97192d3599ee4952867` |
| 69 | `theorem` | [LocallyFinite.smul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/locallyfinite-smul-left.md) | 555 | `result-track:ef6e1bbf14862c948825fab462ee69838934efd06fc8e655776a9705f38d85c5` |
| 70 | `theorem` | [LocallyFinite.smul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/locallyfinite-smul-right.md) | 560 | `result-track:8aacd85164746f6f138fb9271230abdd4a5946bbba178a742eef6803a696276a` |
| 71 | `theorem` | [HasCompactMulSupport.comp_homeomorph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespacedPublic.lean/declarations/hascompactmulsupport-comp-homeomorph.md) | 572 | `result-track:f6f3f46863789fd5c93342a419df09aa24df2b0738b7406428b45381eac0c35f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13271cafdf537ec63cb1a1f1453aaca9f5733126bc614cc9c5dbe6e6ddb00c47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
