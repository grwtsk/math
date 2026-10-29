# Verification target: Pointwise Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "660f6fd44d69453eb51e9bd7411d95f16b3d3226",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `660f6fd44d69453eb51e9bd7411d95f16b3d3226`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean.json)

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
| 1 | `def` | [pointwiseVAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/pointwisevadd.md) | 40 | `declaration-track:0e7b49ebada8c6551b889a3ef0a675a5318b3e1a9bd019d4902db29453785ebe` |
| 2 | `lemma` | [coe_pointwise_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/coe-pointwise-vadd.md) | 45 | `result-track:feb248a757132a5e354cbcd36d67238ccb0b98af67bc68276eae47c31022a7c2` |
| 3 | `def` | [pointwiseAddAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/pointwiseaddaction.md) | 52 | `declaration-track:6257acd4e86c943a09db800bd135390e56b26e2a8ae71b4c7b2259404be7233b` |
| 4 | `theorem` | [pointwise_vadd_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/pointwise-vadd-eq-map.md) | 57 | `result-track:474cf16e69bb39c6bfb9005775ed089606199eaae4cda4105a3ce27e8d613c2b` |
| 5 | `theorem` | [vadd_mem_pointwise_vadd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/vadd-mem-pointwise-vadd-iff.md) | 61 | `result-track:74cad91ca1a96e41d63c5d764de921e2fbf11a21428b288c5c9dfe673b055ff1` |
| 6 | `theorem` | [pointwise_vadd_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/pointwise-vadd-bot.md) | 65 | `result-track:4ec0c5866ac9a41e27bdfcf872b679e40d7568809afb60635e54eec6ec25a3e8` |
| 7 | `lemma` | [pointwise_vadd_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/pointwise-vadd-top.md) | 68 | `result-track:d375a782642736df9cfe24fe78c8400cee74ddd5ebb8ba7701ae1e3a65bda6b1` |
| 8 | `theorem` | [pointwise_vadd_direction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/pointwise-vadd-direction.md) | 71 | `result-track:bf70fadc39f2e9a6957cdff0bf78ccd5faedee5033a8fc1729063579a152afd2` |
| 9 | `theorem` | [pointwise_vadd_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/pointwise-vadd-span.md) | 76 | `result-track:c9c98b0fbf5cebb92ba26fef9af7336d9f927162b564ab7718b56c188ec36bc9` |
| 10 | `theorem` | [map_pointwise_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/map-pointwise-vadd.md) | 79 | `result-track:70779142ccd87ba02ae5cfc2abe95d5bd2d963cc43a7c5031ca3576ae14e1a4a` |
| 11 | `def` | [pointwiseSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/pointwisesmul.md) | 98 | `declaration-track:aa05a873be2143d7c8e43cfac6e68c32b6c714da87bd0434d393ae3d9651b822` |
| 12 | `lemma` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/coe-smul.md) | 104 | `result-track:16612472bb296cd6a1f66cba2949f723fa1900a98c34c4761dcfd692f2037ab8` |
| 13 | `lemma` | [smul_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/smul-eq-map.md) | 106 | `result-track:195f63d5d88f303b4017b5a1daa3cbf802e892392ab1c24208875cb322006361` |
| 14 | `lemma` | [smul_mem_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/smul-mem-smul-iff.md) | 109 | `result-track:0c991e09d9ce6c545313d5297a7eaadeba2c551d4cca567d95bc723e02a74d15` |
| 15 | `lemma` | [smul_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/smul-bot.md) | 112 | `result-track:f8d217425709d75421a48281e1392eb78157346192ad44a15dff6b6644f1ff93` |
| 16 | `lemma` | [smul_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/smul-span.md) | 115 | `result-track:b56e97016eb29c1dbae181e087c9c3786c395e865bc00a0971f57400e57b8a91` |
| 17 | `def` | [mulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/mulaction.md) | 131 | `declaration-track:df3ecab19aef09f2060cbe734c955a620f461d77ea34aff97f01349eac3b94b2` |
| 18 | `lemma` | [smul_mem_smul_iff_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/smul-mem-smul-iff-of-isunit.md) | 136 | `result-track:4ddb4c93e51c98978b8b31a86cef8049230e96a603bc2b8a3ddd1f0c7623d264` |
| 19 | `lemma` | [smul_mem_smul_iff₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/smul-mem-smul-iff-source-edition-2.md) | 139 | `result-track:a9dfbe38944a8e3a4b4f1a7f9059d0636e81aad5355b21331978f24a0347faa4` |
| 20 | `lemma` | [smul_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/smul-top.md) | 143 | `result-track:21d0d9be576b489af04c4e2a33b33a7449a60f301dab5d4bf29dd0f94261e875` |
| 21 | `lemma` | [direction_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwisePublic.lean/declarations/direction-smul.md) | 154 | `result-track:d5cfeb27a34424d0f3f4c4a61b2ed5a2f8586714c724fc3436abea1906076a21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=108f0cc1c657775db5e5d35f82458b47686b00dd09c86a8a359ba99606505700 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variant19593e54ef13aecbe51b61e4f2c8a035b4ed87dbc6d0bc78f39bea16c1477012.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
