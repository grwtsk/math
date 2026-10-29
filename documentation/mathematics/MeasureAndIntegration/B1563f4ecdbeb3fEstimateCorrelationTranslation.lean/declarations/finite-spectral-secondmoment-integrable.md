# finite_spectral_secondMoment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b1abe63ba15398493a2d16d90b0fb720f8d99b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3faf2aba-905a-57dd-5b18-9087be01e4aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df0f54f4-94b4-a58e-b03f-168247e5feff",
  "kind": "theorem",
  "lexical_name": "finite_spectral_secondMoment_integrable",
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
  "slug": "finite-spectral-secondmoment-integrable",
  "source": {
    "blob": "2b1abe63ba15398493a2d16d90b0fb720f8d99b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 311,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:febced667b696e3cba84fffeb386936725e8ce4d09312722d85329e4fb1032a6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/B1563f4ecdbeb3fEstimateCorrelationTranslation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df0f54f4-94b4-a58e-b03f-168247e5feff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_spectral_secondMoment_integrable (A : ℝ) (hA : 1 ≤ A)
    (S : Finset ℕ) (a : ℕ → ℝ) :
    Integrable (fun ξ ↦ spectralWeight A ξ *
      Complex.normSq (dirichletPolynomial S a ξ)) := by
  have hp : Continuous (fun ξ ↦ Complex.normSq (dirichletPolynomial S a ξ)) := by
    unfold dirichletPolynomial
    fun_prop
  apply (spectralWeight_integrable_mass A hA).1.mul_bdd (c := (∑ n ∈ S, |a n|) ^ 2)
    hp.aestronglyMeasurable
  filter_upwards [] with ξ
  have hn := dirichletPolynomial_norm_le S a ξ
  have hn0 := norm_nonneg (dirichletPolynomial S a ξ)
  rw [Real.norm_eq_abs, abs_of_nonneg (Complex.normSq_nonneg _), Complex.normSq_eq_norm_sq]
  nlinarith

/-- The exact weighted second moment is the finite difference-frequency correlation sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/B1563f4ecdbeb3fEstimateCorrelationTranslation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1abe63ba15398493a2d16d90b0fb720f8d99b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78d7be07086ddffc1a1cfee20d57e2d109f7197992f4d0bc6360290ce0b31e19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/74/74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
