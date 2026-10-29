# Verification target: EMetric Space Lipschitz

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e1275a168c8fa8294167bae8c5928483228c7e9",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/index.md) · [Full source](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e1275a168c8fa8294167bae8c5928483228c7e9`.

Source path: `GRWTSK/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Diam` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LipschitzWith](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/lipschitzwith.md) | 53 | `declaration-track:127342d8fc66fe71b7154b2f813c56b0720b2875951db81117de61498ebe4164` |
| 2 | `def` | [LipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/lipschitzonwith.md) | 57 | `declaration-track:3ef34d00f6122fb16779d70d0b4849d6f3672759d9ce6f63597b4bcb23cde184` |
| 3 | `def` | [LocallyLipschitz](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/locallylipschitz.md) | 62 | `declaration-track:5add35a6651f2a49a9e49bee7ed463830a7231c9db8c34160d791c65f40837da` |
| 4 | `def` | [LocallyLipschitzOn](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/locallylipschitzon.md) | 66 | `declaration-track:8467cf752420705367e26f9def89af06a9c347b0827af78c8021b78900c8a25f` |
| 5 | `theorem` | [lipschitzOnWith_empty](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/lipschitzonwith-empty.md) | 71 | `result-track:7549f61241eeaa0cdab798d72f11e28b2e74229437e16575d13a58f88b773cb6` |
| 6 | `lemma` | [locallyLipschitzOn_empty](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/locallylipschitzon-empty.md) | 73 | `result-track:90187b4681524051e96d9f94147608984a8e454f3125fde44d227199eb0b40ca` |
| 7 | `theorem` | [LipschitzOnWith.mono](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/lipschitzonwith-mono.md) | 76 | `result-track:b3fb77ce49591f6813342beacfa37750ac3e8f641d50f1d071792cf4a27e9cec` |
| 8 | `lemma` | [LocallyLipschitzOn.mono](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/locallylipschitzon-mono.md) | 79 | `result-track:68216928e48afcb71bcde0ad62269d79e93f69013870e39630ebe2450fbb524a` |
| 9 | `lemma` | [lipschitzOnWith_univ](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/lipschitzonwith-univ.md) | 83 | `result-track:4e7fee9882c2dfeb4d33891cfc7880aae3c07212ad2a418f5b1976154de44b4e` |
| 10 | `lemma` | [locallyLipschitzOn_univ](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/locallylipschitzon-univ.md) | 86 | `result-track:019f823bed57f97c66f45b8bad174fd2b0a0857bb0cf5e0eeada7eabd492facb` |
| 11 | `lemma` | [LocallyLipschitz.locallyLipschitzOn](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/locallylipschitz-locallylipschitzon.md) | 89 | `result-track:5408ef59344de74486f3be1f8ffc6ad00a2ab225b60b474ec0a5e6692c7e8124` |
| 12 | `theorem` | [lipschitzOnWith_iff_restrict](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/lipschitzonwith-iff-restrict.md) | 92 | `result-track:de53e308c2a6e8bc46a0f2424173acb5ddabf8f1faa7861c42d9e72c88433761` |
| 13 | `lemma` | [lipschitzOnWith_restrict](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/lipschitzonwith-restrict.md) | 95 | `result-track:a1a42b56bf891c44cb7de75135cecd1bdfc3092da3c8779e5efdfeb6ce2b0208` |
| 14 | `lemma` | [locallyLipschitzOn_iff_restrict](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/locallylipschitzon-iff-restrict.md) | 99 | `result-track:5b53d3104512414f7b3201670ab47bd66fef1a14a6153de0860fb6009351fee9` |
| 15 | `lemma` | [Set.MapsTo.lipschitzOnWith_iff_restrict](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/set-mapsto-lipschitzonwith-iff-restrict.md) | 115 | `result-track:e53097b3586f4d9bead2a8b446426d0874fc9c244b870b412b98be77aba72278` |
| 16 | `theorem` | [lipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/lipschitzonwith-source-edition-2.md) | 130 | `result-track:961ec4ec270a9053705ee97d8a1533f500fcfaa8d3be463b8e120040cde8ded2` |
| 17 | `theorem` | [edist_le_mul](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/edist-le-mul.md) | 133 | `result-track:a2ec38cb1f501e6491793eb5d11d681b50ec4f44f325a769fc16330459fb2f2d` |
| 18 | `theorem` | [edist_le_mul_of_le](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/edist-le-mul-of-le.md) | 136 | `result-track:4ac28afdd620e05d5cf56808715311c259d40954fe928237917d55c9e44ce3d4` |
| 19 | `theorem` | [edist_lt_mul_of_lt](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/edist-lt-mul-of-lt.md) | 140 | `result-track:880193a1643ba0917aa558c664c1950cc582957aa8f3a15d1ae63e383a4ef253` |
| 20 | `theorem` | [mapsTo_emetric_closedBall](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/mapsto-emetric-closedball.md) | 144 | `result-track:1f44ef6f1fd3784bcc2732f7517e11c24c8683678c71b0e5a8d682d05bd5571b` |
| 21 | `theorem` | [mapsTo_emetric_ball](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/mapsto-emetric-ball.md) | 147 | `result-track:1f9885d368340015f180b632d2cde4bc665f0ae098d56df227f349a54aa9f1e8` |
| 22 | `theorem` | [edist_lt_top](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/edist-lt-top.md) | 150 | `result-track:c11914559212308c496bc7b6913854918eb2f5591f436f5da10b4941139a0918` |
| 23 | `theorem` | [mul_edist_le](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/mul-edist-le.md) | 154 | `result-track:a3dab6f313af29c369f259c0bc30c155a6fcee3880379ee78fa858eebfcb4b26` |
| 24 | `theorem` | [of_edist_le](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/of-edist-le.md) | 159 | `result-track:15b09d8c156980b8e9fff53d090461e00ce6a71aa63998d482c8841bf0ade0c6` |
| 25 | `theorem` | [weaken](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/weaken.md) | 162 | `result-track:8939df88453f2c12b572399e6b498259afa2e2e7e0c32e46f5c2510c823e0985` |
| 26 | `theorem` | [ediam_image_le](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/ediam-image-le.md) | 165 | `result-track:db92f50fa9aad2336d59117afc7193681aa0c5d63976b510f1250bc8b7f09189` |
| 27 | `theorem` | [edist_lt_of_edist_lt_div](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/edist-lt-of-edist-lt-div-source-edition-2.md) | 171 | `result-track:8057ba0a2b2dd9675d0743063495c613b3680c9afcfdd832734be1ce5b91859d` |
| 28 | `theorem` | [uniformContinuous](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/uniformcontinuous.md) | 178 | `result-track:1f4c01d785caa2e53ed2ac4ff2ea4a8be10c89822ee9304f43c1419decf030ca` |
| 29 | `theorem` | [continuous](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuous-source-edition-2.md) | 183 | `result-track:7e2561975d2e65a51bdd509b26c70dc8f1397a21184c224825d5ca1615f5098c` |
| 30 | `theorem` | [const](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/const-source-edition-3.md) | 187 | `result-track:da42560e17914c33b1ef6220b2dbb53e31d4a4f4b6178ce87f74917878a956c6` |
| 31 | `theorem` | [const'](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/const.md) | 190 | `result-track:c2b7fedbdf327ce899cfe8c57bfce617aa8410c1245c82b0be204ad1850db9a5` |
| 32 | `theorem` | [id](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/id-source-edition-2.md) | 194 | `result-track:84c5204474136e628a28230d361dfeadd6c8f2bb64bf8608a927ec734e925a84` |
| 33 | `theorem` | [subtype_val](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/subtype-val.md) | 198 | `result-track:055451685d24a7d1f092cd95287f6d43d0e4aa8d89b3307c40bd799c03d52c14` |
| 34 | `theorem` | [subtype_mk](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/subtype-mk.md) | 201 | `result-track:c810a3366e06133cc9bd450d7dccba67666fcf17ea730a4462557f3350d3da74` |
| 35 | `theorem` | [eval](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/eval.md) | 205 | `result-track:bf4907dc92ac363a2a1307e375afc75b75c796019567f1d1e2b6f4567f09a2cf` |
| 36 | `theorem` | [restrict](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/restrict.md) | 210 | `result-track:24ec0e9f86590063ede980ea81133d5899ab65fb6914f3e2c9463271ae708b39` |
| 37 | `theorem` | [comp](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/comp-source-edition-2.md) | 214 | `result-track:5562872671d706672b58d0b94dd1546951f63a4d70f1bfdef574244b316f4bbf` |
| 38 | `theorem` | [comp_lipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/comp-lipschitzonwith.md) | 221 | `result-track:aa046c9f70c702a2eea23c8538bb12a72e239868f1d1475960256f781baf9c01` |
| 39 | `theorem` | [prod_fst](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/prod-fst.md) | 225 | `result-track:cb4c7168c15dbe72e12cff42006eab5e7d4d9f76931837183f92b60cf1fd7b22` |
| 40 | `theorem` | [prod_snd](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/prod-snd.md) | 228 | `result-track:44a907df9fbd3e0bea31afc07482caad3e4b189d670834ae6962fde4363e84fa` |
| 41 | `theorem` | [prodMk](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/prodmk-source-edition-2.md) | 232 | `result-track:5af8faaeed2fa1c347df2ad17e42d31a7387762a87211d418fca9e9d3637b81a` |
| 42 | `theorem` | [prodMk_left](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/prodmk-left.md) | 241 | `result-track:3f1914d2027bf85f0f400106d87facfab87ea0e65d0d6b986f6d09dab5d8337c` |
| 43 | `theorem` | [prodMk_right](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/prodmk-right-source-edition-2.md) | 247 | `result-track:fdcbd6e268dbcf439de0617b5a70f3078959d60c83616a21a50bfbc8fdc1b40b` |
| 44 | `theorem` | [uncurry](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/uncurry.md) | 253 | `result-track:859b120d0e3b06c023275a4995b06629c5d5be735bed25039f78ce911f875939` |
| 45 | `theorem` | [iterate](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/iterate-source-edition-2.md) | 263 | `result-track:5c79649add19ae4f0250aaadb705547d647a2ced06ee1963059e12a40b9fc0df` |
| 46 | `theorem` | [edist_iterate_succ_le_geometric](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/edist-iterate-succ-le-geometric.md) | 267 | `result-track:6be4b9fae741d09e60ee41b85ed083e159123343d612f343212054f3d75f8070` |
| 47 | `theorem` | [mul_end](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/mul-end.md) | 272 | `result-track:5b6447e96caf3637a372a62f9850a9ee7c621c1732f283f647c895c2ecbbd648` |
| 48 | `theorem` | [list_prod](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/list-prod.md) | 278 | `result-track:c3819276a6ffe0ebcac5f443d070a18feaf866a6b350f91388f5ac237629c07c` |
| 49 | `theorem` | [pow_end](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/pow-end-source-edition-2.md) | 285 | `result-track:5e02be839f4bb00e87629f5437a6bef6647b0abb5b8e994de6b1d999c678ce91` |
| 50 | `theorem` | [uniformContinuousOn](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/uniformcontinuouson.md) | 299 | `result-track:9702979a17be691efd26ba5f5b0fa941ee1169b36c7a14cfe0d52dcd7fe3d2a5` |
| 51 | `theorem` | [continuousOn](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuouson-source-edition-2.md) | 302 | `result-track:eb1ff9a7c9c56e730faf957946f10fe742f949995636f89df818d3a9f6060344` |
| 52 | `theorem` | [edist_le_mul_of_le](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/edist-le-mul-of-le-source-edition-2.md) | 305 | `result-track:6d33ce8df1214d72c42b878a9de273ea7a96b50d5f8f3362a3a18091077cd99a` |
| 53 | `theorem` | [edist_lt_of_edist_lt_div](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/edist-lt-of-edist-lt-div.md) | 310 | `result-track:26da625b741c6bc2c52a71280c624f17bd60cdc483e535d8694d7dea7d5e1a21` |
| 54 | `theorem` | [comp](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/comp-source-edition-3.md) | 315 | `result-track:db213200f445f330bcd3531e3b9f245483c03b3d5550a36f28c1b284410bfde3` |
| 55 | `theorem` | [prodMk](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/prodmk.md) | 320 | `result-track:0bdab3ec9440729e78f368ecf52d640079ac16021f53bdacdd81f0178a32f80a` |
| 56 | `theorem` | [ediam_image2_le](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/ediam-image2-le.md) | 329 | `result-track:119914edffbf1c821a61aa4e59e48e642f4e4664aff97457f3d0848de48dbfcb` |
| 57 | `lemma` | [_root_.LipschitzWith.locallyLipschitz](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/root-lipschitzwith-locallylipschitz.md) | 346 | `result-track:6e1d57c91da7fa10593f436f5c793cc7327ea19a6f6daaee9eeb0dd82437b4c3` |
| 58 | `lemma` | [id](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/id.md) | 351 | `result-track:39ae5c5dc53014b05c0d7b571d277b9efb7ba883de29b1c9715a4fafe57bb4bd` |
| 59 | `lemma` | [const](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/const-source-edition-2.md) | 354 | `result-track:cb7fa80e0860ca8bd0fd9932a9b192b3eabc5346bfc7599a2c79342f1be3b517` |
| 60 | `theorem` | [continuous](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuous.md) | 359 | `result-track:0f7b7e33d5af362bc43b05a6a2e586e6a19c4fefa01b04102c3898cd9bfe8a50` |
| 61 | `lemma` | [comp](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/comp.md) | 366 | `result-track:00d55c8df0bbd8e54fbedae82ae79fcf08177ddd2c0279ac6c4a7f8e90646856` |
| 62 | `lemma` | [prodMk](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/prodmk-source-edition-3.md) | 377 | `result-track:613c2e94d70908bd257e9c6240fecd6983d01d04971acdc46d68b6e12fd62873` |
| 63 | `theorem` | [prodMk_left](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/prodmk-left-source-edition-2.md) | 388 | `result-track:bfcf036c60761fa92a7e3e219bf491d49ea299e913866108ab84844703f71b05` |
| 64 | `theorem` | [prodMk_right](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/prodmk-right.md) | 394 | `result-track:1814b52af6ad4fa79a1810fc9b4b30142836561a3505015fbdad0cb7bbe7f81c` |
| 65 | `theorem` | [iterate](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/iterate.md) | 400 | `result-track:1e875e1fa93485c52b8f7e109b2474aa832ca49eecaff678038d155192036cf0` |
| 66 | `theorem` | [mul_end](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/mul-end-source-edition-2.md) | 404 | `result-track:664887deed74cd32c865bf560f0f27a054cad5e2c470dbee2922192660653de1` |
| 67 | `theorem` | [pow_end](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/pow-end.md) | 407 | `result-track:5dc071d94e6e43878fb27c7140855737439c723375b6132baf0d0c52654f5a4f` |
| 68 | `lemma` | [continuousOn](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuouson.md) | 419 | `result-track:69a2fa96dfbac042cc43dc02725df850950eceb14fe25a8eeddf45acecde7b4d` |
| 69 | `theorem` | [continuousOn_prod_of_subset_closure_continuousOn_lipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuouson-prod-of-subset-closure-continuouson-lipschitzonwith.md) | 431 | `result-track:72f282e8cb16e8e65cf8a44e6bb8022f91e3f0f3a6c8e137dba5725ddcfd51ac` |
| 70 | `theorem` | [continuousOn_prod_of_continuousOn_lipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuouson-prod-of-continuouson-lipschitzonwith.md) | 467 | `result-track:6120d6b518138000d1400f8fadb93819ca9e4f406d1cef413ff02a6a7434dc3a` |
| 71 | `theorem` | [continuous_prod_of_dense_continuous_lipschitzWith](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuous-prod-of-dense-continuous-lipschitzwith.md) | 481 | `result-track:1914968fae0e3602a6b81a976d625560907cd8992d56ae7734505fd628928a8e` |
| 72 | `theorem` | [continuous_prod_of_continuous_lipschitzWith](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuous-prod-of-continuous-lipschitzwith.md) | 495 | `result-track:234d2c053a37de4a2c776131e3eef83cbb480b99bfa3114090694c064a45ced5` |
| 73 | `theorem` | [continuousOn_prod_of_subset_closure_continuousOn_lipschitzOnWith'](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuouson-prod-of-subset-closure-continuouson-lipschitzonwith-source-edition-2.md) | 500 | `result-track:f9d9a334f3b66eae5af884e8434431375afbeced98b603743e1a2990f23583e8` |
| 74 | `theorem` | [continuousOn_prod_of_continuousOn_lipschitzOnWith'](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuouson-prod-of-continuouson-lipschitzonwith-source-edition-2.md) | 509 | `result-track:bacf78d8dc624e736719d9ead1d9b3f30dccb1dcde673b633c63bac191ff81c3` |
| 75 | `theorem` | [continuous_prod_of_dense_continuous_lipschitzWith'](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuous-prod-of-dense-continuous-lipschitzwith-source-edition-2.md) | 517 | `result-track:b1bed05fb708d52a47bd900597f38454a99b404ccac3488437baf7a9e6077261` |
| 76 | `theorem` | [continuous_prod_of_continuous_lipschitzWith'](../../../../GeneralTopology/EMetricSpaceLipschitz.lean/declarations/continuous-prod-of-continuous-lipschitzwith-source-edition-2.md) | 525 | `result-track:f52b8d4c7ac5fbb0eada19d18f289824862bd3d1081018bd5f60ecf558effe17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7af4dcbd292debbf4e5757213d491302ff028abc0e018f65e22eb2e1dc0f722a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
