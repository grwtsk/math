# MDifferentiableWithinAt.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:278b142a-bcf5-d61a-117e-903ba05647c9",
  "kind": "theorem",
  "lexical_name": "MDifferentiableWithinAt.smul",
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
  "slug": "mdifferentiablewithinat-smul",
  "source": {
    "blob": "09d0e278e238af3a1b9ccdbfc3df6d90fbad9c49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 285,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20db81bf961effd542e4495380864e24ae88c9c4f78d08b37e1a0a0a62ceb505",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/DifferentialGeometry/MFDerivNormedSpaceNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:278b142a-bcf5-d61a-117e-903ba05647c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MDifferentiableWithinAt.smul {f : M → 𝕜} {g : M → V}
    (hf : MDifferentiableWithinAt I 𝓘(𝕜) f s x) (hg : MDifferentiableWithinAt I 𝓘(𝕜, V) g s x) :
    MDifferentiableWithinAt I 𝓘(𝕜, V) (fun p => f p • g p) s x :=
  ((contMDiff_smul.of_le le_top).mdifferentiable le_rfl _).comp_mdifferentiableWithinAt x
    (hf.prodMk hg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/DifferentialGeometry/MFDerivNormedSpaceNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d0e278e238af3a1b9ccdbfc3df6d90fbad9c49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f26c70183ed9360958f1556d07c98e3be57faaa15c3e1e10c3d9710d146b1a1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
