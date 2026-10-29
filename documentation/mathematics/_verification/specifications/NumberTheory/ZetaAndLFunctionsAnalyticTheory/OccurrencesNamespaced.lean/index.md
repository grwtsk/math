# Verification target: Occurrences Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f75e77ee65405a0febecd2591d2db15c2efe184",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/OccurrencesNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/OccurrencesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f75e77ee65405a0febecd2591d2db15c2efe184`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeilSource.Import` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePointEquiv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/OccurrencesNamespaced.lean/declarations/sourcepointequiv.md) | 30 | `declaration-track:715703810a93739c5890c56009f2348619a14683d108c6e8e4471fc98e850d9b` |
| 2 | `theorem` | [sourcePointEquiv_val](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/OccurrencesNamespaced.lean/declarations/sourcepointequiv-val.md) | 33 | `result-track:76ec5fe50ec977271225038c3fddbf68691b294ac055025205f7be0c23fbfa15` |
| 3 | `theorem` | [sourcePointEquiv_mult](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/OccurrencesNamespaced.lean/declarations/sourcepointequiv-mult.md) | 36 | `result-track:9473ea3ac1380acc606906e114fcf554a54965d9978cce665bb71b95eb51b126` |
| 4 | `theorem` | [occurrence_tsum_eq_weighted](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/OccurrencesNamespaced.lean/declarations/occurrence-tsum-eq-weighted.md) | 40 | `result-track:7843bf1c7bccef42d4bccb2931bc27cf90b557927429603efd5e07c0a67b9d85` |
| 5 | `theorem` | [weighted_source_sum_eq_occurrences](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/OccurrencesNamespaced.lean/declarations/weighted-source-sum-eq-occurrences.md) | 51 | `result-track:371199cde561da04de3a48f339081c49a7be944b4b52af067e85c9324924a6b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41bd48ea3b786091fb6e3537c9829f5610aac1da51d244221e4dfee739ff41d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
