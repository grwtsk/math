# Verification target: Nonneg Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "174b4dff609b27e2f814a6cd233351a6d3ebb356",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9701d0766589352e489f056928da6817802c83f3bdf7093139d5d05393ea05c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `174b4dff609b27e2f814a6cd233351a6d3ebb356`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9701d0766589352e489f056928da6817802c83f3bdf7093139d5d05393ea05c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9701d0766589352e489f056928da6817802c83f3bdf7093139d5d05393ea05c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLatticeIntervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LatticeIntervals` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/declarations/orderbot.md) | 33 | `declaration-track:27360170bac5133597afb4b76b26744f8963ffe522c5ea0d804a5c81f096a0da` |
| 2 | `theorem` | [bot_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/declarations/bot-eq.md) | 36 | `result-track:0e6448ee6438ed1bc626dcda76fdb6a1dc1fa6722f105c416fd93e698de9e31e` |
| 3 | `instance` | [noMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/declarations/nomaxorder.md) | 39 | `declaration-track:ed9f619ff0733b974a815ee653295b02fcaea07f4e5ea56a34aa8390df56833b` |
| 4 | `instance` | [semilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/declarations/semilatticesup.md) | 42 | `declaration-track:93d39795dc44e3934e590bd1820dba73f3ac777707b208682f1d313d4e51796e` |
| 5 | `instance` | [semilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/declarations/semilatticeinf.md) | 45 | `declaration-track:f716e4cec1c92ecc7264a0b8429b7204cb5c8778a42ed5cd459e63f69a945366` |
| 6 | `instance` | [distribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/declarations/distriblattice.md) | 48 | `declaration-track:7ffc9c3a55f05ab9046b820199d2c52b9cba3a92c1b4f8f6f00aff1b1f2063ef` |
| 7 | `instance` | [instDenselyOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/declarations/instdenselyordered.md) | 51 | `declaration-track:0b8347d3e1d7b8883b3be345fb949bb75337c24ea2707e579aff3021779eace4` |
| 8 | `abbrev` | [conditionallyCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/declarations/conditionallycompletelinearorder.md) | 56 | `declaration-track:f42b8144c54e041861ca7e0496a2f59f3ded8fb6b75981369b8e2f850f0e1ae2` |
| 9 | `abbrev` | [conditionallyCompleteLinearOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegLatticeNamespaced.lean/declarations/conditionallycompletelinearorderbot.md) | 65 | `declaration-track:b4b3a03fe608358506220ebf8601e8874975d2e334c2678a2e5e6fd58d7f16af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2b6ea664c39d5a7ada534a2109bbc893b61a805cfde3cb7d514fd098da8512e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9701d0766589352e489f056928da6817802c83f3bdf7093139d5d05393ea05c8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant9701d0766589352e489f056928da6817802c83f3bdf7093139d5d05393ea05c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
