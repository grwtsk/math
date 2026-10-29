# Verification target: Attempt02 Namespaced P

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57d7edb748f06c32a906233dabbc56743b062642",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantd90b6665c482abb5148b130d5c9c0a8854c1f620d6085f5b0591e6a30a024304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02NamespacedP.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02NamespacedP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57d7edb748f06c32a906233dabbc56743b062642`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantd90b6665c482abb5148b130d5c9c0a8854c1f620d6085f5b0591e6a30a024304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantd90b6665c482abb5148b130d5c9c0a8854c1f620d6085f5b0591e6a30a024304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02NamespacedP.lean/declarations/p.md) | 23 | `declaration-track:7fb3003e5ec974f8e353e9288f4e7c678ee96cadcd33a57f9fc00d163831a799` |
| 2 | `def` | [normalizedSquare](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02NamespacedP.lean/declarations/normalizedsquare.md) | 25 | `declaration-track:7ed2c2a46cd409f8d5b58615065fdead667e38d74cf9e512632493c90dba0847` |
| 3 | `theorem` | [p_coe](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02NamespacedP.lean/declarations/p-coe.md) | 28 | `result-track:6cbe337a14c9222c95a73c3ca26fc85f4f512c99ba385146b07eb5da1dc4961d` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02NamespacedP.lean/declarations/actual-scaled-square-real.md) | 31 | `result-track:4621f8241bade412124774d9b6c247e06c29fe85d3434bc0aed45a73e6e32f65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbcc40cfa9b11e1a4d6a91ce5f971ea26bb0fdaf1479a09cc2a9280339c64422 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantd90b6665c482abb5148b130d5c9c0a8854c1f620d6085f5b0591e6a30a024304.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantd90b6665c482abb5148b130d5c9c0a8854c1f620d6085f5b0591e6a30a024304.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
