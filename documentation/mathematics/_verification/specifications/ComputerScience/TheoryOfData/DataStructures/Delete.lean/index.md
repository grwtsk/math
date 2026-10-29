# Verification target: Delete

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a83a94dd0d09b80c8821c02a1a61e26682937cab",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Delete/Variant293da71aa0178f5d37a204111515e0a80a9fd7ba837a917824f6898acb2e6226.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a83a94dd0d09b80c8821c02a1a61e26682937cab`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Delete/Variant293da71aa0178f5d37a204111515e0a80a9fd7ba837a917824f6898acb2e6226.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Delete/Variant293da71aa0178f5d37a204111515e0a80a9fd7ba837a917824f6898acb2e6226.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Loop` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete.md) | 47 | `declaration-track:0f34882e7a7a0a61c07d682c8dad2af669ed9b582b4b389bcb4bcc07ad69be1b` |
| 2 | `lemma` | [delete_eq_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-eq-restrict.md) | 52 | `result-track:278e268a40fe11636cee44bc7ad564e407ef07e45beea6dce225047983222397` |
| 3 | `lemma` | [restrict_compl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/restrict-compl.md) | 54 | `result-track:cacebaa96117a0a4fb55b4f553c6db35ec862de93acfd098064d768004a6dba1` |
| 4 | `lemma` | [delete_compl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-compl.md) | 57 | `result-track:5770a693522f9fee3551b1bdf34aa6e44aa18f091aed8b5de9b3843880fc5db2` |
| 5 | `lemma` | [delete_isRestriction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-isrestriction.md) | 61 | `result-track:d8b356e1b47499ea353e1394e6f297ceaa1d664f7fca721fa80a88b1a32f3b17` |
| 6 | `lemma` | [IsRestriction.exists_eq_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/isrestriction-exists-eq-delete.md) | 64 | `result-track:f5eeb65132a75fee7dbd8818a2aa8e1dd9ac0cdd8ee1fe2a51c9df6778183460` |
| 7 | `lemma` | [isRestriction_iff_exists_eq_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/isrestriction-iff-exists-eq-delete.md) | 67 | `result-track:aea498bf7a978c4bde9bb692dadb877f2a30e47d5ba862add99c63e81026da2b` |
| 8 | `lemma` | [delete_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-ground.md) | 71 | `result-track:91a4da5391ba605573aa8b343e3f05ed54c3219eb698b1a3f8e852318b44b488` |
| 9 | `lemma` | [delete_subset_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-subset-ground.md) | 74 | `result-track:9e27f895966d4b59812ef0af17d0b675acd7d27d5ad7b9a286b552040a842135` |
| 10 | `lemma` | [delete_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-eq-self-iff.md) | 78 | `result-track:d0a9cf49616079710f070c36efda7423be84fd29cbfd33a2140e01a4bbb08b3b` |
| 11 | `lemma` | [deleteElem_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/deleteelem-eq-self.md) | 83 | `result-track:58ba70fd9d0e1b2c46ecbea615a56b465fa08b25bccaec9503adcb2d6b595990` |
| 12 | `lemma` | [delete_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-delete.md) | 87 | `result-track:8d1145c7f5dfa0a163245bfcdd66a792376876a4b6dc625a9bc43c3c62806128` |
| 13 | `lemma` | [delete_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-comm.md) | 92 | `result-track:9cd4415ced336f287d1ed2f96962e4cffe15ffe55bc6826923253f2fe0708616` |
| 14 | `lemma` | [delete_inter_ground_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-inter-ground-eq.md) | 95 | `result-track:4394100b4010ea80aef039866708d50d9456aab7b1dae82f86992b4e1f885c14` |
| 15 | `lemma` | [delete_eq_delete_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-eq-delete-iff.md) | 98 | `result-track:49f8c2665df79fb142eba15b9e60b9ebb8cdee73ad1a42870b274940bda6a9aa` |
| 16 | `lemma` | [delete_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-empty.md) | 106 | `result-track:d47fc7ecd06cc1c6d541b311be92627f14536e6701344f0ae884ba042b4da056` |
| 17 | `lemma` | [delete_delete_eq_delete_diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-delete-eq-delete-diff.md) | 110 | `result-track:b65585f95119b446c67f411917fae71108a5078a73daa00fa1203ef574407127` |
| 18 | `lemma` | [IsRestriction.restrict_delete_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/isrestriction-restrict-delete-of-disjoint.md) | 114 | `result-track:4c727baf34c978caedc6964a63f538efce1b761ba376013558c68fc9c459a949` |
| 19 | `lemma` | [IsRestriction.isRestriction_deleteElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/isrestriction-isrestriction-deleteelem.md) | 121 | `result-track:fefd4af26410423291122ca89f63016ebfc4c6a35d1b5f4a31d0292d0799c5ee` |
| 20 | `lemma` | [delete_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-indep-iff.md) | 127 | `result-track:ff9f38ee5c110714a8b1f8e089dcb642c67dd501e0b9c7dae15ef4cf4222ecba` |
| 21 | `lemma` | [deleteElem_indep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/deleteelem-indep-iff.md) | 131 | `result-track:785ed2dab9cf54c8784a0e671f5dfb3f70acfb0a9069887b25f4e42f664e2489` |
| 22 | `lemma` | [Indep.of_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/indep-of-delete.md) | 134 | `result-track:9bcad36eae83430bade2d37d1bb88090439ff71aa399e7c2c04085da599e6762` |
| 23 | `lemma` | [Indep.indep_delete_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/indep-indep-delete-of-disjoint.md) | 137 | `result-track:32c8e87a625744b01935c134dd4dc19f5b2c1a6918d2df552418d2e84e5be1fb` |
| 24 | `lemma` | [indep_iff_delete_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/indep-iff-delete-of-disjoint.md) | 140 | `result-track:be7fb9e2973c01ce0f61cc5da1b7ca5d24f6ce58c0e11a76a92c4931a3739a4f` |
| 25 | `lemma` | [delete_dep_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-dep-iff.md) | 144 | `result-track:e6289d23df56e7c48802d7f193e8afe1236c20a7118ad46ed6454b1698ca2b1d` |
| 26 | `lemma` | [delete_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-isbase-iff.md) | 148 | `result-track:cd43d0a9b1c2a202891a8f336649159b208cae75e16c510844f9310d8ae78398` |
| 27 | `lemma` | [delete_isBasis_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-isbasis-iff.md) | 152 | `result-track:12c07ae5bde0d7ca47bf278bd98fac389824552fbef3fd71e9985cd55b2e0b68` |
| 28 | `lemma` | [delete_isBasis'_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-isbasis-iff-source-edition-2.md) | 157 | `result-track:e1768e2d583a1fb007c0e3df1a17000a3191408cc4e4c130fc5dea6eb404d2aa` |
| 29 | `lemma` | [IsBasis.of_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/isbasis-of-delete.md) | 163 | `result-track:f963bd2290178b52ac3ded13c50479d62a54b8172882eeab22b2855391cbcda5` |
| 30 | `lemma` | [IsBasis.delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/isbasis-delete.md) | 166 | `result-track:059f47faca05b67379ab62a5a2a9c428f5588d976534f47ad7c485e4fddb140a` |
| 31 | `lemma` | [Coindep.delete_isBase_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/coindep-delete-isbase-iff.md) | 169 | `result-track:7a0faa545fd16296487bd1895b1307292837124e68d5371b9278242d5c0a81b9` |
| 32 | `lemma` | [Coindep.delete_rankPos](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/coindep-delete-rankpos.md) | 181 | `result-track:f42cf28643fea3f9b58dbf1fc5dfb3b7347ee017e213eaed302e248ee75fa087` |
| 33 | `lemma` | [Coindep.delete_spanning_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/coindep-delete-spanning-iff.md) | 185 | `result-track:f4b1c888b5b066d05215423aa5b4801fd5466834070197d063ad44b29a149a54` |
| 34 | `lemma` | [delete_isLoop_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-isloop-iff.md) | 195 | `result-track:d7993b94744f2fe0c5ac3e3b8082d5dde7d00a132bcff8def5a205e672ea1c84` |
| 35 | `lemma` | [delete_isNonloop_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-isnonloop-iff.md) | 199 | `result-track:f9acdd47dbd3f82f8c4680797cc152162eb822560cc6da44a1091c42a60d15ef` |
| 36 | `lemma` | [IsNonloop.of_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/isnonloop-of-delete.md) | 202 | `result-track:865691a75174093df46bb4c22294fbfe7ef8c22307cf770ca917bbb4b1f378d7` |
| 37 | `lemma` | [isNonloop_iff_delete_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/isnonloop-iff-delete-of-notmem.md) | 205 | `result-track:536841425b534e7ba5b43025f7bf7fa2c9768f277a92a03e2384a77af95284cb` |
| 38 | `lemma` | [delete_loops_eq_removeLoops](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-loops-eq-removeloops.md) | 211 | `result-track:8770e430529d2a3ec11b499dcdce2cf51c06982c02ecb8c54857c4dcd7af7844` |
| 39 | `lemma` | [delete_isCircuit_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-iscircuit-iff.md) | 215 | `result-track:712ba00e52937e75ed7c47768597b2ad11a471eeff043fb29be6ac043587230d` |
| 40 | `lemma` | [IsCircuit.of_delete](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/iscircuit-of-delete.md) | 221 | `result-track:ae404c4f9944f7d9c12612fbe11954f05adecc6f8f770f6910b273e18ebe4b3b` |
| 41 | `lemma` | [circuit_iff_delete_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/circuit-iff-delete-of-disjoint.md) | 224 | `result-track:34f8e571e2fde696680802b161da06a3356850bf256b383e9269726138a7bba5` |
| 42 | `lemma` | [delete_closure_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-closure-eq.md) | 229 | `result-track:6a61d25236122c64b09e2a13286285722c2bb83a6f80f9ff8069c869741cb2f6` |
| 43 | `lemma` | [delete_closure_eq_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-closure-eq-of-disjoint.md) | 236 | `result-track:ab4e80280c508f7dd081288fce2dfb4302ec18535ffebe17fb4e043e946acd1e` |
| 44 | `lemma` | [delete_loops_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-loops-eq.md) | 241 | `result-track:94d67441da21a34c411387d402ab5b564b38ebf55775c41df9f31d7d2bd2c7cf` |
| 45 | `lemma` | [delete_isColoop_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-iscoloop-iff.md) | 244 | `result-track:bbcea0b491dfac0192c90655b5d91e29b5a6ce18ecd132b6edd0462a08330b6b` |
| 46 | `instance` | [delete_finitary](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-finitary.md) | 251 | `declaration-track:77a21e5bf6035d19b7950e43f1745c3dde4c4d0bf42e0e8efe0e420f304c7de5` |
| 47 | `instance` | [delete_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-finite.md) | 254 | `declaration-track:5d7c520d0cefcb008d730d494f3fa56dd045d3230fe428cee944bee143bdc698` |
| 48 | `instance` | [delete_rankFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Delete.lean/declarations/delete-rankfinite.md) | 257 | `declaration-track:11b64d1fd2c30fc577fa9c6c0bb73dbfd02c30176b92aa3f1858fcee379503e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09f02b2ac5f7f040e71d68ecd3e715d9b585378f95a4c36a63e7deae616d6666 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Delete/Variant293da71aa0178f5d37a204111515e0a80a9fd7ba837a917824f6898acb2e6226.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Delete/Variant293da71aa0178f5d37a204111515e0a80a9fd7ba837a917824f6898acb2e6226.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
