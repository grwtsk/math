# Verification target: Topology Locally Finite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "392c8329cf54d59ca4b2362fa6c37faeb7a6fcb2",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant0793a3d5d441a109498fc3c69eb36efb4e5227f22e1049bf55fcdf88fc3a01df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `392c8329cf54d59ca4b2362fa6c37faeb7a6fcb2`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant0793a3d5d441a109498fc3c69eb36efb4e5227f22e1049bf55fcdf88fc3a01df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyFinite/Variant0793a3d5d441a109498fc3c69eb36efb4e5227f22e1049bf55fcdf88fc3a01df.lean.json)

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
| 1 | `def` | [LocallyFinite](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/locallyfinite.md) | 39 | `declaration-track:2dc8f687b2589e209aea17b09b5b6bbc4e2e31b3fd908802c3dc086b05385243` |
| 2 | `theorem` | [locallyFinite_of_finite](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/locallyfinite-of-finite.md) | 42 | `result-track:8f786d5ba4b4c3dd90557aee9fc5ab1ae0b24f4803aa18ce0f8c5462b016cafb` |
| 3 | `theorem` | [point_finite](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/point-finite.md) | 47 | `result-track:4ca34c12bfc56ec4fca7bee3f01e2a2a6b13d430b675cd43c92b459d721c6c95` |
| 4 | `theorem` | [subset](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/subset.md) | 51 | `result-track:4155a8ae5c3fb773affbac229d7ec541bbfd8125c6d6005294e501a32f09e598` |
| 5 | `theorem` | [comp_injOn](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/comp-injon.md) | 55 | `result-track:00cce3680f1f503e41ed8ac0e7ee1d44776138b74ff1563a5ef8de3944d145b2` |
| 6 | `theorem` | [comp_injective](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/comp-injective.md) | 61 | `result-track:7716c536914b9de1ee43f003d8ea1567af9be74d96ccf3c055ad1cd9ee8364cd` |
| 7 | `theorem` | [of_comp_surjective](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/of-comp-surjective.md) | 65 | `result-track:7ae4f6b70f03aa60eb3bd8f9ed384b20bd87f984eb55df1b7a28b44cd5e1d4e1` |
| 8 | `theorem` | [on_range](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/on-range.md) | 69 | `result-track:10a9c39e75a8fa40bb659fd75c769d7af3f48da0dd489fce91820d8c23768550` |
| 9 | `theorem` | [Topology Locally Finite Namespaced Public](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/locallyfinite-iff-smallsets.md) | 72 | `result-track:e629fda784543ed6b562084a05324fcbd0b4c5d6214f6137f97d33c1ea3f08ca` |
| 10 | `theorem` | [eventually_smallSets](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/eventually-smallsets.md) | 78 | `result-track:c798fe3917efab89b9ec9c4dc02ce895773bb889c06053df0dc6d31cc3a277b6` |
| 11 | `theorem` | [exists_mem_basis](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/exists-mem-basis.md) | 82 | `result-track:4f7b1d2decb56f0da3e615b4700b5651912cc17a99d9974b89004c7564e3be24` |
| 12 | `theorem` | [nhdsWithin_iUnion](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/nhdswithin-iunion.md) | 87 | `result-track:77bb2f3d8f2b40bc7742d859d60b639fbc42c2049a4d60201d17283537522a91` |
| 13 | `theorem` | [continuousOn_iUnion'](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/continuouson-iunion-source-edition-2.md) | 100 | `result-track:7c11a2f47577b3a559b32aeb190c52636907a366951011dc5bafa427339438a1` |
| 14 | `theorem` | [continuousOn_iUnion](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/continuouson-iunion.md) | 112 | `result-track:161b8f7b75def62f5163005e404fe6b30dce3f54a71e6fd923cd5acadc088c56` |
| 15 | `theorem` | [continuous'](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/continuous-source-edition-2.md) | 116 | `result-track:4af245cd2e9f05eb02e433401115524bf9560cd0d1ec8a37878ed9c1731ff7cb` |
| 16 | `theorem` | [continuous](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/continuous.md) | 121 | `result-track:35334c3d7e8fd6db433e3cea4aad1489b2a16bb1ae7fadcd35f4683538764ae0` |
| 17 | `theorem` | [closure](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/closure.md) | 126 | `result-track:1d7e92304f46e8829798102d665b0a9ca2f55d74013398ed6ca2adb621d17f3a` |
| 18 | `theorem` | [closure_iUnion](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/closure-iunion.md) | 133 | `result-track:6a3aa87322de3eba3066fe8ab6047b9ee1bd8e07c8c7489ecd07723256dbb219` |
| 19 | `theorem` | [isClosed_iUnion](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/isclosed-iunion.md) | 137 | `result-track:89b4e69cc234956d596ebce5b655f4b87471d9776abc22d286dd7996d75f4b65` |
| 20 | `theorem` | [iInter_compl_mem_nhds](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/iinter-compl-mem-nhds.md) | 143 | `result-track:6a9382f149bf3709dbb7de45996f38f3f417fae4c2e649eda3f331c30d8efffb` |
| 21 | `theorem` | [exists_forall_eventually_eq_prod](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/exists-forall-eventually-eq-prod.md) | 156 | `result-track:8502f45dc8cb8380dfad465c9dfb2269509a0f00e7e1ff27dffe6187d2c5ea46` |
| 22 | `theorem` | [exists_forall_eventually_atTop_eventually_eq'](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/exists-forall-eventually-attop-eventually-eq.md) | 177 | `result-track:65ff82d949961d18e5c575adbd5d4f846e77a01ec1c797e69726a7ae6e5bda2c` |
| 23 | `theorem` | [exists_forall_eventually_atTop_eventuallyEq](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/exists-forall-eventually-attop-eventuallyeq.md) | 186 | `result-track:ca86c2fa727aa318554683cb8d59fcae7915743b477ca247fb885e04024e0188` |
| 24 | `theorem` | [preimage_continuous](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/preimage-continuous.md) | 191 | `result-track:10f990e39cecc49e0b5a83bc93baae49cc4a99031d4c4237272c54869cea2230` |
| 25 | `theorem` | [prod_right](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/prod-right.md) | 196 | `result-track:028508e028039cd3556b2bf6198fb0964a44e56e466d83426528bd9158a2a996` |
| 26 | `theorem` | [prod_left](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/prod-left.md) | 199 | `result-track:e1c834df87f50e57cefd62e903d024a345cd75c7e6de354b9cb21eb8619b3595` |
| 27 | `theorem` | [Equiv.locallyFinite_comp_iff](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/equiv-locallyfinite-comp-iff.md) | 206 | `result-track:53829c2e0796084ad375e8702e88b7d3c5622edda3b844af55448ecfb9390601` |
| 28 | `theorem` | [locallyFinite_sum](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/locallyfinite-sum.md) | 210 | `result-track:cffc1487ee8245621ee9c494d849e96b161387e62acec928a6e94ca42865991f` |
| 29 | `theorem` | [LocallyFinite.sumElim](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/locallyfinite-sumelim.md) | 215 | `result-track:b0a194b0ab043d27b55d5afd5f6b2082ec004cc6495795297a398777b4aeafa4` |
| 30 | `theorem` | [locallyFinite_option](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/locallyfinite-option.md) | 219 | `result-track:10c86eb1cf63afe5fb8fd058632db7a9a52e52e62f265314dcb174536814e65f` |
| 31 | `theorem` | [LocallyFinite.option_elim'](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/locallyfinite-option-elim.md) | 225 | `result-track:c4399a4b0f1a9639ee0d36898d187e076e42b973c3d3292f1641581bf29f55e7` |
| 32 | `theorem` | [LocallyFinite.eventually_subset](../../../../GeneralTopology/TopologyLocallyFiniteNamespacedPublic.lean/declarations/locallyfinite-eventually-subset.md) | 229 | `result-track:e965f2b9c7a9ca168e97d21316d18f0653e62d65eacc8cfdabf7446f672e4767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c92dea3c90e8841f30ab26980a24ab93956d6c37f9eda3f3aef5b2f372a0efa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant0793a3d5d441a109498fc3c69eb36efb4e5227f22e1049bf55fcdf88fc3a01df.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocallyFinite/Variant0793a3d5d441a109498fc3c69eb36efb4e5227f22e1049bf55fcdf88fc3a01df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
