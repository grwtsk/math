# Verification target: SFinite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da99368a7a1578c2cc1fd7abdef79c9dc185e5f7",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da99368a7a1578c2cc1fd7abdef79c9dc185e5f7`.

Source path: `GRWTSK/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean.json)

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
| 1 | `class` | [SFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sfinite.md) | 41 | `declaration-track:525e69724549c307b3924ff68f1f83d1718a6a9c5bbe7c5c3d896e141041ddd3` |
| 2 | `def` | [sfiniteSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sfiniteseq.md) | 45 | `declaration-track:af1f20616f7bc52e981d13adc263e898ffcf46f2429db38e8726c5d86f6659b3` |
| 3 | `instance` | [isFiniteMeasure_sfiniteSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/isfinitemeasure-sfiniteseq.md) | 47 | `declaration-track:902a15c444abff1c226ef6e7c56a53af4a2ca7ff29dc333f9049dc27d0375316` |
| 4 | `lemma` | [sum_sfiniteSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sum-sfiniteseq.md) | 50 | `result-track:b58d18d7d36dac7cdacfb93d216d978f8b5971f8e1bbd9c861069f468f145a14` |
| 5 | `lemma` | [sfiniteSeq_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sfiniteseq-le.md) | 53 | `result-track:a40d2812d8bd61a5f516c4ad44676fc4c8332b980fa757c469e35f305bfc0cb0` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 56 | `declaration-track:7a8075eea3af4e5892afb95edab9aa2f0454726eed6b0c44f3b4e0ca2a98d2ca` |
| 7 | `lemma` | [sfiniteSeq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sfiniteseq-zero.md) | 59 | `result-track:143edcbb78d1fae004497462859e7f451f1b6b0553b32d3d4e081ea80d542908` |
| 8 | `lemma` | [sfinite_sum_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sfinite-sum-of-countable.md) | 64 | `result-track:441e519be99bfef6615fe24bec74ff17aa437255529e7ba6cd5a66892cc7f83b` |
| 9 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 74 | `declaration-track:a819d8564dc15ef6ba34bf69aa85d6c7aa0a87b77fac740d33abdcc696fbba1f` |
| 10 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 79 | `declaration-track:9f90068656d772caa77447056de4710d5f214098f5b7b4b42e7f4d0743280581` |
| 11 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:2280b81ff56f406ca63d2dc3d98e5b866ca99a6c214b81b93021e3544171ac2c` |
| 12 | `theorem` | [exists_isFiniteMeasure_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/exists-isfinitemeasure-absolutelycontinuous.md) | 91 | `result-track:df48f89ccde2451d3fb34de342563276c3ab485120b02f81a36e9e9bb35e0526` |
| 13 | `class` | [SigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite-source-edition-2.md) | 105 | `declaration-track:52e016c58f2325a2c4059439a356e6107fb88b667345cd768cf7a765b0fd132e` |
| 14 | `theorem` | [sigmaFinite_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite-iff.md) | 108 | `result-track:41bbd0b7cdde7fcb2c38086ea42d17e9aec7b0cec51c373c7cfb4ed7f59f120f` |
| 15 | `theorem` | [SigmaFinite.out](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite-out.md) | 111 | `result-track:a3957f666add73f5cd1b9795907fad67833b88a271c8a7937c1bbaaa41e351c7` |
| 16 | `def` | [Measure.toFiniteSpanningSetsIn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/measure-tofinitespanningsetsin.md) | 117 | `declaration-track:a61d192646da30c97c17618e69490150adfcd8cb25b9dab0792b8211420159a4` |
| 17 | `def` | [spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/spanningsets.md) | 131 | `declaration-track:cc602389e26caaa519eba8812586062ace273df1e5b2e4b426929cb5ea8b2426` |
| 18 | `theorem` | [monotone_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/monotone-spanningsets.md) | 134 | `result-track:3f873f9c47d608457ce6a1b653a56c2864b7f9f898b0b0273ac6185f320f238f` |
| 19 | `lemma` | [spanningSets_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/spanningsets-mono.md) | 138 | `result-track:7d3fdf5a05937d3ab97527ee43b04edface4c9a4488f8cbc4edc6f6a932f8931` |
| 20 | `theorem` | [measurableSet_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/measurableset-spanningsets.md) | 141 | `result-track:bd093a9f02e325faf8349c0db99b185b05fdc010867ec55873e9ad18e02ba630` |
| 21 | `theorem` | [measure_spanningSets_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/measure-spanningsets-lt-top.md) | 145 | `result-track:0b8c3355f455ceafc46d8b8b7bef25e2f5e6fd2f28f159797a48affe85ff192e` |
| 22 | `theorem` | [iUnion_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/iunion-spanningsets.md) | 150 | `result-track:98884793f46bf4420eb3c3766a903a28841758dc94fa7e5d37af073a0d48d70a` |
| 23 | `theorem` | [isCountablySpanning_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/iscountablyspanning-spanningsets.md) | 153 | `result-track:b9bb32931a22b0fead8e83fcd061cc0a6dba835a43053a11cf52ad330ca60f10` |
| 24 | `def` | [spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/spanningsetsindex.md) | 159 | `declaration-track:40595893a505716c46330d6add4cc9233c86dbcde812ca86edb83230f9f97629` |
| 25 | `theorem` | [measurableSet_spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/measurableset-spanningsetsindex.md) | 162 | `result-track:9c11d4c2ecf4bf32ff986fa2a8df4ec1917f0975db662fcc8965e7825cec3e76` |
| 26 | `theorem` | [preimage_spanningSetsIndex_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/preimage-spanningsetsindex-singleton.md) | 167 | `result-track:ec670bea42cca4c8439ab65f30cab3afa45cde4c62985ab01a998920675a17a8` |
| 27 | `theorem` | [spanningSetsIndex_eq_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/spanningsetsindex-eq-iff.md) | 172 | `result-track:0b565f79f0af2e4f1ce8b24f3acff428b10e2eb37ecfd14266a3b7073570309a` |
| 28 | `theorem` | [mem_disjointed_spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/mem-disjointed-spanningsetsindex.md) | 176 | `result-track:2a8b3356f42af013eda9d80d2d29fd4a7e8713c9f4d6718b80fefc8b9c9f6cbb` |
| 29 | `theorem` | [mem_spanningSetsIndex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/mem-spanningsetsindex.md) | 180 | `result-track:4b1612340ddc375a0a0252712b2735f183811493bdc5e777fe4da2cf9bcc4b8c` |
| 30 | `theorem` | [mem_spanningSets_of_index_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/mem-spanningsets-of-index-le.md) | 184 | `result-track:af8b35d19aa10dcc855ecea1bd142b5e5118d3aeb00ae41189caf9b0857b15dd` |
| 31 | `theorem` | [eventually_mem_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/eventually-mem-spanningsets.md) | 188 | `result-track:d63e84c4b1c055684ea97fc58fa493413048172e2167915af34285cce662f3b3` |
| 32 | `lemma` | [measure_singleton_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/measure-singleton-lt-top.md) | 192 | `result-track:c83c9f150a397b62d8ba303cead2660b7b0325823d7fec5b673332d51c533a12` |
| 33 | `theorem` | [sum_restrict_disjointed_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sum-restrict-disjointed-spanningsets.md) | 196 | `result-track:eb654484dc797b28363304e153f0625126f9a3fed8ffbd65a9905e043708388d` |
| 34 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 202 | `declaration-track:b1cd55710063662b1783be445cf9b7e0b8546a8c17d4d4c69c51f7714d98e717` |
| 35 | `theorem` | [forall_measure_inter_spanningSets_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/forall-measure-inter-spanningsets-eq-zero.md) | 213 | `result-track:87534d1171f2d17125f1d0da5a50fa7b2a4cd39fa393f77f27c7ed5be29370e6` |
| 36 | `theorem` | [exists_measure_inter_spanningSets_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/exists-measure-inter-spanningsets-pos.md) | 221 | `result-track:22257156b6ef2a4f587d14ee0a3ab6f453adf0acfc5ea5b0cc2cc7acd83c26ca` |
| 37 | `theorem` | [finite_const_le_meas_of_disjoint_iUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/finite-const-le-meas-of-disjoint-iunion.md) | 230 | `result-track:6039b92a18fc1c62a878e256bb8cc0b924b4d35adea31a650df49ecb71938eb1` |
| 38 | `theorem` | [finite_const_le_meas_of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/finite-const-le-meas-of-disjoint-iunion-source-edition-2.md) | 240 | `result-track:835ec965f5abbcc066c8fdf0a52fe3d07df6fa998e08356b296a908a6bcce68f` |
| 39 | `theorem` | [SFinite Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/meas-eq-top.md) | 249 | `result-track:38803efc8ae85c5ec3529bb0ff92597c9c49d2ffca34e322196e1c1fc73fcf72` |
| 40 | `theorem` | [countable_meas_pos_of_disjoint_of_meas_iUnion_ne_top₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/countable-meas-pos-of-disjoint-of-meas-iunion-ne-top-source-edition-2.md) | 261 | `result-track:68647e202561a2cc2868822f8d2cd3b428081bd73c5d0c5d7d90694040053545` |
| 41 | `theorem` | [countable_meas_pos_of_disjoint_of_meas_iUnion_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/countable-meas-pos-of-disjoint-of-meas-iunion-ne-top.md) | 281 | `result-track:16937c0e0c89a673bce025a4f53bdb22e84bdf2ecfe8ca940d0a6c7f407a2c9c` |
| 42 | `theorem` | [countable_meas_pos_of_disjoint_iUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/countable-meas-pos-of-disjoint-iunion-source-edition-2.md) | 290 | `result-track:5ff71d24676d089a1050bb61eaf2cddeb0d20b3af07bdf6ee2fb8742dfcff04b` |
| 43 | `theorem` | [countable_meas_pos_of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/countable-meas-pos-of-disjoint-iunion.md) | 313 | `result-track:50cf94256f3f54beb0e4e12f809dd112ced365e74a12352a166dc62e53b4fb9f` |
| 44 | `theorem` | [countable_meas_level_set_pos₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/countable-meas-level-set-pos-source-edition-2.md) | 319 | `result-track:e97f0bd01e973cca819d81d22edd562251879dd18a5d48d4ca1c7f5428046b7a` |
| 45 | `theorem` | [countable_meas_level_set_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/countable-meas-level-set-pos.md) | 328 | `result-track:22c7157ea9ace0f47f35dad83f559a9cf8565feb4d3785bf459127461190ce88` |
| 46 | `lemma` | [exists_ae_subset_biUnion_countable_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/exists-ae-subset-biunion-countable-of-isfinitemeasure.md) | 333 | `result-track:529ffec701efb5f12ce98f0120a254ad3dc388c6f0990bfb04e1d252a4ab6300` |
| 47 | `lemma` | [exists_ae_subset_biUnion_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/exists-ae-subset-biunion-countable.md) | 366 | `result-track:d9915df8d6a775075b66978642ede54e67c441bcd1142e4c1eddbc456fb39611` |
| 48 | `theorem` | [measure_toMeasurable_inter_of_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/measure-tomeasurable-inter-of-sum.md) | 381 | `result-track:b4d25c39655efbd886b4e241b3bb755b5e15da971cbc1bfad1d53fce73dc6214` |
| 49 | `theorem` | [measure_toMeasurable_inter_of_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/measure-tomeasurable-inter-of-cover.md) | 412 | `result-track:9df0850ac2d78124ad12efa548c00b429d17339df22c1ed03ab8eb4f62b23bb1` |
| 50 | `theorem` | [restrict_toMeasurable_of_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/restrict-tomeasurable-of-cover.md) | 476 | `result-track:53f5806b705df6f48d0ffb09715151750e9a13c1ba80376af7f2916cd0e44291` |
| 51 | `theorem` | [measure_toMeasurable_inter_of_sFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/measure-tomeasurable-inter-of-sfinite.md) | 485 | `result-track:a7fbf46b825c0d409f936406c8e4729c7ce8bb880f53a5e1afc4c68be629aa40` |
| 52 | `theorem` | [restrict_toMeasurable_of_sFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/restrict-tomeasurable-of-sfinite.md) | 490 | `result-track:9012c708e12d3153892c16134e2171d42ad99cfbb1932b117c2f67fef1d5c579` |
| 53 | `theorem` | [iSup_restrict_spanningSets_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/isup-restrict-spanningsets-of-measurableset.md) | 497 | `result-track:a2b07c7fae2c48e50c71b08561f9a9655ce9e49ecf7f96545467bd51761bf9f4` |
| 54 | `theorem` | [iSup_restrict_spanningSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/isup-restrict-spanningsets.md) | 504 | `result-track:2803837064172351cb15f6f4ae3763953e18f1fa988fd929158ff626d069616d` |
| 55 | `theorem` | [exists_subset_measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/exists-subset-measure-lt-top.md) | 514 | `result-track:fb4365c9b323d110a11bf1a0ae22202c4a022564be876a92722fb2c1c3b4d1f3` |
| 56 | `def` | [mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/mono-source-edition-2.md) | 530 | `declaration-track:906fc9874b32caac2382c722ef078390fb6ef2e1277af0319f869b822f1f3fbd` |
| 57 | `def` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/mono.md) | 535 | `declaration-track:82383555d2a400d46a983de850aeebb04edb57e8461e1aed5a27a7167ff8100a` |
| 58 | `theorem` | [sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite.md) | 540 | `result-track:134875d83b7976905898fc66bd93210812b99f5731d59909e2242e1f107ec664` |
| 59 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/ext.md) | 545 | `result-track:d7f47946597056488e6dacd607c5c199263bf540ac0a0a8e96a986b401e5998b` |
| 60 | `theorem` | [isCountablySpanning](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/iscountablyspanning.md) | 549 | `result-track:8e23525124ebc15959b8f42d6e3ef035c0199c0f2acc89547aa8a2ba5188f833` |
| 61 | `theorem` | [sigmaFinite_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite-of-countable.md) | 554 | `result-track:89f7ae39175fb91b1c38424cabfc86ac6c6feb327d40937d81da2e51df4b7abe` |
| 62 | `def` | [FiniteSpanningSetsIn.ofLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/finitespanningsetsin-ofle.md) | 562 | `declaration-track:e0fe878fdec8962246a5c65927f3c1060611d33456fd6ba134e0f0f7087e6833` |
| 63 | `theorem` | [sigmaFinite_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite-of-le.md) | 569 | `result-track:b5323e5d8e08097b8caf27579ee1c7d0162bc7b60d6f29d5d41c4ace56883304` |
| 64 | `lemma` | [add_right_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/add-right-inj.md) | 572 | `result-track:82670b590a9e06a30ebeee575b182e4eeb5f9bf4eb758ee1669b5890ae67a0eb` |
| 65 | `lemma` | [add_left_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/add-left-inj.md) | 583 | `result-track:7783d58a22520b9eb9e92940cb92b933c9aaeab7adcb5c920bed1c4222080a18` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 589 | `declaration-track:5802f2f76ed8a6b89cc57a2a5d635cfd304417b0560fdbacc63ec06e419208a3` |
| 67 | `lemma` | [Measure.sigmaFinite_iff_measure_singleton_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/measure-sigmafinite-iff-measure-singleton-lt-top.md) | 596 | `result-track:d8f918d8ed0e408be155e92a689b0ac8f982f847654fdcdfb56b2317d474f5bb` |
| 68 | `theorem` | [sigmaFinite_bot_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite-bot-iff.md) | 606 | `result-track:120490dbe74f48de8fe5eb155aa94b3d13b8be94084ce5e6a7f27236a588a9fc` |
| 69 | `instance` | [Restrict.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/restrict-sigmafinite.md) | 624 | `declaration-track:79cb10dfcff2083a27fbb7c5e1ce2d4fd43a226c27ce82cad45465c6074db511` |
| 70 | `instance` | [sum.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sum-sigmafinite.md) | 630 | `declaration-track:b833ba0835f1db0d6b39679559b7e56e7d7f9ef30d2fb893aa105cb8b1226aea` |
| 71 | `instance` | [Add.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/add-sigmafinite.md) | 643 | `declaration-track:0c32bf18980b86648b14fa0a8ef49526f552dde3c71d553c6a8114994cb9cf3e` |
| 72 | `instance` | [SMul.sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/smul-sigmafinite.md) | 648 | `declaration-track:d36abe1b474fa1694f0dc68bc7209d30248ac3a6336bf3766adb347f97cd37c7` |
| 73 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 659 | `declaration-track:9cd51c9e08a57756e4cddfb07e903fb6465ab976fa5ff6654c691209c627b540` |
| 74 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 662 | `declaration-track:b844d195e788cf538280f601c847b89fb968545558a7314b56608616728be083` |
| 75 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 665 | `declaration-track:c0e635be2b2cc3e8e23e29f3afff53f13f08e9829233e68c2545a1e43801fd71` |
| 76 | `theorem` | [SigmaFinite.of_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite-of-map.md) | 668 | `result-track:463477b292365d9cd65df581c1a8feb4dbff05b989273b9bee1c8f22732bfd24` |
| 77 | `lemma` | [SFinite Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite-map-source-line-675-occurrence-2.md) | 675 | `result-track:9a7a153ad0c3293d9fab182a8b3e614d6d0ac937da0c4361d44b7030a35e80e7` |
| 78 | `theorem` | [SFinite Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/sigmafinite-map.md) | 686 | `result-track:055cadc01058cc2a86d1839c7a57b9f46577c138df4c5229a3180c6622b7b9d5` |
| 79 | `theorem` | [ae_of_forall_measure_lt_top_ae_restrict'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/ae-of-forall-measure-lt-top-ae-restrict.md) | 691 | `result-track:52c5c5474c588c05ef718daa0f4228afa3a17e3545b6eff4dee961e1e8555a33` |
| 80 | `theorem` | [ae_of_forall_measure_lt_top_ae_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/ae-of-forall-measure-lt-top-ae-restrict-source-edition-2.md) | 705 | `result-track:ee80d8be1b954f029ec5a5be40e713647c4fca0a4f3c688875f9f2be32246007` |
| 81 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 709 | `declaration-track:b7b14272c626cb27628189a07b8978c1b59654015099401db81f375c96b63f01` |
| 82 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/instance.md) | 717 | `declaration-track:2106db9fc8f3754458ea52bb7f1d56244abcd7d950c557b61c3bca2e4f26d2e6` |
| 83 | `def` | [FiniteSpanningSetsIn.disjointed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/finitespanningsetsin-disjointed.md) | 731 | `declaration-track:b6f8b72cbd1796064310ea5f75006a7f0635716065ff2e315ef401d1b1fdc36c` |
| 84 | `theorem` | [FiniteSpanningSetsIn.disjointed_set_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/finitespanningsetsin-disjointed-set-eq.md) | 738 | `result-track:8e06cd293af7e005ca7ca9c5b8d25653232094a90addf2a61cea94b2117aa098` |
| 85 | `theorem` | [exists_eq_disjoint_finiteSpanningSetsIn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SFiniteNamespacedPublic.lean/declarations/exists-eq-disjoint-finitespanningsetsin.md) | 742 | `result-track:74f0b8a44a29830660d88e64c0a1ba8d5dc9dfeba1dd932b322f4ef68bce1956` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dce8ed11ae2cfece58fd7792659a3959dd7b608cf2e9c51857f1076caed6748 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
