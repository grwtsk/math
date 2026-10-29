# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e0a5294e4dfa0cec63efff7560e73f766cf0b04",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineSectionEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e0a5294e4dfa0cec63efff7560e73f766cf0b04`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineSectionEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineSectionEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric`](../../../../FunctionsOfAComplexVariable/HolomorphicLineGaugeMetric.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Countable` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [density](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/density.md) | 32 | `declaration-track:e589205fe91dfd417444acc58ef4869cf3788cc551d4c208d6a769b5272dafa2` |
| 2 | `theorem` | [density_continuous](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/density-continuous.md) | 37 | `result-track:1e1829e424462561079983408361c3c47802497306703a4cda7d92aef9eda3b2` |
| 3 | `theorem` | [density_measurable](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/density-measurable.md) | 42 | `result-track:91a3783de331c2883e4833c39d2811df340aa22f2925186d3a428b40ad86dd9b` |
| 4 | `theorem` | [density_eq_zero](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/density-eq-zero.md) | 47 | `result-track:1f7becc6a9e21e1a2cd0a97e19ffcc24b391a65516acce43aadc17227c4c9974` |
| 5 | `def` | [energy](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/energy.md) | 59 | `declaration-track:da5252f15b5c3ce8833e6b5410f2f6dd2b9c749c475cc0966fb1eb5a511bc730` |
| 6 | `theorem` | [energy_eq_zero_iff](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/energy-eq-zero-iff.md) | 64 | `result-track:1af6a9bb2d6f4ba9bca0b3ad48923e4493a340b22f310eba661d6772a12385cf` |
| 7 | `def` | [AEEqual](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/aeequal.md) | 77 | `declaration-track:83bdaca639f0924bcca0d2e05dfe7a6fd23bd1109e3a742216ea4240469a459e` |
| 8 | `theorem` | [energy_congr_ae](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/energy-congr-ae.md) | 81 | `result-track:e890110ef1b3b02f13eb8394d879981f4ae0d83ac691267f952e428604f4d1c8` |
| 9 | `theorem` | [density_gauge](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/density-gauge.md) | 89 | `result-track:6c9ff983694b3722d419aeee7bc18341ee4ab3668a6fd56c4d85b322bbe4fe8e` |
| 10 | `theorem` | [energy_gauge](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/energy-gauge.md) | 96 | `result-track:d15247a8f021e2bf7f388de7b894a25558e50f0a7da06eb031ee434252f3b222` |
| 11 | `theorem` | [aeEqual_gauge_iff](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/aeequal-gauge-iff.md) | 103 | `result-track:b6fa6654d13df2ea62567ef7103849296c79a414e87a3875bdfa90cec5ca34a2` |
| 12 | `def` | [FiniteEnergySection](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/finiteenergysection.md) | 117 | `declaration-track:326edf1ba9776339cac169f00ddbb8769f7d16584d3ce274b875f55ce05e8899` |
| 13 | `def` | [finiteEnergyEquiv](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/finiteenergyequiv.md) | 122 | `declaration-track:f94afbad1c0ed3fa4e4de65b79a5ad533fc0fd9c6859a9b5406d06b8cb1603c3` |
| 14 | `theorem` | [finiteEnergyEquiv_value](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/finiteenergyequiv-value.md) | 136 | `result-track:45274f821476feabaee47fa86e1b2d6aed40a231437c0ed4760cc071348eca4d` |
| 15 | `theorem` | [energy_dirac](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/energy-dirac.md) | 141 | `result-track:6cfa27059711df8c3dda0543f3b342d5ef1eea96e518f43a25d751bc093ae156` |
| 16 | `def` | [scalarSection](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/scalarsection.md) | 147 | `declaration-track:9ba98f1640eeeed98656b1435e26c62118baedb6fbafadba9a31519d37479450` |
| 17 | `theorem` | [scalarSection_value](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/scalarsection-value.md) | 155 | `result-track:0b2ed861f71aea9df87df8bfd75c4e0f1e3ef6b6baf65c0c9a3169d20dfdcd43` |
| 18 | `theorem` | [unitSection_energy](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/unitsection-energy.md) | 160 | `result-track:d924a1e494e77c40e589daa7acd8e8b1b9dd6edd217879c37fb36b90a4d11b8f` |
| 19 | `theorem` | [unitSection_energy_infinite](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/unitsection-energy-infinite.md) | 168 | `result-track:81c3fc31878bb371b14d1ea4c717cb8984fd22785fd6f1d2dcbe1b4e02531cdc` |
| 20 | `def` | [zeroPoint](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/zeropoint.md) | 178 | `declaration-track:6e421e4017a8f604221c5a5edcfa993cfb90b3a62453b7f5ddd2b9116499d260` |
| 21 | `def` | [onePoint](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/onepoint.md) | 179 | `declaration-track:dc50588125f9dde41bfa0436121c098c34251585872b2af01d9a75570b59f063` |
| 22 | `def` | [coordinate](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/coordinate.md) | 181 | `declaration-track:44533d06127c5dcde5ba17801dd0c06cf8e5dec9ffe1cdcca336d1cab22676cd` |
| 23 | `theorem` | [coordinate_energy_zero](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/coordinate-energy-zero.md) | 184 | `result-track:ee98f05c5b7ae2aa598fa2a393709d9979806bd6da80b2ef051d79402118ee74` |
| 24 | `theorem` | [coordinate_energy_one](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/coordinate-energy-one.md) | 191 | `result-track:c5c6fbe5522fe7ebc1d30ccdd6b888fd6429876a285574b27255ace1824d7a05` |
| 25 | `theorem` | [zero_energy_not_pointwise_zero](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/zero-energy-not-pointwise-zero.md) | 199 | `result-track:685cd0c4c911264f78f8b60b8cb55a807f4c917f5e8953c169c8769e44e66afe` |
| 26 | `theorem` | [changing_measure_changes_energy](../../../../MeasureAndIntegration/HolomorphicLineSectionEnergy.lean/declarations/changing-measure-changes-energy.md) | 209 | `result-track:2de0a9e8580830ed34596b5c25499c1ca358849a3c5ca66cff0a38c87d2730be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99fc12c3c21675974374277b1aa0c13db05149d9c21362512a4f8bae5336c328 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicLineSectionEnergy.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/HolomorphicLineSectionEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
