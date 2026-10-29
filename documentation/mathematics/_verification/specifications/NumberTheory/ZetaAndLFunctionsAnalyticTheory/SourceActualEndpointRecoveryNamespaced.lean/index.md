# Verification target: Source Actual Endpoint Recovery Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae42afff3903924177a214862faa605000d032d4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55SourceActualEndpointRecovery/Variant0fba410ca9f0f9bee24f909e0742f12ba6872a11d86f38b9a42909d52a61b09f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae42afff3903924177a214862faa605000d032d4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55SourceActualEndpointRecovery/Variant0fba410ca9f0f9bee24f909e0742f12ba6872a11d86f38b9a42909d52a61b09f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55SourceActualEndpointRecovery/Variant0fba410ca9f0f9bee24f909e0742f12ba6872a11d86f38b9a42909d52a61b09f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualBumpTransform` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualBumpVerticalBudget` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointPlus](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/declarations/endpointplus.md) | 23 | `declaration-track:f8888852ea2db527d5e000fb0c86b1bd5fd857720e90f9403b5fa5d3cdeb186a` |
| 2 | `def` | [endpointMinus](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/declarations/endpointminus.md) | 27 | `declaration-track:7283a51308390cfc39ec5bb5f0b929d866644ecded94f06f08f0bf45e85317e7` |
| 3 | `def` | [endpointCommon](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/declarations/endpointcommon.md) | 31 | `declaration-track:33212a394e8d48f969d4b2666308eb6f4692d5ac9b857faeae316b83798afc87` |
| 4 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/declarations/positiveendpoint.md) | 35 | `declaration-track:a48839d6e96b22911aaa4015083271ec7ea8d95ce113f49630de44eab9c4c72c` |
| 5 | `def` | [negativeEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/declarations/negativeendpoint.md) | 38 | `declaration-track:bbe3922faa19a73b2bd44df384671ff2c652ec41a67919423bb4eb2bc16f3c9c` |
| 6 | `def` | [invariantMixed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/declarations/invariantmixed.md) | 41 | `declaration-track:9070a720382d30e28c15f8da412d44274662af49aa0a2b4a1dad304d7fbd3ba6` |
| 7 | `theorem` | [endpoint_product](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/declarations/endpoint-product.md) | 45 | `result-track:853ad742396851865bdb290051a6f402cd7782218caa36f9db71e3ac75201e82` |
| 8 | `theorem` | [actual_source_endpoint_recovery](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespaced.lean/declarations/actual-source-endpoint-recovery.md) | 55 | `result-track:ef5f579fff3f4f93033d4ccf8a1668914aa554d247330fb792d86cba703787e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cae8d57503c7c3512f925bf40e003f5723ab7d79534c4f5ead805d16819449f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55SourceActualEndpointRecovery/Variant0fba410ca9f0f9bee24f909e0742f12ba6872a11d86f38b9a42909d52a61b09f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55SourceActualEndpointRecovery/Variant0fba410ca9f0f9bee24f909e0742f12ba6872a11d86f38b9a42909d52a61b09f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
