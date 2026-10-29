# first_prime_block_weight_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de950d01-1257-5dac-68db-49fcbe69aa33",
  "kind": "theorem",
  "lexical_name": "first_prime_block_weight_pos",
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
  "slug": "first-prime-block-weight-pos--f5ac147e40eb527593d6bcd5",
  "source": {
    "blob": "8709e431bbb9fc8e6d865cb8e1aeda4e88ccc07a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5ac147e40eb527593d6bcd5d953d6d075b1f84051adb4039f67165b2bd28f2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de950d01-1257-5dac-68db-49fcbe69aa33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_prime_block_weight_pos : (0 : ℝ) < 1 - 1 / Real.sqrt 2 := by
  have hp : 0 < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hs : 1 < Real.sqrt 2 := by
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
  have hi : 1 / Real.sqrt 2 < 1 := (div_lt_one hp).2 hs
  linarith

/-- No earlier logarithmic scale has crossed zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8709e431bbb9fc8e6d865cb8e1aeda4e88ccc07a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be59a2706839f113e95f6c9729df0f5f8414e2c8a6fbcd5f49fad3dbab7c8557 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf42390e52f10602cc541a20a0a0d5ed7708ae9d2ce974ef04fdc87fbb1fa18bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
