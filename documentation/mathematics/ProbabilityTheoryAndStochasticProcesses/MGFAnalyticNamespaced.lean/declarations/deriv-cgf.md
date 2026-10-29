# deriv_cgf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d468570e-9e45-de35-be96-078db0c58de3",
  "kind": "lemma",
  "lexical_name": "deriv_cgf",
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
  "slug": "deriv-cgf",
  "source": {
    "blob": "924d2e96df8daa7830d4efae1c682e39889cbd6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 191,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ce7f5f17a967b9e82a2664b165882d7d2571cc12f4ea1ebea0f4723f10fa8b4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MGFAnalyticNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d468570e-9e45-de35-be96-078db0c58de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deriv_cgf (h : v ∈ interior (integrableExpSet X μ)) :
    deriv (cgf X μ) v = μ[fun ω ↦ X ω * exp (v * X ω)] / mgf X μ v := by
  by_cases hμ : μ = 0
  · simp only [hμ, cgf_zero_measure, integral_zero_measure, mgf_zero_measure, div_zero,
      Pi.zero_apply]
    exact deriv_const v 0
  have hv : Integrable (fun ω ↦ exp (v * X ω)) μ := interior_subset (s := integrableExpSet X μ) h
  calc deriv (fun x ↦ log (mgf X μ x)) v
  _ = deriv (mgf X μ) v / mgf X μ v := by
    rw [deriv.log (differentiableAt_mgf h) ((mgf_pos' hμ hv).ne')]
  _ = μ[fun ω ↦ X ω * exp (v * X ω)] / mgf X μ v := by rw [deriv_mgf h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MGFAnalyticNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924d2e96df8daa7830d4efae1c682e39889cbd6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=baaa9982ddf3a827c73c9d8946e620a2f050ff24be50eab49caeb7b87b269558 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/MGFAnalytic/Variant4401b57f3755f0a1681d54b8319666063ad12185ef0f7d962d2c7b6d331e33b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
