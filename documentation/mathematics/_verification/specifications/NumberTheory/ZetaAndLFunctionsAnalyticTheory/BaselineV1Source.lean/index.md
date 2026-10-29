# Verification target: Baseline V1 Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc47f15a71716c0ac642076e1c13d498ab38bab4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant7a7da4d01df0e7b01dc8d2e2c088f8fe410826bf64cd097e44fba1daa9dd9a8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc47f15a71716c0ac642076e1c13d498ab38bab4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant7a7da4d01df0e7b01dc8d2e2c088f8fe410826bf64cd097e44fba1daa9dd9a8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant7a7da4d01df0e7b01dc8d2e2c088f8fe410826bf64cd097e44fba1daa9dd9a8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [translationStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/translationstorage.md) | 27 | `declaration-track:ab2f510baa04bd5fe39b3e38ed8d0016ca8528d1f44ee2eda75ffc6f537fcd15` |
| 2 | `theorem` | [translationStorage_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/translationstorage-eq.md) | 30 | `result-track:88f5d8afb3ef549b20b2f872a1c4e39a1364d7cc17055fd35e31147cf1b62b51` |
| 3 | `theorem` | [translationStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/translationstorage-nonneg.md) | 36 | `result-track:6a4c5298b3e5f27c90379dc77a71effc99aa49c85a548943884b08eaac75336a` |
| 4 | `theorem` | [translationStorage_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/translationstorage-zero.md) | 39 | `result-track:e671f97ad091105a153ca15ac11507c58ee39e2678a52805421d608a1d9386f6` |
| 5 | `theorem` | [translationStorage_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/translationstorage-neg.md) | 42 | `result-track:45c279a1d92fa69e9d86fd788a6f3e7b1da27c1348550dfb9f4eb2e1b8924197` |
| 6 | `def` | [sourceSquareStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/sourcesquarestorage.md) | 47 | `declaration-track:6dd48843eadc7b14cc0da20e00d159cac4d3fff959e2c02c05ee020d4cb6d1c4` |
| 7 | `theorem` | [sourceSquareStorage_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/sourcesquarestorage-eq.md) | 49 | `result-track:36396001f1f12b4c9dd00dd101abbc78634444c1f5022b1d80625cdcd01695bb` |
| 8 | `theorem` | [sourceSquareStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/sourcesquarestorage-nonneg.md) | 55 | `result-track:791b2325d00d2be976f5359311324134e5d96c15e1bfe935243607baca4c459e` |
| 9 | `theorem` | [sourceSquareStorage_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/sourcesquarestorage-zero.md) | 58 | `result-track:371139806a7fb51a5021ef8b86016c68c6be004a35d83a5d71d3776757d21fad` |
| 10 | `theorem` | [mangoldtCoefficient_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/mangoldtcoefficient-nonneg.md) | 62 | `result-track:c1562593786e59f332285b2ad24d93d4fecac8ccef666f5509c2f429306b8ff3` |
| 11 | `def` | [finiteMangoldtBaseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/finitemangoldtbaseline.md) | 65 | `declaration-track:3de6db28704acadd396e0aa7e00073210949420b10d3633e328ee21a2177228b` |
| 12 | `def` | [finiteMangoldtStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/finitemangoldtstorage.md) | 67 | `declaration-track:71adcf9a186401344a39a7fa51f8fa826c9cb1134b87310d71c6fc238a81c94b` |
| 13 | `theorem` | [finiteMangoldtBaseline_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/finitemangoldtbaseline-nonneg.md) | 70 | `result-track:fa0c92738472c8d04ce5fc5a22fa678de079c4538bdfc5f71376c395098fc7d5` |
| 14 | `theorem` | [finiteMangoldtStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/finitemangoldtstorage-nonneg.md) | 73 | `result-track:b6c1a3522333ed32fc5e99c49a255d45451c280e7cfd97faf057634e14118cc0` |
| 15 | `theorem` | [finiteMangoldt_reconstruction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/finitemangoldt-reconstruction.md) | 79 | `result-track:e03dbf72b6fdad338d189bb58c51731c09f4005ddf9ebc3ec44d62fbd55f9008` |
| 16 | `def` | [mangoldtBaseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/mangoldtbaseline.md) | 90 | `declaration-track:6370ddd2bcc7ccfd694dfec16d46197fdfb381b117bb04fdec0041271d22782f` |
| 17 | `def` | [mangoldtStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/mangoldtstorage.md) | 92 | `declaration-track:1a1532493a949be559012148422eaf09817ec91faa20119f31ccdd90a0f3dfc7` |
| 18 | `theorem` | [mangoldtBaseline_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/mangoldtbaseline-nonneg.md) | 95 | `result-track:87a2ef028372548521ecff6d39f37ca802f02f93e1f675441db6b00d368237aa` |
| 19 | `theorem` | [mangoldtStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/mangoldtstorage-nonneg.md) | 98 | `result-track:9e210f50e9d868aa9e96e04a4edfc6f4a131e4e09e8cfdc9217acdd4a838f818` |
| 20 | `theorem` | [mangoldtInteraction_eq_baseline_norm_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/mangoldtinteraction-eq-baseline-norm-sub-storage.md) | 101 | `result-track:696d303b042edfc90ec2b892c69c27cefc05bb3716f29d6a165991ada3a4e721` |
| 21 | `theorem` | [closedPrimeMoment_eq_baseline_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/closedprimemoment-eq-baseline-sub-storage.md) | 108 | `result-track:9c338ff65d5da3699b1d597bdabab2ce74fe0ed7286836e277c6274932d2d9ca` |
| 22 | `theorem` | [mertensResidual_eq_baseline_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/mertensresidual-eq-baseline-sub-storage.md) | 114 | `result-track:2504e73f2e353aaddf9d920ada2c1b4dd4b75b35e76e6f636b4d113719ae0713` |
| 23 | `def` | [firstPrimeBaseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/firstprimebaseline.md) | 119 | `declaration-track:135e45ba596628a22f4b58f91e5186ec0a86c724c9b77d2f6af9ad829b65ffd7` |
| 24 | `def` | [firstPrimeStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/firstprimestorage.md) | 121 | `declaration-track:5e00401b2103a671ec607add0754fee47068a5b550ef7f7ba351e1b587ab31e5` |
| 25 | `theorem` | [firstPrimeBaseline_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/firstprimebaseline-nonneg.md) | 124 | `result-track:6f4b9ae38e27f8b2873e16e3d7384789bc34b95d6db5fd2657bceba526a9ce30` |
| 26 | `theorem` | [firstPrimeStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/firstprimestorage-nonneg.md) | 127 | `result-track:e538eaf13b1827c2c0dc0d9a5255641ecebbe271a1a2afedf31d28ad25800fa1` |
| 27 | `theorem` | [firstPrimeMoment_eq_baseline_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1Source.lean/declarations/firstprimemoment-eq-baseline-sub-storage.md) | 130 | `result-track:6348eb10d49d0d62973ffd238cda783014833889fb0219113a6a46953c032a63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfe2e7fc74f99d2b25c5910213c40c6bee302f569e5c9aa4da32694badaa77c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant7a7da4d01df0e7b01dc8d2e2c088f8fe410826bf64cd097e44fba1daa9dd9a8d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant7a7da4d01df0e7b01dc8d2e2c088f8fe410826bf64cd097e44fba1daa9dd9a8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
