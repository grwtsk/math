# actualProfile_negative_compact_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:196b115b-2ef5-dbec-27be-1d20eeba3171",
  "kind": "theorem",
  "lexical_name": "actualProfile_negative_compact_uniform",
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
  "slug": "actualprofile-negative-compact-uniform",
  "source": {
    "blob": "c5402ce95bc5664fdae8f1ab183b237f3de49f56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 251,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bddba5606b6280622ade5b9c3535a69255a3db8a275ed8c9e8e557306952db37",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfileNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:196b115b-2ef5-dbec-27be-1d20eeba3171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualProfile_negative_compact_uniform {r : ℝ} (hr : 0 ≤ r) (hr2 : r < 2)
    (N : ℕ) (hN : 1 ≤ N) :
    ∀ x : ℝ, x ∈ Icc (-r) 0 →
      |actualProfile x - partialProfile x N| ≤ r ^ 2 / (4 * (1 - r / 2) * (N : ℝ)) := by
  intro x hx
  have hb := actualProfile_negative_tail hr hr2 hx.1 hx.2 N hN
  have hd : 0 < 1 - r / 2 := by linarith
  rw [abs_of_nonneg hb.1]
  apply hb.2.trans
  apply div_le_div_of_nonneg_right _ (by positivity)
  simpa only [neg_sq] using (sq_le_sq₀ (by linarith [hx.2] : 0 ≤ -x) hr).2
    (by linarith [hx.1] : -x ≤ r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/CompensatedGammaProfileNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5402ce95bc5664fdae8f1ab183b237f3de49f56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aac1a50d8347c1e13995d15b7c57f1648ae63f63a611f8fc579e026350bbff3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
