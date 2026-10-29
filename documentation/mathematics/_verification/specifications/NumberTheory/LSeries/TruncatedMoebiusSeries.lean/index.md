# Verification target: GRWTSK.NumberTheory.LSeries.TruncatedMoebiusSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7ce5b84aea2f67ba9768cbef8f35140fd0d4d93",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LSeries/TruncatedMoebiusSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/LSeries/TruncatedMoebiusSeries.lean/index.md) · [Full source](../../../../../NumberTheory/LSeries/TruncatedMoebiusSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7ce5b84aea2f67ba9768cbef8f35140fd0d4d93`.

Source path: `GRWTSK/NumberTheory/LSeries/TruncatedMoebiusSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LSeries/TruncatedMoebiusSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.ComplexMoebiusCast`](../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Linearity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedMoebiusSeries](../../../../../NumberTheory/LSeries/TruncatedMoebiusSeries.lean/declarations/closedmoebiusseries--b453bbcab70bfa1489edb892.md) | 20 | `declaration-track:b453bbcab70bfa1489edb89232e88a9eae67232887fb384b0beadfebefefe3d8` |
| 2 | `def` | [highMoebiusSeries](../../../../../NumberTheory/LSeries/TruncatedMoebiusSeries.lean/declarations/highmoebiusseries--ad61ebe44b58f63a41f59bc1.md) | 24 | `declaration-track:ad61ebe44b58f63a41f59bc1f0139935a9b3a9984c23d168e0b21e37524331f4` |
| 3 | `theorem` | [closed_moebius_summable](../../../../../NumberTheory/LSeries/TruncatedMoebiusSeries.lean/declarations/closed-moebius-summable--af19513994fb36907e7cea54.md) | 28 | `result-track:af19513994fb36907e7cea5488dfb2a666753bddecc98afb972395674989a7bb` |
| 4 | `theorem` | [high_moebius_series_initial](../../../../../NumberTheory/LSeries/TruncatedMoebiusSeries.lean/declarations/high-moebius-series-initial--0adf0241c31a065be54e96c8.md) | 39 | `result-track:0adf0241c31a065be54e96c8c0c15643001b4db42bd425e064eb543d4565bcbf` |
| 5 | `theorem` | [high_moebius_series_reciprocal](../../../../../NumberTheory/LSeries/TruncatedMoebiusSeries.lean/declarations/high-moebius-series-reciprocal--c6921cec7744a5c201abae6f.md) | 78 | `result-track:c6921cec7744a5c201abae6f3bcd083f278242603e47cffccb0204b7cd8f1d6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e495b5ad0822acfaee2a3da2ac67d081f45b132508379403b1fe49807d7dd4af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/LSeries/TruncatedMoebiusSeries.lean","GRWTSK/_verification/specifications/NumberTheory/LSeries/TruncatedMoebiusSeries.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
