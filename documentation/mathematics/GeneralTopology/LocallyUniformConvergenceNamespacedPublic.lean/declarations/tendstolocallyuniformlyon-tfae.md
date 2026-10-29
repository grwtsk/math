# tendstoLocallyUniformlyOn_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00e7ed86-7df7-5090-7d84-4369da8d7f70",
  "kind": "theorem",
  "lexical_name": "tendstoLocallyUniformlyOn_TFAE",
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
  "slug": "tendstolocallyuniformlyon-tfae",
  "source": {
    "blob": "10609935c04dad50b1809882a3466c13694fec00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2463b80399096ff68769c6fdbc9a95d86f23fcaaf7a5f84a6e78191725705161",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00e7ed86-7df7-5090-7d84-4369da8d7f70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoLocallyUniformlyOn_TFAE [LocallyCompactSpace α] (G : ι → α → β) (g : α → β)
    (p : Filter ι) (hs : IsOpen s) :
    List.TFAE [
      TendstoLocallyUniformlyOn G g p s,
      ∀ K, K ⊆ s → IsCompact K → TendstoUniformlyOn G g p K,
      ∀ x ∈ s, ∃ v ∈ 𝓝[s] x, TendstoUniformlyOn G g p v] := by
  tfae_have 1 → 2
  | h, K, hK1, hK2 =>
    (tendstoLocallyUniformlyOn_iff_tendstoUniformlyOn_of_compact hK2).mp (h.mono hK1)
  tfae_have 2 → 3
  | h, x, hx => by
    obtain ⟨K, ⟨hK1, hK2⟩, hK3⟩ := (compact_basis_nhds x).mem_iff.mp (hs.mem_nhds hx)
    exact ⟨K, nhdsWithin_le_nhds hK1, h K hK3 hK2⟩
  tfae_have 3 → 1
  | h, u, hu, x, hx => by
    obtain ⟨v, hv1, hv2⟩ := h x hx
    exact ⟨v, hv1, hv2 u hu⟩
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/LocallyUniformConvergenceNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10609935c04dad50b1809882a3466c13694fec00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74c41c4a3a5f56d2b1cba566b30b5e5982c1163df0ae5c164adf23113361252f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant711ed634256603f465c40cc36bedce211a7bb27baa36e0d2be749c1aa2c50def.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
