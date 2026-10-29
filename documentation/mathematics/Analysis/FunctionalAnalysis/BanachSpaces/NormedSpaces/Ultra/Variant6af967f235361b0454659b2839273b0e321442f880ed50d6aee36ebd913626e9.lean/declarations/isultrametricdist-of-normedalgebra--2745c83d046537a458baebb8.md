# IsUltrametricDist.of_normedAlgebra'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a39c2617fb5905af858205751f50b6122b11e642",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eff219f6-a3a5-1bab-d984-8f616df6046b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:808b2bb4-0ff0-8141-8fd0-e98c9432f18f",
  "kind": "theorem",
  "lexical_name": "IsUltrametricDist.of_normedAlgebra'",
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
  "slug": "isultrametricdist-of-normedalgebra--2745c83d046537a458baebb8",
  "source": {
    "blob": "a39c2617fb5905af858205751f50b6122b11e642",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 25,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2745c83d046537a458baebb8b05f2cf460f9a1fb1c4dd726f3bbbef55a0188c0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:808b2bb4-0ff0-8141-8fd0-e98c9432f18f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUltrametricDist.of_normedAlgebra' [SeminormedRing L] [NormOneClass L] [NormedAlgebra K L]
    [h : IsUltrametricDist L] : IsUltrametricDist K :=
  ⟨fun x y z => by
    simpa using h.dist_triangle_max (algebraMap K L x) (algebraMap K L y) (algebraMap K L z)⟩

variable (K) in
/--
Let `K` be a normed field. If a normed division ring `L` is a normed `K`-algebra,
then `L` is ultrametric (i.e. the norm on `L` is nonarchimedean) if `K` is.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a39c2617fb5905af858205751f50b6122b11e642` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a721e8d6ff6626a87c72acf8f45a04045212bc63372db47306b1df7927ca455 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Ultra/Variant6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6af967f235361b0454659b2839273b0e321442f880ed50d6aee36ebd913626e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
