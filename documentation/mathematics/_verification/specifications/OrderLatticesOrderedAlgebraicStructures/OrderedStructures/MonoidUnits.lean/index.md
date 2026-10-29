# Verification target: Monoid Units

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "055d5080ec6353207d21cd539e2ea18182fb037b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantf5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `055d5080ec6353207d21cd539e2ea18182fb037b`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantf5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantf5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/declarations/instance.md) | 21 | `declaration-track:970d893bb85631fc98bed87773ce089dd738b12efa817712af2a0c4e20f32d99` |
| 2 | `theorem` | [val_le_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/declarations/val-le-val.md) | 25 | `result-track:4d2ca3b58532bb0cabfbe045d6a19289ee5a69fca30a3fe3f4f87d497b8fcbf4` |
| 3 | `theorem` | [val_lt_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/declarations/val-lt-val.md) | 31 | `result-track:9fa91eab16e86c1416afa9c116917255ddb010acc58ad54bb7988b598c7592dd` |
| 4 | `instance` | [instPartialOrderUnits](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/declarations/instpartialorderunits.md) | 37 | `declaration-track:bec66c295eebef1a268240d7c39d54b95948bdc3c6650ade27159f5eb58dc974` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:98ede3f6518f214fc357178017a6fca06e8c4d5486ec641d278e4c2f2af2e671` |
| 6 | `def` | [orderEmbeddingVal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/declarations/orderembeddingval.md) | 49 | `declaration-track:8c1c7aafd4b4d54827155e10498b0eb52ed4679bb1bac4dea7b27a41383c2eae` |
| 7 | `theorem` | [max_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/declarations/max-val.md) | 55 | `result-track:b88c94ea363140f468018a8cbb0e2376aecfc14318241e45aeac8a744b30037a` |
| 8 | `theorem` | [min_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnits.lean/declarations/min-val.md) | 61 | `result-track:cf54b08069ab98b337f1d0b97dd22741d899c2d0cc49b80cb53eabc49b88224f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ddf384914e969c6321b2cd3e52b9d43cfcf00a183f3823caff5946a6ce2f90f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variantf5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variantf5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
