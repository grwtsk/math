# actual_deriv_source_cell_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f385ce56b91551bad05cb1e3855fb9c57462ed48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/313e4324b0b1669c333ec89814216553c1f229f4aa447a51c71f43f33456e27d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc34cf71-4fcd-a2f6-d75b-122e3bb846c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f740a4f-90bf-606f-48e3-fd010c1c737f",
  "kind": "theorem",
  "lexical_name": "actual_deriv_source_cell_factorization",
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
  "slug": "actual-deriv-source-cell-factorization",
  "source": {
    "blob": "f385ce56b91551bad05cb1e3855fb9c57462ed48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt03/Variant313e4324b0b1669c333ec89814216553c1f229f4aa447a51c71f43f33456e27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acbf1b2a9f0e9e7ec25b8350f4091f23fd40be733a4634e509232a956b8ed8d7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceActualMixedWorkFubiniAttempt03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f740a4f-90bf-606f-48e3-fd010c1c737f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_deriv_source_cell_factorization
    {A : ℝ} (hA : 0 < A) (l b k : ℝ) (hlb : l ≤ b) (hk : 0 < k) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * deriv (normalizedTest explicitSecondDerivative A) (v - t) *
        (deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u) /
          (u * Real.sqrt u))) =
      ∫ v : ℝ,
        (∫ t in l..b, errorExp t * deriv (normalizedTest explicitSecondDerivative A) (v - t)) *
          (∫ u in k..(k + 1),
            deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u) /
              (u * Real.sqrt u)) :=
  cell_fubini_factorization _ ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num))
    hlb hk (deriv_source_tsupport_subset hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceActualMixedWorkFubiniAttempt03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt03/Variant313e4324b0b1669c333ec89814216553c1f229f4aa447a51c71f43f33456e27d.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f385ce56b91551bad05cb1e3855fb9c57462ed48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6718859edfec643e6130c501d9f6f8a91c426f8a99c77d8e5c4f194b2e322ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt03/Variant313e4324b0b1669c333ec89814216553c1f229f4aa447a51c71f43f33456e27d.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/31/313e4324b0b1669c333ec89814216553c1f229f4aa447a51c71f43f33456e27d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
