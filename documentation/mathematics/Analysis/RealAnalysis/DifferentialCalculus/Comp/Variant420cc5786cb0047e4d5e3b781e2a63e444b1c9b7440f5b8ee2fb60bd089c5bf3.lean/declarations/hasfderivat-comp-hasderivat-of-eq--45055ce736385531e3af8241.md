# HasFDerivAt.comp_hasDerivAt_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e51ee76-213b-e6f0-4ec8-a2fdef535f23",
  "kind": "theorem",
  "lexical_name": "HasFDerivAt.comp_hasDerivAt_of_eq",
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
  "slug": "hasfderivat-comp-hasderivat-of-eq--45055ce736385531e3af8241",
  "source": {
    "blob": "28f045223838b9630755d3acdd7d0f92839d9ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 388,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant420cc5786cb0047e4d5e3b781e2a63e444b1c9b7440f5b8ee2fb60bd089c5bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45055ce736385531e3af82418de712fe455d97a4a3f43eeeb606e5ab23f90bb6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant420cc5786cb0047e4d5e3b781e2a63e444b1c9b7440f5b8ee2fb60bd089c5bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e51ee76-213b-e6f0-4ec8-a2fdef535f23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivAt.comp_hasDerivAt_of_eq
    (hl : HasFDerivAt l l' y) (hf : HasDerivAt f f' x) (hy : y = f x) :
    HasDerivAt (l ∘ f) (l' f') x := by
  rw [hy] at hl; exact hl.comp_hasDerivAt x hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant420cc5786cb0047e4d5e3b781e2a63e444b1c9b7440f5b8ee2fb60bd089c5bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant420cc5786cb0047e4d5e3b781e2a63e444b1c9b7440f5b8ee2fb60bd089c5bf3.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f045223838b9630755d3acdd7d0f92839d9ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebbb71f4768df9c24a85d944af69d057c8444b27710fa37be3f379836957533c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant420cc5786cb0047e4d5e3b781e2a63e444b1c9b7440f5b8ee2fb60bd089c5bf3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
