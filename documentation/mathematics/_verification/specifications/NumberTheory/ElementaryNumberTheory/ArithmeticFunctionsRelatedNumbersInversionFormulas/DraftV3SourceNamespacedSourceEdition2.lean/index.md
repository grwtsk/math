# Verification target: Draft V3 Source Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14077489b9154e42a7f31e5941a2f4b03c005db9",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14077489b9154e42a7f31e5941a2f4b03c005db9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtLogPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogprefix.md) | 35 | `declaration-track:11384a44ded1d102d750b06ade5a211991a3cdc94af5e44151861013de9a64b8` |
| 2 | `def` | [mangoldtLogSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogsum.md) | 38 | `declaration-track:e77b9511595d98ce4b51be000cee84e13d16169c75b657fc32d7206feb7a576b` |
| 3 | `def` | [mangoldtLogWindow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogwindow.md) | 42 | `declaration-track:749eb481e1c90c66c056944c362462d0d45bd3cfbe452b1e42a8c6f8a473ea74` |
| 4 | `def` | [mangoldtLogError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogerror.md) | 46 | `declaration-track:d6e469034ec6f664306a5143cd8105d16ac970545c0e8110f10c3597e41a0f27` |
| 5 | `def` | [criticalMangoldtWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/criticalmangoldtwork.md) | 49 | `declaration-track:124bb1fdb6103aeab6458642a4f6fb20b2b461509d2be7ef0799bf3bf5a85014` |
| 6 | `def` | [MangoldtWorkTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtworktaillowerbound.md) | 53 | `declaration-track:c5f043009e9161e96bc0d175e9042686602ea09254b69d1d5839d72ae895b62e` |
| 7 | `theorem` | [mangoldtLogPrefix_eq_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogprefix-eq-sum.md) | 57 | `result-track:d9d5178fa6ddec5f6b966a425381a78b723a7900dd92a4bd1ae4955fd4b9b3ae` |
| 8 | `theorem` | [primePowerInventory_filter_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/primepowerinventory-filter-log.md) | 74 | `result-track:af12089d282fc105bb7f3127c852f042af78f230e02a6d043a767fc7c91667af` |
| 9 | `theorem` | [mangoldtLogPrefix_eq_steps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogprefix-eq-steps.md) | 88 | `result-track:3f2bd14ba534cec8bd9c1c0e5bc2ed2fdf123b06d24ac1a3c60c21c5cc3fe5ed` |
| 10 | `theorem` | [mangoldtInventory_log_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtinventory-log-bounds.md) | 94 | `result-track:0750dc432d27141fcaf4b8f81e9d894529c6a9a86500ad89ff52c105c2811053` |
| 11 | `theorem` | [mangoldtLogPrefix_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogprefix-zero.md) | 102 | `result-track:9e3d8baa0590e8f576070b4f6c08e8465cb0858cbc33db433b02e26a93763896` |
| 12 | `theorem` | [mangoldtLogPrefix_mul_deriv_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogprefix-mul-deriv-intervalintegrable.md) | 106 | `result-track:b5729b844b8294c2b95e8b66f52221f142718d9f61c255afd99e9e17669f19d0` |
| 13 | `theorem` | [mangoldtLogSum_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogsum-abel.md) | 137 | `result-track:b6a9aacec5411661eb40b413a36356bae3a77190e65bb8c4f037548beb448f6a` |
| 14 | `theorem` | [mangoldtLogWindow_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogwindow-abel.md) | 161 | `result-track:f754517749fdcbb52313b83f059b976636fe3b195af600c7622215afab36fb6b` |
| 15 | `theorem` | [mangoldtLogWindow_eq_filter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogwindow-eq-filter.md) | 172 | `result-track:86ca3315191b9c482807e7901b69aec1658768e92dee8df86936fa751173ed46` |
| 16 | `theorem` | [mangoldtLogWindow_eq_interval_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogwindow-eq-interval-sum.md) | 185 | `result-track:cbbe06c8b7cdf065440b5db027931e9020798c08724c1f6e8cc1b223e01f4670` |
| 17 | `theorem` | [mangoldtLogError_mul_deriv_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogerror-mul-deriv-intervalintegrable.md) | 203 | `result-track:435d74e8698f8f8adfac6fa05e36c71c11b0d162c021555aa0f8110e0b19418d` |
| 18 | `theorem` | [mangoldtLogWindow_sub_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogwindow-sub-integral.md) | 211 | `result-track:c7e08cf295ee6721228a1f8f26e1d2ce9d3acf3c61c84fdf366f770c0c2c79b6` |
| 19 | `theorem` | [natural_source_coefficient_eq_critical_test](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/natural-source-coefficient-eq-critical-test.md) | 235 | `result-track:028537ee9352c47e250dcf0d3ed6d638f6d22780a5e2d9462541e1a620b6f541` |
| 20 | `theorem` | [closedPrimeMoment_eq_mangoldtLogSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/closedprimemoment-eq-mangoldtlogsum.md) | 252 | `result-track:a9053e84e276a759bf7af988d57358a2f8a985a7d1f79044d250e141954b748c` |
| 21 | `theorem` | [mangoldtLogWindow_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogwindow-zero.md) | 261 | `result-track:0d2dbfe8af14d1367fae8addc2f5a7165807c541b2ef2571abac036cf830e8e7` |
| 22 | `theorem` | [closedPrimeMoment_eq_continuous_sub_Mangoldt_work](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/closedprimemoment-eq-continuous-sub-mangoldt-work.md) | 266 | `result-track:25f6f73f9ce1cabb98e5cca357ba9438d4bf204dee7e5cfd5c3b8e1eabcb5398` |
| 23 | `theorem` | [mertensResidual_eq_continuous_sub_Mangoldt_work](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mertensresidual-eq-continuous-sub-mangoldt-work.md) | 278 | `result-track:3d759410d2f6dcc3ac7535d3999f824a7d9a1880b4cb46b76ff23762f7a7ebec` |
| 24 | `theorem` | [primeWork_eq_Mangoldt_work_add_square_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/primework-eq-mangoldt-work-add-square-higher.md) | 284 | `result-track:1618f78f3442399bb6501cfb92fe0e02e7f8731443c7240dacc842c19c374329` |
| 25 | `theorem` | [mangoldt_work_tail_iff_residual_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldt-work-tail-iff-residual-tail.md) | 295 | `result-track:eb9e9d735dde13ee1acd46e3db4f11604fb0a5658c9a7de2c7a1832c88fa84ec` |
| 26 | `theorem` | [criticalMangoldtWork_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/criticalmangoldtwork-intervalintegrable.md) | 315 | `result-track:53abcc57681ca6a86dc9ee3be1e3c482ab227634fc03ea7ca96c58b03e4c1cf3` |
| 27 | `theorem` | [signed_pairing_tail_iff_Mangoldt_work_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/signed-pairing-tail-iff-mangoldt-work-tail.md) | 322 | `result-track:58c16f64aba6ba7aa14f2c6b63b18c48f538d77c56c55ce63768b1feb7e1dbc5` |
| 28 | `theorem` | [criticalAbel_tail_iff_Mangoldt_work_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/criticalabel-tail-iff-mangoldt-work-tail.md) | 327 | `result-track:d044345f1fa271693e99d5087b7335c25d176d88c4c545ce8806b4aec894d57d` |
| 29 | `theorem` | [primeWork_minus_main_sub_Mangoldt_work_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/primework-minus-main-sub-mangoldt-work-abs-le.md) | 333 | `result-track:8b7784a0d30a2b90fbc133fd9dfc0b845e95e4c426ce20e50e1f63c526733c9c` |
| 30 | `theorem` | [primeWork_Mangoldt_work_uniform_replacement_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/primework-mangoldt-work-uniform-replacement-error.md) | 344 | `result-track:d2c115b9d43c4596672e5ec9f90dac67cbaef2a0e3ebe5a9e319300e8c2ade41` |
| 31 | `theorem` | [mangoldtLogError_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogerror-abs-le.md) | 358 | `result-track:6d4007a05d52481950647fc53aec32c2c2eb85a35388f969161317a264687f8c` |
| 32 | `theorem` | [mangoldtLogError_below_first_atom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV3SourceNamespacedSourceEdition2.lean/declarations/mangoldtlogerror-below-first-atom.md) | 374 | `result-track:dfdff20d75b90816016c325153fa67bc7a5c8ecf7babb38a938b3eca606cb323` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6500583eeedceb8411d1c7233b8719da6b76d7065efa7bf48fc215e108cae7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
