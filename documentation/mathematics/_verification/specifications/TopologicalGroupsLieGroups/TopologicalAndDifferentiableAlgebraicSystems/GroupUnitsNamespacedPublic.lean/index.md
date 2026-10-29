# Verification target: Group Units Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "242633a2b01600c8d531baef0f4e1a191297e81e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `242633a2b01600c8d531baef0f4e1a191297e81e`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean.json)

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
| 1 | `lemma` | [Submonoid.isOpen_units](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/submonoid-isopen-units.md) | 37 | `result-track:cd1430f3ed5f36f36b2a6ab2492a1399a6079e1629c7ef0dd4c054c0f285cfd0` |
| 2 | `def` | [ContinuousMulEquiv.piUnits](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/continuousmulequiv-piunits.md) | 45 | `declaration-track:22e8e808d7759443bdad2f7005e70cd4eec165643a4044ba84fd689e2ac5e1ce` |
| 3 | `def` | [mapContinuousMulEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/mapcontinuousmulequiv.md) | 62 | `declaration-track:0f5a18f079fb9f1b26361063dba82276994c494bb15678a4e2a7a283391b534c` |
| 4 | `theorem` | [symm_mapContinuousMulEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/symm-mapcontinuousmulequiv.md) | 68 | `result-track:d62c5410c850e2a862797842fa9f1de99be7e6bcfe6c32606a691a70d8f11bb0` |
| 5 | `theorem` | [toMulEquiv_mapContinuousMulEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/tomulequiv-mapcontinuousmulequiv.md) | 72 | `result-track:efedf54bd33c96043962fe33ee52c9199a9a0c21cece352531f619f50158261c` |
| 6 | `def` | [toUnits_homeomorph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/tounits-homeomorph.md) | 84 | `declaration-track:8c9ee4c04ecefed227a0d30512bed9f61a7046eb8c86514cc0e539f0baaf4006` |
| 7 | `theorem` | [Units.isEmbedding_val](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/units-isembedding-val.md) | 88 | `result-track:9af353afe9f03a88001b7cddf86397f28c88b7b68dabc30c52569ce0eed8b55f` |
| 8 | `lemma` | [Continuous.of_coeHom_comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/continuous-of-coehom-comp.md) | 92 | `result-track:e78e2f4e4fb7e2fe09e6eeafe19971fd42d437b01178c9ce3658f6b6b2b340a4` |
| 9 | `theorem` | [range_embedProduct](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/range-embedproduct.md) | 102 | `result-track:f07607e2c55c9cfa457c45cc29070ba4b8be31ac01c479e58f92b5aad696e2e5` |
| 10 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/instance.md) | 110 | `declaration-track:3b41b5c2efda715aad4e9206b5cf9d07af71f7c233f36976532324a397306fe2` |
| 11 | `theorem` | [isClosedEmbedding_embedProduct](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/isclosedembedding-embedproduct.md) | 114 | `result-track:2d4c73b86d6158ead8aaffea64507645ec08789363a5c192c7cf282a39f14089` |
| 12 | `lemma` | [Group Units Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/units-map.md) | 122 | `result-track:9d3ae386827af9c855fd95b6f21e02d6a411316e3a070f8a93ccefc1dbd83f2e` |
| 13 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 129 | `declaration-track:bc65b225c5b2d2955b992019b04d64af27d6e6823556beb8f3cfa7be15b2738f` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 133 | `declaration-track:a7bb5882efcf86ff3c2070b0e9e59a2cac234aed12b361f383f9ab378d87bcd3` |
| 15 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 138 | `declaration-track:5850cbcf8550b8b75ae6d41d2eae501d43732c528bbcd51c2b610bac3ad68602` |
| 16 | `lemma` | [Group Units Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/units-iscompact.md) | 141 | `result-track:8440b557b51c4a94bd0e104144587570f7d0a59ca12eb442d3827688538a83d0` |
| 17 | `def` | [Group Units Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/GroupUnitsNamespacedPublic.lean/declarations/produnits.md) | 151 | `declaration-track:f85c4bc2af600967c03561eaa87695fa73f1a93d0e13d51073eca42bb10bd07c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d91356787f422dc72e83b6cde912fb2038638efef21f97ba7ef269822f850044 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
