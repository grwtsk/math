# Verification target: Group Prod Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e30feec5368c9e6874009147ae10683b25d45e71",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant718ad98bf6f6cd7de310e05ea58fc22e8572687718823b3da59ce1e28a33d4bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupProdNamespacedAligned.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupProdNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e30feec5368c9e6874009147ae10683b25d45e71`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant718ad98bf6f6cd7de310e05ea58fc22e8572687718823b3da59ce1e28a33d4bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant718ad98bf6f6cd7de310e05ea58fc22e8572687718823b3da59ce1e28a33d4bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Instances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupProdNamespacedAligned.lean/declarations/instance.md) | 31 | `declaration-track:c0f961ba7fe23c723cfe1c0a0078fbca96b10634769b5fb7f58dd6843265e6d8` |
| 2 | `instance` | [orderedCommGroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupProdNamespacedAligned.lean/declarations/orderedcommgroup.md) | 38 | `declaration-track:72815a4bad3a16ec3d58f0deaeb1cec7ab3f90bb3b54e9d3c2c302ac526f12ee` |
| 3 | `instance` | [linearOrderedCommGroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupProdNamespacedAligned.lean/declarations/linearorderedcommgroup.md) | 43 | `declaration-track:47313797a080ec2fe1e48ffbad07e31e2b7eaea32a5f70efff3d92fe0b3b423d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90c9bb43085ee975d3714ba21069fc0a2e18f4a08284314c78627bb4309ca343 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Prod/Variant718ad98bf6f6cd7de310e05ea58fc22e8572687718823b3da59ce1e28a33d4bb.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Prod/Variant718ad98bf6f6cd7de310e05ea58fc22e8572687718823b3da59ce1e28a33d4bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
