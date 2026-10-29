# Verification target: Extra Geometry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a76fb3cff774a74824038a8028ce0c95a4c65810",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a76fb3cff774a74824038a8028ce0c95a4c65810`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ExtraGeometry/Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Geometry` — import line 1; external provider; requires a separately pinned dependency.
- `Certificates` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rational_ldl_real_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/rational-ldl-real-positive.md) | 21 | `result-track:12925314018af29f6b974d43a13afd7da4f2e3497379a9569dd8f8874394cf6b` |
| 2 | `def` | [d4RealCartan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4realcartan.md) | 48 | `declaration-track:7de1caa220e44e06d62782246a4a354649015cfe1f5c1af0dc8f1d4dba6cf775` |
| 3 | `def` | [e8RealCartan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8realcartan.md) | 51 | `declaration-track:390ebeff8d537d74ed59165d5c60257707a55ba6fb5035f1c1ee0cac22e4beff` |
| 4 | `theorem` | [d4_real_positive_definite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-real-positive-definite.md) | 53 | `result-track:dd89a4f0dc1ca45a3700e9b5430336513906555bf4fce64f26fbd457a7933ac6` |
| 5 | `theorem` | [e8_real_positive_definite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-real-positive-definite.md) | 61 | `result-track:f1a7662ac7c77a7054790293fb41c1666b018fc718b734bf2548e942528f28e9` |
| 6 | `theorem` | [d4_real_quadratic_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-real-quadratic-positive.md) | 69 | `result-track:8a57a5b32e3113f4d3ffea087dba41c8d936ce089d8a2d32f1f99a0f93308b57` |
| 7 | `theorem` | [e8_real_quadratic_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-real-quadratic-positive.md) | 74 | `result-track:535c8db0b8296e1015dd9a03f70c1cb99feadf332e561399ce178982d117f463` |
| 8 | `def` | [height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/height.md) | 80 | `declaration-track:7ab441a49c33f6e16bd9c6c910380c8785b6697dae04266ada1fbdddf970f4a5` |
| 9 | `def` | [d4Highest](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4highest.md) | 83 | `declaration-track:d9aab954ffd31c3971622afc3ffdfdd7812eb30fd1179a3668a1f374904d8826` |
| 10 | `def` | [e8Highest](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8highest.md) | 86 | `declaration-track:197dead45c75003247b040074b55e910c5f0e6a6ca5300e6c1735eda35aac2f8` |
| 11 | `theorem` | [d4_highest_membership](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-highest-membership.md) | 88 | `result-track:49c58176d702ccbd0fac934a40d4fc403373b526ddc1cbf59ad2d0d034624508` |
| 12 | `theorem` | [e8_highest_membership](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-highest-membership.md) | 90 | `result-track:86bb51761cce1d6ddb14399844616abc146f2e8b99ea238f053915ec9e48889a` |
| 13 | `theorem` | [d4_lowest_membership](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-lowest-membership.md) | 92 | `result-track:44508d011d393c695723122d38b7fe5004439608106fc64dff08cfd5ada835e9` |
| 14 | `theorem` | [e8_lowest_membership](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-lowest-membership.md) | 94 | `result-track:8e938f95c33aa32414b7241dc63412c05c4142d5e9621df16be0fcaacb8143b0` |
| 15 | `theorem` | [d4_highest_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-highest-positive.md) | 96 | `result-track:ad110019694554c9637c59735f2bd7eeeca331d2058526c39d3c132cb6a6b530` |
| 16 | `theorem` | [e8_highest_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-highest-positive.md) | 99 | `result-track:c6a417afb0ce3dd9f6cbb716780cb4ebe331d24f8c56b4c9390e362ef5910c52` |
| 17 | `theorem` | [d4_highest_reachable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-highest-reachable.md) | 102 | `result-track:a9cd6571248c8079bab0dc825ffb9b0ab1188a4b63183a1c8d4b07bb982040b0` |
| 18 | `theorem` | [e8_highest_reachable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-highest-reachable.md) | 105 | `result-track:674d3a3dcc210998a3c284127a13a248e1efe6cc9ed663afc1f2ddf8bf2a03d4` |
| 19 | `theorem` | [d4_lowest_reachable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-lowest-reachable.md) | 108 | `result-track:852ddc27577fd3c01f210ccfb1ef317ed2487143e2adefd98b0e653ff5455f2e` |
| 20 | `theorem` | [e8_lowest_reachable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-lowest-reachable.md) | 111 | `result-track:115cec07d119a9131f97db08e5bd05873a9267e3d136560a45bd634a9cb2ce15` |
| 21 | `theorem` | [d4_height_bound_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-height-bound-checked.md) | 114 | `result-track:ed9033a9cc0830241dd41ccd6fd14d88874f481ea82967c576cf94d0e5fe4eed` |
| 22 | `theorem` | [e8_height_bound_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-height-bound-checked.md) | 117 | `result-track:6ba115cad919c423b8bf6839f1242d1b8271180a656c5b4c451726c9b8c4859a` |
| 23 | `theorem` | [d4_highest_unique_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-highest-unique-checked.md) | 120 | `result-track:6d16950c82df0207b6c00269ddc5538365458f914ecda1a9b6d811c62345a60d` |
| 24 | `theorem` | [e8_highest_unique_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-highest-unique-checked.md) | 123 | `result-track:c4c50eaf2aaaa7543f4a9a4316caa266a9f09ced8b9259f2a818eebb8db60098` |
| 25 | `theorem` | [d4_height_bound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-height-bound.md) | 126 | `result-track:dced62e3b7c23475a4c820ec9d79b8076767d5c765739cff7713e48791cd2582` |
| 26 | `theorem` | [e8_height_bound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-height-bound.md) | 132 | `result-track:a756fe304333a0f409feeabaa33dd26af47694592a756087ada5a1b0c8436fd6` |
| 27 | `theorem` | [d4_highest_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-highest-unique.md) | 138 | `result-track:2b9bc67b85fedcd6eecdc252648eac339dbb3d402508ff78dd3caa06e6dc7993` |
| 28 | `theorem` | [e8_highest_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-highest-unique.md) | 144 | `result-track:f104e9602d66c3549ba800a90b61bd817edb74ca1d7b427d2de459c57ea052a2` |
| 29 | `theorem` | [d4_coordinate_bounds_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-coordinate-bounds-checked.md) | 150 | `result-track:50ed47ad0c21896a2e84a5c110d201b90d926a14b9f83cedd3748e7a8502d876` |
| 30 | `theorem` | [e8_coordinate_bounds_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-coordinate-bounds-checked.md) | 154 | `result-track:aceaa94a3ff546d782a70feb995b16ea5bd36d56766522388a565a4154fffd0e` |
| 31 | `theorem` | [d4_coordinate_bounds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/d4-coordinate-bounds.md) | 158 | `result-track:1a91187ff6c9d57d4a9956f456a47430f225ac5af2468079bea8a80e2d1ad880` |
| 32 | `theorem` | [e8_coordinate_bounds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/e8-coordinate-bounds.md) | 163 | `result-track:fc6a8c1465bcffc1b84e5b11e61e2f7251132db660a61a5d3605475f9586c77c` |
| 33 | `def` | [diagramPermutation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagrampermutation.md) | 169 | `declaration-track:1e570abdce1ab3dbeee7ee63e350e4e371d83c25a7d975a63b5673340f78e998` |
| 34 | `def` | [diagramMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagrammatrix.md) | 174 | `declaration-track:6b0ae96d275906d4a3ce2659e4ec43defaef35fa7b4633f8659ea3df2f1dd957` |
| 35 | `def` | [diagramComposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagramcomposition.md) | 178 | `declaration-track:1402ee6c323d6067b7cd3b41ad919cd4857304068d0ef9582e2f6f741fbed275` |
| 36 | `theorem` | [diagram_permutation_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagram-permutation-injective.md) | 182 | `result-track:ef454cb69ce851a7bd322364aba0ab48fe39c347d456832123e9161995702445` |
| 37 | `theorem` | [diagram_permutations_distinct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagram-permutations-distinct.md) | 185 | `result-track:d623a85a8d4753efb8c6c33bf767ea247ed51d6ea8246409f112bbb6b86f8225` |
| 38 | `theorem` | [diagram_permutation_fixes_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagram-permutation-fixes-center.md) | 188 | `result-track:e51c58aa9463916f8f74bec75685c398bc413611dee74365d96473e9b83c91cc` |
| 39 | `theorem` | [diagram_composition_checked](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagram-composition-checked.md) | 191 | `result-track:dd4eda5d5dbe3289d40fa2e18106fcce05ffaa7c38115f4df20afdf3834e703e` |
| 40 | `theorem` | [diagram_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagram-identity.md) | 195 | `result-track:6b576316c41c11606214a8d632dadeb3039a040f486baeec8e83bc8be49c6251` |
| 41 | `theorem` | [diagram_matrix_composition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagram-matrix-composition.md) | 197 | `result-track:5a68d847b5be3efd4717763adcb56aa72fd3e767f674556c042178f90dd90f97` |
| 42 | `theorem` | [diagram_metric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagram-metric.md) | 201 | `result-track:3b925a6d76ae54dd1f85a62ca3847ce97e036569dd0f6b2efb7a6b70cf9bae3a` |
| 43 | `theorem` | [diagram_mutation_equivariance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagram-mutation-equivariance.md) | 204 | `result-track:7593e5e6ba8e4150a84346973257e2c00d9a42aacc0cf32894c89a3309315cd2` |
| 44 | `theorem` | [diagram_adjacency_preservation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExtraGeometry.lean/declarations/diagram-adjacency-preservation.md) | 209 | `result-track:35059f9ba091ad8d83550d908a93d041a92e8e622bdcdc388372d74f332237ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa2a571b43e042c648c789332bcb55d87f08018651691672ee41e102016aee22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ExtraGeometry/Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
