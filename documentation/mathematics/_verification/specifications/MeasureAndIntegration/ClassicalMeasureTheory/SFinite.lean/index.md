# Verification target: SFinite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aff6da0a146029080804678d1230413d44bca3b",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aff6da0a146029080804678d1230413d44bca3b`.

Source path: `GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sfinite.md) | 28 | `declaration-track:aad0ee085f19547fdfd5678fc853a2de2a76a0fc7f3da298423b83f661a8caab` |
| 2 | `def` | [sfiniteSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sfiniteseq.md) | 32 | `declaration-track:d3d005fa18847598255016146d0538fb2c455d368b72dd0d1f8f8219ee19d9b3` |
| 3 | `instance` | [isFiniteMeasure_sfiniteSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/isfinitemeasure-sfiniteseq.md) | 34 | `declaration-track:ea703ff95bc3bb4b1017f5705a50b72f3bb7c5ba9120f85fb006feab96f14b2a` |
| 4 | `lemma` | [sum_sfiniteSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sum-sfiniteseq.md) | 37 | `result-track:7cd7235bbeb96e3d368ec03125edf96a235bd7ca9039719e329bffed6bcd2d2a` |
| 5 | `lemma` | [sfiniteSeq_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sfiniteseq-le.md) | 40 | `result-track:aaf1743662db51ef4dbdffeeb4b28fb6f71e7c2d196144ad8e07d1906725f116` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-6.md) | 43 | `declaration-track:78e40a434cd6dd95df5c18871fb0efec6458c47eb8fa1102541cbbaa7668b08f` |
| 7 | `lemma` | [sfiniteSeq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sfiniteseq-zero.md) | 46 | `result-track:b597c0414884f62927f5fb94589091d79528fbcbb47adfcffb5d24fb1d870605` |
| 8 | `lemma` | [sfinite_sum_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sfinite-sum-of-countable.md) | 51 | `result-track:50188052c51707bc4dafb927ea81e52df4bb7d9f6b29148994087c283a837a33` |
| 9 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-11.md) | 62 | `declaration-track:fbebefd33353b1baaad2829ef216aa899cc914523a58a203edbaa5bb0c371118` |
| 10 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-8.md) | 67 | `declaration-track:8d83fd294616bf6c205e455a3aa7cfcd1d679503f3a8e4821468542827658620` |
| 11 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-10.md) | 71 | `declaration-track:f59ef323b378edad7aec62e56e7b27254374bc7fec038e57975c4b87488351f2` |
| 12 | `theorem` | [exists_isFiniteMeasure_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/exists-isfinitemeasure-absolutelycontinuous.md) | 79 | `result-track:334bcccc43f6f629f794ac88a28a5d94e2119a86b3977d5fe109add50e0cf206` |
| 13 | `class` | [SigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sigmafinite.md) | 93 | `declaration-track:2c058bcb499dd7576de38fc7d291676175e82a6e9b37c18c2cdceda621a36c17` |
| 14 | `theorem` | [sigmaFinite_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sigmafinite-iff.md) | 96 | `result-track:62f31b3aa0e9f942dd7adba0e474f357fbf2fe330b412d68042686fea8845de5` |
| 15 | `theorem` | [SigmaFinite.out](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sigmafinite-out.md) | 99 | `result-track:33f3db4d9686cb7ea61e91854f1c3c0e79e3936178cb3d41f987b5ef2558d5a2` |
| 16 | `def` | [Measure.toFiniteSpanningSetsIn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/measure-tofinitespanningsetsin.md) | 103 | `declaration-track:3650ad8c0ad3840759f480bde25452ddf9595c1015c5f4e4d216943620c55c79` |
| 17 | `def` | [spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/spanningsets.md) | 115 | `declaration-track:2e0f86a109f714477b974f55c09a13166320ffbbdb67d55473ef695e38a9d785` |
| 18 | `theorem` | [monotone_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/monotone-spanningsets.md) | 118 | `result-track:5217b2f26d828d7cd619b7d689262f3a2c0aee6f9550e7e2d6ac2938d884a113` |
| 19 | `lemma` | [spanningSets_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/spanningsets-mono.md) | 122 | `result-track:af7432079d0ab84e8f9d73b182351fa55bae30818df5b6f5703491da72a98de9` |
| 20 | `theorem` | [measurableSet_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/measurableset-spanningsets.md) | 125 | `result-track:1aefafe97da59081522d6951d6b99025fa2cf12941be0cb573fc94926809fbcc` |
| 21 | `theorem` | [measure_spanningSets_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/measure-spanningsets-lt-top.md) | 129 | `result-track:61304e50e7f55cb41bf46369dcc604c40246c93bd5eadb456f5566ba809d17a4` |
| 22 | `theorem` | [iUnion_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/iunion-spanningsets.md) | 134 | `result-track:731754208d564eac2d97dc6ea3c1d529612ce48f2f6700d433d55bb81aa343fe` |
| 23 | `theorem` | [isCountablySpanning_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/iscountablyspanning-spanningsets.md) | 137 | `result-track:5df94257a4a21c3af49857c38a18054a0161b73f965f777e630a278a31a6c8b4` |
| 24 | `def` | [spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/spanningsetsindex.md) | 143 | `declaration-track:1eff20f5fa0e851d89e6e306691801bbce07e7b82103e45b86645cb9a1471365` |
| 25 | `theorem` | [measurableSet_spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/measurableset-spanningsetsindex.md) | 147 | `result-track:dd3175fd0c703f9b3f57b31d3c616ae80924785be9c7a0c6dac48971de6e499c` |
| 26 | `theorem` | [preimage_spanningSetsIndex_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/preimage-spanningsetsindex-singleton.md) | 152 | `result-track:caf7d2fb4c756b572eb997079ebffb5d03d01b66a685bacb64f3c31280363932` |
| 27 | `theorem` | [spanningSetsIndex_eq_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/spanningsetsindex-eq-iff.md) | 156 | `result-track:be591d227e9b65a62f2e7604caac5d7a53e314fbc4f81d5750e14430008506a2` |
| 28 | `theorem` | [mem_disjointed_spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/mem-disjointed-spanningsetsindex.md) | 160 | `result-track:23a92457d4adbd8706d8628e84c5868a2710e8dbf0fe897cfdb01d252c5619ef` |
| 29 | `theorem` | [mem_spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/mem-spanningsetsindex.md) | 164 | `result-track:51a1b7e1518e6d0cb2f2f91f4d3d9d2a256d1d88a10bd395b9921438f1855ca3` |
| 30 | `theorem` | [mem_spanningSets_of_index_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/mem-spanningsets-of-index-le.md) | 168 | `result-track:dcea73a9b2ddc574365ba8951a2dd2d6cee04759a04649c456fd2a7a73490e3b` |
| 31 | `theorem` | [eventually_mem_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/eventually-mem-spanningsets.md) | 172 | `result-track:b893a9a3edabcbf19c2abe3d45f7a82ce2548f4b6d9722a8dac4ad99773ea157` |
| 32 | `lemma` | [measure_singleton_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/measure-singleton-lt-top.md) | 176 | `result-track:c832a32930245a38143ee861f494b758437983be66cd2786a7bfa3333f2301a5` |
| 33 | `theorem` | [sum_restrict_disjointed_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sum-restrict-disjointed-spanningsets.md) | 180 | `result-track:e5f3df99b0c6c770e25c68f5414b9f646b66e088b382383a9c119d7fc62093ac` |
| 34 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-2.md) | 186 | `declaration-track:0fc54da03ef12ccb718d655b2c49f325f4ffe9f289c42f383dcb22f9d4c0f3c6` |
| 35 | `theorem` | [forall_measure_inter_spanningSets_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/forall-measure-inter-spanningsets-eq-zero.md) | 196 | `result-track:07a7739fd993218b22ea1d0458f8c0a0f9c76c6530db7ecdf734ee3db2230f7f` |
| 36 | `theorem` | [exists_measure_inter_spanningSets_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/exists-measure-inter-spanningsets-pos.md) | 204 | `result-track:3150988e1679a25c651a9dae9c972057362474632256df0e3c098923738ea97a` |
| 37 | `theorem` | [finite_const_le_meas_of_disjoint_iUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/finite-const-le-meas-of-disjoint-iunion.md) | 212 | `result-track:e62b2870379cc0f553d2ed7f8d06462d70b7b73ca3fd48aa3a283ead190b9b48` |
| 38 | `theorem` | [finite_const_le_meas_of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/finite-const-le-meas-of-disjoint-iunion-source-edition-2.md) | 222 | `result-track:fb5c957cd70e8d4aac16b1340acc0cdc9f9f193a5a6dc60d204dca3ed7fc72ae` |
| 39 | `theorem` | [_root_.Set.Infinite.meas_eq_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/root-set-infinite-meas-eq-top.md) | 231 | `result-track:f9ad31b0166e3d48ed42319a2b57003a688d78ae13bd1fde7e9f56017bb9b315` |
| 40 | `theorem` | [countable_meas_pos_of_disjoint_of_meas_iUnion_ne_top₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/countable-meas-pos-of-disjoint-of-meas-iunion-ne-top.md) | 243 | `result-track:98317dd3cef90a91c914cc5bdbbd5704ad44ce98c858faff83be020f783b7123` |
| 41 | `theorem` | [countable_meas_pos_of_disjoint_of_meas_iUnion_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/countable-meas-pos-of-disjoint-of-meas-iunion-ne-top-source-edition-2.md) | 263 | `result-track:cd1d07f8998a2bfda8fd144a987e2dd1c1edaa0ada9f389f312e4b92e488a336` |
| 42 | `theorem` | [countable_meas_pos_of_disjoint_iUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/countable-meas-pos-of-disjoint-iunion-source-edition-2.md) | 272 | `result-track:1906a2e9f39f062c3e229518a18c7dbccd084d2bf117110bb91b595f0f7158af` |
| 43 | `theorem` | [countable_meas_pos_of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/countable-meas-pos-of-disjoint-iunion.md) | 295 | `result-track:11ce3c6f5bf4a117b2d7b5ca5221eb0bb40c0fbd900aafe57443e1c4902029d1` |
| 44 | `theorem` | [countable_meas_level_set_pos₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/countable-meas-level-set-pos.md) | 301 | `result-track:26897af6abad6834690e73d66a3e7589484debf7fbd510068bb061fec2092da0` |
| 45 | `theorem` | [countable_meas_level_set_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/countable-meas-level-set-pos-source-edition-2.md) | 310 | `result-track:64bf8cde61d3773abfa6252478a5219131acb52bccc13c205f55f92b21cdd70a` |
| 46 | `theorem` | [measure_toMeasurable_inter_of_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/measure-tomeasurable-inter-of-sum.md) | 318 | `result-track:7ae234522325e1e20f481e3e3dab920ae7d13b4155e7e675e8999b91db824580` |
| 47 | `theorem` | [measure_toMeasurable_inter_of_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/measure-tomeasurable-inter-of-cover.md) | 349 | `result-track:72f5d303a277bb78921e655b1e5c664f29ed7ef1b7716296314357ac952271b9` |
| 48 | `theorem` | [restrict_toMeasurable_of_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/restrict-tomeasurable-of-cover.md) | 413 | `result-track:ea1d749f00d6bfb102323b834bb3b68212ebb5ce3a7c61314456c777bc24bd71` |
| 49 | `theorem` | [measure_toMeasurable_inter_of_sFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/measure-tomeasurable-inter-of-sfinite.md) | 422 | `result-track:ac3cb73b81214256a38924ed44f3b6333ae008ad181a6c917ae379c1b827971b` |
| 50 | `theorem` | [restrict_toMeasurable_of_sFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/restrict-tomeasurable-of-sfinite.md) | 427 | `result-track:7ec647f79bdc24aa4583abffcac16684720f94083f6bd22e2235d18818ee9334` |
| 51 | `theorem` | [iSup_restrict_spanningSets_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/isup-restrict-spanningsets-of-measurableset.md) | 434 | `result-track:5b309605efc4148f6feb7f71c67bb543e3324439f015923be9953e756ea0c3ba` |
| 52 | `theorem` | [iSup_restrict_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/isup-restrict-spanningsets.md) | 441 | `result-track:d9a54a4f93f5302e179c4f37d4abe3fe0bdf6570e41767bebc8f99a1f26ce65f` |
| 53 | `theorem` | [exists_subset_measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/exists-subset-measure-lt-top.md) | 451 | `result-track:ba2b509d555a54bbdeb983b5fea6e600adb1d8b33910ff5deb6a18d0ad9e1bef` |
| 54 | `def` | [mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/mono-source-edition-2.md) | 467 | `declaration-track:7b25306e4ffc37f284169b37eae7cc7510b54a3d3c42fec2363bec898f2a7fd6` |
| 55 | `def` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/mono.md) | 472 | `declaration-track:36fa60244eae0b93e234fe2f68944132c33fae83c58289efacbc9dd2218165f3` |
| 56 | `theorem` | [sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sigmafinite-source-edition-2.md) | 477 | `result-track:f72c22cecfaaf222adda93f093e592d659d5b90616f9b9c845d68ae9129df485` |
| 57 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/ext.md) | 482 | `result-track:6fc92aac3801741b7107f06e7838d0b62a04670a10814c2e2f98a021bcd47672` |
| 58 | `theorem` | [isCountablySpanning](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/iscountablyspanning.md) | 486 | `result-track:39b27adf50f5c520f2f576b8955c3dc4697bad194b68e822aba0f0d7a2a19e20` |
| 59 | `theorem` | [sigmaFinite_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sigmafinite-of-countable.md) | 491 | `result-track:0fe18e9464329ba7f355da156acf53c768a008dbec44824dc966250b4af9218a` |
| 60 | `def` | [FiniteSpanningSetsIn.ofLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/finitespanningsetsin-ofle.md) | 499 | `declaration-track:e2d7e95860a2fdd71df28b848c16a3a6432a9a09462d77cf8f9f73069e74aa58` |
| 61 | `theorem` | [sigmaFinite_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sigmafinite-of-le.md) | 506 | `result-track:446041acfeb31a4fd05e2f44f6cf0c64641dad44f2441d153fb8f7c2e325a2c0` |
| 62 | `lemma` | [add_right_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/add-right-inj.md) | 509 | `result-track:e5a862a2d6a9d0df155b30ed4c6bc675932f496bd47377b90773713e65f8e683` |
| 63 | `lemma` | [add_left_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/add-left-inj.md) | 520 | `result-track:2c37e8a65f1f7437287802601598d9222f8b341d4658254b596dfe6fc8f48961` |
| 64 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-9.md) | 526 | `declaration-track:c94a51cee676ceecc42c9a1762d2bc192d3803ff04d466c23ebd0441d381ecb4` |
| 65 | `lemma` | [Measure.sigmaFinite_iff_measure_singleton_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/measure-sigmafinite-iff-measure-singleton-lt-top.md) | 533 | `result-track:f6aa0e33a4d04dea24403833c431ec2bf3ce18df342e2894e7d26043d4089ec5` |
| 66 | `theorem` | [sigmaFinite_bot_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sigmafinite-bot-iff.md) | 543 | `result-track:6daf654b05492676037452a81e987a5908ca7020760bb7e69b728c5c105d6183` |
| 67 | `instance` | [Restrict.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/restrict-sigmafinite.md) | 564 | `declaration-track:0c055f7206da5f705f8213e0826dcfc649c65300771d479e25272920f04f37a3` |
| 68 | `instance` | [sum.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sum-sigmafinite.md) | 570 | `declaration-track:3a3d9c39c6f3eee80538ddcf71bf41635b42d46f2cbef005143f857878d5b747` |
| 69 | `instance` | [Add.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/add-sigmafinite.md) | 583 | `declaration-track:fdfcb82fe762e867ff9bc9fef4fe6de85515e2ae629eedc276612fe414b9420b` |
| 70 | `instance` | [SMul.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/smul-sigmafinite.md) | 588 | `declaration-track:05448d896ccbc511222e152b80bba0be84f09370229ffbf4b97d4fb5c021d8d7` |
| 71 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-7.md) | 599 | `declaration-track:7ceb5923bba89e0f5f6eeb2c531ae5efb095f1e8ffc46f288fa7ec268de72259` |
| 72 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-5.md) | 602 | `declaration-track:6ef03dd121f475862b71729e49e570ffa1e4b826aa58e424461454b53a3eed1e` |
| 73 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-4.md) | 605 | `declaration-track:541f11353118089ac5c29a729cb2a02d97b33b973109f30c4271905f7574d880` |
| 74 | `theorem` | [SigmaFinite.of_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/sigmafinite-of-map.md) | 608 | `result-track:d6f25f6dcb9159d5f1c4df7441fc30d77531d6f2daf804a92add59ff68b13cc1` |
| 75 | `lemma` | [_root_.MeasurableEmbedding.sigmaFinite_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/root-measurableembedding-sigmafinite-map.md) | 615 | `result-track:67ca5b8de473a421cde24f60c0e881012bc287b1e13649cafafe7adb45c31458` |
| 76 | `theorem` | [_root_.MeasurableEquiv.sigmaFinite_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/root-measurableequiv-sigmafinite-map.md) | 626 | `result-track:fa3bb18a018705f2246fbda7ba714c582295db3ab5dea94e4fedb9effb252dc7` |
| 77 | `theorem` | [ae_of_forall_measure_lt_top_ae_restrict'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/ae-of-forall-measure-lt-top-ae-restrict.md) | 631 | `result-track:7ce1711263894e31818cb42736f759c75c6c91639cb5c0b168b0b551af046c02` |
| 78 | `theorem` | [ae_of_forall_measure_lt_top_ae_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/ae-of-forall-measure-lt-top-ae-restrict-source-edition-2.md) | 645 | `result-track:a58b8d342e25a7035fd51d969df1617a9769a59023d2ed267543519faeede09a` |
| 79 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance.md) | 649 | `declaration-track:07d2df14e6c538efc97c30638c3845b36b95ea1382b7b81b7b6e9ca081cf6ef6` |
| 80 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/instance-source-edition-3.md) | 657 | `declaration-track:31aaf138a3cb86e87a4a80610499b41e1424cc74aef9ffa5cb78c36e920aa2dd` |
| 81 | `def` | [FiniteSpanningSetsIn.disjointed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/finitespanningsetsin-disjointed.md) | 671 | `declaration-track:f8ccf97f8bb302b878ade36b650efa8181983c1f29975dc4a521a4cecd696bc1` |
| 82 | `theorem` | [FiniteSpanningSetsIn.disjointed_set_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/finitespanningsetsin-disjointed-set-eq.md) | 678 | `result-track:93bf9400260f15d67de627c3cd86d407766badd871a0e0b82530e6f9814d5097` |
| 83 | `theorem` | [exists_eq_disjoint_finiteSpanningSetsIn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFinite.lean/declarations/exists-eq-disjoint-finitespanningsetsin.md) | 682 | `result-track:f164574148904bcd0a50b2fb0fb0dc5f7dff21a2a3813c270db487bcf5c8930a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35167d659ccc6aa980522646c1a60a4e155bc58389ea37ea19551a22875ec405 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SFinite/Variant92267ba9729e9474e223246c9c037b09ef9c54b7c0348bea11c5883a03d7396f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
