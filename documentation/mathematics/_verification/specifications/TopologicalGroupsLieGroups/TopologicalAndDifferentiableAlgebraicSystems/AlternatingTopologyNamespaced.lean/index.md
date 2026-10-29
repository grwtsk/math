# Verification target: Alternating Topology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "360f251c122bc58349a4de4fd10b69e16028234a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `360f251c122bc58349a4de4fd10b69e16028234a`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Multilinear.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Alternating.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/insttopologicalspace.md) | 39 | `declaration-track:f57b3487bbf23357a5cd2843912a3fe555a602cb0fb74f68270eba9260d709d6` |
| 2 | `lemma` | [isClosed_range_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/isclosed-range-tocontinuousmultilinearmap.md) | 42 | `result-track:fd4fa9d420ef4d0f9cb34fde5696d886be49a4eed13697090eca67980a52508f` |
| 3 | `instance` | [instUniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instuniformspace.md) | 55 | `declaration-track:b5473cc5e0f77a904900be2971b05c03d8ed99fd8905564f3714df2330f34837` |
| 4 | `lemma` | [isUniformEmbedding_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/isuniformembedding-tocontinuousmultilinearmap.md) | 58 | `result-track:f6963ecb27ab0257d644147edd4f9c124918f3b35c7b20379bf14f4ccd2ab29f` |
| 5 | `lemma` | [uniformContinuous_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/uniformcontinuous-tocontinuousmultilinearmap.md) | 63 | `result-track:b9e59ee01934047cb83d8f49068c20cc3cdffe0eec43193e797f0b81c69cb30a` |
| 6 | `theorem` | [uniformContinuous_coe_fun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/uniformcontinuous-coe-fun.md) | 67 | `result-track:7824e8ecd657896081814ec5cfe11062c762a48c12a28a9831d692331fc6b4e7` |
| 7 | `theorem` | [uniformContinuous_eval_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/uniformcontinuous-eval-const.md) | 72 | `result-track:561a1b10c27da7c85f6dc3a9c711af9f4a5d481d1e9a6385e90d2c990f737dcf` |
| 8 | `instance` | [instIsUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instisuniformaddgroup.md) | 76 | `declaration-track:d8c6793c8429b238b80f8a7f1f8ed46b59b406ff522998b0362145366546228c` |
| 9 | `instance` | [instUniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instuniformcontinuousconstsmul.md) | 80 | `declaration-track:0e6a596e139f6d40fe602b4dd1a1c9065eced090d4359248877801eec1de9721` |
| 10 | `theorem` | [isUniformInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/isuniforminducing-postcomp.md) | 85 | `result-track:ba0ba1d493d6bf594281ad44285536d2394af00676119ddf30ef3f437fdf22fb` |
| 11 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/completespace.md) | 97 | `result-track:4babe1cc1b81f4cdd110bb17c72a66214d0936dd79eee3899d51503c0b417c20` |
| 12 | `instance` | [instCompleteSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instcompletespace.md) | 112 | `declaration-track:cfbcb91a71b902948181691f1807a0d58fd25ae228188b4739457a474cec736b` |
| 13 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/isuniformembedding-restrictscalars.md) | 123 | `result-track:4f47951173904ba37af9bd22d4ee4b45519aeffff3edc3fc09d5e3d3e7092541` |
| 14 | `theorem` | [uniformContinuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/uniformcontinuous-restrictscalars.md) | 129 | `result-track:58bf349018af4d20043f866a555135f82cc2e7efc3455cc254cc6cb2807b456d` |
| 15 | `lemma` | [isEmbedding_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/isembedding-tocontinuousmultilinearmap.md) | 139 | `result-track:4bef4e2b4018d53933895c81929cfedcef19693e7e9278c1476fa3872c48263e` |
| 16 | `instance` | [instIsTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instistopologicaladdgroup.md) | 148 | `declaration-track:0595c16750073072c03bdfc657e79002d6dcfd96123984fa00b159fbad3c77fc` |
| 17 | `lemma` | [continuous_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/continuous-tocontinuousmultilinearmap.md) | 153 | `result-track:668dd9f0800ce84f7f8ab8e38fe71b842c4dce6aaea58259d15193728c489ccf` |
| 18 | `instance` | [instContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instcontinuousconstsmul.md) | 157 | `declaration-track:eeb4a6e3c8d795d513e67f8b5d314074aaa5a6a6b8291e478f190429b92cefe6` |
| 19 | `instance` | [instContinuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instcontinuoussmul.md) | 162 | `declaration-track:2b01643d9a19f94d16badf955d42d40c3412c1fa6385ef38fc30fd4d08969e2a` |
| 20 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 165 | `result-track:e92daa27496f6c0b5f5a97c39c63ee566f19c9c77c5c4dbe58364ad080755229` |
| 21 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/hasbasis-nhds-zero.md) | 173 | `result-track:df4e90254eae10cc7acdba47f553cf551317ac342fdc65f02fe46a146a2670ed` |
| 22 | `lemma` | [isClosedEmbedding_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/isclosedembedding-tocontinuousmultilinearmap.md) | 181 | `result-track:67b3651bacf80fcb385c576b2a1bd39d0d47f960402a015ddd5beeaf5ee6b4dd` |
| 23 | `instance` | [instContinuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instcontinuousevalconst.md) | 186 | `declaration-track:7a56a74f91f83966cc5b3a71dacb9c8eada0119f1ddceeb41de6608df6286dbc` |
| 24 | `instance` | [instT2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instt2space.md) | 189 | `declaration-track:1ad9e51fbd44b8bcc09f34d15cc26163f5038d438ed5230a4bf20ff31f44fae9` |
| 25 | `instance` | [instT3Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/instt3space.md) | 192 | `declaration-track:74188cb59bd5ab0d6e6ad5440bd742c6c23c9372c01d797ec6b36c31fe7aff02` |
| 26 | `def` | [toContinuousMultilinearMapCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/tocontinuousmultilinearmapclm.md) | 198 | `declaration-track:3aea19216ce4b764ad0b2a001abdc30b09c6447b5615ad1db67b8ccc5b34395b` |
| 27 | `theorem` | [isEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/isembedding-restrictscalars.md) | 208 | `result-track:f11f0417af8cfd3036337cc334415e9cdadf5aa90ac9c910e3af547774ede40e` |
| 28 | `theorem` | [continuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/continuous-restrictscalars.md) | 218 | `result-track:b0be4c6b0c5d00de93fd94f3cb8b4c4a4ec13cf8f7361645a45f3459621d6a77` |
| 29 | `def` | [restrictScalarsCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/restrictscalarsclm.md) | 225 | `declaration-track:01a154debc5e1c43d6b0cb1d201219ec0d238c304b75fb365698e7bbfe956dd3` |
| 30 | `def` | [apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/apply.md) | 236 | `declaration-track:46ca146d825e28911337b8e69b20c4c2ae1b4e392003be489116c414ebf266c4` |
| 31 | `lemma` | [apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/apply-apply.md) | 245 | `result-track:5a356070fd72bab5b4ba33dc70d8103a44fba24499aae295e21c23c46343b4b2` |
| 32 | `theorem` | [hasSum_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/hassum-eval.md) | 248 | `result-track:0ce4c5f0c1904475d2b452f5892570650c1ce1181127f6875ebd132900b75a4d` |
| 33 | `theorem` | [tsum_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyNamespaced.lean/declarations/tsum-eval.md) | 253 | `result-track:63bec2002432a1cf63ecb08dd348d45f73bf8a0b81db0537659416508b0983a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34f53a9f7668eeeefcae04207c74b92c141a128aaa9265f08a146efd5bb8b650 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variantcfda4c8097324b0b8b73537ed420f21789c3e98b8c0f02978de558b5fe09b1ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
