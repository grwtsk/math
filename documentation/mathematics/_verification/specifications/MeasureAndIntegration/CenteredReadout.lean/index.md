# Verification target: GRWTSK.NumberTheory.VonMangoldt.CenteredReadout

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7a590f15febb04470681a81883b1dfbd5e635b8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/CenteredReadout.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CenteredReadout.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CenteredReadout.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7a590f15febb04470681a81883b1dfbd5e635b8`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/CenteredReadout.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/CenteredReadout.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DyadicDiscrepancyHistoricalSourceEdition2.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.Integration.QuadraticReadoutBound`](../../../../MeasureAndIntegration/QuadraticReadoutBound.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealTest](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/realtest.md) | 29 | `declaration-track:019fcfad5cacf875e70835b081e68bde03438b81fad5de75aa319bfed8201f3c` |
| 2 | `theorem` | [value_continuous](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/value-continuous.md) | 37 | `result-track:b0ad8d21bf02e4b2f058898f04ee7d26fe123f45ea76c7cf34429589724166de` |
| 3 | `theorem` | [unit_integral_eq_interval](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/unit-integral-eq-interval.md) | 41 | `result-track:e54237275809c62a002df5d0bee5b9f3b2ab5113eea9ad06641f0e0f8afba67b` |
| 4 | `theorem` | [slope_integrable](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/slope-integrable.md) | 47 | `result-track:dc70951dbe1b82c4e2e51c92751b6af6d672d771decbd1aae981e5f153d340e0` |
| 5 | `theorem` | [slope_integral](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/slope-integral.md) | 50 | `result-track:b469ded815ab67113ce073e475a0d33c217221231824a012668ce21f4a262220` |
| 6 | `theorem` | [step_slope_integrable](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/step-slope-integrable.md) | 56 | `result-track:f53db19a101e6b402526ae397a3b5b322b0cd85741f847b8d457232c1eaee2df` |
| 7 | `theorem` | [step_slope_integral](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/step-slope-integral.md) | 65 | `result-track:fe7b717597f53108fd5e155541371a82f006104eb15e86312a7ae43ca81f9c6d` |
| 8 | `def` | [density](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/density.md) | 90 | `declaration-track:2a8e53e8a26e0fd3c1efe52f778ec1719232d0cae7bdd551b66816793226fe4c` |
| 9 | `theorem` | [density_integrable](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/density-integrable.md) | 92 | `result-track:602a5ba4cab3724040a55961e9b856a6c9e803548a851fc91e0e20a1290a25d6` |
| 10 | `theorem` | [log_slope_integrable](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/log-slope-integrable.md) | 99 | `result-track:32072524a1d035272dbb93b84e5b920622ff492c3a8417052bebf8116a601f16` |
| 11 | `theorem` | [background_ibp](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/background-ibp.md) | 104 | `result-track:07101434f3f89da3491b99289d3cc5f6c7c252b9d1cf868a8bc4994a76779137` |
| 12 | `def` | [realAction](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/realaction.md) | 126 | `declaration-track:443292bc8c2440b6430bb119f9123bc5d5b5fa913008ab2acb7246beaad0d8a9` |
| 13 | `theorem` | [cumulative_slope_integrable](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/cumulative-slope-integrable.md) | 130 | `result-track:716eb3968824bf7ae081ee25d3c45eab2fcc747d371feda1d34671a3d68db7ba` |
| 14 | `theorem` | [cumulative_ibp](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/cumulative-ibp.md) | 145 | `result-track:d7fea8eee2eb2c62c6b22e7bdd9e83d4fefd134b6f4d9dc2184580039144aa3a` |
| 15 | `theorem` | [centered_ibp](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/centered-ibp.md) | 175 | `result-track:dae35c8c742076bf94ec46ab7ad4e0286b08ab905a747608c0c6164b65c269c5` |
| 16 | `theorem` | [slope_memLp_two](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/slope-memlp-two.md) | 188 | `result-track:52229c330b20229fe70b4c86d7c274643892ae2f535fa664075a1491e09297b9` |
| 17 | `theorem` | [realAction_sq_bound](../../../../MeasureAndIntegration/CenteredReadout.lean/declarations/realaction-sq-bound.md) | 195 | `result-track:f5d24a4c20ddb8fe19e919780bd3f1b614e61184a1e729e12652be7b5f37bada` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ea62005c9eb138c0992443a2ac7576bda246e92340859a717fcb4da3e8b3129 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/VonMangoldt/CenteredReadout.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/CenteredReadout.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
