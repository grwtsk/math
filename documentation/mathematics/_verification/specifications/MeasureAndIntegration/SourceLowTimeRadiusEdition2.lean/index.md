# Verification target: Source Low Time Radius Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e928b5651202a39afc9c3fca632e77ba8b7d72d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variantbbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e928b5651202a39afc9c3fca632e77ba8b7d72d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variantbbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variantbbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceRestrictedLowTimeWork` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [timeRow](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/timerow.md) | 15 | `declaration-track:11445f461834cc35ff0b6a81372c60e31148974730be323ad94304febcc472cb` |
| 2 | `abbrev` | [cellRow](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/cellrow.md) | 16 | `declaration-track:6652f6020be22c5b5d10dec4a9bb96278e2ef8dfbc014ad670cb9310e711aad6` |
| 3 | `abbrev` | [errorBudget](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/errorbudget.md) | 17 | `declaration-track:596a64018155c910d40264b59b211d2cc2c28c75721223b8cb8156c9e06130f4` |
| 4 | `def` | [lowTimeStripBudget](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/lowtimestripbudget.md) | 19 | `declaration-track:7b955476eef9a43b6d82de8991ac13a63ece4bd2226272478c6d24a7ca76caf9` |
| 5 | `theorem` | [actual_low_sector_integrable](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/actual-low-sector-integrable.md) | 22 | `result-track:e1a4b720297517ad0df2051b7385148ceef7fe139a628cff8b05067cf60bbea8` |
| 6 | `theorem` | [actual_low_mixed_restricted_abs_le_scaled](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/actual-low-mixed-restricted-abs-le-scaled.md) | 52 | `result-track:ff5800fbdf437eda35aa5ab96883dbc7af74989ffa152ce3a1ee4184e1fbcfa3` |
| 7 | `theorem` | [actual_retained_spatial_strip_abs_le_scaled](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/actual-retained-spatial-strip-abs-le-scaled.md) | 85 | `result-track:707022f10b530ac50050c54116c93660d6e2d71d93379d72c331ceabd586e3c6` |
| 8 | `theorem` | [lowTimeStripBudget_le_at_radius](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/lowtimestripbudget-le-at-radius.md) | 93 | `result-track:d5524c74175cbb4e129ba844ae17853305860aecac154ac83443a89b21219b0b` |
| 9 | `theorem` | [actual_retained_spatial_strip_abs_le_radius](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/actual-retained-spatial-strip-abs-le-radius.md) | 104 | `result-track:428c4394679040d35fba5287a13eb9262c3f21f603750e8fbf0ff27785011e73` |
| 10 | `theorem` | [actual_surplus_le_remainingOverlap_add_radius](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/actual-surplus-le-remainingoverlap-add-radius.md) | 110 | `result-track:cced01c5d4b689c302dccb17df2a0e45eb9e2413cdca2b2624078733da020106` |
| 11 | `theorem` | [remainingOverlap_le_actual_surplus_add_radius](../../../../MeasureAndIntegration/SourceLowTimeRadiusEdition2.lean/declarations/remainingoverlap-le-actual-surplus-add-radius.md) | 120 | `result-track:845315a6907172a77ad5dbe3af9d54783d894dd2564e684284e58fd08a0ef358` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2622a89b5e3c37db4a27438f4fc14b8c8a51397fc37f8627f1d7bf2f2df965b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variantbbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLowTimeRadius/Variantbbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
