# Tendsto.countable_compl_preimage_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:690218e7-91f3-7d24-9d59-4acc319d994f",
  "kind": "theorem",
  "lexical_name": "Tendsto.countable_compl_preimage_ker",
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
  "slug": "tendsto-countable-compl-preimage-ker",
  "source": {
    "blob": "f48d3b5e6745dd555b217edff09c39d02169fdbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a5bf37f54249505c356076333c605c1f0adf84231093e2be23e12a9599949fc",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedFrequentlyCofiniteMemIffInfinite.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:690218e7-91f3-7d24-9d59-4acc319d994f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.countable_compl_preimage_ker {f : α → β}
    {l : Filter β} [l.IsCountablyGenerated] (h : Tendsto f cofinite l) :
    Set.Countable (f ⁻¹' l.ker)ᶜ := by rw [← ker_comap]; exact countable_compl_ker h.le_comap

/-- Given a collection of filters `l i : Filter (α i)` and sets `s i ∈ l i`,
if all but finitely many of `s i` are the whole space,
then their indexed product `Set.pi Set.univ s` belongs to the filter `Filter.pi l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedFrequentlyCofiniteMemIffInfinite.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f48d3b5e6745dd555b217edff09c39d02169fdbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47c5b77937c12b8321eeca08f939b6f435abe8a9407c5b88f05401aa82acefe9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
