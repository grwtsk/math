# Verification target: GRWTSK.Algebra.QuarticMatchingAdjacency

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b50cffa5272db279b54bcc3b12283dac6522cb6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticMatchingAdjacency.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/index.md) · [Full source](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b50cffa5272db279b54bcc3b12283dac6522cb6`.

Source path: `GRWTSK/Algebra/QuarticMatchingAdjacency.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticMatchingAdjacency.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticMatchingWeight`](../../../../CommutativeAlgebra/QuarticMatchingWeight.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complementaryAdjacency](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/complementaryadjacency.md) | 26 | `declaration-track:af97bb29e91399c64ac8d405f2ec2abf940438449e2a3a6244367f12e7feffc7` |
| 2 | `def` | [first](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/first.md) | 29 | `declaration-track:8738f375a9e73914b0dc75b80323975054b68eac3c26919c80276399fbf3df94` |
| 3 | `def` | [second](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/second.md) | 30 | `declaration-track:f9a441dde83b31aebcd4d721e4434c36617b19759fdd0ad5c64438b4814cd065` |
| 4 | `def` | [third](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/third.md) | 31 | `declaration-track:fa196bdd0a11028f9af27d7af2485ea3acebf883c77045c29846419f04ac49b4` |
| 5 | `theorem` | [adjacency_first](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/adjacency-first.md) | 33 | `result-track:73f0330b71d4f7de3147619716fb641781baae65645cf2cb182aa548bceb256c` |
| 6 | `theorem` | [adjacency_second](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/adjacency-second.md) | 37 | `result-track:f870b57f14bf7e2c58306c1e9753dd0d001ea175f361e9d16791a9f645433881` |
| 7 | `theorem` | [adjacency_third](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/adjacency-third.md) | 41 | `result-track:e8d65ed28372d704abaffd622872563a785eb7fbce3bd5fc9f8c216a8013ffd8` |
| 8 | `theorem` | [eTwo_permutation](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/etwo-permutation.md) | 47 | `result-track:1affad666bdcfa7a0ce27fb92f588f877daf15e268ea74bd7bbfb134be86063e` |
| 9 | `theorem` | [complementaryAdjacency_relabel](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/complementaryadjacency-relabel.md) | 66 | `result-track:26a506a0967440f860cc5211cd6f3fd23cba671fd64e6176605c6143f5b03065` |
| 10 | `theorem` | [complementaryAdjacency_injective](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/complementaryadjacency-injective.md) | 77 | `result-track:5b5ccb4aa2e88475257fad914080f0355213a96289ef0d7bcd3374e712b97492` |
| 11 | `theorem` | [actual_quartic_complementaryAdjacency_injective](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/actual-quartic-complementaryadjacency-injective.md) | 113 | `result-track:bf2a1b8df37d0c3ffd14966156e32148366d9a4c7d1725938925177313593850` |
| 12 | `theorem` | [actual_quartic_adjacency_equivariant](../../../../CommutativeAlgebra/QuarticMatchingAdjacency.lean/declarations/actual-quartic-adjacency-equivariant.md) | 123 | `result-track:b747af6c4e6fd4269d8cb212b32d898e7ae0ac461f364a9f2f739e1abdd805f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8710d845e42ca6c2f1509ad0432386555cee41e22730aac4b02fb16efa2d5ab3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticMatchingAdjacency.lean","GRWTSK/_verification/specifications/Algebra/QuarticMatchingAdjacency.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
