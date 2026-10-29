# Verification target: Log Mellin Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4709fde7db5712c4c6690b92be3b8a4eaa205522",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4709fde7db5712c4c6690b92be3b8a4eaa205522`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 6; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularIntegral](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/angularintegral.md) | 27 | `declaration-track:7d18f70a623ab78bdd7ca35998745605ab81b24c8aa55ee266251048cb229a7a` |
| 2 | `theorem` | [critical_jacobian](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/critical-jacobian.md) | 30 | `result-track:ff02b56bec4cf432dcb9cf6b5ec56375d87ffc084724ed3a18da7452264b707e` |
| 3 | `theorem` | [mellin_critical_log](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/mellin-critical-log.md) | 42 | `result-track:5625671bb483a24c92a89a1eff6dd4cade7bb6f283dd4c9fdd08c28414489200` |
| 4 | `theorem` | [critical_integrable_iff](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/critical-integrable-iff.md) | 53 | `result-track:ba7c263df242a6871ee0c92ce183781848a1603956ef35d796276dab3a5c9d47` |
| 5 | `theorem` | [phase_norm](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/phase-norm.md) | 65 | `result-track:b795f17906727dbd0c67e57e379bbdcf48e85572835a7cd6e8b0a8a3b3cadffb` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/logfunc-integrable-of-critical.md) | 69 | `result-track:bc844f6b7cc27e760033037120b72b185ad6b50e74a2df944de2792741f1595c` |
| 7 | `theorem` | [actualSource_memLp](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actualsource-memlp.md) | 81 | `result-track:c0715054fa567928e77cb0b94d63a9e096a70fb8ad861a81dbf70c16b0f6ccc3` |
| 8 | `def` | [actualSourceL2](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actualsourcel2.md) | 90 | `declaration-track:b7fab44dda5b86711ed55d2a44be78a3fd324591f10f5062a14883c75ef53f10` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actualsourcel2-ae.md) | 93 | `result-track:13abbd4a367f0c50c4cd94a0eab9c52bbab2bc22c4c99b04a36fea3ae362247a` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-source-log-pointwise.md) | 97 | `result-track:7f05daa3c9c264c3630851b896238f0c00ecacdfa629a7752bdea10f5665d4da` |
| 11 | `theorem` | [actual_source_log_ae](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-source-log-ae.md) | 104 | `result-track:c232da72acd2808a7001c91f390c5be25af13f909cacaaae30d938fbd8cd27c7` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-source-angular-integrable.md) | 113 | `result-track:28a1fe541def9c1fdfa082603b61b8ac7973b5e9152ca5b96a6b7afa5154d89e` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-muntz-angular-integrable.md) | 120 | `result-track:71bcfa16430ad86f3d952d713e19a31fd0152e68dd55d3452e33dbc5c90a8234` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-muntz-log-integrable.md) | 127 | `result-track:aedf092cb758cfd5e90eeab14866fe98d25772eb2fe36af5ebf6b43f0180b903` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-source-mellin-log.md) | 134 | `result-track:181318b9c85e577ce80fb17573a568a15725dafb420f158d45b3389d81f4cb8e` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-muntz-mellin-log.md) | 142 | `result-track:ee4f8d78bbc39c5a92e9c03cf4d6ff9f6c104db54780871f2d242ca3a4c2664d` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-muntz-mellin-log-class.md) | 146 | `result-track:e8e57b9b220f1e707107d7259516ef63a735b9b195dd027e89a3d85493725982` |
| 18 | `theorem` | [actualQ_memLp](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actualq-memlp.md) | 154 | `result-track:13ebcc07c6525feafeea9319df2922e58ab8cada5ffdf1228c5b420a942b423a` |
| 19 | `def` | [actualQClass](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actualqclass.md) | 160 | `declaration-track:a518bfc0a475e8e23b3926c595460822fec83474f2ff600f560af7ab0387a7f3` |
| 20 | `theorem` | [actualQClass_ae](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actualqclass-ae.md) | 163 | `result-track:e41b86bf17c32474015cd59a6df92900be0b869bdce2661d11ccca23ac013411` |
| 21 | `theorem` | [actual_source_log_eq](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-source-log-eq.md) | 169 | `result-track:eec6a469cba6b9ccdac5f8835adfce8f7cee6638d181ce83b350301e1380d3e1` |
| 22 | `theorem` | [actual_muntz_log_class_integrable](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-muntz-log-class-integrable.md) | 173 | `result-track:f5fa2676b8f1a53d241fce50186ca16615e0b4d953d74ea9e54c5c002af86bf8` |
| 23 | `theorem` | [actual_muntz_log_class_angular_integrable](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-muntz-log-class-angular-integrable.md) | 177 | `result-track:429e98fa4b56d826907a5903f6ef824de5e72f3a3111eed46ac2998778792157` |
| 24 | `theorem` | [actual_source_mellin_log_class](../../../../MeasureAndIntegration/LogMellinNamespaced.lean/declarations/actual-source-mellin-log-class.md) | 183 | `result-track:62c8c511ffa2acf896d111e0051147773aee32f5f25d0074ad11e8096023da0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e79b79701239de46cd6bdc33ebdb95e3794fd0337b266072f4a616a73b08844d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogMellin/Variant03c751acf03c910c074d22c5cf97d63ee1955a2837bb9bf1b48e3b2847d9971a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
