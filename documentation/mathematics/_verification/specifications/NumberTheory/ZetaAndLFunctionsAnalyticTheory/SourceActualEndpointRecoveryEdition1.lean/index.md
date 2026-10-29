# Verification target: Source Actual Endpoint Recovery Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "797f0ede479f30a08888ba79e7dc3bbbe89af2d4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant1e21cd61efaf8f7b86d6f10012083c40a771efa4bb8072c26fa4a3d030fb1f1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `797f0ede479f30a08888ba79e7dc3bbbe89af2d4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant1e21cd61efaf8f7b86d6f10012083c40a771efa4bb8072c26fa4a3d030fb1f1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant1e21cd61efaf8f7b86d6f10012083c40a771efa4bb8072c26fa4a3d030fb1f1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualBumpTransform` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualBumpVerticalBudget` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointPlus](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/declarations/endpointplus.md) | 15 | `declaration-track:4ccf39c1f7882ed419ccb264c2f77d27da97e170e0f6bd451245fd717aef5481` |
| 2 | `def` | [endpointMinus](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/declarations/endpointminus.md) | 19 | `declaration-track:e75dd33176a0a32490c7f05f1f29dcf1bd8c75ccf5410a16f265b196a9ee0682` |
| 3 | `def` | [endpointCommon](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/declarations/endpointcommon.md) | 23 | `declaration-track:f94e62b9865bc77e0f9c835b0ebfe4ecdb87985222bd74636e8522db00f1977d` |
| 4 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/declarations/positiveendpoint.md) | 27 | `declaration-track:81d14d5e5920bd62adef401e19ba1ea8df0267406f18e495d8b0ef46ce62fb15` |
| 5 | `def` | [negativeEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/declarations/negativeendpoint.md) | 30 | `declaration-track:c28b5eb165f2cc1822b6e1e6651232abae1474385786a7491683bd6d03be739a` |
| 6 | `def` | [invariantMixed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/declarations/invariantmixed.md) | 33 | `declaration-track:e0e2f8b6ea3df066f61e40007c84b096d3f161c2fd253066d3606e0b09e86ff0` |
| 7 | `theorem` | [endpoint_product](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/declarations/endpoint-product.md) | 37 | `result-track:c36456cd930a2c68852c1138b0f05b4a540591d4c9ee6b648d277cb8bafbc40d` |
| 8 | `theorem` | [actual_source_endpoint_recovery](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryEdition1.lean/declarations/actual-source-endpoint-recovery.md) | 47 | `result-track:74c14611f786dfaf898d09ffbeafa453c17dfe1262ed587da1a6ba49380f846e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bde7c123ccfd581bc470a617b0a9e3ea9e8fdcbbc17201b3892ef6ed1a796198 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant1e21cd61efaf8f7b86d6f10012083c40a771efa4bb8072c26fa4a3d030fb1f1d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant1e21cd61efaf8f7b86d6f10012083c40a771efa4bb8072c26fa4a3d030fb1f1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
