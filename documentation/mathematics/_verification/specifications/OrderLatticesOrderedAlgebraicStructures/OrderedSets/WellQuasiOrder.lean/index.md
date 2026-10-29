# Verification target: Well Quasi Order

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2a7ebd133d31952a2d2b654fb30c7596e551f0b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variante906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2a7ebd133d31952a2d2b654fb30c7596e551f0b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variante906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variante906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiordered.md) | 38 | `declaration-track:6f36a2df2919dd5a99ad9266932acb1e31ded4aa5bd81851ac245011f934ba04` |
| 2 | `theorem` | [wellQuasiOrdered_of_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiordered-of-isempty.md) | 41 | `result-track:3beaca664b8aef181a10a83371882ef6c3a32805c1b32739ed13d9ba6e484645` |
| 3 | `theorem` | [IsAntichain.finite_of_wellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/isantichain-finite-of-wellquasiordered.md) | 44 | `result-track:c3db33528797f6115b77d436093192c344b416267af35448d2531769e15976db` |
| 4 | `theorem` | [Finite.wellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/finite-wellquasiordered.md) | 51 | `result-track:6777c7c517560668877401d4b702aa5a0c814dd3907958c667e2ce26bdc95c75` |
| 5 | `theorem` | [WellQuasiOrdered.exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiordered-exists-monotone-subseq.md) | 58 | `result-track:818c852967ed87fc0a478bb99252d7632b5434e68f33dbade9111e70065309c7` |
| 6 | `theorem` | [wellQuasiOrdered_iff_exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiordered-iff-exists-monotone-subseq.md) | 67 | `result-track:73c8c94a78d69c0fc0b13ab8b6644e779210e03ad9f5da9337212d57252e8228` |
| 7 | `theorem` | [WellQuasiOrdered.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiordered-prod.md) | 74 | `result-track:791d4aa58776d96df8c034001b0dc56364382ad8a662c57ec8dd7b1e5ed28426` |
| 8 | `class` | [WellQuasiOrderedLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiorderedle.md) | 85 | `declaration-track:58af4f3890261dbd3e05ba0e8ce6907bdd591013dabe3bce595cdba3c8de3a62` |
| 9 | `theorem` | [wellQuasiOrdered_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiordered-le.md) | 88 | `result-track:f7777c9d0525fd4e7d68e15579598cc34ebcfa44358a4898592960bbce436280` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/instance-source-edition-3.md) | 94 | `declaration-track:f7b4c23c3d35ce61ae0f81e6e26dfba5230bd350946bdff4df4523cc21640f46` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/instance.md) | 97 | `declaration-track:0e5d90b289fa6eac34f9e14673ebb447dbcb7e598f65d0423aab4b6dc4bf68f3` |
| 12 | `theorem` | [WellQuasiOrdered.wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiordered-wellfounded.md) | 104 | `result-track:a2d67df654c542e5b73116687e9e935ed603cee468a2d07f27bf0cfeec8c5c66` |
| 13 | `theorem` | [WellQuasiOrderedLE.finite_of_isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiorderedle-finite-of-isantichain.md) | 113 | `result-track:c1263b91780a94e193c16a56309638c2762d7c28b6c7fb1c412ee5aeb81d2f59` |
| 14 | `theorem` | [wellQuasiOrderedLE_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiorderedle-iff.md) | 118 | `result-track:e5520a0120c5a8a3a156369274b57007c7545c3de306157b4d169f3d663437e0` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/instance-source-edition-2.md) | 137 | `declaration-track:9200c131253dc72efa33528a2e774919f28dbb3d3f646a63ceea3348919ef628` |
| 16 | `theorem` | [wellQuasiOrderedLE_iff_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrder.lean/declarations/wellquasiorderedle-iff-wellfoundedlt.md) | 146 | `result-track:f52f77d72f5371c03c5ff825a7fd380ac7aff6a565651e00cebc0338f7ac570a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd613330134d2789bc18294ff226ff9c385355ddb92a311ab2cdecf5e1a74db2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variante906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variante906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
