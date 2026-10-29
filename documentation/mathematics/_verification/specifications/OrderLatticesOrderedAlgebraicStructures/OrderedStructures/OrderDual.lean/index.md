# Verification target: Order Dual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54e2909ca675aa8d9174693727f5a8b10e042915",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OrderDual/Variant20bcf11504878eaf3fcd5b9a7ef91a3e6b75fe30020c131de34028d4b41bc305.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54e2909ca675aa8d9174693727f5a8b10e042915`.

Source path: `GRWTSK/Algebra/GroupTheory/OrderDual/Variant20bcf11504878eaf3fcd5b9a7ef91a3e6b75fe30020c131de34028d4b41bc305.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OrderDual/Variant20bcf11504878eaf3fcd5b9a7ef91a3e6b75fe30020c131de34028d4b41bc305.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.OrderSynonym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [contravariantClass_mul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/contravariantclass-mul-le.md) | 23 | `declaration-track:5f59f8e3199a625778f6ffa9cdf8b40a9b38ad38ac4776f44930afb76dee3de5` |
| 2 | `instance` | [covariantClass_mul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/covariantclass-mul-le.md) | 30 | `declaration-track:b8152a8767230fe8b19c95af390be41d032aa4f6ac8eec067f83d230c7d82be4` |
| 3 | `instance` | [contravariantClass_swap_mul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/contravariantclass-swap-mul-le.md) | 37 | `declaration-track:d5131b8c4c22d6bb57e84297e3a4ff986c76146d03ce7df96e124667ed9c7c62` |
| 4 | `instance` | [covariantClass_swap_mul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/covariantclass-swap-mul-le.md) | 45 | `declaration-track:f8fee8d59cd77705b57a687960f70c4b93343019735bab1acd1f3acae4c33017` |
| 5 | `instance` | [contravariantClass_mul_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/contravariantclass-mul-lt.md) | 53 | `declaration-track:2c3f9ba2d992438e5119f1f4f027011de141df1a05d2ad42d8102b3d62668de5` |
| 6 | `instance` | [covariantClass_mul_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/covariantclass-mul-lt.md) | 60 | `declaration-track:45f1261df4995395ed317087b09b1fa4686ee615aae25f07cf4d738102955a72` |
| 7 | `instance` | [contravariantClass_swap_mul_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/contravariantclass-swap-mul-lt.md) | 67 | `declaration-track:6c8482c352b293e0389597ebd04b6798fe9f6f26f4ff18bebdebe3312d532819` |
| 8 | `instance` | [covariantClass_swap_mul_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/covariantclass-swap-mul-lt.md) | 75 | `declaration-track:abe456a1325f150c356c432feb25c1c8cb651bd80ffa9357013352cd8663fb17` |
| 9 | `instance` | [orderedCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/orderedcommmonoid.md) | 83 | `declaration-track:481812c1a64991a4673ccbfc7bda046eb4bc2e0973adf72c68df7fc23d3dd3b3` |
| 10 | `instance` | [OrderedCancelCommMonoid.to_contravariantClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/to-contravariantclass.md) | 90 | `declaration-track:1cbb4a76f52ce3a031a2a369b1b296e472f189e98fa534dcad6f54b1b6c23f18` |
| 11 | `instance` | [orderedCancelCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/orderedcancelcommmonoid.md) | 101 | `declaration-track:0ab16b533b220162f0728d07889ab4308850278b40d8c9ae4674db2d44939e37` |
| 12 | `instance` | [linearOrderedCancelCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/linearorderedcancelcommmonoid.md) | 106 | `declaration-track:236fec33ed5d4e837fe728980c2a6595a2e3d0fe6f7ca204a5e97c0292636c9c` |
| 13 | `instance` | [linearOrderedCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderDual.lean/declarations/linearorderedcommmonoid.md) | 111 | `declaration-track:29ca30b3b97092b1bea8bef23490f74d16d74d95f850844523250a8c4e9671f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fceb238778c0e751118d67434819fa6b5f7bbc4d4ba4e1c1f9a76a981c77e3e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/OrderDual/Variant20bcf11504878eaf3fcd5b9a7ef91a3e6b75fe30020c131de34028d4b41bc305.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/OrderDual/Variant20bcf11504878eaf3fcd5b9a7ef91a3e6b75fe30020c131de34028d4b41bc305.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
