# differentiableAt_riemannZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f27f06dc-38bc-d0f5-e8be-240e8defaf11",
  "kind": "theorem",
  "lexical_name": "differentiableAt_riemannZeta",
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
  "slug": "differentiableat-riemannzeta--b29687043164417a2b0a8b5a",
  "source": {
    "blob": "1373554596e115d890861eb6abf16a6bcc05dcb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29687043164417a2b0a8b5af452215663bff563c1f93bbf874e78df47e2dc8f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f27f06dc-38bc-d0f5-e8be-240e8defaf11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableAt_riemannZeta {s : ℂ} (hs' : s ≠ 1) : DifferentiableAt ℂ riemannZeta s :=
  differentiableAt_hurwitzZetaEven _ hs'

/-- We have `ζ(0) = -1 / 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1373554596e115d890861eb6abf16a6bcc05dcb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37e9ee1ee2e316d68d49a6f67ab96fdfe8f1e142386afa3a3b08bd08e5271aaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
