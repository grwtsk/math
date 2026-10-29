# Verification target: Source Actual Centered Mangoldt Second Moment Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bbfd8909c40f357362a41e70bbd176c87e72fa8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMoment/Variant73c7fcc1f0711ab0bfece6ad357de29cd30fe8f59ea4e6f64fb527a504dd84f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bbfd8909c40f357362a41e70bbd176c87e72fa8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMoment/Variant73c7fcc1f0711ab0bfece6ad357de29cd30fe8f59ea4e6f64fb527a504dd84f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMoment/Variant73c7fcc1f0711ab0bfece6ad357de29cd30fe8f59ea4e6f64fb527a504dd84f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualClosedXiSignedMoment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCenteredBDensity](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/declarations/actualcenteredbdensity.md) | 27 | `declaration-track:4ac7e5f7271dc767528f1f1e0f15fbf70f1a247589895ab9797c8b0f8c2806a3` |
| 2 | `def` | [actualCenteredBSecondMoment](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/declarations/actualcenteredbsecondmoment.md) | 30 | `declaration-track:7d171f329a61104177b41da1f7e08013ed82450f843eb139e02e192647d496d8` |
| 3 | `theorem` | [actual_weighted_error_measurable](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/declarations/actual-weighted-error-measurable.md) | 33 | `result-track:8355f23b95ed146fe73a53c91b9fe19f476d3f4a2da38dda6c49ff357e4e3727` |
| 4 | `theorem` | [actualCenteredBDensity_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/declarations/actualcenteredbdensity-intervalintegrable.md) | 40 | `result-track:b659ba4e51d37c2d2d67c594711bc107e94ebd72bdc74e2aa67dcd8e2a8b8c00` |
| 5 | `def` | [squareLogPrimitive](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/declarations/squarelogprimitive.md) | 65 | `declaration-track:e861209bee73bfebf0d83a11004a02e82695626758b8243a1097958b8bd04d32` |
| 6 | `theorem` | [squareLogPrimitive_hasDerivAt](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/declarations/squarelogprimitive-hasderivat.md) | 68 | `result-track:f17c84f8c4c72b872764adc2db130a90f13186f956ec8fbed9c08d6f85a86623` |
| 7 | `theorem` | [exact_log_variance](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/declarations/exact-log-variance.md) | 77 | `result-track:008b6be0836a2720aa55fde51dffd04401877f85ed60b2dfa44971eb3b1693ff` |
| 8 | `theorem` | [actual_empty_prefix_variance_lower](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/declarations/actual-empty-prefix-variance-lower.md) | 94 | `result-track:7becda720aa55c0e1455940be11756618efdbdca25348628c53629dd3a46b54c` |
| 9 | `theorem` | [actualCenteredBSecondMoment_lower](../../../../MeasureAndIntegration/SourceActualCenteredMangoldtSecondMomentNamespaced.lean/declarations/actualcenteredbsecondmoment-lower.md) | 114 | `result-track:61745656bf5e920949da9a10b7804882615954c2ef111fc55063b44e9316f117` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf0ec7e3bafbf49cee53ad23cebc2e5507e177896b09f35a194c376d4b425473 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMoment/Variant73c7fcc1f0711ab0bfece6ad357de29cd30fe8f59ea4e6f64fb527a504dd84f8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredMangoldtSecondMoment/Variant73c7fcc1f0711ab0bfece6ad357de29cd30fe8f59ea4e6f64fb527a504dd84f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
