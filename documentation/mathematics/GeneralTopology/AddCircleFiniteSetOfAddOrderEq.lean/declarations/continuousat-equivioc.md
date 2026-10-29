# continuousAt_equivIoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d10558eef48b083c55a8d9a227c6084d37f1e92a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3060c1cc-f8e0-6d02-9d6d-d5a6edf0cde9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d1da476-4184-edd9-5254-5720853dd9a2",
  "kind": "theorem",
  "lexical_name": "continuousAt_equivIoc",
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
  "slug": "continuousat-equivioc",
  "source": {
    "blob": "d10558eef48b083c55a8d9a227c6084d37f1e92a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b51ee2c932772c8a37c48dd136cd06e9b2d84df884900944ffe0b0931e15de40",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d1da476-4184-edd9-5254-5720853dd9a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_equivIoc : ContinuousAt (equivIoc p a) x := by
  induction x using QuotientAddGroup.induction_on'
  rw [ContinuousAt, Filter.Tendsto, QuotientAddGroup.nhds_eq, Filter.map_map]
  exact (continuousAt_toIocMod hp.out a hx).codRestrict _
#align add_circle.continuous_at_equiv_Ioc AddCircle.continuousAt_equivIoc

end Continuity

/-- The image of the closed-open interval `[a, a + p)` under the quotient map `𝕜 → AddCircle p` is
the entire space. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/AddCircleFiniteSetOfAddOrderEq.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10558eef48b083c55a8d9a227c6084d37f1e92a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=861c201c1e6684914f958aae758e2fc5158ef85f9c2d84509f181bf5cc4b57b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/SourceCorpus/FormalResearch/Objects/99/9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean","GRWTSK/Topology/GeneralTopology/AddCircle/Variant9934f0ab80f4e4a79eaf1f62a99978261c034ffece8cc563e91debc3a1280d60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
