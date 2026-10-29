# Verification target: Source Mangoldt Abel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "500519b52a22d8540a5314963a4d95c2373e62b6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `500519b52a22d8540a5314963a4d95c2373e62b6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtLogPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogprefix.md) | 27 | `declaration-track:25ecf6785c7c6b240998d7135e6dd632c30f9fdba46bf9f090372eaa505569c0` |
| 2 | `def` | [mangoldtLogSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogsum.md) | 30 | `declaration-track:975ef103924585686f574fc017a79cc8f1150d3f4d0c9f1af6a086a3861a20f1` |
| 3 | `def` | [mangoldtLogWindow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogwindow.md) | 34 | `declaration-track:dbf224f9a9988fe4162007ab4b4cbe2add5f6068dc2a897a9488c555c76b8295` |
| 4 | `def` | [mangoldtLogError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogerror.md) | 38 | `declaration-track:77a1c55e5fca3b32052455d41bd0db26fe6e728cc209ae90e62f79f9ad793ecd` |
| 5 | `def` | [criticalMangoldtWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/criticalmangoldtwork.md) | 41 | `declaration-track:a05f46b7233e4931736b4e3c73c4320cc390498b3f4fe42ff014476862233619` |
| 6 | `def` | [MangoldtWorkTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtworktaillowerbound.md) | 45 | `declaration-track:361c7278bcc72d47e3e838478bfc521937ccdeafe5903458518cb9ec860d2e79` |
| 7 | `theorem` | [mangoldtLogPrefix_eq_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogprefix-eq-sum.md) | 49 | `result-track:3f73384f73fd8d888229314c36b4da91f8755b7ef0fb4810c303da0d4d6e3966` |
| 8 | `theorem` | [primePowerInventory_filter_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/primepowerinventory-filter-log.md) | 66 | `result-track:7f32b65768f42056a98222e9ce22b2f3f78528c77efb19678008eaa6ea7571c6` |
| 9 | `theorem` | [mangoldtLogPrefix_eq_steps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogprefix-eq-steps.md) | 80 | `result-track:40219a4a686af55a94fe3de35dc150ec8f94f9b1121ee347dd4ea050b4e33b11` |
| 10 | `theorem` | [mangoldtInventory_log_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtinventory-log-bounds.md) | 86 | `result-track:ed784cf8060af0b7d0f59675973cedb7697328df22889663edf33a6e4c4b9c22` |
| 11 | `theorem` | [mangoldtLogPrefix_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogprefix-zero.md) | 94 | `result-track:ce534838468652813beccebf1c3d7a0c7404182cdda8d16b6272949fadc6e76f` |
| 12 | `theorem` | [mangoldtLogPrefix_mul_deriv_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogprefix-mul-deriv-intervalintegrable.md) | 98 | `result-track:ee2064eca68a04884ef2c6993204e80646cead7cfd281ef7fca38143391fb30f` |
| 13 | `theorem` | [mangoldtLogSum_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogsum-abel.md) | 129 | `result-track:3ca8707d250902b18fbfc75b9d8bd9c450fcf355748ce5ea272155670c774742` |
| 14 | `theorem` | [mangoldtLogWindow_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogwindow-abel.md) | 153 | `result-track:c54126edc22f46c867a145e7a857152d89e55662c97bfc39d74f72c953d4eb22` |
| 15 | `theorem` | [mangoldtLogWindow_eq_filter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogwindow-eq-filter.md) | 164 | `result-track:2eaad1dbdcf3d6e3d618ffbaad44e0cd866b3b9b19b28059971f603a6a3b6bc9` |
| 16 | `theorem` | [mangoldtLogWindow_eq_interval_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogwindow-eq-interval-sum.md) | 177 | `result-track:dc6ef9ffc6ea589a2cb443163eccaaf6b2753bf69245ca22d27e71c6b97f2e5c` |
| 17 | `theorem` | [mangoldtLogError_mul_deriv_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogerror-mul-deriv-intervalintegrable.md) | 195 | `result-track:5fef38c528207caa6f7a258276326e40868f5b33fe7ba7c00ad804f59bb90a51` |
| 18 | `theorem` | [mangoldtLogWindow_sub_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogwindow-sub-integral.md) | 203 | `result-track:c26ac5bfdf9c1d27938162eeb00932952a771d5f0211b75ebf599321f97bd1b9` |
| 19 | `theorem` | [natural_source_coefficient_eq_critical_test](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/natural-source-coefficient-eq-critical-test.md) | 227 | `result-track:53ba827312f0bbb2c30ea9261e36e69f093adc49f3658110ccd7c12e8c84b4c7` |
| 20 | `theorem` | [zero_index_weight_transport_guard](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/zero-index-weight-transport-guard.md) | 244 | `result-track:9cb4a76551aec3f9a5759456e235064dbce544da81233e08dcbe2874455fbdd3` |
| 21 | `theorem` | [closedPrimeMoment_eq_mangoldtLogSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/closedprimemoment-eq-mangoldtlogsum.md) | 254 | `result-track:b439556ad01e0ea5e6263b07dbb43f9cc45e21afefa21170d56570aa235600f7` |
| 22 | `theorem` | [mangoldtLogWindow_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogwindow-zero.md) | 263 | `result-track:fd34ff843d205bd392f2d18accfddb86174ea8c94f2a954fd920e86b1f99679b` |
| 23 | `theorem` | [closedPrimeMoment_eq_continuous_sub_Mangoldt_work](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/closedprimemoment-eq-continuous-sub-mangoldt-work.md) | 268 | `result-track:3ee2c64d340e8438201baf99638ffa5a1d94c59df165785e3ed352caad148e26` |
| 24 | `theorem` | [mertensResidual_eq_continuous_sub_Mangoldt_work](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mertensresidual-eq-continuous-sub-mangoldt-work.md) | 280 | `result-track:67fcac896d9ebf477c66de6cc0674cb21a8cb7bc733855d5597b2d0e1a24bd9f` |
| 25 | `theorem` | [primeWork_eq_Mangoldt_work_add_square_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/primework-eq-mangoldt-work-add-square-higher.md) | 286 | `result-track:8ae0de2e617c51b7feba5c1b27d1f0e5e35080d26944d16123ba85230963dd9b` |
| 26 | `theorem` | [mangoldt_work_tail_iff_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldt-work-tail-iff-residual-tail.md) | 297 | `result-track:4167d5574b29df440b30489f3af0389d81d5a73dd7d68fd2659a22a51f8c893c` |
| 27 | `theorem` | [criticalMangoldtWork_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/criticalmangoldtwork-intervalintegrable.md) | 317 | `result-track:70c40905eacbae7ab2a7721379948dffe3f49f5b7698b716303a23c7c1c75873` |
| 28 | `theorem` | [signed_pairing_tail_iff_Mangoldt_work_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/signed-pairing-tail-iff-mangoldt-work-tail.md) | 324 | `result-track:e0fbb2f7108565a3c28c8437696b3d8aba554b7dcb5ddf464f57de4e1646fadb` |
| 29 | `theorem` | [criticalAbel_tail_iff_Mangoldt_work_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/criticalabel-tail-iff-mangoldt-work-tail.md) | 329 | `result-track:c1f97bcd3f612b4ceaa2ddf8fa952eff6c8a6800885ada12c4b6eeabc111047b` |
| 30 | `theorem` | [primeWork_minus_main_sub_Mangoldt_work_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/primework-minus-main-sub-mangoldt-work-abs-le.md) | 335 | `result-track:11fd2e876ac252570f138abd0b3c6476853ca99a5fc5a785b55e0af685021291` |
| 31 | `theorem` | [primeWork_Mangoldt_work_uniform_replacement_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/primework-mangoldt-work-uniform-replacement-error.md) | 348 | `result-track:f039ae2711acb84b5f91c0ae696b76c3595b4342f70a8f3be30de05a44f5fad2` |
| 32 | `theorem` | [mangoldtLogError_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogerror-abs-le.md) | 364 | `result-track:2a3140987135028ef14f0da31db39ed4d42ae1190a3a429bee0f3b39206dddd3` |
| 33 | `theorem` | [mangoldtLogError_below_first_atom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtAbel.lean/declarations/mangoldtlogerror-below-first-atom.md) | 380 | `result-track:6a80c551cc8cf77baf84ccbab8ea056d8685ae62cf4e1f7a5256f6b67b2952e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2aa2e4faf8867ec0e00cb8612e446d5efba8dcd888a51fbf173c1abd0c78bb51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
