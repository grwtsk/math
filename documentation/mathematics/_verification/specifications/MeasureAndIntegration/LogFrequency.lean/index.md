# Verification target: Log Frequency

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20be53100f54bd8393ee62620d428f458a5e1bdb",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogFrequency.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogFrequency.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20be53100f54bd8393ee62620d428f458a5e1bdb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BubbleResonance` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logFrequency](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/logfrequency.md) | 26 | `declaration-track:f0f574442fff3de8bd7f982726a89a42731bf9f9c9609ed50c07f33bc0224fa8` |
| 2 | `def` | [frequencyFromLog](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/frequencyfromlog.md) | 29 | `declaration-track:6d2b86f74923d8f43f9a423576d6d529c6ba0560aea4693fe887e6e78a70b0a1` |
| 3 | `theorem` | [frequencyFromLog_pos](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/frequencyfromlog-pos.md) | 32 | `result-track:cc7fde80afbe08c34b13e43a4bf9cea1ada870b132c9db56118a1992c4c89fb9` |
| 4 | `theorem` | [logFrequency_fromLog](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/logfrequency-fromlog.md) | 37 | `result-track:9e8f7eb20a242d85f080880175028bbed60c0793b14e9a72dfc3b99d4d07a730` |
| 5 | `theorem` | [frequencyFromLog_logFrequency](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/frequencyfromlog-logfrequency.md) | 42 | `result-track:242268ce6c21b549cadba12ab8e0d7e56b2d9c8d9e676ca9cf0b3fe511f7ba50` |
| 6 | `theorem` | [frequencyFromLog_hasDerivAt](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/frequencyfromlog-hasderivat.md) | 49 | `result-track:55567ebf817062ac4ea4dfbcfe292f29077e595c2f04c354f6d57095f197f38e` |
| 7 | `theorem` | [frequencyFromLog_continuous](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/frequencyfromlog-continuous.md) | 54 | `result-track:faf8acaae8b7c400a1f6e0d97cda6fe99ea5b3f32d46b59e722fb96d8aa66564` |
| 8 | `theorem` | [frequencyFromLog_strictMono](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/frequencyfromlog-strictmono.md) | 58 | `result-track:1b9652afc206c7d79ad934efd4a9b1a1973f05de4f56e23e7b804c152c2559a8` |
| 9 | `theorem` | [spectrum_reindex_reconstruct](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/spectrum-reindex-reconstruct.md) | 63 | `result-track:1276bfa48bc5d641e2184d8a74237164cb7e9e3ed798772e76529da4c5120791` |
| 10 | `theorem` | [spectrum_reindex_eq_iff](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/spectrum-reindex-eq-iff.md) | 71 | `result-track:b55f38d5e11a4c605528b6db86fe91c53f1697d53fcf278d8a227aa7c80e0fd9` |
| 11 | `def` | [logFrequencyDensity](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/logfrequencydensity.md) | 83 | `declaration-track:870bd0ea2c5d00589b0b2831fcb4c2702b140d8bac31b9a4a91dae2d4e22b3de` |
| 12 | `theorem` | [logFrequencyDensity_nonneg](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/logfrequencydensity-nonneg.md) | 87 | `result-track:5d971c41a44edcf677b75e96b480287da8f2b40afe2eeab42303bf780d240877` |
| 13 | `theorem` | [perHertz_interval_integrable](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/perhertz-interval-integrable.md) | 94 | `result-track:733be735a0055036203c68058030a52904d4b1bea532b15b21c77dc41ce5317a` |
| 14 | `theorem` | [logFrequencyDensity_interval_integrable](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/logfrequencydensity-interval-integrable.md) | 103 | `result-track:fd81a0c97f0d1edc99b3a14c4f86e0a1fb2900b89f788fed4e9271710f455c9f` |
| 15 | `theorem` | [logFrequencyDensity_integral](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/logfrequencydensity-integral.md) | 115 | `result-track:2fc9791a39115756b37bb1c2f3309f911a1bf42995c23f36b72db23c6845539d` |
| 16 | `theorem` | [logFrequencyDensity_integral_frequency_bounds](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/logfrequencydensity-integral-frequency-bounds.md) | 129 | `result-track:cc3c31bd03245eb06068ca374afd38a2712827be578dd75ff81a1348608ae605` |
| 17 | `def` | [minnaertHertzCoefficient](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaerthertzcoefficient.md) | 144 | `declaration-track:20aafd7e55aa30aff0f17dc751141892544bceea6b3f45ee4f99531fad397590` |
| 18 | `def` | [minnaertFrequencyHertz](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaertfrequencyhertz.md) | 148 | `declaration-track:486f08df6edabc515675330cffd0e734e26e7c660bad16077549e5f5d55a3fb2` |
| 19 | `theorem` | [minnaertHertzCoefficient_pos](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaerthertzcoefficient-pos.md) | 152 | `result-track:db9c8d00afbd67a00ef731735a6527dca7d6d1a997f6fb06448d04a32417a803` |
| 20 | `theorem` | [minnaertFrequencyHertz_formula](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaertfrequencyhertz-formula.md) | 158 | `result-track:ea72afabe3a950ca11111aadb9d55dc66589d1d91f99ca5fb393a1ad1572ba87` |
| 21 | `theorem` | [minnaertFrequencyHertz_pos](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaertfrequencyhertz-pos.md) | 166 | `result-track:6ddb4002b7cb01f97dd3a5a35bbc337adec111544ba55c4037300d083c2cc1c5` |
| 22 | `def` | [minnaertVolumeFromHertz](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaertvolumefromhertz.md) | 172 | `declaration-track:ce9da20fe7b91d3e5f514b7e7b0f1adeab3731eef8d0c4703e4c00f31bbd4f95` |
| 23 | `theorem` | [minnaertVolumeFromHertz_source](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaertvolumefromhertz-source.md) | 176 | `result-track:64a10778132c3ff799fe9d8a60eb64a21ff34ef670d7dcc177d856be85d63102` |
| 24 | `theorem` | [minnaertVolumeFromHertz_pos](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaertvolumefromhertz-pos.md) | 187 | `result-track:a83fb09bdda0a606adeefc7b278aaed62a30205ca88f0c6602bad5fc599cbbe5` |
| 25 | `theorem` | [minnaert_log_volume_ratio](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaert-log-volume-ratio.md) | 194 | `result-track:4ab985d9c3a4582bb237a553a595c571069a9d8734ac124687d5ed6187e19d93` |
| 26 | `theorem` | [minnaert_source_log_volume](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaert-source-log-volume.md) | 213 | `result-track:793ff39bcddb053dab28c3eafdd514c55e6cafcc1a6117cdf1c45f5a01b6b6ed` |
| 27 | `theorem` | [minnaert_log_volume_affine](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaert-log-volume-affine.md) | 222 | `result-track:b99c4364cecfcb17399327b25fa7a9928624eadaedf4f37087c37fe037f89100` |
| 28 | `theorem` | [minnaert_log_volume_hasDerivAt](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/minnaert-log-volume-hasderivat.md) | 231 | `result-track:d08b1b801cfe428bc671baccddb44e3721ec0d04168f6e2e16a8ef5143a5fd58` |
| 29 | `theorem` | [cascade_log_frequency](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/cascade-log-frequency.md) | 245 | `result-track:d096ba652a7ee5e1b12b34e9e925a2f8b6826ed8d3bccc3ada05bdc3a99bd7dd` |
| 30 | `theorem` | [cascade_log_spacing](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/cascade-log-spacing.md) | 260 | `result-track:ba95d819950ed002c16eac7fbea83d5db739a7872e2947b0aeb5ce25ec9bf62e` |
| 31 | `theorem` | [jet_log_frequency_of_law](../../../../MeasureAndIntegration/LogFrequency.lean/declarations/jet-log-frequency-of-law.md) | 275 | `result-track:eff3c992c912f132f4cb81a5fb16a429f62874a6ff90c15118a324f165b9c6a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae5facf16cc8240b9d8dc5f827f8cf8ec4bc5600488cc043831e2e50ee201401 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
