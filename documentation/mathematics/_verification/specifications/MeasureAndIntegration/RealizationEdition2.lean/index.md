# Verification target: Realization Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7d562c8d07646b5481a20511d01ec126328a1ca",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RealizationEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RealizationEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7d562c8d07646b5481a20511d01ec126328a1ca`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpInterior](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/bumpinterior.md) | 22 | `declaration-track:946f92d25bc8906c635b9ee7aefdc5c01fb44c2c83ae5f0d6519163b29994b9d` |
| 2 | `def` | [firstInterior](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/firstinterior.md) | 25 | `declaration-track:254df9f5f0db9939e29595761e8c1a4ecfa3650615e6b8baebc2143a9b6c1889` |
| 3 | `def` | [secondInterior](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/secondinterior.md) | 30 | `declaration-track:edb88ca42cd229a435be44025d6e664008c67042c812c638771d645d3abd9f70` |
| 4 | `def` | [explicitSecondDerivative](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/explicitsecondderivative.md) | 35 | `declaration-track:d24650314d343566f836f55121dce5fddebe32468b5187f84c7020c1ac4faa32` |
| 5 | `theorem` | [scaledBump_eq_indicator](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/scaledbump-eq-indicator.md) | 39 | `result-track:031faca2e51d9c05394d67fbebd451d470190e23cd13ed53982d4aef79a58b0d` |
| 6 | `theorem` | [bumpInterior_continuous](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/bumpinterior-continuous.md) | 49 | `result-track:09acd17d0893e7c65721da8ffd68b3465cab9ce25822aaca891321339c8c899d` |
| 7 | `theorem` | [firstInterior_continuous](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/firstinterior-continuous.md) | 54 | `result-track:4c47684871bf2e7ca95a5860f71c8da9a674f4d0c825ee2d0b3913212d438b7a` |
| 8 | `theorem` | [secondInterior_continuous](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/secondinterior-continuous.md) | 59 | `result-track:5cacbd5ba824f4c4ef11d0206eba9e392d8fc0530732e598785895471d859c8d` |
| 9 | `theorem` | [bumpInterior_hasDerivAt](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/bumpinterior-hasderivat.md) | 64 | `result-track:49399442d1dd43d4abe14777e1c52cef1f83248b508a7c1815a3e706a7706a2d` |
| 10 | `theorem` | [firstInterior_hasDerivAt](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/firstinterior-hasderivat.md) | 74 | `result-track:8e7e5280cb03100cb8d80aea96e8dff1c6060a2b98394a3a38f3cffd324b7d4f` |
| 11 | `theorem` | [bumpInterior_endpoints](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/bumpinterior-endpoints.md) | 86 | `result-track:aa18e2d74e9151bca7f81746f9249f0616bed73748a79524236e07d72eded4bc` |
| 12 | `theorem` | [firstInterior_endpoints](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/firstinterior-endpoints.md) | 91 | `result-track:c323a84b868b3e3cb0a85227aa13dc174c49cc413596c72449a2f882347d82d5` |
| 13 | `theorem` | [secondInterior_endpoints](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/secondinterior-endpoints.md) | 96 | `result-track:5951df43d3544f53f4647ddf64756d94716242790e9be1aea35f31152846ad37` |
| 14 | `theorem` | [integrable_zeroExtension](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/integrable-zeroextension.md) | 101 | `result-track:1ae4cadfc5533f0a282838771321253db6e414eca1d7a01b43adae60480ff007` |
| 15 | `theorem` | [zeroExtension_integral](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/zeroextension-integral.md) | 106 | `result-track:b4493a1b9372e8eb76b3c6ebb526fb7d72b41947e5b1698378e39175f1c8b1df` |
| 16 | `theorem` | [scaledBump_integrable](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/scaledbump-integrable.md) | 112 | `result-track:50e56462ea115fc6f23c583968c55219d779cd7439fb34a9000d247073cd86c9` |
| 17 | `theorem` | [explicitSecondDerivative_integrable](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/explicitsecondderivative-integrable.md) | 118 | `result-track:ff2f04fd6d21abd43c4f516afcedd66e955ee82b06bbdd45b961e89d0d097680` |
| 18 | `theorem` | [scaledBump_weak_second_derivative](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/scaledbump-weak-second-derivative.md) | 124 | `result-track:bc2c9193ee973fbd769701ec3cc9e2efe794f52aa6c6c435e986ad01e8277b24` |
| 19 | `theorem` | [explicit_dilationTest_zero_extension](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/explicit-dilationtest-zero-extension.md) | 167 | `result-track:17f9650f742cf7dc61a7b81896b56fbaaf6ee4e2d204b8e28ae24f9e6c9b8075` |
| 20 | `theorem` | [explicit_dilationTest_integrable](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/explicit-dilationtest-integrable.md) | 175 | `result-track:9f5c54902f0bf829e884e511138ca552df927728cf55678fca336b1e70656d57` |
| 21 | `theorem` | [explicit_dilationTest_eq_indicator](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/explicit-dilationtest-eq-indicator.md) | 182 | `result-track:1591d05087aee76d07f29d49554aec41879637af237f7af493380fcf270e83ac` |
| 22 | `theorem` | [explicit_dilationTest_square_integrable](../../../../MeasureAndIntegration/RealizationEdition2.lean/declarations/explicit-dilationtest-square-integrable.md) | 191 | `result-track:79c16bdba3bc1ce5d4e5816c491699153fce4db2c55da1944565e455d8009ae2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a59c225995f78c10703872d81c77639b9945ab4e08302237d11152d9067b3cf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
