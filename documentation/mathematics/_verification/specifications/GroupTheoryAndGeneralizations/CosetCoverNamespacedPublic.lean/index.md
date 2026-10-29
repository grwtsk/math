# Verification target: Coset Cover Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8efd95c175269d3b22732de06f7c23209f08a3de",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variant91888c9246e6329609dbd2b85fc09f35919870d8ed8f13986c31204b6fc735a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8efd95c175269d3b22732de06f7c23209f08a3de`.

Source path: `GRWTSK/Topology/GeneralTopology/CosetCover/Variant91888c9246e6329609dbd2b85fc09f35919870d8ed8f13986c31204b6fc735a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CosetCover/Variant91888c9246e6329609dbd2b85fc09f35919870d8ed8f13986c31204b6fc735a6.lean.json)

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
| 1 | `theorem` | [exists_leftTransversal_of_FiniteIndex](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/exists-lefttransversal-of-finiteindex.md) | 68 | `result-track:49b66b1f02b63f6ef2f37769a85e658264431053f1da63d2bc941ff1444aecb4` |
| 2 | `theorem` | [leftCoset_cover_const_iff_surjOn](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/leftcoset-cover-const-iff-surjon.md) | 88 | `result-track:e803700229e533204d6751f8e137e6ebe95770d23c90a0e824d5af1ef142fe96` |
| 3 | `theorem` | [finiteIndex_of_leftCoset_cover_const](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/finiteindex-of-leftcoset-cover-const.md) | 100 | `result-track:e09947297dcfd0157674a60638fedec7faf040a143d3a1de97365333d7c70390` |
| 4 | `theorem` | [index_le_of_leftCoset_cover_const](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/index-le-of-leftcoset-cover-const.md) | 106 | `result-track:bc22c4f509a900c2eea531d56f4ef8cbb084a458fc28d0f5852b7a3e9fe4ea48` |
| 5 | `theorem` | [pairwiseDisjoint_leftCoset_cover_const_of_index_eq](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/pairwisedisjoint-leftcoset-cover-const-of-index-eq.md) | 114 | `result-track:3af83c07d1b2684bf380a0d1acfe1eb2ded3343aa6f9f25c3dc627c3b4c382eb` |
| 6 | `theorem` | [exists_finiteIndex_of_leftCoset_cover_aux](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/exists-finiteindex-of-leftcoset-cover-aux.md) | 142 | `result-track:8f388e937e15af6078381244c62aaa0ea808a8aefb4e683081533978a3da1c9a` |
| 7 | `theorem` | [exists_finiteIndex_of_leftCoset_cover](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/exists-finiteindex-of-leftcoset-cover.md) | 209 | `result-track:224f2abc51dd5964eed951af39612837dfe625963e40cefa5d3db347d13f0fd7` |
| 8 | `theorem` | [leftCoset_cover_filter_FiniteIndex_aux](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/leftcoset-cover-filter-finiteindex-aux.md) | 224 | `result-track:8ba44495ab41bb32ee2a92540c4ce26a38ce740638e5c06e320d545966de4430` |
| 9 | `theorem` | [leftCoset_cover_filter_FiniteIndex](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/leftcoset-cover-filter-finiteindex.md) | 323 | `result-track:0d69797c0fb2118d9b2e7fe0ef4df12c8e3a14c76f96fcd8617ab609e8bca319` |
| 10 | `theorem` | [one_le_sum_inv_index_of_leftCoset_cover](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/one-le-sum-inv-index-of-leftcoset-cover.md) | 333 | `result-track:5583b7fdfbca5893c17f6248735e12161154cbfc4cb965817726c08828b5fb5d` |
| 11 | `theorem` | [pairwiseDisjoint_leftCoset_cover_of_sum_inv_index_eq_one](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/pairwisedisjoint-leftcoset-cover-of-sum-inv-index-eq-one.md) | 344 | `result-track:bb14cc48a0f72210bf51c5a190554df1c88a091455875d32681559a816b4becd` |
| 12 | `theorem` | [exists_index_le_card_of_leftCoset_cover](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/exists-index-le-card-of-leftcoset-cover.md) | 357 | `result-track:eb4979b5ed9e418a66f3193bec803ba70e42f9683ec4e71a20e15c1a99acbeb0` |
| 13 | `theorem` | [Submodule.exists_finiteIndex_of_cover](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/submodule-exists-finiteindex-of-cover.md) | 383 | `result-track:229105d843706b25124cce703311f6ab36b6545e54cf044f740dc1b05ddca8a2` |
| 14 | `theorem` | [Subspace.biUnion_ne_univ_of_top_notMem](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/subspace-biunion-ne-univ-of-top-notmem.md) | 397 | `result-track:faad77c5f5c96f726ff9a0cf84826f263d1c453f9ceadf52d485e2a9355d2b29` |
| 15 | `theorem` | [Subspace.top_mem_of_biUnion_eq_univ](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/subspace-top-mem-of-biunion-eq-univ.md) | 406 | `result-track:a69364a9ef9e43665fbf7cf762ce02eba9d49f7ec30e1a0e5f72b794e1c5e7e6` |
| 16 | `theorem` | [Subspace.exists_eq_top_of_iUnion_eq_univ](../../../../GroupTheoryAndGeneralizations/CosetCoverNamespacedPublic.lean/declarations/subspace-exists-eq-top-of-iunion-eq-univ.md) | 411 | `result-track:8c56a766bf214a501736bcfdd858e221173947cfe4fa1fab9e5f121793b97308` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d098ba4b5e202c39f748c52f095ce85d24fed2e28159f5e766c0cabdef3e62bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CosetCover/Variant91888c9246e6329609dbd2b85fc09f35919870d8ed8f13986c31204b6fc735a6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CosetCover/Variant91888c9246e6329609dbd2b85fc09f35919870d8ed8f13986c31204b6fc735a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
