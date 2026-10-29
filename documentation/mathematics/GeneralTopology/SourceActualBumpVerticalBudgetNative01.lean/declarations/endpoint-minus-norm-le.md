# endpoint_minus_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d00113adc09f47b6b1e66319bde4313b6890b968",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1fb5e1c-af1e-2f4f-477b-7c26a5ab60cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abd4b8f1-7791-669e-cc89-2a6810756878",
  "kind": "theorem",
  "lexical_name": "endpoint_minus_norm_le",
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
  "slug": "endpoint-minus-norm-le",
  "source": {
    "blob": "d00113adc09f47b6b1e66319bde4313b6890b968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudgetNative01/Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5559637b22c26513f7cdb66f1cebb2b47418e6134878d44d4b9dccd2d8d0f927",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/SourceActualBumpVerticalBudgetNative01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abd4b8f1-7791-669e-cc89-2a6810756878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_minus_norm_le (z : ℂ) (hn : 1 ≤ ‖z‖) :
    ‖z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105‖ ≤ 266 * ‖z‖ ^ 4 := by
  have h1 := norm_add_le (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z) (105 : ℂ)
  have h2 := norm_sub_le (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2) (105 * z)
  have h3 := norm_add_le (z ^ 4 - 10 * z ^ 3) (45 * z ^ 2)
  have h4 := norm_sub_le (z ^ 4) (10 * z ^ 3)
  simp only [norm_mul, norm_pow, Complex.norm_natCast] at h1 h2 h3 h4
  have h0 : (1 : ℝ) ≤ ‖z‖ ^ 4 := one_le_pow₀ hn
  have hz1 : ‖z‖ ≤ ‖z‖ ^ 4 := by
    simpa using pow_le_pow_right₀ hn (show (1 : ℕ) ≤ 4 by norm_num)
  have hz2 : ‖z‖ ^ 2 ≤ ‖z‖ ^ 4 := pow_le_pow_right₀ hn (by norm_num)
  have hz3 : ‖z‖ ^ 3 ≤ ‖z‖ ^ 4 := pow_le_pow_right₀ hn (by norm_num)
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/SourceActualBumpVerticalBudgetNative01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudgetNative01/Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d00113adc09f47b6b1e66319bde4313b6890b968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e9b66eb327398fac764396d9a7de7ac48e518c93e022585eabffe343aa60069 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpVerticalBudgetNative01/Variant2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e5f0bf78eec514fea6f65ea5ffaadac7ef57dae5fcd2df5d5d72b715d1db32b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
