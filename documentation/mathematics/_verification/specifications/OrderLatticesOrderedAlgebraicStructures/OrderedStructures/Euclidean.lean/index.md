# Verification target: Euclidean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ddb07353fef8f69d4cc23cf1472db1eb3c45cf6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Euclidean.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Euclidean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ddb07353fef8f69d4cc23cf1472db1eb3c45cf6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Int` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsEuclidean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Euclidean.lean/declarations/iseuclidean.md) | 36 | `declaration-track:efb177a1ce35915eea5b388ac086cfc41f62473df21085a997db7333e83d8f07` |
| 2 | `theorem` | [map_lt_map_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Euclidean.lean/declarations/map-lt-map-iff.md) | 46 | `result-track:53275f88d538ba4003dd2b6700510614bf0895c6fe5bd974f8ca6947407ec695` |
| 3 | `theorem` | [sub_mod_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Euclidean.lean/declarations/sub-mod-lt.md) | 51 | `result-track:192205ae2c33e936761ee33d2f7faa2ab6230b73193bfb7bdf0b7585a2092e2a` |
| 4 | `theorem` | [abs_isEuclidean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Euclidean.lean/declarations/abs-iseuclidean.md) | 64 | `result-track:14f6b3db4fd67441ac4e258b1a0eae3017f1c47b90e82a0b5381d8bca283e166` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48f8867d7f76a3a3dbcaa5039b1ae9c109fb7b469bea0b415d79eb39edd9ea8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Euclidean/Varianted85103eece41214d3edc6270af057350eb5561b075f79418f4ebc432be152a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
