# Verification target: Of Basis

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e65e6883b7cb394a70b527c28d270666f6d4c5df",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variantdb27eb949724632077f87194305b4e038c90916db2de87728817568c8104bc73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e65e6883b7cb394a70b527c28d270666f6d4c5df`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfBasis/Variantdb27eb949724632077f87194305b4e038c90916db2de87728817568c8104bc73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfBasis/Variantdb27eb949724632077f87194305b4e038c90916db2de87728817568c8104bc73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/parallelepiped.md) | 44 | `declaration-track:04f5793d28c8f3e508e461a4ef9eb263e62603384412616e8496eee59154f2e2` |
| 2 | `theorem` | [mem_parallelepiped_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/mem-parallelepiped-iff.md) | 48 | `result-track:6587482d27af8cf1015e7be8b7350bbba758f87aef5186ddb1d588e937ccf377` |
| 3 | `theorem` | [image_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/image-parallelepiped.md) | 53 | `result-track:5a41d90fab4b26bf09ce2a9d981a4f0e99cc0aefbb6ec1d366fdb0c1858c408b` |
| 4 | `theorem` | [parallelepiped_comp_equiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/parallelepiped-comp-equiv.md) | 62 | `result-track:b4efc8063d663503cb5bdf3da2910cd21e64a506ebf8929b5ea292d1cf6c1b89` |
| 5 | `theorem` | [parallelepiped_orthonormalBasis_one_dim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/parallelepiped-orthonormalbasis-one-dim.md) | 84 | `result-track:a696820f426006d50feba4859494089b92b2ffce2e8295bda5ee810053e2ccfa` |
| 6 | `theorem` | [parallelepiped_eq_sum_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/parallelepiped-eq-sum-segment.md) | 114 | `result-track:a730bc112d722b67de44b49a044c5c37456c6578fb7adfce62373623ef446ea8` |
| 7 | `theorem` | [convex_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/convex-parallelepiped.md) | 127 | `result-track:7ee508b479e9b355e8a84dceb1258a7a6c0d33a240cc4b2a6123453442a989df` |
| 8 | `theorem` | [parallelepiped_eq_convexHull](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/parallelepiped-eq-convexhull.md) | 133 | `result-track:23c5522f010abea646c5108c52b69261d2b67422212bbc1affb51a1e4decb05d` |
| 9 | `theorem` | [parallelepiped_single](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/parallelepiped-single.md) | 139 | `result-track:5e7c342f206aa08b98aedd390ad374bb577edd5e532f258ccd1199d8084faaed` |
| 10 | `def` | [Basis.parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/basis-parallelepiped.md) | 177 | `declaration-track:c02b3512df58a8842fce46b874bd3823e038fc340681f0746cc2b92885725cfc` |
| 11 | `theorem` | [Basis.coe_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/basis-coe-parallelepiped.md) | 195 | `result-track:a469ca65515e4f0fa888c039bcc62fbb170fa7b16b0d551926b3fba758d22667` |
| 12 | `theorem` | [Basis.parallelepiped_reindex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/basis-parallelepiped-reindex.md) | 200 | `result-track:c50c08064f21f3d03da1f1d5fd0f4e0cdb09bc382760212cde8aedce3d36f679` |
| 13 | `theorem` | [Basis.parallelepiped_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/basis-parallelepiped-map.md) | 206 | `result-track:c757996399380c9268e2003b3d2be6eca7b631485b4cb4e089ef952c28bfa06e` |
| 14 | `instance` | [IsAddHaarMeasure_basis_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/isaddhaarmeasure-basis-addhaar.md) | 225 | `declaration-track:b63f1ae3d3306ed9b0cb1e9483bda24bb60985b90e369309f1545868535582f1` |
| 15 | `theorem` | [Basis.addHaar_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/basis-addhaar-self.md) | 229 | `result-track:dfa9f0715bd90caf718b53e4592df03fa22e7cfb5db1227bc4e4096c70200f0f` |
| 16 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/instance-source-edition-3.md) | 239 | `declaration-track:b9ec1afbdb6884393b6b9a7b26b54c92263f29aa82bf64aa5792af1fa28602de` |
| 17 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/instance-source-edition-2.md) | 244 | `declaration-track:4df4f2feadbb243d87770dd286bfb8f9192a0d99567f676118a46c5f761bd4cc` |
| 18 | `instance` | [Real.measureSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/real-measurespace.md) | 250 | `declaration-track:daf6cf889618c17586d6c6b4e23771d059a5b455d4f0b81187ef7cef87c5d76e` |
| 19 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/instance-source-edition-4.md) | 264 | `declaration-track:ee1719ac9e546f8ef504139de6c5d410b35b1651c2c67c23f1728b722d8c9a96` |
| 20 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/instance.md) | 266 | `declaration-track:18107675cf8a0be26024c97d9a26e8e9a798e4caebd7caf253f078efdfee8278` |
| 21 | `def` | [measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/measurableequiv.md) | 270 | `declaration-track:88eb0a3dac8dadec3d50e917a84381f39b04fa6418d83be578f3e5284b805998` |
| 22 | `theorem` | [coe_measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasis.lean/declarations/coe-measurableequiv.md) | 276 | `result-track:079eabebb4c07792435e3af7e7210335b2e72cc30788c4df68a6ee9b4e6e90c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=593bdbed018b7675495ca5d78e9fcc9fe272d10d5a7527cfeae7c33c6ffdea51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OfBasis/Variantdb27eb949724632077f87194305b4e038c90916db2de87728817568c8104bc73.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/OfBasis/Variantdb27eb949724632077f87194305b4e038c90916db2de87728817568c8104bc73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
