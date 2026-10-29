# Verification target: Subgroup Center Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f5068e5bee6299b9951f5ef6de7313c2a43e2f6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f5068e5bee6299b9951f5ef6de7313c2a43e2f6`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93.lean.json)

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
| 1 | `def` | [center](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/center.md) | 30 | `declaration-track:bf6b78165525d9b7672028dfc5546615cd08ee73e8c95421056af54d1f7061d6` |
| 2 | `theorem` | [coe_center](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/coe-center.md) | 35 | `result-track:0c8b94f9a3a8231b9a51486fb96c97438f35da7459f6f1085fe1beaf62ce137e` |
| 3 | `theorem` | [center_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/center-tosubmonoid.md) | 39 | `result-track:57537dd403f7918c4f4b3735eb7566fd594c96a9d06dbc1eed7ae8df4df60164` |
| 4 | `instance` | [center.isMulCommutative](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/center-ismulcommutative.md) | 42 | `declaration-track:30de289898318619448fe40cbc7ba7b995e055aaefbf5d470418d5e2a4c3797f` |
| 5 | `def` | [centerCongr](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/centercongr.md) | 48 | `declaration-track:622a2fc425853e0d5174997438b209640e90dab818bb6e4dd847c0e2d0e9af42` |
| 6 | `def` | [centerToMulOpposite](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/centertomulopposite.md) | 53 | `declaration-track:4d68fcb74c3aee97063f1528b59c7032cd2b32f5a8919b4bd1f0f145119ca02a` |
| 7 | `theorem` | [mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/mem-center-iff.md) | 58 | `result-track:68a0ef1c0fbd215ff97f9b1c101bc9014a0e9aa826bfb850c7d79a6f4e9aef47` |
| 8 | `instance` | [decidableMemCenter](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/decidablememcenter.md) | 62 | `declaration-track:c773995ec65daec7dae0125b0c431c58f4bf1bb95af8273b0807f53abf5fc56a` |
| 9 | `theorem` | [map_center_le_center](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/map-center-le-center.md) | 66 | `result-track:af45ff20119f878818a583ad5c14f0d18bcf7e36372f5e61dae767d57b77be85` |
| 10 | `theorem` | [comap_center_le_center](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/comap-center-le-center.md) | 71 | `result-track:ad4094785af6b9a964fd0518b376ba1fb9017a775fef2229a1e2c9b83f5b2da7` |
| 11 | `theorem` | [map_center_eq](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/map-center-eq.md) | 76 | `result-track:255675c0b93a26ced7d25fbedfbc59cdf19ec9a973450ea47e557b46c0af482e` |
| 12 | `instance` | [centerCharacteristic](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/centercharacteristic.md) | 81 | `declaration-track:e18c9f7228f99043d08a39854900a7ceaf1d15c011f6dbf8a87913635e14fcf2` |
| 13 | `theorem` | [_root_.CommGroup.center_eq_top](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/root-commgroup-center-eq-top.md) | 89 | `result-track:47e6dd78815ad3e2b7d885d95f5312c3723bcf87fdd9f2b52688ede099aee39f` |
| 14 | `theorem` | [center_eq_top_iff](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/center-eq-top-iff.md) | 97 | `result-track:8ad5858f30273341856c302c1dfd4adff601aceacc44b411b8e5d587e872488a` |
| 15 | `theorem` | [center_eq_top](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/center-eq-top.md) | 101 | `result-track:6bacfe89b60fbb238079cafc5921021a02de06d4cf6dcca3eb3806756d720a16` |
| 16 | `def` | [_root_.Group.commGroupOfCenterEqTop](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/root-group-commgroupofcentereqtop.md) | 107 | `declaration-track:f5f4cdd9109b28502f4db984df9ca5010445b74430010485b1f773616ad08d74` |
| 17 | `theorem` | [center_prod](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/center-prod.md) | 117 | `result-track:85bbd30dde1561164a649a25f9fb1f9c14be715f6b34d741fadc68a8931f1896` |
| 18 | `theorem` | [center_pi](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/center-pi.md) | 121 | `result-track:b1ea26ff7e06259f584fb69dc9900ad9c1165de19c458c7c8038b37ac12a2425` |
| 19 | `lemma` | [normal_of_le_center](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/normal-of-le-center.md) | 128 | `result-track:127c1f7339eddb280a17af899201c04aa8f7fa1f6d54ee6e8d51b26d351f216f` |
| 20 | `instance` | [instNormalCenter](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/instnormalcenter.md) | 132 | `declaration-track:4b316f7113426c4a326796f0b85938e24cdde3161322922788442b6b1d3dac46` |
| 21 | `theorem` | [center_le_normalizer](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/center-le-normalizer.md) | 135 | `result-track:263db70a50316697ab07bee2337de492c941c250ed78964b555b3ddce75ee598` |
| 22 | `theorem` | [eq_of_left_mem_center](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/eq-of-left-mem-center.md) | 147 | `result-track:66da2f89581917abde34fbad31d71ee9d232283f96d967092bf55c0fb83d841f` |
| 23 | `theorem` | [eq_of_right_mem_center](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/eq-of-right-mem-center.md) | 150 | `result-track:d3cf3bbda9ca0b7c8d5c5ef68728ff3ed31fdfd367afde5f3bc0e56a4d0b964b` |
| 24 | `theorem` | [mk_bijOn](../../../../GroupTheoryAndGeneralizations/SubgroupCenterPublic.lean/declarations/mk-bijon.md) | 158 | `result-track:65690d53579397bc42675cb10894b7e34e8c4f14660a060790937d45714be7eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c2da3651537390e77a442a26ad99a8a4cefc5d3e1469520a7c34519f079a1f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Center/Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Center/Variant4f4ca009b6f8cbfc42a2c5503dba3859670abd5d43e1e8257273b4057f5bee93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
