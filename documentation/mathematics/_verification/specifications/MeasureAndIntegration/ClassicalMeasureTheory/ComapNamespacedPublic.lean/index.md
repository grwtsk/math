# Verification target: Comap Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f181997aed3a856293b09a7898036edf1195f738",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Comap/Variant4c921bf36675e2bc22bbfb7f582e24cd74f8c50d72fb81119ff08909046200bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f181997aed3a856293b09a7898036edf1195f738`.

Source path: `GRWTSK/Analysis/MeasureTheory/Comap/Variant4c921bf36675e2bc22bbfb7f582e24cd74f8c50d72fb81119ff08909046200bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Comap/Variant4c921bf36675e2bc22bbfb7f582e24cd74f8c50d72fb81119ff08909046200bb.lean.json)

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
| 1 | `def` | [comapₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap.md) | 52 | `declaration-track:c27ae2e923d686747943b0317994ba57a2e640752902f58d7115e7465fbb4237` |
| 2 | `theorem` | [comapₗ_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-apply-source-edition-3.md) | 61 | `result-track:9e6655bf80cdbb4075d702af141f4028c742b7a456e6690f8d41d00120c13901` |
| 3 | `def` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-source-edition-2.md) | 72 | `declaration-track:f548ff1c524fccb882164e13487b11ba80e1a5cb78452c60b1ca11c99d4c8b21` |
| 4 | `theorem` | [comap_apply₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-apply-source-edition-2.md) | 83 | `result-track:9baf7f6988f250bcd0d5e5b9d3479940fabaec79fd40e5d107728abead4b294e` |
| 5 | `lemma` | [comap_undef](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-undef.md) | 89 | `result-track:fc0628e30e9b382be1eb89f28f6cd5cd932b5c1010d03fc178c6a020bea9685b` |
| 6 | `theorem` | [le_comap_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/le-comap-apply.md) | 93 | `result-track:21b3e27a8436fd7765972a328659bff99228205045a6a70bca8217f39433d7a7` |
| 7 | `theorem` | [comap_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-apply.md) | 98 | `result-track:396159f373e2951b05e1788fdfe56013613ea6aba9b02d8892660d740875b32c` |
| 8 | `theorem` | [comap_apply_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-apply-le.md) | 103 | `result-track:5145d9f84120e5ebd4f8654352cf8c17c507771577d7ccc557f8b9e2f3c1589c` |
| 9 | `theorem` | [comapₗ_eq_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-eq-comap.md) | 109 | `result-track:359d0cd6a3b2cf1545397d4243eb84de3bee5c3a8b408922c0c1b68c78f01be1` |
| 10 | `theorem` | [measure_image_eq_zero_of_comap_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/measure-image-eq-zero-of-comap-eq-zero.md) | 114 | `result-track:bb8a3df8cb9305cf21897758bff0cfa1188718f1a8dda15521603e9649988e04` |
| 11 | `theorem` | [ae_eq_image_of_ae_eq_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/ae-eq-image-of-ae-eq-comap.md) | 120 | `result-track:814e175f3cd1f38ca5bcd988d49beb7b424bd8fdd52a62eb5757c0f06733d4da` |
| 12 | `theorem` | [NullMeasurableSet.image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/nullmeasurableset-image.md) | 137 | `result-track:79907cc8c08fba683d40183ce311cdc3eac1c97aa4ff2d83c24ee371e37c5ac7` |
| 13 | `theorem` | [comap_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-preimage.md) | 148 | `result-track:8126d79ede2c1e47e4824829419281def55c84ffe15fc31b94589dec8641b66c` |
| 14 | `lemma` | [comap_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-zero.md) | 153 | `result-track:8c3524e0963c83b64408051db483dfbea8c26ffc8a0ca7e4603c91d656f87833` |
| 15 | `lemma` | [comap_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-id.md) | 159 | `result-track:5219390e2558d5ac195c1d04122f56b8f4f84ac7cd1800c0001436d68a27e553` |
| 16 | `lemma` | [comap_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-comap.md) | 165 | `result-track:a0485401331b4251dec87d1b8339f7c84a52be05ae2da55bdb63303b917d46d2` |
| 17 | `lemma` | [comap_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-smul.md) | 174 | `result-track:ef80cc443a47ed41f55794e416a263151a454f8d8528a13dcd2ce4775a503d22` |
| 18 | `lemma` | [MeasurableEmbedding.comap_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/measurableembedding-comap-add.md) | 195 | `result-track:87ebf794a19c768f27a28ee5ec5da48eb9da44d0cadc378b71ff3a4900597ea2` |
| 19 | `lemma` | [comap_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/comap-symm.md) | 203 | `result-track:02778ef7f6ec603a833af3c5aaab285465d374ecd480356c40d1cce00e7e3fc4` |
| 20 | `lemma` | [map_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/map-symm.md) | 208 | `result-track:e81b245291a715a35a2cc3f7869aa849e34b93a894bf80d67ed2594022acbe1e` |
| 21 | `lemma` | [MeasureTheory.Measure.comap_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespacedPublic.lean/declarations/measuretheory-measure-comap-swap.md) | 213 | `result-track:178f9a43375001e3af4e00d161d6462137deccd30951a645c119ebc277b17ee5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d97ca8f1abe8931ea7d9a961e8e5a53e3c427d8caafa31ab5a34502c830746a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Comap/Variant4c921bf36675e2bc22bbfb7f582e24cd74f8c50d72fb81119ff08909046200bb.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Comap/Variant4c921bf36675e2bc22bbfb7f582e24cd74f8c50d72fb81119ff08909046200bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
