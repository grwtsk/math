# counterBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13f635cdb597127f9adfbf7713ab70ced35ae6fdcc903a9a2cb9a9d0d5d7cfb6",
  "kind": "def",
  "lexical_name": "counterBasis",
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
  "slug": "counterbasis",
  "source": {
    "blob": "78ba76d6250d0818b49b2d6192832dead96b9a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 213,
    "path": "GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78c86abd3184b5508ea2af691d3098f596186e29a93e310e30cb794a3e8f92f8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/DiscreteTopologyNonDiscreteUniformityNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13f635cdb597127f9adfbf7713ab70ced35ae6fdcc903a9a2cb9a9d0d5d7cfb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def counterBasis : FilterBasis (ℕ × ℕ) where
  sets := range fundamentalEntourage
  nonempty := range_nonempty _
  inter_sets := by
    intro S T hS hT
    obtain ⟨s, hs⟩ := hS
    obtain ⟨t, ht⟩ := hT
    simp only [mem_range, subset_inter_iff, exists_exists_eq_and, fundamentalEntourage]
    use max t s
    refine ⟨fun ⟨P1, P2⟩ hP ↦ ?_, fun ⟨P1, P2⟩ hP ↦ ?_⟩ <;> rcases hP with h | h
    · simp only [iUnion_singleton_eq_range, mem_range, Prod.mk.injEq, Subtype.exists,
        exists_and_left, exists_eq_left] at h
      simpa only [← hs, mem_fundamentalEntourage] using Or.inr h.2
    · simpa only [← hs, mem_fundamentalEntourage] using Or.inl
        ⟨le_trans (by omega) h.1, le_trans (by omega) h.2⟩
    · simp only [iUnion_singleton_eq_range, mem_range, Prod.mk.injEq, Subtype.exists,
        exists_and_left, exists_eq_left] at h
      simpa only [← ht, mem_fundamentalEntourage] using Or.inr h.2
    · simp only [mem_Ici, Prod.mk_le_mk] at h
      simpa only [← ht, mem_fundamentalEntourage] using Or.inl ⟨le_trans
         (by omega) h.1, le_trans (by omega) h.2⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/DiscreteTopologyNonDiscreteUniformityNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ba76d6250d0818b49b2d6192832dead96b9a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18aa267f4e25394c82dd914eff2bc6dfc333621152a6b8d705827724c7d9a889 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
