# Verification target: Every Real Native Cell Preserves Its Two Endpoint Upper Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04217bf07f5b768ad04c28a86429db1c6add4ef5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCellBound/Variant51712cab26836dff15e5005f4736f29d18bd10b19a26c7e9251d6a13ce2aec12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryRealNativeCellPreservesItsTwoEndpointUpperBounds.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryRealNativeCellPreservesItsTwoEndpointUpperBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04217bf07f5b768ad04c28a86429db1c6add4ef5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCellBound/Variant51712cab26836dff15e5005f4736f29d18bd10b19a26c7e9251d6a13ce2aec12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCellBound/Variant51712cab26836dff15e5005f4736f29d18bd10b19a26c7e9251d6a13ce2aec12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.RecordSummability` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_cell_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryRealNativeCellPreservesItsTwoEndpointUpperBounds.lean/declarations/finite-cell-upper.md) | 25 | `result-track:942fd342eb715cdcf0e3fc6b6b8497298fbbc4ff60f1a94705f1924e6c8a8eb3` |
| 2 | `theorem` | [actual_integer_upper_implies_all_real](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryRealNativeCellPreservesItsTwoEndpointUpperBounds.lean/declarations/actual-integer-upper-implies-all-real.md) | 39 | `result-track:451f81fd2e065ee2fd3a9d29158265955aa156266e819361c71bc1151f310996` |
| 3 | `theorem` | [record_summable_iff_all_real_prefixes_bounded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryRealNativeCellPreservesItsTwoEndpointUpperBounds.lean/declarations/record-summable-iff-all-real-prefixes-bounded.md) | 61 | `result-track:0646689f3d535ae1d09e2a13edb9fe2395dfea38c54ec957ba5a5993474b7273` |
| 4 | `theorem` | [actual_real_prefix_le_total_record_height](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryRealNativeCellPreservesItsTwoEndpointUpperBounds.lean/declarations/actual-real-prefix-le-total-record-height.md) | 73 | `result-track:c45611d52b8c8643d575d209cbaf3e87bf584084b998d51788abb3e84c1f43d0` |
| 5 | `theorem` | [total_height_is_least_real_prefix_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryRealNativeCellPreservesItsTwoEndpointUpperBounds.lean/declarations/total-height-is-least-real-prefix-bound.md) | 83 | `result-track:f1780271c8ac24c45e88d57efffea03ce86d475c7672127d4f05b9b758a7cf39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=201b4e9a7ece570f909a36477ec16813e7540953120d8f51be6e58b64440088f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCellBound/Variant51712cab26836dff15e5005f4736f29d18bd10b19a26c7e9251d6a13ce2aec12.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCellBound/Variant51712cab26836dff15e5005f4736f29d18bd10b19a26c7e9251d6a13ce2aec12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
