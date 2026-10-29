# Verification target: Service Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a10eb1f9c640bf5af9904a1e9dffc96833d9d1c3",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a10eb1f9c640bf5af9904a1e9dffc96833d9d1c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Reactive.ExactlyOnceRaster` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Reactive.Transaction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ServiceSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/servicesnapshot.md) | 32 | `declaration-track:67040f4af8c28363c82a71fc9f80b352b9cc4ac0cedc328b80a7a389acd05dd5` |
| 2 | `inductive` | [RefreshPhase](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/refreshphase.md) | 35 | `declaration-track:cf8639d1fc61bd2de841ed6544fb0a42a5ebfa8415959801d539a36a43fc9103` |
| 3 | `inductive` | [RefreshPhaseTransition](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/refreshphasetransition.md) | 49 | `declaration-track:3ac4ddc2da46425375ff33571f42ccd76a4df656abdaacd7aeca39f66f673012` |
| 4 | `theorem` | [failed_phase_terminal](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/failed-phase-terminal.md) | 77 | `result-track:f39516d9f6b755e82543d6722f3da135de0479485619fd6232ed31bb6124e8fb` |
| 5 | `theorem` | [stale_phase_terminal](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/stale-phase-terminal.md) | 83 | `result-track:0f38046f1b6c11ff1cda900194f0d683a7720f93b0ef389481ef2ebb44399b0c` |
| 6 | `structure` | [ValidationState](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/validationstate.md) | 93 | `declaration-track:4bc5a64436acdde520a8ef19f8eb435d267b75bda08c700b08786a83fc1261eb` |
| 7 | `structure` | [RefreshCandidate](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/refreshcandidate.md) | 102 | `declaration-track:9ff78bbfbef93699bc0c16da3479a7da54345f5958a8796b05b059992d45082a` |
| 8 | `def` | [FreshFor](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/freshfor.md) | 111 | `declaration-track:3e6c3835ef44eb2042ecf39625c908c955745b60b1063f7e37b7381afb533e8b` |
| 9 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/instance-source-edition-2.md) | 116 | `declaration-track:8c5fe441ee4237932934338b5528fd33087eb84272a8c3d7638ba2acd6e98d12` |
| 10 | `def` | [MathematicallyStable](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/mathematicallystable.md) | 126 | `declaration-track:f4a05aacadc35c00bc03d628828f05f194b6d237f9adcf4cfee1ab2eff2d94e3` |
| 11 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/instance-source-edition-4.md) | 133 | `declaration-track:ee04862b6422350e5501021ddd87daac1a57c26b65e58cd401a9cf105cbf8746` |
| 12 | `def` | [WellFormedSuccessor](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/wellformedsuccessor.md) | 139 | `declaration-track:5c4341a15dac88dbbcdb8235c5ab4d1bc5f54e74b980fed2464f53f6a771f885` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/instance.md) | 142 | `declaration-track:347bf6697c8bdb418ad914d16f414145d9aedce2a3f565d4422475ee4eed9e53` |
| 14 | `def` | [ReadyForActivation](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/readyforactivation.md) | 148 | `declaration-track:acd65b958aeb80d1ae8774b3a79988e88bf9e33e5e5055a4b256cf3aa81759aa` |
| 15 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/instance-source-edition-3.md) | 153 | `declaration-track:97036454300ca4df9ffb6750f4b7ce2296ed8a9ad40fd0bdb57bd7dabecf0625` |
| 16 | `def` | [RefreshCandidate.advance](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/refreshcandidate-advance.md) | 159 | `declaration-track:b41228401f62f20fc617d8914153913ee13376dbba2303673fed1e8a7233bee7` |
| 17 | `theorem` | [advance_preserves_snapshot_binding](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/advance-preserves-snapshot-binding.md) | 166 | `result-track:e9cac514e1ab4cc94e41451c755971a97572fdbc25c8ca278dfa734bcce0d51a` |
| 18 | `structure` | [AuthorityInputs](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/authorityinputs.md) | 176 | `declaration-track:b78ecaa769f2553c8ff5bdb99ee3306ee78604e61f21a5f6ac3349fd3b33fb15` |
| 19 | `structure` | [ServiceState](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/servicestate.md) | 187 | `declaration-track:a63de6f5d6db4923324fe114e3939edad4f593e557e8437827771240c195a653` |
| 20 | `def` | [enqueueRefresh](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/enqueuerefresh.md) | 196 | `declaration-track:62cfcd6eabc0bdc70b442a28fcde39b15d3eeae539cdc01fdeac34c5bf876c3a` |
| 21 | `theorem` | [enqueueRefresh_preserves_active](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/enqueuerefresh-preserves-active.md) | 202 | `result-track:987d674e3579e3c2a0204e9110b3e43e84884fb06d3d8c6e11e687efeed8adf3` |
| 22 | `theorem` | [enqueueRefresh_preserves_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/enqueuerefresh-preserves-authority.md) | 208 | `result-track:65469d1f4dbdaac1c3ade86c26688a2be78b1222747391879f0e8f93f2835448` |
| 23 | `inductive` | [ActivationDecision](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/activationdecision.md) | 215 | `declaration-track:0733b71d098c5ac7ccff09f6b2dd140c9119aff9b9383fd2032161ff4f58c55b` |
| 24 | `def` | [decideActivation](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/decideactivation.md) | 229 | `declaration-track:3c0e122243f7eeb96e8198d51ebc28478afacc68609ae65f14046f6a200366a2` |
| 25 | `theorem` | [activation_decision_requires_freshness](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/activation-decision-requires-freshness.md) | 245 | `result-track:06fdd38fa294fceb2f919743111ab962116377616abc1303af08ec4c19d22670` |
| 26 | `theorem` | [activation_decision_requires_readiness](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/activation-decision-requires-readiness.md) | 269 | `result-track:0f9da689b2e2d869c34b29a33501aea57c1b3a595b287815ccdd0183aa9ad8f6` |
| 27 | `theorem` | [activation_decision_requires_stability](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/activation-decision-requires-stability.md) | 293 | `result-track:a004d2431af6a637a473533fd02abf2f15b8ed61798a8129e943922c034f422f` |
| 28 | `def` | [commitDecision](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/commitdecision.md) | 304 | `declaration-track:26c479ca2683777babb14be67a216faa5dfce499da7fee8f6c5f77ae60479162` |
| 29 | `inductive` | [ActivationStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/activationstatus.md) | 318 | `declaration-track:61a464ae286b0a229cefb8e9b375edceb5ec405e2549e6d4ee179eec901f5013` |
| 30 | `def` | [ActivationDecision.status](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/activationdecision-status.md) | 326 | `declaration-track:dfe59fe093b3e8034072a5bdfa7c04e7e215665fb2e415296a680a15e0e136f9` |
| 31 | `structure` | [ActivationResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/activationresult.md) | 333 | `declaration-track:51f226097ca37be0de835cb37634f884d5dfe41fa1b689956ed2f5ccf14aa3f6` |
| 32 | `def` | [tryActivate](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/tryactivate.md) | 339 | `declaration-track:9c6cc05eb2e25107a13765c7db089eee9784fd59e5e23de53235f2a1d46f39e5` |
| 33 | `theorem` | [successful_activation_is_atomic](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/successful-activation-is-atomic.md) | 346 | `result-track:e6eeb621b3e823af5c5bf35e7c8e45b67aaaee4cec227c7bd90ed5c1cc6df8d4` |
| 34 | `theorem` | [unsuccessful_activation_preserves_state](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/unsuccessful-activation-preserves-state.md) | 360 | `result-track:b7f341adadd4b4a541c5585d7dc705ec64d45c0d3508e2c2ef4a3c87d704ccc0` |
| 35 | `theorem` | [failed_activation_preserves_state](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/failed-activation-preserves-state.md) | 379 | `result-track:0a4cb209c52919bdc0b5cabf945dd65c0bca65ad0dac7960c7550366d30a8f21` |
| 36 | `theorem` | [stale_activation_preserves_state](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/stale-activation-preserves-state.md) | 392 | `result-track:a34534f01e6ef59d761f7b60da109ea559a374aac022e39c8ccb8892db05ce2f` |
| 37 | `theorem` | [incomplete_activation_preserves_state](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/incomplete-activation-preserves-state.md) | 405 | `result-track:1048f663826351c3dc269dddd15b0acf6db6475f21d14cead05e74476991de46` |
| 38 | `structure` | [EventPacket](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/eventpacket.md) | 419 | `declaration-track:120b57f09d6e889766e66fc6787d8a5abc7a84480c61b5ca7564c97c0606ffde` |
| 39 | `inductive` | [ServiceRasterCell](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/servicerastercell.md) | 428 | `declaration-track:17b787c4b37cacc3e2ffbacd99ac67304b4b971d98e34aa9dfbdf177ac7bce96` |
| 40 | `def` | [rasterView](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/rasterview.md) | 437 | `declaration-track:999dc1e15305b1765398c116245a6902d6f8572202148b6584f1225bd4f02e47` |
| 41 | `def` | [EventPacket.toConditional](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/eventpacket-toconditional.md) | 444 | `declaration-track:0f8393eff3ca89aba6a30c5a636e87aaa4190fc7e9cead833fb255d3e67d7d75` |
| 42 | `inductive` | [EventApplyStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/eventapplystatus.md) | 454 | `declaration-track:996680cafacc69af9084173cf36f0e590018b92adcb051937077ce07a2ec5050` |
| 43 | `structure` | [EventApplyResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/eventapplyresult.md) | 461 | `declaration-track:c99a74bc8b09e6218043823297a14234613cadef054104f4ca0cebdcebcbadbe` |
| 44 | `def` | [applyEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/applyevent.md) | 470 | `declaration-track:4dbddf1c14ee93131571c8d3d963d39c8e97dd6cc085236c975c7bb710e9650c` |
| 45 | `def` | [applyEventState](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/applyeventstate.md) | 491 | `declaration-track:72f7a95e1edf6b4d0e7f170c1f1f0076a0f19a276d437048e41ee5c114d21e14` |
| 46 | `theorem` | [fresh_event_refines_exactly_once_raster](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/fresh-event-refines-exactly-once-raster.md) | 502 | `result-track:9f34c9b8798a3937a8b7fec05cfa1712df2635962827cffc48b159a6d2fb7219` |
| 47 | `theorem` | [stale_event_is_noop](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/stale-event-is-noop.md) | 592 | `result-track:e3ac89c867f971b1da06ae599f6cd4d2585b37fcee796f34cfa77ed776e468a2` |
| 48 | `theorem` | [duplicate_event_is_noop](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/duplicate-event-is-noop.md) | 599 | `result-track:2dc1b1d8c95e297438015c40cbb2a8f4d2323f6b9b9eaf1a7655f58a519ea3b3` |
| 49 | `theorem` | [false_event_is_noop](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/false-event-is-noop.md) | 608 | `result-track:390f91a94878aae049f7e93647e89ee81fa148397d78f228f0b3991238af46dc` |
| 50 | `theorem` | [fresh_unseen_true_event_applies_atomically](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/fresh-unseen-true-event-applies-atomically.md) | 619 | `result-track:a53060a3f05a590721e438cf85ed1dc02e42cd4e7de472cca2f8992305af0e52` |
| 51 | `theorem` | [applyEvent_preserves_active_snapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/applyevent-preserves-active-snapshot.md) | 630 | `result-track:a30c0fd5205ab2137962b56a38aea1b37770a15670454f8798cd4fef0b2807ff` |
| 52 | `theorem` | [applyEvent_preserves_refresh_queue](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/applyevent-preserves-refresh-queue.md) | 642 | `result-track:872eff3e5a5a936422b9d0b6c20598b75d57c8a1c8cd18bb3103b4cbf6491c6d` |
| 53 | `theorem` | [applyEvent_preserves_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/applyevent-preserves-authority.md) | 654 | `result-track:9a3335ca82dacce3cbe59464696dcf0b531498475efdc32b580f96b245528255` |
| 54 | `theorem` | [applyEvent_replay_idempotent](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/applyevent-replay-idempotent.md) | 667 | `result-track:87415bbf2689cdc89d6b9f40f8bb800e6969aa3ea23f5bceb6fcf59d24efd454` |
| 55 | `theorem` | [event_replay_nonauthority](../../../../../ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/declarations/event-replay-nonauthority.md) | 694 | `result-track:26111f353e85120043cba567e29c4b943a423d059c1ede9656a68e9a17463f5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23ffb1099240f7180936fddcb00f498b1565523411279accfd48c11e980277e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
