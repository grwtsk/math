# fractionalIdeal_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d18244a7-9ae0-152d-1635-8558113f4b0f",
  "kind": "theorem",
  "lexical_name": "fractionalIdeal_rank",
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
  "slug": "fractionalideal-rank--6319213aad138724be7c40f3",
  "source": {
    "blob": "640c7754ff32eedb8c484ca073925917ff615676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/NumberTheory/FractionalIdeal/Variant14a37f81ecb3c7119014721c6d93d472d76407c9027fd9e596f4a0dfcb968148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6319213aad138724be7c40f3b71e4a7a2401b3c9e41cde86f1a571e0fde144da",
  "verification": {
    "reference": "docs/verification/NumberTheory/FractionalIdeal/Variant14a37f81ecb3c7119014721c6d93d472d76407c9027fd9e596f4a0dfcb968148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d18244a7-9ae0-152d-1635-8558113f4b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalIdeal_rank (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    finrank ℤ I = finrank ℤ (𝓞 K) := by
  rw [finrank_eq_card_chooseBasisIndex, RingOfIntegers.rank,
    finrank_eq_card_basis (basisOfFractionalIdeal K I)]

end Basis

section Norm

open Module

/-- The absolute value of the determinant of the base change from `integralBasis` to
`basisOfFractionalIdeal I` is equal to the norm of `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/FractionalIdeal/Variant14a37f81ecb3c7119014721c6d93d472d76407c9027fd9e596f4a0dfcb968148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FractionalIdeal/Variant14a37f81ecb3c7119014721c6d93d472d76407c9027fd9e596f4a0dfcb968148.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `640c7754ff32eedb8c484ca073925917ff615676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eeac6796ab734b6e70680b193110166962788cd9b8b5782e3e4f8461fdf87c64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/FractionalIdeal/Variant14a37f81ecb3c7119014721c6d93d472d76407c9027fd9e596f4a0dfcb968148.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
