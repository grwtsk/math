# Verification target: Measure Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "548f04f0fe20ee867ddf4ec83bd7a5c9c82ae8c1",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `548f04f0fe20ee867ddf4ec83bd7a5c9c82ae8c1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Real/Variant2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.SFinite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Finiteness` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measureReal_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-eq-zero-iff.md) | 37 | `result-track:bfa2c7a5844b230d621c16cd11bb08466ebe83bf23d17b4ac85385e35d67e418` |
| 2 | `theorem` | [measureReal_ne_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-ne-zero-iff.md) | 42 | `result-track:dc4e29942a716678149def9d28ac0569eb22241ada7eb8eaa057d4ad77688300` |
| 3 | `theorem` | [measureReal_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-zero.md) | 46 | `result-track:9deda63de0ff206b49d36226afdd4c3466fe2a42efc0b4b4ec4b707b33d17d64` |
| 4 | `theorem` | [measureReal_zero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-zero-apply.md) | 48 | `result-track:57184b0bb72939d18adc12026adb887e63b5c2ca18c4cb75761aa1d0e3bc9f48` |
| 5 | `theorem` | [measureReal_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-nonneg.md) | 50 | `result-track:396fee37f9d85c08c4b9d6fb6426aeb8808479a98b9cdb20d576d4bbcebaf3d6` |
| 6 | `theorem` | [measureReal_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-empty.md) | 52 | `result-track:181f608fc668faab08e478d3b42076cbc5c62ddadeb33484b651dd2741f006dc` |
| 7 | `theorem` | [measureReal_univ_eq_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-univ-eq-one.md) | 54 | `result-track:60566d5cdbd56ca9303942f57295e4a8ca2c99a709382c5bb8f195277c190354` |
| 8 | `theorem` | [measureReal_univ_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-univ-pos.md) | 59 | `result-track:876639f9ae59138b48776326573da0fd9d5aff8947a7e7cf5012852e22a305fe` |
| 9 | `theorem` | [measureReal_univ_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-univ-ne-zero.md) | 62 | `result-track:473df343a131e1c487be1fbcf7a3a7a75aae46591bcccefad83b89ad10e48596` |
| 10 | `theorem` | [ofReal_measureReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/ofreal-measurereal.md) | 66 | `result-track:2b420cd20013a4740fa11108b2e59a73cc441fb5fc1209034dbc28e7fed78eff` |
| 11 | `theorem` | [nonempty_of_measureReal_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/nonempty-of-measurereal-ne-zero.md) | 69 | `result-track:9f99ff19bac267e7231f50db75e043b456e1133d30682fddafea1f762e3b113f` |
| 12 | `theorem` | [measureReal_ennreal_smul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-ennreal-smul-apply.md) | 72 | `result-track:45e806f8df319f01b98a2df8ae5da4c6ef3dc455dbb1d11f8a3ccb01d91e83ba` |
| 13 | `theorem` | [measureReal_nnreal_smul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-nnreal-smul-apply.md) | 76 | `result-track:23bbbaa6ea396618618c0f43d431c23cfdb224bf1eb6d8debb4dd3914a3a98ec` |
| 14 | `theorem` | [map_measureReal_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/map-measurereal-apply.md) | 80 | `result-track:3df9e15914ae0216d210cc632fb52f2f5bfa5ed4fb56f0711d606c53a21d12a0` |
| 15 | `theorem` | [measureReal_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-mono.md) | 84 | `result-track:a3c64a6ff9c27869f1b252d8eaecfba00c277082fdb7a075c4efac384118d5ca` |
| 16 | `theorem` | [measureReal_eq_measureReal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-eq-measurereal-iff.md) | 88 | `result-track:849926885a6786eabd3663a2f48f394c2ec2d6a04a4fd670e55d553082563a38` |
| 17 | `theorem` | [measureReal_restrict_apply₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-restrict-apply-source-edition-3.md) | 93 | `result-track:b4590e54e83deaeed8c296b11f4f2d7a078781118cfa950e8971faa63b2b4627` |
| 18 | `theorem` | [measureReal_restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-restrict-apply-source-edition-2.md) | 98 | `result-track:5b14fd68290d459f8c0fd8b4126559e2d542b05d6d84b2d6a857b3c550e1f9bf` |
| 19 | `theorem` | [measureReal_restrict_apply_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-restrict-apply-univ.md) | 102 | `result-track:2105e1a1dd1ca055dc16a2ab4a62f5854a038c60af9827624e893c6c0067508f` |
| 20 | `theorem` | [measureReal_restrict_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-restrict-apply-source-edition-4.md) | 106 | `result-track:b5fdbc18b9f0810b6ee14a37a6e49e0f755408859f4c2836d822a8cfe415d699` |
| 21 | `theorem` | [measureReal_restrict_apply₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-restrict-apply.md) | 110 | `result-track:0c87552fe077c5b7b713c755d2b1491459d7db867c94b7cca1147d132bfc7024` |
| 22 | `theorem` | [measureReal_restrict_apply_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-restrict-apply-self.md) | 114 | `result-track:697043ecbcf20b6065bfd8ac342534a3488a9aba57204f0545948b1debc76ba8` |
| 23 | `theorem` | [measureReal_mono_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-mono-null.md) | 117 | `result-track:44b2772bf504562e3afcda3af28569dfac5a0e5b0d68a9a8a095e306907fc655` |
| 24 | `theorem` | [measureReal_le_measureReal_union_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-le-measurereal-union-left.md) | 122 | `result-track:b39256ab7e75d460b598304450f9fdceb51ed5088fa9992ae5316be4ecc33568` |
| 25 | `theorem` | [measureReal_le_measureReal_union_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-le-measurereal-union-right.md) | 128 | `result-track:48bb1b48235fc5e9d9be2bc40a2e886e1328e164857327f4e1a7a2ef6a913568` |
| 26 | `theorem` | [measureReal_union_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-le.md) | 133 | `result-track:fece00c3eb8805d7face6fab8176ce516288d462727490628e1bbfba38708fb0` |
| 27 | `theorem` | [measureReal_biUnion_finset_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-biunion-finset-le.md) | 142 | `result-track:7883915dade9c56a2ad24778701c0e7493489d7c85e1ef282db38282e404d896` |
| 28 | `theorem` | [measureReal_iUnion_fintype_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-iunion-fintype-le.md) | 152 | `result-track:d35b07deb4038f37e3a5d8a319f0b49eae4f088ca67c2b461d3fbb610f706349` |
| 29 | `theorem` | [measureReal_iUnion_fintype](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-iunion-fintype.md) | 157 | `result-track:c17a73a8df68de010ca522a8d32033d5ebc30edfe91a2f15312e9f29d3edd3ba` |
| 30 | `theorem` | [measureReal_union_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-null.md) | 163 | `result-track:059130b7d93331cb29914229dde6b47049eeedf997125377b237747d966f2796` |
| 31 | `theorem` | [measureReal_union_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-null-iff.md) | 168 | `result-track:cdc1094fdf54f78ad83004ff74b5fde9c3c58644efc6a006bea213ac23c26b83` |
| 32 | `theorem` | [measureReal_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-congr.md) | 176 | `result-track:7ac1ad1a0fce39dab3e2cf222246194224517e2c15e85167079f4c03ae01efac` |
| 33 | `theorem` | [measureReal_inter_add_diff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-inter-add-diff-source-edition-2.md) | 179 | `result-track:a4575e3ccaae090cb0460c847920a8766d19de7badee496dd89ebaa0da1a73da` |
| 34 | `theorem` | [measureReal_union_add_inter₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-add-inter-source-edition-4.md) | 187 | `result-track:d3cea8d6d8f3468511c1d85b093c9c2dff6d062d74de41a038c9db0c9613f676` |
| 35 | `theorem` | [measureReal_union_add_inter₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-add-inter-source-edition-2.md) | 196 | `result-track:736107d933196110f6a9374838e3cfcb174b9dabe559adf9b1a2f868576b44f1` |
| 36 | `theorem` | [measureReal_union₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-source-edition-4.md) | 201 | `result-track:fcc47f660aa916d6a8da76fc185d97b910ee79e62bf67981699f1c9f1820b3ec` |
| 37 | `theorem` | [measureReal_union₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union.md) | 207 | `result-track:21c32120a2068fc2cde75660c3f91e173233dfa659cdc8a6d7e0dfd4f6a2cf78` |
| 38 | `theorem` | [measureReal_add_measureReal_compl₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-add-measurereal-compl.md) | 212 | `result-track:6dfeb2f75618308b992b60a3390a75bcd5a0896ff6fcbaaf401ea50f7532e034` |
| 39 | `theorem` | [measureReal_add_measureReal_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-add-measurereal-compl-source-edition-2.md) | 216 | `result-track:8461ecbb75b0b1333562cf2beb334673e088c52fc5492b1e8d1801c9676257d3` |
| 40 | `theorem` | [measureReal_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-source-edition-3.md) | 220 | `result-track:caa3494ce21bb02c75368028052675d1153beb6369f24e7dded105a4cc80b90b` |
| 41 | `theorem` | [measureReal_union'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-source-edition-2.md) | 225 | `result-track:52832323c90c14b4eb2b0844e8110051ceaac87f52a55bc0fd0413dd6c749e94` |
| 42 | `theorem` | [measureReal_inter_add_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-inter-add-diff.md) | 230 | `result-track:9bc4d7d4d351320ba336f2d6f16409e94b9620ac8c0606c80cf5b7ea3075f5d8` |
| 43 | `theorem` | [measureReal_diff_add_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-diff-add-inter.md) | 238 | `result-track:f83e971a866f936c5f728ec9cf994f448f6dfcc5cc1b3f857ba86b4f31f8f338` |
| 44 | `theorem` | [measureReal_union_add_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-add-inter.md) | 243 | `result-track:6c3d268c0d6b5b77a38a66cf92fc4ba82831bb713e5d9c0a78829f5044db68d0` |
| 45 | `theorem` | [measureReal_union_add_inter'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-add-inter-source-edition-3.md) | 248 | `result-track:a9f409b3c86db789cd0b142a77d6fb3947f0534e564f2b7a88402d348c1c02eb` |
| 46 | `lemma` | [measureReal_symmDiff_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-symmdiff-eq.md) | 253 | `result-track:9dc9fa97c92caca2a1e82e9629f55c5a04217b8567e0fda810733237b5597946` |
| 47 | `lemma` | [measureReal_symmDiff_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-symmdiff-le.md) | 261 | `result-track:1de53338a4fcbecf7c8b9c2be1ba376cec4f0bb23e119267502aa340fddb94e8` |
| 48 | `theorem` | [measureReal_biUnion_finset₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-biunion-finset.md) | 271 | `result-track:481f798ac752b693080dc208e9ec297e5b293c324bcd53742cf1ae0903e6d9b0` |
| 49 | `theorem` | [measureReal_biUnion_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-biunion-finset-source-edition-2.md) | 277 | `result-track:6d58cf8794547d1523586e7a8573aaf3ebf936c73f919260aec2b2bdd5025f48` |
| 50 | `theorem` | [sum_measureReal_preimage_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/sum-measurereal-preimage-singleton.md) | 284 | `result-track:b4621a1d8493e159f7a517a75feb58fba71ccc07a2af8d1baf9a963f4cbcd25e` |
| 51 | `theorem` | [sum_measureReal_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/sum-measurereal-singleton.md) | 291 | `result-track:a8675a3c98fd9cb144ab02a2516d6568d7f83e239084c79ce020024346b4a23b` |
| 52 | `theorem` | [measureReal_diff_null'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-diff-null-source-edition-2.md) | 296 | `result-track:de0244890343d70495c6a3297e93626c6ccec33286b40e75cee3247be1c06a57` |
| 53 | `theorem` | [measureReal_diff_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-diff-null.md) | 302 | `result-track:984c3751811415186d2b955253feb8a3720ecde11df6dcd71a4e934302877539` |
| 54 | `theorem` | [measureReal_add_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-add-diff.md) | 308 | `result-track:0e0b464f9b08217501a487baf093a739d46e63d69466e4ef16e027d80a666133` |
| 55 | `theorem` | [measureReal_diff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-diff.md) | 314 | `result-track:64111af80aba2ee08ef634b83dee6819ec3259cc5e3b53084a407315de848437` |
| 56 | `theorem` | [measureReal_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-diff-source-edition-2.md) | 320 | `result-track:ebbab2e8a08fffd96e0a0d1ad9eb0b6f734e9f8e14f502161927f1470b0f3b93` |
| 57 | `theorem` | [le_measureReal_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/le-measurereal-diff.md) | 324 | `result-track:8ebd3e185a4709f521a3ae149a40fb8fd5c9cfa034079113c9c99e3c0911a499` |
| 58 | `theorem` | [measureReal_diff_lt_of_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-diff-lt-of-lt-add.md) | 332 | `result-track:54980ecc4bcd84e4779706bd76cdd1e87cc19f6e1d5ef4e501e3387be921ec97` |
| 59 | `theorem` | [measureReal_diff_le_iff_le_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-diff-le-iff-le-add.md) | 337 | `result-track:142fefc749d0cebb50721d4e2101cff59af3560ff8fd7253de2fef00f6b3e440` |
| 60 | `theorem` | [measureReal_eq_measureReal_of_null_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-eq-measurereal-of-null-diff.md) | 342 | `result-track:278baa2a7559a985238c0186e4b968a7128ac63c5a9957db9c51033e4d067c31` |
| 61 | `theorem` | [measureReal_eq_measureReal_of_between_null_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-eq-measurereal-of-between-null-diff.md) | 348 | `result-track:ed4de4d6057fcc896679b722ebcf4fd34d5b1e4f00062bf4c5aea5d6a4f06973` |
| 62 | `theorem` | [measureReal_eq_measureReal_smaller_of_between_null_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-eq-measurereal-smaller-of-between-null-diff.md) | 356 | `result-track:0217672b52dbb426f31e96c1b0c851826eaa2d12eb9eb4c2bb7b07dd97ce2c3c` |
| 63 | `theorem` | [measureReal_eq_measureReal_larger_of_between_null_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-eq-measurereal-larger-of-between-null-diff.md) | 362 | `result-track:f031a5fe6183ac7a654933f60a8701c91f4ed46cabd32703083cfe422d7136ad` |
| 64 | `theorem` | [measureReal_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-compl.md) | 367 | `result-track:77ad3e4be8881446e4af1c0b976287f2ecea7089fba48ee174d4e9a584aef484` |
| 65 | `theorem` | [measureReal_union_congr_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-union-congr-of-subset.md) | 372 | `result-track:2d3523fa4746ae3bf1e5ded51e5262676b8cccf9dfcef38db1fa5abe39e92ee5` |
| 66 | `theorem` | [sum_measureReal_le_measureReal_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/sum-measurereal-le-measurereal-univ.md) | 381 | `result-track:1cbcdb72e432c0e1122ed3ab567e1fea797629c7ac038cc4550d9b6269eab6c5` |
| 67 | `theorem` | [measureReal_add_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/measurereal-add-apply.md) | 389 | `result-track:cae6f308133f190dba6612aee5298face1a4383e860cce9a95c1e39d4e82815a` |
| 68 | `theorem` | [exists_nonempty_inter_of_measureReal_univ_lt_sum_measureReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/exists-nonempty-inter-of-measurereal-univ-lt-sum-measurereal.md) | 396 | `result-track:263f60132e5dfb17afa21345ef9cd9ee16624e8ffbbb4e719dcbd13ab2151494` |
| 69 | `theorem` | [nonempty_inter_of_measureReal_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/nonempty-inter-of-measurereal-lt-add.md) | 411 | `result-track:1089898c5035d742ddf5fe19742d51b2f7d76a5d758571ffe7231aa64b2a8984` |
| 70 | `theorem` | [nonempty_inter_of_measureReal_lt_add'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/nonempty-inter-of-measurereal-lt-add-source-edition-2.md) | 424 | `result-track:a6b97a6d435211603da19791aabd6199ac003abf37161dc83985fd50d16926e9` |
| 71 | `def` | [evalMeasureReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureReal.lean/declarations/evalmeasurereal.md) | 440 | `declaration-track:ee945040ed75cc1f3942be315f66086c98477fbc14831a3847b2ab2d3eebc44d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb8ee7ca3717e82d32350c9e24be26510f17fc8f638e97df8e39eb86ea88756f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Real/Variant2f5b1a548133dea7dc1b4d291473edc4ac9e90e745d709740e183f979c146126.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
