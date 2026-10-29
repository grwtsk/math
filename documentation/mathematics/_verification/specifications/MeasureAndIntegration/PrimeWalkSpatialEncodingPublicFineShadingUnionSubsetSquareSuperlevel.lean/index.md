# Verification target: Prime Walk Spatial Encoding Public Fine Shading Union Subset Square Superlevel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a409a94ee634c13be2b3df3949eeccc141c26b7e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variantf85615c4bb498e3a959531e63e142a6b2ec3b4d87d07b20ffc7584e5c4751df7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a409a94ee634c13be2b3df3949eeccc141c26b7e`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variantf85615c4bb498e3a959531e63e142a6b2ec3b4d87d07b20ffc7584e5c4751df7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variantf85615c4bb498e3a959531e63e142a6b2ec3b4d87d07b20ffc7584e5c4751df7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpatialPoint](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/spatialpoint.md) | 53 | `declaration-track:fe66f4859e6ef904e645d33721ee196443f661a3f276c6c134fa9f66042d389b` |
| 2 | `abbrev` | [ErrorTrajectory](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/errortrajectory.md) | 56 | `declaration-track:ec46936f2a24e83f841c08aefc6ad38abed5da9b181a90bac736b74462f38688` |
| 3 | `abbrev` | [SpatialSignal](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/spatialsignal.md) | 59 | `declaration-track:8eeaf27a87ea2820804b59d0d8ce6b09ddf2e593c72da7633517e1afce3dcc45` |
| 4 | `structure` | [UnitTube3](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/unittube3.md) | 62 | `declaration-track:6dcef574612a75e9ed3f2e18c864cf1b811cc74aa319b68670c0e7b7a58deeef` |
| 5 | `def` | [UnitTube3.axisSegment](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/unittube3-axissegment.md) | 71 | `declaration-track:c906e9df38445eb45c2fe06a32e5f229f55c263b6419978ebfa5b6ba12b36a26` |
| 6 | `def` | [UnitTube3.carrier](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/unittube3-carrier.md) | 79 | `declaration-track:1e831c4c842c17d89063acb76cbf39a63c2a4aa54d3ace1656bb4722ae09f7e0` |
| 7 | `def` | [spatialFourierTransform](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/spatialfouriertransform.md) | 84 | `declaration-track:fb93df942e89a917abbdd7c2b72108a110b17a6703b9b4ef199afb1fac4190a2` |
| 8 | `def` | [packetSum](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/packetsum.md) | 90 | `declaration-track:c6185b63d94c68c5cb5cfb31bb1a31d72f4e83bac213d4bbb962a73200fdc886` |
| 9 | `def` | [reconstructionError](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/reconstructionerror.md) | 97 | `declaration-track:e7871bc98d4d5d3fe8b397a0db916a78601bac8efe5317ea07104f9b86a961ff` |
| 10 | `def` | [packetSquareFunction](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/packetsquarefunction.md) | 105 | `declaration-track:b4c9883ec6068c776368c9ed9c31437f5059cbbd1cb7777404eb95e940c7d375` |
| 11 | `structure` | [L2SpatialReadout](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/l2spatialreadout.md) | 121 | `declaration-track:063b082757427c808e9b006f690c86cdbba88553ac6c562f14752a3e718d4504` |
| 12 | `def` | [tubeMultiplicity](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/tubemultiplicity.md) | 137 | `declaration-track:71b81bd50de39f6f6ce20f8c1f4ed35e7bd6f2ed3e8ae446db2f74038ccfd68a` |
| 13 | `def` | [multiplicitySuperlevelSet](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/multiplicitysuperlevelset.md) | 147 | `declaration-track:50e87c865f26940c887baac457c3afad6f50f313e7112b2f8f963957c604de61` |
| 14 | `structure` | [AssumedMultiplicityPowerLaw](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/assumedmultiplicitypowerlaw.md) | 159 | `declaration-track:b47319ae9379b4170bc4c1f78609709d63a3c04fdd371b557520dad5ea48b257` |
| 15 | `constant` | [(anonymous)](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/constant.md) | 166 | `declaration-track:0b25b066347b8779028866230a9ccf6d274225c6d268560a98f1258496660905` |
| 16 | `constant` | [*](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/anonymous.md) | 173 | `declaration-track:30889aa6d3bac1d54bdb77c21b4ce57718a4d165a61e4acbdd5851f62e2acac9` |
| 17 | `structure` | [SpatialEncodedTrajectory](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/spatialencodedtrajectory.md) | 185 | `declaration-track:7608e7381b306341491fd38074ed3de6adf4e034bff4b61531a7c0cabe6a02fd` |
| 18 | `structure` | [SomeSpatialEncodedTrajectory](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/somespatialencodedtrajectory.md) | 246 | `declaration-track:d12582b5a9d510c49421fb54cb3ea52325f3b99693c52912d1741dd79edee87b` |
| 19 | `def` | [HasSpatialEncoding](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/hasspatialencoding.md) | 259 | `declaration-track:501015d33efbd62e3f870123232d011cae752c97e542dc1c935c4a50e6b88f79` |
| 20 | `theorem` | [spatial_reconstruction_apply](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/spatial-reconstruction-apply.md) | 271 | `result-track:889409741d714895a8a51fdb001d1891f892b66148682c0e5c1ddb57776b7989` |
| 21 | `theorem` | [temporal_reconstruction](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/temporal-reconstruction.md) | 282 | `result-track:bdbba094a7a29f0a18d3ae8356550c45b053ec3d999092597343a06020a067ee` |
| 22 | `theorem` | [temporal_residual_lpNorm_le](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/temporal-residual-lpnorm-le.md) | 304 | `result-track:92053c240fe4e239edfbafa3bdba85dbb6825c400dc9325842daa5aae2ae313f` |
| 23 | `theorem` | [squareSuperlevel_eq_grainShadingUnion](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/squaresuperlevel-eq-grainshadingunion.md) | 321 | `result-track:553679d685c810903cc27c2059ee92f4e03834d1b0f133176e457ff9a7fc97c2` |
| 24 | `theorem` | [squareSuperlevel_subset_grainShadingUnion](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/squaresuperlevel-subset-grainshadingunion.md) | 332 | `result-track:66f53b2aacdce42b6fcf89c50ae9986ec20ee049781d3ad1b5ef41b2309bde09` |
| 25 | `theorem` | [fineShadingUnion_subset_squareSuperlevel](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/fineshadingunion-subset-squaresuperlevel.md) | 344 | `result-track:50234572c05f685d5c2465ab2b8eed085776fd88e4ee94e6df6bf4845c3359d9` |
| 26 | `theorem` | [grainShadingUnion_subset_squareSuperlevel](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/grainshadingunion-subset-squaresuperlevel.md) | 355 | `result-track:76fc879f6ac36fb46791300eef7b2039ab0febaadf17bbab826c02fa1150f75b` |
| 27 | `theorem` | [measure_squareSuperlevel_le_grain_sum](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/measure-squaresuperlevel-le-grain-sum.md) | 366 | `result-track:9d220a9f92f91c80d9b4daaf46dd4ae17f0242d5aed9ab408b0620314499c75e` |
| 28 | `theorem` | [multiplicity_powerLaw_of_assumption](../../../../MeasureAndIntegration/PrimeWalkSpatialEncodingPublicFineShadingUnionSubsetSquareSuperlevel.lean/declarations/multiplicity-powerlaw-of-assumption.md) | 392 | `result-track:0a11168ba7928b47f46cc8dc8ed06d6e940fed1583d125b6bcced03c56c6db00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=628adc289803abfc4cea6cf1724cec274afa4ab3e167722504f568f1ad60a4a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variantf85615c4bb498e3a959531e63e142a6b2ec3b4d87d07b20ffc7584e5c4751df7.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/PrimeWalkSpatialEncoding/Variantf85615c4bb498e3a959531e63e142a6b2ec3b4d87d07b20ffc7584e5c4751df7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
