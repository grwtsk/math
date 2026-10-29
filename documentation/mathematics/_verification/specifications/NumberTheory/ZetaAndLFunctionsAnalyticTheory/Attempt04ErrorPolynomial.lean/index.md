# Verification target: Attempt04 Error Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0d61f6813ef85adfb0d05025444f93e35c426ef",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant8f0c9ad2a73325cd3f7e4bbbc689460a0987c3b9bcef60781e99dfb597e2a9c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0d61f6813ef85adfb0d05025444f93e35c426ef`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant8f0c9ad2a73325cd3f7e4bbbc689460a0987c3b9bcef60781e99dfb597e2a9c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant8f0c9ad2a73325cd3f7e4bbbc689460a0987c3b9bcef60781e99dfb597e2a9c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryAsymptotic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/errorpolynomial.md) | 16 | `declaration-track:9189f9494427c13f94645612784fd4924bd0b19580e5806a3ad724df287950b1` |
| 2 | `def` | [normalizationRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/normalizationratio.md) | 20 | `declaration-track:7c952d529552af7e74f1d022288ff574c44d94d818f5f1e7bc4cc2d63c2532d7` |
| 3 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/positiveendpoint.md) | 23 | `declaration-track:d28861df4c94d0616cfb550b2248cf6528175b819ee16f2715e64f58c5f53863` |
| 4 | `def` | [reflectedEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/reflectedendpoint.md) | 27 | `declaration-track:5c8d6cfe2a900d410811f4927440968fb8f92330b3b65d72d91cfd25b0d92f46` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/errorpolynomial-nonneg.md) | 31 | `result-track:35732cd935fa29862050fd67d57f798ee413098ba36d09bb296eb771b812f923` |
| 6 | `theorem` | [normalization_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/normalization-bounds.md) | 34 | `result-track:d8dd1e5aa75f5da8e043543df35e9b9c75ff4c317a279861cb00135b228d73d3` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/normalizationratio-bounds.md) | 58 | `result-track:268a08933972668f9b88b3bec21ec5be9f759b6ea0dda44a98dad57e0581c791` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/normalizationratio-deficit.md) | 68 | `result-track:71049e244043e04e140a4536e2f0dd90f0e9a36ddbaea7615f9c4e4cb87f5b5a` |
| 9 | `theorem` | [source_ratio_exact](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/source-ratio-exact.md) | 99 | `result-track:458f40eb6f473a0590055a3bc34487b3a5d1d921a96ce19d7e1855fb07bc9ddd` |
| 10 | `theorem` | [inverse_power_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/inverse-power-bound.md) | 120 | `result-track:1410bb02b3ff7bca3177704ceb5cb3579fb62b9adf5aedfdab560d5adf0df183` |
| 11 | `theorem` | [positiveEndpoint_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/positiveendpoint-error.md) | 136 | `result-track:8915f754915f363d348fa9a72eaa8b9f76bc003a13fee552afa1d2c4639dbd80` |
| 12 | `theorem` | [reflectedEndpoint_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/reflectedendpoint-bound.md) | 168 | `result-track:90c8262c9acdf485fc52f0bb251cecc5c5dcead9a3a59501e8248a28fe0a1217` |
| 13 | `theorem` | [negative_endpoint_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt04ErrorPolynomial.lean/declarations/negative-endpoint-rate.md) | 207 | `result-track:85d3a4d0ba9fb9e2624d1362809f6dfe4b6aef208bafd87528e2beecae64fa7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00a8ba7c60ce3cb46f7a4acb1e26698d9ea2ee8f0b9fa51a55cbd35a887776ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant8f0c9ad2a73325cd3f7e4bbbc689460a0987c3b9bcef60781e99dfb597e2a9c2.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant8f0c9ad2a73325cd3f7e4bbbc689460a0987c3b9bcef60781e99dfb597e2a9c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
