# Verification target: Box

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2026d9abddd453a176f98fc59b96bd0360a2c9a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2026d9abddd453a176f98fc59b96bd0360a2c9a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Disjointed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Icc_neg_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/icc-neg-mono.md) | 28 | `result-track:6454873a642b2d75f1d262c246c2216708cee284a2787eeda1f7dd8800fbcb76` |
| 2 | `def` | [box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/box.md) | 34 | `declaration-track:ebd2de4d8c854de7eee6d990f82d767df820d074f3b93705d220a747ae6eaef6` |
| 3 | `lemma` | [box_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/box-zero.md) | 37 | `result-track:acfb61253464c5bd300e28f32f844f1f50e6a7f2886541e297a4496e5c95f977` |
| 4 | `lemma` | [box_succ_eq_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/box-succ-eq-sdiff.md) | 39 | `result-track:402451ce07d49a02ce4b2db70c4eb34bf96b45140bc7d1e1c1ef1a67bb5a774b` |
| 5 | `lemma` | [disjoint_box_succ_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/disjoint-box-succ-prod.md) | 44 | `result-track:66e8fc5db991bc2b1a4d5f5f9ddd42d08b5c849e893654ded734c308c269f433` |
| 6 | `lemma` | [box_succ_union_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/box-succ-union-prod.md) | 47 | `result-track:76b2cdabbfda6e2f57046861faa1fe5280c9c346d04d10653fdb6b9400e434c0` |
| 7 | `lemma` | [box_succ_disjUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/box-succ-disjunion.md) | 51 | `result-track:c8aee91e0e7d174b317bc25523d8b8adf6d45b8bf5c74f74e92810e353e96bed` |
| 8 | `lemma` | [zero_mem_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/zero-mem-box.md) | 55 | `result-track:fb61459fa0d86f2d9c3b3947528d5c5dc8e474b8c4f54424531069783068ed38` |
| 9 | `lemma` | [eq_zero_iff_eq_zero_of_mem_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/eq-zero-iff-eq-zero-of-mem-box.md) | 57 | `result-track:71c5e56b4575fb2568a0bda4b35c68671dea4bdef3af026e1907e09cafeb442d` |
| 10 | `lemma` | [card_box_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/card-box-succ.md) | 71 | `result-track:79f5dd5891106a672fa97d9c52c25500b274266c1344e0c98a4fb3d23945d1ca` |
| 11 | `lemma` | [card_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/card-box.md) | 88 | `result-track:a6ab52e8d0ebca72dc6478720e6d88afa82effd25d5e31b723d30b243f5e8293` |
| 12 | `lemma` | [mem_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/mem-box.md) | 96 | `result-track:de56dd0a84cd98556f501ff644089112048da82b94e2e34d4ce64e18ef8a2258` |
| 13 | `lemma` | [existsUnique_mem_box](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Box.lean/declarations/existsunique-mem-box.md) | 103 | `result-track:901c7e21c5f32e4a95386de7d99ee2f79e0158f019b65fe5b4139f635b23c14c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fa4fdbaa553ad3ebf321db347132534bd936e0780a105f1b00f7c7d382404b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
