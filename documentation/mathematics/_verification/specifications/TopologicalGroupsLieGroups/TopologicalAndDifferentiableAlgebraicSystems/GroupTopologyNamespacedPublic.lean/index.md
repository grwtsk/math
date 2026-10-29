# Verification target: Group Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2e82ccdf5b6e461039328b8ac84313c25a115ce",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupTopology/Variantc1c622d8d08ca6cb075dfce5583f8b82fd9d5a99847c61d18776583c008d5bfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2e82ccdf5b6e461039328b8ac84313c25a115ce`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupTopology/Variantc1c622d8d08ca6cb075dfce5583f8b82fd9d5a99847c61d18776583c008d5bfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupTopology/Variantc1c622d8d08ca6cb075dfce5583f8b82fd9d5a99847c61d18776583c008d5bfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GroupTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/grouptopology.md) | 44 | `declaration-track:2fe8c22640f37ee6daf31da321f660732d3e3dda7eafdeebc62982b72ecfdb13` |
| 2 | `structure` | [AddGroupTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/addgrouptopology.md) | 49 | `declaration-track:60117d0f2235bcef309d03c7c274d297df85fd25a3120497d698c76216756b13` |
| 3 | `theorem` | [continuous_mul'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/continuous-mul.md) | 60 | `result-track:afaaf155f98e945d9fa2199abaaa6038210886a7a18ed311280673f8f3c8caee` |
| 4 | `theorem` | [continuous_inv'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/continuous-inv.md) | 69 | `result-track:d9ab12e52a2ccd6714d1313b8c25ac5c05de95da457407cae3aa1535d9f1235e` |
| 5 | `theorem` | [toTopologicalSpace_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/totopologicalspace-injective.md) | 77 | `result-track:a1ec76a0cff6ea823b5e727e596ee5039a85ba4f1e92128b1eb069e719322892` |
| 6 | `theorem` | [ext'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/ext.md) | 85 | `result-track:308cea1185a7a3b63565ee7be4aee1743baef342c1daded16c303518cd75440d` |
| 7 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 93 | `declaration-track:f73b95b76428187d989ef8d46000b139a0e5d9fed8eae160a8be4331443bae76` |
| 8 | `theorem` | [toTopologicalSpace_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/totopologicalspace-le.md) | 97 | `result-track:cf68ff30914e7ea6058b5869420824e1423d6fcb24860fa58ed5f446d990bbe0` |
| 9 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 102 | `declaration-track:dc7bad830c463ab26aa2418b96e027069e4f6ffd3f5dab3228dcc423ea1f6f22` |
| 10 | `theorem` | [toTopologicalSpace_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/totopologicalspace-top.md) | 108 | `result-track:5f11e6e1742556bec6b224ae0a01f08d80e98bf7649ebd12354d78586a182e88` |
| 11 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance.md) | 112 | `declaration-track:0915b84dcc63c1a790992957e987f3e796c66346022d8281520653b40821978c` |
| 12 | `theorem` | [toTopologicalSpace_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/totopologicalspace-bot.md) | 120 | `result-track:e6ae93157523dec0e17f76ec700a1da68170957c8d0e6ea31ad0f7aff1b58618` |
| 13 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 124 | `declaration-track:7835ad317fdce8d7cc6f36db3cb9a47089c2aa711af5d1cbf56ae778ddbe2d28` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 129 | `declaration-track:83aabbd062ccf325cebaf3ec09e3b47bc66f6faf43551203235af38a2089390c` |
| 15 | `theorem` | [toTopologicalSpace_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/totopologicalspace-inf.md) | 132 | `result-track:766529b12353f745d11f0884af0c6180b1adb3e89c9af661fa0cdbaa5f102721` |
| 16 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 137 | `declaration-track:46bda7f1ed78846c05bc8f7dbdcb466bc056112df3c1440fe47eea66ac413349` |
| 17 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 141 | `declaration-track:aeabe263dee38e9b1bfe2da365e244c12af68be97727666e5352c1e20a3a9f77` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 146 | `declaration-track:a960751c10eb390cb4db38115bf0e8c269685d98b11343ff4ee055beac296050` |
| 19 | `theorem` | [toTopologicalSpace_sInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/totopologicalspace-sinf.md) | 151 | `result-track:2acc2404483f3823d49875f59b9f312581734df36cc09cd54f74169b3e81c123` |
| 20 | `theorem` | [toTopologicalSpace_iInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/totopologicalspace-iinf.md) | 155 | `result-track:2cb8ec1acc09d4763e22d68a7af6a49e80b8fc509bb82f3d33fb1903373875e9` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 176 | `declaration-track:24fe9a387a500c60c98111f1d856d456e3e993903a7bb600339628d3e3640a0f` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 182 | `declaration-track:c6dde149902b62b69a7a5b1177ec15ce9b30f19cba1c657af729039f12230f62` |
| 23 | `def` | [coinduced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/coinduced.md) | 193 | `declaration-track:16019a30ce002c8444ab3e8966e9cf3eb2a7080044a70623d47a9d99fedc5f23` |
| 24 | `theorem` | [coinduced_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupTopologyNamespacedPublic.lean/declarations/coinduced-continuous.md) | 198 | `result-track:1d4643401429baf75b833a3e6d7f4d646189fca0fabc5d08c4db198ae5c82d6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d231d104613c719fa30cf1edbc026145f98ae7042aa2a1e125c429ad2c43aa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/GroupTopology/Variantc1c622d8d08ca6cb075dfce5583f8b82fd9d5a99847c61d18776583c008d5bfb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/GroupTopology/Variantc1c622d8d08ca6cb075dfce5583f8b82fd9d5a99847c61d18776583c008d5bfb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
