# Verification target: Edge Cut Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379c34a49c2c39672466707c06ea40ec343fef2e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379c34a49c2c39672466707c06ea40ec343fef2e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean.json)

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
| 1 | `def` | [edgeCut](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/edgecut.md) | 44 | `declaration-track:09329d990d0092147ebcd486ef982cc969d978df28c2ebc13e65d3ac45d918b2` |
| 2 | `lemma` | [mem_edgeCut_iff](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/mem-edgecut-iff.md) | 47 | `result-track:cc21f83feeed5791adc035813fe1e36964c60326b81e2b03b3a62142d7cc855f` |
| 3 | `lemma` | [IsLink.mem_edgeCut_iff](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/islink-mem-edgecut-iff.md) | 49 | `result-track:0c44106750512a0236dc8898e2ac404257f829548e7ada627f2a439e7a7807c4` |
| 4 | `lemma` | [edgeCut_subset_edgeSet](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/edgecut-subset-edgeset.md) | 54 | `result-track:45bbefae03321a04dfd25c5033b0e8b0457a2d3ac60c7d7d507d62a9aedf3992` |
| 5 | `lemma` | [edgeCut_eq_empty_iff](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/edgecut-eq-empty-iff.md) | 57 | `result-track:70c844d8ae2c96eb007124985e8a18cf506a9b6e36ebe407518fd431f05e031a` |
| 6 | `lemma` | [edgeCut_vertexSet_diff](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/edgecut-vertexset-diff.md) | 66 | `result-track:8296a2ef968094de446ddbc4183e25798fcb302039eb55a5c7c27ea164dd54cd` |
| 7 | `lemma` | [IsSubgraph.edgeCut_eq_inter](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/issubgraph-edgecut-eq-inter.md) | 69 | `result-track:d62c9021f8d552f1226de5c28379cdc01bd695ba22e9991ab2b334b599b18b27` |
| 8 | `lemma` | [edgeCut_symmDiff](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/edgecut-symmdiff.md) | 73 | `result-track:ea783db8f486acab6b87e19624d525e11a45ebb12539110100254084dfddbd89` |
| 9 | `lemma` | [IsClosedSubgraph.edgeCut_subset_edgeSet](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isclosedsubgraph-edgecut-subset-edgeset.md) | 80 | `result-track:013b737f68e2f9932c0e38eb65d8e754b103b22dbc5df5f9a3e1e10582c6ef57` |
| 10 | `def` | [IsEdgeCut](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut.md) | 90 | `declaration-track:6ad1b3cfa6680f7eb3e685ff0d3a0b69be5702568bab6398242cd13524039d99` |
| 11 | `lemma` | [IsEdgeCut.exists_edgeCut](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut-exists-edgecut.md) | 92 | `result-track:edf28c00895e168e5d7425aa249122d76011abde57db4d78ac4373f452d44f44` |
| 12 | `lemma` | [IsEdgeCut.exists_of_isLink](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut-exists-of-islink.md) | 96 | `result-track:b587b795a3ca89e94120feac48eb340ca60954dcc527369ce90082e66bd13bde` |
| 13 | `lemma` | [IsEdgeCut.subset_edgeSet](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut-subset-edgeset.md) | 101 | `result-track:a2195bec0a4966c5633845ac9328565a9965aebd88a7e329fe4cb943af1fd22e` |
| 14 | `lemma` | [IsEdgeCut.symmDiff](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut-symmdiff.md) | 105 | `result-track:41e98f52716032127c4e0b1963ef55f7b8c037ce578ce0f69bce1a7484267470` |
| 15 | `lemma` | [IsEdgeCut.right_of_symmDiff](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut-right-of-symmdiff.md) | 112 | `result-track:8564f3f6bf03439b3611fb2c53225b0e2098b2cbc034cf8e1c6a225c9ac988d3` |
| 16 | `lemma` | [IsEdgeCut.left_of_symmDiff](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut-left-of-symmdiff.md) | 116 | `result-track:82f2bb3b11b290a9044a1f3c9ea251a0638dae3dc98013f6c8fe602740a876a7` |
| 17 | `lemma` | [IsEdgeCut.inter_edgeSet_of_le](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut-inter-edgeset-of-le.md) | 119 | `result-track:f377abf36ec1e49d0abd014d64ef0467daa0b62bee49fa42a579e85ae0dc52f9` |
| 18 | `lemma` | [IsEdgeCut.anti_of_subset](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut-anti-of-subset.md) | 125 | `result-track:3106b597beeecdcbb8b1abbf45bee772858084ddf44d2232053e0f2636a1f7fc` |
| 19 | `lemma` | [IsEdgeCut.of_isClosedSubgraph](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isedgecut-of-isclosedsubgraph.md) | 130 | `result-track:b2601118be9f15cf96cae74b0a5a24b09b6ef240502f712061fcdffaf4ab938b` |
| 20 | `def` | [IsBridge](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbridge.md) | 148 | `declaration-track:30faa73d1e46fc3f9c0e469dc063bd453ad6e8bafe0c12dca420bfb32a5ed236` |
| 21 | `lemma` | [IsBridge.isEdgeCut_singleton](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbridge-isedgecut-singleton.md) | 150 | `result-track:3a7a06d5d136c93f75aa8f591b3cb0a39c6a6e0d1dc531a00e47c478ac5212f8` |
| 22 | `lemma` | [IsBridge.mem_edgeSet](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbridge-mem-edgeset.md) | 153 | `result-track:fe780e6b094b9aa6e1d71a8367bcc49129c7aafede160676517308867faf4eb0` |
| 23 | `lemma` | [IsBridge.anti_of_mem](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbridge-anti-of-mem.md) | 157 | `result-track:4c8389e31de24c6d38375260137e0f97a5940245f8a7bded39519ac48e22517b` |
| 24 | `lemma` | [IsBridge.of_isClosedSubgraph](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbridge-of-isclosedsubgraph.md) | 160 | `result-track:0eff346d533050a0993f78a9c109284d2d06d8658ff6990e4ad1941e25ecf91f` |
| 25 | `lemma` | [IsClosedSubgraph.isBridge_iff](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isclosedsubgraph-isbridge-iff.md) | 163 | `result-track:5663e6f8a786f895e18fce31b6475538204ecc3318fe0ddf46fb0e771940a909` |
| 26 | `def` | [IsBond](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbond.md) | 175 | `declaration-track:eb1f4513ac8edaef142a5cdc4c2b2b762655db18a6662ab4f0e2f2f286785c44` |
| 27 | `lemma` | [IsBond.isEdgeCut](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbond-isedgecut.md) | 178 | `result-track:a709e2e454e62d16e089994824215b789828ba24b275bcf9b6ad7127cc502580` |
| 28 | `lemma` | [IsBond.nonempty](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbond-nonempty.md) | 180 | `result-track:30709fc4d44d56961842292b37a284d717d48fd98031ad572100b25b1999847b` |
| 29 | `lemma` | [IsBond.subset](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbond-subset.md) | 183 | `result-track:74cffc63347aeea3eb81dc276132b124dc87218909786df4d3417cc0a15a2f4b` |
| 30 | `lemma` | [isBond_singleton_iff_isBridge](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbond-singleton-iff-isbridge.md) | 185 | `result-track:908a00ea0a34bdb5ae91610db80bdbd25f108f4a6c7123db343f74ace3a2a173` |
| 31 | `lemma` | [IsBond.isBridge_deleteEdges](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbond-isbridge-deleteedges.md) | 192 | `result-track:ce93413f0d74ceac291d6d5877acd2621486aecbe9c9948a39e2adbf54af2e07` |
| 32 | `lemma` | [IsBond.of_isClosedSubgraph](../../../../Combinatorics/EdgeCutNamespacedPublic.lean/declarations/isbond-of-isclosedsubgraph.md) | 199 | `result-track:ee98df039a7f6169ac8f7fed104427c534e380d307b4cd0d7ae736fcb5e3c4aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19b54d90d71006db74f9b066f5934d593417c17cce6783e9e0779c47e31f1af3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
