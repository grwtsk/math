# Verification target: Precision Accuracy Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5612833464e4e9819f01eaa258f0ef0650a5094",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5612833464e4e9819f01eaa258f0ef0650a5094`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.SpectralTopology` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrecisionDimension](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/precisiondimension.md) | 22 | `declaration-track:e0847ef02e65eb1d6175c2d4202edb4d6f21ffec07fe3035347c32d6c2a8db33` |
| 2 | `structure` | [ScoreMillionths](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/scoremillionths.md) | 35 | `declaration-track:0cb466c2cd10b7ea5a82a1479ae68728b9e2acd1a3d1f89c7e24a5c3908f8535` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/instance-source-edition-2.md) | 42 | `declaration-track:522fa7112d7d4990c36e804e842785b7db70dca9cb5c2a156313470fbb18ba78` |
| 4 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/instance.md) | 45 | `declaration-track:202d63e3e15cd278adaacb27fc12e94bf01f8572003e7ed4841d39bbc64f5f8a` |
| 5 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:b1d382cf45abbae28ba5f33aeed5f1e5f76240afb50b4090412e8bd8e0da4574` |
| 6 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/instance-source-edition-3.md) | 51 | `declaration-track:5d54511cb7fc384cb9764f0e87ab32244b6a51d84edaaa38616ddf8e566ebd02` |
| 7 | `def` | [zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/zero.md) | 55 | `declaration-track:ce092c375eefda50dc6399a17af30900193769910954758365f1076beca318bb` |
| 8 | `def` | [one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/one.md) | 58 | `declaration-track:d3f2ec7181d4b013d8d4fd67c0445568c5cf52518f4a5e543f1a40241c876a25` |
| 9 | `def` | [min](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/min.md) | 61 | `declaration-track:fb7e9de538f0ed616fd87ba9997bb4819b5b5eadefcebb170ef13ec623f24732` |
| 10 | `theorem` | [min_value](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/min-value.md) | 64 | `result-track:e37f5472020a640184e2bfd8a817cf85dd63eb47eae6a9c97d11c70f63e4f021` |
| 11 | `theorem` | [min_le_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/min-le-left.md) | 67 | `result-track:d0ce09d3de2e5c020b96fe2cb16c1543df988712a79b43de0de77fe43c1d0d87` |
| 12 | `theorem` | [min_le_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/min-le-right.md) | 70 | `result-track:eb201203e2840d03d7051fcd6205ec6200dadf21e959ef464fe4aca987e61234` |
| 13 | `theorem` | [min_eq_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/min-eq-left-iff.md) | 73 | `result-track:1c1b1dbf389c8015ad8448bf351b7135e112866244d23c042e1fc8af5586e776` |
| 14 | `inductive` | [PrecisionStatus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/precisionstatus.md) | 89 | `declaration-track:035214bb1ec0d78dd9c27cc50952cef6539e4a61aeb8c49a1a28185ffcc4571b` |
| 15 | `structure` | [PrecisionDimensionRecord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/precisiondimensionrecord.md) | 96 | `declaration-track:c0148f6d90ca7ffb3831b7d4bb68128cd6df6ac3c9c0994ac53c4c642cbc3657` |
| 16 | `structure` | [PrecisionRecord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/precisionrecord.md) | 106 | `declaration-track:cd8747a5e754f1f0079ba74e4d85657906f186ccdcd2bdc6310c074d23518591` |
| 17 | `inductive` | [AccuracyJudgment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/accuracyjudgment.md) | 113 | `declaration-track:c8f0e23c2a4fbade739faeaa81c3a8fc4001e8eea4b8cb676302dd70cbd61063` |
| 18 | `structure` | [AccuracyDimensionRecord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/accuracydimensionrecord.md) | 128 | `declaration-track:038bd1154ba318cc897eac5f304472dc6d29ccbe63014096207a7807a861469d` |
| 19 | `structure` | [AccuracyRecord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/accuracyrecord.md) | 139 | `declaration-track:eafa0bd9843b339b4fc07f78b6fcddc96d50503adef6a4f21baecfa18a0b16af` |
| 20 | `def` | [metricAccuracy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/metricaccuracy.md) | 146 | `declaration-track:5e987a11d53cbbb695642e04b52d284c61eb6848c40042a3760e029ba8580f30` |
| 21 | `def` | [selectionAccuracy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/selectionaccuracy.md) | 155 | `declaration-track:190934a1f2dc8a438205a3cfbdea4cc3c087a074906b66201258be03be1620f2` |
| 22 | `structure` | [EvidenceSupportedTargetLocus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/evidencesupportedtargetlocus.md) | 160 | `declaration-track:960dd2bb61a5252ddd155f88f204c2d61dabc9d3f7844f56a2d015196e1393a9` |
| 23 | `structure` | [EvidenceLocusAdmission](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/evidencelocusadmission.md) | 172 | `declaration-track:2c92396ee9cf1722d8b0fa0f43114351873630dc2861538836a991eb85e3d1d2` |
| 24 | `def` | [normativePrecision](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/normativeprecision.md) | 179 | `declaration-track:79bd704f251ca658ea9805442dfbe8c3ecb5f0ccfecdeea4a45469bada9a41e1` |
| 25 | `theorem` | [normativePrecision_le_extensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/normativeprecision-le-extensional.md) | 183 | `result-track:84a7bc5684720e3055f22f17f5c1276e72cf5055b2e869eabe92de3dacdf45f1` |
| 26 | `theorem` | [normativePrecision_le_evidence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/normativeprecision-le-evidence.md) | 188 | `result-track:f8750a3b666b65985dccc25b25d3424b25b860a7a315a561ddf3179bdbecb6e8` |
| 27 | `theorem` | [normativePrecision_eq_extensional_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/normativeprecision-eq-extensional-iff.md) | 193 | `result-track:49ca4a828ca7f9e20ea9d4531262cf171e5f82140b4a3f498aeefa38b8d77dc5` |
| 28 | `structure` | [NormativePrecisionRecord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/normativeprecisionrecord.md) | 199 | `declaration-track:bc4e6bd18fcd7c6ab2129a8e688b06d2d879c01d46b47d918e43dc33cdf842fc` |
| 29 | `def` | [Valid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/valid.md) | 211 | `declaration-track:c2742f066aa3961522ec7b6bdf5ab6ddc1e2d5177bab98e8c6c7a16186a9d2ca` |
| 30 | `def` | [precisionAccuracyTension](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/precisionaccuracytension.md) | 219 | `declaration-track:9764780e5709d4744f69279e675f81cd1534ba13e997932062a633f0e089cb90` |
| 31 | `theorem` | [tension_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/tension-eq-zero-iff.md) | 223 | `result-track:c95bccbfd7500468b03ca8dd5dd45d6a1193281b6f3ece69ad16bf33eff39c86` |
| 32 | `theorem` | [tension_positive_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/tension-positive-iff.md) | 231 | `result-track:95efe8aabcb90dd019e05722b7e42cbaf2eb9355289a9d8b04cbf5e2545f8c23` |
| 33 | `def` | [unsupportedExclusion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/unsupportedexclusion.md) | 240 | `declaration-track:bce9d382b01db3a64bacaf382b386679991025e3032e5056cc6ab63ad1169734` |
| 34 | `inductive` | [TensionDisposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/tensiondisposition.md) | 244 | `declaration-track:cc6856139f7d44b72642298cdffcf8823c58d05d9d7ba1281dbdde007e1e50ee` |
| 35 | `structure` | [PrecisionAccuracyTension](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/precisionaccuracytension-source-edition-2.md) | 257 | `declaration-track:fd6fc7cbc7fd5f7eab5241915a5ce2fd990f4adc644d320eab5450eae58f85ce` |
| 36 | `def` | [Closed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/closed.md) | 271 | `declaration-track:6c88a86be002a2b4cfd47fc58dd200a715b97b19840e382667593b35da7037fe` |
| 37 | `inductive` | [SpectralConsistencyClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/spectralconsistencyclass.md) | 277 | `declaration-track:94a74bca49aa755ffa0fd7a460e339bcb15d39063a176ca2a5e652b4f6882c6f` |
| 38 | `structure` | [RhetoricalQualityClassification](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/declarations/rhetoricalqualityclassification.md) | 291 | `declaration-track:c8a50ff13c116e44ae42ad810bf4eda8fc86bf97cfcf7da44f40ece8690b652a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9feff794fe1f8a809628bf519c2aac1b450aee195818ac2396f7de34a592eaa0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
