# Verification target: Haar Inner Product Space Inner Product Space Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5646ce769f69eb572013bb142f38c1dd95b7feea",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5646ce769f69eb572013bb142f38c1dd95b7feea`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Orientation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMeasurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/tomeasurableequiv.md) | 32 | `declaration-track:729643d2c3f9c6ba88735412172da01118d37b1fa728f9f3f5bdfd460e1c472b` |
| 2 | `theorem` | [coe_toMeasurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/coe-tomeasurableequiv.md) | 39 | `result-track:6d3bbc888df4e8144af39ae1d102defde4113544de2d724758e409d4861930bf` |
| 3 | `theorem` | [toMeasurableEquiv_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/tomeasurableequiv-symm.md) | 43 | `result-track:fa198ab0892e714f1a3070ae9c0f7760dea3a4be985f5765fd9f46f6bfde62eb` |
| 4 | `theorem` | [Orientation.measure_orthonormalBasis](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/orientation-measure-orthonormalbasis.md) | 58 | `result-track:7d286b92dc1903edc6c119bff8519b7ee7d0e3c0229984dc783bfa3d8d24481e` |
| 5 | `theorem` | [Orientation.measure_eq_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/orientation-measure-eq-volume.md) | 71 | `result-track:0eac239c3dc355d39eebd0278be64289d284e9964384fce607c5bfab5f853643` |
| 6 | `theorem` | [OrthonormalBasis.volume_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/orthonormalbasis-volume-parallelepiped.md) | 83 | `result-track:5a8c23fb6f18534c560feb193af7f7e0310f78688787d40a22c083856281f2b6` |
| 7 | `theorem` | [OrthonormalBasis.addHaar_eq_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/orthonormalbasis-addhaar-eq-volume.md) | 92 | `result-track:6acfa58ccf39e82991619141dfd3adb47f8e5d5a4b20a1e70c5871196f446a82` |
| 8 | `def` | [OrthonormalBasis.measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/orthonormalbasis-measurableequiv.md) | 101 | `declaration-track:9c16f5a35b32bc1d87ed7b952702e8153b9fdb92c818dc24903989999af0fc5d` |
| 9 | `theorem` | [OrthonormalBasis.measurePreserving_measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/orthonormalbasis-measurepreserving-measurableequiv.md) | 105 | `result-track:38959bc4a8505dc43987d423610eb44d05804064118f9dbaf16c8f0305479435` |
| 10 | `theorem` | [OrthonormalBasis.measurePreserving_repr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/orthonormalbasis-measurepreserving-repr.md) | 112 | `result-track:9bce799f6b39577331c2cf95d7b2372541bdfa5d7a0767618b4dbfde4eb3a364` |
| 11 | `theorem` | [OrthonormalBasis.measurePreserving_repr_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/orthonormalbasis-measurepreserving-repr-symm.md) | 115 | `result-track:5518809874e0a6f80baa7b347a24679b9dca36aa8ba8ec25dad67c1198e1fc81` |
| 12 | `theorem` | [EuclideanSpace.volume_preserving_measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/euclideanspace-volume-preserving-measurableequiv.md) | 123 | `result-track:03604d076526e0400baa868589a004edd93b1f02de1b0bc7842b6fb070579cd6` |
| 13 | `theorem` | [PiLp.volume_preserving_equiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/pilp-volume-preserving-equiv.md) | 133 | `result-track:10d0b62edf78c633d462d922af4759940eb2a04af211bdf658d9d456c42f7a03` |
| 14 | `theorem` | [PiLp.volume_preserving_equiv_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/pilp-volume-preserving-equiv-symm.md) | 138 | `result-track:883cd4c7b8ca56476613c3109195d53661174a0894436a81b91959a7532c5b2a` |
| 15 | `lemma` | [volume_euclideanSpace_eq_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/volume-euclideanspace-eq-dirac.md) | 141 | `result-track:32cfae54de0707d8f16e2d50fdbec95120d01b178d2d8beb6513a03ea5302ea9` |
| 16 | `theorem` | [measurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarInnerProductSpaceInnerProductSpaceSourceEdition2.lean/declarations/measurepreserving.md) | 152 | `result-track:6aaac757058b7b97a62651ea77183c670e5034a2332d9fb68cf0cdd4a2d22e7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31969338eb26b4d6ffccd171fe90a7f772fc17faa62dc7fba873b65e77341206 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant9c3704d31949a38dacbf1f18fbd4e1412c421c7f2af94b263122a0413de3f310.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
