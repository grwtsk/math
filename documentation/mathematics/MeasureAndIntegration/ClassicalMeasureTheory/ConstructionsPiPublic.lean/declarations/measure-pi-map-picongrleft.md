# Measure.pi_map_piCongrLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a62c773222f631197270b3ac84ea3efaf728458",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 745,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:896fafc0-a072-09fa-3fd9-50341495a8b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f3540d0-2c9c-c3fb-1444-3c531c4902bb",
  "kind": "lemma",
  "lexical_name": "Measure.pi_map_piCongrLeft",
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
  "slug": "measure-pi-map-picongrleft",
  "source": {
    "blob": "2a62c773222f631197270b3ac84ea3efaf728458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 745,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:984f2d75a15c4bf750d065f0f3f2b6a717fd9e93d95c57d892c8a283df1cc4c4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f3540d0-2c9c-c3fb-1444-3c531c4902bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 745–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Measure.pi_map_piCongrLeft (e : ι ≃ ι') {β : ι' → Type*} [∀ i, MeasurableSpace (β i)]
    (μ : (i : ι') → Measure (β i)) [∀ i, SigmaFinite (μ i)] :
    (Measure.pi fun i ↦ μ (e i)).map (MeasurableEquiv.piCongrLeft (fun i ↦ β i) e) =
      Measure.pi μ :=
  (measurePreserving_piCongrLeft (α := fun i ↦ β i) μ e).map_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ConstructionsPiPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean#L745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a62c773222f631197270b3ac84ea3efaf728458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7a440fa76d226afe2709c7cdc95bdead4d22cb1a63ec62f7eb33a82c47fa568 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
