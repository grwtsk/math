# abs_U_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b654e8cb36264ab066d261168879ca5f94e91fc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c50717e-ed59-6a71-9c77-22c102fce55f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c2a4d06-cade-17d3-cbf4-e32b9960bf0e",
  "kind": "lemma",
  "lexical_name": "abs_U_sub_le",
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
  "slug": "abs-u-sub-le",
  "source": {
    "blob": "b654e8cb36264ab066d261168879ca5f94e91fc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42ca900319e558a737e262995dc29a1db98deab6d2bae565b97dd9e7e77b12c5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/NearCUE.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c2a4d06-cade-17d3-cbf4-e32b9960bf0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_U_sub_le (h : NearCUE S N τ) {m : ℕ} (hm : m ≤ N) :
    |(N : ℝ) * U S m - ((m : ℝ) ^ 3 - m) / 6| ≤ (m : ℝ) * (m - 1) / 2 * τ := by
  induction m with
  | zero => simp [U_zero]
  | succ m ih =>
    have ih' := ih (by omega)
    have hT := abs_T_sub_le h (by omega : m + 1 ≤ N)
    rw [U_succ]
    push_cast
    have e : (N : ℝ) * (U S m + T S m) - (((m : ℝ) + 1) ^ 3 - ((m : ℝ) + 1)) / 6
        = ((N : ℝ) * U S m - ((m : ℝ) ^ 3 - m) / 6) + ((N : ℝ) * T S m - (m : ℝ) * (m + 1) / 2) := by ring
    rw [e]
    calc |((N : ℝ) * U S m - ((m : ℝ) ^ 3 - m) / 6) + ((N : ℝ) * T S m - (m : ℝ) * (m + 1) / 2)|
        ≤ |(N : ℝ) * U S m - ((m : ℝ) ^ 3 - m) / 6| + |(N : ℝ) * T S m - (m : ℝ) * (m + 1) / 2| := abs_add_le _ _
      _ ≤ (m : ℝ) * (m - 1) / 2 * τ + m * τ := add_le_add ih' hT
      _ = ((m : ℝ) + 1) * ((m : ℝ) + 1 - 1) / 2 * τ := by ring

/-! ## 2. E on a closed cell -/

/-- integrability of D on any subinterval of [0,1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/NearCUE.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b654e8cb36264ab066d261168879ca5f94e91fc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfd9be0c8099f64068832ca484d433bc900753ca755cee72ab770124b78be1b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
