# HasDerivAt.continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b35e3cdb-94d1-f504-2ebf-1fb839a6775d",
  "kind": "theorem",
  "lexical_name": "HasDerivAt.continuousAt",
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
  "slug": "hasderivat-continuousat--d446003f750f412bca87e0bf",
  "source": {
    "blob": "c744a4d730cb38fa3e7c1c8fa2cd7ac8bfb0c673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 806,
    "line": 804,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant35242275a5bb15181569944f0d35fdf63155da2a3cc57ed1ad1ba3c7adc0e021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d446003f750f412bca87e0bfb77fb30783136a61b958768e66d54933f8450849",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant35242275a5bb15181569944f0d35fdf63155da2a3cc57ed1ad1ba3c7adc0e021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b35e3cdb-94d1-f504-2ebf-1fb839a6775d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 804–806.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasDerivAt.continuousAt (h : HasDerivAt f f' x) : ContinuousAt f x :=
  HasDerivAtFilter.tendsto_nhds le_rfl h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant35242275a5bb15181569944f0d35fdf63155da2a3cc57ed1ad1ba3c7adc0e021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant35242275a5bb15181569944f0d35fdf63155da2a3cc57ed1ad1ba3c7adc0e021.lean#L804).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c744a4d730cb38fa3e7c1c8fa2cd7ac8bfb0c673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ed5f5d749d2d1d3fe4cef3f2f32c4de85f90b4dc52bd9243c8cefb5c162dc59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant35242275a5bb15181569944f0d35fdf63155da2a3cc57ed1ad1ba3c7adc0e021.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
