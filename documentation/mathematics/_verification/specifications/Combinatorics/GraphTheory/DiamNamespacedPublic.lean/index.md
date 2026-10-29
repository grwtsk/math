# Verification target: Diam Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf4bc3914f9e5d04dbfefbd65e13dae7841dba5f",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf4bc3914f9e5d04dbfefbd65e13dae7841dba5f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean.json)

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
| 1 | `def` | [eccent](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent.md) | 49 | `declaration-track:35664736abd964efe896d8f4726018b2e4ecd0bf332e5fe6314e82fbc4cefb2b` |
| 2 | `lemma` | [eccent_def](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-def.md) | 52 | `result-track:aedbbc3382700fe6e368373a20d371b6a4e9e7697f70b4fdd1802ab360d8e997` |
| 3 | `lemma` | [edist_le_eccent](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/edist-le-eccent.md) | 54 | `result-track:4eaa3d557cdf2ca957db297c7a2e7f65b7c3962980f55982b4d8e252838093cb` |
| 4 | `lemma` | [exists_edist_eq_eccent_of_finite](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/exists-edist-eq-eccent-of-finite.md) | 57 | `result-track:33995f79cc040f080cac2d29f8fb630d7dae1d440333d910147ed0c84f6d1d79` |
| 5 | `lemma` | [eccent_eq_top_of_not_connected](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-eq-top-of-not-connected.md) | 62 | `result-track:b492c40bad521f292faff55fb2c574191e7f11fe108d5f87558f822318de59f8` |
| 6 | `lemma` | [eccent_eq_zero_of_subsingleton](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-eq-zero-of-subsingleton.md) | 70 | `result-track:a11a63957fee0296d61909ce3f2fdeeaba2a1177c6760c2e5e3d168dd2bd5cbf` |
| 7 | `lemma` | [eccent_ne_zero](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-ne-zero.md) | 73 | `result-track:85f3ce45b3a079d89da8a9d0207c05cf5b7067148f609ac82b4228b9f0b0cfcb` |
| 8 | `lemma` | [eccent_eq_zero_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-eq-zero-iff.md) | 79 | `result-track:8d3c4cda2d03a97f3b302ca646a454a44cb6146f8faa45909f3eaaa95d02bb4d` |
| 9 | `lemma` | [eccent_pos_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-pos-iff.md) | 84 | `result-track:a33a459659e46c720e7c31b6063a39a754075eb33a8e2510ca46422e27a50efe` |
| 10 | `lemma` | [eccent_bot](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-bot.md) | 88 | `result-track:1b43dae2a12f323d8ff14e4c79b6f3b66120f3d7b967c6507237967840b7dc29` |
| 11 | `lemma` | [eccent_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-top.md) | 92 | `result-track:d745170d3f04dcd501269d4a747ed64dffb35231cdec0184633820c2a3beff86` |
| 12 | `lemma` | [eq_top_iff_forall_eccent_eq_one](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eq-top-iff-forall-eccent-eq-one.md) | 98 | `result-track:2392f2a5eb9842de1fa96a3b1ca69e43329712de86f2def98d8f6c834949d81a` |
| 13 | `lemma` | [eccent_le_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-le-iff.md) | 108 | `result-track:6b9a51724b9d2d6c80ec5e76f8efdc5fce280665bec0e5978d2f84968f1aadf3` |
| 14 | `lemma` | [eccent_le_one_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-le-one-iff.md) | 111 | `result-track:7759584f8fd04ef6d81925a88710cdf65fc22022b33128f64617db85b6929072` |
| 15 | `lemma` | [eccent_eq_one_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-eq-one-iff.md) | 123 | `result-track:5d994a9d2d9b5a07942638919eafc75c31683a4c902166238b3a976739ae0cfb` |
| 16 | `def` | [ediam](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam.md) | 137 | `declaration-track:572171aab040c4676fc869b5f76d3c5efbd1f56bc84d1e138731f0e9bf27ea1c` |
| 17 | `lemma` | [ediam_eq_iSup_iSup_edist](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-eq-isup-isup-edist.md) | 140 | `result-track:142650084d2bbe6b45ad0267ef8dfcb5ec117498ee7a07629806e98c183554f2` |
| 18 | `lemma` | [ediam_def](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-def.md) | 143 | `result-track:1ca74603da3a63dfc89487a721e1196d3344a0e4d453786ef7a3e6b78d9cc784` |
| 19 | `lemma` | [eccent_le_ediam](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/eccent-le-ediam.md) | 146 | `result-track:3e4ba0f1e0dde0aba89dab42d41162f21a9a448067cfd2d8a89391ce769bb19c` |
| 20 | `lemma` | [edist_le_ediam](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/edist-le-ediam.md) | 149 | `result-track:aac29860fead2f8c9513cd8e54ae7f86d9d1c0f642a82a765909e94370b91a3a` |
| 21 | `lemma` | [ediam_le_of_edist_le](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-le-of-edist-le.md) | 152 | `result-track:c491d8792cc9e2e5e0afe34b29596dcca8735897f154465e788fede1856ddcc3` |
| 22 | `lemma` | [ediam_le_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-le-iff.md) | 155 | `result-track:f951852d8329d1b3a0cf67fdf628aaa25d3d37fa05cc94784660d0811752501a` |
| 23 | `lemma` | [ediam_eq_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-eq-top.md) | 158 | `result-track:00939c64a175239979a3bc0cbf09d1bd48238d3476e6fc09faf34a76638bda13` |
| 24 | `lemma` | [ediam_eq_zero_of_subsingleton](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-eq-zero-of-subsingleton.md) | 161 | `result-track:e438cc2787c21655ebbaa892772efec3340f4fb723137b43cf56989291210583` |
| 25 | `lemma` | [nontrivial_of_ediam_ne_zero](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/nontrivial-of-ediam-ne-zero.md) | 164 | `result-track:1757b8d956f606e31e28a292748b5d66646d1dd28dfa52dfe734ff1ff5f88b75` |
| 26 | `lemma` | [ediam_ne_zero](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-ne-zero.md) | 168 | `result-track:131d2bf82495c0322a7f6620217986be58e8f3449932dcf915a5bd0d5b7dd91f` |
| 27 | `lemma` | [subsingleton_of_ediam_eq_zero](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/subsingleton-of-ediam-eq-zero.md) | 174 | `result-track:deb04ac92615644a237ae72175f0bfc9bddc973450a10dad6d5bd963dec7e369` |
| 28 | `lemma` | [ediam_ne_zero_iff_nontrivial](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-ne-zero-iff-nontrivial.md) | 178 | `result-track:e2caf4d184609f86acacdf3148346c38eef5535401cee3447826f118543712ea` |
| 29 | `lemma` | [ediam_eq_zero_iff_subsingleton](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-eq-zero-iff-subsingleton.md) | 183 | `result-track:fcbc5afea97590d12e9cbc5efed8a9a713f18c6ea9b8ed3cef1f8ca35e37bc83` |
| 30 | `lemma` | [ediam_eq_top_of_not_connected](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-eq-top-of-not-connected.md) | 187 | `result-track:4b2f9024e885033806d1e5ac651ec499efb86f0df40610bac6895bbc6e8cdf61` |
| 31 | `lemma` | [ediam_eq_top_of_not_preconnected](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-eq-top-of-not-preconnected.md) | 194 | `result-track:427c41d39d0197431c4a0e878a938e6c9a2ba196f536f0cc7b4bfb23b91c5e8f` |
| 32 | `lemma` | [preconnected_of_ediam_ne_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/preconnected-of-ediam-ne-top.md) | 202 | `result-track:5ef83136cf435a831df15dddb1896e64550667c1e68a8a7af7fc22020b8917c8` |
| 33 | `lemma` | [connected_of_ediam_ne_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/connected-of-ediam-ne-top.md) | 205 | `result-track:33f1c418bba8e129d81dd7209d18e28aa56f2c913ff52fe4b1ee4678aebf6875` |
| 34 | `lemma` | [exists_eccent_eq_ediam_of_ne_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/exists-eccent-eq-ediam-of-ne-top.md) | 208 | `result-track:98a41510516138a4dccdd04e0d7ffa6ebdef9a81c737b3f00da5f9c7b1fbfc12` |
| 35 | `lemma` | [exists_eccent_eq_ediam_of_finite](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/exists-eccent-eq-ediam-of-finite.md) | 213 | `result-track:ca03a16eef5acbb2368f16728476f32baa59d58ef23764cc12c3b93f2f6dac09` |
| 36 | `lemma` | [exists_edist_eq_ediam_of_ne_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/exists-edist-eq-ediam-of-ne-top.md) | 217 | `result-track:f58e9102b2adb3a259779141e718aeea66c23ed0b436c6431f0a720277210330` |
| 37 | `lemma` | [exists_edist_eq_ediam_of_finite](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/exists-edist-eq-ediam-of-finite.md) | 222 | `result-track:09c77f8a856bec1fd071839a613355b0cd1dc7b5e7b1d889ac73e0d839ecd2c6` |
| 38 | `lemma` | [connected_iff_ediam_ne_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/connected-iff-ediam-ne-top.md) | 230 | `result-track:89124c8b10b68a9c3da9142f14aa4fb1d2ddaaae0003c28d2abc720696e2dcbc` |
| 39 | `lemma` | [ediam_anti](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-anti.md) | 236 | `result-track:4ffd56099bc9641865f2d7960c01ba57b76005fc61c49ce7d7a247d6e8a72d9a` |
| 40 | `lemma` | [ediam_bot](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-bot.md) | 240 | `result-track:4fbca478176a1b87cec03e4f070ef0038479bef41e29d9cd9358891dd8c61056` |
| 41 | `lemma` | [ediam_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-top.md) | 244 | `result-track:941aa37c2c3e02164cd05c63944cf33275bec7a3fa6ca10e4c3ef1388e56be8c` |
| 42 | `lemma` | [ediam_eq_one](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-eq-one.md) | 248 | `result-track:000c1c84e5c17e4de62cbceccd43dc658e6ab8bcd073fd7756ede5c4dd6f41ae` |
| 43 | `lemma` | [ediam_le_two_mul_eccent](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-le-two-mul-eccent.md) | 256 | `result-track:6ed16ea7de9bb9e8957de2cbc8f09ab861098b8fef27ba1b8643a05f44434640` |
| 44 | `def` | [diam](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam.md) | 273 | `declaration-track:caa94975a35cbea7942d37dcf4ec636e494b7f665e6bb1e56868e338bd78553b` |
| 45 | `lemma` | [diam_def](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-def.md) | 276 | `result-track:1b05b0ff38eff735ebcd584495d3ea4a913379bc304f9e1e7a3682d9ad1b194f` |
| 46 | `lemma` | [dist_le_diam](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/dist-le-diam.md) | 279 | `result-track:1cd5a66a07b3181e81d44d3c6d48ffdc3a18ee9f00dabf745d4eb75d4b1f425b` |
| 47 | `lemma` | [nontrivial_of_diam_ne_zero](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/nontrivial-of-diam-ne-zero.md) | 282 | `result-track:2f48bcfe70a4765fbb08cc011aa421c469b43e37567bd1a4e5092e401fc72ebb` |
| 48 | `lemma` | [diam_eq_zero_of_not_connected](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-eq-zero-of-not-connected.md) | 286 | `result-track:d55cfa4a5f773a8b78a34cfc3a52cd54f4a860d4c76afb9e113abfafed0c20d9` |
| 49 | `lemma` | [diam_eq_zero_of_ediam_eq_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-eq-zero-of-ediam-eq-top.md) | 291 | `result-track:2c96bebc3cbcbefaa575f9c3f731cd604914dff2ea38a5fa413d81834b282bf1` |
| 50 | `lemma` | [ediam_ne_top_of_diam_ne_zero](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-ne-top-of-diam-ne-zero.md) | 294 | `result-track:0fabb4179a7365a8c3984b679101c3abba99b32fe493957a45de1728f6aa5548` |
| 51 | `lemma` | [exists_dist_eq_diam](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/exists-dist-eq-diam.md) | 297 | `result-track:4f67fc2861a4d2c65c9c2cb9f1bc82aca3be83bbc31361b2c3dda0b9d69183af` |
| 52 | `lemma` | [diam_ne_zero_of_ediam_ne_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-ne-zero-of-ediam-ne-top.md) | 305 | `result-track:efa67c1cb48d79e49db2a348c6747c19709803f218e5ae41aa1c40d5752aef89` |
| 53 | `lemma` | [diam_anti_of_ediam_ne_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-anti-of-ediam-ne-top.md) | 311 | `result-track:36551c4f2f86c8df0ee87b5ce69d45a759c1a7a6123f372eda9853ee68376645` |
| 54 | `lemma` | [diam_bot](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-bot.md) | 315 | `result-track:1c80d18069d6cb8c090919c162dec392c7b44918884927ece6b9516633cfecaa` |
| 55 | `lemma` | [diam_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-top.md) | 322 | `result-track:36f0b8f00374ab8b5cfa496ef062611da4247f2b2d707c46d1ef80397d2c4f6c` |
| 56 | `lemma` | [natCast_diam_eq_ediam_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/natcast-diam-eq-ediam-iff.md) | 325 | `result-track:5d4f921db0feb0f3ba4b9b2d7cdc92df76c848d1290bc715e0da713ca8313c83` |
| 57 | `lemma` | [diam_eq_zero](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-eq-zero.md) | 329 | `result-track:61c13a8ce3196356e7cc2222b6771818797ac87b13732f1fde11043c448353a7` |
| 58 | `lemma` | [diam_eq_one](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-eq-one.md) | 333 | `result-track:8c276c87be6ffbb5342aac02c916c75383b9a9a95c0b23913e8add9d26c54056` |
| 59 | `lemma` | [diam_eq_zero_iff_ediam_eq_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/diam-eq-zero-iff-ediam-eq-top.md) | 336 | `result-track:717bd02021cde096c361fc647ef4e2ea30cc27c9167a78c01b6fa60be48ba04b` |
| 60 | `lemma` | [connected_iff_diam_ne_zero](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/connected-iff-diam-ne-zero.md) | 342 | `result-track:1011cdc064cc8e73509eb83ccf59290436dacbfab51a13f5c2a73e9d68c3cbce` |
| 61 | `def` | [radius](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius.md) | 350 | `declaration-track:895d7a9c0878c1ea1151af87b88d9fb0ab649e66ab3d1ce7110de089fa895e4e` |
| 62 | `lemma` | [radius_eq_iInf_iSup_edist](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-eq-iinf-isup-edist.md) | 353 | `result-track:a8993f6ac41bb1086918b38f233d823cc571a2e616c30c33de04ae167c27d9a8` |
| 63 | `lemma` | [radius_le_eccent](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-le-eccent.md) | 356 | `result-track:eac8028213e5a6203fcadf8eb2be4eb6850c97eb54ce3a8589a50901c1a3c28d` |
| 64 | `lemma` | [exists_eccent_eq_radius](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/exists-eccent-eq-radius.md) | 359 | `result-track:5a6e3881f27a6af060479efe5ce2cdebdd7619f344241e51eee062b225c2bc82` |
| 65 | `lemma` | [exists_edist_eq_radius_of_finite](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/exists-edist-eq-radius-of-finite.md) | 362 | `result-track:bd7dc4da369b7a7042b64b259e22c9502f983b34416e327dbd2522205e1e1825` |
| 66 | `lemma` | [radius_eq_top_of_not_connected](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-eq-top-of-not-connected.md) | 369 | `result-track:79b456c56a42b5a21f0d4aadae479a61feb763d9481d2364491cd20afc0a9b68` |
| 67 | `lemma` | [radius_eq_top_of_isEmpty](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-eq-top-of-isempty.md) | 372 | `result-track:5d0b708042fc7960d479a2963467f5543eef5b1059b308130be080f468c0bcc5` |
| 68 | `lemma` | [radius_ne_top_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-ne-top-iff.md) | 375 | `result-track:7a25aada9c537398fd9d543e49235c3f03f054a8ec2ff480a678083ced3fe965` |
| 69 | `lemma` | [radius_ne_zero_of_nontrivial](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-ne-zero-of-nontrivial.md) | 381 | `result-track:f5215f8736f970d434fe1f5abf4a8ae13a4ad53555c277c7339c9d15538d7108` |
| 70 | `lemma` | [radius_eq_zero_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-eq-zero-iff.md) | 386 | `result-track:2bcc46edb539bb876a1feabf17662c8f4444675af53a0954900ad664fff5f3de` |
| 71 | `lemma` | [radius_le_ediam](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-le-ediam.md) | 396 | `result-track:aca749aa5e2188c392396644910f9d54f5cb7014f192e67612b8abbda673fe9e` |
| 72 | `lemma` | [ediam_eq_top_iff_radius_eq_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-eq-top-iff-radius-eq-top.md) | 399 | `result-track:6a55b3b4cd2e7ccae318c2be5c75f907767fc92ee1c86e99ddb88bb1ac79aab4` |
| 73 | `lemma` | [ediam_le_two_mul_radius](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/ediam-le-two-mul-radius.md) | 408 | `result-track:fd57bc0d871f872a1a53dd382b01c79c46e11d955be12546f6e4081decf74194` |
| 74 | `lemma` | [radius_eq_ediam_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-eq-ediam-iff.md) | 420 | `result-track:2e20a940cb26a2df4c7f7c3aabff7fb0c04ff8fade03d2678daa193a955f2c49` |
| 75 | `lemma` | [radius_bot](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-bot.md) | 433 | `result-track:03e54140a64da061aa2b61571e5a34c11cec0eb11591c2292a3d653a572a1b31` |
| 76 | `lemma` | [radius_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/radius-top.md) | 437 | `result-track:2297bc46eeaf268b2dc2ea040bc18727e607a0bff9399b7f1e642c34fcb456f9` |
| 77 | `def` | [center](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/center.md) | 445 | `declaration-track:f8cb1829be371666b68976fa5e47459e959aed2c02cc1832cf180a1fb46dfe2d` |
| 78 | `lemma` | [center_nonempty](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/center-nonempty.md) | 448 | `result-track:4bb92dffa23c2ceaf410f79685ac0c185956edd314a809d0fa5ae34e64367dde` |
| 79 | `lemma` | [mem_center_iff](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/mem-center-iff.md) | 451 | `result-track:82097680f149234b6759b1a9ca7e54ab05a43e062eafda4164fe99b4166667cd` |
| 80 | `lemma` | [center_eq_univ_iff_radius_eq_ediam](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/center-eq-univ-iff-radius-eq-ediam.md) | 453 | `result-track:5319c1685f2da294a4b9b361d7e4dc937e099c57b2892bec4c90b5d507ca4ad7` |
| 81 | `lemma` | [center_eq_univ_of_subsingleton](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/center-eq-univ-of-subsingleton.md) | 464 | `result-track:4725e89c13f4ef7bfc40392bbadf056d4a82e7d9959d50dfcd5659aca9cbe759` |
| 82 | `lemma` | [center_bot](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/center-bot.md) | 470 | `result-track:9d76928d889ad5325fe623e01c6b98f31c19a56780466d75d930a2a2133d8448` |
| 83 | `lemma` | [center_top](../../../../../Combinatorics/GraphTheory/DiamNamespacedPublic.lean/declarations/center-top.md) | 477 | `result-track:9170a9bfa3e5bfc62b9a700a1161329f26685516be4a3b47a541ba75e0263188` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75cf5b8d53f563f0bba22d08eaccacac14639cfcbbeb30265c3b23faa14a3b22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
