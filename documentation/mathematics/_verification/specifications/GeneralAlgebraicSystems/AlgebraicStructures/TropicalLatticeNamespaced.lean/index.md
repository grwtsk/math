# Verification target: Tropical Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "758e7423fc14818d9861d69fbbc5783ac200fba6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant48ebdc09e62dc0f97b0b2f74dfb9dd073ce2f2f6bac630b7d2c613e0d4365d0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `758e7423fc14818d9861d69fbbc5783ac200fba6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant48ebdc09e62dc0f97b0b2f74dfb9dd073ce2f2f6bac630b7d2c613e0d4365d0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant48ebdc09e62dc0f97b0b2f74dfb9dd073ce2f2f6bac630b7d2c613e0d4365d0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Tropical.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSemilatticeInfTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeNamespaced.lean/declarations/instsemilatticeinftropical.md) | 40 | `declaration-track:3189caf38a955bd820f4c6329f052a1420fb7bf189d268a58702adcbc4ed0caa` |
| 2 | `instance` | [instSemilatticeSupTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeNamespaced.lean/declarations/instsemilatticesuptropical.md) | 47 | `declaration-track:0c4c7f6e6f6d4b0e45e07f21a1ef774740dfbf3e62496cf40ea2ac7c7deeaf41` |
| 3 | `instance` | [instLatticeTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeNamespaced.lean/declarations/instlatticetropical.md) | 54 | `declaration-track:31c782a4119e1116cb308fc90f602c72fc042548518197147cbac207987595ab` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeNamespaced.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:26616b1d7f648cb89b11ae4aa986263ffb8d598a88042c8cf0de35d1e2c95cf7` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeNamespaced.lean/declarations/instance.md) | 59 | `declaration-track:17df2ce3ee74933acd05ed6f69972c0d799b2672ee8d668028724680f6b18921` |
| 6 | `instance` | [instConditionallyCompleteLatticeTropical](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeNamespaced.lean/declarations/instconditionallycompletelatticetropical.md) | 61 | `declaration-track:a9e4296585a08927916b298f3b00b4603d116614a31cd2fe58794e4557c4c622` |
| 7 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TropicalLatticeNamespaced.lean/declarations/instance-source-edition-3.md) | 73 | `declaration-track:42ef14bfb7c1bf6aff35e0b315572ec316bccd52ef1b12fd7dd6ccbf0f6d22f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40fd795aebd5dd05ca93ad15361e24077adc5f47db6db484323fae71ff69e3aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant48ebdc09e62dc0f97b0b2f74dfb9dd073ce2f2f6bac630b7d2c613e0d4365d0d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant48ebdc09e62dc0f97b0b2f74dfb9dd073ce2f2f6bac630b7d2c613e0d4365d0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
