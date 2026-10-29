# Verification target: Measure Space Def Namespaced Measure Real Def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a4607dc15e429f7164e9a82008c2baf375c582e",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a4607dc15e429f7164e9a82008c2baf375c582e`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.OuterMeasure.Induced` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.AE` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure.md) | 82 | `declaration-track:47ce986ae10ad0599bfad3d264f88786ebbbb9c6ae1bf907127e90e8f23bbb0e` |
| 2 | `theorem` | [Measure.toOuterMeasure_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-tooutermeasure-injective.md) | 90 | `result-track:613e579cb91d88ff6490c9aa8e1d247e6a6e45af9280c1b4d74a992bfa5fa13c` |
| 3 | `instance` | [Measure.instFunLike](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-instfunlike.md) | 94 | `declaration-track:96c42b99e59baa1234e2dd1a6583104fe336540ec5ce719d6ef3b45c2678dd49` |
| 4 | `instance` | [Measure.instOuterMeasureClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-instoutermeasureclass.md) | 99 | `declaration-track:6361da4c71daee2a17ae20b1a832e3f8d110dcdbaa078bf0b37ad26538556aef` |
| 5 | `def` | [Measure.real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-real.md) | 106 | `declaration-track:cac2f5730523b45a8f779c8c6ce523444d13496103f755835bfd459c5922d44e` |
| 6 | `theorem` | [measureReal_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measurereal-def.md) | 109 | `result-track:110b71611ec880a4431493431f196ad431769c91bb7e8818d8a4341c0b430a4b` |
| 7 | `theorem` | [trimmed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/trimmed.md) | 120 | `result-track:de22df037a12fbbc4635357f64f247532e9792004265f299a4e8556539774e89` |
| 8 | `def` | [ofMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/ofmeasurable.md) | 126 | `declaration-track:35152bc83ed50b74040e6e488bc912efa9385177d50e98c76b51a9658367e96b` |
| 9 | `theorem` | [ofMeasurable_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/ofmeasurable-apply.md) | 139 | `result-track:c9200a0e96e4d86611c3798342bf71ae0012ca4acef2b313b5452ff823359862` |
| 10 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/ext.md) | 148 | `result-track:52da1157185b5dcded0d6ea17d4201aeec4368d4102a1388dcb4698e8f1b6b20` |
| 11 | `theorem` | [ext_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/ext-iff.md) | 152 | `result-track:8720a283636354df359e66cc42c7407900d4d5701ad004eaf2a3f78caeeb32e6` |
| 12 | `theorem` | [outerMeasure_le_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/outermeasure-le-iff.md) | 155 | `result-track:39fa39dbddd1327dc50e84c209d69e421ac1dd06a1078df313228ea717e45969` |
| 13 | `theorem` | [Measure.coe_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-coe-tooutermeasure.md) | 160 | `result-track:0545e00f8f84f7fef8755a9ef1f5431f700f5fef4befbbf693646e6da315a282` |
| 14 | `theorem` | [Measure.toOuterMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-tooutermeasure-apply.md) | 162 | `result-track:42aac4be6e66cfe0433cd6f9a30d9e311b0543578c018219066fbe1cc5850a96` |
| 15 | `theorem` | [measure_eq_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-eq-trim.md) | 166 | `result-track:8829362a1d142d216758672a076527099cf6cdf27a009dd422a8c71de754e79e` |
| 16 | `theorem` | [measure_eq_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-eq-iinf.md) | 169 | `result-track:2442a478ac516852d00a654f6683a7974f85efd7711259c3881502c146523008` |
| 17 | `theorem` | [measure_eq_iInf'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-eq-iinf-source-edition-2.md) | 175 | `result-track:3d909f9ae0516639221b43c07d57c555c90ee08df99a81e5cc8431aa6caf1db6` |
| 18 | `theorem` | [measure_eq_inducedOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-eq-inducedoutermeasure.md) | 179 | `result-track:380a789ad67c67cd5c9e7cb3f9e3fd7c1a5f4616816d27ba4e63bfd0bd786ced` |
| 19 | `theorem` | [toOuterMeasure_eq_inducedOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/tooutermeasure-eq-inducedoutermeasure.md) | 183 | `result-track:347d9da2ade4d6efc1ee4facfc29b8c495a965dd99f092d8a2c4f201a95b1b8e` |
| 20 | `theorem` | [measure_eq_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-eq-extend.md) | 187 | `result-track:a15943c13d02a8f07821c1d357a76de73bf86606c8c58b529f66754e2227ecbe` |
| 21 | `theorem` | [nonempty_of_measure_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/nonempty-of-measure-ne-zero.md) | 192 | `result-track:627b3456d61ca573e4a970b1e47a535a747a815efdecab64993059439ceea549` |
| 22 | `theorem` | [measure_mono_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-mono-top.md) | 195 | `result-track:fc766092d0fff0b19375855f6e192525fbdb39e6d322de3373f9011067252563` |
| 23 | `theorem` | [measure_le_measure_union_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-le-measure-union-left.md) | 199 | `result-track:f0fe55b0257e463ba36083d0ec3233f7326b7bc1efa0d278da02149c8c88cdc4` |
| 24 | `theorem` | [measure_le_measure_union_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-le-measure-union-right.md) | 202 | `result-track:4bf178a7fe7a84cd04baeda7e1254609d8566eafe78459b407025e1205cffb79` |
| 25 | `theorem` | [exists_measurable_superset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/exists-measurable-superset-source-edition-2.md) | 205 | `result-track:64a36ad5f256cc8f4f6412569230de6db7d3145fdd7697e887b82069f44f4df5` |
| 26 | `theorem` | [exists_measurable_superset_forall_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/exists-measurable-superset-forall-eq.md) | 211 | `result-track:204d915f5353f93055bd6a9ffebd6f384f29deae5185f7307c91cd02b68e7603` |
| 27 | `theorem` | [exists_measurable_superset₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/exists-measurable-superset.md) | 216 | `result-track:00d44d541ea8802053dfea36992c5826686a5014c6e75be3ee17408536da873a` |
| 28 | `theorem` | [exists_measurable_superset_of_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/exists-measurable-superset-of-null.md) | 221 | `result-track:aa2764ff4cbec774f0e8c1aab7489478c99b0eb528d4a879bcd02b0e3c517299` |
| 29 | `theorem` | [exists_measurable_superset_iff_measure_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/exists-measurable-superset-iff-measure-eq-zero.md) | 224 | `result-track:ef5abe1926b268eee258dcbd8dc1c85569c740f78d8f40abd70dd745a7383aa4` |
| 30 | `theorem` | [measure_biUnion_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-biunion-lt-top.md) | 228 | `result-track:3c8a4319b64b1b188e5c526e6721981fea4fa48bf64401c3503d341c87db0d5e` |
| 31 | `theorem` | [measure_union_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-union-lt-top.md) | 235 | `result-track:82374fa3106a7068142200ed34a21505f433ae9fea94cac0dd35aad8550e240e` |
| 32 | `theorem` | [measure_union_lt_top_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-union-lt-top-iff.md) | 239 | `result-track:c058d334e4698b9ff3497fc7e46d74709e109eabcc7f70a9a07743442e606e60` |
| 33 | `theorem` | [measure_union_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-union-ne-top.md) | 244 | `result-track:1d788b136388515cc481a0381db3b26b18ee861c80ad2a2297bf908aa1c41389` |
| 34 | `theorem` | [measure_symmDiff_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-symmdiff-ne-top.md) | 248 | `result-track:88a088a388ff85994288be8662db7ae857819d208fe8306bad1a44c55d347edd` |
| 35 | `theorem` | [measure_union_eq_top_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-union-eq-top-iff.md) | 252 | `result-track:f572a70de156ff7831b6515f6a65ae39dcc0500c5e039d3a39b3f0ecb8d760d1` |
| 36 | `theorem` | [exists_measure_pos_of_not_measure_iUnion_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/exists-measure-pos-of-not-measure-iunion-null.md) | 255 | `result-track:f18e8884a9f40cf06d493f8206036d9c11fb7339f5336825dac0c20efe2fef90` |
| 37 | `theorem` | [measure_lt_top_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-lt-top-of-subset.md) | 260 | `result-track:8625f572dcd02177d5d3fdec509d272fae1d90268cb11dda6824881a3dec9af7` |
| 38 | `theorem` | [measure_ne_top_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-ne-top-of-subset.md) | 263 | `result-track:d128528c400f97fb40a19d582d29be1f02b45505af824729727628a31c076394` |
| 39 | `theorem` | [measure_inter_lt_top_of_left_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-inter-lt-top-of-left-ne-top.md) | 266 | `result-track:0752dfb0a434b3eb6925795864a00e4d99b2ebde4fe395646977039f4e801c12` |
| 40 | `theorem` | [measure_inter_lt_top_of_right_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-inter-lt-top-of-right-ne-top.md) | 269 | `result-track:6b7f3ee2462f45dadf9e584ec50d81e87b5c69c9c8c37dece37cb4c60dccb5df` |
| 41 | `theorem` | [measure_inter_null_of_null_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-inter-null-of-null-right.md) | 272 | `result-track:645eeeec19572e3278b631d5d8551820d3969dc3dcb1e7500d83750d3ded2a12` |
| 42 | `theorem` | [measure_inter_null_of_null_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-inter-null-of-null-left.md) | 275 | `result-track:6418dec16066d7cb47628a4d94f4f3c647678369ccb491b243da0052d938324f` |
| 43 | `theorem` | [Measure Space Def Namespaced Measure Real Def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/ae-induction-on-inter.md) | 290 | `result-track:935119677fb1c74b0664c2b005c6cdeb071f122e5eff46a46e796f399f6a3607` |
| 44 | `theorem` | [subset_toMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/subset-tomeasurable.md) | 319 | `result-track:ae02a28518623c3e48efde2015085f0c5dbaa2844f780fe9b316b54b5eee705b` |
| 45 | `theorem` | [ae_le_toMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/ae-le-tomeasurable.md) | 323 | `result-track:9bc64e3ed1aa311ef2a2c0781835c2be26a33d23d3f263b873cb63fe72b00b65` |
| 46 | `theorem` | [measurableSet_toMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measurableset-tomeasurable.md) | 327 | `result-track:7996b34273a14cab5a11fbf3c4f582fe5fafed7e150cd6683013296fad7ec9a5` |
| 47 | `theorem` | [measure_toMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measure-tomeasurable.md) | 334 | `result-track:8034413b234925369007a1aff5c2c7f6a1eb30bf04e9afb76cf17e4d04060269` |
| 48 | `class` | [MeasureSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measurespace.md) | 342 | `declaration-track:2dabdd1558a082de9184fbc5493a5132d6b0b2663e944e8ea9e2e6587cc0bdec` |
| 49 | `macro` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/macro.md) | 366 | `declaration-track:3fd071698c348e428f3b105e96d13b167ca5af10d61a79cc835027def8d8d892` |
| 50 | `def` | [AEMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/aemeasurable.md) | 393 | `declaration-track:699f34dfa64047fe218efb06aaea7091c83d4333c9af5cb97d251ea0193f97dc` |
| 51 | `theorem` | [Measurable.aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measurable-aemeasurable.md) | 397 | `result-track:773edd53150819cf02b6583c1f0b0917582cddb7a5bee82f60e450b309481da0` |
| 52 | `lemma` | [of_discrete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/of-discrete.md) | 402 | `result-track:500a08ae7772bdfc75355f22712357d5c6f3d9506e20bfdbac9e6361c3531c5a` |
| 53 | `def` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/mk.md) | 408 | `declaration-track:55d0a1690dbdb649c899f1502d17e35ba082949a12702444eac84c6dd1dad8ad` |
| 54 | `theorem` | [measurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measurable-mk.md) | 412 | `result-track:f7777efa36669878aa6b23feaa5bbb162cfa4e896f3e5fdb82e95bc3e3a5c993` |
| 55 | `theorem` | [ae_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/ae-eq-mk.md) | 415 | `result-track:6a3a6239e50db7d5be4ef75a13dfb353a8a894343f57c6cb4260d436eb5021a6` |
| 56 | `theorem` | [congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/congr.md) | 418 | `result-track:bbf2a05802186316fb189dd0dbefdbb160f83957700798b3d947ad9617550133` |
| 57 | `theorem` | [aemeasurable_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/aemeasurable-congr.md) | 423 | `result-track:d6ef12b25bc94226f86b17c1e26a19879f612701899235e74d810d91627d36cf` |
| 58 | `theorem` | [aemeasurable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/aemeasurable-const.md) | 427 | `result-track:983ce1032b377781c2ab79fd21f02ae048e7bc16fa1eb6a77a1dd4e9dc5e2957` |
| 59 | `theorem` | [aemeasurable_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/aemeasurable-id-source-edition-2.md) | 431 | `result-track:c1c973dda63091b2ad51dee8b0d0367ac4434d6ad52e6524648997d1e2f387e4` |
| 60 | `theorem` | [aemeasurable_id'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/aemeasurable-id.md) | 435 | `result-track:8980806a0b2f182e258d05d7ba0b10742db51bcbdbc2360f43fd5e33ca702077` |
| 61 | `theorem` | [Measurable.comp_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measurable-comp-aemeasurable-source-edition-2.md) | 438 | `result-track:f652984109fba871e98374776034547ae582d83b3891fbb2612b744e6638f2db` |
| 62 | `theorem` | [Measurable.comp_aemeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/measurable-comp-aemeasurable.md) | 443 | `result-track:d2a20d71821290d6451e4025d68774fd4b4ccca4f0996cb0073d690cdada6e43` |
| 63 | `theorem` | [aemeasurable_pi_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/aemeasurable-pi-iff.md) | 449 | `result-track:9339be19ae061d0e263ec7a1277a062f552c8bbd6d98a62bdbc118e9170f1961` |
| 64 | `theorem` | [aemeasurable_pi_lambda](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedMeasureRealDef.lean/declarations/aemeasurable-pi-lambda.md) | 460 | `result-track:f7d0d85df6e0e38279cadf03c65f039d7f8df2c29a8785b133d782e981617e76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed20673361204f0b0a8a318705aeddd05d868793b00164c8305d382593679e8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
