# finiteTransform_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8034eb7d-1335-6a74-868a-15956662b5b2",
  "kind": "theorem",
  "lexical_name": "finiteTransform_ne_zero",
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
  "slug": "finitetransform-ne-zero",
  "source": {
    "blob": "635c56f684a79385e4f786aa330c5ce2e21b54be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6c3be1b18024027fde214eb15fb94983fed040edc67fe32a94fdd0ca0f07f1c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuantitativeExclusionAroundAnObservedIsolatedAtomEdition3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8034eb7d-1335-6a74-868a-15956662b5b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteTransform_ne_zero {ι : Type*} (s : Finset ι)
    (weight : ι → ℝ) (location : ι → ℂ) {w M g : ℝ} {p z : ℂ}
    (hw : 0 < w) (hwrest : ∀ i ∈ s, 0 ≤ weight i)
    (hMpos : 0 < M) (hM : M = w + ∑ i ∈ s, weight i)
    (hsep : ∀ i ∈ s, g ≤ ‖location i - p‖)
    (hd : 0 < ‖z - p‖) (hdg : ‖z - p‖ < g)
    (hr : ‖z - p‖ < w * g / M) :
    finiteTransform s weight location w p z ≠ 0 := by
  intro hz
  have hlow := finiteTransform_lower_bound s weight location (le_of_lt hw)
    hwrest hM hsep hd hdg
  rw [hz, norm_zero] at hlow
  exact (not_le_of_gt (exclusionBound_pos hMpos hd hdg hr)) hlow

/-- The positive remaining weights make the quantitative radius no larger than
`g`, so this exclusion needs only the requested punctured radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuantitativeExclusionAroundAnObservedIsolatedAtomEdition3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `635c56f684a79385e4f786aa330c5ce2e21b54be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0716639672cf79a7338ae40a2f75b49194708b48e351388f19f5d61bd7f46110 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleExclusion/Variant7ff23dfa65022295198063dbc12d999616d6c4e6a3db193bf3bbe2157e46903c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
