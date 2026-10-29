# IsMeasurableRatCDF.measurable_measure_stieltjesFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:043b5ec9-723a-53a1-7e92-01a5045d085e",
  "kind": "lemma",
  "lexical_name": "IsMeasurableRatCDF.measurable_measure_stieltjesFunction",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "ismeasurableratcdf-measurable-measure-stieltjesfunction",
  "source": {
    "blob": "4e73bd687c636dd9b9bed90056a339a400e2080d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 434,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40c951f3df5c87077be060287e7dce61f73f547ed3c5fa370a973fac5d534ffb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:043b5ec9-723a-53a1-7e92-01a5045d085e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMeasurableRatCDF.measurable_measure_stieltjesFunction :
    Measurable fun a ↦ (hf.stieltjesFunction a).measure := by
  apply_rules [StieltjesFunction.measurable_measure, measurable_stieltjesFunction,
    tendsto_stieltjesFunction_atBot, tendsto_stieltjesFunction_atTop]

end Measure

end IsMeasurableRatCDF.stieltjesFunction

section stieltjesOfMeasurableRat

variable {f : α → ℚ → ℝ} [MeasurableSpace α]

/-- Turn a measurable function `f : α → ℚ → ℝ` into a measurable function `α → StieltjesFunction`.
Composition of `toRatCDF` and `IsMeasurableRatCDF.stieltjesFunction`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e73bd687c636dd9b9bed90056a339a400e2080d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09190ee0b47122b73dd306f21295f7c7e49900783b15cb3ec81d5b6e7a0a2227 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
