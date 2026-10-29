# thetaPhiJet_polynomial_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a37aacc165cd26eff3b8ab34ab3a023b216e1e7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca80c0f8-2dd1-540a-7434-1d8f458a259b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0c2ede3-cd61-f627-4b46-8e9d0ef97c3b",
  "kind": "theorem",
  "lexical_name": "thetaPhiJet_polynomial_summable",
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
  "slug": "thetaphijet-polynomial-summable",
  "source": {
    "blob": "a37aacc165cd26eff3b8ab34ab3a023b216e1e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c559bca4e3f819bd476f241622e3ed2681518ecd3b10806f5d8158f163f34213",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/ThetaPositiveLiftResultsAlternative11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0c2ede3-cd61-f627-4b46-8e9d0ef97c3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJet_polynomial_summable (k : Fin 5) (t : ℝ) :
    Summable (fun m : ℕ => ((m : ℝ) + 1) ^ 2 *
      thetaPhiJetPolynomial k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
        Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) := by
  apply (summable_mul_left_iff (a := Real.pi * Real.exp (5 * t - thetaModeA t))
    (by positivity)).mp
  have hs (j : Fin 6) : Summable (fun m : ℕ => jetCoefficient k j *
      (Real.pi ^ (j.val + 1) * thetaGaussianTerm (2 * j.val + 2) (4 * j.val + 5) m t)) :=
    ((thetaGaussianTerm_summable (2*j.val+2) (4*j.val+5) t).mul_left _).mul_left _
  apply (summable_sum (fun j (_ : j ∈ Finset.univ) => hs j)).congr
  intro m
  simp_rw [scaledGaussianTerm_eq]
  rw [jetPolynomial_eq_sum]
  simp only [Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Consecutive entries of the source jet are actual ordinary derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/RealFunctions/ThetaPositiveLiftResultsAlternative11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a37aacc165cd26eff3b8ab34ab3a023b216e1e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83292feddf2346a28e0c09b53a0f4433459a92bcedf2ac22fb524813663c9ac2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9a9ca3638173b1baf6a42b1b5d1719b8b69888e120f39b0fc6c0ebd858898bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
