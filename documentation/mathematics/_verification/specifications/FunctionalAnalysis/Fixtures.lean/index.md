# Verification target: Fixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8bbe709b41315fabfe7ce239a1da6e4e7f9599e",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Fixtures/Variant87014257fbe67bd1e6177020c47956a0716035227219c09ed816707980b75581.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/Fixtures.lean/index.md) · [Full source](../../../../FunctionalAnalysis/Fixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8bbe709b41315fabfe7ce239a1da6e4e7f9599e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Fixtures/Variant87014257fbe67bd1e6177020c47956a0716035227219c09ed816707980b75581.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Fixtures/Variant87014257fbe67bd1e6177020c47956a0716035227219c09ed816707980b75581.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Ledger` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limits](../../../../FunctionalAnalysis/Fixtures.lean/declarations/limits.md) | 17 | `declaration-track:52e88bc767aea53a9a46272625d772cac655a225ea1701e1bd6b99327185e43b` |
| 2 | `def` | [atom](../../../../FunctionalAnalysis/Fixtures.lean/declarations/atom.md) | 21 | `declaration-track:4c1ce67378c03567d9b47a3cab811f8c77efe84b46452d2be770e240109390f0` |
| 3 | `def` | [pair](../../../../FunctionalAnalysis/Fixtures.lean/declarations/pair.md) | 25 | `declaration-track:53fc259c956c6fd1d52c973f5abb76a9782b6a655daad5b79986d9a3245879b8` |
| 4 | `def` | [tag](../../../../FunctionalAnalysis/Fixtures.lean/declarations/tag.md) | 30 | `declaration-track:c39ec6860f63d4d1a35ab5e68e7e5f915a306cc5785dcb3277205ecc189991e0` |
| 5 | `def` | [snapshot](../../../../FunctionalAnalysis/Fixtures.lean/declarations/snapshot.md) | 34 | `declaration-track:68d378dbd9027c06df753ea9dde6a4e97cee468f7e0dcabfc18ff26287e10c26` |
| 6 | `theorem` | [snapshot_accepted](../../../../FunctionalAnalysis/Fixtures.lean/declarations/snapshot-accepted.md) | 48 | `result-track:a37aef41c95a4a192342502c6481c41e0189b1539acb7eebc77d22b02dbc8143` |
| 7 | `def` | [checkedSnapshot](../../../../FunctionalAnalysis/Fixtures.lean/declarations/checkedsnapshot.md) | 51 | `declaration-track:2873f63049b6af8942604eb8ba279e6ee87929e3d71ac20b87f20484992e6ae0` |
| 8 | `def` | [leftAtom](../../../../FunctionalAnalysis/Fixtures.lean/declarations/leftatom.md) | 55 | `declaration-track:d259f17b248a5e16bca7314f1deab2bd041d9f5a7302c0792d196b280ddabe7b` |
| 9 | `def` | [rightAtom](../../../../FunctionalAnalysis/Fixtures.lean/declarations/rightatom.md) | 57 | `declaration-track:7d2a7c614c87bea9e99106ea188c2572badbbae4a8d8769623c27ac7d8b0ad2d` |
| 10 | `def` | [pairRoot](../../../../FunctionalAnalysis/Fixtures.lean/declarations/pairroot.md) | 59 | `declaration-track:2abef01c314781a0cfbc1ecebdd638942a0378728540b15ba2d95b381c1daecc` |
| 11 | `def` | [tree](../../../../FunctionalAnalysis/Fixtures.lean/declarations/tree.md) | 64 | `declaration-track:faa23e2300e47645b9277730e8f9308a5f7d88788bd2c80d75491072d44ae19d` |
| 12 | `theorem` | [syntax_accepted](../../../../FunctionalAnalysis/Fixtures.lean/declarations/syntax-accepted.md) | 67 | `result-track:acbe48234ee850ed21493a30a01025126497bcc25e32aa8e0312824e48fe7758` |
| 13 | `def` | [checkedTree](../../../../FunctionalAnalysis/Fixtures.lean/declarations/checkedtree.md) | 70 | `declaration-track:3e45258ebcb02da048b7944cb11858b8281ea564ef24fc5e4e83d4f7d8f52f4a` |
| 14 | `def` | [leftRow](../../../../FunctionalAnalysis/Fixtures.lean/declarations/leftrow.md) | 74 | `declaration-track:80577eb64ccf18cb4c13e2b0c764bf4290dbb824bb0ca95b2427a1604ac1545a` |
| 15 | `def` | [rightRow](../../../../FunctionalAnalysis/Fixtures.lean/declarations/rightrow.md) | 76 | `declaration-track:a7b35346400f93985510b48d133df897bba1d92732e2ff33d5ab1eef872be6b7` |
| 16 | `def` | [rootRow](../../../../FunctionalAnalysis/Fixtures.lean/declarations/rootrow.md) | 78 | `declaration-track:91a626b1772215a286fad8c1ab186bab76672821cfc0a8743e7cfb6c8dc00dee` |
| 17 | `def` | [ledger](../../../../FunctionalAnalysis/Fixtures.lean/declarations/ledger.md) | 80 | `declaration-track:dbb03f6ce025f0bc66c0e0e974d304c5152c4bf5ef7c933b2f32f70de5e7446a` |
| 18 | `theorem` | [ledger_accepted](../../../../FunctionalAnalysis/Fixtures.lean/declarations/ledger-accepted.md) | 83 | `result-track:a91440d061e26a7882a0580aa653697f196d3f3b487400b2d34e6d925c64e1e5` |
| 19 | `def` | [checkedLedger](../../../../FunctionalAnalysis/Fixtures.lean/declarations/checkedledger.md) | 86 | `declaration-track:f0454529529551386a8c1c6175528f1744d692d613df5f3e1cf2ba850d12a12e` |
| 20 | `theorem` | [k1_k2_k3_positive](../../../../FunctionalAnalysis/Fixtures.lean/declarations/k1-k2-k3-positive.md) | 90 | `result-track:1fe17d48ad9192370dcef34ddc2a3f6d4ae38056ce93d835edde898fbb35e6c7` |
| 21 | `theorem` | [duplicate_occurrence_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/duplicate-occurrence-rejected.md) | 96 | `result-track:3ba2e75276951738a32ad691a3908650b8140ab7f62ccb731060383592073949` |
| 22 | `theorem` | [noncanonical_constructor_table_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/noncanonical-constructor-table-rejected.md) | 101 | `result-track:1cd3c545c8cd14efca189aed67b94d130660c50b2e1672a0b78106e3dc9ae2af` |
| 23 | `theorem` | [wrong_sort_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/wrong-sort-rejected.md) | 105 | `result-track:fa03e42fcc573411025c827f45c80e06870f399d52bde4a98935d56381e2a2f0` |
| 24 | `theorem` | [duplicated_template_child_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/duplicated-template-child-rejected.md) | 110 | `result-track:beed80bc0a621f82db9cc6a79e838a3b61ea83378fccd61b2ef8b6142430ddb8` |
| 25 | `theorem` | [exhausted_snapshot_work_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/exhausted-snapshot-work-rejected.md) | 116 | `result-track:3f6ee0e1edc55c70f081b3d2086a0a9ce74fb97bb54a7d516b87ad827f54224d` |
| 26 | `theorem` | [snapshot_drift_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/snapshot-drift-rejected.md) | 120 | `result-track:831f15665350f3a5cbe12927f82baa3c48e069784db4189fd8d165365e233293` |
| 27 | `theorem` | [unsupported_snapshot_profile_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/unsupported-snapshot-profile-rejected.md) | 125 | `result-track:5946b4a6f3af2504bc12c47e257ab24132fdffa2c0e5ece9b941a374fd538c4b` |
| 28 | `theorem` | [malformed_source_identity_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/malformed-source-identity-rejected.md) | 129 | `result-track:1f57b1d845d33ed43b204425825faf37189a5c48c9e93e8dedad45bd36eb0ec8` |
| 29 | `theorem` | [assumptions_erased_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/assumptions-erased-rejected.md) | 135 | `result-track:88a6fe6e3feb82a5804e4466b2d1c312191c53b06e69c9150b7e2443abdfea5b` |
| 30 | `theorem` | [occurrence_aliasing_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/occurrence-aliasing-rejected.md) | 140 | `result-track:4bdbd24390697bed8d905cad7646e1d50dcb3791bb7686d566e08039b059ba78` |
| 31 | `theorem` | [child_order_loss_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/child-order-loss-rejected.md) | 145 | `result-track:8399f81621f5f42e1bdcce6fc6ca241ffb21e3b245cf5bafd7467252ca679f2e` |
| 32 | `theorem` | [incorrect_span_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/incorrect-span-rejected.md) | 150 | `result-track:dcb5280c90f03a02d11d1aa3bf9ec7d07cb743693cc4c652d7bc306cffccedd1` |
| 33 | `theorem` | [cycle_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/cycle-rejected.md) | 155 | `result-track:fe4b9a7e9674c6cb63b5313e7c1a4b597e03df7488a806eb1aa05ae6fc03562e` |
| 34 | `theorem` | [shared_node_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/shared-node-rejected.md) | 160 | `result-track:49472f76b16f05a891d2ffa7ef9f087bb831b361b023434e9fa58f25952482fe` |
| 35 | `theorem` | [unknown_node_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/unknown-node-rejected.md) | 165 | `result-track:7fc47c25c50a36d3c3700a4670e32573f85d39b9e44b4a2e4964ed52dd72dd42` |
| 36 | `theorem` | [wrong_arity_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/wrong-arity-rejected.md) | 170 | `result-track:41605739601e45ec3f11e279fcec9cfab17504b978990ce2df6010985409c7a0` |
| 37 | `theorem` | [invented_delimiter_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/invented-delimiter-rejected.md) | 175 | `result-track:9b0a448e5672cc031b52cfba063f20820ed7af6c09809e287ade40e4cb846253` |
| 38 | `theorem` | [wrong_node_sort_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/wrong-node-sort-rejected.md) | 181 | `result-track:c2a29843ed6f71bbb4baf6e9228c57e4438b89a6d1f078e90867be4a4b574892` |
| 39 | `theorem` | [incorrect_depth_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/incorrect-depth-rejected.md) | 186 | `result-track:1d97e7199c47982f8dfe841c23ec213c3bb27aceeeaea392f08bbd6d132d619d` |
| 40 | `theorem` | [valuation_conservation_failure_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/valuation-conservation-failure-rejected.md) | 191 | `result-track:b8d98d457163d8a6d6e55834b18c287a217ea4044c6882dfefd696fc756aca65` |
| 41 | `theorem` | [support_omission_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/support-omission-rejected.md) | 196 | `result-track:3ef26e27a6f6121bf3c3be4e61155dbbeb44890c05279c013f27b5bbfb919097` |
| 42 | `theorem` | [parity_confusion_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/parity-confusion-rejected.md) | 201 | `result-track:740cd7044ce10a827fde3b5b7a640b5854ef7314a5a6d9c4bf1e1ed96b0637c6` |
| 43 | `theorem` | [missing_ledger_row_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/missing-ledger-row-rejected.md) | 206 | `result-track:093f8cd3287bb2343f852e98ab86bdf04dbadd5be25726fe7d568f44fa3540a7` |
| 44 | `theorem` | [ledger_wrong_operand_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/ledger-wrong-operand-rejected.md) | 211 | `result-track:67cbbcbe1c290b9e0bbecccf2d38f897277c6d86f653e9b3fede97c21a47534e` |
| 45 | `def` | [orphanSnapshot](../../../../FunctionalAnalysis/Fixtures.lean/declarations/orphansnapshot.md) | 216 | `declaration-track:faf4d2b4481cbe85b04420de4233ab171690917d2581cb483a3f364a16dc93d3` |
| 46 | `theorem` | [orphan_snapshot_accepted](../../../../FunctionalAnalysis/Fixtures.lean/declarations/orphan-snapshot-accepted.md) | 221 | `result-track:5862aaf637b8bd41362dda900fdf85e238a9c34e5f8f55795a0eb9e7513021c4` |
| 47 | `def` | [checkedOrphanSnapshot](../../../../FunctionalAnalysis/Fixtures.lean/declarations/checkedorphansnapshot.md) | 224 | `declaration-track:5d2e2b0517ab83325ef3893da11de188ded7b49db9daca04530c0a712f0587eb` |
| 48 | `def` | [orphanNode](../../../../FunctionalAnalysis/Fixtures.lean/declarations/orphannode.md) | 228 | `declaration-track:defcb89e59dfaa0cd832be1c842bec4b2116e08112688f21af19385227d721b0` |
| 49 | `def` | [orphanTree](../../../../FunctionalAnalysis/Fixtures.lean/declarations/orphantree.md) | 231 | `declaration-track:8ef5a3f7fad2a2c87bc5674dbfc0f4170fcc998c284d1bfebdadf804c62f01e1` |
| 50 | `theorem` | [orphan_nodes_locally_valid](../../../../FunctionalAnalysis/Fixtures.lean/declarations/orphan-nodes-locally-valid.md) | 235 | `result-track:196706d46cfc715225e6f67528c9f573f0fffe0fecf54f3ea96fa6a6e2771516` |
| 51 | `theorem` | [unreachable_node_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/unreachable-node-rejected.md) | 239 | `result-track:bb819e4e59887b8b387d3da03ce6cd2de76044becfe17b70c188d5a828aca486` |
| 52 | `def` | [epsilonSnapshot](../../../../FunctionalAnalysis/Fixtures.lean/declarations/epsilonsnapshot.md) | 243 | `declaration-track:158424e1fe929d971ff0ac36776df3fa5f6b356204ae46728bad409e4482302b` |
| 53 | `theorem` | [epsilon_snapshot_accepted](../../../../FunctionalAnalysis/Fixtures.lean/declarations/epsilon-snapshot-accepted.md) | 252 | `result-track:53fc93a8ff66096a1f066c38ff069492c98dc500cf1723f56d34d5869b4ac4e8` |
| 54 | `def` | [checkedEpsilonSnapshot](../../../../FunctionalAnalysis/Fixtures.lean/declarations/checkedepsilonsnapshot.md) | 255 | `declaration-track:f15774ac1a0e259c8586ce7783cbc4561526cb1e291ba94a70403cde25535b5f` |
| 55 | `def` | [epsilonChild](../../../../FunctionalAnalysis/Fixtures.lean/declarations/epsilonchild.md) | 259 | `declaration-track:e007e41cf2a3f718d84a5c07f999b1c0bd41ba6185f4ab106dcca576f6adffa9` |
| 56 | `def` | [epsilonParent](../../../../FunctionalAnalysis/Fixtures.lean/declarations/epsilonparent.md) | 262 | `declaration-track:8ff402e8539727375bd88798f6dca690bf2ca72c28687b3f2930a7304401b59d` |
| 57 | `def` | [epsilonTree](../../../../FunctionalAnalysis/Fixtures.lean/declarations/epsilontree.md) | 266 | `declaration-track:e7cb22f55aede011a2e441aac14f6e4e34df160868829715a645189464e3a08c` |
| 58 | `theorem` | [correctly_positioned_empty_child_accepted](../../../../FunctionalAnalysis/Fixtures.lean/declarations/correctly-positioned-empty-child-accepted.md) | 270 | `result-track:7ecd2a1d590c306df87d55fb7739881de448ebc60abaf6ec0ad89b303bafbbba` |
| 59 | `theorem` | [displaced_empty_child_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/displaced-empty-child-rejected.md) | 274 | `result-track:d3b711b61d995e40c7de5fd9713a23a90d5cc278664705f07b3552de84da527a` |
| 60 | `def` | [overflowSnapshot](../../../../FunctionalAnalysis/Fixtures.lean/declarations/overflowsnapshot.md) | 279 | `declaration-track:b711caba6d9fe9881d0ac518dc28ab844cd9753609297aef5d46ddf151889206` |
| 61 | `theorem` | [overflow_snapshot_accepted](../../../../FunctionalAnalysis/Fixtures.lean/declarations/overflow-snapshot-accepted.md) | 284 | `result-track:3df2f8ec94099d7f7feef7e5f15da9323aebda190a40993df7252567ee8f82ac` |
| 62 | `def` | [checkedOverflowSnapshot](../../../../FunctionalAnalysis/Fixtures.lean/declarations/checkedoverflowsnapshot.md) | 287 | `declaration-track:ff73d1e50c6c903397f2f81227e3f4a4bf4d93114756b7721cfc6e3a879c9bd7` |
| 63 | `def` | [overflowTree](../../../../FunctionalAnalysis/Fixtures.lean/declarations/overflowtree.md) | 291 | `declaration-track:737f82ff094c43ba1abc2a78bd72fec2a650db996f0fa39918311d4ca6772bff` |
| 64 | `theorem` | [overflow_syntax_accepted](../../../../FunctionalAnalysis/Fixtures.lean/declarations/overflow-syntax-accepted.md) | 294 | `result-track:63dec9efe946ac59d34c1ff25875aa4ccbfe5813a6699dd4dd512b4e26714ece` |
| 65 | `def` | [checkedOverflowTree](../../../../FunctionalAnalysis/Fixtures.lean/declarations/checkedoverflowtree.md) | 298 | `declaration-track:a9a4562e8830d184f0ac6b0da9697cbd6f8d9e8d93767132944ea4baed0d2fc9` |
| 66 | `def` | [overflowLedger](../../../../FunctionalAnalysis/Fixtures.lean/declarations/overflowledger.md) | 302 | `declaration-track:0b0755543fa93c336ec9dad5953cd1b3594d9a3a6a9e274097e46346e610d613` |
| 67 | `theorem` | [conserved_overflow_rejected](../../../../FunctionalAnalysis/Fixtures.lean/declarations/conserved-overflow-rejected.md) | 309 | `result-track:8cecfd576a02a91c3102a5b8edab9c5cdfb2ee31b624bc60144ccf55fc9ee6a2` |
| 68 | `theorem` | [overflow_really_conserves_naturals](../../../../FunctionalAnalysis/Fixtures.lean/declarations/overflow-really-conserves-naturals.md) | 313 | `result-track:37a6199c3ae097fe469ed442fd4a379d3ea116fd4066194a7fa0f29a825efd36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=754a09449436c19badab983f0c05e88e74c3c63f70c60df7b13200ece0433e9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Fixtures/Variant87014257fbe67bd1e6177020c47956a0716035227219c09ed816707980b75581.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Fixtures/Variant87014257fbe67bd1e6177020c47956a0716035227219c09ed816707980b75581.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
