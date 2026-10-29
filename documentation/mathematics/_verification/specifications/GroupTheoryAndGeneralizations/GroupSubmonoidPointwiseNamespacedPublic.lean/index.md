# Verification target: Group Submonoid Pointwise Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da1043e1c4e35defb7b43aa5136ff783afde8e12",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da1043e1c4e35defb7b43aa5136ff783afde8e12`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean.json)

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
| 1 | `lemma` | [coe_mul_coe](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/coe-mul-coe.md) | 56 | `result-track:9a1e991d5dba0d06de1482c47c3b7e82e90d92a43fa2390b69ee548fd6bf7472` |
| 2 | `lemma` | [Set.subtype_smul_set](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/set-subtype-smul-set.md) | 60 | `result-track:5a98b6acf9057b4dbb40dada395ac9fa2ea440271a331e8d53f5821ab2c38996` |
| 3 | `lemma` | [coe_set_pow](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/coe-set-pow.md) | 65 | `result-track:1ae5b8e0ef4290b1bbb91f1d2b29f218ca9279cc14620e6f2b15e8603cb8faa2` |
| 4 | `theorem` | [mul_subset](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/mul-subset.md) | 78 | `result-track:39946e2ceefc5ee8fb4ede13ae985c80f45ba6c185404eb9562d022063868be5` |
| 5 | `lemma` | [pow_subset](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/pow-subset.md) | 82 | `result-track:db826256b23d5b4885735f978bbce0496b1e9f49d27026efad3b5317fe1edb29` |
| 6 | `theorem` | [mul_subset_closure](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/mul-subset-closure.md) | 86 | `result-track:d0dfb5ab7a35fb2823d7c032016ada4bea772927aeae36a74795bad104a027a8` |
| 7 | `theorem` | [coe_mul_self_eq](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/coe-mul-self-eq.md) | 90 | `result-track:d08bbbd7abc368d1304b5a18547af752ea3410f0030c1da530db348dceaf1baf` |
| 8 | `theorem` | [closure_mul_le](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/closure-mul-le.md) | 94 | `result-track:9ab406f8c494d07321d252471179e39ca776e8ef7ddc09f83bca8181656526ce` |
| 9 | `lemma` | [closure_pow_le](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/closure-pow-le.md) | 99 | `result-track:575fcc5aede26045bf7a7f100dd196a0c7c3b2303934dc02b244cc29d1f6e9a9` |
| 10 | `lemma` | [closure_pow_anti](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/closure-pow-anti.md) | 102 | `result-track:f5ac092d94a57f9c7a5486a2ab001c4ebf29875aca48b08c068d168bb4d36d02` |
| 11 | `lemma` | [closure_pow](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/closure-pow.md) | 107 | `result-track:1fb7c24bb2d2438117a1d2f07907dc5f172e01a0e996ac275f2c5703aa05711b` |
| 12 | `theorem` | [sup_eq_closure_mul](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/sup-eq-closure-mul.md) | 111 | `result-track:25dd96d611afc62816508a3f8351e2afd4f17b4769c0abd63dbe74701f7d58fb` |
| 13 | `theorem` | [coe_sup](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/coe-sup.md) | 118 | `result-track:962e8883b634f40021911e0cb40e34aead154963b9d5be789c13cae47e8eda4f` |
| 14 | `theorem` | [pow_smul_mem_closure_smul](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/pow-smul-mem-closure-smul.md) | 124 | `result-track:b240275067f0f39d5d322de654bf92f7ade7e30da94f81969f893007a8be1e7a` |
| 15 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/inv.md) | 140 | `declaration-track:cf6802b1d877c1248087bec0e0d97c22702ec6e02b70c5cb3a7d70f57233f785` |
| 16 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/coe-inv.md) | 149 | `result-track:14b235d1997e67c08bc149ec8b9ed79fdbead1f5007abaec1d02a1b313a037db` |
| 17 | `theorem` | [mem_inv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/mem-inv.md) | 153 | `result-track:801caeb3f11170a9e3dee6a6c2c36980cf7239b81a6a76de1b224e6676c6388f` |
| 18 | `def` | [involutiveInv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/involutiveinv.md) | 158 | `declaration-track:055716df6300add52c101665acd33aba6d4fb8658ab7bfd01f85f3ce00b384b9` |
| 19 | `theorem` | [inv_le_inv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/inv-le-inv.md) | 164 | `result-track:2b3c2d47a44cba09c2f35179a1cd0486bc5f53e1fccf4c73264c5ae2ffa89d51` |
| 20 | `theorem` | [inv_le](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/inv-le.md) | 168 | `result-track:1e27d67338dba8d25c545b57d62029dc0906ea3098ffe5ad81afb82a348197cb` |
| 21 | `def` | [invOrderIso](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/invorderiso.md) | 174 | `declaration-track:2265b7fa56c4454d9979e5e823cdf8ca94145613cb8524cd083f10f7216eab9b` |
| 22 | `theorem` | [closure_inv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/closure-inv.md) | 179 | `result-track:5d4ad7e1b69cd75a9e5aa48f54adc1f18bc41181a38239fb861278deae47de47` |
| 23 | `lemma` | [mem_closure_inv](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/mem-closure-inv.md) | 187 | `result-track:dc1cece7f3273f2b9707b755cc91efaa0a80f24e27213e69e402286c21ed3954` |
| 24 | `theorem` | [inv_inf](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/inv-inf.md) | 191 | `result-track:e51b50de89617bf577cf3077e1c9d021a8e8b598eb7cd779937a451f5abb485c` |
| 25 | `theorem` | [inv_sup](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/inv-sup.md) | 195 | `result-track:299af142699dc6764fb50e94c766ccba88321c8b9538bb46140354b262e64e1b` |
| 26 | `theorem` | [inv_bot](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/inv-bot.md) | 199 | `result-track:5410394f39d90c9626374e891646bf054708a513226dd3bbcd0e46027d05df71` |
| 27 | `theorem` | [inv_top](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/inv-top.md) | 203 | `result-track:ecbc8ba6c40a42cc51e8ea0d5fa79a294640dd71331ff72dc0a8d547a2c95c87` |
| 28 | `theorem` | [inv_iInf](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/inv-iinf.md) | 207 | `result-track:51af8c638f0eee0924e08bb81eb207b94c0d611d6a9158a147182032fdedac9d` |
| 29 | `theorem` | [inv_iSup](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/inv-isup.md) | 211 | `result-track:192eb04eb229f19daebab34d0bbfd720bdf666876da705348d273af916ff833c` |
| 30 | `def` | [pointwiseMulAction](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/pointwisemulaction.md) | 227 | `declaration-track:de0c0928679add7f1a47aa2f42b87b33d3c8c58b8e73f88d5b195bbb575a9efb` |
| 31 | `theorem` | [coe_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/coe-pointwise-smul.md) | 239 | `result-track:8a386d37712bc529ad8691a18575fcd96fd427bbc03e7d5f60c894d6fd5eba4c` |
| 32 | `theorem` | [smul_mem_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/smul-mem-pointwise-smul.md) | 242 | `result-track:7b3f4048c90b6937ed975e102d00d2929c9865460ef78f049869f167acfd1851` |
| 33 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/instance.md) | 245 | `declaration-track:6fb94c3649e1e18feacbd265c53e708a019fb55d66bc63872c9877bf521bf27f` |
| 34 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/mem-smul-pointwise-iff-exists.md) | 248 | `result-track:140387c4b6d77666463d2daea30d6a83f0a4380be87fbc002616638715cbdba2` |
| 35 | `theorem` | [smul_bot](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/smul-bot.md) | 253 | `result-track:b583ad737b3e91bb25ad1dc983373c8b692d7c3bdfc7aedb197e17cc8c8639d5` |
| 36 | `theorem` | [smul_sup](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/smul-sup.md) | 256 | `result-track:e51e4893f184ebe2df6e510730c34146541249db798d5eb1dcd5705b9feeb2e9` |
| 37 | `theorem` | [smul_closure](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/smul-closure.md) | 259 | `result-track:ec73eb5f02b370c22db3cf4fbca552c30dcdec402802d6afe34532cb38f39929` |
| 38 | `lemma` | [pointwise_isCentralScalar](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/pointwise-iscentralscalar.md) | 262 | `result-track:62ae4ea7a357d94f59b734e38a4f0755ff55c1d34496f92e09123fd79c6bf13b` |
| 39 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/smul-mem-pointwise-smul-iff.md) | 275 | `result-track:bc27736ab9e95244d73df00f70c73a766814fa847179db9b8e96b76c071d565d` |
| 40 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 278 | `result-track:4aaf55ee6158b8b392d16bb6fdbc57afd63a9ddcee834a2b80edc28bd17f1934` |
| 41 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/mem-inv-pointwise-smul-iff.md) | 282 | `result-track:038666dcc1772bfa5d7010b96ceaca39e44543ee72ba7022233c7cb36477f1c8` |
| 42 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 286 | `result-track:6715dc2367e0588e6887c01b99b0fae8afc4cbf820426ee6d7a2709e192c5718` |
| 43 | `theorem` | [pointwise_smul_subset_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/pointwise-smul-subset-iff.md) | 289 | `result-track:4c0b0b5a60b722743ec95362f52a87fcab698a70aae246572ff419c9739bffe5` |
| 44 | `theorem` | [subset_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/subset-pointwise-smul-iff.md) | 292 | `result-track:1c3026cfb60226fd9ddcff1ea8ca0d4b839bf80e94d8fbdbd64f435bd6394a52` |
| 45 | `theorem` | [submonoid_closure](../../../../GroupTheoryAndGeneralizations/GroupSubmonoidPointwiseNamespacedPublic.lean/declarations/submonoid-closure.md) | 303 | `result-track:035e13d53bb093e5bc07bdeb8f0645887add654f94f7a045bf4213c6611d4345` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7977ae8b7d9a59f1032daae30b23081ceebb14217d9c0bf94db1b8f3734945c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Pointwise/Variant16bb1be990ccc02be75ed41ff6ac60ab89b0a25906641f801dbb1ee582b8935f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
