# Verification target: Baseline V1 Source Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c33a3c2556b6b7cc6897e58aae0bfb0bb0569383",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant2d84a2342e700d386d1b0c44a342ea0bcc54183b74b3d4b2456425129d70986a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c33a3c2556b6b7cc6897e58aae0bfb0bb0569383`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant2d84a2342e700d386d1b0c44a342ea0bcc54183b74b3d4b2456425129d70986a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant2d84a2342e700d386d1b0c44a342ea0bcc54183b74b3d4b2456425129d70986a.lean.json)

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
| 1 | `def` | [translationStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/translationstorage.md) | 35 | `declaration-track:850e084868a1841e332bf2b3d81bfc95b5afceb3aeb032932a674c37f68a0325` |
| 2 | `theorem` | [translationStorage_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/translationstorage-eq.md) | 38 | `result-track:042e48809f92ecf7da71854c44a37f29ba7ce9ac9d204a53fae3c00968ad1e7d` |
| 3 | `theorem` | [translationStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/translationstorage-nonneg.md) | 44 | `result-track:fedeba302758ba81965d22c8f46c17b07cf1d4e020b23adc9cc12132e5d3fd67` |
| 4 | `theorem` | [translationStorage_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/translationstorage-zero.md) | 47 | `result-track:ae39a8bf7982302bf12d8df4e2c44fe737382765e064655cbaf9b5a028766410` |
| 5 | `theorem` | [translationStorage_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/translationstorage-neg.md) | 50 | `result-track:6d802239375cd2fdd0c689abb7d3b0ba0aa334387caaf441d132b2976ef822aa` |
| 6 | `def` | [sourceSquareStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/sourcesquarestorage.md) | 55 | `declaration-track:00c854c7227fff9600540fa86f97534c4622d669961a0942d0390a886328efef` |
| 7 | `theorem` | [sourceSquareStorage_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/sourcesquarestorage-eq.md) | 57 | `result-track:66578af51f1b18da09378075622992e04b5af4711a0a7e8421f8a8de64ada809` |
| 8 | `theorem` | [sourceSquareStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/sourcesquarestorage-nonneg.md) | 63 | `result-track:b8364dce11c582e6d7d24383dd9449ce080ca2992cccc4cd5f057819720ef9c2` |
| 9 | `theorem` | [sourceSquareStorage_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/sourcesquarestorage-zero.md) | 66 | `result-track:da0de6d9b23e947287d406f7efbffc6dc780b7cda489025aa1265abd2d1401a6` |
| 10 | `theorem` | [mangoldtCoefficient_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/mangoldtcoefficient-nonneg.md) | 70 | `result-track:de5aafed3ea30215378a968776f14d0ede639f7e07fdde403b49c65e052436b0` |
| 11 | `def` | [finiteMangoldtBaseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/finitemangoldtbaseline.md) | 73 | `declaration-track:bb86d872da8f0493e23d3b0f14878fdcb0eb42fcb9b676b6619c2ab7419bfb0e` |
| 12 | `def` | [finiteMangoldtStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/finitemangoldtstorage.md) | 75 | `declaration-track:9d822a37853d5200158406c2686177584b6b966fae34fec2dc01e80c7010c383` |
| 13 | `theorem` | [finiteMangoldtBaseline_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/finitemangoldtbaseline-nonneg.md) | 78 | `result-track:b2faa635c027571d5a9a6d7b79af8710adac5e2396fe0f9918f8dce79d66a80b` |
| 14 | `theorem` | [finiteMangoldtStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/finitemangoldtstorage-nonneg.md) | 81 | `result-track:8c608cb900c2027debf47704b812c41c306ca742f8a9678bbfa9d2428300eccb` |
| 15 | `theorem` | [finiteMangoldt_reconstruction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/finitemangoldt-reconstruction.md) | 87 | `result-track:0b32838e1f5a80074ff0c5c9538577b61be4d2e5b733509ae0e02674d7a99dd1` |
| 16 | `def` | [mangoldtBaseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/mangoldtbaseline.md) | 98 | `declaration-track:dcc1e281b52f27ed3e04aeab5fb255da1ce45796b045dd96522afae85e5d1ba6` |
| 17 | `def` | [mangoldtStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/mangoldtstorage.md) | 100 | `declaration-track:8c912ff7290d50dd6098dea736aa0d790a96b377e74246bfa15aaa45c4923ed6` |
| 18 | `theorem` | [mangoldtBaseline_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/mangoldtbaseline-nonneg.md) | 103 | `result-track:fe909035fbc0c40adba18bde10f81e6fa6384c0773c8722cbd89e2f6d69b7cf3` |
| 19 | `theorem` | [mangoldtStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/mangoldtstorage-nonneg.md) | 106 | `result-track:820835855f21d81091c9f2c0409bb2803f5f59d971ed0f224703d198d46e2727` |
| 20 | `theorem` | [mangoldtInteraction_eq_baseline_norm_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/mangoldtinteraction-eq-baseline-norm-sub-storage.md) | 109 | `result-track:4864c6bd65ea689b2a5adc1995b5ad76e1ecf373915e9bfd3574ac2a73e1299d` |
| 21 | `theorem` | [closedPrimeMoment_eq_baseline_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/closedprimemoment-eq-baseline-sub-storage.md) | 116 | `result-track:f5a6957d0eedb9fd08470fddf52d5a52c3207fa8aad87547e3757158e7e487f1` |
| 22 | `theorem` | [mertensResidual_eq_baseline_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/mertensresidual-eq-baseline-sub-storage.md) | 122 | `result-track:f24c82f726478b967cf7e74626dad46b2939d6c900f16953d8f58db9aff612e4` |
| 23 | `def` | [firstPrimeBaseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/firstprimebaseline.md) | 127 | `declaration-track:e6d1fbdddb009469e33385960407b40c54b898d8816a2ac221deecbe9bf6fd2d` |
| 24 | `def` | [firstPrimeStorage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/firstprimestorage.md) | 129 | `declaration-track:327a92c45497565c0fba3ad0e59bda8e7d7a2ff49b8d5a6990401b1962e288af` |
| 25 | `theorem` | [firstPrimeBaseline_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/firstprimebaseline-nonneg.md) | 132 | `result-track:1393856cd838a1247fe8b450633fbfb4c7722f3336d796eae6b029fcb4eb2db7` |
| 26 | `theorem` | [firstPrimeStorage_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/firstprimestorage-nonneg.md) | 135 | `result-track:dc89b581e019d931a2a286424b0c8b30c8a668fc08a50811af5d63d5381691c2` |
| 27 | `theorem` | [firstPrimeMoment_eq_baseline_sub_storage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/BaselineV1SourceNamespaced.lean/declarations/firstprimemoment-eq-baseline-sub-storage.md) | 138 | `result-track:8fee6b8b754be559ba72d025e07c7a0b8decea03497ddac48e2abca6a6f6757c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0eecdd1b9e44a1d894ad0687d82e4554c64c5f5ce78933386062955bf5e4b569 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant2d84a2342e700d386d1b0c44a342ea0bcc54183b74b3d4b2456425129d70986a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BaselineV1Source/Variant2d84a2342e700d386d1b0c44a342ea0bcc54183b74b3d4b2456425129d70986a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
