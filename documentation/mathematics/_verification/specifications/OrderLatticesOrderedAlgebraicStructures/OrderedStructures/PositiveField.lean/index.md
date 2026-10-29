# Verification target: Positive Field

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cab5483cf3bd61191365be74c4ef99ca3570108",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variantaf7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveField.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveField.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cab5483cf3bd61191365be74c4ef99ca3570108`.

Source path: `GRWTSK/Algebra/Field/Variantaf7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variantaf7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Positive.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Subtype.inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveField.lean/declarations/subtype-inv.md) | 21 | `declaration-track:ecb6b8d6efda1c61463267b178d750fbb68f209950950ff274b692310d05fbb3` |
| 2 | `theorem` | [coe_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveField.lean/declarations/coe-inv.md) | 24 | `result-track:9f6dc39189bada9867ad271d31bf11b1bab1faa2797df7682c4c16a0b2812104` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveField.lean/declarations/instance-source-edition-2.md) | 27 | `declaration-track:6888d21222159bd116f5928cc255724d5a3b0e37cb075ad86d9453cc8202b6d2` |
| 4 | `theorem` | [coe_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveField.lean/declarations/coe-zpow.md) | 31 | `result-track:69e1fd4a507f28aaf5355e7946995fa19f1019dd21bb7ce96fc50e7901b01017` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PositiveField.lean/declarations/instance.md) | 34 | `declaration-track:0cfe5d594f8bf26656980a4d5bea2961be4ebe0f8d4275be91d67a704c838dfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=face49d3ab5ca18ffb528431b95f290500295790052191213d0aad8fe1043f06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Field/Variantaf7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/Variantaf7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
