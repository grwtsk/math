# Verification target: Pair Reduction Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b34ec5b4da347b2b4ecd0adfffeaa09ad2cfe742`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean.json)

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
| 1 | `lemma` | [exists_radius_le](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/exists-radius-le.md) | 121 | `result-track:569e80bb64941f1b14151f70ed279b250f6b8d67faaea3353284a55a2a25abde` |
| 2 | `def` | [logSizeRadius](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/logsizeradius.md) | 133 | `declaration-track:249cb72e9b2b3e68772569ea28c5de8d024d1f8a4004db98e04c49be3a9811b1` |
| 3 | `lemma` | [one_le_logSizeRadius](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/one-le-logsizeradius.md) | 136 | `result-track:77ba4d5d91d7a6968d89935ffa5bb8ef4d08496cafa2094c9ce789f7716fb01f` |
| 4 | `lemma` | [card_le_logSizeRadius_le_pow_logSizeRadius](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/card-le-logsizeradius-le-pow-logsizeradius.md) | 141 | `result-track:906aba4a100896a616dfcaef67d94a99a358dc4dc6b5f34ec59c61521bdb3cdd` |
| 5 | `lemma` | [pow_logSizeRadius_le_card_le_logSizeRadius](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/pow-logsizeradius-le-card-le-logsizeradius.md) | 146 | `result-track:463611b5b8fff099be929e1cc27ad8676fdec4bb43445da51f3bc5dcf1f40d56` |
| 6 | `structure` | [logSizeBallStruct](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/logsizeballstruct.md) | 161 | `declaration-track:d7ad3547d09eef3d21ddbd621f113cbe2e6579c9a5bfd70969e92db936524c7f` |
| 7 | `def` | [logSizeBallStruct.smallBall](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/logsizeballstruct-smallball.md) | 174 | `declaration-track:df425cbc84323e0c72107306fdb0e06f4444ce867938f225a6175046d2fe18ac` |
| 8 | `def` | [logSizeBallStruct.ball](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/logsizeballstruct-ball.md) | 181 | `declaration-track:8bb516d0a720768b3df03241351507b059454b44df486a716702073c9ed08e4f` |
| 9 | `def` | [logSizeBallSeq](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/logsizeballseq.md) | 192 | `declaration-track:94495dfa79893eebeb112c0e71d4716b81257648e0aaf9900d240cb635fb9dd9` |
| 10 | `lemma` | [finset_logSizeBallSeq_zero](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/finset-logsizeballseq-zero.md) | 201 | `result-track:aee16a849ff28ad9cdb8957ecc0303facc8604383190201c7def124d753c5ba0` |
| 11 | `lemma` | [point_logSizeBallSeq_zero](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/point-logsizeballseq-zero.md) | 204 | `result-track:43071fe2c8f01dc43242568224f7a8879a0a40114d5bebc2477dddcab1f5fc39` |
| 12 | `lemma` | [radius_logSizeBallSeq_zero](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/radius-logsizeballseq-zero.md) | 207 | `result-track:8d4b48b31d890236f7095176112ad4ad71478943887533d4ce3a27d6369e9684` |
| 13 | `lemma` | [finset_logSizeBallSeq_add_one](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/finset-logsizeballseq-add-one.md) | 210 | `result-track:13074a86a723977cd45315ff81265f899b62ec6a11d696efff366f97b3645877` |
| 14 | `lemma` | [point_logSizeBallSeq_add_one](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/point-logsizeballseq-add-one.md) | 214 | `result-track:c178f3b94027544700f639888857d8d3ba5ec3ef6cf12c0dd4470b7744119f42` |
| 15 | `lemma` | [radius_logSizeBallSeq_add_one](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/radius-logsizeballseq-add-one.md) | 219 | `result-track:69086a79866b4308b8d483b2ca22800a4777ba5409b1f6799ff295a240bfb53b` |
| 16 | `lemma` | [finset_logSizeBallSeq_add_one_subset](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/finset-logsizeballseq-add-one-subset.md) | 224 | `result-track:720a0b24051cba68b8979c6d890666804ee34c81ff2308482e0722b541e9dfc3` |
| 17 | `lemma` | [antitone_logSizeBallSeq_add_one_subset](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/antitone-logsizeballseq-add-one-subset.md) | 228 | `result-track:426db13922bf52e8b7d6e05a58837418650756bfa0827d45c8d2e0e62831cf7e` |
| 18 | `lemma` | [finset_logSizeBallSeq_subset_logSizeBallSeq_init](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/finset-logsizeballseq-subset-logsizeballseq-init.md) | 232 | `result-track:b42c7e784b79954d286d857d43a27b680de69f8bf98b0d31872eb3214b244a60` |
| 19 | `lemma` | [radius_logSizeBallSeq_le](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/radius-logsizeballseq-le.md) | 237 | `result-track:92567d41e07a0287aef63e18249c1b21a02771cd374f370e91d03c3e71ba1703` |
| 20 | `lemma` | [one_le_radius_logSizeBallSeq](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/one-le-radius-logsizeballseq.md) | 249 | `result-track:0653c9f62765d44616325065b476d20d11c3bd89625907740e899b734cb06814` |
| 21 | `lemma` | [point_mem_finset_logSizeBallSeq](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/point-mem-finset-logsizeballseq.md) | 256 | `result-track:863d51b1aa948f71e55a50b8d07336235584b765397d9c0411dff27e88480226` |
| 22 | `lemma` | [point_mem_logSizeBallSeq_init](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/point-mem-logsizeballseq-init.md) | 263 | `result-track:3fac17a6e3e323716e302d3d70cd9e30e5b1852e04b7d965b503282a475710b5` |
| 23 | `lemma` | [point_notMem_finset_logSizeBallSeq_add_one](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/point-notmem-finset-logsizeballseq-add-one.md) | 273 | `result-track:250381fd6c97524485fb7447f3d777780e3235883502b4b52d9204b1eb4799bb` |
| 24 | `lemma` | [finset_logSizeBallSeq_add_one_ssubset](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/finset-logsizeballseq-add-one-ssubset.md) | 277 | `result-track:be13b10b24104e91b940a56e7ffef6316afdce87c87b7afd49c5d501a3474a1d` |
| 25 | `lemma` | [card_finset_logSizeBallSeq_add_one_lt](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/card-finset-logsizeballseq-add-one-lt.md) | 286 | `result-track:4852164b8100f1cf40cd3352ac410aa4d78323ff52925bc10a359d294b3466b6` |
| 26 | `lemma` | [card_finset_logSizeBallSeq_le](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/card-finset-logsizeballseq-le.md) | 291 | `result-track:0e28233cf82eeca842be859ad09b68377714461308a42e93e723d2f05434a6be` |
| 27 | `lemma` | [card_finset_logSizeBallSeq_card_eq_zero](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/card-finset-logsizeballseq-card-eq-zero.md) | 303 | `result-track:23ae6c61c2b6162fab447aace5a26dbf47bbf846e6b3279dca22a613138f3e84` |
| 28 | `lemma` | [disjoint_smallBall_logSizeBallSeq](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/disjoint-smallball-logsizeballseq.md) | 308 | `result-track:3afbae94ebae7707ad6192829ab16cc5237b4d124cd1ff6f2a878854ee32469b` |
| 29 | `def` | [pairSetSeq](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/pairsetseq.md) | 320 | `declaration-track:9f7244628b1f149d10ab46d51a93cc92d598f436cdaef715dca8f803b65364a0` |
| 30 | `def` | [pairSet](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/pairset.md) | 327 | `declaration-track:983dcd44d23aaa044a2965f25fc43204024ba9dc97619a0fa6d91df843f7dbfd` |
| 31 | `lemma` | [pairSet_empty_eq_empty](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/pairset-empty-eq-empty.md) | 330 | `result-track:752d7b5b281e13b7c594496919e99d524012ed3709113f4fc7a27fc52989f16d` |
| 32 | `lemma` | [pairSet_subset](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/pairset-subset.md) | 332 | `result-track:5bc343e7eac77009f0ec95a15194358c0a66abe8f6ceb5d2a000401fd95a7380` |
| 33 | `lemma` | [card_pairSetSeq_le_logSizeRadius_mul](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/card-pairsetseq-le-logsizeradius-mul.md) | 343 | `result-track:fd8f92eb5feaa5c815d867dc9439bc5695ec344c7a58e9a23d0162f2585ccd54` |
| 34 | `lemma` | [logSizeRadius_le_card_smallBall](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/logsizeradius-le-card-smallball.md) | 356 | `result-track:7fe7aed6e0b3ef1b47f0746e56f755e5ca3b9a5612bb29418c0500ec55e84f6b` |
| 35 | `lemma` | [card_pairSet_le](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/card-pairset-le.md) | 371 | `result-track:c0a1d006eeed0ef5045b18f7176a392d2d9b6c0957081c031e092706bba1c54c` |
| 36 | `lemma` | [edist_le_of_mem_pairSet](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/edist-le-of-mem-pairset.md) | 389 | `result-track:7797c965e6824aa1c35ad199e433733afd7d08bafcc4471aab22178fc5b1b9d8` |
| 37 | `lemma` | [iSup_edist_pairSet](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/isup-edist-pairset.md) | 404 | `result-track:e03cb543eaacaeadfdfc755cc1b33c178fb546875c27673c39e3664a5e43f0f9` |
| 38 | `theorem` | [EMetric.pair_reduction](../../../../GeneralTopology/PairReductionNamespacedPublic.lean/declarations/emetric-pair-reduction.md) | 486 | `result-track:36abae4d69cee4e7ff371c4c9e8f291a30b2de3bfc0173ab210a878123e4d360` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c63f38e7ea55f0b6e55d9bb0a2f7f6f63d1cc7bc830af3ef2a2603b23dd1fb5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/PairReduction/Variant73508d256ac442890ed9305f5bdb98d48190555a5e262f1d937194647aa519d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
