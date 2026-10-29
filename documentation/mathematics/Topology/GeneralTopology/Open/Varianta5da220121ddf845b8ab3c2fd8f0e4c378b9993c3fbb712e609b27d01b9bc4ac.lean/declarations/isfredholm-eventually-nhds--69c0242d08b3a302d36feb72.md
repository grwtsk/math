# IsFredholm.eventually_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4dd38dda-3fbd-386b-2078-a08cdd4bf689",
  "kind": "theorem",
  "lexical_name": "IsFredholm.eventually_nhds",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "isfredholm-eventually-nhds--69c0242d08b3a302d36feb72",
  "source": {
    "blob": "e76b51f789144339023e96a9c3ec9fa801064c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Open/Varianta5da220121ddf845b8ab3c2fd8f0e4c378b9993c3fbb712e609b27d01b9bc4ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69c0242d08b3a302d36feb72f73e47fef852d580310c8199a9036c079a78ab1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Open/Varianta5da220121ddf845b8ab3c2fd8f0e4c378b9993c3fbb712e609b27d01b9bc4ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dd38dda-3fbd-386b-2078-a08cdd4bf689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsFredholm.eventually_nhds [CompleteSpace 𝕜]
    {T₀ : E →L[𝕜] F} (hT₀ : T₀.IsFredholm) : ∀ᶠ T in 𝓝 T₀, T.IsFredholm := by
  obtain ⟨pkg⟩ := hT₀.nonempty_fredholmPackage
  exact pkg.eventually_nhds_isFredholm_and_index_eq.mono fun T ⟨T_fred, _⟩ ↦ T_fred

/-- The set of Fredholm operators between two Banach spaces is open (for the operator norm)
in the space of continuous linear maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/Open/Varianta5da220121ddf845b8ab3c2fd8f0e4c378b9993c3fbb712e609b27d01b9bc4ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Open/Varianta5da220121ddf845b8ab3c2fd8f0e4c378b9993c3fbb712e609b27d01b9bc4ac.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e76b51f789144339023e96a9c3ec9fa801064c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9d5dc208792b07c827748490a0325776eb0f22be2b562efadbbc0d93c9e5a69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Open/Varianta5da220121ddf845b8ab3c2fd8f0e4c378b9993c3fbb712e609b27d01b9bc4ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
