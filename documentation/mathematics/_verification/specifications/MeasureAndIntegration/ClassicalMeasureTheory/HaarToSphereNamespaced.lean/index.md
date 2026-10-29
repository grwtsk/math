# Verification target: Haar To Sphere Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d379344c6f6d2ee9ea2a1cc6abb9b81e87074b9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d379344c6f6d2ee9ea2a1cc6abb9b81e87074b9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.SphereNormEquiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSphere](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/tosphere.md) | 51 | `declaration-track:b7baf0879a96d5f7ce0720ce163b27e4e705418f07035b4f6b8139b09993a5cc` |
| 2 | `theorem` | [toSphere_apply_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/tosphere-apply-aux.md) | 57 | `result-track:f9ca6ecd9516150475898cdd377e26da2ed78d080b83060e9fb094cc25ed3a61` |
| 3 | `theorem` | [toSphere_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/tosphere-apply.md) | 65 | `result-track:b16cae8b2fbde8b26a102d2da5cca5c1a28fe5287484a2874faabc04e128f418` |
| 4 | `theorem` | [toSphere_apply_univ'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/tosphere-apply-univ-source-edition-2.md) | 72 | `result-track:fb9cad2f6b7762c8c267277adf2aa2b47569ece9f5ea7f8a6d5449feb0bbc6bd` |
| 5 | `theorem` | [toSphere_apply_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/tosphere-apply-univ.md) | 78 | `result-track:e117d28d7fc1c8dac00d23622949c5c4affb214304bb6b6c07cc3e42e2ee157f` |
| 6 | `theorem` | [toSphere_real_apply_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/tosphere-real-apply-univ.md) | 83 | `result-track:5f60faaead56f0403555aaeba88d3e8b05d12b233b576da7fc566f63f777e9fb` |
| 7 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/instance-source-edition-2.md) | 86 | `declaration-track:da33a43295aa3fcf5e4ec05aa67371ef5529fdb0f59789903b5f4fc9d64382fe` |
| 8 | `def` | [volumeIoiPow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/volumeioipow.md) | 93 | `declaration-track:2ddb404a880f088913b5d8d9a8b7f7cde582366bddaf3630c0b6163598db4afd` |
| 9 | `lemma` | [volumeIoiPow_apply_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/volumeioipow-apply-iio.md) | 96 | `result-track:acbd5b8a8d9e6e502fea71aa9b9e88fd2379f9e3921d92d586246fb2c8a9b592` |
| 10 | `def` | [finiteSpanningSetsIn_volumeIoiPow_range_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/finitespanningsetsin-volumeioipow-range-iio.md) | 109 | `declaration-track:ccde86894752eb117b6dab0a911e4bd884ad555acd4ce563c027f4e9e9dbcfb2` |
| 11 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/instance.md) | 116 | `declaration-track:792ad52a0b9e57fcf8b9f60b198e4987d676c65301d5eb89b0e289d9fa684c0b` |
| 12 | `theorem` | [measurePreserving_homeomorphUnitSphereProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/measurepreserving-homeomorphunitsphereprod.md) | 122 | `result-track:53c7de8673bcf57af796e3cffc3230b57eabb824b2707c53a46f859c3863419a` |
| 13 | `lemma` | [integral_fun_norm_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarToSphereNamespaced.lean/declarations/integral-fun-norm-addhaar.md) | 145 | `result-track:18955830cea76911940102d9424b32ed5d4c3ce33f62ad1915e099485620fa8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81605923054425083a7bea67ad301523f5d5a84e61b37554c29e9116c63803b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
