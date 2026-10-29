# Verification target: Source Actual Zero Moving Tail Native05 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32348986aaea8082755020181a0a70dcfff4f547",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative05/Variantd5c359ebc22cdbac95b729e997094dd7ab4cee36aafca84e54dd4d199a9545a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32348986aaea8082755020181a0a70dcfff4f547`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative05/Variantd5c359ebc22cdbac95b729e997094dd7ab4cee36aafca84e54dd4d199a9545a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative05/Variantd5c359ebc22cdbac95b729e997094dd7ab4cee36aafca84e54dd4d199a9545a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualZeroTailBudget` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualZeroArithmeticDictionary` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualZeroMovingRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/declarations/actualzeromovingradius.md) | 29 | `declaration-track:ea51cc96c6dfc160c845c20796d04c9a688216096099c17a02f99e293b5329f1` |
| 2 | `def` | [actualZeroMovingEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/declarations/actualzeromovingenvelope.md) | 32 | `declaration-track:a08640cca1de114f9540fe77e9589a9f86357cb24359e7ee97994ec3125d960e` |
| 3 | `theorem` | [actualZeroMovingHeight_ge_four](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/declarations/actualzeromovingheight-ge-four.md) | 37 | `result-track:753539ed394ac6e8620feb3741b0b09ee68bfddc611bb18e2356ad63937106d7` |
| 4 | `theorem` | [actualZeroMovingTail_norm_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/declarations/actualzeromovingtail-norm-bound.md) | 49 | `result-track:ff5f0ac0a5f8aa361566e68ee250e4055083e36ad9269c8bcc5fa8a43558f4c1` |
| 5 | `theorem` | [envelope_le_inverse_eighth](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/declarations/envelope-le-inverse-eighth.md) | 74 | `result-track:da07799634b14f68267e5ac20417e7a1a5dca87f7757b59aac6d21a061d41dcb` |
| 6 | `theorem` | [actualZeroMovingTail_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/declarations/actualzeromovingtail-tendsto-zero.md) | 98 | `result-track:252683b9b2853f69d2666edb456abb686533428904b760f7ec40918c75e91485` |
| 7 | `theorem` | [actualFullZeroContribution_sub_movingHead](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/declarations/actualfullzerocontribution-sub-movinghead.md) | 111 | `result-track:e72df87216c4f5a79bed3080a0d752a7040a5533da0e95ed4e71c2d8c3411468` |
| 8 | `theorem` | [actualSourceQuadraticValue_sub_movingHead](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative05Namespaced.lean/declarations/actualsourcequadraticvalue-sub-movinghead.md) | 118 | `result-track:99ae62e2b2b4967dd5fe3ce43f0bf63894c70f6cea76c8580170955c1a2c5f2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abdcd63b7eeeacb9e10ac07ab5292b1e15377ee08264cb163da13ef14bc92c77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative05/Variantd5c359ebc22cdbac95b729e997094dd7ab4cee36aafca84e54dd4d199a9545a7.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative05/Variantd5c359ebc22cdbac95b729e997094dd7ab4cee36aafca84e54dd4d199a9545a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
