# factor_mem_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b6e4923b3ba46a904bb17c43a0b5b8ec2f80a8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62cf123b-c643-ef54-b6ed-d63e99963594",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce29f927-dc55-774f-e471-6445e0f22f50",
  "kind": "theorem",
  "lexical_name": "factor_mem_unit",
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
  "slug": "factor-mem-unit",
  "source": {
    "blob": "2b6e4923b3ba46a904bb17c43a0b5b8ec2f80a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496357e54b14380b52fcd13d8ad67a0f81756ce00d26bd1fe1b03fefe051efea",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce29f927-dc55-774f-e471-6445e0f22f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem factor_mem_unit {n k j : ℕ} (hn : 1 ≤ n) (hk : k ≤ n)
    (hj : j ∈ range (2 * k)) :
    0 ≤ 1 - (j : ℝ) / (2 * (n : ℝ)) ∧
      1 - (j : ℝ) / (2 * (n : ℝ)) ≤ 1 := by
  have hn0 : 0 < 2 * (n : ℝ) := by positivity
  have hjn : (j : ℝ) ≤ 2 * (n : ℝ) := by exact_mod_cast (show j ≤ 2 * n by
    have := Finset.mem_range.mp hj
    omega)
  constructor
  · exact sub_nonneg.mpr ((div_le_one hn0).mpr hjn)
  · exact sub_le_self _ (div_nonneg (Nat.cast_nonneg _) hn0.le)

/-- The weighting never amplifies a source coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6e4923b3ba46a904bb17c43a0b5b8ec2f80a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a903b87c0d751ed49f056d5b3bd7de6d4b5bac7c2d25fd014c9a90f4eb03b20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
