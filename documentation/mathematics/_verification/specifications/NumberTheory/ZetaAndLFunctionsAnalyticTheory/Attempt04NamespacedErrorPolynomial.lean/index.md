# Verification target: Attempt04 Namespaced Error Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "686cbfe4b89dd3a81af34c409524d795e1ef2ec6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant1aba742e408e5502f1b01b7d6db5b1e364a3daf80f79b9bff9c6530c3e228bfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `686cbfe4b89dd3a81af34c409524d795e1ef2ec6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant1aba742e408e5502f1b01b7d6db5b1e364a3daf80f79b9bff9c6530c3e228bfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant1aba742e408e5502f1b01b7d6db5b1e364a3daf80f79b9bff9c6530c3e228bfd.lean.json)

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
| 1 | `def` | [errorPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/errorpolynomial.md) | 24 | `declaration-track:9ba5073f31af347b9ed94c38e618da27bf3f0035e788856361f236b101cb3d41` |
| 2 | `def` | [normalizationRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/normalizationratio.md) | 28 | `declaration-track:6b111c0fb8086cecfaeb1e116c8e37a8079e7133057e72a5d344a049f50393bf` |
| 3 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/positiveendpoint.md) | 31 | `declaration-track:2b1403f7189cfb22aebb6c08d004652cb13516eb718821c57e33aa5f5c508c33` |
| 4 | `def` | [reflectedEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/reflectedendpoint.md) | 35 | `declaration-track:cdd7cdbfe2ebc0c916161e461d372519a5d6afb3e9090aa9586b94aac774d848` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/errorpolynomial-nonneg.md) | 39 | `result-track:f88f89c6cde2a97a990712c5914eb73151d03b6479c44a9e900d85cb3a5530c6` |
| 6 | `theorem` | [normalization_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/normalization-bounds.md) | 42 | `result-track:bd43c98730a994e6485f2402e12f430ef5c83d368b261c19087eac7750426276` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/normalizationratio-bounds.md) | 66 | `result-track:056c873332daa0a5f5eea7470fa74714baa37df707b8b8a476697ee9c6c0ab4e` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/normalizationratio-deficit.md) | 76 | `result-track:847fd29e20da3b958353141bafbbcdd8d2a5be7e7598d47f54fe2c4806ec0f17` |
| 9 | `theorem` | [source_ratio_exact](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/source-ratio-exact.md) | 107 | `result-track:b1c6413f9742b4a407831a611a4af3e89c0622731e1b6ac0c7afc001c9edad40` |
| 10 | `theorem` | [inverse_power_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/inverse-power-bound.md) | 128 | `result-track:ed15e7c375f21d7b02d35d299336b4a767d8d2043a3d29ca90a3ee6d3076f3a6` |
| 11 | `theorem` | [positiveEndpoint_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/positiveendpoint-error.md) | 144 | `result-track:5ed789f6c5a0ad8ffa78ad1b4aa129b450fba04e3ed9b3a3facf8efc853aeb8a` |
| 12 | `theorem` | [reflectedEndpoint_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/reflectedendpoint-bound.md) | 176 | `result-track:909191921ebc7173db62ed7c57e2f804c82f7d57f2bf4626e1489277d7bf551d` |
| 13 | `theorem` | [negative_endpoint_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04NamespacedErrorPolynomial.lean/declarations/negative-endpoint-rate.md) | 215 | `result-track:6ddc8086c77e3258c7b45e8543b887b373e207035d0f399e881780ae55631cf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dbd1334868daf3c36d3428d4479b935a6802e5ae5c849b69a097838d796464f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant1aba742e408e5502f1b01b7d6db5b1e364a3daf80f79b9bff9c6530c3e228bfd.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant1aba742e408e5502f1b01b7d6db5b1e364a3daf80f79b9bff9c6530c3e228bfd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
