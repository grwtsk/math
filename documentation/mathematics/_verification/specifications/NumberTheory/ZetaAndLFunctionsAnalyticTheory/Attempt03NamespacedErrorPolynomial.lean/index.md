# Verification target: Attempt03 Namespaced Error Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "323b4dbf1875c81d0d419b6d4ec82f10e8c44767",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9a9c36a092c46e2a68f676af23af892a1ecf07a201817b000a724cfba9140870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `323b4dbf1875c81d0d419b6d4ec82f10e8c44767`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9a9c36a092c46e2a68f676af23af892a1ecf07a201817b000a724cfba9140870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9a9c36a092c46e2a68f676af23af892a1ecf07a201817b000a724cfba9140870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryAsymptotic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/errorpolynomial.md) | 24 | `declaration-track:311af3bdf89385e9afd75c3c8b5cba7c4faae5a0357d5845092170a9d865ab7d` |
| 2 | `def` | [normalizationRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/normalizationratio.md) | 28 | `declaration-track:f65d5be37268cc54a5cbc5e90a63f5cf92fe241d9d357e3b426c42d7fc5a26c6` |
| 3 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/positiveendpoint.md) | 31 | `declaration-track:75e83360a2b4bf624807b944ec546558456fd06e4b00d42e2443a0e6d1736f33` |
| 4 | `def` | [reflectedEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/reflectedendpoint.md) | 35 | `declaration-track:36739fcce62813940ae86081478e0f3cd350993c5b7d22df35d721e64b87b3a0` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/errorpolynomial-nonneg.md) | 39 | `result-track:e3a4d99a99dde945ac512c7b689161c88a532b5285031797f8b67023eb1bae1c` |
| 6 | `theorem` | [normalization_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/normalization-bounds.md) | 42 | `result-track:6bf31dfbeda717b4fd19ff887e477bb4d5a39d409a47692a5842012534a57232` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/normalizationratio-bounds.md) | 66 | `result-track:9424f561c5ad99461b8ae6faffb1a635155cbf99c5c12849dadaa1494e7bb2af` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/normalizationratio-deficit.md) | 76 | `result-track:6ecf0827ce98d2994d041030279a6f4be903132ea717d3e1856600344b0d78af` |
| 9 | `theorem` | [source_ratio_exact](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/source-ratio-exact.md) | 107 | `result-track:486a5018f056767a5c8978b170f9878a6367b85e92354cabb3526908e5fa2321` |
| 10 | `theorem` | [inverse_power_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/inverse-power-bound.md) | 124 | `result-track:2ccbf99ba7c0d86cfc5f3a12492e3be3d68b6b0dab9bfdad026850173329dee4` |
| 11 | `theorem` | [positiveEndpoint_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/positiveendpoint-error.md) | 140 | `result-track:956757174044c4b67784e90ce954df9fbbb2f87c00030bed76aea4724119874e` |
| 12 | `theorem` | [reflectedEndpoint_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/reflectedendpoint-bound.md) | 166 | `result-track:852e2143e82f0dc7b183e571b5a48b7890024cc46b6eefda215c33d6b336586b` |
| 13 | `theorem` | [negative_endpoint_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt03NamespacedErrorPolynomial.lean/declarations/negative-endpoint-rate.md) | 196 | `result-track:96959e09cb0157507b748e4cdd80a04e3a284a1eb6357efd50852b556f9babd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4242710b18073112b76c22f068b56f7decb1e839ec68d0e6a8de88bdf283439c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9a9c36a092c46e2a68f676af23af892a1ecf07a201817b000a724cfba9140870.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9a9c36a092c46e2a68f676af23af892a1ecf07a201817b000a724cfba9140870.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
