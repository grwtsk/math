# Verification target: Haar Unique Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cce80fab2e4f45ea1fa455657fb5e19d16580bfb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cce80fab2e4f45ea1fa455657fb5e19d16580bfb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean.json)

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
| 1 | `lemma` | [continuous_integral_apply_inv_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/continuous-integral-apply-inv-mul.md) | 89 | `result-track:ed0296d2e71546b6c08f4a8e82a824df961973b0bc2501c34c5552fdad4403c8` |
| 2 | `lemma` | [integral_isMulLeftInvariant_isMulRightInvariant_combo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/integral-ismulleftinvariant-ismulrightinvariant-combo.md) | 138 | `result-track:0be1bcaf69ac17ac92847180278835274383afcf5e65b12c1bcebed6aef224d9` |
| 3 | `lemma` | [exists_integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/exists-integral-ismulleftinvariant-eq-smul-of-hascompactsupport.md) | 235 | `result-track:32abdea22a869e87185b2f2bfa2ba817644d8d8856cd58e03b4f167dd589483e` |
| 4 | `def` | [haarScalarFactor](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/haarscalarfactor.md) | 286 | `declaration-track:a444b6d6dc35540e8e939fc98decc4defd25d8f4f6d4f9ad3bce62f87844e241` |
| 5 | `theorem` | [integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/integral-ismulleftinvariant-eq-smul-of-hascompactsupport.md) | 301 | `result-track:668f27f929b0a8aae5d5088131785b446728b5abde30c70957592e6fc7e72923` |
| 6 | `lemma` | [haarScalarFactor_eq_integral_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/haarscalarfactor-eq-integral-div.md) | 312 | `result-track:bd071b2a84413f3e36242acd26d0d58b5a3e92e12dfa0f34451b87bd1cefda06` |
| 7 | `lemma` | [haarScalarFactor_eq_integral_div_of_continuous_nonneg_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/haarscalarfactor-eq-integral-div-of-continuous-nonneg-pos.md) | 321 | `result-track:3a1056f803eb4ab289e51456b678ee7017a9e210b3b478cc36b52bd05fdbbdf0` |
| 8 | `lemma` | [haarScalarFactor_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/haarscalarfactor-smul.md) | 332 | `result-track:e2c60c42ef242d30fbb37474087821baae10b69baaf2a9055bf000f26659c48a` |
| 9 | `lemma` | [mul_haarScalarFactor_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/mul-haarscalarfactor-smul.md) | 346 | `result-track:2fc444fe56a4dbec58c52608a889f63f4648322e10d491feb6c5c749eba01174` |
| 10 | `lemma` | [haarScalarFactor_smul_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/haarscalarfactor-smul-smul.md) | 365 | `result-track:26f823817de2674913394e7bb6fccaf072eb5d1840bffefb138b7282cb5bed6d` |
| 11 | `lemma` | [haarScalarFactor_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/haarscalarfactor-self.md) | 373 | `result-track:237a60696c9d511215b56f086c4ff3924f0eaf1cfc455a0765a8de0fbbdd9537` |
| 12 | `lemma` | [haarScalarFactor_eq_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/haarscalarfactor-eq-mul.md) | 387 | `result-track:0ac248bc41a16ed9522c7421f2789d7ade54a43bf0aa26d90190ce3d072fe06a` |
| 13 | `lemma` | [haarScalarFactor_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/haarscalarfactor-map.md) | 409 | `result-track:d81de0df4da6471edd9c7bc8f388fd149b1a71e86766ff7cd16c077f90ede3b7` |
| 14 | `lemma` | [haarScalarFactor_pos_of_isHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/haarscalarfactor-pos-of-ishaarmeasure.md) | 430 | `result-track:3f4ae41309871abe32f320caddcb98234d9b6a2de58a9879626e6c24c870455e` |
| 15 | `lemma` | [measure_preimage_isMulLeftInvariant_eq_smul_of_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/measure-preimage-ismulleftinvariant-eq-smul-of-hascompactsupport.md) | 485 | `result-track:fc1e49d43659f1d92a340b26a46fe70327ce13c76f7abbabf36f5fc0f2659621` |
| 16 | `lemma` | [smul_measure_isMulInvariant_le_of_isCompact_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/smul-measure-ismulinvariant-le-of-iscompact-closure.md) | 562 | `result-track:b99a557e5ebbaec6c6d76965e20d579ca533d3908274112f4b997132b7f368e1` |
| 17 | `lemma` | [measure_isMulInvariant_eq_smul_of_isCompact_closure_of_innerRegularCompactLTTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/measure-ismulinvariant-eq-smul-of-iscompact-closure-of-innerregularcompa.md) | 593 | `result-track:5f60aac1d359c51a892a667a48f3ae208f252eb006d2e29c92c9e863f949b1e9` |
| 18 | `lemma` | [measure_isMulInvariant_eq_smul_of_isCompact_closure_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/measure-ismulinvariant-eq-smul-of-iscompact-closure-of-measurableset.md) | 634 | `result-track:f1f487683b6f18b16b17900bf24cabe7b29fce62c327aa75c83700e6259aa216` |
| 19 | `theorem` | [measure_isMulInvariant_eq_smul_of_isCompact_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/measure-ismulinvariant-eq-smul-of-iscompact-closure.md) | 654 | `result-track:ce125cd371d121dd2bf46777908f2ffb77a55e23b8cb2ea6146a3f1f6bd636aa` |
| 20 | `lemma` | [isMulInvariant_eq_smul_of_compactSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/ismulinvariant-eq-smul-of-compactspace.md) | 684 | `result-track:3893f189ffe9bb76e65decb433d348df39146eef58754533d3f9a578c7ceb890` |
| 21 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/instance.md) | 691 | `declaration-track:1012ca50b7e20495414c8e8802eb2b25b7426316f23f4d2b6b61d35bce1f9575` |
| 22 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 698 | `declaration-track:61602a18f20692365e1662759cdaa8931a49bb3e0fa4dbb39af6d3e31b388b35` |
| 23 | `lemma` | [isHaarMeasure_eq_of_isProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/ishaarmeasure-eq-of-isprobabilitymeasure.md) | 708 | `result-track:da07cf63321e983d78fd60beafd77c24a2fcf3ab2facf5bd315d5b51ccf21a8c` |
| 24 | `theorem` | [measure_isHaarMeasure_eq_smul_of_isEverywherePos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/measure-ishaarmeasure-eq-smul-of-iseverywherepos.md) | 730 | `result-track:e1cf428ea8a55b004e7af0fcfd614982b39f9cac22b53c78c11c03c9afa80dab` |
| 25 | `theorem` | [measure_isHaarMeasure_eq_smul_of_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/measure-ishaarmeasure-eq-smul-of-isopen.md) | 837 | `result-track:f3fb138d47d16f7924670f775f38176fddaa319ae7440282a781d87e1409a697` |
| 26 | `lemma` | [measure_isMulLeftInvariant_eq_smul_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/measure-ismulleftinvariant-eq-smul-of-ne-top.md) | 856 | `result-track:1b5668c8fdede10f0e6cafa4466ead43cc59a383697fb36348bf8c8d5ffeff5b` |
| 27 | `lemma` | [isMulLeftInvariant_eq_smul_of_innerRegular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/ismulleftinvariant-eq-smul-of-innerregular.md) | 897 | `result-track:50344d3653330d9cbd26e3e156bd8e83b9bd6d769ca520b2a558fd6ec321e646` |
| 28 | `lemma` | [isMulLeftInvariant_eq_smul_of_regular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/ismulleftinvariant-eq-smul-of-regular.md) | 914 | `result-track:f50ca3d2575d5fe57bb991880c04fed30cc766a1fb66892dde066bfcba00d6b6` |
| 29 | `lemma` | [isMulLeftInvariant_eq_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/ismulleftinvariant-eq-smul.md) | 930 | `result-track:cd5674e7386268b3dce92f3ad8aadb47a6a378cd1e74069ff2e7b855e713c982` |
| 30 | `theorem` | [absolutelyContinuous_isHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/absolutelycontinuous-ishaarmeasure.md) | 942 | `result-track:84b72e064c8abab7558bb85a52fd0af100fb8d25d4cab440746b1d28c4b63156` |
| 31 | `theorem` | [Haar Unique Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-integration-continuousintegralapplyinv.md) | 959 | `result-track:1a5e0f44343a77826d1fc715d2939cf2856b75cce7bf36d57b185c2ec25d9bc7` |
| 32 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 987 | `declaration-track:da7bbcc98451d82de9c72da1db27d5aa57bce24625194cf329cafb552868b992` |
| 33 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 1013 | `declaration-track:ccc8e35d41f5c68ff776732702aa064acdd428fff4f0eb11866eab624744b6c8` |
| 34 | `theorem` | [measurePreserving_zpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/measurepreserving-zpow.md) | 1037 | `result-track:4b11ba008e2f2c9d00907192106a48883b0226fda6ad0e5b8b775c0d9ac6e29c` |
| 35 | `theorem` | [MeasurePreserving.zpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/measurepreserving-zpow-source-edition-2.md) | 1043 | `result-track:6b825e0ae2dc8229841cdc9de2deb6bcf8e0f82c842b3f9bd5680dfa5ae11f27` |
| 36 | `lemma` | [addHaarScalarFactor_domSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/addhaarscalarfactor-domsmul.md) | 1057 | `result-track:8f648f333f40b69713015c79d47cf0413436b194455c3624a8216cca4ac0aa42` |
| 37 | `lemma` | [addHaarScalarFactor_smul_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/addhaarscalarfactor-smul-congr.md) | 1072 | `result-track:47da0bde92a8b67eb6e688ba8e211ca30fd72b8c7d4ecf6276c7e8afb17b1127` |
| 38 | `lemma` | [addHaarScalarFactor_smul_congr'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUniqueNamespacedPublic.lean/declarations/addhaarscalarfactor-smul-congr-source-edition-2.md) | 1078 | `result-track:7debda5fc458f345b3617e3718d4dcf7e06f822caec90d6f296172178a54effb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4547fdbd5a6fd6d4fc5f4b7c24819dc6ba61d56e21720560b1c9596c25558428 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
