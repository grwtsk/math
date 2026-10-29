# Verification target: Token Graph Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a13b68f2f2c77f99abe0c677e2e21ffe195e83b9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcd7f3c27fa7bd255181138408359c314d08c5b4ce79cbb3079beeaa6cb07bbca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/TokenGraphNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/TokenGraphNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a13b68f2f2c77f99abe0c677e2e21ffe195e83b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcd7f3c27fa7bd255181138408359c314d08c5b4ce79cbb3079beeaa6cb07bbca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcd7f3c27fa7bd255181138408359c314d08c5b4ce79cbb3079beeaa6cb07bbca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.RelationAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.SemanticTokenization.Segmentation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TokenNode](../../../../Combinatorics/TokenGraphNamespaced.lean/declarations/tokennode.md) | 18 | `declaration-track:3460fa7dfa1afde2db8a426d2d6dd1d5672f99db0c974a650e3a8eaf4cc2b432` |
| 2 | `structure` | [SemanticEdge](../../../../Combinatorics/TokenGraphNamespaced.lean/declarations/semanticedge.md) | 29 | `declaration-track:09a49a5e2d185299f2d00a59cf3ca1b261067b21761100cd025ea8fff1c6fb24` |
| 3 | `structure` | [TokenGraph](../../../../Combinatorics/TokenGraphNamespaced.lean/declarations/tokengraph.md) | 42 | `declaration-track:037939b18d4817e4469c4898e2d47c875800e8082a886112da210ddda431fc64` |
| 4 | `inductive` | [SemanticPath](../../../../Combinatorics/TokenGraphNamespaced.lean/declarations/semanticpath.md) | 62 | `declaration-track:8133bdbe55eca5e7da3a2edecb6bcbd4d3cc5fb23942fd11ecdde7cfe22f58ba` |
| 5 | `structure` | [TokenConnectivityCertificate](../../../../Combinatorics/TokenGraphNamespaced.lean/declarations/tokenconnectivitycertificate.md) | 76 | `declaration-track:788aaba11439f8b5c43f80360b2708a69f5cb57feb2cfbc6e1b1cffb8ff0517c` |
| 6 | `theorem` | [tokenGraph_edge_evidence](../../../../Combinatorics/TokenGraphNamespaced.lean/declarations/tokengraph-edge-evidence.md) | 90 | `result-track:834553522c32a835920a0b6fba9401d95aa948d2b19692280003b97f3e828bd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6657fb6d870cffb0538ec1ec5dd78cd82a170697b3c5721d34405bf5cf4aa261 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcd7f3c27fa7bd255181138408359c314d08c5b4ce79cbb3079beeaa6cb07bbca.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcd7f3c27fa7bd255181138408359c314d08c5b4ce79cbb3079beeaa6cb07bbca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
