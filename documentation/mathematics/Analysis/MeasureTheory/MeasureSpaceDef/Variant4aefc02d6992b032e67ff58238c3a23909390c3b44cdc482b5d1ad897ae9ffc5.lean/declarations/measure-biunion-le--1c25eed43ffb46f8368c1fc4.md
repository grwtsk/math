# measure_biUnion_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4094a465-173e-2cf6-bb40-f0e79352ffd9",
  "kind": "theorem",
  "lexical_name": "measure_biUnion_le",
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
  "slug": "measure-biunion-le--1c25eed43ffb46f8368c1fc4",
  "source": {
    "blob": "c9db1071975b1db5eb00545da8ce2a19f5df1341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 251,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variant4aefc02d6992b032e67ff58238c3a23909390c3b44cdc482b5d1ad897ae9ffc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c25eed43ffb46f8368c1fc4eb8e4b3169378582a8ae8d600a94b25f3db684ea",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpaceDef/Variant4aefc02d6992b032e67ff58238c3a23909390c3b44cdc482b5d1ad897ae9ffc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4094a465-173e-2cf6-bb40-f0e79352ffd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_biUnion_le {s : Set β} (hs : s.Countable) (f : β → Set α) :
    μ (⋃ b ∈ s, f b) ≤ ∑' p : s, μ (f p) := by
  haveI := hs.to_subtype
  rw [biUnion_eq_iUnion]
  apply measure_iUnion_le
#align measure_theory.measure_bUnion_le MeasureTheory.measure_biUnion_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Analysis/MeasureTheory/MeasureSpaceDef/Variant4aefc02d6992b032e67ff58238c3a23909390c3b44cdc482b5d1ad897ae9ffc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variant4aefc02d6992b032e67ff58238c3a23909390c3b44cdc482b5d1ad897ae9ffc5.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9db1071975b1db5eb00545da8ce2a19f5df1341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb55d87c8f98f78bf7de5b3cc8287db926dd4cd3d3a9d95fade3e5016bacb470 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variant4aefc02d6992b032e67ff58238c3a23909390c3b44cdc482b5d1ad897ae9ffc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
