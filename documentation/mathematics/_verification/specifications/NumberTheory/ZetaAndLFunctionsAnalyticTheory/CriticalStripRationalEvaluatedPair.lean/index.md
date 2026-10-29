# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluatedPair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2901c1183b0d7d4ddc5468f49b9cecde6a19271",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2901c1183b0d7d4ddc5468f49b9cecde6a19271`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalFiniteEvaluation`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalFiniteEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Data](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/data.md) | 25 | `declaration-track:bc469c0fc82e722f82e36f299b81e52718ad91bf190614c760647c98a6a27d66` |
| 2 | `def` | [plusPoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/pluspoint.md) | 30 | `declaration-track:a314c8f2cb9098f980f118f618e972c814923775439353f7d6a7aeddc2ed23d5` |
| 3 | `def` | [minusPoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/minuspoint.md) | 31 | `declaration-track:b7fdb906d732a85b104611cd197845ac7d25308000f576759cf8cb56b85db98a` |
| 4 | `def` | [displacement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/displacement.md) | 32 | `declaration-track:1c9592f7b0bbcb229407ac5820eef1f39e1d0197e5363d7bae0bd1d00cec8951` |
| 5 | `def` | [pairCenter](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/paircenter.md) | 33 | `declaration-track:c29c3f22427a5730c4549cce38c819ab6ca78fd359cd52fa8fad05ccfc59b9d5` |
| 6 | `def` | [pairOffset](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/pairoffset.md) | 34 | `declaration-track:33635706c3ffe925537bd410c3663acc55349d979e9360bcfdb3dd50db78b0d1` |
| 7 | `def` | [sourceValue](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/sourcevalue.md) | 36 | `declaration-track:b8a1102c663da844b1bf3153af723484107910b637626733ebe9e802fd55e798` |
| 8 | `def` | [sourceSecant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/sourcesecant.md) | 37 | `declaration-track:d59a35c3ccae805b97d5a97cbed6c627923e2e1eaad29178842ec408b83edfef` |
| 9 | `def` | [witness](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/witness.md) | 42 | `declaration-track:6e28d3ff4f04d19f179c7af13608fa4b54cfc246bb7a13895a633da3abf0bc98` |
| 10 | `def` | [check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/check.md) | 56 | `declaration-track:1c0e81f85f81ea0ba9795008971d5007bfb4125af8bacf348832b5ae3a9109fb` |
| 11 | `lemma` | [check_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/check-iff.md) | 61 | `result-track:55e4a7105117c707573094ccb0c0d3f53425b7303b960427de72f20b017e9870` |
| 12 | `lemma` | [endpoints](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/endpoints.md) | 69 | `result-track:2941ef6c3a347ab035c6741953fd957eb0b9cf45a02143402a2a70e4ba3f7825` |
| 13 | `lemma` | [offset_norm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/offset-norm.md) | 76 | `result-track:9e433106008bfea8829595c3cc0ffdb3fd7688fa09cdac2b7b45115169378398` |
| 14 | `lemma` | [offset_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/offset-ne-zero.md) | 82 | `result-track:376d594e0338ec601ae486417bc5baf39003e6be5a470c57b8b6479e290a2eb0` |
| 15 | `lemma` | [sourceValue_cast](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/sourcevalue-cast.md) | 86 | `result-track:10662d01428a961e576a3fbc35376f7ba08d5283666930fa359aa94c69372628` |
| 16 | `lemma` | [sourceSecant_cast](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/sourcesecant-cast.md) | 90 | `result-track:0ccb4f98ee4c80e5ac6ce8c2a1861953a7b42dfb17ac8182a2c44f3a5eba50d6` |
| 17 | `lemma` | [endpoints_in_band](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/endpoints-in-band.md) | 95 | `result-track:fd1769718878491776b68c473d79a827b6d9f9d86f85989291e45d5be9f4dc16` |
| 18 | `theorem` | [Data.source_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/data-source-valid.md) | 107 | `result-track:a2b82ca420890021f0cb2dff3b1735bac26d1862ae01f3c80a4a97d455f7d6f6` |
| 19 | `theorem` | [Data.evaluation_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/data-evaluation-valid.md) | 117 | `result-track:10099f1b56902366f9d4d39c63929d16d635eb9df873b912db5cd38a0fd681a2` |
| 20 | `lemma` | [Data.weight_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/data-weight-valid.md) | 173 | `result-track:41e051524dfd278b7eb5cddb4fd0557e87aa844935928cd21d3cde1da166fb39` |
| 21 | `theorem` | [Data.not_target](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/data-not-target.md) | 183 | `result-track:427ebe449d99d3bd718f2b5bad57304511b915e64b13221a1f8588af56f673b4` |
| 22 | `def` | [rawData](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/declarations/rawdata.md) | 198 | `declaration-track:eb4d207fbb666a20cc1fd89ac3a5be7e85b42ab78ed1260eeea2f37894489142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=492ac7ce8c8b9b6dc3ad12623987eb58071e3d0dfb2e3c5e3c7240856759cc02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
