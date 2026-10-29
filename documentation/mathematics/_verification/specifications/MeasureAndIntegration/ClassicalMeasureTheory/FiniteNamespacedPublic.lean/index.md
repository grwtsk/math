# Verification target: Finite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2717a7f54ffd95469e2887ba3e965c8d7718449",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2717a7f54ffd95469e2887ba3e965c8d7718449`.

Source path: `GRWTSK/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean.json)

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
| 1 | `class` | [IsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasure.md) | 43 | `declaration-track:47753879571758deb7ac41f61e32a7c9244ce27194f9448f40b0c698c08a4408` |
| 2 | `lemma` | [not_isFiniteMeasure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/not-isfinitemeasure-iff.md) | 46 | `result-track:2317f761a1204f5cb4cf193e457ae235016593c5d705501750d9d6c3fd62ef40` |
| 3 | `lemma` | [isFiniteMeasure_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasure-restrict.md) | 48 | `result-track:ab3dd15d8154132163f0b52e42d30c9d7ac032cbb7491ce0fdf58525a038dfb4` |
| 4 | `instance` | [Restrict.isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/restrict-isfinitemeasure.md) | 51 | `declaration-track:0df00790a0e705972083e8fbf4b612b652697aba858d5ef5327cf6d6dac8db12` |
| 5 | `theorem` | [measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-lt-top.md) | 56 | `result-track:26ed90a2e2d8549bff445cba8561da3911a46648e32ff2fa1b657d27f8f8a268` |
| 6 | `instance` | [isFiniteMeasureRestrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasurerestrict.md) | 59 | `declaration-track:025dcdef99805a40125aaff6315ca831f379c7ecef19b0aff0400e106884c104` |
| 7 | `theorem` | [measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-ne-top.md) | 63 | `result-track:c71ad8e79022ce010d1ca1098e0163d68b79ae8550a8556bda54739600c24171` |
| 8 | `theorem` | [measure_compl_le_add_of_le_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-compl-le-add-of-le-add.md) | 66 | `result-track:0dbdcc5185d6df7ac9e4cfac66c119bc5755fe6caa250acd4b1f5a13d5a9b539` |
| 9 | `theorem` | [measure_compl_le_add_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-compl-le-add-iff.md) | 74 | `result-track:c5e5a70d532ad7127610b5f5f06c82ba411f317b62f653ddea3cae01b826ab3e` |
| 10 | `theorem` | [cofinite_eq_bot_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/cofinite-eq-bot-iff.md) | 79 | `result-track:2a906e8ae563c8336ea5d8eede0cd5b88fa6325ab9d2383ce60ec50a0a8af62c` |
| 11 | `theorem` | [cofinite_eq_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/cofinite-eq-bot.md) | 83 | `result-track:daf71859799fe3e2fc47e1e7cb65bff94ac8cdcdc203422170eb4e403bdab7d8` |
| 12 | `def` | [measureUnivNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measureunivnnreal.md) | 86 | `declaration-track:6c8601c0efb5ffb385d87e3d4729b57d663b9b7e107a64620651e1844726c28e` |
| 13 | `theorem` | [coe_measureUnivNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/coe-measureunivnnreal.md) | 90 | `result-track:e8745b1cc3bc57cab9139c1a3d1c74d1f319d61ba8ac8c5e1468fd640be81b0a` |
| 14 | `instance` | [isFiniteMeasureZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasurezero.md) | 94 | `declaration-track:69232ba69d02d727bdd2274c1b0a05a197c31d1cd032c4652f5a94667f6958bf` |
| 15 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:1984973970701e3ca7f0248373d6c7817f7deb4c76b38eb55d3cf5dbe1876051` |
| 16 | `theorem` | [measureUnivNNReal_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measureunivnnreal-zero.md) | 102 | `result-track:c1b7fba774a2819f4d3cb5099d8b72a6bff7c32d25100544c80b0bc769a890c2` |
| 17 | `instance` | [isFiniteMeasureAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasureadd.md) | 105 | `declaration-track:3045f9f793ca2dce0e25f9847e56e856e5296cdea371b7d17fe1980034ef2940` |
| 18 | `instance` | [isFiniteMeasureSMulNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasuresmulnnreal.md) | 110 | `declaration-track:af3b2fa853a050abbced4ccb7ea9bf3b635765b2348f7dcdfe24acbfa3f8e0f1` |
| 19 | `instance` | [IsFiniteMeasure.average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasure-average.md) | 113 | `declaration-track:502f73fb83ff62990b7928bf55e0ca133ba8ea25916d6a02ebae5f27782f12e5` |
| 20 | `instance` | [isFiniteMeasureSMulOfNNRealTower](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasuresmulofnnrealtower.md) | 118 | `declaration-track:543c636f1bfbd2dfc5b34ea36f570915c934fe27a7445673eb9ae863b1857d3a` |
| 21 | `theorem` | [isFiniteMeasure_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasure-of-le.md) | 123 | `result-track:f60964cf671f9224687b44266f521a58a795c609ef8508eef1c3d8a932c3af6a` |
| 22 | `theorem` | [isFiniteMeasure_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasure-dirac.md) | 127 | `result-track:d6690eb5219528556c01278ac0cdc10f972ba2ce8b45b03eaa6bc5fce4391735` |
| 23 | `theorem` | [Measure.isFiniteMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-isfinitemeasure-map.md) | 132 | `result-track:dccd6e16142a705f0abd18e21c5e7c2eaf37de3ffde40b63567d5d4345883cee` |
| 24 | `theorem` | [Measure.isFiniteMeasure_of_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-isfinitemeasure-of-map.md) | 143 | `result-track:846f68cee058a702fe83b4c76a26eb9583be44146b7e2f8d1487e3880d312730` |
| 25 | `theorem` | [Measure.isFiniteMeasure_map_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-isfinitemeasure-map-iff.md) | 149 | `result-track:ef665dd7841c889b4cbd1255e026f65f192f588502d300422d9e73d3629cca76` |
| 26 | `instance` | [IsFiniteMeasure_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasure-comap.md) | 153 | `declaration-track:4da95bddba2720e7281bc891fe6dccb1024d955bcab528bc996a07ecfde3e104` |
| 27 | `theorem` | [measureUnivNNReal_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measureunivnnreal-eq-zero.md) | 158 | `result-track:ff18f3accdfb72ae1c0feae627c7305c24dec94f5c40087a5b84e4667c70b127` |
| 28 | `theorem` | [measureUnivNNReal_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measureunivnnreal-pos.md) | 162 | `result-track:361ecb9dc110b0b58fa7e8267b29818968356b1ac90e99e3cb054168143094ed` |
| 29 | `theorem` | [Measure.le_of_add_le_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-le-of-add-le-add-left.md) | 168 | `result-track:9d2b5cc0eb2e3edce80629489e68497ba87a3556f495363379d1acd7207287e5` |
| 30 | `lemma` | [Measure.eq_of_le_of_measure_univ_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-eq-of-le-of-measure-univ-eq.md) | 171 | `result-track:4daff6f13864f1620aded2cfc4dffe83dc84f947d6ba316e7a651d69d186db0e` |
| 31 | `theorem` | [summable_measure_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/summable-measure-toreal.md) | 179 | `result-track:4258b87003ce619821870e8b8d01fc96e170ca3046db4cb4bcf509a3ce65bacb` |
| 32 | `theorem` | [ae_eq_univ_iff_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/ae-eq-univ-iff-measure-eq.md) | 186 | `result-track:f8c2bd9821109762ddd8e76e0b8ca76c2cdec9161cf06a20cda2fdcb24b67b6b` |
| 33 | `theorem` | [ae_iff_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/ae-iff-measure-eq.md) | 190 | `result-track:69c90a9d211120c095a635dd69a9190b597ab47f298dfc3fd28c3a984c5ac37c` |
| 34 | `theorem` | [ae_mem_iff_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/ae-mem-iff-measure-eq.md) | 194 | `result-track:2df8bb3c2d5d52078c25a6f159b5ea3cd2ded7e6441721b0bb528d52981fface` |
| 35 | `lemma` | [tendsto_measure_biUnion_Ici_zero_of_pairwise_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/tendsto-measure-biunion-ici-zero-of-pairwise-disjoint.md) | 198 | `result-track:cb5f92fd21aa45a6fae2ab3808985c10d4a505b43d7f9cf95bbde35a7225f936` |
| 36 | `theorem` | [abs_measureReal_sub_le_measureReal_symmDiff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/abs-measurereal-sub-le-measurereal-symmdiff.md) | 220 | `result-track:8709ae1c459763feb4ff57679da91928503b3386ffc4797d002e028bac70bbfe` |
| 37 | `theorem` | [abs_measureReal_sub_le_measureReal_symmDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/abs-measurereal-sub-le-measurereal-symmdiff-source-edition-2.md) | 235 | `result-track:ba8e174fe31a6917c08e3e0e2cf54ddac010a7d377a401741b0cfb944f1e74fd` |
| 38 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 240 | `declaration-track:b38242c53d1ed192d4eaa9d8473aeb9ea9695f10a4922bc02f84182b1c7178f4` |
| 39 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 243 | `declaration-track:3a4f4a280d58ac9e6fb19632e857acef17b63031915ce0b0a900fd0bc585483e` |
| 40 | `theorem` | [ite_ae_eq_of_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/ite-ae-eq-of-measure-zero.md) | 251 | `result-track:50b460b30b9e6bf2f68eedf62c907c97638316505c4df07df83af6016f8e0125` |
| 41 | `theorem` | [ite_ae_eq_of_measure_compl_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/ite-ae-eq-of-measure-compl-zero.md) | 260 | `result-track:e50c25b5a07cffc6fd374045ce7274ddbc932bc9c368c616cedeba741376bc62` |
| 42 | `def` | [FiniteAtFilter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/finiteatfilter.md) | 273 | `declaration-track:2f79fa1fa77327931665f3296e7a86f2323b8e589f0738210786961dd960b636` |
| 43 | `theorem` | [finiteAtFilter_of_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/finiteatfilter-of-finite.md) | 276 | `result-track:3c89a9b86463ea5889e6b314c96e61241e8605a1ffa7147e395463c04f3af8a4` |
| 44 | `theorem` | [FiniteAtFilter.exists_mem_basis](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/finiteatfilter-exists-mem-basis.md) | 280 | `result-track:a87cfbecf0d03413a81b51c3308161c75ad32d501cedf465d1e814c1b41b9474` |
| 45 | `theorem` | [finiteAtBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/finiteatbot.md) | 284 | `result-track:0bab3e0d6c131d577bcc10eec9a52b980f3269e82586b47b6da3e832c40fbc6a` |
| 46 | `structure` | [FiniteSpanningSetsIn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/finitespanningsetsin.md) | 292 | `declaration-track:aad9d9a31d7d2670297919115e83b4e51a884b9d97996c4447eb23c9e8b955d7` |
| 47 | `class` | [IsLocallyFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/islocallyfinitemeasure.md) | 302 | `declaration-track:ae6ede954f23a2e61d9bbb28bf0b8bcc76d6821d7b1ea72142720037f1715c83` |
| 48 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 306 | `declaration-track:b107e75df3c534eca7c44a06281981b3b8dc776fb137377ba3e5f33dc2e8834e` |
| 49 | `theorem` | [Measure.finiteAt_nhds](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-finiteat-nhds.md) | 310 | `result-track:d53b668474d881dd4fa542cfc6e9c18f6057503e028b8686b63b59c1610a741d` |
| 50 | `theorem` | [Measure.smul_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-smul-finite.md) | 314 | `result-track:ad0b0601b1240816052070ea3f0116b256ecb9bfa4fbb7e4591972eaae3dfa2e` |
| 51 | `theorem` | [Measure.exists_isOpen_measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-exists-isopen-measure-lt-top.md) | 319 | `result-track:6e1a24c702d5cfe7d1062255502db2cac76ecc361e2bb550ae1348cf95474474` |
| 52 | `instance` | [isLocallyFiniteMeasureSMulNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/islocallyfinitemeasuresmulnnreal.md) | 323 | `declaration-track:cbb960eac7fa5a0c34a3e4d62e8f94e50eb101028e80f7d9575dbc6fcec5bbe7` |
| 53 | `theorem` | [Measure.isTopologicalBasis_isOpen_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-istopologicalbasis-isopen-lt-top.md) | 331 | `result-track:07d856199d950d5d1b5921769e1e1f439eba083da216c42e6731c7b3857fb0d6` |
| 54 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 340 | `declaration-track:dcfcf3dc100c51f0553e65b809a2cab4387833a8f26f522bb7bce86b35b0c2e7` |
| 55 | `class` | [IsFiniteMeasureOnCompacts](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasureoncompacts.md) | 347 | `declaration-track:d9f5cd2050006156c20f4b8fbaaad66763a6256eeba69bcc87b7f1a9af234341` |
| 56 | `theorem` | [Finite Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-lt-top-source-line-351-occurrence-2.md) | 351 | `result-track:2d58e4a1b5c00debcc7e42885daaeba357401b9a49939589e35b8d56d5ed1635` |
| 57 | `theorem` | [Finite Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-ne-top-source-line-356-occurrence-2.md) | 356 | `result-track:205c0722910de8cbf85d653874010d2562478d310271c108e19f28350cb798e7` |
| 58 | `theorem` | [Finite Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-lt-top-source-line-362-occurrence-2.md) | 362 | `result-track:9511ab370712a7c805c39add96db70eaaf6dc6f941d7931e6125d1d9ee152bc3` |
| 59 | `theorem` | [measure_closedBall_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-closedball-lt-top.md) | 369 | `result-track:e57aa3e473060b1b459b5c7da7820775169c03dc2956e99afaaaed2822290286` |
| 60 | `theorem` | [measure_ball_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-ball-ne-top.md) | 374 | `result-track:3f555de94438b09dae45267e505fa02d132cc4029dd0057fc44bdfcfb6e8a30f` |
| 61 | `theorem` | [measure_ball_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-ball-lt-top.md) | 378 | `result-track:de5623d0c04fcdc5457eea5a2aee45b37c00abacbfd930a4b2871445165c1ced` |
| 62 | `theorem` | [IsFiniteMeasureOnCompacts.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasureoncompacts-smul.md) | 381 | `result-track:eecd6833df0e51ef2aae9716921f0c3cb638eb28a62a9588f0b4ff5676c54790` |
| 63 | `instance` | [IsFiniteMeasureOnCompacts.smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasureoncompacts-smul-nnreal.md) | 385 | `declaration-track:6eabc742d2e237979d469db77b094e2baede7db15fd022fdb6b4ea3e03193c10` |
| 64 | `instance` | [instIsFiniteMeasureOnCompactsRestrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/instisfinitemeasureoncompactsrestrict.md) | 389 | `declaration-track:805d900c50c49abca0867a99924b5cfc1d66936c6eba779205339004aa545831` |
| 65 | `theorem` | [IsFiniteMeasureOnCompacts.comap'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasureoncompacts-comap.md) | 394 | `result-track:1c6c79b2f5ac93601076d09421e3c0d320e05f706549ebd2433c1a72456c28f7` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 401 | `declaration-track:e9fc5e9a81dfbf9b25d9e9cc17fcfb5a08b0ee164ef35754546c1cd1a3cd18ee` |
| 67 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 406 | `declaration-track:9df9f82d74ec2fe4063570d08a8f01cf98fc2a66c3d4ba1ea76b9db9808bcc87` |
| 68 | `theorem` | [exists_pos_measure_of_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/exists-pos-measure-of-cover.md) | 412 | `result-track:98617555a72ffa6e183476653effbcfe41ccc83b905a9c47de8ea84e43a6cc2e` |
| 69 | `theorem` | [exists_pos_preimage_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/exists-pos-preimage-ball.md) | 418 | `result-track:2d71e7b9ee7faf24b4f640614f985499334498ef76f97069c3e038216960f697` |
| 70 | `theorem` | [exists_pos_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/exists-pos-ball.md) | 422 | `result-track:122b1a286e9fd89389ca0ba29f13c5ae411a9f64f32534b44aaa890c90b769d7` |
| 71 | `theorem` | [exists_ne_forall_mem_nhds_pos_measure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/exists-ne-forall-mem-nhds-pos-measure-preimage.md) | 428 | `result-track:ca648099b3c0a666347c0fae5293854025b3ce8e98a6c6251ca91b13c54b7495` |
| 72 | `theorem` | [ext_on_measurableSpace_of_generate_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/ext-on-measurablespace-of-generate-finite.md) | 444 | `result-track:89e5fdb64503f7f8824556aaee9314944771af9d1a470ac9189f00f12b11f262` |
| 73 | `theorem` | [ext_of_generate_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/ext-of-generate-finite.md) | 463 | `result-track:ee7857afbb58c2cda2f10185721c825e076d23935a24a2d31d58bfb0a502b863` |
| 74 | `theorem` | [filter_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/filter-mono.md) | 474 | `result-track:72d73ddef795fdec95e6ce8d57869cf332ecd75bf306e4542102bcc93a16bb59` |
| 75 | `theorem` | [inf_of_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/inf-of-left.md) | 477 | `result-track:9c7033388a638a7ca5f7a699a8d914aa2ea0205aa23b662669e7383e733bb0a3` |
| 76 | `theorem` | [inf_of_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/inf-of-right.md) | 480 | `result-track:645ff2223d6692c9d09ed39d0ecc6eb7f3c1d54040c88988472f730e5df7b683` |
| 77 | `theorem` | [inf_ae_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/inf-ae-iff.md) | 484 | `result-track:fcee8cc56ae141480383fb1d3501cdf170d2f7e7a09b25987a5e250af7b086d4` |
| 78 | `theorem` | [filter_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/filter-mono-ae.md) | 492 | `result-track:bd92a9c7b15694d6731c5395f3bdf880c5b371ae4daea4adec93418217353fcc` |
| 79 | `theorem` | [measure_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-mono.md) | 495 | `result-track:0c7a9b4dc2714a7058e18bf1b8a6d749a757e3c5ac69c17a5f2c5b944925028e` |
| 80 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/mono.md) | 499 | `result-track:7e1c0fa872ae3a5e97b2029dc1e0685c90c9badee5e4cd1d0bd04e2f4fc4bb0b` |
| 81 | `theorem` | [eventually](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/eventually.md) | 502 | `result-track:e60536e7b0b3ef06298bd206351288581f8814facf9db3ce71ff584d27c7ebf5` |
| 82 | `theorem` | [filterSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/filtersup.md) | 505 | `result-track:17df729734734b84de6ee5c374d99987e6145952efbc82e5ba2ebf9717009bdd` |
| 83 | `theorem` | [finiteAt_nhdsWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/finiteat-nhdswithin.md) | 511 | `result-track:dd7e5d85428fe4c374a2d57572087e8c00425cb67a81c8fcad79e002ef3976b3` |
| 84 | `theorem` | [finiteAt_principal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/finiteat-principal.md) | 516 | `result-track:293e61bd738361579bf93a2c1f6a6449840ef9443e8ba25aba86170294bf0a8d` |
| 85 | `theorem` | [isLocallyFiniteMeasure_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/islocallyfinitemeasure-of-le.md) | 519 | `result-track:0625e1e9df21dda71e6be28707c6e8a1b662589d25f8dbb57f1b63ff89d54fc6` |
| 86 | `theorem` | [exists_open_superset_measure_lt_top'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/exists-open-superset-measure-lt-top-source-edition-2.md) | 534 | `result-track:add736ec0d7f3c5347799a3b23ae5982b06dbd7a625bf8b213f1ca805fdaa52d` |
| 87 | `theorem` | [exists_open_superset_measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/exists-open-superset-measure-lt-top.md) | 551 | `result-track:371e1f715995ca458390ea61f68058405a810ab2ff71261d497c0306f7ad768c` |
| 88 | `theorem` | [measure_lt_top_of_nhdsWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-lt-top-of-nhdswithin.md) | 555 | `result-track:846708697e942c166c434f0ea0c0e9fa2e0016dbf4e2ba71f4b8287e08692d18` |
| 89 | `theorem` | [measure_zero_of_nhdsWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-zero-of-nhdswithin.md) | 560 | `result-track:9a90ee1a5d3d0c7212c5ead651c8ca8860d4ca746e4df5aeb2ba954a40f10cc5` |
| 90 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/instance.md) | 567 | `declaration-track:0a141c71dc4353e4960afeef9cd9986801967b86da112a9c568c1ba5f78cd3a8` |
| 91 | `theorem` | [isFiniteMeasure_iff_isFiniteMeasureOnCompacts_of_compactSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/isfinitemeasure-iff-isfinitemeasureoncompacts-of-compactspace.md) | 572 | `result-track:46ad1ff4e60d50dbc2ea81af8746d11c7b05c6370e1f3067f2482339163a89b6` |
| 92 | `def` | [MeasureTheory.Measure.finiteSpanningSetsInCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measuretheory-measure-finitespanningsetsincompact.md) | 583 | `declaration-track:98c165eb8948ec9c80173d7903db94645e413b4d727b7a5dd844807f99b1f737` |
| 93 | `def` | [MeasureTheory.Measure.finiteSpanningSetsInOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measuretheory-measure-finitespanningsetsinopen.md) | 596 | `declaration-track:21827dda64b81092a8c505c4bda5646a73f4c5f0ce5f01ab01d8d1c14ae805a0` |
| 94 | `theorem` | [measure_Icc_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-icc-lt-top.md) | 657 | `result-track:6f9314456fd09f7fafbb5045d0fc29c1006a38de56aca586b28cf3fd114b9688` |
| 95 | `theorem` | [measure_Ico_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-ico-lt-top.md) | 660 | `result-track:ed85a03ef526d6648353e86bea832c76a3a97ac94bd9de97c2405f9fe950a1fe` |
| 96 | `theorem` | [measure_Ioc_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-ioc-lt-top.md) | 663 | `result-track:a51dbc641166a384e1ff3296c8d6b33ffcda4b88e8bbd8c5119d927f342a9048` |
| 97 | `theorem` | [measure_Ioo_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/declarations/measure-ioo-lt-top.md) | 666 | `result-track:e577bc9d425b73eeef6d63018e84bb73448b8c0276b7f9e69410fa3a42ebb175` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8a0e59a24a167a2bfb0792b0af5570f6665a3e75fee761492708ddde4125c03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
