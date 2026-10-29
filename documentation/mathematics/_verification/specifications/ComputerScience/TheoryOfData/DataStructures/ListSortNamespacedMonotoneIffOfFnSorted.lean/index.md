# Verification target: List Sort Namespaced Monotone Iff Of Fn Sorted

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88d5ca86dfe9b54fcca4288c310b1352d5d55881",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88d5ca86dfe9b54fcca4288c310b1352d5d55881`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.OfFn` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted.md) | 45 | `declaration-track:faecb44881a6f047e0750f49e295aed0cecf5022edfdd65c440f155096ecf710` |
| 2 | `instance` | [decidableSorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/decidablesorted.md) | 49 | `declaration-track:f29cb37ad93ff0cc1cb88b3ab518736797723a42ffd5a683bfe4e454b01a4842` |
| 3 | `theorem` | [Sorted.le_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-le-of-lt.md) | 53 | `result-track:a5fa3c57830d91e01e300cbaf7e0f6240d8b50660bd0b043005dca61d774e20b` |
| 4 | `theorem` | [Sorted.lt_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-lt-of-le.md) | 57 | `result-track:4da0578ce6550336b2ea2b135717f0147f9083d3955251b617f755ab7f88b7e3` |
| 5 | `theorem` | [sorted_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-nil.md) | 62 | `result-track:5847130bafaa949c0751abbada0ac9eed389acf81906224b2d6533d0cf3e8a7d` |
| 6 | `theorem` | [Sorted.of_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-of-cons.md) | 66 | `result-track:38f3db5065a57c39bf7993ab4073554567cd50f806245dee56901dc5586e8461` |
| 7 | `theorem` | [Sorted.tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-tail.md) | 70 | `result-track:15ef46a09e421f26d8df58d7d132fd52c118e2cf40dc7c9a0c93be4c960ada54` |
| 8 | `theorem` | [rel_of_sorted_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/rel-of-sorted-cons.md) | 74 | `result-track:eda3ab201bfcedfd1225624c0925c5b027aefbb0c1f51df509e1422e56e28ca7` |
| 9 | `theorem` | [sorted_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-cons.md) | 79 | `result-track:025646e67c91e5c68d2b77fc4a96356bdff23cd73e8e9d1eecd5e5051c62ae45` |
| 10 | `theorem` | [Sorted.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-nodup.md) | 83 | `result-track:b38f0517f3470efd948bf688f26e2649edaa95453126de4be5e9615b1b3b777a` |
| 11 | `theorem` | [eq_of_perm_of_sorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/eq-of-perm-of-sorted.md) | 88 | `result-track:96a1ee81356bf88de18056387737e82faa46b419ae2f2e5313999fd2bba206bd` |
| 12 | `theorem` | [sublist_of_subperm_of_sorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sublist-of-subperm-of-sorted.md) | 107 | `result-track:37c1e3bd64db2a7f285284940c498c12e8c262d5aa5c2ed3a41c03f70e62fcc7` |
| 13 | `theorem` | [sorted_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-singleton.md) | 114 | `result-track:1552b77748336fc717ab1049010e4233ad7df02f55ea2e56e85a472c04c63f19` |
| 14 | `theorem` | [Sorted.rel_get_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-rel-get-of-lt.md) | 118 | `result-track:55107bbba8240f1ecff9b7c1e30b7d526b8d66c20f3fa568d1ccb6809183cf0e` |
| 15 | `theorem` | [Sorted.rel_nthLe_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-rel-nthle-of-lt.md) | 122 | `result-track:9e1ce27584d1512f68851cde7b3093223ea002122670f80457543b20dd676d22` |
| 16 | `theorem` | [Sorted.rel_get_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-rel-get-of-le.md) | 127 | `result-track:0e5f3a2d84c396eb3e138e47867550e81fb784c81af1241c1a42556cd2f7eed5` |
| 17 | `theorem` | [Sorted.rel_nthLe_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-rel-nthle-of-le.md) | 132 | `result-track:c2066a113e4fabaa88e353cec4b5d5400a0ca056255267419145a318f3ad11fa` |
| 18 | `theorem` | [Sorted.rel_of_mem_take_of_mem_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-rel-of-mem-take-of-mem-drop.md) | 137 | `result-track:ba6abcb7a041b49694540afed0f5e088859ccd75e4b12c99f483c33fc51a886b` |
| 19 | `theorem` | [sorted_ofFn_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-offn-iff.md) | 152 | `result-track:44a394f2592552ba2af372c2d3488f4e4e16949500fe197b679a4af3b92117f2` |
| 20 | `theorem` | [sorted_lt_ofFn_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-lt-offn-iff.md) | 158 | `result-track:76a20f25034ace2b16da56ca42aa61b00b015cb27b519f4e9ee142c024a859d7` |
| 21 | `theorem` | [sorted_le_ofFn_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-le-offn-iff.md) | 161 | `result-track:d9e5ee8530feaf769c2928b65cd69974208695a8421049d15d702750df72aa17` |
| 22 | `theorem` | [monotone_iff_ofFn_sorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/monotone-iff-offn-sorted.md) | 166 | `result-track:d54944b0d4ae8a85f0165a27749b108af59beb0b24243cc99e0e7972b8367835` |
| 23 | `def` | [orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/orderedinsert.md) | 189 | `declaration-track:8dbcecdd7378d544e272c36e0e856786b80f131a65971f5e1a6c9c0c73777ec2` |
| 24 | `def` | [insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/insertionsort.md) | 196 | `declaration-track:3918a7a9fba0af79aede0eeab4f091970542190ad93f1ba7410c9e4aea5363d2` |
| 25 | `theorem` | [orderedInsert_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/orderedinsert-nil.md) | 202 | `result-track:17242c20d8d71c2bf5d48fc0d3671d793434cb83f7a909218d9cd4b1a97f9c89` |
| 26 | `theorem` | [orderedInsert_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/orderedinsert-length.md) | 206 | `result-track:680457ad722f4deab31af43b86b468bea3d90010fdd550c17ee5ebed0e925391` |
| 27 | `theorem` | [orderedInsert_eq_take_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/orderedinsert-eq-take-drop.md) | 214 | `result-track:f0430cdcccd9d3f6542a52ffea2f021968cf57372e8b09668b37beb50f80e2f1` |
| 28 | `theorem` | [insertionSort_cons_eq_take_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/insertionsort-cons-eq-take-drop.md) | 223 | `result-track:8ceefe1d5c0067e233038f7d0aee6f1c0932de62dc4d644baa5da4b8c8822a20` |
| 29 | `theorem` | [perm_orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/perm-orderedinsert.md) | 234 | `result-track:5861867aeef8da658dcb689f8eae7a510d5ececa033fe84070dd715ddb4ab67f` |
| 30 | `theorem` | [orderedInsert_count](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/orderedinsert-count.md) | 242 | `result-track:480b4f56c5d0ffed8c27ff0d8bf38d42da21c4213649c47fa69d393789e9eb0e` |
| 31 | `theorem` | [perm_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/perm-insertionsort.md) | 247 | `result-track:4095ad0c210dce8af1c01a456413daa075062c6c03c5a77c15b9b872e09f30be` |
| 32 | `theorem` | [Sorted.insertionSort_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-insertionsort-eq.md) | 257 | `result-track:f057a6b37f79a2d9d801174646c797d27e8f8a4abfeff9337aad4911d20340c7` |
| 33 | `theorem` | [Sorted.orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-orderedinsert.md) | 269 | `result-track:c887c4ecff54ec88793b3bbffa761f1d8254acf6eb713a7cac03d0a16ff9dcc9` |
| 34 | `theorem` | [sorted_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-insertionsort.md) | 289 | `result-track:9550b56a5feb33a5ffff026945a847cb7cd191e39f1d028d0e322f570833331c` |
| 35 | `def` | [split](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/split.md) | 311 | `declaration-track:483b2c7ec9ddec69c69e4c8fe4a5f06a88879197eec685fc5c3d2ff625eb711e` |
| 36 | `theorem` | [split_cons_of_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/split-cons-of-eq.md) | 318 | `result-track:42c9e67fbf57c860110d416427776c306f120beb854698c4ab974ae1b5584cc6` |
| 37 | `theorem` | [length_split_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/length-split-le.md) | 322 | `result-track:6a3511363f0e075e2a848f1aa307b6f6a0e7899885d0c84eb0c5d59c1bdd45c7` |
| 38 | `theorem` | [length_split_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/length-split-lt.md) | 332 | `result-track:e730461dc0bb47249f83a3695e299a006993d87c86ba20a999296065473dc2e5` |
| 39 | `theorem` | [perm_split](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/perm-split.md) | 340 | `result-track:f73f77485ba340daac9bf0f8a591ff72df8412b98f433deb8f67ece81c007dfb` |
| 40 | `def` | [merge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/merge.md) | 351 | `declaration-track:f6213bea5a359712a50d1e566d9e1d92fd26964efb9818bc71b35665e65989e2` |
| 41 | `def` | [mergeSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/mergesort.md) | 359 | `declaration-track:c40304e8e39f7ecfdc38e6013d1b866602a2f225bcaf944474c65b4f360212ee` |
| 42 | `theorem` | [mergeSort_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/mergesort-cons-cons.md) | 374 | `result-track:313f9d9ef3868537ea861aaa68c64800e1aab8051e56ae27e65c4ddfd5d3cf62` |
| 43 | `theorem` | [perm_merge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/perm-merge.md) | 381 | `result-track:feb6dbb2c12f3f95d4ca0c2b076ab76f13ed87149feca2f0efa3df4366d46452` |
| 44 | `theorem` | [perm_mergeSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/perm-mergesort.md) | 393 | `result-track:3bad6e9fdacadeb0e5958a9a65f58e7cf12d57ab21d2d73c1b780b3ba3978900` |
| 45 | `theorem` | [length_mergeSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/length-mergesort.md) | 407 | `result-track:6f9ab9fa7d576468f345bd64b22af6507872cd0bafd1e67cc65fa7d8914f2aeb` |
| 46 | `theorem` | [Sorted.merge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-merge.md) | 415 | `result-track:7c6b8fe9cba25606ae44c2b00189a6f2b92f4177d16e122f41a2a36ace67cbe7` |
| 47 | `theorem` | [sorted_mergeSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/sorted-mergesort.md) | 446 | `result-track:788fb65210a9cae089f5a91415abf5521ac4165a3e0c17d6f5e7d18752caeb6a` |
| 48 | `theorem` | [mergeSort_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/mergesort-eq-self.md) | 457 | `result-track:8c17a17b0ca5f7aa190df2a1329f2a4c1d1d44889a7c0397c59e7e4e56192925` |
| 49 | `theorem` | [mergeSort_eq_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/mergesort-eq-insertionsort.md) | 461 | `result-track:08db22c480b28633d75c2d24812a3eed9160de54591714f8d82cf5f95b48a2ae` |
| 50 | `theorem` | [mergeSort_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/mergesort-nil.md) | 472 | `result-track:997f5632255ed19847ff7371323389b99e91373027031809df5b6b43f912fcff` |
| 51 | `theorem` | [mergeSort_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortNamespacedMonotoneIffOfFnSorted.lean/declarations/mergesort-singleton.md) | 476 | `result-track:967ba0b3de3ef75523015bfc2cd8b3a83293e16fc9a377ed823391b23c894ffc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c7963cd979ddab0e0b029e20536c48fca5410154df0e9fc4d7d63ace905c575 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
