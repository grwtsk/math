# Verification target: SFinite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "853877bcadd246cff80f7cda3a45128b777b6388",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `853877bcadd246cff80f7cda3a45128b777b6388`.

Source path: `GRWTSK/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sfinite.md) | 36 | `declaration-track:248a92b6db1d42155c5382787f9f7a0374ecaf230fe4c03d85dff3e84e7bc5e1` |
| 2 | `def` | [sfiniteSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sfiniteseq.md) | 40 | `declaration-track:70ddd1e0957d65b0c7c8daa63c2cc70edf9e3ac75ff0cae74120cc21832fe165` |
| 3 | `instance` | [isFiniteMeasure_sfiniteSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/isfinitemeasure-sfiniteseq.md) | 42 | `declaration-track:c6a75fb7445cbe85871ef01d0fd568d12ad61c50c01e2df50ef6335c20ae8b46` |
| 4 | `lemma` | [sum_sfiniteSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sum-sfiniteseq.md) | 45 | `result-track:bd1a63dd0d46ffd0dccf4f7025c5759ffb03409507264d063f7b6452e988e74b` |
| 5 | `lemma` | [sfiniteSeq_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sfiniteseq-le.md) | 48 | `result-track:26a9766ca808835926425112e6122dc6e7aeb94d3e83df433515fd0dc897eefb` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-6.md) | 51 | `declaration-track:5a20362ae91858a8cb6bc77a1c4d8e3ada8ae64da93bdb2744d8f661b84b3fbf` |
| 7 | `lemma` | [sfiniteSeq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sfiniteseq-zero.md) | 54 | `result-track:af7b3411b18e63b9d0ffaf5511f622d12a26ee1e5371c579bb00d13948d22897` |
| 8 | `lemma` | [sfinite_sum_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sfinite-sum-of-countable.md) | 59 | `result-track:3309df19ab2dabfbc3f03f1bb919288cd4113d8d03bcee61e0f94a80448e17b9` |
| 9 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-9.md) | 70 | `declaration-track:b7d643dbbbbda59d31748f494dfd81d73796d8352b7b12334cfb9279c42acbc6` |
| 10 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance.md) | 75 | `declaration-track:02eb0af399f36414baca652cd1bfe0049cfc825b8160b9fff8af30fb0e4743d9` |
| 11 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-5.md) | 79 | `declaration-track:530aef1eb1aff0190e028869a955e98594c8560e2f8d22180c0b550887f110ad` |
| 12 | `theorem` | [exists_isFiniteMeasure_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/exists-isfinitemeasure-absolutelycontinuous.md) | 87 | `result-track:f3e76e24d7ae908b1db65ea6284b57f818b532609efbae86d5e6130dcc52311e` |
| 13 | `class` | [SigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite.md) | 101 | `declaration-track:6c115a101b94d38d06d0937e06e4c43e0f58247accad656c4d5d0d2d6576da02` |
| 14 | `theorem` | [sigmaFinite_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite-iff.md) | 104 | `result-track:b49f620015908f7addd238feb442694445d71ab26d5381fdd6d13b7ae59ad8c0` |
| 15 | `theorem` | [SigmaFinite.out](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite-out.md) | 107 | `result-track:7f8912f18559ea2f95ddaaef7110a4c9a58d59abd880c9b3d9a88b24e5accd25` |
| 16 | `def` | [Measure.toFiniteSpanningSetsIn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/measure-tofinitespanningsetsin.md) | 111 | `declaration-track:9abb967f803f022545b6226664457a227b6449d7a5e456fa0bf78197b0fc600b` |
| 17 | `def` | [spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/spanningsets.md) | 123 | `declaration-track:9d869bf5947e5446f888590050e00b4be583184a7aaaf9171d99cd136e8deb0a` |
| 18 | `theorem` | [monotone_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/monotone-spanningsets.md) | 126 | `result-track:4bb47bd36f180295d60ebaef05b20205068a4b0c4dffeec712ee0f1ba62516b5` |
| 19 | `lemma` | [spanningSets_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/spanningsets-mono.md) | 130 | `result-track:af4a2a616e3625c2e55f5539e8a9b8a06c44c00959803b412ca19fa3a836e6b5` |
| 20 | `theorem` | [measurableSet_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/measurableset-spanningsets.md) | 133 | `result-track:d6f8830c914f3a0579e45d8fe5bf79a50a6eef5739c2395227b90b90d47932da` |
| 21 | `theorem` | [measure_spanningSets_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/measure-spanningsets-lt-top.md) | 137 | `result-track:de49db1a21198048ecf4f258e75bce605a4fa7c5f070823363872bf7c49482e3` |
| 22 | `theorem` | [iUnion_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/iunion-spanningsets.md) | 142 | `result-track:34b58773920521221bbee26445d35cba12e9292f0f33098ced88f68b3fc499b6` |
| 23 | `theorem` | [isCountablySpanning_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/iscountablyspanning-spanningsets.md) | 145 | `result-track:eeaa33f37cd8cd84da4b6319ae873c85c7a3a71ea81c44fb41cfe1c912ee5c62` |
| 24 | `def` | [spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/spanningsetsindex.md) | 151 | `declaration-track:7d5898fd5b2fcc340a63973eb788047bf09424563ae1e875bd406d338b384f72` |
| 25 | `theorem` | [measurableSet_spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/measurableset-spanningsetsindex.md) | 155 | `result-track:9dc01051413924e5f05c047f6b6e0f297a86c9529ca2b4997108edfef2eae4e4` |
| 26 | `theorem` | [preimage_spanningSetsIndex_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/preimage-spanningsetsindex-singleton.md) | 160 | `result-track:319d21a2c7ad4e2a00d9c7b5d5bd885a0b39c2ad79821f38cb4f2e055e944709` |
| 27 | `theorem` | [spanningSetsIndex_eq_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/spanningsetsindex-eq-iff.md) | 164 | `result-track:5f68db07f63dbd716adbf226353025b46b1f8f862cf98e0d2ddc823eca8d6039` |
| 28 | `theorem` | [mem_disjointed_spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/mem-disjointed-spanningsetsindex.md) | 168 | `result-track:3764b6d9ca67fabf8725319392ecc67c4e29c28ad68813b2620cd637cf09544c` |
| 29 | `theorem` | [mem_spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/mem-spanningsetsindex.md) | 172 | `result-track:a206ee30e31e2b7d5f778d616ebf117932ffc3bc6390e3df247ac9dfa66494d1` |
| 30 | `theorem` | [mem_spanningSets_of_index_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/mem-spanningsets-of-index-le.md) | 176 | `result-track:4f01ee40b827a016fb62cd378fa85f95aee5f74a08c7453570ac633bd887693f` |
| 31 | `theorem` | [eventually_mem_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/eventually-mem-spanningsets.md) | 180 | `result-track:d3bdad9613ef0c34d66542c3edf03e40834ae472ec9d45de1dcccb0abfde4e7c` |
| 32 | `lemma` | [measure_singleton_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/measure-singleton-lt-top.md) | 184 | `result-track:e632123b02f428e150bb92b8953bfb2dda04e2c9e9d9ce6fcc035094a110404f` |
| 33 | `theorem` | [sum_restrict_disjointed_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sum-restrict-disjointed-spanningsets.md) | 188 | `result-track:fcf3e0b9e298fc2f8d51ca7d9d84dbaacf37f03bd4b857a8a5ba96541028049d` |
| 34 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-4.md) | 194 | `declaration-track:4447c1e542b74fdc5d039a68ee18bd901257cc32d9fd807fdffdbceb81255ee1` |
| 35 | `theorem` | [forall_measure_inter_spanningSets_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/forall-measure-inter-spanningsets-eq-zero.md) | 204 | `result-track:c1a8b40d8e78a4ac382ec5e138d727012c171671ccbb56e5710765178315144f` |
| 36 | `theorem` | [exists_measure_inter_spanningSets_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/exists-measure-inter-spanningsets-pos.md) | 212 | `result-track:dd79e1524fa7ca99848e66f4b05d102fb0baa5114b12680afa950f835d3dbe2b` |
| 37 | `theorem` | [finite_const_le_meas_of_disjoint_iUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/finite-const-le-meas-of-disjoint-iunion.md) | 220 | `result-track:1f4f805187b9f18d63fa5d19eb02d36505c442ec8b8f91e75b872a5143dc76cc` |
| 38 | `theorem` | [finite_const_le_meas_of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/finite-const-le-meas-of-disjoint-iunion-source-edition-2.md) | 230 | `result-track:bae9585ad5610db7c306a86334e2b72a1eb889ab30d1b2df58b2de292741e86e` |
| 39 | `theorem` | [SFinite Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/meas-eq-top.md) | 239 | `result-track:e9d0c0a9922bfbbae8cb938150945fa7af8e3107410bb08ccea6177acc674eda` |
| 40 | `theorem` | [countable_meas_pos_of_disjoint_of_meas_iUnion_ne_top₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/countable-meas-pos-of-disjoint-of-meas-iunion-ne-top-source-edition-2.md) | 251 | `result-track:9c167c2a3dad644dafd2d1f70e924d7eba83dad987ccc0b0619a021c166be293` |
| 41 | `theorem` | [countable_meas_pos_of_disjoint_of_meas_iUnion_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/countable-meas-pos-of-disjoint-of-meas-iunion-ne-top.md) | 271 | `result-track:72ee55b8b860ca4d88980725c6503a3e3422e1455daaebcd3fcb2457c54cf3f5` |
| 42 | `theorem` | [countable_meas_pos_of_disjoint_iUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/countable-meas-pos-of-disjoint-iunion.md) | 280 | `result-track:6a22a6d32d7169d5b3e693901fdf0e06e7ab4f2d35ffc5b84d0976d76d5e3a96` |
| 43 | `theorem` | [countable_meas_pos_of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/countable-meas-pos-of-disjoint-iunion-source-edition-2.md) | 303 | `result-track:f10a392bd38265e08d7e297d023a4667a0c44661ee9757efd9732a355538d0f9` |
| 44 | `theorem` | [countable_meas_level_set_pos₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/countable-meas-level-set-pos-source-edition-2.md) | 309 | `result-track:ba60045693140b65d05c62dfb5762d66988d1c1c6d7172460cd54869f4281c5d` |
| 45 | `theorem` | [countable_meas_level_set_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/countable-meas-level-set-pos.md) | 318 | `result-track:3ebc8d7a78e9669ad00402f7788509c47207211c666c12101577ca3d0248b6c2` |
| 46 | `theorem` | [measure_toMeasurable_inter_of_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/measure-tomeasurable-inter-of-sum.md) | 326 | `result-track:485282943ecf03cc88aaaa13b5f6739c65e93d50dc24dee56b24c74b8eb3a289` |
| 47 | `theorem` | [measure_toMeasurable_inter_of_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/measure-tomeasurable-inter-of-cover.md) | 357 | `result-track:3908e455492b8a05ce595cbc1330a202286a3b6013addcd34dd7b84a7673f17a` |
| 48 | `theorem` | [restrict_toMeasurable_of_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/restrict-tomeasurable-of-cover.md) | 421 | `result-track:a3eab095afc224c02b7290b292ba445f435660229bcca562321eeade13bb559b` |
| 49 | `theorem` | [measure_toMeasurable_inter_of_sFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/measure-tomeasurable-inter-of-sfinite.md) | 430 | `result-track:8165003aad9a6fcc2d6ac3bdc1ad87fde8c4a3bb5654b7fa4833f462ba408a94` |
| 50 | `theorem` | [restrict_toMeasurable_of_sFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/restrict-tomeasurable-of-sfinite.md) | 435 | `result-track:0ff3a7a04b9bead122e066523c46c6fff75a4595f4ce594ddf5ccc235a6480e3` |
| 51 | `theorem` | [iSup_restrict_spanningSets_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/isup-restrict-spanningsets-of-measurableset.md) | 442 | `result-track:3f13d72ccbce3797bdc79c102c61b8cbfa9ae7c13f7e74485e182b3e372ae050` |
| 52 | `theorem` | [iSup_restrict_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/isup-restrict-spanningsets.md) | 449 | `result-track:76b95e2a0b0163491de0a042c3b5884db4fdebde3174bad126160dc0890dcdae` |
| 53 | `theorem` | [exists_subset_measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/exists-subset-measure-lt-top.md) | 459 | `result-track:8682731621095c74b0f0812a1a69fd524551ea58a25240397364fee9ea373482` |
| 54 | `def` | [mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/mono-source-edition-2.md) | 475 | `declaration-track:94ddf55b3f70c50b0208ed32213b5ed899e9e69ec7d100dcf9c303c831ab7fe5` |
| 55 | `def` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/mono.md) | 480 | `declaration-track:59a5cd6150fd4beb9054a83a0ab5af0aabffd6507e6e2ddfb853189816010681` |
| 56 | `theorem` | [sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite-source-edition-2.md) | 485 | `result-track:91d19c79b3b211b243adedecc2573ba887f71f73124b588c5a90d20df82af9e8` |
| 57 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/ext.md) | 490 | `result-track:ee500b1194daef0d9590652bd1722e5bde12e3f786fcd14c1ee79d5f195d4664` |
| 58 | `theorem` | [isCountablySpanning](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/iscountablyspanning.md) | 494 | `result-track:a2061a367ee6f49718214f695ce9754d0a4d14436e11077c8b001ca48d5f11d0` |
| 59 | `theorem` | [sigmaFinite_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite-of-countable.md) | 499 | `result-track:8d052a478948b0d22d75fadd6dfec5c1230ca09eb07cf9c789cc0a2eb0cffb1e` |
| 60 | `def` | [FiniteSpanningSetsIn.ofLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/finitespanningsetsin-ofle.md) | 507 | `declaration-track:3b005add1938fe12e1e79b8bf8cbb1244f579fc7b44b76b0fdb77f0581013999` |
| 61 | `theorem` | [sigmaFinite_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite-of-le.md) | 514 | `result-track:2a028a7432b16842cbe90cb916df2734770f262e0ac9e5b3d84829d40ef23b56` |
| 62 | `lemma` | [add_right_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/add-right-inj.md) | 517 | `result-track:07739bdccfbb0bc8f8f226ef32e6cd3f43cb9583de27c4df1ddc3fd837cc0ea5` |
| 63 | `lemma` | [add_left_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/add-left-inj.md) | 528 | `result-track:62c2792def7f54d05f074ac0d33130e6816f2caa07e19743438e232e813d5fe8` |
| 64 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-2.md) | 534 | `declaration-track:12c32ca6fa94a283e41058c9662655b0cfa7ef326b8933e85716617dad37aaf6` |
| 65 | `lemma` | [Measure.sigmaFinite_iff_measure_singleton_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/measure-sigmafinite-iff-measure-singleton-lt-top.md) | 541 | `result-track:f851e019e2e3de0d30c0cad391d7dd4cd88506ece0f5debc88dd024e116ec42f` |
| 66 | `theorem` | [sigmaFinite_bot_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite-bot-iff.md) | 551 | `result-track:e6cbbd168561d7a7897e263f4767998a29896d7e35553264c36f884a07b54561` |
| 67 | `instance` | [Restrict.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/restrict-sigmafinite.md) | 572 | `declaration-track:bd657fa95ab611a2b17342e7be6623358b333c3c3a1bd12e1dcccc3fac4d5763` |
| 68 | `instance` | [sum.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sum-sigmafinite.md) | 578 | `declaration-track:acce964215562aeef481aa917faa5106a7b4cf66731d41bd4e1e44489c5e048e` |
| 69 | `instance` | [Add.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/add-sigmafinite.md) | 591 | `declaration-track:cd2d1637b1922908d65f50456973b60e94c7e25773ff5d6e43da709a5963d033` |
| 70 | `instance` | [SMul.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/smul-sigmafinite.md) | 596 | `declaration-track:678b5b05729af2c9cf2af48078142baf4b48ca167e1d037ff16e9c6a174f136a` |
| 71 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-3.md) | 607 | `declaration-track:3fca2bb96dd4eed5be972fd677b5d368a5196d9baa8a65d09f28a09720dc3b4a` |
| 72 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-11.md) | 610 | `declaration-track:da257c2f79146488877b31cc2d2bc7576a9afad6771d7ced9e3d1606faec1701` |
| 73 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-8.md) | 613 | `declaration-track:a2142dc6ce9236cf61e7095abbb8f8a5dc6a76c8096228afbdc663a01883601e` |
| 74 | `theorem` | [SigmaFinite.of_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite-of-map.md) | 616 | `result-track:ec082aad5a0b8015424fb7964140ce1a433b0d7bc21e163180ffdb5537daa88c` |
| 75 | `lemma` | [SFinite Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite-map-source-line-623-occurrence-2.md) | 623 | `result-track:a1982e25ce40bf8d4960205d8a7b68e4de96ee8bbeab1e50c5abf76b83866c9c` |
| 76 | `theorem` | [SFinite Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/sigmafinite-map.md) | 634 | `result-track:54d08de8f60aef2ed568bebefd6fa308f9ac6146e9053008d3cbca3a38099f3e` |
| 77 | `theorem` | [ae_of_forall_measure_lt_top_ae_restrict'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/ae-of-forall-measure-lt-top-ae-restrict.md) | 639 | `result-track:71cbc4e09d02298f272c3f9f5ac03763575b7dca2e209648ec0387869374ff4b` |
| 78 | `theorem` | [ae_of_forall_measure_lt_top_ae_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/ae-of-forall-measure-lt-top-ae-restrict-source-edition-2.md) | 653 | `result-track:f325bba052a076f999913027e3ed34be8f4044c75c0759a49293b6c7c7498aa4` |
| 79 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-7.md) | 657 | `declaration-track:7f6b6aa74248739ba66a2760420681e3f37563d74773e1579002e20c737e5b8d` |
| 80 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/instance-source-edition-10.md) | 665 | `declaration-track:d448fef8ae526543ebfbf51e2997b639a24d6fe1e3ac9f69857415753b92c645` |
| 81 | `def` | [FiniteSpanningSetsIn.disjointed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/finitespanningsetsin-disjointed.md) | 679 | `declaration-track:74e9e9bd311494ef452a2ed3e2d84c8e3db9814e8122465ffe8ba18d4d5422cc` |
| 82 | `theorem` | [FiniteSpanningSetsIn.disjointed_set_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/finitespanningsetsin-disjointed-set-eq.md) | 686 | `result-track:b323573ef2fa279692749b051909c45188a965746f7495e7f309932eecba77cc` |
| 83 | `theorem` | [exists_eq_disjoint_finiteSpanningSetsIn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespaced.lean/declarations/exists-eq-disjoint-finitespanningsetsin.md) | 690 | `result-track:d54cf94eb9b9a5820d171dfb5e22e17b64cb7790308646710e8d1a373e6565cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cd64cf64efe1bc843c8a9601e9a57c94edb047db0a9802efd284b1a94401b32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SFinite/Variant04a15fd3a283bbbc0b1fc88c0944f3cf5e21ab81f90bae01f89a6c83c76547d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
