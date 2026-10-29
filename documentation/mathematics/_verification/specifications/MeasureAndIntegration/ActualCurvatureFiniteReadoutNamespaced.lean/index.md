# Verification target: Actual Curvature Finite Readout Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0f48b9b0ca76973809058a4b721cabef4043d77",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0f48b9b0ca76973809058a4b721cabef4043d77`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureResolution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gridPoint](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/gridpoint.md) | 24 | `declaration-track:d52850eb8068ffe74753b62356f0d90599ef3d11ed517ee9ee112498210511c6` |
| 2 | `theorem` | [gridPoint_zero](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/gridpoint-zero.md) | 26 | `result-track:4974ecbd32cd92d68974b9eac5eddd685a5279a25b99ca5526b5989f2690cc3c` |
| 3 | `theorem` | [gridPoint_upper](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/gridpoint-upper.md) | 29 | `result-track:b17aaa76c92b506236d19988241f0ecf796a97f6d2f928cd44b8dde524c985b0` |
| 4 | `theorem` | [gridPoint_step_pos](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/gridpoint-step-pos.md) | 34 | `result-track:42d051ea43fe5779585e050dbf4dad8b817a971806fe0583ff46961f34608933` |
| 5 | `theorem` | [leftGridSample_eq_on_cell](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/leftgridsample-eq-on-cell.md) | 42 | `result-track:a6f3d6d78580355c616464fb21eb00236f9ccc1dffafe9721302df2d4fd4f999` |
| 6 | `theorem` | [actual_curvature_cell_FTC](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/actual-curvature-cell-ftc.md) | 63 | `result-track:c38d42749dae3fa6d1d95f410edde172006a0e89e517a3842c377e152ec8dc38` |
| 7 | `theorem` | [actual_grid_cell_integral](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/actual-grid-cell-integral.md) | 68 | `result-track:4013469b28f1803802a6ad48fc594e2241a1bc09c59cf23c7bbe99ba05477ffd` |
| 8 | `theorem` | [sampled_grid_cell_intervalIntegrable](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/sampled-grid-cell-intervalintegrable.md) | 85 | `result-track:1c77c3f2d8c3143ff75c8915982f9a2fd4a54c08abea07b5c691b8cae93eaacc` |
| 9 | `def` | [finiteCurvatureReadout](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/finitecurvaturereadout.md) | 99 | `declaration-track:996189ff56d41fb84cce428a5d56802e13d3977bb4153b3557f286e86d9a0e65` |
| 10 | `theorem` | [sampled_grid_eq_finite](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutNamespaced.lean/declarations/sampled-grid-eq-finite.md) | 105 | `result-track:9dfcae7ba27cd66004533b7f8406af71c2e0bffdb1c82f6de6ccf2071f19ee01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d3067630c35af246963ab81698ece0303c5d7075b9ba6186e0de32d686ca38d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variant3b270d30cca0523354001aba9f1d8ccc20e18bdd8fa3382aa8283199164923a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
