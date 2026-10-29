# Verification target: Minor Delete Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d690f7517aa541762634179246bb61611faf87d1",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d690f7517aa541762634179246bb61611faf87d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [delete](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete.md) | 59 | `declaration-track:2966694bb2f45662bbeafee6afc2784f99101da150c2aa5a64e91b8be3ab981f` |
| 2 | `lemma` | [delete_eq_restrict](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-eq-restrict.md) | 64 | `result-track:7fb5c475b5704a0c3439a03599284b10609889ce85aa31aa61619d99dff187ef` |
| 3 | `lemma` | [restrict_compl](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/restrict-compl.md) | 66 | `result-track:49107936d04b2f890dc2d4f401b90eb3057589a9d08b55fc3f8474943400c12b` |
| 4 | `lemma` | [delete_compl](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-compl.md) | 69 | `result-track:d9f80987a849833e490374d1dbea394eb43c4602e1bbc75d2b830c1a28220cab` |
| 5 | `lemma` | [delete_isRestriction](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-isrestriction.md) | 73 | `result-track:e5bd2b8d2a3ce18569138ec1b9307690308379288fb11e969f07502e29d22fc7` |
| 6 | `lemma` | [IsRestriction.exists_eq_delete](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/isrestriction-exists-eq-delete.md) | 76 | `result-track:644f1cd72900e735699a1b587f89a96deec2250016cefa8f83e6d923cb4d7643` |
| 7 | `lemma` | [isRestriction_iff_exists_eq_delete](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/isrestriction-iff-exists-eq-delete.md) | 79 | `result-track:725f9f8451f05ccf684be3d8446146fdf9538f210b30b88cd414d99df65cdc09` |
| 8 | `lemma` | [delete_ground](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-ground.md) | 83 | `result-track:56f828768b9a2c56f1fe16295f495a2cfb6ec023d81c28d807206c81325830ce` |
| 9 | `lemma` | [delete_subset_ground](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-subset-ground.md) | 86 | `result-track:955f194af9a2279e6729436d2bf324ebb1d5ffe6bc1e9b0be672d71a3b61094e` |
| 10 | `lemma` | [delete_eq_self_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-eq-self-iff.md) | 90 | `result-track:e0456aa175556e45c42604ed38f6e0a130dc33ab16616319236ec1a323a56fce` |
| 11 | `lemma` | [deleteElem_eq_self](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/deleteelem-eq-self.md) | 95 | `result-track:7cd0548c8749efe034aa78e7395a2f52e2f1657efb74e3a1672f1d7ce8713e55` |
| 12 | `lemma` | [delete_delete](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-delete.md) | 99 | `result-track:2720483e06d7dc8b34d3fc0b41cc30a2209a4ce1e076089fc6b464854d1ce494` |
| 13 | `lemma` | [delete_comm](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-comm.md) | 104 | `result-track:b432297acc9354cbe7e66117ab87d578405c67dbdbf932cc11c36aec2fb6676e` |
| 14 | `lemma` | [delete_inter_ground_eq](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-inter-ground-eq.md) | 107 | `result-track:e07da18979a7a55baa5a32a6d591a9bb0fcb0fcd5109442ba3b4f945f24b2f6c` |
| 15 | `lemma` | [delete_eq_delete_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-eq-delete-iff.md) | 110 | `result-track:b6af7d13b76689c1bc044aa739fbfc3aa9e4ba772a6b31b55e0b833836383eec` |
| 16 | `lemma` | [delete_empty](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-empty.md) | 118 | `result-track:4b61b57ea45c0d6595449e2b20bba98a602b17d87855848d1c732328d93daeb8` |
| 17 | `lemma` | [delete_delete_eq_delete_sdiff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-delete-eq-delete-sdiff.md) | 122 | `result-track:ef5d40f31bb039d7b648a30363a9193ffe0d90a12f848b8975841921ce766097` |
| 18 | `lemma` | [IsRestriction.restrict_delete_of_disjoint](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/isrestriction-restrict-delete-of-disjoint.md) | 129 | `result-track:9d8637218618381c677f89dc86e3cc672dd1795f79987e1efc83cc644e1586c2` |
| 19 | `lemma` | [IsRestriction.isRestriction_deleteElem](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/isrestriction-isrestriction-deleteelem.md) | 136 | `result-track:a3b8e65866176917ee80af35ce2f23fc03ce103f09bcfb99754525f2c8078ec8` |
| 20 | `lemma` | [delete_indep_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-indep-iff.md) | 142 | `result-track:e9840f9d807d9187c79dd1b0120c97b1212409935b9af6cacef29a7efa5054a3` |
| 21 | `lemma` | [deleteElem_indep_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/deleteelem-indep-iff.md) | 146 | `result-track:9c424f1443974f209274aaacb9a53782952928cb5f3320d2de079353fc0d1ec9` |
| 22 | `lemma` | [Indep.of_delete](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/indep-of-delete.md) | 149 | `result-track:11eaa85fedc9b58a9281981edada5bb4d855e49cd08400b2973de00e247b3bf4` |
| 23 | `lemma` | [Indep.indep_delete_of_disjoint](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/indep-indep-delete-of-disjoint.md) | 152 | `result-track:533c06f1b4d36ee41142a447508c773d84cbe36098ef308e8a98ad8f37503528` |
| 24 | `lemma` | [indep_iff_delete_of_disjoint](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/indep-iff-delete-of-disjoint.md) | 155 | `result-track:65a7b0d5f82ab406577a00f25ace5d68149938434fc456c7bb147dfc078cef7a` |
| 25 | `lemma` | [delete_dep_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-dep-iff.md) | 159 | `result-track:e3e83b27b7f9447b2c92d19b7cd3565c70405c16faab9ddf05c84e623dca9d60` |
| 26 | `lemma` | [delete_isBase_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-isbase-iff.md) | 163 | `result-track:f9a3a0095997dc24d6cd00d81406510d7b3f0d25d82b95cab5c2a13051c33d95` |
| 27 | `lemma` | [delete_isBasis_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-isbasis-iff.md) | 167 | `result-track:3087210d6e30a3e6fb0556aaf500c1958c7620f08e7a4df9422365b645c772f6` |
| 28 | `lemma` | [delete_isBasis'_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-isbasis-iff-source-edition-2.md) | 172 | `result-track:fc1fb496397281f3ce24a35756ee484d708294521370db536911c063e205b42a` |
| 29 | `lemma` | [IsBasis.of_delete](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/isbasis-of-delete.md) | 178 | `result-track:dac6d3792c2b438c67f9643388921c2c3dfea14c75ab9f27da158b8d541ec5c3` |
| 30 | `lemma` | [IsBasis.delete](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/isbasis-delete.md) | 181 | `result-track:7598daa35ec5f3274fb967e2acd7f72fce262cdbe3b1c69aa3f7665f3dd12609` |
| 31 | `lemma` | [Coindep.delete_isBase_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/coindep-delete-isbase-iff.md) | 184 | `result-track:7a13c7d837bb2693f4a618b03f56efe41ce34d4750bedf5872db4c6ae4e07b1c` |
| 32 | `lemma` | [Coindep.delete_rankPos](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/coindep-delete-rankpos.md) | 196 | `result-track:42498131ca1da352fdbd129deca35ee857b2523045ad9767960640fb5ee4714b` |
| 33 | `lemma` | [Coindep.delete_spanning_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/coindep-delete-spanning-iff.md) | 200 | `result-track:428d35d1e3e24580909aba2819f2faa3679307c4fc2efb451389226305aa9dcf` |
| 34 | `lemma` | [delete_isLoop_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-isloop-iff.md) | 210 | `result-track:af7126dc48f11104adda5090ac0ef32fbe1631661c0e914d52cf63a9608f318d` |
| 35 | `lemma` | [delete_isNonloop_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-isnonloop-iff.md) | 214 | `result-track:edcdad303f071e6f685075105499b9b0b0d4ab7dcc5644485c440ea7d5ce0206` |
| 36 | `lemma` | [IsNonloop.of_delete](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/isnonloop-of-delete.md) | 217 | `result-track:d934d276b7a99450be47e1c39976ae8e702f4eb2dc277947afcc7533e91ba6ab` |
| 37 | `lemma` | [isNonloop_iff_delete_of_notMem](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/isnonloop-iff-delete-of-notmem.md) | 220 | `result-track:18c7531370fa8ba4289707a447d43fcb1c9408c8070b3d5ecf3250bce6d90034` |
| 38 | `lemma` | [delete_loops_eq_removeLoops](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-loops-eq-removeloops.md) | 223 | `result-track:1e8d5dc0511e250e87a56fcc86df85695f776d79be037ba0fd49933a8a8e0ce9` |
| 39 | `lemma` | [delete_isCircuit_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-iscircuit-iff.md) | 227 | `result-track:b4389366f7c6f04ec6958b0a116e9837294e9bcd8191770da9ea0f2fb075b018` |
| 40 | `lemma` | [IsCircuit.of_delete](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/iscircuit-of-delete.md) | 233 | `result-track:cecd02cb4771dfead0f4ed954ada691ba12b26311562b8539b180dc5d66485d4` |
| 41 | `lemma` | [circuit_iff_delete_of_disjoint](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/circuit-iff-delete-of-disjoint.md) | 236 | `result-track:cb39090bdb53fbcb4abf549e0ac56f7dc93a943ebad0a7bf29ed77a39322ea1d` |
| 42 | `lemma` | [delete_closure_eq](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-closure-eq.md) | 241 | `result-track:d488f4733b0f87197e3302aa8392cc0c61b94dc5cc8a55fad9709ca1741e2037` |
| 43 | `lemma` | [delete_closure_eq_of_disjoint](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-closure-eq-of-disjoint.md) | 248 | `result-track:b60af814dccc979332b34f9df93c5ac085c82848d472b69328811d726990df62` |
| 44 | `lemma` | [delete_loops_eq](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-loops-eq.md) | 253 | `result-track:97a67d7de61d2dbd59516f8d3271e3695b8dbb238519bc7d7d29b2f74e2f20d0` |
| 45 | `lemma` | [delete_isColoop_iff](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-iscoloop-iff.md) | 256 | `result-track:fad13ebcde6d423ac4b40d67c8018c0b2ebde1229b0032859314d6d4d16dd261` |
| 46 | `instance` | [delete_finitary](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-finitary.md) | 263 | `declaration-track:aba4fb923bb7140fa7e6c58d011933c4e991cb77c8ff0583e4dbcd4709e38309` |
| 47 | `instance` | [delete_finite](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-finite.md) | 266 | `declaration-track:76851540f722cf308a1e012f63ccd78ab836f0576dfdfdfd38021a68b2cc9ef5` |
| 48 | `instance` | [delete_rankFinite](../../../../Combinatorics/MinorDeleteNamespacedPublic.lean/declarations/delete-rankfinite.md) | 269 | `declaration-track:c2c5b6a6f5e5a357f8c495212777932deb1c8f7d62a85672873675c6a95db298` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2705fe145892447089e33561c87311c67aac10d9dd4b819c3189f1054a7bd79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Delete/Variant55d80f73706f0ac0a2301626c95d420c2d0d71e9a850f97a5527f6d4fcfb854e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
