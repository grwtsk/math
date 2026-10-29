# form_perm_zpow_apply_mem_imp_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5b1fe84-8c22-624e-6eef-e26421124331",
  "kind": "theorem",
  "lexical_name": "form_perm_zpow_apply_mem_imp_mem",
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
  "slug": "form-perm-zpow-apply-mem-imp-mem",
  "source": {
    "blob": "50fefbf4d136f318585c0c797cc941ddb5261e72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 368,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78d59ff91f0ebaed448075e0362a4985cb7bdd196a5fdd978969399f82a49faa",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedMemOrMemOfZipWithSwapProdNe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b1fe84-8c22-624e-6eef-e26421124331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem form_perm_zpow_apply_mem_imp_mem (l : List α) (x : α) (hx : x ∈ l) (n : ℤ) :
    (formPerm l ^ n) x ∈ l := by
  by_cases h : (l.formPerm ^ n) x = x
  · simpa [h] using hx
  · have h : x ∈ { x | (l.formPerm ^ n) x ≠ x } := h
    rw [← set_support_apply_mem] at h
    replace h := set_support_zpow_subset _ _ h
    simpa using support_formPerm_le' _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GroupTheoryAndGeneralizations/PermutationGroups/PermListNamespacedMemOrMemOfZipWithSwapProdNe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50fefbf4d136f318585c0c797cc941ddb5261e72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc18e0ea1d7d631b9171b88ddfc9c222e9a6c6b2558d92bc1c549c0fc9e857a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
