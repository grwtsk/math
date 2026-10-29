# Verification target: EMetric Space Lipschitz Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3a3609162dd90ead76018e112eb68ea713ba84c",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3a3609162dd90ead76018e112eb68ea713ba84c`.

Source path: `GRWTSK/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean.json)

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
| 1 | `def` | [LipschitzWith](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/lipschitzwith.md) | 68 | `declaration-track:86f762e5a3130ca3a4fb39fae17621161b95dae1d29c2c7e508c31438dd0564b` |
| 2 | `def` | [LipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/lipschitzonwith.md) | 72 | `declaration-track:75dd21cabbb1fffd35b0d6d7e23adc762ce377ec7b4fa8d48bb514259f40caad` |
| 3 | `def` | [LocallyLipschitz](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/locallylipschitz.md) | 77 | `declaration-track:f714dcdbfb230b902a484d9d47ba0e368122ccf9eb9118a3103fb5afdddbe306` |
| 4 | `def` | [LocallyLipschitzOn](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/locallylipschitzon.md) | 81 | `declaration-track:00372e6f677ee9a5ff332b57565e6c6b05ee7eba20556d5690366fb2a46577ff` |
| 5 | `theorem` | [lipschitzOnWith_empty](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/lipschitzonwith-empty.md) | 86 | `result-track:9dd48eaf1f5796050ad4d0e76d94789f51b30bf83ded36f5512fdc5fe2f99570` |
| 6 | `lemma` | [locallyLipschitzOn_empty](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/locallylipschitzon-empty.md) | 88 | `result-track:819206cdea54b008c2c3be027fa71b137039d1ee86d6b2d2a0e38fb9bdd54aef` |
| 7 | `theorem` | [LipschitzOnWith.mono](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/lipschitzonwith-mono.md) | 91 | `result-track:1b68966cab0efc069ca7059d5cda9c4ed3adf326dad3e53abe72c672c6d6f666` |
| 8 | `lemma` | [LocallyLipschitzOn.mono](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/locallylipschitzon-mono.md) | 94 | `result-track:ebcdb0fc522fbac8d00f875d50de5674774293da7a614a36ecf6c26495278ee5` |
| 9 | `lemma` | [lipschitzOnWith_univ](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/lipschitzonwith-univ.md) | 98 | `result-track:53c116fa7909f8986932ccafbb00dcfbfdff8d10f4f02b41d83497e6af7a9470` |
| 10 | `lemma` | [locallyLipschitzOn_univ](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/locallylipschitzon-univ.md) | 101 | `result-track:c4a7df47ccba44c7416d70d4cbadbc2b31b7bf8b5722f9be56dda80956cb0a91` |
| 11 | `lemma` | [LocallyLipschitz.locallyLipschitzOn](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/locallylipschitz-locallylipschitzon.md) | 104 | `result-track:4fb4ff01eb059ef3e5e4edfd22eeb10788d3b04511ddc1f2b2f19c6debce9599` |
| 12 | `theorem` | [lipschitzOnWith_iff_restrict](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/lipschitzonwith-iff-restrict.md) | 107 | `result-track:6f5aa498ea0d32e11f88d32d52d9e1dbb5389e3d7dc806e3a20929ae41053266` |
| 13 | `lemma` | [lipschitzOnWith_restrict](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/lipschitzonwith-restrict.md) | 111 | `result-track:3cfc576eb2de2674506cc4bd0f87e429da93e2877fab4af424d4d66c0ec60f2d` |
| 14 | `lemma` | [locallyLipschitzOn_iff_restrict](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/locallylipschitzon-iff-restrict.md) | 115 | `result-track:ae0a15b4f06c765ea1a56d77a82bb6c3b67fca9c6428e543901d1f80989871b9` |
| 15 | `lemma` | [Set.MapsTo.lipschitzOnWith_iff_restrict](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/set-mapsto-lipschitzonwith-iff-restrict.md) | 131 | `result-track:446f73bc171ac39cd4e0e154dc983113aae2c0ba3b47e767cdd497c9a64f45d3` |
| 16 | `theorem` | [lipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/lipschitzonwith-source-edition-2.md) | 146 | `result-track:a60f7821bd36a2fb725585716128ff4da795c696f2e2cfebe866066da27e8b15` |
| 17 | `theorem` | [edist_le_mul](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/edist-le-mul.md) | 149 | `result-track:d37a3b7c0859f881d8ccfe0f8135ca43002d3c37c8e1d1bca91bc9b38a052d64` |
| 18 | `theorem` | [edist_le_mul_of_le](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/edist-le-mul-of-le.md) | 152 | `result-track:3aa7540555b6d2fe20b03733ecfa0a4b5c7d0973ad73f754952816e16c715b38` |
| 19 | `theorem` | [edist_lt_mul_of_lt](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/edist-lt-mul-of-lt.md) | 156 | `result-track:abf93444064bba2d797fc97fd4e00a375187023d292bc5b15af9bdaf0c7c4473` |
| 20 | `theorem` | [mapsTo_closedEBall](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/mapsto-closedeball.md) | 159 | `result-track:34362870e5c662aa975034dd8febab34428fea711b206106205d63eaf046c182` |
| 21 | `theorem` | [mapsTo_eball](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/mapsto-eball.md) | 162 | `result-track:d98084240cfdd23d570b39226bd602553a031a6db0cb8472fbcb1d927cbe9543` |
| 22 | `theorem` | [edist_lt_top](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/edist-lt-top.md) | 165 | `result-track:addf6a2d15267f57f15916e50f56dcb52ece791501da4f01402c414c6ad56949` |
| 23 | `theorem` | [mul_edist_le](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/mul-edist-le.md) | 169 | `result-track:1802097a0c24e9249e454c43ac25a9d9664268692ef90eaffedb5a3a7d4a0aa2` |
| 24 | `theorem` | [of_edist_le](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/of-edist-le.md) | 174 | `result-track:c408e1c24b164e7348401075e92b7539eb3b8b8938900f8a7736b64f686e86f7` |
| 25 | `theorem` | [weaken](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/weaken.md) | 177 | `result-track:294d83c392f11c6472d40593d40f8756dab770751bc7aef2c91030a929631154` |
| 26 | `theorem` | [ediam_image_le](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/ediam-image-le.md) | 180 | `result-track:04d4280d8978b71389b9219a38fcf85db8b17b870f15c0e4a14de47adc5796e3` |
| 27 | `theorem` | [edist_lt_of_edist_lt_div](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/edist-lt-of-edist-lt-div.md) | 186 | `result-track:4fa283d2f2d2fcfa5e2a0f15978acd7c61c1ad93a3dccf16ea3dd54ede7e1b0a` |
| 28 | `theorem` | [uniformContinuous](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/uniformcontinuous.md) | 193 | `result-track:d510ed0f3a9bbf1a2f92c42ce9ed18f224dc6e359d2ac4bc1e320438f7550bf5` |
| 29 | `theorem` | [continuous](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuous.md) | 198 | `result-track:9ac3cfd5dbcaa0949e9407d3df28d7a8882dafd0c710566b2afdca457110d816` |
| 30 | `theorem` | [const](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/const.md) | 202 | `result-track:14601f54cc0c52e6c2494aba04daf354da864c1d21a9979e9ed3d4ff78e51968` |
| 31 | `theorem` | [const'](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/const-source-edition-2.md) | 205 | `result-track:1d321cf3c5eb9ed6ea168ec7050150c782234e1748ecdcb90e2ffa948d6f1043` |
| 32 | `lemma` | [zero_iff](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/zero-iff-source-edition-2.md) | 209 | `result-track:d498237044b6379d06f51023e11854e0fb6a7dbcc6244c67f5789dcd363c8f53` |
| 33 | `theorem` | [id](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/id.md) | 213 | `result-track:46bac2cfa6fdcaebc5787d318cab3f7f792d37edaaad80a13ec44f9f361b98c2` |
| 34 | `theorem` | [subtype_val](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/subtype-val.md) | 217 | `result-track:35912b6ecb71f851bbc90650b2ab7100456e9013d35fbd7fc59bd67d63fbb3ea` |
| 35 | `theorem` | [subtype_mk](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/subtype-mk.md) | 220 | `result-track:da3fc0aa4ee8208eb8c31135a3f408c4f38152c40875ce59f3e08f4924d82110` |
| 36 | `theorem` | [eval](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/eval.md) | 224 | `result-track:22030f223f7279153bcbdbe7d6278be3e14d2f484575adcaf697096400903be2` |
| 37 | `theorem` | [restrict](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/restrict.md) | 229 | `result-track:8ec2a98170e74e6cb68d08d15a8910038abcaa82ea06fc25810f2a6a1805ade8` |
| 38 | `theorem` | [comp](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/comp-source-edition-2.md) | 233 | `result-track:b57885de9ba82123488f71a68cbe8162cb59310fe265e14530052bc91b8fd46c` |
| 39 | `theorem` | [comp_lipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/comp-lipschitzonwith.md) | 240 | `result-track:13ad776052a07beaf465381550748bf946a88dfc728f4548e7ce794138fcc175` |
| 40 | `theorem` | [prod_fst](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/prod-fst.md) | 244 | `result-track:36b05d64ac4ff54ce168c58a7208ba0595bcda49ce65d66260fe4bbc83c9a1a7` |
| 41 | `theorem` | [prod_snd](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/prod-snd.md) | 247 | `result-track:a303ac2fc700b8016ace6d7414e19437bf6f961f8fa8a419819b0f298d22c023` |
| 42 | `theorem` | [prodMk](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/prodmk-source-edition-2.md) | 251 | `result-track:b8f3512f8dc2facf90b13450287a9dda9a739354ffbe5cf81b385eda4dc25ddd` |
| 43 | `theorem` | [prodMk_left](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/prodmk-left-source-edition-2.md) | 257 | `result-track:9f398140d6340d7f8d8e8c73e9055962841a18c89bb6ce9a8661ff45a8139971` |
| 44 | `theorem` | [prodMk_right](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/prodmk-right-source-edition-2.md) | 260 | `result-track:aaa711950991e7d972923aa558c3950d05dfe088197a8946ce4d3d7eb7a1f3e4` |
| 45 | `theorem` | [uncurry](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/uncurry.md) | 263 | `result-track:8d272bc34d8e420b8b3e3ec801356f190ddccbb0f3af969a8ba9aea3db13b399` |
| 46 | `theorem` | [iterate](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/iterate.md) | 273 | `result-track:a8c82286480f3eced769e4e880b62e8e2778b71ec345da6984afc0d556634168` |
| 47 | `theorem` | [edist_iterate_succ_le_geometric](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/edist-iterate-succ-le-geometric.md) | 277 | `result-track:8fcb2b6290b8d7a4a21de024a54497ff93a168c7e5cf5b004b5b4deb27c72938` |
| 48 | `theorem` | [mul_end](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/mul-end.md) | 282 | `result-track:09a3460b79b17795009159d2fe7029012827cd5a0cd81bc5513c8b3cf508d36f` |
| 49 | `theorem` | [list_prod](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/list-prod.md) | 288 | `result-track:d4b987739cb913c674dbfc47375a85137db95abf1e5c81b5c0789557c88f856e` |
| 50 | `theorem` | [pow_end](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/pow-end-source-edition-2.md) | 295 | `result-track:e2399064da2c5b6cb2121b117f3f65fc1a8086966fdc3e329babeb6d3afe0076` |
| 51 | `lemma` | [zero_iff](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/zero-iff.md) | 310 | `result-track:4b22672d479b8272a83507e6714625473c0dd3f2b609b53eb0fa9b6ad3cbcb46` |
| 52 | `theorem` | [uniformContinuousOn](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/uniformcontinuouson.md) | 314 | `result-track:c0719008d1c4ea572daee2e51c62425d90c672d083f7c0738bd480c8c8fdf28b` |
| 53 | `theorem` | [continuousOn](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuouson-source-edition-2.md) | 317 | `result-track:e98aa942383108df7d8652c84b54decca954e3853875987f590ee6b8a0717902` |
| 54 | `theorem` | [weaken](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/weaken-source-edition-2.md) | 320 | `result-track:a98bcbf440b44efb4dfb76941cb63be609d36bf7a7a292c713f14e7514d07749` |
| 55 | `theorem` | [edist_le_mul_of_le](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/edist-le-mul-of-le-source-edition-2.md) | 324 | `result-track:d673e0873a06ddf5a6e97edc398fd81c585c7f313336981d70d3c131fce3c627` |
| 56 | `theorem` | [edist_lt_of_edist_lt_div](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/edist-lt-of-edist-lt-div-source-edition-2.md) | 329 | `result-track:faeb1b708558594fe52a4247dd25270628adac7c87391f0db8de7a8923d60068` |
| 57 | `theorem` | [comp](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/comp.md) | 333 | `result-track:7e116e193f4009256ebbf6a93a3d762cddeec4118b500b3e2fb01ec8f48f86ba` |
| 58 | `theorem` | [prodMk](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/prodmk-source-edition-3.md) | 338 | `result-track:d3560aabe54b17b7519dd2995c9020d5c2f7a1c81557769c7b449e0fee9bfaac` |
| 59 | `theorem` | [ediam_image2_le](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/ediam-image2-le.md) | 344 | `result-track:f7db164eb0d727674f108fcc19fce914e5ddc45a785455cdb5b3597475a07954` |
| 60 | `lemma` | [EMetric Space Lipschitz Namespaced Public](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/locallylipschitz-source-line-361-occurrence-2.md) | 361 | `result-track:1ca7ee7f12f132f9e2abf2cbb52427e5be512d33c05d04cfa563c4ad2c08454f` |
| 61 | `lemma` | [id](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/id-source-edition-2.md) | 366 | `result-track:b7c9bd5f61027d4e336709896ed6d277acf3498f202a48a02adb072e39b432cf` |
| 62 | `lemma` | [const](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/const-source-edition-3.md) | 369 | `result-track:f478bc03fe0dd145aaaab275b3d4414d5056b2c2797002fd7cccc883b320857c` |
| 63 | `theorem` | [continuous](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuous-source-edition-2.md) | 374 | `result-track:e9ef7befea4c9c4a5f5ee443a043aa67db144383eaf12ca31169d980a308e2e5` |
| 64 | `lemma` | [comp](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/comp-source-edition-3.md) | 381 | `result-track:da154d2cee09cf4cdd1cc1beecbfa1a6ab542606f3f298a6311cd33b6b46f664` |
| 65 | `lemma` | [prodMk](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/prodmk.md) | 392 | `result-track:63a249dc98e56136aa68e84c71b9674513b48cba0c1e208b2a38ad445eb09ce7` |
| 66 | `theorem` | [prodMk_left](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/prodmk-left.md) | 400 | `result-track:7d9fd58dcd2d8502bde0e57378f9d62e121b0667182dfcb968cd49cb4d7e2521` |
| 67 | `theorem` | [prodMk_right](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/prodmk-right.md) | 403 | `result-track:8cedcd104d9f47531ea8b0f326323aef9edc22565a4ec77d02ba0a5c3aacc27f` |
| 68 | `theorem` | [iterate](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/iterate-source-edition-2.md) | 406 | `result-track:b43b542d7efe058d95d89226a57c2071ff0c7a17f02d41e2dd74bf1b89b1768d` |
| 69 | `theorem` | [mul_end](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/mul-end-source-edition-2.md) | 410 | `result-track:e76d19ab0d319cb76cd3849c97dc998ec142f0614c918494410964c0509ab6a8` |
| 70 | `theorem` | [pow_end](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/pow-end.md) | 413 | `result-track:93cc4d79eaf1a3b379b123b0cebdc6f9c64c9e3795487859a6ac7fadb0d71ca5` |
| 71 | `lemma` | [continuousOn](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuouson.md) | 425 | `result-track:624359deecc71a5afd2fa7787c19a53bdd25dd8de78da28a82843a0fd2a3deda` |
| 72 | `theorem` | [continuousOn_prod_of_subset_closure_continuousOn_lipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuouson-prod-of-subset-closure-continuouson-lipschitzonwith.md) | 437 | `result-track:923870b20eabdfcdcaae9313651244de6f6b8e8bf75f73d7098919c779c32cfa` |
| 73 | `theorem` | [continuousOn_prod_of_continuousOn_lipschitzOnWith](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuouson-prod-of-continuouson-lipschitzonwith-source-edition-2.md) | 473 | `result-track:a6227ca4dcb4d2df16d7cf3c380b3e0c6530ba331817b89766a88133bad1cd45` |
| 74 | `theorem` | [continuous_prod_of_dense_continuous_lipschitzWith](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuous-prod-of-dense-continuous-lipschitzwith.md) | 487 | `result-track:510e7ef0c6828913a858afc16c330a85c207d4542ca051ce5eac886930d3d0f5` |
| 75 | `theorem` | [continuous_prod_of_continuous_lipschitzWith](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuous-prod-of-continuous-lipschitzwith.md) | 501 | `result-track:288e4484bac6f041cc72ddcadb6a4beeae22212ea230db6fc04af2151ad04401` |
| 76 | `theorem` | [continuousOn_prod_of_subset_closure_continuousOn_lipschitzOnWith'](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuouson-prod-of-subset-closure-continuouson-lipschitzonwith-source-edition-2.md) | 506 | `result-track:b72555eae3f4841c845b63adabf60a222140113bea37643c2c52a1720ca10907` |
| 77 | `theorem` | [continuousOn_prod_of_continuousOn_lipschitzOnWith'](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuouson-prod-of-continuouson-lipschitzonwith.md) | 515 | `result-track:9b4224a2890684b23deced0c09e3354d660286f143e9a27c4813df181a3aa088` |
| 78 | `theorem` | [continuous_prod_of_dense_continuous_lipschitzWith'](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuous-prod-of-dense-continuous-lipschitzwith-source-edition-2.md) | 523 | `result-track:7f134aa69eaadc3e1de086b488987caeefe60f12665286ccdcf85f4eef11f07c` |
| 79 | `theorem` | [continuous_prod_of_continuous_lipschitzWith'](../../../../GeneralTopology/EMetricSpaceLipschitzNamespacedPublic.lean/declarations/continuous-prod-of-continuous-lipschitzwith-source-edition-2.md) | 531 | `result-track:bb6304ce27c7f2b2c04a0e9d820ae9c5804b03734a3210f99842ce0e5619332d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb717c69dabe69f35b5bb2624b42294e3546eb2d4bf0aa21f58d53751e368ed8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lipschitz/Variant0cf4db893b209075614a3f314d237916f0c604da3e1ef74093c2e477b80f6364.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
