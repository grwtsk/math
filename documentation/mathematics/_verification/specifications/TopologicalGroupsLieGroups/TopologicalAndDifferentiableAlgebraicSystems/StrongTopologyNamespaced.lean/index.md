# Verification target: Strong Topology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0139c7c777be6bb6a8511e36060a9aaa87935acf",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0139c7c777be6bb6a8511e36060a9aaa87935acf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformConvergence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [strongTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/strongtopology.md) | 83 | `declaration-track:271673dbf46ca378826cff5793499c419e93ec5c6f92f5b65484e16489897f16` |
| 2 | `def` | [strongUniformity](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/stronguniformity.md) | 91 | `declaration-track:780f4586b3b73d1705c2655f8677922347455ed4481ac17e1e14343213b085be` |
| 3 | `theorem` | [strongUniformity_topology_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/stronguniformity-topology-eq.md) | 99 | `result-track:5a74c87e0c113eb5779c93ba17400c82d9265c96e698c687390adadaaf142d60` |
| 4 | `theorem` | [strongUniformity.uniformEmbedding_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/stronguniformity-uniformembedding-coefn.md) | 104 | `result-track:02f60e6e5d348953dbbab2e33f331763153a9c29ea8db691e5f2e9d64f621a7c` |
| 5 | `theorem` | [strongTopology.embedding_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/strongtopology-embedding-coefn.md) | 112 | `result-track:97d01e8257bdece45a0d4b8c40f4600213251a7b302b11eac8b4c21a713fa878` |
| 6 | `theorem` | [strongUniformity.uniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/stronguniformity-uniformaddgroup.md) | 118 | `result-track:1977fe5f65b0e598796e2b8273f71554a6f6f96ca6fab9b90ab0ed2f40f2a0ff` |
| 7 | `theorem` | [strongTopology.topologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/strongtopology-topologicaladdgroup.md) | 127 | `result-track:3404c64b561609eb6ab8743b4913d329347028e2ebf8f355127abbb9fd9a3e39` |
| 8 | `theorem` | [strongTopology.t2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/strongtopology-t2space.md) | 136 | `result-track:3c9bcd102dee239eae449be7f18e3bdaa629ae6c6d3d522e4acbb777d6bd6eb6` |
| 9 | `theorem` | [strongTopology.continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/strongtopology-continuoussmul.md) | 145 | `result-track:d87b9984322192153aa63eb024f08d04ae6d215e75720d5709fe85953f17b7fc` |
| 10 | `theorem` | [strongTopology.hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/strongtopology-hasbasis-nhds-zero-of-basis.md) | 160 | `result-track:553500737ea7cf95dad304e1eeda9eaec9521c7dd079cee7d00c069418fd1c74` |
| 11 | `theorem` | [strongTopology.hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/strongtopology-hasbasis-nhds-zero.md) | 175 | `result-track:3d7bcfb9cbf7ace6846f5e0529664e4efa82984130fe5340d186034cb544bc71` |
| 12 | `instance` | [topologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/topologicalspace.md) | 194 | `declaration-track:c8e0609557dc136a3028ecd86b6ff470756c00b2b922072c766bf55f7c572e47` |
| 13 | `instance` | [topologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/topologicaladdgroup.md) | 198 | `declaration-track:71b208fb13ac84df42ec94e31b52c604cf79db5c999803b4da97c753d41b99ac` |
| 14 | `instance` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/continuoussmul.md) | 202 | `declaration-track:615149d5a8cc7a31438338186775e910827e38142f0244605c4b6aa39ac0ad2e` |
| 15 | `instance` | [uniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/uniformspace.md) | 208 | `declaration-track:ccd0f2e459fbb6eee3394cd9e9da7c4ae95f8d6ebf08116de50e68bef8bb6750` |
| 16 | `instance` | [uniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/uniformaddgroup.md) | 211 | `declaration-track:e952d6ea9c3b906b0ed4bae22e3224a4de8c0da57696656625d7cb07253e1bdd` |
| 17 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/instance.md) | 214 | `declaration-track:51196f46891fa4742e2f9c6a046797bdde3ff21cfd171dc5cd3a35dea8a1720c` |
| 18 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 220 | `result-track:c057cb55ba8deaa6ecdab483cd18e28c4c134ca73192beb00c3039c939d69fc9` |
| 19 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/hasbasis-nhds-zero.md) | 229 | `result-track:510ca3f5da4b12bade694ccb8a15fffac52099daea4cf3ba9fb9bd687da9cef1` |
| 20 | `def` | [precomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/precomp.md) | 242 | `declaration-track:79d63bf2bb34e9a831b478250424d74b9886308c4a19dba1a048797864f0c472` |
| 21 | `def` | [postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/postcomp.md) | 264 | `declaration-track:82a169cfef9cefe1d55b78c6079fde631a30286dca4453541ecf132fd9cad718` |
| 22 | `def` | [arrowCongrSL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/arrowcongrsl.md) | 307 | `declaration-track:1cbe4c2f725d0ba6d05f19825ef8dc0d633f90d11a2fc0a34d8207b341cef77a` |
| 23 | `theorem` | [arrowCongrSL_toLinearEquiv_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/arrowcongrsl-tolinearequiv-apply.md) | 330 | `result-track:f4842b8a8c84cf2f49442e9fddfddf775db5f139798d2f60e721b5aa288b93b0` |
| 24 | `theorem` | [arrowCongrSL_toLinearEquiv_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/arrowcongrsl-tolinearequiv-symm-apply.md) | 338 | `result-track:29c39299478c20adb4f7d2e5754bfb7a2d8c70ff83e78addb5cbeb96b39d675b` |
| 25 | `def` | [arrowCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/StrongTopologyNamespaced.lean/declarations/arrowcongr.md) | 357 | `declaration-track:534caeffecf2f99a3cedef66432116974765628e95469bf497371b9592529a95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4a12b7712a8199c6aa06af67d5480550daba7986b690ec74bcde52a904af4b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
