# Verification target: Source Scheduling Cumulative Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bc309776998e1cc259c1e8b4313ffda6e71b3cb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variant96fbfc325a25d598ae7a3144c7327648df63cc1dd045fb64fe5d4a6513c53fb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bc309776998e1cc259c1e8b4313ffda6e71b3cb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variant96fbfc325a25d598ae7a3144c7327648df63cc1dd045fb64fe5d4a6513c53fb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variant96fbfc325a25d598ae7a3144c7327648df63cc1dd045fb64fe5d4a6513c53fb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceSchedulingTransport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendFin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/extendfin.md) | 32 | `declaration-track:76690b17089a4bf78807f68030ebc7ae06771c1adec5b6d2e1889d07532502f2` |
| 2 | `theorem` | [extendFin_val](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/extendfin-val.md) | 35 | `result-track:13e5028638620ed57699e6f4c2a462a00d0dfe8153a292a2381a19f1d3b9dcc7` |
| 3 | `theorem` | [extendFin_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/extendfin-sum.md) | 39 | `result-track:4475e499437f8c188dac67673c7b42eb4defcc7a9c93c9921be7408e690d3459` |
| 4 | `def` | [cumulativeCost](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/cumulativecost.md) | 45 | `declaration-track:929b7748c520056d090367b18ecbde7cb7b8ff09adc575bfade95e37289b2eb4` |
| 5 | `theorem` | [cumulativeCost_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/cumulativecost-nonneg.md) | 48 | `result-track:2d469122f789843ab59ae27d1fc2ceb562c385f8f9b6d973934f0ef12b8c41e7` |
| 6 | `theorem` | [cumulative_abel_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/cumulative-abel-identity.md) | 56 | `result-track:040db3ec2d210cc306e3a86f8e9299f648857407f20fd3571e710885fd2c5930` |
| 7 | `theorem` | [cumulative_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/cumulative-abs-le.md) | 65 | `result-track:f9ea7f774c4361d61a5bf4ca55164a6dfe4569603bfd1a6506f628f5946beac5` |
| 8 | `theorem` | [fin_cumulative_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/fin-cumulative-abs-le.md) | 87 | `result-track:84253c97fce831c8fe6d591ecac5896cf6f8e079a396f65281507ab9af6e88d4` |
| 9 | `theorem` | [first_transport_cumulative_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/first-transport-cumulative-abs-le.md) | 101 | `result-track:f8d2919cef92059ab6c62a6d698d976b4ba098dfa295e1a9b77ad98561be5c32` |
| 10 | `theorem` | [two_atom_cumulative_cost](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/two-atom-cumulative-cost.md) | 144 | `result-track:d8bbd6bc0829aaa6605f1f6e2ba47af358360d49d6c3e994bd2b79e7318db280` |
| 11 | `theorem` | [two_atom_cumulative_readout](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceSchedulingCumulativeNamespacedEdition1.lean/declarations/two-atom-cumulative-readout.md) | 149 | `result-track:bce14807d516fd6e2f7ef3da91c2d23947335335171e51e475294f8b7b713ffa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb632d190abe429c9a221dbf47de2f2537c190d824e0b380de6ea3138067c152 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variant96fbfc325a25d598ae7a3144c7327648df63cc1dd045fb64fe5d4a6513c53fb9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingCumulative/Variant96fbfc325a25d598ae7a3144c7327648df63cc1dd045fb64fe5d4a6513c53fb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
