# Verification target: GRWTSK.Topology.GeneralTopology.Sequences.Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7bfb128ee79f12a1eac64753c9a7a55ff3ed9f7",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7bfb128ee79f12a1eac64753c9a7a55ff3ed9f7`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Defs.Sequences` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subset_seqClosure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/subset-seqclosure--46665974454648f07df1e65c.md) | 75 | `result-track:46665974454648f07df1e65c5a9bfc39533937b74c2ee180cb4548c9ad2aeb72` |
| 2 | `theorem` | [seqClosure_subset_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/seqclosure-subset-closure--0326a1b034745f7160d55001.md) | 80 | `result-track:0326a1b034745f7160d550016a7203bb88ab97743c032d78f78e06c293147ab7` |
| 3 | `theorem` | [IsSeqClosed.seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqclosed-seqclosure-eq--a6805f498d784d7ad2ddbec9.md) | 84 | `result-track:a6805f498d784d7ad2ddbec90020fefede469ef009bc0912d4037d29025c50b7` |
| 4 | `theorem` | [isSeqClosed_of_seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqclosed-of-seqclosure-eq--389de388279eac19ac6e6196.md) | 88 | `result-track:389de388279eac19ac6e6196e2cd2c927e851a806b699e15c4a3e266bcdffd23` |
| 5 | `theorem` | [isSeqClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqclosed-iff--88aa1ee683e11715ab7602a4.md) | 92 | `result-track:88aa1ee683e11715ab7602a490e46fb1f32e04aa301eb6882cdf3317406d61fe` |
| 6 | `theorem` | [IsClosed.isSeqClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isclosed-isseqclosed--7d0e6aa381bb086e19f1d98d.md) | 96 | `result-track:7d0e6aa381bb086e19f1d98df7e0a6564fd6487f090b3e5dd80f27cb21ca52f7` |
| 7 | `theorem` | [seqClosure_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/seqclosure-eq-closure--3759490c8f935075964ec32e.md) | 99 | `result-track:3759490c8f935075964ec32e9c4b825b1f7ad2745b7c4cd46c064f0c7fe81398` |
| 8 | `theorem` | [mem_closure_iff_seq_limit](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/mem-closure-iff-seq-limit--136239b0ca480185b9de7eba.md) | 104 | `result-track:136239b0ca480185b9de7eba3045404d7bc7288cf3c3df2e320b70a87d0e157b` |
| 9 | `theorem` | [tendsto_nhds_iff_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/tendsto-nhds-iff-seq-tendsto--eca291f5b19277732e6b96dd.md) | 115 | `result-track:eca291f5b19277732e6b96dd733aa0746d596179cd801eceb8d7608e5328419f` |
| 10 | `theorem` | [FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/frecheturysohnspace-of-seq-tendsto-imp-tendsto--f210656a2219766b849f86b4.md) | 128 | `result-track:f210656a2219766b849f86b478f25b3e76098ee05c4e1c91805ef2aa4cba1133` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/instance--6ef6bd9a6e388874c0e378da.md) | 144 | `declaration-track:6ef6bd9a6e388874c0e378da2a4e4f0abd908f0013439901e0227e2c9f7f208b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/instance--10a3f8dbb1da589f1f24865f.md) | 150 | `declaration-track:10a3f8dbb1da589f1f24865f12403eb87c63772f406195959846e34da925e6a4` |
| 13 | `theorem` | [Topology.IsInducing.frechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/topology-isinducing-frecheturysohnspace--1f0363e035b4a4d7c8883a94.md) | 154 | `result-track:1f0363e035b4a4d7c8883a9496083afab0548468d1838110adbb1a6c329d91a2` |
| 14 | `instance` | [Subtype.instFrechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/subtype-instfrecheturysohnspace--09b5c8feb28d9c24434b9226.md) | 167 | `declaration-track:09b5c8feb28d9c24434b9226235f86e7acf5d7512568ad3bb05026b975e61779` |
| 15 | `theorem` | [isSeqClosed_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqclosed-iff-isclosed--49aaf055ccaf034bdd7493f7.md) | 172 | `result-track:49aaf055ccaf034bdd7493f75a01d57f69b9369cadeca6e0e847778473dbeb2b` |
| 16 | `theorem` | [IsSeqClosed.preimage](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqclosed-preimage--85c360a46adbff27301a4cd5.md) | 177 | `result-track:85c360a46adbff27301a4cd5d8b3bbd2197a9c61d894e58e868614ef3b54cab7` |
| 17 | `theorem` | [Continuous.seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/continuous-seqcontinuous--670d6c82ca89f1dc88d52d6f.md) | 181 | `result-track:670d6c82ca89f1dc88d52d6fd0344c0f18384f0c863eccc0b144ac116d565040` |
| 18 | `theorem` | [SeqContinuous.continuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/seqcontinuous-continuous--6b13d6c3a8235ec0dbeb4cef.md) | 185 | `result-track:6b13d6c3a8235ec0dbeb4cef881391d4a41ad406cd6c7534289ff090d97b32d6` |
| 19 | `theorem` | [continuous_iff_seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/continuous-iff-seqcontinuous--cf9ed96beb72df978b6af8e2.md) | 191 | `result-track:cf9ed96beb72df978b6af8e21a8fb50ee3b5857f38f62a48f0c805d88f1a6cec` |
| 20 | `theorem` | [SequentialSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/sequentialspace-coinduced--e4a6bbafb2020aaeac307915.md) | 195 | `result-track:e4a6bbafb2020aaeac30791542406a8c16654f57b51b452ab8a8f74fb6324a2b` |
| 21 | `theorem` | [SequentialSpace.iSup](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/sequentialspace-isup--2a8aeb441762278a0f1a26af.md) | 200 | `result-track:2a8aeb441762278a0f1a26afeccbc80d2083f78d2d574bc11a2b7b5cc0381243` |
| 22 | `theorem` | [SequentialSpace.sup](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/sequentialspace-sup--32fb10a46ca7dffd8c5ccee0.md) | 207 | `result-track:32fb10a46ca7dffd8c5ccee09a52896033e78a7c8971af66d7436741851ad859` |
| 23 | `lemma` | [Topology.IsQuotientMap.sequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/topology-isquotientmap-sequentialspace--b74880b871b50e5ff9443b73.md) | 213 | `result-track:b74880b871b50e5ff9443b737d88423a11ee1ec20379040baa5f663d3a8c5996` |
| 24 | `instance` | [Quotient.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/quotient-instsequentialspace--696f24f109b5c74b3bf38335.md) | 220 | `declaration-track:696f24f109b5c74b3bf38335f58750764049d423f890f6a739ff86966a5e1a41` |
| 25 | `instance` | [Sum.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/sum-instsequentialspace--b67108d99a35ed5f18d46bb2.md) | 225 | `declaration-track:b67108d99a35ed5f18d46bb2b1496b09b31059077d349071704ce96b9679f309` |
| 26 | `instance` | [Sigma.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/sigma-instsequentialspace--1f2b1465dd8287cbe7fe9b71.md) | 230 | `declaration-track:1f2b1465dd8287cbe7fe9b71e009dbac9e92b6a85409a11d3b5f5f73cbd38bb5` |
| 27 | `theorem` | [IsSeqCompact.subseq_of_frequently_in](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqcompact-subseq-of-frequently-in--d3d41d6adf2e751f822231d4.md) | 242 | `result-track:d3d41d6adf2e751f822231d4a09400d7198b9145b9f594c81e6fc181dbd97468` |
| 28 | `theorem` | [SeqCompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/seqcompactspace-tendsto-subseq--8905c0189714a03cab7e89e1.md) | 249 | `result-track:8905c0189714a03cab7e89e1ed665192ae6094a455c20c4a399839969efab98b` |
| 29 | `theorem` | [IsCompact.isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/iscompact-isseqcompact--bfb68b4f4399e09eb3793d37.md) | 260 | `result-track:bfb68b4f4399e09eb3793d370b4c87ca4bb3804d010aa9b5c397d72e8fe45498` |
| 30 | `theorem` | [IsCompact.tendsto_subseq'](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/iscompact-tendsto-subseq--802daaa8c4fce94e3ad5ef78.md) | 265 | `result-track:802daaa8c4fce94e3ad5ef789cd3fa008e82471b6f5427994228bbf81b012d4e` |
| 31 | `theorem` | [IsCompact.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/iscompact-tendsto-subseq--0ca2767ddc2e1cfa386a59ce.md) | 270 | `result-track:0ca2767ddc2e1cfa386a59ce73a872a6bf516de140211bf6d7aac0002fc9ae65` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/instance--f4b884d8725084693880a1bf.md) | 275 | `declaration-track:f4b884d8725084693880a1bf65e656a39fa8889a05d655738eb1fe8eb3402462` |
| 33 | `theorem` | [CompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/compactspace-tendsto-subseq--bcaa786edaa746f9af3d16ed.md) | 279 | `result-track:bcaa786edaa746f9af3d16ed866a4bf82056ce16acc2f1e43440f0671a12d0ef` |
| 34 | `theorem` | [IsSeqCompact.image](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqcompact-image--a9034caca2f2bc5b6ac14b1b.md) | 290 | `result-track:a9034caca2f2bc5b6ac14b1bf36b46fe0378231cea35adf6f77983766d2b37a4` |
| 35 | `theorem` | [IsSeqCompact.range](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqcompact-range--af4cf18e697a7bfac51eea31.md) | 300 | `result-track:af4cf18e697a7bfac51eea31cbc0ad97d283603a29cd0094cdeedc556f6dd7e8` |
| 36 | `theorem` | [IsSeqCompact.exists_tendsto_of_frequently_mem](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqcompact-exists-tendsto-of-frequently-mem--10b9f31d6bcfe8e63f3e87b5.md) | 316 | `result-track:10b9f31d6bcfe8e63f3e87b593b07ec8e2d0d9f003a42603267e5afd65e9b48c` |
| 37 | `theorem` | [IsSeqCompact.exists_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqcompact-exists-tendsto--0618c7ddee4350cf2834bb97.md) | 321 | `result-track:0618c7ddee4350cf2834bb976fc05036c1680caf2e838801ce20c18bbcbff040` |
| 38 | `theorem` | [IsSeqCompact.totallyBounded](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqcompact-totallybounded--1286aaff61cc51e6d7ffcfe3.md) | 326 | `result-track:1286aaff61cc51e6d7ffcfe3c3634521f03981c317207f051337b24282612c8e` |
| 39 | `theorem` | [IsSeqCompact.isComplete](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqcompact-iscomplete--00a497cc24b7cf805cf6ce03.md) | 342 | `result-track:00a497cc24b7cf805cf6ce0368e8c779d3650658f0554fc3f773d740da7248df` |
| 40 | `theorem` | [IsSeqCompact.isCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/isseqcompact-iscompact--3a8729ece64ee4f5afc8d319.md) | 372 | `result-track:3a8729ece64ee4f5afc8d3194d7442a7305af5df4bbc4ab769039d026a17b130` |
| 41 | `theorem` | [UniformSpace.isCompact_iff_isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/uniformspace-iscompact-iff-isseqcompact--d18736fc2ebb6da5567081c4.md) | 377 | `result-track:d18736fc2ebb6da5567081c4ac0abed0df32574d6ddf3829cc8d1b4e899613bd` |
| 42 | `theorem` | [UniformSpace.compactSpace_iff_seqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/declarations/uniformspace-compactspace-iff-seqcompactspace--b9a8dd71dfd6ec4ded48122b.md) | 380 | `result-track:b9a8dd71dfd6ec4ded48122b9ba70c998fc49bb14c7231724d662db7996cf2d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
