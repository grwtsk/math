# Verification target: Lemmas Lemmas Namespaced To Array Injective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12ea4c19a7d2389a016cb56a8232fedd1e6c0404",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc4d26f284303410ae7acd6a90f64252b5ac2a58bba6e04e49dfd0d8613a54f1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12ea4c19a7d2389a016cb56a8232fedd1e6c0404`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc4d26f284303410ae7acd6a90f64252b5ac2a58bba6e04e49dfd0d8613a54f1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc4d26f284303410ae7acd6a90f64252b5ac2a58bba6e04e49dfd0d8613a54f1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Vector.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Batteries.Data.Array.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint.Simp` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toArray_injective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/toarray-injective.md) | 23 | `result-track:a1ccea0f78b6b9bdaaea544f384322adbbec91c09dde9b3cca14f0347f38f75f` |
| 2 | `theorem` | [get_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-mk.md) | 29 | `result-track:1f23c7d7b4ab1664edc4a370e5fd4eaf7d978836724b3e400cb4f782016c6a79` |
| 3 | `theorem` | [getD_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/getd-mk.md) | 32 | `result-track:15d72f897e04b5c0fd906dd78ea28307c46a345ea8d1de8659d6ff3eefc0fc52` |
| 4 | `theorem` | [uget_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/uget-mk.md) | 35 | `result-track:bf921a861e167d85702e3a75268d3dc05c67b2963f5ec507bc52eaa8b234f58c` |
| 5 | `theorem` | [tail_eq_of_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/tail-eq-of-zero.md) | 54 | `result-track:f97d282cbc118a8b8c6f3daf2121ada638ffe1cf84ef2ab80d7045a1fdc5fe63` |
| 6 | `theorem` | [tail_eq_of_ne_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/tail-eq-of-ne-zero.md) | 56 | `result-track:8af27d7d8f3d2314a03754e21100bdbf94ee7196ea40e1b63f60865de39163a4` |
| 7 | `theorem` | [toList_tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/tolist-tail.md) | 59 | `result-track:cfdef89a025bb3f5f78c2ce3be263476c016cc2296582ace1333443c7747d3a7` |
| 8 | `theorem` | [getElem_tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/getelem-tail.md) | 67 | `result-track:432977e73f38773ca9dcdab41ff48de84efb18d4c874da8baeef9f925a672f27` |
| 9 | `theorem` | [get_push_last](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-push-last.md) | 76 | `result-track:c1fafd8867976e01170f6e16a714c17bdccda1859e514066eae4d653d98cc612` |
| 10 | `theorem` | [get_push_castSucc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-push-castsucc.md) | 80 | `result-track:d2d322e1ead23ece6dae1224fc3f2e82ad2cdbb54759b7307c65471b1d3fa278` |
| 11 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-map.md) | 84 | `result-track:18ad5aa45c990424caf39ee30424d8cbe068555dc9f5177302b4e6a9461cbfe8` |
| 12 | `theorem` | [get_reverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-reverse.md) | 88 | `result-track:d20e12bdb97db111357d6bdc230eea534cc3217f6da362aa1a7f8e93c2c0c2f4` |
| 13 | `theorem` | [get_replicate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-replicate.md) | 92 | `result-track:01dc4c6ff906cdd98f26761963a90b1de324b45bab418bb0b28351505f828c05` |
| 14 | `theorem` | [get_range](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-range.md) | 95 | `result-track:2347bca22861fe52ea4cf19473ff8cd6168737488f2064b4a7e5d29d44612b53` |
| 15 | `theorem` | [get_ofFn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-offn.md) | 98 | `result-track:797a6b883ee7f92ef015e814e18c403ad1d2a0c6053798719a4f8352b801c6e1` |
| 16 | `theorem` | [get_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-cast.md) | 101 | `result-track:ce411dbe7ce46bb019008b89db0619f81d47d206d0f8a227a1fb64138eadebe6` |
| 17 | `theorem` | [get_tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedToArrayInjective.lean/declarations/get-tail.md) | 105 | `result-track:9e85ea4922a8d3da6e1aa4b4837c910ca4bd87ea2b900d7736a171e287b87173` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad1d6c6fce8acfa5f2f6667e2fb0bec60e437cbdc8890b1da0df136e4f200a76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc4d26f284303410ae7acd6a90f64252b5ac2a58bba6e04e49dfd0d8613a54f1d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc4d26f284303410ae7acd6a90f64252b5ac2a58bba6e04e49dfd0d8613a54f1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
