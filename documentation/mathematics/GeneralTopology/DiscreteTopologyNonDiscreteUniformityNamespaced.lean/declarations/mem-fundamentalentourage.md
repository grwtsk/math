# mem_fundamentalEntourage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce533f90-1b8b-9f5a-b2eb-f832d910c0ea",
  "kind": "lemma",
  "lexical_name": "mem_fundamentalEntourage",
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
  "slug": "mem-fundamentalentourage",
  "source": {
    "blob": "78ba76d6250d0818b49b2d6192832dead96b9a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 194,
    "path": "GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b78e74aedb7465b70b220f260c228877da7fba9ba466b962d64473aaf145edf1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/DiscreteTopologyNonDiscreteUniformityNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce533f90-1b8b-9f5a-b2eb-f832d910c0ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_fundamentalEntourage (n : ℕ) (P : ℕ × ℕ) : P ∈ fundamentalEntourage n ↔
    (n ≤ P.1 ∧ n ≤ P.2) ∨ (P.1 = P.2) := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · simp only [fundamentalEntourage, iUnion_singleton_eq_range, mem_union, mem_range,
      Subtype.exists, mem_Icc, zero_le, true_and, exists_prop', nonempty_prop, mem_Ici] at h
    rcases h with h | h
    · apply Or.inr
      rw [((h.choose_spec).2).symm]
    · exact Or.inl h
  · simp only [iUnion_singleton_eq_range, mem_union, mem_range, Subtype.exists, mem_Icc, zero_le,
      true_and, exists_prop', nonempty_prop, mem_Ici, fundamentalEntourage]
    rcases h with h | h
    · exact Or.inr h
    · cases le_total n P.1 with
      | inl h_le => exact Or.inr ⟨h_le, h ▸ h_le⟩
      | inr h_le => exact Or.inl ⟨P.1, ⟨h_le, congrArg _ h⟩⟩

/-- The collection `fundamentalEntourage` satisfies the axioms to be a basis for a filter on
`ℕ × ℕ` and gives rise to a term in the relevant type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/DiscreteTopologyNonDiscreteUniformityNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ba76d6250d0818b49b2d6192832dead96b9a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8eb7c2a2d2099948ff2d0acca92a1e7b51d047baab1fb792296aafe7d13efb20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
