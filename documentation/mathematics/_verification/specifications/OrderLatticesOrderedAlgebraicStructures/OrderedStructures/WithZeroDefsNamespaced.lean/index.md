# Verification target: With Zero Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74969d067bf3343c9c1ae1fad00384be40543e4a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Varianta760b15b5246c0f71bc20cef105a1a7d128cc0924a91af9bbdedf02ac610af45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74969d067bf3343c9c1ae1fad00384be40543e4a`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Varianta760b15b5246c0f71bc20cef105a1a7d128cc0924a91af9bbdedf02ac610af45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Varianta760b15b5246c0f71bc20cef105a1a7d128cc0924a91af9bbdedf02ac610af45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.WithOne.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearOrderedCommMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/linearorderedcommmonoidwithzero.md) | 30 | `declaration-track:7441f6a6eee313e6bfe86756c3fffce3b404e1355f399fc404120a7460138165` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/instance.md) | 36 | `declaration-track:a04b4efda1caa081679957782b9fb156925583fc854a7a2d51cb508d32ba8245` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 41 | `declaration-track:c5b9cfbd803c8c94d9bf47d583fadc65397551b760df81efb6ce69984b7f607e` |
| 4 | `instance` | [preorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/preorder.md) | 48 | `declaration-track:c68067744a76227d3963faa6ca5dc39b542633975b95d1103ba24970de1ab404` |
| 5 | `instance` | [partialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/partialorder.md) | 51 | `declaration-track:10e3d425255d1ebeb3b009bf6eee6a606433dfecf99b86ee9569743262fc3985` |
| 6 | `instance` | [orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/orderbot.md) | 54 | `declaration-track:6416c1c9374777098eafc0a9ef385e867451349115d501490f034178eb75d83d` |
| 7 | `theorem` | [zero_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/zero-le.md) | 57 | `result-track:6f9d35f0c32272ca06ef09485cbd9b8c5ae0438f7d57b1cdc85a421ec3f20659` |
| 8 | `theorem` | [zero_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/zero-lt-coe.md) | 61 | `result-track:a7578df89ae09b1889d1a6bf1866bff9072396143ab46c36a71cd0c6c53ccc40` |
| 9 | `theorem` | [zero_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/zero-eq-bot.md) | 65 | `result-track:313ccdcdeca5705d455747d030945d11542493c98476c121a3a3f28cbb19ee8c` |
| 10 | `theorem` | [coe_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/coe-lt-coe.md) | 70 | `result-track:e41c0ed247566f8ba4c42dbbb2f59766b816d44250eb6aefb3ae9a7c9a6b4ac3` |
| 11 | `theorem` | [coe_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/coe-le-coe.md) | 75 | `result-track:7aa327917f93682a508bfbca4bbc83124aeab3cc39f4a876471f887ee74ec4b3` |
| 12 | `instance` | [lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/lattice.md) | 79 | `declaration-track:2742fc43427652bd9e5948cd319c51a2d07c2042a6bc26fcee0f317b6d85ce81` |
| 13 | `instance` | [linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/linearorder.md) | 82 | `declaration-track:c3bdb5b264eaacb1b99a1a701072e65b483d39ca7e79684b134d4707136fcb1f` |
| 14 | `instance` | [covariantClass_mul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/covariantclass-mul-le.md) | 85 | `declaration-track:e20dec5ea8b89feb3f6d1843352ffeddaf89288cf9775926a214218cb3f3565f` |
| 15 | `theorem` | [le_max_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/le-max-iff.md) | 101 | `result-track:5045734d19ffb982aed70408c8830ce086bcd9a04e23f7ea51b7379c2e1e8543` |
| 16 | `theorem` | [min_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/min-le-iff.md) | 107 | `result-track:841b51874847f1a729d5c801d7a879414bff9ce1ffe08e7aa076f8f6ea94ce36` |
| 17 | `instance` | [orderedCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/orderedcommmonoid.md) | 112 | `declaration-track:2532ee57f68ce083c43660b53011e485bcbf4b623b508959fa3ee6243516ac12` |
| 18 | `theorem` | [covariantClass_add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/covariantclass-add-le.md) | 119 | `result-track:a1a720de6d8fefc724036d9367431634a73c0fc85d397681ceb3789691754a54` |
| 19 | `def` | [orderedAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/orderedaddcommmonoid.md) | 148 | `declaration-track:fbae2b3d54b2b886b589121f6758d25196c33f45a460fcd7dbdc4ff2ea6f914e` |
| 20 | `instance` | [existsAddOfLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/existsaddofle.md) | 156 | `declaration-track:254abce839e0cc129db0b21eff8a608f16445b63daff82e73a503f04154d5371` |
| 21 | `instance` | [canonicallyOrderedAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/canonicallyorderedaddmonoid.md) | 170 | `declaration-track:e11b0937e02c290a62fed21d2f309339e77e2006ef9310fc4032973d09b79481` |
| 22 | `instance` | [canonicallyLinearOrderedAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/WithZeroDefsNamespaced.lean/declarations/canonicallylinearorderedaddmonoid.md) | 187 | `declaration-track:cedbf118fd2536bfc7ae817547c08a42bdf9bc7d967f67d84e9839e190dc0a1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64984cd8f85ca73e7401800056c9b857df7edca7995862977dc7ac1e47e02c5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Varianta760b15b5246c0f71bc20cef105a1a7d128cc0924a91af9bbdedf02ac610af45.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Varianta760b15b5246c0f71bc20cef105a1a7d128cc0924a91af9bbdedf02ac610af45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
