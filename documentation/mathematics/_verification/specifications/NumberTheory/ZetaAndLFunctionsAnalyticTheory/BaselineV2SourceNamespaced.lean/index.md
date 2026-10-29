# Verification target: Baseline V2 Source Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e6f9ae37eecf0088abc5d735269ccac3409b02d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV2Source/Varianta3f74539022d8534b899e210b995f6595658b12714c250031f5792cc9ed3d699.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e6f9ae37eecf0088abc5d735269ccac3409b02d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV2Source/Varianta3f74539022d8534b899e210b995f6595658b12714c250031f5792cc9ed3d699.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV2Source/Varianta3f74539022d8534b899e210b995f6595658b12714c250031f5792cc9ed3d699.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [translationStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/translationstorage.md) | 35 | `declaration-track:d2800147dd099fea269ac708a17312be4978b523c9d61a6b233d25464116878b` |
| 2 | `theorem` | [translationStorage_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/translationstorage-eq.md) | 38 | `result-track:9d1dbe28b397621ad39ac928fdf48a1d3fbb854224615be8027167032ad127af` |
| 3 | `theorem` | [translationStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/translationstorage-nonneg.md) | 44 | `result-track:c0b8bc919f0695a40c91c99cff593a52e9fc3c62aa244c6c795fb6e67b5a4a98` |
| 4 | `theorem` | [translationStorage_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/translationstorage-zero.md) | 47 | `result-track:bb629122267d4e3acbfef95c54141085f5d225bbe031fb4851442555d2ff0a14` |
| 5 | `theorem` | [translationStorage_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/translationstorage-neg.md) | 50 | `result-track:2b23b9f831aef2f7028953b29239647073b1cf51b3cde27ca3b482f13e829b96` |
| 6 | `def` | [sourceSquareStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/sourcesquarestorage.md) | 55 | `declaration-track:252dc28e92cf386d8f65243de361d810575cd661bb6898b869c8f76813fd546e` |
| 7 | `theorem` | [sourceSquareStorage_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/sourcesquarestorage-eq.md) | 57 | `result-track:619227cb878bb0453833bb20385bb241925b2891c600429068984831e20ab822` |
| 8 | `theorem` | [sourceSquareStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/sourcesquarestorage-nonneg.md) | 63 | `result-track:959f9793cacd9c974155555c7660efeb17174f8d3070a2e63c64a9cf23955635` |
| 9 | `theorem` | [sourceSquareStorage_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/sourcesquarestorage-zero.md) | 66 | `result-track:48e633cbb6439a37c0042b4ef1bef250d90b5454e9e1b384a6e5dba04a6090a3` |
| 10 | `theorem` | [mangoldtCoefficient_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/mangoldtcoefficient-nonneg.md) | 70 | `result-track:c2d744100455faf8a9063a1a39853621cacd4cd99bffd9d41d0066e6f7d1d037` |
| 11 | `def` | [finiteMangoldtBaseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/finitemangoldtbaseline.md) | 73 | `declaration-track:441c6947c5b38671be7c5bafb538b4da60cb96eb23732a09e70a07b3fab9703e` |
| 12 | `def` | [finiteMangoldtStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/finitemangoldtstorage.md) | 75 | `declaration-track:7752e81bb2d4fb248bdf9a1db30d7b5af330af5f6e277bbad27246a7b9494bf5` |
| 13 | `theorem` | [finiteMangoldtBaseline_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/finitemangoldtbaseline-nonneg.md) | 78 | `result-track:73d5d170794d5b29636029a79bf2c32561ed1682f342bf958c1b08e8a1317eeb` |
| 14 | `theorem` | [finiteMangoldtStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/finitemangoldtstorage-nonneg.md) | 81 | `result-track:ada6f4003b9a4ab43c516151a655b3d118d920f9887d04d181a84d7a7932ffc5` |
| 15 | `theorem` | [finiteMangoldt_reconstruction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/finitemangoldt-reconstruction.md) | 87 | `result-track:f35549498725afb05755c6236148dc5501eac2dd37b433e4f215880ba0771e52` |
| 16 | `def` | [mangoldtBaseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/mangoldtbaseline.md) | 98 | `declaration-track:0a3c3b8970b35e392337a8a648d437ea3ef25078f514fef259ea8c97e95e132a` |
| 17 | `def` | [mangoldtStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/mangoldtstorage.md) | 100 | `declaration-track:c9edd93c55f780b2f597afb3d1662cf4bcac9831c718354f860a142289fa44bd` |
| 18 | `theorem` | [mangoldtBaseline_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/mangoldtbaseline-nonneg.md) | 103 | `result-track:7fb7fdad665299522f24e3b4b1104091a0ba4f1dff23e47fc70b9627a899265e` |
| 19 | `theorem` | [mangoldtStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/mangoldtstorage-nonneg.md) | 106 | `result-track:ebc44039c5b8dc2881d94ae084ecdeb19abe7d57800908881b133143931065ec` |
| 20 | `theorem` | [mangoldtInteraction_eq_baseline_norm_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/mangoldtinteraction-eq-baseline-norm-sub-storage.md) | 109 | `result-track:cc949d6abc2668141fb15ca90b21322b213244af42d5748f64bfe839260fdcdc` |
| 21 | `theorem` | [closedPrimeMoment_eq_baseline_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/closedprimemoment-eq-baseline-sub-storage.md) | 116 | `result-track:8d585444a4fb33d323c8f983604da655cdcaf1cf7b95ee5ceabb3ddc85dc330b` |
| 22 | `theorem` | [mertensResidual_eq_baseline_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/mertensresidual-eq-baseline-sub-storage.md) | 122 | `result-track:a460d1881d927e095cd627d8d41fd8dcd8f2185361046bc889562cf83d0b365d` |
| 23 | `def` | [firstPrimeBaseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/firstprimebaseline.md) | 127 | `declaration-track:52df77bde148c9f3e946b94efad6be42372cee84e11a8792b65d59cdf861dcc6` |
| 24 | `def` | [firstPrimeStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/firstprimestorage.md) | 129 | `declaration-track:86dd9e5c65ae7719594c8ba0e6ad2c196ab3f15458acde48e3272bb4b14009cb` |
| 25 | `theorem` | [firstPrimeBaseline_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/firstprimebaseline-nonneg.md) | 132 | `result-track:ef061d03bdff666d7dbb1bbac6adac8dbdfd640c154380eb5247446d61d2ea1e` |
| 26 | `theorem` | [firstPrimeStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/firstprimestorage-nonneg.md) | 135 | `result-track:29b9211a1253c9ef5d0d84b5ba37c3eee9219ecb96551a5219472ee8938fbce7` |
| 27 | `theorem` | [firstPrimeMoment_eq_baseline_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV2SourceNamespaced.lean/declarations/firstprimemoment-eq-baseline-sub-storage.md) | 138 | `result-track:a416c61285f0034fcd93c174f67fec0a8356bfdee333484f54ab8e981abacd2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9178332d5b5d96242d4e873df171841ec9fb55ebc58a48af45b446f659cbbe6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV2Source/Varianta3f74539022d8534b899e210b995f6595658b12714c250031f5792cc9ed3d699.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV2Source/Varianta3f74539022d8534b899e210b995f6595658b12714c250031f5792cc9ed3d699.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
