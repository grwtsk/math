# Verification target: Topology Perfect Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf2191ec8dcca4ee9d086d594ffbbc28bc578870",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf2191ec8dcca4ee9d086d594ffbbc28bc578870`.

Source path: `GRWTSK/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean.json)

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
| 1 | `theorem` | [AccPt.nhds_inter](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/accpt-nhds-inter.md) | 75 | `result-track:53f62228274fd10580ba592ca772834046237f0af007e761915db903ec05b8e4` |
| 2 | `def` | [Preperfect](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/preperfect.md) | 86 | `declaration-track:dac8e9f093fd3a207c7d9a12e61dfd3f32d3470a315445ba7f31e8fc8ec91ae3` |
| 3 | `structure` | [Perfect](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/perfect.md) | 93 | `declaration-track:a2779a454f3bd9a61a8ae744b03e2678c5b67711ae71abb4a2beb4845e875384` |
| 4 | `theorem` | [preperfect_iff_nhds](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/preperfect-iff-nhds.md) | 97 | `result-track:f7c364cdf45d38c38f1232077e98a07f6b08c22945d3e14e72df85b08d2be41f` |
| 5 | `class` | [PerfectSpace](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/perfectspace.md) | 109 | `declaration-track:ee9c414013dfcca3d16a9f3935540d5fbac205db9f43db9fc5ab10dbddc9b20d` |
| 6 | `theorem` | [PerfectSpace.univ_perfect](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/perfectspace-univ-perfect.md) | 112 | `result-track:da443627683fde16bbdfcda2af31993bfbf33c97a2e8cc61bde80150a08d1a3a` |
| 7 | `theorem` | [Preperfect.open_inter](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/preperfect-open-inter.md) | 120 | `result-track:496c0674495b11db122e82fa1a6540e298a4701efcdc7db237bc5ade34a787c1` |
| 8 | `theorem` | [Preperfect.perfect_closure](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/preperfect-perfect-closure.md) | 128 | `result-track:894668de58554a9e548238ae0d8606e2d55e9ea96db3d5434097aff7cfe53c98` |
| 9 | `theorem` | [IsOpen.preperfect](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/isopen-preperfect.md) | 141 | `result-track:5e636378e23aadb79e7fd3cca159f1ce5b1a6ca933a6003bde95d88f3bdbad9d` |
| 10 | `theorem` | [IsOpen.perfect_closure](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/isopen-perfect-closure.md) | 148 | `result-track:54bb8baca819def3e96fb93a7193cf895d8a77841820df31074fa63a89cbe854` |
| 11 | `theorem` | [preperfect_iff_perfect_closure](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/preperfect-iff-perfect-closure.md) | 153 | `result-track:04f1d4518c3d90127dd65b173c899c0ca217acb69e47f030038d916f11e6b2cc` |
| 12 | `theorem` | [Perfect.closure_nhds_inter](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/perfect-closure-nhds-inter.md) | 167 | `result-track:6b0e03ce562c260f111016f3e1c6ae8c3b3a79d346b4f94137a4499cc29339e7` |
| 13 | `theorem` | [Perfect.splitting](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/perfect-splitting.md) | 177 | `result-track:d0dcdccc56ca9abcfddb24740932ff73404319e40dc635f6449bf0a3a5ab3d0b` |
| 14 | `lemma` | [IsPreconnected.preperfect_of_nontrivial](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/ispreconnected-preperfect-of-nontrivial.md) | 198 | `result-track:933f2626b89a74a7e91c0713a00b9b037ac61362cee05f5e1ee63a61734148ac` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/instance.md) | 218 | `declaration-track:8c096518bab9ea5753bf8fb465739bab2736f90797587b8380d18b60617ae4a4` |
| 16 | `theorem` | [exists_countable_union_perfect_of_isClosed](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/exists-countable-union-perfect-of-isclosed.md) | 230 | `result-track:bc9f2f7d764f5179c4ac4f328c1d765485b6b72faba0223cafeee6ab19286a92` |
| 17 | `theorem` | [exists_perfect_nonempty_of_isClosed_of_not_countable](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/exists-perfect-nonempty-of-isclosed-of-not-countable.md) | 265 | `result-track:cc348711bf46c0ada43fa9804aba8915d9a7c751d1b29c7202e8affdf738409b` |
| 18 | `theorem` | [perfectSpace_iff_forall_not_isolated](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/perfectspace-iff-forall-not-isolated.md) | 286 | `result-track:eaeff60451b1cca4d7a456003534f290678fbd17468b6cc048662c9e8ffc3777` |
| 19 | `instance` | [PerfectSpace.not_isolated](../../../../GeneralTopology/TopologyPerfectNamespacedPublic.lean/declarations/perfectspace-not-isolated.md) | 289 | `declaration-track:72c3709a5c751d556ab9aae321034861b9ef096899615f489798674ee594b686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d94cb740a4fe458508747652eb7d934bfaee936939fb671bc5219e32cff9aaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
