# Verification target: Perron Literal Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dad2d0668d555407733f30e4b09dde6877bff6b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dad2d0668d555407733f30e4b09dde6877bff6b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/kernelintegrand-integrable-ioi-zero.md) | 18 | `result-track:8f0d4ba496eb3332177c655712a1da1ea0175dad0730ccdc8f56617f2ff3f1c1` |
| 2 | `theorem` | [integral_first_moment](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/integral-first-moment.md) | 32 | `result-track:77d53efda028ea7a9cf5c5ed70a5ad253ee2f6ae8b91ae00a74f93c118fd4bd6` |
| 3 | `def` | [dampedRamp](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/dampedramp.md) | 54 | `declaration-track:78449f95692aadd6f32e5acb5f2363454fa1f8eda23dbf2fbd9b833f95090c1d` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/dampedramp-continuous.md) | 58 | `result-track:b4b3b550812e9d37c633f77e08a171081a55c576c6bb390d5a657f710901d672` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/dampedramp-eq-indicator.md) | 63 | `result-track:409405955ddf0efa7357510ad93f29910b1dd44a193cebb20e34b961b081c2f4` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/dampedramp-integrable.md) | 71 | `result-track:a628da57efa5ac7a93b63c13536f68fb41c52fe89e364e76111c939b32f72c5e` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/dampedramp-fourier.md) | 76 | `result-track:1842507fa8fcf2bf85e904dcb0c1f283be4e5a2b920ba849b45e64a616b83981` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/reciprocal-square-integrable.md) | 95 | `result-track:58fa8efe2dbae00d8d4da5794c4dc34b5f60f0554469b15d6ee5a0249d0506d4` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/dampedramp-fourier-integrable.md) | 109 | `result-track:ccb1455bbe9b204a1da9159f632e8c88370b1777f9c038952b28930c2419a2d9` |
| 10 | `def` | [perronIntegrand](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/perronintegrand.md) | 121 | `declaration-track:9af4408cbfeb952523cf8265d53b65dc7b85d881fb35bba53b6bfb5f61affba6` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/perronintegrand-integrable.md) | 126 | `result-track:3995c68fa1a395d4fddb43cf079af33d1d2602155c35cc4ebea06f99bafc9d87` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/vertical-ramp-inversion.md) | 139 | `result-track:7bc3440921480032204c4ae803235c5cb86e53a5b8f69e4726911c217203ce73` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/elementary-perron-kernel.md) | 165 | `result-track:3d36548429830b868d19a0ae7f3b9023e9802632980f716d59b824f1d9d11196` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/elementary-perron-endpoint.md) | 188 | `result-track:cf8c75318b2e092f94162480ed8a8a4c852df074ceee9346521d53db714e9a4d` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/elementary-perron-ratio.md) | 193 | `result-track:43f3656263bfe319c3e8aa5b79d60200b0a1415196991d3381a8a1a01ffb17d1` |
| 16 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-9.md) | 214 | `declaration-track:becb3dce8f1e592addf6fe9425fd0758ed43e9612f3dd467a99726fda3ce4933` |
| 17 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-3.md) | 216 | `declaration-track:245a7c4c2a09b6ff9955b4ec07e7528af4235277549d1633f81080444762ce7c` |
| 18 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-5.md) | 219 | `declaration-track:3cba659a6ef9d5138730c2351e480195f25131e79a527508b1dec3410673fccc` |
| 19 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example.md) | 221 | `declaration-track:05eef82cbeac34c63556404f124c1a06d43101c11516d22a9f7d794c9471d3fe` |
| 20 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-15.md) | 222 | `declaration-track:e7e4439e18f59b87df6a304362c65ba4c45e35fe7578e778cab6c4c9c4e1256c` |
| 21 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-14.md) | 224 | `declaration-track:e599ed787e6824d1cb64743e3b19843ece3d503c471c6097609914515cb27d21` |
| 22 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-12.md) | 225 | `declaration-track:e00deb1bd1ff889ff12f70bad8d06d668b9cc490222a037d079a2a56e291930c` |
| 23 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-4.md) | 228 | `declaration-track:38b9896389d64a43b4394503b91a71f757bdfa7d245743603950a1e0fd009012` |
| 24 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-13.md) | 231 | `declaration-track:e5003984ea1f0cb785684ad913ac4f9cc8aecd840ce5fd60486437a77e6115ef` |
| 25 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-6.md) | 233 | `declaration-track:504087f62b1defe036ed774f1529223bc0e86b86bf978c16e132bc2a610d8ff3` |
| 26 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-7.md) | 236 | `declaration-track:8cc42fee9ee86e7dac1765160b412b0acd5e5c21dc31aeb041139328b3e8600a` |
| 27 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-2.md) | 238 | `declaration-track:18acf1ca0dd805e1dd684629e9617216e656a4b388396792dce64a1ac53f91f9` |
| 28 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-10.md) | 243 | `declaration-track:c0b67aaabb1b20954433395c4ba7d7a5750f7bba9446055f2ffc9347fd8fb70e` |
| 29 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-11.md) | 246 | `declaration-track:d7bfe8194b957363f8af494784b8ebe9bb5c547e0a0d041068edcfb3f858ee5c` |
| 30 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PerronLiteralCheck.lean/declarations/example-source-edition-8.md) | 249 | `declaration-track:9971730ca367873cfd2f25ba20c57eaac25ec90f60d6a78fa653d859bfbe2cd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6efb2f2e90d69e4576f8d55eaf2a93dd5bb03dcd047f86268f68e72f4000c02d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
