# Verification target: Sups

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dc111d1bad708d8b610b50c564233475ca1c2d5",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variantd99973086e617d41c56e9c3ddb8db34f8e668fb9dfde360ab4ca71c83e8dae4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dc111d1bad708d8b610b50c564233475ca1c2d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variantd99973086e617d41c56e9c3ddb8db34f8e668fb9dfde360ab4ca71c83e8dae4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variantd99973086e617d41c56e9c3ddb8db34f8e668fb9dfde360ab4ca71c83e8dae4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.NAry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSups](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/hassups-source-edition-2.md) | 38 | `declaration-track:e038698578340be96a429181d119c1111f9b49f918752b8aeda1926460cb32d7` |
| 2 | `class` | [HasInfs](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/hasinfs-source-edition-2.md) | 43 | `declaration-track:83dc44231081474396dee8625f591b5eadd2422dff97d74c0b57b9a2f4d09631` |
| 3 | `def` | [hasSups](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/hassups.md) | 63 | `declaration-track:3300b23652ab6f55df561dc7f562ffd406d4d1e726203f70ae95b9716e048bab` |
| 4 | `theorem` | [mem_sups](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/mem-sups.md) | 75 | `result-track:2e139110dfc1a302e6a88a77d4d141e5fb639d5e39ace43f70c4580b0c503dfa` |
| 5 | `theorem` | [sup_mem_sups](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sup-mem-sups.md) | 78 | `result-track:16c5ed0492628ac99eda1b52fa4085cd623c0c8b24c389d191f03b4ad9685845` |
| 6 | `theorem` | [sups_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-subset.md) | 82 | `result-track:9661b0d8127b210b70c75b80834f7aac23e9f9086ae75905b681d0463f6c4a39` |
| 7 | `theorem` | [sups_subset_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-subset-left.md) | 86 | `result-track:31ee800158c63a4b28aa0004d03f62f49b41c43873b9822d01a9bef53eebe272` |
| 8 | `theorem` | [sups_subset_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-subset-right.md) | 90 | `result-track:7c2b0b8930bcb69c02163b9ce3d1627bcd2db45c91bee024cc72437ef30a659f` |
| 9 | `theorem` | [image_subset_sups_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/image-subset-sups-left.md) | 94 | `result-track:c238bfe77dc5a815634a3dd2a25838a1c2f3a67727be56df4da88a5a19345f06` |
| 10 | `theorem` | [image_subset_sups_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/image-subset-sups-right.md) | 98 | `result-track:6621a93db387b0f87a4aa19d3905f1b93fdce84628ac4fa9b9a15baf24f9aa03` |
| 11 | `theorem` | [forall_sups_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/forall-sups-iff.md) | 102 | `result-track:de6c54b14bcd1d08641b449da6be6e394ebe64fc497ddad8ebaea2bdd916be3b` |
| 12 | `theorem` | [sups_subset_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-subset-iff.md) | 107 | `result-track:0ad98efe869c2db9d977f823a60f03f8696316f933f6ab31ed5a1ab7bd313bc9` |
| 13 | `theorem` | [sups_nonempty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-nonempty.md) | 112 | `result-track:bcf2cdf602a81387dfec05f8ca11b87b0a84e2b4129abafd347ffba1390cbb25` |
| 14 | `theorem` | [Nonempty.sups](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/nonempty-sups.md) | 116 | `result-track:fceb12944107f3f843095c691df28375b436e0e7b6cc14bc25c52a210e856f1e` |
| 15 | `theorem` | [Nonempty.of_sups_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/nonempty-of-sups-left.md) | 120 | `result-track:452d7a30aab34a382326f804e6b9dc47626747242de3ce4ff95daeaec9ac300e` |
| 16 | `theorem` | [Nonempty.of_sups_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/nonempty-of-sups-right.md) | 124 | `result-track:1da7881b3b6b2e5a898cf15f6095b9eef54b26857bbbc4e0d8271ace395e8ea7` |
| 17 | `theorem` | [empty_sups](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/empty-sups.md) | 129 | `result-track:5b1e61e911cdc7fec1ef160786cf1346b48d9a3c2b42f51f3fc931493fe0571a` |
| 18 | `theorem` | [sups_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-empty.md) | 134 | `result-track:2aeb5846d76d57e82f133ca7b230db0f62b3d7c5e585211278ed09fc168ae76e` |
| 19 | `theorem` | [sups_eq_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-eq-empty.md) | 139 | `result-track:ac1907cb16b7fc7c3aac36c51d1060ed326d086e91a1658036f65d6192396444` |
| 20 | `theorem` | [singleton_sups](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/singleton-sups.md) | 144 | `result-track:a1d9128596de63d30758ee87bccd544d67e24e3b68ce0e3fe33fce0ba7fe342a` |
| 21 | `theorem` | [sups_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-singleton.md) | 149 | `result-track:1e2df91d54641d87f5be6002778ae1b554598e0bb3a69fb696a2b1f95278ffb2` |
| 22 | `theorem` | [singleton_sups_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/singleton-sups-singleton.md) | 153 | `result-track:8b77ecf629783ad3dd907bf18b13957a0364a0a1e0c6b89badbc49694e4949b5` |
| 23 | `theorem` | [sups_union_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-union-left.md) | 157 | `result-track:37545c18ce91475d8faf541ec253baf63214bb0c929bd0bf742c4b958eb37457` |
| 24 | `theorem` | [sups_union_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-union-right.md) | 161 | `result-track:f77762ed835611bb66cad8683102bdf248fb601e24ac73aecfe784aa769908c7` |
| 25 | `theorem` | [sups_inter_subset_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-inter-subset-left.md) | 165 | `result-track:d8110315c9f0e2771c8592b225bef8d6649598f76afe547217be48ee86693483` |
| 26 | `theorem` | [sups_inter_subset_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-inter-subset-right.md) | 169 | `result-track:3f2b2857f42d7ec534c8fe85af54f132de5b90e4857f928cc26486348892cfec` |
| 27 | `theorem` | [iUnion_image_sup_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/iunion-image-sup-left.md) | 175 | `result-track:26a7d8b2d4fd5828b55cf2e16bdc94ba43dd4505af42ca2ef921088613a7f3e8` |
| 28 | `theorem` | [iUnion_image_sup_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/iunion-image-sup-right.md) | 179 | `result-track:61c608dc01c9aa0296cdebcd61b71137ec9a705f34c8de55e25a7ebf7119f4f3` |
| 29 | `theorem` | [image_sup_prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/image-sup-prod.md) | 184 | `result-track:d34446eea78ab701f979fc407b0b6455b336469340ba39889d6854116e8c9eda` |
| 30 | `theorem` | [sups_assoc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-assoc.md) | 191 | `result-track:c63932f720d4b945c7a6b97ddb7e7a8e3634529f4c0b894589f9a5a944b89250` |
| 31 | `theorem` | [sups_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-comm.md) | 195 | `result-track:064888e016f13428f45166454ee49d59f5518932b0161002231a11300b0bc14c` |
| 32 | `theorem` | [sups_left_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-left-comm.md) | 199 | `result-track:5c9b2eb5fa93088846ca0db050fe0de2e003c3c73d6ad09d3ed19a6f4d3e1089` |
| 33 | `theorem` | [sups_right_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-right-comm.md) | 203 | `result-track:84760af31b3cc8f97a028f2591cd7171e14dfabddc23450cac58c1b6d3fbeaed` |
| 34 | `theorem` | [sups_sups_sups_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-sups-sups-comm.md) | 207 | `result-track:9fd9ff1146bbf8a1abd4e1ef0d3d7181eaf26031d33b67397a8c378a141db67d` |
| 35 | `def` | [hasInfs](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/hasinfs.md) | 218 | `declaration-track:6ee2937d228916e1a34fe039e893bf9c89200d6ab0d59f7427917b4629148010` |
| 36 | `theorem` | [mem_infs](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/mem-infs.md) | 230 | `result-track:63cb342a43e1811355e7179223c99b1f8c0590ef1717da61bd3dd770b86b78b2` |
| 37 | `theorem` | [inf_mem_infs](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/inf-mem-infs.md) | 233 | `result-track:3a9f5039d271c4318014e3d6edaa08933d298ffa51e419ad254e7465ed4c1a60` |
| 38 | `theorem` | [infs_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-subset.md) | 237 | `result-track:95d4fceb1c571cfc74c1b266dd2ffedb34e49a09823528bcb078479e73c60e73` |
| 39 | `theorem` | [infs_subset_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-subset-left.md) | 241 | `result-track:e71b174ffd0234377eeb3c85e7630e066b8ea5c0cb7ef55bfb7472f860972f16` |
| 40 | `theorem` | [infs_subset_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-subset-right.md) | 245 | `result-track:e335582d2b73259fef3eec456819bbfd6e5e875bc2aaed13f9b8bfc73a0a54dd` |
| 41 | `theorem` | [image_subset_infs_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/image-subset-infs-left.md) | 249 | `result-track:f1329528c7779ef0171ef7e402e8c54ee13550be6b3a92a7a79544d61375bf28` |
| 42 | `theorem` | [image_subset_infs_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/image-subset-infs-right.md) | 253 | `result-track:e7839e9de2a3462814ac089e1fda49f4e1c68563bb3c73437277c3c8c699dece` |
| 43 | `theorem` | [forall_infs_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/forall-infs-iff.md) | 257 | `result-track:9928a1c8906f2a635b79a11ec55956bacc294fde2ec486a6fb7723fde338b246` |
| 44 | `theorem` | [infs_subset_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-subset-iff.md) | 262 | `result-track:d4575efdf65a6d84236c757506e84c627c57617dc93a7a8233d823413b4b029e` |
| 45 | `theorem` | [infs_nonempty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-nonempty.md) | 267 | `result-track:d6ae9ddc4513b0deb594618ec8d77f52994f8773e4c00e3713e3830693e09ee6` |
| 46 | `theorem` | [Nonempty.infs](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/nonempty-infs.md) | 271 | `result-track:da8598c24780d31725b7b2666a08c05175375042678ee8d47d89f968f0603c98` |
| 47 | `theorem` | [Nonempty.of_infs_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/nonempty-of-infs-left.md) | 275 | `result-track:d523e203f8d10d992eaa8386938329f1b8aa3f37fc12fb96d60ecbf97ac8f545` |
| 48 | `theorem` | [Nonempty.of_infs_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/nonempty-of-infs-right.md) | 279 | `result-track:20eeaf1bfa804f4762992ab3d2fcc8dcd1c6430f5a95c28962a5266bc01a5cdf` |
| 49 | `theorem` | [empty_infs](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/empty-infs.md) | 284 | `result-track:b179a583ec5649ce0723cc22d62b2467219a7215223ea01eba5f5d1eecd8df8e` |
| 50 | `theorem` | [infs_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-empty.md) | 289 | `result-track:a18324015bdc4626404a1730c90269705b586c4d1ff933c562a8f3671434fea3` |
| 51 | `theorem` | [infs_eq_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-eq-empty.md) | 294 | `result-track:f8091cae6ecc1e18d96e3d838cb01dec2e7546946df665053cc564260e0dc22a` |
| 52 | `theorem` | [singleton_infs](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/singleton-infs.md) | 299 | `result-track:0d952dec221fc49e2cf11e460a743baeb31c9115acedccc49f808e0b11c06ecf` |
| 53 | `theorem` | [infs_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-singleton.md) | 304 | `result-track:b5613bbeecda33953a4e7c94e43fd86ce9ad319f745e132f7c63515823c8f334` |
| 54 | `theorem` | [singleton_infs_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/singleton-infs-singleton.md) | 308 | `result-track:23a2fcccb08e1b46fda7698ba30e7f2909dfc657ca5ba8175743597f246df0f7` |
| 55 | `theorem` | [infs_union_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-union-left.md) | 312 | `result-track:edfec27f11c88ff6ee66ab20640964becdbb273820f445bfbba52614696d08a2` |
| 56 | `theorem` | [infs_union_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-union-right.md) | 316 | `result-track:20a1a211afd7b15ec175dcadc8b5b812b2931a3e2efe74af73c95110db0c06f3` |
| 57 | `theorem` | [infs_inter_subset_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-inter-subset-left.md) | 320 | `result-track:25aa7a43c461a35ef0b22bab0fbc5e88b0ae25797e6aa542d6a9b3c801755992` |
| 58 | `theorem` | [infs_inter_subset_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-inter-subset-right.md) | 324 | `result-track:336113050f0ca4747f355b31555da949d3868e18e6f74fd15215095429ce6434` |
| 59 | `theorem` | [iUnion_image_inf_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/iunion-image-inf-left.md) | 330 | `result-track:6c6d4b259345241590f2b122fa2ef97d8ee403a5075a839366b586297bb6f7ae` |
| 60 | `theorem` | [iUnion_image_inf_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/iunion-image-inf-right.md) | 334 | `result-track:0df0eaa9b06d9dfdd3775c51cc88d395329c7520da4a37babe43ea0392fe0aea` |
| 61 | `theorem` | [image_inf_prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/image-inf-prod.md) | 339 | `result-track:9db242763c026bce9c847d17ebbd895dbdd9eb6f872a0599393a1fd6b4c52aac` |
| 62 | `theorem` | [infs_assoc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-assoc.md) | 346 | `result-track:0fc9308c5a7d381f1f2562062a3e0e9d8e9a6e22c4ef662c02b545303cca8855` |
| 63 | `theorem` | [infs_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-comm.md) | 350 | `result-track:e1d7944a04598a0ffaf50fe10dce49efa6a2f4ffb8565c0d2d55488e06478202` |
| 64 | `theorem` | [infs_left_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-left-comm.md) | 354 | `result-track:62e2101dccc7c9ccaea51fa68330e08f8435ab108993a00a83b87e0b05d6117a` |
| 65 | `theorem` | [infs_right_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-right-comm.md) | 358 | `result-track:e1a03cb2a07f273c51734b25ad0d4cce83e3cd5af75c351c0f40c3a340031833` |
| 66 | `theorem` | [infs_infs_infs_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-infs-infs-comm.md) | 362 | `result-track:6e5a9b5acc76da6f44ba0cbee641e273c0353b8f6ffedb61e7aaf66428515726` |
| 67 | `theorem` | [sups_infs_subset_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-infs-subset-left.md) | 374 | `result-track:3d3c60c1bd2cb1b114dbcd95623a1bd0f4ebd61117fd964c689fe5f1e0c4243b` |
| 68 | `theorem` | [sups_infs_subset_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/sups-infs-subset-right.md) | 378 | `result-track:d0ec341f6fcf6e8044b21a01e4ac67a56afe9ae3f24c1d0324812f6da7dd7915` |
| 69 | `theorem` | [infs_sups_subset_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-sups-subset-left.md) | 382 | `result-track:35dccac07d0a35d65fd7853f95ad1cb48452a49b2cbaa48e599d3fba43e1402e` |
| 70 | `theorem` | [infs_sups_subset_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/infs-sups-subset-right.md) | 386 | `result-track:dcb06f55a20529651e3d3daafaf4b06675573d0123c49594db403760a40a8815` |
| 71 | `theorem` | [upperClosure_sups](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/upperclosure-sups.md) | 397 | `result-track:d99e83f63ac6c67f9d5af543fedfbaabbd8de07dafa9ce4908f84e250110aa2a` |
| 72 | `theorem` | [lowerClosure_infs](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Sups.lean/declarations/lowerclosure-infs.md) | 410 | `result-track:72b69b68d8104f3f9958d82ef86dda33d7e61812553d4065c9de731ba7a3fda0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb1a0a9d2219dda672cebba9f4a20c63ab77d67675d9eb2c00d621262921b1f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variantd99973086e617d41c56e9c3ddb8db34f8e668fb9dfde360ab4ca71c83e8dae4c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variantd99973086e617d41c56e9c3ddb8db34f8e668fb9dfde360ab4ca71c83e8dae4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
