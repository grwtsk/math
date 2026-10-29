# Verification target: Snake Lemma

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "832ed57c3f559ff7c94a27c29a0d9e841b9ba9a1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `832ed57c3f559ff7c94a27c29a0d9e841b9ba9a1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SnakeLemma/Variant02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [SnakeLemma.δ_aux](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma-aux.md) | 61 | `result-track:92e4a6d9f87142907db5968517e622c676b1f4fbb2e9f5f7ce70aad534a15291` |
| 2 | `lemma` | [SnakeLemma.eq_of_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma-eq-of-eq.md) | 69 | `result-track:e31aed7a31966fc463699e6766aee528df13ecb60b1d2bf34a06b273fa0e5397` |
| 3 | `def` | [SnakeLemma.δ](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma.md) | 107 | `declaration-track:69250974979a0dcdad8246f6603e41a93f41db76037088b35365ff2bb07a0ef8` |
| 4 | `lemma` | [SnakeLemma.δ_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma-eq-source-edition-2.md) | 120 | `result-track:9b3df2fbabb1311b12f48f636d265e25684807af79a8a9810ea5cd9a54996c59` |
| 5 | `lemma` | [SnakeLemma.exact_δ_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma-exact-right-source-edition-2.md) | 147 | `result-track:468e709009cd18e9a98d64a7250726f15c466791c9c459be8b2ba475641b3289` |
| 6 | `lemma` | [SnakeLemma.exact_δ_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma-exact-left.md) | 186 | `result-track:42e9fd4656655efea8ff8f5d423d6fb94281fc0868ce2a28645a4eda2f96db5b` |
| 7 | `def` | [SnakeLemma.δ'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma-source-edition-2.md) | 225 | `declaration-track:9ef53bb25ed525a2c65cfe242dd41f02ea23406890972fd232e2fc18a999b247` |
| 8 | `lemma` | [SnakeLemma.δ'_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma-eq.md) | 228 | `result-track:0a9e270992ab0acc9b7755068514d6f59d5cd33afa262f9447bd9dfa7ef197ce` |
| 9 | `lemma` | [SnakeLemma.exact_δ'_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma-exact-right.md) | 255 | `result-track:0b93f0830908ce6e1eb9364b744e3bfab467686d523d544ac0690cbeb37256aa` |
| 10 | `lemma` | [SnakeLemma.exact_δ'_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SnakeLemma.lean/declarations/snakelemma-exact-left-source-edition-2.md) | 282 | `result-track:e8dab8e9a2d666e49cb7d312bc4cfe8e7ecb8ad0673da6809805ad17236b0206` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f14b94ce29a30293e5f6046e81445739c6721cb73101cba4400537c23720a68f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SnakeLemma/Variant02590432d0efa2aca657c8b8b4edb8baec6ea0caa26c941b816f7f75744b0076.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
