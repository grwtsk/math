# Verification target: Draft V1 Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dde3609e76077b2ff9c10125c9fa762ec5633fb",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dde3609e76077b2ff9c10125c9fa762ec5633fb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean.json)

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
| 1 | `def` | [mangoldtLogPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogprefix.md) | 27 | `declaration-track:f2286325449b181df384ad9be1fafcec18f2f4e82875de7d930902590057dcd6` |
| 2 | `def` | [mangoldtLogSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogsum.md) | 30 | `declaration-track:1d624af0989b4caf5540dcb0e133b73827d0c8d0793e92d4a4a29e53ce63db5c` |
| 3 | `def` | [mangoldtLogWindow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogwindow.md) | 34 | `declaration-track:c4cfe330d13027aa90d858b819dbca52a23fa1d520237518aee2bf292777b123` |
| 4 | `def` | [mangoldtLogError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogerror.md) | 38 | `declaration-track:cc9ca72cf26265d3039454674d34ec50b9cfa26feb5e28275a6f8f7d4f87c0a6` |
| 5 | `def` | [criticalMangoldtWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/criticalmangoldtwork.md) | 41 | `declaration-track:5acc52c131497ad9e170ebc71c8554e3ed6b39b972f1304dbe5bc2906f8825b4` |
| 6 | `def` | [MangoldtWorkTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtworktaillowerbound.md) | 45 | `declaration-track:68c0a1102ec7d13f8e1dbab3b4017d49b5005a63a4cc6204eaca8a0ba3e088ab` |
| 7 | `theorem` | [mangoldtLogPrefix_eq_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogprefix-eq-sum.md) | 49 | `result-track:1da7bc3773743802389bf68c49e460d575a39f64c6bd4ca6674f3d4e1ce963ec` |
| 8 | `theorem` | [primePowerInventory_filter_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/primepowerinventory-filter-log.md) | 66 | `result-track:ab22ba162f06050e4a17849dd0fc1f3c35ddd0983f6b8bb456aec2b3b32e4a61` |
| 9 | `theorem` | [mangoldtLogPrefix_eq_steps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogprefix-eq-steps.md) | 80 | `result-track:dd29bf195e52785a15948d289f32e710fd305f3881a3df941b6791721bbfa738` |
| 10 | `theorem` | [mangoldtInventory_log_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtinventory-log-bounds.md) | 86 | `result-track:69f464854cd9fd9026dbbeb582f9d3997bd076a2c05808e24bb31218c8849ba7` |
| 11 | `theorem` | [mangoldtLogPrefix_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogprefix-zero.md) | 94 | `result-track:9a407c3d9c77d037c63b0768744687d5b3a72a48a37f7c75cad99bfdea8bc52f` |
| 12 | `theorem` | [mangoldtLogPrefix_mul_deriv_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogprefix-mul-deriv-intervalintegrable.md) | 98 | `result-track:5da54eb42897e5e7fbaeef3ba0d0a8623e4c5fd59e893f5828abfd1f0dcc4e78` |
| 13 | `theorem` | [mangoldtLogSum_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogsum-abel.md) | 125 | `result-track:8cb6a11f7d472b86d9c630cdbe28dd4ec9a5350cf0b95fcd6ad59db7b3a45dc6` |
| 14 | `theorem` | [mangoldtLogWindow_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogwindow-abel.md) | 149 | `result-track:5a80ef37ac221c68bb12aadd719f140922222c3b172a9926ee2fad00207fa788` |
| 15 | `theorem` | [mangoldtLogWindow_eq_filter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogwindow-eq-filter.md) | 160 | `result-track:eeb2b8d45761b99da6fd0fd8878e2fcb27bc9a43ef9b0d1ef8192784dbc3accf` |
| 16 | `theorem` | [mangoldtLogWindow_eq_interval_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogwindow-eq-interval-sum.md) | 173 | `result-track:14dc28d55fccb10d3ad7245d2dc800a1dbac92ec0f9be9bcb05af22552d6acc7` |
| 17 | `theorem` | [mangoldtLogError_mul_deriv_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogerror-mul-deriv-intervalintegrable.md) | 188 | `result-track:c5311e0e89ae26953a2e541da509f76e58c07bd1261a297d1792747f2fd1540c` |
| 18 | `theorem` | [mangoldtLogWindow_sub_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogwindow-sub-integral.md) | 196 | `result-track:6df241b2967c342f4a36bf53c4bda54f406ee42d00e6f2cd02f141adfaa2e35f` |
| 19 | `theorem` | [natural_source_coefficient_eq_critical_test](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/natural-source-coefficient-eq-critical-test.md) | 220 | `result-track:5f8ad09c2adcbc448f1fe332a079b30838cacf9f0fc5e083aee86133ce76844f` |
| 20 | `theorem` | [closedPrimeMoment_eq_mangoldtLogSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/closedprimemoment-eq-mangoldtlogsum.md) | 237 | `result-track:df7b3daa6c745de60dc9fa97be7fe7e88edacbb998b7800201c374e0b20f32d6` |
| 21 | `theorem` | [mangoldtLogWindow_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogwindow-zero.md) | 246 | `result-track:d2548d03676d5d194b828a288200840bb868a5f487a60131fc81fae1c3df772a` |
| 22 | `theorem` | [closedPrimeMoment_eq_continuous_sub_Mangoldt_work](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/closedprimemoment-eq-continuous-sub-mangoldt-work.md) | 251 | `result-track:19f0713b6dca9179264614e7b0a3105053a5ccca9c1aa23421b9229f8ba186c2` |
| 23 | `theorem` | [mertensResidual_eq_continuous_sub_Mangoldt_work](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mertensresidual-eq-continuous-sub-mangoldt-work.md) | 263 | `result-track:d34ee0bf31d2048d604e2601c55e156d15368d20dff2d88ebd15dcee0ec80fa4` |
| 24 | `theorem` | [primeWork_eq_Mangoldt_work_add_square_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/primework-eq-mangoldt-work-add-square-higher.md) | 269 | `result-track:dcaa391a197e987fe54a0f42eaa9e68fcd0bf494cda2cafaf429d346536abc47` |
| 25 | `theorem` | [mangoldt_work_tail_iff_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldt-work-tail-iff-residual-tail.md) | 280 | `result-track:fad335024655c05c16847591d1a05820577da95ef43b417cd904cc2aa980c46a` |
| 26 | `theorem` | [mangoldtLogError_below_first_atom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/declarations/mangoldtlogerror-below-first-atom.md) | 300 | `result-track:97210398205a863333e1851674c25909eff4e2aa4eb3f9a0996f2dc21e7dbda5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be25fcafb26dce6f1e9fad13eb907121b196b1cf5ea6fdd72ede0e24312803be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
