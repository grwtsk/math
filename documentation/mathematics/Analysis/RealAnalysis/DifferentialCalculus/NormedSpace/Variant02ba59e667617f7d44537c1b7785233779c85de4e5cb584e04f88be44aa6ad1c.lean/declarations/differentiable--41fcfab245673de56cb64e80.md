# differentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:451ff6f6-a5b6-422f-3f8b-bb098d19806a",
  "kind": "theorem",
  "lexical_name": "differentiable",
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
  "slug": "differentiable--41fcfab245673de56cb64e80",
  "source": {
    "blob": "6d4332bba81ee39d7882fd85695309f3cc944722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41fcfab245673de56cb64e800322aae91dc5543d4f9493ca615981ee0a6c6739",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:451ff6f6-a5b6-422f-3f8b-bb098d19806a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiable {f : X → Y} (h : Conformal f) : Differentiable ℝ f := fun x =>
  (h x).differentiableAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4332bba81ee39d7882fd85695309f3cc944722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=859a395602e99e370ab17620bb4e396590266b1a3b3d87d8a22b533c2a177444 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant02ba59e667617f7d44537c1b7785233779c85de4e5cb584e04f88be44aa6ad1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
