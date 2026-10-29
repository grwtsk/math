# Verification target: Topology List Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7667789036d5e600ee2bb36ac0eb974b5f47c1b9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7667789036d5e600ee2bb36ac0eb974b5f47c1b9`.

Source path: `GRWTSK/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 36 | `declaration-track:8f067a8c662f5779baefacf5f78874e691e98b9b9ca4bcbe31a96c1e9fd45c23` |
| 2 | `theorem` | [nhds_list](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/nhds-list.md) | 39 | `result-track:9187fe81b9c1c62366c8ab845df93c669da5129ad9662608fd0eb5c7b65868af` |
| 3 | `theorem` | [nhds_nil](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/nhds-nil.md) | 77 | `result-track:a470e6150133a75a36e645d97e4a4149989697b8ecd9264a2690d8b4c1783e2a` |
| 4 | `theorem` | [nhds_cons](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/nhds-cons.md) | 80 | `result-track:0fa579f90a68fa72d8f1951f896c3d38ce8fb7260b80589b9528b964618050ba` |
| 5 | `theorem` | [List.tendsto_cons](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/list-tendsto-cons.md) | 83 | `result-track:4044d2802b19adac87918820f39301ad381788c5c9afc2b9814e28754f32bcd7` |
| 6 | `theorem` | [Filter.Tendsto.cons](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/filter-tendsto-cons.md) | 87 | `result-track:dba86329eb00d47510a9482f1bc5ef6bc4f41d5c684fff1403a2231f10437291` |
| 7 | `theorem` | [tendsto_cons_iff](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/tendsto-cons-iff.md) | 94 | `result-track:6d78726f6d39a6be85d8fe62690607bb81e0dd3d93d66ef13a34ae982068848a` |
| 8 | `theorem` | [continuous_cons](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/continuous-cons.md) | 102 | `result-track:faac63054637face31c80a896a427207283f5846636e34548d6a979a5d1a3216` |
| 9 | `theorem` | [tendsto_nhds](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/tendsto-nhds.md) | 105 | `result-track:502714c525e85415ac4b31b5700206aeb17641b72042894a638c046c4d879234` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 116 | `declaration-track:40dec1ac417ac373f1b5f00f79be28d8a3278998f50c86ae45b815befc86f49a` |
| 11 | `theorem` | [continuousAt_length](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/continuousat-length.md) | 119 | `result-track:b438ec307b2378743bc9e4de3efc2a44b556ae9896830e09676a77b102d9c261` |
| 12 | `theorem` | [tendsto_insertIdx'](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/tendsto-insertidx-source-edition-2.md) | 129 | `result-track:8343349ee807e11634732ee7ccb07c8dce5a2faee473800b0dd8dfcaaf32912f` |
| 13 | `theorem` | [tendsto_insertIdx](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/tendsto-insertidx.md) | 144 | `result-track:0906058bf743ba9364a5ca1473672dd32a882c7df43cf5e1b9831d21552d9c69` |
| 14 | `theorem` | [continuous_insertIdx](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/continuous-insertidx-source-edition-3.md) | 149 | `result-track:ceaf5d8e5d02ac0abfaa75f4cac3c542acd8d7f6085186f0d187f58df08780e9` |
| 15 | `theorem` | [tendsto_eraseIdx](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/tendsto-eraseidx.md) | 153 | `result-track:b778e1b1e8cc612ef04af297984a3da02dd6f2fba5a284e005ee48f243cec6c9` |
| 16 | `theorem` | [continuous_eraseIdx](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/continuous-eraseidx-source-edition-2.md) | 162 | `result-track:7a44c8f1fef056106dac84244f99c88fb264d5907574a1bc10b373be5927e102` |
| 17 | `theorem` | [tendsto_prod](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/tendsto-prod.md) | 166 | `result-track:e511b5958755881f261fdc56c02bef826aac7e39a6ae0d5c32cfcaa25dfd27ad` |
| 18 | `theorem` | [continuous_prod](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/continuous-prod.md) | 177 | `result-track:c87cce4c7bcb56bf7ad22c269b1725fa01635672937823c787775bdd7016281d` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/instance.md) | 184 | `declaration-track:0697b5d42ea5eacc6b324a98000a1b3e08ca8726d56f1bd8097252be8570ff62` |
| 20 | `theorem` | [tendsto_cons](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/tendsto-cons.md) | 188 | `result-track:fe392f5f5219ce7d2bcf2e0c620c87de2ab91b5202027aaca889b6f792ccc3fe` |
| 21 | `theorem` | [tendsto_insertIdx](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/tendsto-insertidx-source-edition-3.md) | 194 | `result-track:b9448b1309779d0a903fbd32a6f598bdf8cd99bdf5ef7a69490f5133e779678c` |
| 22 | `theorem` | [continuous_insertIdx'](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/continuous-insertidx-source-edition-2.md) | 204 | `result-track:9352f55f551a894b690cacd6cc5d7f351281ac7fd781040d7a66231c2afc09de` |
| 23 | `theorem` | [continuous_insertIdx](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/continuous-insertidx.md) | 209 | `result-track:133595918ac236400abdd210321975245a748349f8e87eac52db6c054b03e7bf` |
| 24 | `theorem` | [continuousAt_eraseIdx](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/continuousat-eraseidx.md) | 214 | `result-track:c9510d373ba691639ec99ecd922b8df875e912d579edd2cb7719d8b35b014589` |
| 25 | `theorem` | [continuous_eraseIdx](../../../../GeneralTopology/TopologyListNamespacedPublic.lean/declarations/continuous-eraseidx.md) | 221 | `result-track:01b4b7ad0668fd09e0eebb1253af92b7a20c60e7209c6bff4ec5a57d78fb4cb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=338d259196427632ba1e05e60a3455bbd28ed6af63278cab6d16642e9770fc57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/List/Variantc5028b03d239f4c88f70242212f8f3b08b3f05a07aa8aa291c5dd463db295752.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
