# Verification target: List Lattice Namespaced Subset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fad414f9c55cb8501f46470fa26dd5a6af830a78",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5e6a68dac9470e1f869949d7f2325025a055b7eddc950e8973ff4dfe4a7dc968.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fad414f9c55cb8501f46470fa26dd5a6af830a78`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5e6a68dac9470e1f869949d7f2325025a055b7eddc950e8973ff4dfe4a7dc968.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5e6a68dac9470e1f869949d7f2325025a055b7eddc950e8973ff4dfe4a7dc968.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Disjoint.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/disjoint-symm.md) | 48 | `result-track:195604c428c2e30b39d81ee499162052fe002eeda9fd0cbb5719e79d388c1505` |
| 2 | `theorem` | [mem_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/mem-union-left.md) | 59 | `result-track:dc105a4aaf489c276c10ab3bf8760c83f86e0693c9c0758ecf48c29aab956f69` |
| 3 | `theorem` | [mem_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/mem-union-right.md) | 62 | `result-track:b441af7ef399574fe2bc48303aa08eba967d9c526f541691b05920edd61844bb` |
| 4 | `theorem` | [sublist_suffix_of_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/sublist-suffix-of-union.md) | 65 | `result-track:653c2d61dd0bed92157d8e3bf59581b8ee80ea2db7e591b1ad0f807174e82cc7` |
| 5 | `theorem` | [suffix_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/suffix-union-right.md) | 76 | `result-track:6a5c62c0b76cad0e39360ed4e5243c50e39cfc43d00ed64b6879a16586bdb155` |
| 6 | `theorem` | [union_sublist_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/union-sublist-append.md) | 79 | `result-track:a7e503176a467fef24eaac4bc1d523b2f2a7c7fe1ba6ccd271e63c7af766e290` |
| 7 | `theorem` | [forall_mem_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/forall-mem-union.md) | 83 | `result-track:d4f02032b87fb6270fb3b1787372bd583229d65df625b95d23f4a99814ccadd6` |
| 8 | `theorem` | [forall_mem_of_forall_mem_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/forall-mem-of-forall-mem-union-left.md) | 86 | `result-track:804643042225c452c1e59d747a0a05fcd555a534040dcd8e1566100ef1eacf93` |
| 9 | `theorem` | [forall_mem_of_forall_mem_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/forall-mem-of-forall-mem-union-right.md) | 89 | `result-track:22c2097802fda0eac7fa8381ffd91fad314e77540644cfed3dc05c486e6efe77` |
| 10 | `theorem` | [Subset.union_eq_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/subset-union-eq-right.md) | 92 | `result-track:a703900839a2aa7097735809f926cc5642d27844a88f8196ad3388f5cfce3222` |
| 11 | `theorem` | [inter_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/inter-nil.md) | 107 | `result-track:33ae70f205984a29f1dceb4ea4c8590e1d299cd8338c1af492184e21dade6858` |
| 12 | `theorem` | [inter_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/inter-cons-of-mem.md) | 111 | `result-track:ac4917ca145cf39da9adb083c5e140434e8389f922c1a71aa303021f7463cb3f` |
| 13 | `theorem` | [inter_cons_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/inter-cons-of-notmem.md) | 115 | `result-track:79fd12ac0efbd659a5cf6c93d99360155d53f62cf7b671d19aee84172645cd34` |
| 14 | `theorem` | [inter_nil'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/inter-nil-source-edition-2.md) | 121 | `result-track:b85b1e080b1d153b4d6651d21ce4a2053ba3cdd7d216cc88797366d4eb7c76d1` |
| 15 | `theorem` | [mem_of_mem_inter_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/mem-of-mem-inter-left.md) | 126 | `result-track:8ca80fb113b361492e6df313c21dad725992814d4af136919636fda4fe2935d9` |
| 16 | `theorem` | [mem_of_mem_inter_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/mem-of-mem-inter-right.md) | 129 | `result-track:dd2b11f727efebfaad7c7abb5b258d2de3442738c9fce778a75dfbacbaf21ac5` |
| 17 | `theorem` | [mem_inter_of_mem_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/mem-inter-of-mem-of-mem.md) | 131 | `result-track:b41c1e48350517e770da18b865d72892c57fb93418a71c493c1f45d99137bbee` |
| 18 | `theorem` | [inter_subset_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/inter-subset-left.md) | 134 | `result-track:94bfa44a21276f580f90788b6e591c5109ccceb82f9d67150d4a02628f802c20` |
| 19 | `theorem` | [inter_subset_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/inter-subset-right.md) | 137 | `result-track:8a627afad71352b8ee42173376f2f81a3bde0c67a5b78cee358442f233f928bc` |
| 20 | `theorem` | [subset_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/subset-inter.md) | 139 | `result-track:02cb8d1c70acd7bd27d61dc35793e3026b0708948e4515be6c9926e904f57f64` |
| 21 | `theorem` | [inter_eq_nil_iff_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/inter-eq-nil-iff-disjoint.md) | 142 | `result-track:bdcc1c0ee2b2f8490cb59fa948e1342343da21f3458d03701561c933a1a8f4e7` |
| 22 | `theorem` | [forall_mem_inter_of_forall_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/forall-mem-inter-of-forall-left.md) | 148 | `result-track:1dbf5ef8c2051f55f93580875302b47be8eaff33e53a72e4ab45c5b667cee9f2` |
| 23 | `theorem` | [forall_mem_inter_of_forall_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/forall-mem-inter-of-forall-right.md) | 152 | `result-track:f11e2cb03628828867477c2baf8c9f75b8e3897ffd4c7e61c51c44baf55ffa13` |
| 24 | `theorem` | [inter_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/inter-reverse.md) | 157 | `result-track:353cebaef33a676d39c8238d4dc3fa06972ff6d8c58a910cf21230fd79ee9456` |
| 25 | `theorem` | [Subset.inter_eq_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/subset-inter-eq-left.md) | 160 | `result-track:a8baeda0c6681b39f9cc9857f790fc7e01ebf21f17312986150df0268c0f5f1c` |
| 26 | `theorem` | [nil_bagInter](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/nil-baginter.md) | 171 | `result-track:19acc09a88a62c3133c022db1f884fb092947204430cdb0b4275582e57cd444c` |
| 27 | `theorem` | [bagInter_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/baginter-nil.md) | 174 | `result-track:c826b49b8a085c71244fc9f61756cbaea1fd4d41681a43c3ab2d98e956105656` |
| 28 | `theorem` | [cons_bagInter_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/cons-baginter-of-pos.md) | 177 | `result-track:9dda800175c63381742726d597b513800fa7e7329981b84edcf090ac35a38cc5` |
| 29 | `theorem` | [cons_bagInter_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/cons-baginter-of-neg.md) | 184 | `result-track:9d5d43c5212b908dd39daaef0162f10dab0610565f5fa6da27a5261e63d86016` |
| 30 | `theorem` | [mem_bagInter](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/mem-baginter.md) | 190 | `result-track:79bbdc6f06ac87a7b4d880229ed0e991c9403c1d89975b6460a89b37816be1f5` |
| 31 | `theorem` | [count_bagInter](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/count-baginter.md) | 205 | `result-track:c4aa0ac9ea685f227c0fdc847796c23df71915258db9480e42f25c8dadf89062` |
| 32 | `theorem` | [bagInter_sublist_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/baginter-sublist-left.md) | 225 | `result-track:a22c6beb0bb1e23c432176c7a94c7be9923500e241682d78386b1513d186d829` |
| 33 | `theorem` | [bagInter_nil_iff_inter_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListLatticeNamespacedSubset.lean/declarations/baginter-nil-iff-inter-nil.md) | 233 | `result-track:eab3617c1287dae26a00823c9051f51bc4aa73bc06b8f4198f8dfcbf27f18d31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0e18724b77ba84444a1f4d59c7236f2f1c46828f7744ddf0255f3f3845ec061 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5e6a68dac9470e1f869949d7f2325025a055b7eddc950e8973ff4dfe4a7dc968.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5e6a68dac9470e1f869949d7f2325025a055b7eddc950e8973ff4dfe4a7dc968.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
