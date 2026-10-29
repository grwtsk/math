# higherPrimePower_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bbe996d14c3cd85e6f147b8f3482ca24a8d5d01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4de012f-d3d3-0f74-c54d-4b8772b4ddb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:034d43f0-c718-b4b2-ca24-d89f1733d0e7",
  "kind": "theorem",
  "lexical_name": "higherPrimePower_abs_le",
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
  "slug": "higherprimepower-abs-le",
  "source": {
    "blob": "4bbe996d14c3cd85e6f147b8f3482ca24a8d5d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0d737e570a391e21ddc3a631560a48584b78fd8cf4de9b8372d6d3b459f7726",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:034d43f0-c718-b4b2-ca24-d89f1733d0e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePower_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - primeFirstMoment A| ≤ A + Real.log 4 + 16 := by
  have he : mertensResidual A - primeFirstMoment A = evenPowerMoment A + oddHigherMoment A := by
    rw [mertensResidual_eq_prime_power_sectors A hA]
    ring
  rw [he]
  calc
    _ ≤ |evenPowerMoment A| + |oddHigherMoment A| := abs_add_le _ _
    _ ≤ (A + Real.log 4 + 4) + 12 :=
      add_le_add (evenPowerMoment_abs_le A hA) (oddHigherMoment_abs_le A hA)
    _ = _ := by ring

/-- The composite sector's exact normalized linear main term has a uniform error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetryResultsAlternative2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bbe996d14c3cd85e6f147b8f3482ca24a8d5d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e763f6362c2ba8eeff9a0245dc40b945a822d4a2fbc154af7fa66758c3fa1a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/SourceCorpus/FormalResearch/Objects/16/1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean","GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant1672681ca5d955441dac71676e9d4fdc5b4421a2be90b7f6032119a92152f6a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
