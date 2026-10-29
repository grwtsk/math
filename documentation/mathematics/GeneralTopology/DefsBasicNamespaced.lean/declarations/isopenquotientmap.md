# IsOpenQuotientMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95e05b49609940cf29d6d9fa4a930dd722995fb48f6ed7a4d20733a5b8d12fd4",
  "kind": "structure",
  "lexical_name": "IsOpenQuotientMap",
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
  "slug": "isopenquotientmap",
  "source": {
    "blob": "c00a367953a4bb0a7708dcc7af6a8592191706a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:708ee0e519dd5f8ce66df4e84db65002032f798fc0d21f48fa23779efbc7f945",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/DefsBasicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95e05b49609940cf29d6d9fa4a930dd722995fb48f6ed7a4d20733a5b8d12fd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsOpenQuotientMap (f : X → Y) : Prop where
  /-- An open quotient map is surjective. -/
  surjective : Function.Surjective f
  /-- An open quotient map is continuous. -/
  continuous : Continuous f
  /-- An open quotient map is an open map. -/
  isOpenMap : IsOpenMap f

end Defs

/-! ### Notation for non-standard topologies -/

/-- Notation for `IsOpen` with respect to a non-standard topology. -/
scoped[Topology] notation (name := IsOpen_of) "IsOpen[" t "]" => @IsOpen _ t

/-- Notation for `IsClosed` with respect to a non-standard topology. -/
scoped[Topology] notation (name := IsClosed_of) "IsClosed[" t "]" => @IsClosed _ t

/-- Notation for `closure` with respect to a non-standard topology. -/
scoped[Topology] notation (name := closure_of) "closure[" t "]" => @closure _ t

/-- Notation for `Continuous` with respect to a non-standard topologies. -/
scoped[Topology] notation (name := Continuous_of) "Continuous[" t₁ ", " t₂ "]" =>
  @Continuous _ _ t₁ t₂

/-- The property `BaireSpace α` means that the topological space `α` has the Baire property:
any countable intersection of open dense subsets is dense.
Formulated here when the source space is ℕ.
Use `dense_iInter_of_isOpen` which works for any countable index type instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/DefsBasicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00a367953a4bb0a7708dcc7af6a8592191706a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dddff43e71a462a5b982adf37d3cbfe80047e2cf7af661d0458983537dc2d9cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
