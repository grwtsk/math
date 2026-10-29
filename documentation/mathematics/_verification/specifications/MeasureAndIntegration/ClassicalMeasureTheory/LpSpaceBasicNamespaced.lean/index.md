# Verification target: Lp Space Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f46409fee18d9ab42311db2c97b83043cdb18d3",
  "lexical_observation_count": 139,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f46409fee18d9ab42311db2c97b83043cdb18d3`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.NNNorm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.ChebyshevMarkov` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.CompareExp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.TriangleInequality` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm_aeeqFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/elpnorm-aeeqfun.md) | 82 | `result-track:6d911831418fd403fb36bee3c697547711491a4ef9973b73195a6b729eef1d6c` |
| 2 | `theorem` | [MemLp.eLpNorm_mk_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp-elpnorm-mk-lt-top.md) | 87 | `result-track:1a8397f6a0f09faef1727bed90efec4a15a370e17ab7ea6ff8319b44fecdf306` |
| 3 | `def` | [Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/lp.md) | 95 | `declaration-track:09552cfe9d285ac227f8596abe68562916b6cda797e88c9b3cd68f91e98e0791` |
| 4 | `def` | [toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp.md) | 112 | `declaration-track:4824c64081a1daba2c85d09a5a6c77d9482cd6c35d50c2fc4e0720ba1c274826` |
| 5 | `theorem` | [toLp_val](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-val.md) | 115 | `result-track:cfcae16e8d223b034a4023a3531b3f492fe0f56a7e984af6e991b5dbb1127192` |
| 6 | `theorem` | [coeFn_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-tolp.md) | 117 | `result-track:32dd451bd5e1ddafbc12912cd9a7bb1257dea5b0c414f54d5a0f2735c0ca7b1e` |
| 7 | `theorem` | [toLp_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-congr.md) | 120 | `result-track:8d5ac51919566d8ffceaf4f3f96338a4706f51155599ec3b210fee2b751c57c6` |
| 8 | `theorem` | [toLp_eq_toLp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-eq-tolp-iff.md) | 124 | `result-track:81cd5ae58576d8ff9415d6911fe3d554e6f358b86f8efbc81caacc318c299416` |
| 9 | `theorem` | [toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-zero.md) | 128 | `result-track:223ac86e7a5cf7f1022fde8c8291fd4ebb5268efa28f7810cedebd90942d68ec` |
| 10 | `theorem` | [toLp_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-add.md) | 131 | `result-track:2062912f481997c04bcf1d619c6aea5484e4fa9e34aba3fff7847e448c49be3a` |
| 11 | `theorem` | [toLp_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-neg.md) | 135 | `result-track:191db803fc160ebad15582ccdeb811ad4e9e1e4861791d52601ddf224cb9d4cc` |
| 12 | `theorem` | [toLp_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-sub.md) | 138 | `result-track:9dd994442de07eaecb52473bc17f6cb0fac9686c7a0d22e8fd5681e53b863d4d` |
| 13 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instcoefun.md) | 146 | `declaration-track:05650664cdbeea7e7c19d590971bdd4862bbe9f4fad4a7a0510825463e6f0441` |
| 14 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/ext.md) | 150 | `result-track:4f91e0bf5e55ebe8e2bcc05f30b341946f858b1976d660062b4957b9002ee671` |
| 15 | `theorem` | [mem_Lp_iff_eLpNorm_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mem-lp-iff-elpnorm-lt-top.md) | 156 | `result-track:dc4490a1d192c5912489626ce16fda69736d431f3847e0bd2f8baeab04b663a4` |
| 16 | `theorem` | [mem_Lp_iff_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mem-lp-iff-memlp.md) | 158 | `result-track:8c4c102408b3de648a00393a6452020554ee1670c6b6d2bcd2d6c09211c96758` |
| 17 | `theorem` | [antitone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/antitone.md) | 164 | `result-track:8c6f985194740588e45de47f2159a5ae08cb712afc83ca54abdae90b854e55bf` |
| 18 | `theorem` | [coeFn_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-mk.md) | 168 | `result-track:6da4e5499fc6887a320d55cc6dc0901e52f6a2e44adb455cf55201a407faf80e` |
| 19 | `theorem` | [coe_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coe-mk.md) | 172 | `result-track:7f6cf9c59c53f86f7d98b9c8877fcd1034dd03a673d16deb50c73fc93d62ea38` |
| 20 | `theorem` | [toLp_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-coefn.md) | 176 | `result-track:6afe47378bc5744694596bc0735067ec40512e8c914287de5dcb12c89df860a8` |
| 21 | `theorem` | [eLpNorm_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/elpnorm-lt-top.md) | 180 | `result-track:683ba0cd029fbbed725f85d3b4d52f987c0fdabc1e5bcd859869a88d3907bf1e` |
| 22 | `theorem` | [eLpNorm_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/elpnorm-ne-top.md) | 183 | `result-track:423171e9d97ca441b7d00eeb1508ccd7fd6041c08d3066abfd110cf1b95bdced` |
| 23 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/stronglymeasurable.md) | 187 | `result-track:b80f92668bd4a97b5c5d634c12106286ff96834411a75b9ef754c3c9f4b20c93` |
| 24 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/aestronglymeasurable.md) | 191 | `result-track:fcba2bbf9fac96cccace058ce55c9785ee076f79af773b69103ba0e86b382742` |
| 25 | `theorem` | [memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp.md) | 194 | `result-track:869a61b1ca5f1d722837b2d707b34380bb8bb41ecca7315bdabd50abbcdac07c` |
| 26 | `theorem` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-zero.md) | 202 | `result-track:d1eb6aa62cf4b398720ce65efcc00969819e4104e15d4f2f1489a1260bc984e4` |
| 27 | `theorem` | [coeFn_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-neg.md) | 207 | `result-track:d4c7d507b49201ade672aac214b42e9b129256f9138fcfe3d1dec94ded2ff4b8` |
| 28 | `theorem` | [coeFn_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-add.md) | 210 | `result-track:1cf42d81d2cc5892abf8ad7189c324399d77cb58a2ffd9f688fae67df0b1204e` |
| 29 | `theorem` | [coeFn_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-sub.md) | 213 | `result-track:d06175fae7da16c38f2be79fcb6022cbc1d3551c0b22c9664941e8531220e002` |
| 30 | `theorem` | [const_mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/const-mem-lp.md) | 216 | `result-track:4b491825a967ce0a4bf7da1c86aab5dbd0e26287da2b28db980e72479f02da07` |
| 31 | `instance` | [instNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instnorm.md) | 220 | `declaration-track:e44ca8733cd6f2adc4546c000d681b019e23bf068eef48a3d03798e9617d5605` |
| 32 | `instance` | [instNNNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instnnnorm.md) | 224 | `declaration-track:22262c5210d649c7b40a74420ddb1283fe8d6ce6e1a21375025cdb8dac6a5086` |
| 33 | `instance` | [instDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instdist.md) | 226 | `declaration-track:e8a3b59eb3bd84488a3480f6133e15f1143c9ace5f03acdb5546ee9b29cc3f4c` |
| 34 | `instance` | [instEDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instedist.md) | 228 | `declaration-track:d8fd2f7e76b100fad66a94d6672597b3cbd770dff80e21761b0c7fd963781123` |
| 35 | `theorem` | [norm_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-def.md) | 230 | `result-track:44998359bb46776d7393dd196ff24612b9859c6aa428011bdc9645a04d8bbbf7` |
| 36 | `theorem` | [nnnorm_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/nnnorm-def.md) | 233 | `result-track:8f539d599023769bb334a39d4ef2a1e5381c36f88c56743cf2d45890bcb334af` |
| 37 | `theorem` | [coe_nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coe-nnnorm.md) | 237 | `result-track:1df17b2b9cf5df6c00bf66599aad5f8138a61e62703f1ae073815d2375a01d1f` |
| 38 | `theorem` | [enorm_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/enorm-def.md) | 241 | `result-track:75f74e58fa34976c88f6120ed3c12b9496b801943362450cf3e23599c82e91cb` |
| 39 | `lemma` | [norm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-tolp.md) | 247 | `result-track:42c7c0c7ed9a3b48013792691137470091984a7ac964a238b9e2a2bc3205f84b` |
| 40 | `theorem` | [nnnorm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/nnnorm-tolp.md) | 251 | `result-track:12aaddb9800be9dcff5bf9de63f669bfa18f8a0baf62748896d24dcf2d753031` |
| 41 | `lemma` | [enorm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/enorm-tolp.md) | 255 | `result-track:f37fc4981ab4edc7e40dc4966fc5acf36046e001afda521db356cde3f87d53ff` |
| 42 | `theorem` | [dist_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/dist-def.md) | 260 | `result-track:e293f92b76ef492269d1b03d567b80429e9a9fa8eb78d1180abcda504795728a` |
| 43 | `theorem` | [edist_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/edist-def.md) | 265 | `result-track:159f513476e56213e029d484701bd09bf77f125615d5ac0c9fbe3f723ee9d22c` |
| 44 | `theorem` | [edist_dist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/edist-dist.md) | 268 | `result-track:de790d404d80db5c5bc6955024d219cb1f9141a4bb5327ee51289044a80b4b8f` |
| 45 | `theorem` | [dist_edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/dist-edist.md) | 272 | `result-track:5a061962eda39e0d1d56a9e48f46a41bdbda69e406170d3eb854a6f8733a573c` |
| 46 | `theorem` | [dist_eq_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/dist-eq-norm.md) | 275 | `result-track:8e61dd96ea3d0844112ad1d407ff5bef76876ecc988d92345685f79ad4b7ff6e` |
| 47 | `theorem` | [edist_toLp_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/edist-tolp-tolp.md) | 278 | `result-track:597555f5086583eb12db7358934d297313ec89c156b9f24f4dd87e3c99a72fed` |
| 48 | `theorem` | [edist_toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/edist-tolp-zero.md) | 284 | `result-track:2c5a78f29e8f09b9e366fba0246271c9d1a661ded5c74b27443a0d4c3e2bda10` |
| 49 | `theorem` | [nnnorm_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/nnnorm-zero.md) | 288 | `result-track:9ecc4fad593bd050d34d7323c83dd3e6f34b2a4ad567f8987ccbfb4cd7553fc1` |
| 50 | `theorem` | [norm_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-zero.md) | 294 | `result-track:9903082150d92cc58edb43a7669687761f30f115159999d6af99e8a28fb3e8a3` |
| 51 | `theorem` | [norm_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-measure-zero.md) | 298 | `result-track:93a4f9535a8ee0f1bbd59398be0ef53f09e60400387274aa8162f0cf2386adfa` |
| 52 | `theorem` | [norm_exponent_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-exponent-zero.md) | 302 | `result-track:5c42b0af9f8dda17b3c37545ec6287d4516e42378649ff0ccbe974001e33b358` |
| 53 | `theorem` | [nnnorm_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/nnnorm-eq-zero-iff.md) | 306 | `result-track:63423b5b24a55c33d4850b79233a4b30a86d50913a274f4dd1c726e3d33fd6cd` |
| 54 | `theorem` | [norm_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-eq-zero-iff.md) | 316 | `result-track:7314819ef60e1b7cb398693237d5f372422faf5742eff833cb5700ded5cab65a` |
| 55 | `theorem` | [eq_zero_iff_ae_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/eq-zero-iff-ae-eq-zero.md) | 319 | `result-track:39d7af478f209533a6a01f0df8df9ef26939daa4588aeb33a0ab9d70e89488ea` |
| 56 | `theorem` | [nnnorm_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/nnnorm-neg.md) | 323 | `result-track:1694e660f2f034305d455d3503286a61edbc1bb85451d1aeaa05abb196450b0b` |
| 57 | `theorem` | [norm_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-neg.md) | 327 | `result-track:de93cbd5b4fcc4e5e8bb5c43ef799e0cd94c5d4c520944b3898729e05f6e5f18` |
| 58 | `theorem` | [nnnorm_le_mul_nnnorm_of_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/nnnorm-le-mul-nnnorm-of-ae-le-mul.md) | 330 | `result-track:a61ccc63933dc7f808ff4d9772e2e33c44908b279d11a4f76c2fff877e4f2fc2` |
| 59 | `theorem` | [norm_le_mul_norm_of_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-le-mul-norm-of-ae-le-mul.md) | 339 | `result-track:d081964cc86a7ddb8791c0c8c2934c745ad905935d7fc96beb38b32de53b2bcd` |
| 60 | `theorem` | [norm_le_norm_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-le-norm-of-ae-le.md) | 348 | `result-track:589292fdd5f1083d09ccf6f4ce4b1b18b5770a7f68a37b0b3fb106a97bdd2032` |
| 61 | `theorem` | [mem_Lp_of_nnnorm_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mem-lp-of-nnnorm-ae-le-mul.md) | 353 | `result-track:bcef6e595f1b06d4634f9d26599cb9a03a4ebfc130e843f415d98cc64a1fc963` |
| 62 | `theorem` | [mem_Lp_of_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mem-lp-of-ae-le-mul.md) | 357 | `result-track:a1ad3f39e6be74d1f9989c69cd398471bc20d55e24cbe1a4fb93cede890b20ac` |
| 63 | `theorem` | [mem_Lp_of_nnnorm_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mem-lp-of-nnnorm-ae-le.md) | 361 | `result-track:a743b1f06d44a02c9162ab38632cf48443a26ab4b40ca97dd0d6e98a729d46c8` |
| 64 | `theorem` | [mem_Lp_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mem-lp-of-ae-le.md) | 365 | `result-track:ac67fe1e764f17926c759c2a46aed289f9c378e4397b755a698c161590cb7dc3` |
| 65 | `theorem` | [mem_Lp_of_ae_nnnorm_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mem-lp-of-ae-nnnorm-bound.md) | 369 | `result-track:08f114069f31cd33d3eb4434d2d9356895bd7168261f943d9225759acfc274f0` |
| 66 | `theorem` | [mem_Lp_of_ae_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mem-lp-of-ae-bound.md) | 373 | `result-track:d016331bd31b2b7b4bbd267832332f065f6854c7ed482bd6b5dcca632072fa40` |
| 67 | `theorem` | [nnnorm_le_of_ae_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/nnnorm-le-of-ae-bound.md) | 377 | `result-track:cc20b9cee382b182cf797b5558f82095655af42809eceb3a828ad5dc2fadba17` |
| 68 | `theorem` | [norm_le_of_ae_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-le-of-ae-bound.md) | 388 | `result-track:eefc4dc321b9bc22beac9e227633b3bbd3f6d12dddcf103e4fa88c2b0e1788b9` |
| 69 | `instance` | [instNormedAddCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instnormedaddcommgroup.md) | 394 | `declaration-track:9ebfe0d8aff0fd3fb28438a8614c5f833bdd4c86df2afa36781f5ca5e610d090` |
| 70 | `example` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/example-source-edition-2.md) | 412 | `declaration-track:2f27a9153092c24c95dcb9227f13a4ced43fed0c3f9e495af7d1f7bbd09ce1c8` |
| 71 | `example` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/example.md) | 415 | `declaration-track:0d33e7119c3db11722a215c513c09fe9cc34ad6598ad7555c75c0fb59b78527e` |
| 72 | `theorem` | [const_smul_mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/const-smul-mem-lp.md) | 423 | `result-track:2ed368c214104e5ef6e63784f28c9de8535abcd37b0d3313c784b783e70a21b3` |
| 73 | `def` | [LpSubmodule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/lpsubmodule.md) | 431 | `declaration-track:d65e06b1b48dc3ccf3def5a7393d6b010fb6f0d6eaeb1166852fb2418367729c` |
| 74 | `theorem` | [coe_LpSubmodule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coe-lpsubmodule.md) | 436 | `result-track:769da79d8ea42353350ced8fd33abd3a183d52df132c08971eab6d00ba214e7b` |
| 75 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instmodule.md) | 439 | `declaration-track:d01aad6ab1707f3bf66d099e2deae94b799f67e7b68388be96c0abd4c74ef495` |
| 76 | `theorem` | [coeFn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-smul.md) | 442 | `result-track:3bc1b9b622eb7ba47d7c55683fcc28493be657516c8b1524571d701062a855ed` |
| 77 | `instance` | [instIsCentralScalar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instiscentralscalar.md) | 445 | `declaration-track:2c1a13490c0033a61aa962f904eefb93a0a42222917b58a59cde45c26b43b9c8` |
| 78 | `instance` | [instSMulCommClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instsmulcommclass.md) | 449 | `declaration-track:685c968702e9f5829a2bfb2aeb4e7cb9d8359a1c61284a5cc33babb8e130a950` |
| 79 | `instance` | [instIsScalarTower](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instisscalartower.md) | 452 | `declaration-track:922b49ef8688428d1a374ac35de913ed8ea3418fc4810601920086238c800f9a` |
| 80 | `instance` | [instIsBoundedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instisboundedsmul.md) | 455 | `declaration-track:d43112332f0b93e2cdc90e19702bc9e72b7deecb6460424bfc88cd8d21527ea5` |
| 81 | `instance` | [instNormedSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/instnormedspace.md) | 466 | `declaration-track:ea664422f8045c51ec4108de8fb979442fa75a1e0d4665232759642b297999e7` |
| 82 | `theorem` | [toLp_const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-const-smul.md) | 477 | `result-track:306bdcac7cb372c4e926f7e58d785d2eddca959f83c7425b9b1525df82a66825` |
| 83 | `theorem` | [MemLp.enorm_rpow_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp-enorm-rpow-div.md) | 485 | `result-track:52e6a53614897da98c371dff1c20fa9200d1e451092149b3bca94aa0d5072f46` |
| 84 | `theorem` | [MemLp.norm_rpow_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp-norm-rpow-div.md) | 502 | `result-track:5c5bd98a540b78992e865ebb75424decb76178653568352324e0d618e9f3ac24` |
| 85 | `theorem` | [memLp_enorm_rpow_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp-enorm-rpow-iff.md) | 522 | `result-track:b488fc10f5c0adce988eca38b63bb4a385d6d00480bcca0e912ee904c7e43bdb` |
| 86 | `theorem` | [memLp_norm_rpow_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp-norm-rpow-iff.md) | 534 | `result-track:b98d81255af3fb66ea96b22df354d6a0e7a88c631ebca4589b196805af6bb5c2` |
| 87 | `theorem` | [MemLp.enorm_rpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp-enorm-rpow.md) | 549 | `result-track:2362078cd618dbc1e3ed52221ef9470806c08fc243f6f079252523e0c38192d7` |
| 88 | `theorem` | [MemLp.norm_rpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp-norm-rpow.md) | 554 | `result-track:a4c704a88b3817ac53ef3e8ff0d53817a57ff033909a422008de99961bb912af` |
| 89 | `theorem` | [AEEqFun.compMeasurePreserving_mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/aeeqfun-compmeasurepreserving-mem-lp.md) | 562 | `result-track:468c9b409707287c9e8973721a4afeebd46089f00be582eabedcb2febf40e82e` |
| 90 | `def` | [compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/compmeasurepreserving-source-edition-3.md) | 576 | `declaration-track:7babc49cb101bed424c5ded44a814ebe73689f42610cab885295642d4a9b97a1` |
| 91 | `theorem` | [compMeasurePreserving_val](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/compmeasurepreserving-val.md) | 583 | `result-track:1aa7db9d5a757c21156e94fcabe2e4c55e15cc3c24a45cfd563eb8d14f370bd3` |
| 92 | `theorem` | [coeFn_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-compmeasurepreserving.md) | 587 | `result-track:e388269806aa62566db7a814c4d173fd9cc0f101e8f1c7e7c459bfa2c4557f1c` |
| 93 | `theorem` | [norm_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-compmeasurepreserving.md) | 592 | `result-track:d920a0a6ed33034cb9fbbd98d441ca557e30dba03c881f5e9ae04b4649945132` |
| 94 | `theorem` | [isometry_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/isometry-compmeasurepreserving.md) | 596 | `result-track:fa42ea8e23d587b10a5e23b0a2a97cb5b12b8e447329672e410726e44f3aaf83` |
| 95 | `theorem` | [toLp_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/tolp-compmeasurepreserving.md) | 600 | `result-track:cf9d872c0f872ff2271d76d297d75b4556112c1ab2dcbd767468e90087635d25` |
| 96 | `def` | [compMeasurePreservingₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/compmeasurepreserving.md) | 607 | `declaration-track:4f095c440f49f9f645391906cced61f0e10a9181ee5fb8cdfff74ed50221b369` |
| 97 | `def` | [compMeasurePreservingₗᵢ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/compmeasurepreserving-source-edition-2.md) | 614 | `declaration-track:6b03004e5348ceab75a8799d33e31d23966c7321c87bd8ba315c54f98b4c679d` |
| 98 | `theorem` | [LipschitzWith.comp_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/lipschitzwith-comp-memlp.md) | 638 | `result-track:5d24774e846064ad94c5b3f3ce07f3284212aa817a193824f46a93961b86aad8` |
| 99 | `theorem` | [MeasureTheory.MemLp.of_comp_antilipschitzWith](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/measuretheory-memlp-of-comp-antilipschitzwith.md) | 649 | `result-track:4600ccd9f909431b6fe214d34d4a7a254b35ef7a608466a9231a9a137a1115ae` |
| 100 | `lemma` | [MeasureTheory.MemLp.continuousLinearMap_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/measuretheory-memlp-continuouslinearmap-comp.md) | 665 | `result-track:d312accef921d973dc2c9a726538da34a0209f9fac0772cd67f758880db9b31c` |
| 101 | `theorem` | [memLp_comp_iff_of_antilipschitz](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp-comp-iff-of-antilipschitz.md) | 673 | `result-track:2aed0e4b61b42fe803e273a00efccb241a39f4d30e6b3754d3bfc89ecf50e827` |
| 102 | `def` | [compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/complp-source-edition-2.md) | 683 | `declaration-track:8438b3c6e83dfe175dcd3a6aeff8bd26960ff5e7b10250612fa2fb2082a38d51` |
| 103 | `theorem` | [coeFn_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-complp-source-edition-3.md) | 692 | `result-track:f63f068128cd8f8b504294cb69c4921dccfca5da7e6206e172196dc1633db342` |
| 104 | `theorem` | [compLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/complp-zero.md) | 697 | `result-track:ee3e03b88af8c3fcc29157c656dd872c3c79d5c1d4b26441238067bcedc26744` |
| 105 | `theorem` | [norm_compLp_sub_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-complp-sub-le.md) | 703 | `result-track:c19c348e2161f5d860d1b871e9c4560cbbf960cb549ba441596a9aeca9490019` |
| 106 | `theorem` | [norm_compLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-complp-le-source-edition-2.md) | 711 | `result-track:d2acf9a5bbde6f4d76b97df1a1a883718ad58ae35ad7b3cfb9846ceb025e3e24` |
| 107 | `theorem` | [lipschitzWith_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/lipschitzwith-complp.md) | 716 | `result-track:8f081a0405e6e1f984ccf89c4d5d7dbf8e00ceb2d4526b5df19639bdc81cd293` |
| 108 | `theorem` | [continuous_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/continuous-complp.md) | 721 | `result-track:38cb756e6ccec7670e9cfcefc7fc2e30d5b15157e30cc74a458a9a1eddbad7e0` |
| 109 | `def` | [compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/complp-source-edition-3.md) | 732 | `declaration-track:d1f13d6f55f0d24ab9df0de0687f5e9926136aab33ef48cf3858a811f7c0c397` |
| 110 | `theorem` | [coeFn_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-complp-source-edition-2.md) | 735 | `result-track:2409629dedc3c978c35f2052365ee6b7e7112e631afa1d2e654a0fd133d3587f` |
| 111 | `theorem` | [coeFn_compLp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-complp.md) | 738 | `result-track:181124c28dbbe9a6738b6ff937e5f051cda1841904703ee09193f79563d3e6d2` |
| 112 | `theorem` | [comp_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/comp-memlp.md) | 741 | `result-track:26c62189ef0b5417abc00006afcb0a735716d3e4aa1bb86e2cb80ce2fbcb0450` |
| 113 | `theorem` | [comp_memLp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/comp-memlp-source-edition-2.md) | 747 | `result-track:3130ec9150d7b3938718451aecf4f0ea5cf4057c893bc77fbc47cf1df8815326` |
| 114 | `theorem` | [Lp Space Basic Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/ofreal.md) | 757 | `result-track:866180ad0e502241a8c9a26c271a5874b201c02f0933c4765c4c672b0cdc1a7b` |
| 115 | `theorem` | [Lp Space Basic Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/memlp-re-im-iff.md) | 764 | `result-track:2c19bedec0a231bac3bade8522550a01df75a9eed7a157b5d591fd388ff5b569` |
| 116 | `theorem` | [add_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/add-complp.md) | 778 | `result-track:10cc5d4dba64d524bb463384c9f944da5a5e420d90a76e48c5cb578211dbb850` |
| 117 | `theorem` | [smul_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/smul-complp.md) | 788 | `result-track:91b9d1de6e37fdcf12fed18525193c51ec6ad19f3ad4ffd9d2e3a148ba35e0fe` |
| 118 | `theorem` | [norm_compLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-complp-le.md) | 796 | `result-track:5b9dacb96d7224b358d4686701f04b3c54c5855fa3afbf6693133f9c1519af80` |
| 119 | `def` | [compLpₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/complp.md) | 802 | `declaration-track:44df41fb524bd9cc169cf2a50de5bd8eab0496c88b4bd360e9c177a00c7b1f69` |
| 120 | `def` | [compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/complpl.md) | 824 | `declaration-track:8189017ea9da5d71c5c4ccfe3695f5e59417fbb6e12292f76f432dd72ba1b397` |
| 121 | `theorem` | [coeFn_compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-complpl.md) | 829 | `result-track:9e95c68930911455cc2cc1efd0676a73890bbfd5053b8e03ec774ac28f3bd44a` |
| 122 | `theorem` | [add_compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/add-complpl.md) | 833 | `result-track:b41cbb07a5e2601d4a881b223aa54c5b117c826817a2470368ffb62c521a2489` |
| 123 | `theorem` | [smul_compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/smul-complpl.md) | 836 | `result-track:9490fc8d49649c1df82eeee72b3466de4cd261aea670598260bd946d10bfa09c` |
| 124 | `theorem` | [norm_compLpL_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/norm-complpl-le.md) | 840 | `result-track:51090de0661a353c1df6017401d03c39bdc3ee50c058ce6e18813263872a8436` |
| 125 | `theorem` | [lipschitzWith_pos_part](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/lipschitzwith-pos-part.md) | 849 | `result-track:4305234382c18c9844568c16243bd744932a1013aed5ebaab6ff987ffff826f7` |
| 126 | `theorem` | [Lp Space Basic Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/pos-part.md) | 852 | `result-track:a3ac18780f8fc01c1f5fd594186b99c18d645f5ddf41619c8bad978322e28975` |
| 127 | `theorem` | [Lp Space Basic Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/neg-part.md) | 859 | `result-track:390cc22da917d738a3d20de86f4b5821ba16544be80e01b858b25d08fec23700` |
| 128 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/pospart.md) | 867 | `declaration-track:8f9674672105b5bcb0c8cede696b3f72da9fbd813edcab0e7ef62ae5332b97f8` |
| 129 | `def` | [negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/negpart.md) | 871 | `declaration-track:93ece3219d20fd80445a7a1631a224a56fc73961d16d4840f8ac01ba42233688` |
| 130 | `theorem` | [coe_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coe-pospart.md) | 875 | `result-track:96a568c09ae21d67c55892ad6beeedff6454af796e880ea48fbc1ce52570ce7a` |
| 131 | `theorem` | [coeFn_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-pospart.md) | 878 | `result-track:6e85ccfab029d9dc1640ce1d262487634db422830412f13e80fd03d23947e4ef` |
| 132 | `theorem` | [coeFn_negPart_eq_max](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-negpart-eq-max.md) | 881 | `result-track:c2ea4cc7186986f0cf4b41f198a0ba182ec371ac5d476146c9dd2803f2515855` |
| 133 | `theorem` | [coeFn_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/coefn-negpart.md) | 886 | `result-track:47362ab84aae5170f26053a884b0b29ee4e2a68b8e0cde9ce6fb57d6dc8dfcf7` |
| 134 | `theorem` | [continuous_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/continuous-pospart.md) | 889 | `result-track:78d6c0089af784a3cf14959b685dc17e97914528fc7949fa0c28e7ff15674473` |
| 135 | `theorem` | [continuous_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/continuous-negpart.md) | 892 | `result-track:b625650e2adbe5d9d4d763d2357044091e047447353d13e8ecae1f98d579ba8c` |
| 136 | `lemma` | [pow_mul_meas_ge_le_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/pow-mul-meas-ge-le-enorm.md) | 905 | `result-track:f5486716c5babc0754ea0a02e5f7926a87b7e4a038a380ab8fc3c2125800dd3f` |
| 137 | `lemma` | [mul_meas_ge_le_pow_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mul-meas-ge-le-pow-enorm.md) | 911 | `result-track:20f345f2aba1e7343603577a2fde56fbc656b5547210a490d627b335339e9a2f` |
| 138 | `theorem` | [mul_meas_ge_le_pow_enorm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/mul-meas-ge-le-pow-enorm-source-edition-2.md) | 917 | `result-track:4a8708c0eb7e2532e4b15ca2fbfa674f152f92359f61824cf3010690c7b75ebb` |
| 139 | `theorem` | [meas_ge_le_mul_pow_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespaced.lean/declarations/meas-ge-le-mul-pow-enorm.md) | 923 | `result-track:c9ebaec534e3054ea010ecccfb00061484daabc9e4a5ce595e9de9d9508b8e39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f06c11b1c72b05958c8375250a4ebd26dfa36b289530f3c906be900c8dd4288 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Basic/Variantd940992e27d2bb30fff00ff4f58b47bcf3bf2714682bc712d49867af6a4c8c27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
