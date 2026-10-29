# candidate_boundaryInverse_half_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2212b2cc57dbfe7d980c16eb458af96aa7645951",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0d5d57116eb3e9c085b19fbaf0247f7fb857646cfc14b11d09c6884c1c067ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e839061-0af9-acbd-ca96-b2bcf2ea360a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b93636ec-1f9f-3a1b-5f1a-9eb5faa55710",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_half_shift",
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
  "slug": "candidate-boundaryinverse-half-shift",
  "source": {
    "blob": "2212b2cc57dbfe7d980c16eb458af96aa7645951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 263,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantc0d5d57116eb3e9c085b19fbaf0247f7fb857646cfc14b11d09c6884c1c067ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b5dfe6348bce830a970bc9baeb25dbc03f71500dd54ea55f1fbdfc7d65d27e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/CandidateControllerLaplaceAudit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b93636ec-1f9f-3a1b-5f1a-9eb5faa55710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_half_shift (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) :
    boundaryInverse (candidate X ε h) x = (Real.exp (-(ε / 2) * x) : ℂ) *
      boundaryInverse (candidate X (ε / 2) h) x := by
  have he := candidate_boundaryInverse_shift X hX (ε / 2) h (by positivity) hh hh1
    (ε / 2) (by positivity) x
  have hεid : ε / 2 + ε / 2 = ε := by ring
  rw [hεid] at he
  rw [he]
  have hmul : (Real.exp (-(ε / 2) * x) : ℂ) * (Real.exp (x * (ε / 2)) : ℂ) = 1 := by
    rw [← Complex.ofReal_mul, ← Real.exp_add]
    ring_nf
    simp
  rw [← mul_assoc, hmul, one_mul]

/-- Every actual inverse has a genuine exponential bound, uniformly over the whole time axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/CandidateControllerLaplaceAudit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantc0d5d57116eb3e9c085b19fbaf0247f7fb857646cfc14b11d09c6884c1c067ae.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2212b2cc57dbfe7d980c16eb458af96aa7645951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b24ac6caa250a1dc6b2e9c09dbe013ceb7761cc4c5bf5bb64814986a22f1f86d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantc0d5d57116eb3e9c085b19fbaf0247f7fb857646cfc14b11d09c6884c1c067ae.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0d5d57116eb3e9c085b19fbaf0247f7fb857646cfc14b11d09c6884c1c067ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
