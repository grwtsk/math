# cutoffOneDiagonal_sub_prime_le_three_halves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3be5760a-13ef-b337-3528-9698e943b3ec",
  "kind": "theorem",
  "lexical_name": "cutoffOneDiagonal_sub_prime_le_three_halves",
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
  "slug": "cutoffonediagonal-sub-prime-le-three-halves",
  "source": {
    "blob": "7418c44fcb72db71f47ab634d9cb6e9fa122dbd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant895ec12c1e0c1569a87fc5c7223fbf78bc5ddf14f03c5c27b2d7a4bb02ea80db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c70ecc6d709ee32ac0e48f128942f43bd964b31130e6605ce320be15cfd0d55a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceCutoffOneSharpTailEdition3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3be5760a-13ef-b337-3528-9698e943b3ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffOneDiagonal_sub_prime_le_three_halves (A : ℝ) (hA : 1 ≤ A) :
    |cutoffOneDiagonal A - cutoffOnePrimeDiagonal A| ≤ 3 / 2 :=
  (cutoffOneDiagonal_sub_prime_abs_le A hA).trans
    (weighted_difference_le_three_halves (sourceKernelCutoff A))

/-- Both Abel boundary errors vanish: primeLogError(0)=0 and C_A(2A)=0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceCutoffOneSharpTailEdition3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant895ec12c1e0c1569a87fc5c7223fbf78bc5ddf14f03c5c27b2d7a4bb02ea80db.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7418c44fcb72db71f47ab634d9cb6e9fa122dbd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4725e3e6819c77d8cc742e2202d8e686d75b26dbcc132aa9938353a0d168f44b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant895ec12c1e0c1569a87fc5c7223fbf78bc5ddf14f03c5c27b2d7a4bb02ea80db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
