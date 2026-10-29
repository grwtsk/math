# Verification target: Tuple Sort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd8da73f5d9e1e80659e67059fcfcff18c0b311f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant9b49f25e4420be74ec716fa360f05ce11ba6b2c062927bcf5f93656db485f774.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd8da73f5d9e1e80659e67059fcfcff18c0b311f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant9b49f25e4420be74ec716fa360f05ce11ba6b2c062927bcf5f93656db485f774.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variant9b49f25e4420be74ec716fa360f05ce11ba6b2c062927bcf5f93656db485f774.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Lex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/graph.md) | 39 | `declaration-track:b3620246b3c95d75cdab998ab0ac953e2fca35ad660e24b5eeea2ded439edd4c` |
| 2 | `def` | [graph.proj](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/graph-proj.md) | 46 | `declaration-track:4244ed43cda9aa82ef9735d870bbc939f6f7119034aea45a0571cc9ce1ebeb8a` |
| 3 | `theorem` | [graph.card](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/graph-card.md) | 50 | `result-track:221e434cda365038db91d73df21ff2c81828074cbac95b5f7daec438460abeff` |
| 4 | `def` | [graphEquiv₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/graphequiv-source-edition-2.md) | 62 | `declaration-track:ccfa8185ddd1da90ab23de7cdeec24cdff3c3daa7b6bc254b7cf1d2853caf04d` |
| 5 | `theorem` | [proj_equiv₁'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/proj-equiv.md) | 75 | `result-track:252c9032dad121e746d1ec8caca31ec4e8ad409a4c5f92952dc8d5f1872cc2a7` |
| 6 | `def` | [graphEquiv₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/graphequiv.md) | 81 | `declaration-track:97a51760360f7eb16f1fded783d07c1b452720232fc799a75063a0c84df27089` |
| 7 | `def` | [sort](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/sort.md) | 86 | `declaration-track:02d7102d1bf16be27b0d5524286e547185303c795573638ab6b14d14fe13a974` |
| 8 | `theorem` | [graphEquiv₂_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/graphequiv-apply.md) | 90 | `result-track:1401ef5fe6cd3541e5be17878432989d8c6e30038f24156eac617d0dc9f64a07` |
| 9 | `theorem` | [self_comp_sort](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/self-comp-sort.md) | 95 | `result-track:24f634d02bc01e5478cba87256158bb6532df92c19fddef466aa7fff1ec1c3ba` |
| 10 | `theorem` | [monotone_proj](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/monotone-proj.md) | 99 | `result-track:c0d5ab5224d8ed2279732ca80edf6c4f163e34fb4f1b0c3b6b4d028fe9805860` |
| 11 | `theorem` | [monotone_sort](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/monotone-sort.md) | 105 | `result-track:576fd1c6c317f80ba2fc2abddd542daf81ef0a9d35d8253cd89672c00932f6d5` |
| 12 | `theorem` | [unique_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/unique-monotone.md) | 119 | `result-track:b709ecb31c6d38aadb7e6f915a920ec44fdfbe3925084b6d68470f476d494970` |
| 13 | `theorem` | [eq_sort_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/eq-sort-iff.md) | 130 | `result-track:abb3e393f7aa262ad56889d65ba94b6b19ac41242cff05b497e135e5857591a0` |
| 14 | `theorem` | [eq_sort_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/eq-sort-iff-source-edition-2.md) | 142 | `result-track:eec51ed0432f0225a18c401a6891208f75e8039241427bbc2b5fe163ad3952f6` |
| 15 | `theorem` | [sort_eq_refl_iff_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/sort-eq-refl-iff-monotone.md) | 152 | `result-track:c714628fc2e5afce986f412bb32c4856804e9bd4e15d9dcfda52b3a941693cd8` |
| 16 | `theorem` | [comp_sort_eq_comp_iff_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/comp-sort-eq-comp-iff-monotone.md) | 159 | `result-track:a909430727b78d60f0ea519da37fbd9c6de8d63b1cc78c61571477b89eedca26` |
| 17 | `theorem` | [comp_perm_comp_sort_eq_comp_sort](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/comp-perm-comp-sort-eq-comp-sort.md) | 164 | `result-track:129a57af453c7b67dc6ddbe5a41aecd495e81190fdbd8ac2039ddf5d957979cf` |
| 18 | `theorem` | [antitone_pair_of_not_sorted'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/antitone-pair-of-not-sorted-source-edition-2.md) | 171 | `result-track:eee4d296d7c84d784082e200acde8cd6bbfbafae0de638c2365d4067bf987d55` |
| 19 | `theorem` | [antitone_pair_of_not_sorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleSort.lean/declarations/antitone-pair-of-not-sorted.md) | 179 | `result-track:1482e7c68f547fdcc632dca8d40b228acd81868b46d961d76a6132d2cd59631b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e72ed573a1d775299db5679a6ec8db1419593934d071b7521d31021f49dfe90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant9b49f25e4420be74ec716fa360f05ce11ba6b2c062927bcf5f93656db485f774.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sort/Variant9b49f25e4420be74ec716fa360f05ce11ba6b2c062927bcf5f93656db485f774.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
