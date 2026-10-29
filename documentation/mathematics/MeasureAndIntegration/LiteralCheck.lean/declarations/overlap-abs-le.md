# overlap_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3002e56ad0dbc0f0eae50ccfd9e957786e9d1424",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0766cdd5-485e-24b3-49e1-dd2641ff9648",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:329e1752-8d52-8540-0228-6f5a6d4caf50",
  "kind": "theorem",
  "lexical_name": "overlap_abs_le",
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
  "slug": "overlap-abs-le",
  "source": {
    "blob": "3002e56ad0dbc0f0eae50ccfd9e957786e9d1424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 189,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f701cccacf114b42d97eb1aa15e3a9e37052d7975621665536ac224430e18445",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/LiteralCheck.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:329e1752-8d52-8540-0228-6f5a6d4caf50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlap_abs_le (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) :
    |overlap a b u v| ≤ 1 / (a + b) := by
  have hab : 0 < a + b := add_pos ha hb
  unfold overlap
  split_ifs with huv
  · rw [abs_of_nonneg (div_nonneg (Real.exp_pos _).le hab.le)]
    exact div_le_div_of_nonneg_right
      (Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr ha.le)
        (sub_nonneg.mpr huv))) hab.le
  · rw [abs_of_nonneg (div_nonneg (Real.exp_pos _).le hab.le)]
    exact div_le_div_of_nonneg_right
      (Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hb.le)
        (sub_nonneg.mpr (le_of_not_ge huv)))) hab.le

/-- The two-sector overlap is measurable on the complete time plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/LiteralCheck.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3002e56ad0dbc0f0eae50ccfd9e957786e9d1424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4218113923616de55f9e12ec711970074d600f3f604ba8552d299548e81a991 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LiteralCheck/Variant9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ee90db56ad984e567422263504ca2e6cea8cd96941504069bbe29ecc9862916.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
