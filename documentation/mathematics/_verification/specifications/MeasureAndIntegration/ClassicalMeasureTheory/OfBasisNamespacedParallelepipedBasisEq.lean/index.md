# Verification target: Of Basis Namespaced Parallelepiped Basis Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80762f57a53ae70ce74df570bbf12b707c94bece",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant1ff956063b21728ea4659251cf65350c49c3e21468f232a316bdc2e238f9941e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80762f57a53ae70ce74df570bbf12b707c94bece`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant1ff956063b21728ea4659251cf65350c49c3e21468f232a316bdc2e238f9941e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfBasis/Variant1ff956063b21728ea4659251cf65350c49c3e21468f232a316bdc2e238f9941e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/parallelepiped.md) | 54 | `declaration-track:da4bf26efe3f2c1c951d59e908f399687e03befc1038ae24b36b178d6ba170c3` |
| 2 | `theorem` | [mem_parallelepiped_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/mem-parallelepiped-iff.md) | 57 | `result-track:0fec1f72946bb962f070decaede68a72215a5bea4c970f20c6624700b2842819` |
| 3 | `theorem` | [parallelepiped_basis_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/parallelepiped-basis-eq.md) | 61 | `result-track:35cadc90f5958fec4b01217bf61a919ec403e828a6dd2d38e30eb906470ec31e` |
| 4 | `theorem` | [image_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/image-parallelepiped.md) | 71 | `result-track:e17a007397692362d9471c09b30a9f136027b18808e4782f5f6781828f980950` |
| 5 | `theorem` | [parallelepiped_comp_equiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/parallelepiped-comp-equiv.md) | 79 | `result-track:42bd02fd938ea478f3a820923b4a9a21002b6bb62ea71fc34e21cec12510a739` |
| 6 | `theorem` | [parallelepiped_orthonormalBasis_one_dim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/parallelepiped-orthonormalbasis-one-dim.md) | 100 | `result-track:44ad1ef4dec0a1ba02f6e05796b7935bec43ea5c65ad1ec832573e1c254dadf6` |
| 7 | `theorem` | [parallelepiped_eq_sum_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/parallelepiped-eq-sum-segment.md) | 129 | `result-track:4937e157b7a7858ac5528cc39788d62b5384cac023b343d61976d8ef2d477cd1` |
| 8 | `theorem` | [convex_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/convex-parallelepiped.md) | 141 | `result-track:c958280cd86336c060be149b89e4895469e3a4cd0cee08ca015e138c40872df7` |
| 9 | `theorem` | [parallelepiped_eq_convexHull](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/parallelepiped-eq-convexhull.md) | 146 | `result-track:563fcba3fdcdb06bb2e0d85d11dc726cb1c01caf9b1534441fa2f0df1c33e491` |
| 10 | `theorem` | [parallelepiped_single](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/parallelepiped-single.md) | 151 | `result-track:f8c4d5ad58ccf3c629bbe3d86611df1c52d1d95e4935034ef0146e6fa135af62` |
| 11 | `def` | [Basis.parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/basis-parallelepiped.md) | 188 | `declaration-track:546a4a5e647ee3e72fa4cd3b05aa9f50f117c5e03dc7e15f1431ee0098e60d87` |
| 12 | `theorem` | [Basis.coe_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/basis-coe-parallelepiped.md) | 205 | `result-track:f8fb4a01b561d47131ba47808a822dfd6aeaa8aca748e683086bfff05354e4ac` |
| 13 | `theorem` | [Basis.parallelepiped_reindex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/basis-parallelepiped-reindex.md) | 209 | `result-track:25ca46d66c467801080f90105a9cfafaa29a6cd9310511cf7d67422980ac2660` |
| 14 | `theorem` | [Basis.parallelepiped_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/basis-parallelepiped-map.md) | 214 | `result-track:02b92d4478e12ea0d82d54df67fc910a11d1a72e0cb13d6f76258ece60cac722` |
| 15 | `theorem` | [Basis.prod_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/basis-prod-parallelepiped.md) | 222 | `result-track:da1cd14797324998530eeaed4afb57732426efbbf82c797b54003b77a2cdc44f` |
| 16 | `instance` | [IsAddHaarMeasure_basis_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/isaddhaarmeasure-basis-addhaar.md) | 259 | `declaration-track:82da3c207f64aa4764b8d5960b7b128e313973f0e682cd6152a9a47ea1f3fb89` |
| 17 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/instance-source-edition-5.md) | 262 | `declaration-track:f49d178debd752da4860bb60cd8d50873bce2312b81455fc912efd0abf1c4ff0` |
| 18 | `theorem` | [Basis.addHaar_eq_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/basis-addhaar-eq-iff.md) | 268 | `result-track:9a7f8fad6dde34a557d6e1cf4647ce941a61b84b7ef0fc7568e32c722645c7d3` |
| 19 | `theorem` | [Basis.addHaar_reindex](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/basis-addhaar-reindex.md) | 275 | `result-track:ae7e587bb090c1ba7fa01bfa2abcf52a4ca1ced39b379f5a5ab93fe849926e1b` |
| 20 | `theorem` | [Basis.addHaar_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/basis-addhaar-self.md) | 279 | `result-track:499a98093fea37031e9601c218bc0e537afee0870a2547a5519c6d721894533f` |
| 21 | `theorem` | [Basis.prod_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/basis-prod-addhaar.md) | 284 | `result-track:2720942643a7042605b97c4e485337d875b4294614b75d9b3fe99d9cfb769d3f` |
| 22 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/instance-source-edition-2.md) | 309 | `declaration-track:5cb7277a43d49193411f4efd7029a005c028d658c02c1d3f4755644ef420dc12` |
| 23 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/instance.md) | 313 | `declaration-track:2595166e2892717fcaa185cc6461739c15171b8f832d1497989a44f91b465206` |
| 24 | `instance` | [Real.measureSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/real-measurespace.md) | 319 | `declaration-track:51fb038dd836f0600b8813ab925c955e831fc2c03ad74bba100753056fdeb8e9` |
| 25 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/instance-source-edition-3.md) | 332 | `declaration-track:8c49f0ecaf5f3292eb92210c08a3e47b58760b099e24e5816ef920bcb36681b9` |
| 26 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/instance-source-edition-4.md) | 334 | `declaration-track:af2c72bf909aa84e529a398966719350d59d14e96de540cbb7927362d828d366` |
| 27 | `def` | [measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/measurableequiv.md) | 338 | `declaration-track:bca8a3e20805e5d565c7d07a3bfaa7bea5c8b4e2b553593c7245f81d65730b20` |
| 28 | `theorem` | [coe_measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/coe-measurableequiv.md) | 343 | `result-track:f859ba622e80c87402b64bbb6ee94887b095faea19c008b065365c0ff5624033` |
| 29 | `theorem` | [coe_measurableEquiv_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OfBasisNamespacedParallelepipedBasisEq.lean/declarations/coe-measurableequiv-symm.md) | 345 | `result-track:2a5780c9e5e96bcbfaf1e3948746a2847ae7ac32169c0c3f8b246a257d3ec846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6ab552ed45f33a42fc63ce39eac2e9df7d8aea2295c0f75442b5e304d3d8628 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant1ff956063b21728ea4659251cf65350c49c3e21468f232a316bdc2e238f9941e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/OfBasis/Variant1ff956063b21728ea4659251cf65350c49c3e21468f232a316bdc2e238f9941e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
