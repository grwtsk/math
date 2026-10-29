# rationalCauSeqPkg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d22bafd8d6e2c08be4fbf024b986dc69ff636f05e7109bef102540f92a44c82",
  "kind": "def",
  "lexical_name": "rationalCauSeqPkg",
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
  "slug": "rationalcauseqpkg",
  "source": {
    "blob": "24325b65c50b40b856ef3f846b1f64793f9c0f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15806c521a37e5f7a26d3a8ba8c8caa9ba55b9d058676f3d17cf542c283f2cc1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/CompareRealsNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d22bafd8d6e2c08be4fbf024b986dc69ff636f05e7109bef102540f92a44c82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rationalCauSeqPkg : @AbstractCompletion ℚ <| (@AbsoluteValue.abs ℚ _).uniformSpace :=
  @AbstractCompletion.mk
    (space := ℝ)
    (coe := ((↑) : ℚ → ℝ))
    (uniformStruct := by infer_instance)
    (complete := by infer_instance)
    (separation := by infer_instance)
    (isUniformInducing := by
      rw [Rat.uniformSpace_eq]
      exact Rat.isUniformEmbedding_coe_real.isUniformInducing)
    (dense := Rat.isDenseEmbedding_coe_real.dense)

namespace CompareReals

/-- Type wrapper around ℚ to make sure the absolute value uniform space instance is picked up
instead of the metric space one. We proved in `Rat.uniformSpace_eq` that they are equal,
but they are not definitionaly equal, so it would confuse the type class system (and probably
also human readers). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/CompareRealsNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24325b65c50b40b856ef3f846b1f64793f9c0f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=343abe60cf3412be9fa2aa1675c9f05fa33708a426a2f73ef9185f50d77c3a87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variant1047f88390087d5de8a6a777281e5de5420ee8eff520dd4a14a6dc3acbc9aae1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
