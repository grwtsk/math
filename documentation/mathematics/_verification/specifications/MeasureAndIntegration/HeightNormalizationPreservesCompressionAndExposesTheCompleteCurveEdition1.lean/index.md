# Verification target: Height Normalization Preserves Compression And Exposes The Complete Curve Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2428bb922b7d667423a8f46c01e7069bd5c387d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeightNormalizedCompression/Variant34a2aeea870ad306c937bd589e533fecbe0cd3214df73721adde2458cf0e2f5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HeightNormalizationPreservesCompressionAndExposesTheCompleteCurveEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HeightNormalizationPreservesCompressionAndExposesTheCompleteCurveEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2428bb922b7d667423a8f46c01e7069bd5c387d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeightNormalizedCompression/Variant34a2aeea870ad306c937bd589e533fecbe0cd3214df73721adde2458cf0e2f5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeightNormalizedCompression/Variant34a2aeea870ad306c937bd589e533fecbe0cd3214df73721adde2458cf0e2f5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.RealSuperlevelCompression` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.NativeSuperlevelConsumer` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitProfile](../../../../MeasureAndIntegration/HeightNormalizationPreservesCompressionAndExposesTheCompleteCurveEdition1.lean/declarations/unitprofile.md) | 33 | `declaration-track:fe85382ab66096d56af7cffc8590f31c5454a978833d911d57d79a6e5bc4956a` |
| 2 | `theorem` | [load_height_identity](../../../../MeasureAndIntegration/HeightNormalizationPreservesCompressionAndExposesTheCompleteCurveEdition1.lean/declarations/load-height-identity.md) | 36 | `result-track:c8939f9bd48b317238eacc36a4c87f384707d0a271a7c3e8f74b76506525ab11` |
| 3 | `theorem` | [moment_height_identity](../../../../MeasureAndIntegration/HeightNormalizationPreservesCompressionAndExposesTheCompleteCurveEdition1.lean/declarations/moment-height-identity.md) | 45 | `result-track:4b1b07e4f1259cd4b1c62643176a5f3f265677787bb4a26540d7d0ee254133a9` |
| 4 | `theorem` | [compression_height_invariant](../../../../MeasureAndIntegration/HeightNormalizationPreservesCompressionAndExposesTheCompleteCurveEdition1.lean/declarations/compression-height-invariant.md) | 56 | `result-track:12fb3e8c610ae13d0f52a92b8b889b7e459c1cd3537c011bdad03e31845db505` |
| 5 | `theorem` | [positive_panel_complete_curve](../../../../MeasureAndIntegration/HeightNormalizationPreservesCompressionAndExposesTheCompleteCurveEdition1.lean/declarations/positive-panel-complete-curve.md) | 82 | `result-track:71059e0918441d7fa90b329e9700f21dc69cb774b44fc693a5a2d77fe40b5aa1` |
| 6 | `theorem` | [actual_prime_panel_complete_curve](../../../../MeasureAndIntegration/HeightNormalizationPreservesCompressionAndExposesTheCompleteCurveEdition1.lean/declarations/actual-prime-panel-complete-curve.md) | 108 | `result-track:3492ead1ac80a36bcdb2d5b6cfcf9ad836d14a961517b1c678d35e578c562756` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad0c8b6a677c59c7524d0b40539b62b0e413854f2b0bd66d372e9f948bb65413 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeightNormalizedCompression/Variant34a2aeea870ad306c937bd589e533fecbe0cd3214df73721adde2458cf0e2f5e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HeightNormalizedCompression/Variant34a2aeea870ad306c937bd589e533fecbe0cd3214df73721adde2458cf0e2f5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
