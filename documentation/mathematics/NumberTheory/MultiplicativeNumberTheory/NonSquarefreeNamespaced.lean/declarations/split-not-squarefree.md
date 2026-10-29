# split_not_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abaf9fcf-fccb-2f58-32b7-1e0a2663099a",
  "kind": "lemma",
  "lexical_name": "split_not_squarefree",
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
  "slug": "split-not-squarefree",
  "source": {
    "blob": "3f4bca101844d3aaa2a246e1f56cee795701bb2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 423,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c752574fbd4db4800e726565f43faef9472091dcb67def66c56c22162968e0e2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abaf9fcf-fccb-2f58-32b7-1e0a2663099a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma split_not_squarefree (d e : ℕ) (_hd : Λ d ≠ 0) (h : ¬ Squarefree (d * e)) :
    ¬ d.Prime ∨ (¬ Squarefree e ∨ (d.Prime ∧ d ∣ e)) := by
  by_cases hp : d.Prime
  · right
    by_cases he : Squarefree e
    · right
      refine ⟨hp, ?_⟩
      by_contra hnd
      have hcop : d.Coprime e := (Nat.Prime.coprime_iff_not_dvd hp).mpr hnd
      exact h ((Nat.squarefree_mul hcop).mpr ⟨hp.prime.squarefree, he⟩)
    · left; exact he
  · left; exact hp

/-- **Nsf (m+1) u ≤ C_m · Gb m u ^ m**, with an (inexplicit) constant depending on m only. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/MultiplicativeNumberTheory/NonSquarefreeNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f4bca101844d3aaa2a246e1f56cee795701bb2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd7d7d17a9be4d99ec530127388bb94dedf1b9cbd65705bd9cbc9970512583ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
