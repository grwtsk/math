# Verification target: Source Actual Endpoint Recovery Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6360afefd30717f501de0f8c646167245d06395b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6360afefd30717f501de0f8c646167245d06395b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualBumpTransform` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointPlus](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/declarations/endpointplus.md) | 22 | `declaration-track:d745512ce01c5180bb32ad01b4c86f5fda25ea042fdae6332775a6873415d5b4` |
| 2 | `def` | [endpointMinus](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/declarations/endpointminus.md) | 26 | `declaration-track:2b3a2168c455432f96ce7098dfb0dc731ff9f4603fc51376fb4575ffba23fc74` |
| 3 | `def` | [endpointCommon](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/declarations/endpointcommon.md) | 30 | `declaration-track:4228f55e050f0030202ac07b3fe6700b1917d7a08a8e443041038425e42f473e` |
| 4 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/declarations/positiveendpoint.md) | 34 | `declaration-track:2de8e9391f3f0dde5542ed6891513b24e859dfe6da308fff5f8d5bb239f1d87f` |
| 5 | `def` | [negativeEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/declarations/negativeendpoint.md) | 37 | `declaration-track:4218e36eb33bf8656262cc870e38fe01799d9569e9e7b266e3552e83ff06a999` |
| 6 | `def` | [invariantMixed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/declarations/invariantmixed.md) | 40 | `declaration-track:46a76ee69221f7695df5c84c4c277a4d857049e711e7f5d7bed807dd06a9d419` |
| 7 | `theorem` | [endpoint_product](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/declarations/endpoint-product.md) | 44 | `result-track:787cd2ce682c35bae0ae59c64111178e5e301e4595c92ad7e44ed2c714844a8d` |
| 8 | `theorem` | [actual_source_endpoint_recovery](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEndpointRecoveryNamespacedEdition2.lean/declarations/actual-source-endpoint-recovery.md) | 51 | `result-track:5e348224a63564013a356f8a5c38a2a64b5ed0f00b52808f22a83707da1ac4ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3dd49c408dec3402bc4db517b0996d8a9c6052a027a027fea8e1f818ce7b6ffb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEndpointRecovery/Variant51019553c18ee0db2bbbdfac8e7700f1181778ab4960d225a71964dd35261db8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
