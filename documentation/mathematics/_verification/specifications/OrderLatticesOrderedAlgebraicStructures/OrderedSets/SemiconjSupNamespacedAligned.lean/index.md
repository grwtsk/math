# Verification target: Semiconj Sup Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd8c4c4794465376a17e522c1dbe9cda33daaa6c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variantdb6b1d7f1470b33e0c0f720b9f42c4aa2e2344f56dc15b0b7522557e4cc9881a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd8c4c4794465376a17e522c1dbe9cda33daaa6c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variantdb6b1d7f1470b33e0c0f720b9f42c4aa2e2344f56dc15b0b7522557e4cc9881a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variantdb6b1d7f1470b33e0c0f720b9f42c4aa2e2344f56dc15b0b7522557e4cc9881a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Conjugate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Group` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrdContinuous` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Units.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrderRightAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/isorderrightadjoint.md) | 52 | `declaration-track:a2e38a0e966f85eade3a4c42e51ecb3bf9ca2362b6284b656f954c28624f92d8` |
| 2 | `theorem` | [isOrderRightAdjoint_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/isorderrightadjoint-ssup.md) | 56 | `result-track:420f86015401a7144cd3e8d48d7dbd26e9c7de31af749db3921b4fe82c9cbdec` |
| 3 | `theorem` | [isOrderRightAdjoint_csSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/isorderrightadjoint-cssup.md) | 60 | `result-track:4b700b1ecea4299d2218feeec3740f91e073b960994d09c3089d356646bb48a6` |
| 4 | `theorem` | [unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/unique.md) | 67 | `result-track:9486fbc7cab273193197718d8004fa593977ecd749fc0d29022c850658866e05` |
| 5 | `theorem` | [right_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/right-mono.md) | 72 | `result-track:bc50f2e3142a74f895fdd3f62a767202a16673e7d56500dad55e2454e0e0ed9e` |
| 6 | `theorem` | [orderIso_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/orderiso-comp.md) | 76 | `result-track:ea298229234ac8ef86fc41ba4e3cb4a6d0693b41d5647bc1e1f868d3be61bd4d` |
| 7 | `theorem` | [comp_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/comp-orderiso.md) | 81 | `result-track:4c2fbe70eb6ccec86e2a981cadcf5f3c8abf9391e8bc471e67ea5a2444e8d55e` |
| 8 | `theorem` | [Semiconj.symm_adjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/semiconj-symm-adjoint.md) | 99 | `result-track:0fbba37492d971e541cf926de9baf25b23bc94fbca1220297a107384dceca62e` |
| 9 | `theorem` | [semiconj_of_isLUB](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/semiconj-of-islub.md) | 109 | `result-track:b8cd9299c3e21852ec2101ddd5f29b334b45eb4ca1a711dcbdda149b2ce23c6b` |
| 10 | `theorem` | [sSup_div_semiconj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/ssup-div-semiconj.md) | 123 | `result-track:deca6aa0a4578d672dca80ced5829362b2291380839ed111e7aaabc83cf99d12` |
| 11 | `theorem` | [csSup_div_semiconj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemiconjSupNamespacedAligned.lean/declarations/cssup-div-semiconj.md) | 134 | `result-track:bcd8a7fa2cd3c3465aaa63b79fee39718dbef695a53507e3589668021b63bb43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cb83d2d52464a9d79b9fdb8b6dfa38fc69cd4cda6fa7e0f9acf7912472ec0c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variantdb6b1d7f1470b33e0c0f720b9f42c4aa2e2344f56dc15b0b7522557e4cc9881a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemiconjSup/Variantdb6b1d7f1470b33e0c0f720b9f42c4aa2e2344f56dc15b0b7522557e4cc9881a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
