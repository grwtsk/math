# IsIntegral.inv_mem_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf6dac3b-20e5-164d-4185-ab511e7ecd7d",
  "kind": "theorem",
  "lexical_name": "IsIntegral.inv_mem_adjoin",
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
  "slug": "isintegral-inv-mem-adjoin",
  "source": {
    "blob": "4a4aef79d57404a0c5c9515c2deb2032e1b775c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/Algebra/Basic/Variantcb495bf34b71c14b8caa31a46252db535975093e60dbcf248cabe104e69e3a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afbced539dc87be3dbe11d0e82178916223fb277ec710db04214c9bbdd5bd18e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/IsIntegralClosureBasicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf6dac3b-20e5-164d-4185-ab511e7ecd7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegral.inv_mem_adjoin (int : IsIntegral R x) : x⁻¹ ∈ adjoin R {x} := by
  obtain rfl | h0 := eq_or_ne x 0
  · rw [inv_zero]; exact Subalgebra.zero_mem _
  have : FiniteDimensional R (adjoin R {x}) := ⟨(Submodule.fg_top _).mpr int.fg_adjoin_singleton⟩
  obtain ⟨⟨y, hy⟩, h1⟩ := FiniteDimensional.exists_mul_eq_one R
    (K := adjoin R {x}) (x := ⟨x, subset_adjoin rfl⟩) (mt Subtype.ext_iff.mp h0)
  rwa [← mul_left_cancel₀ h0 ((Subtype.ext_iff.mp h1).trans (mul_inv_cancel₀ h0).symm)]

/-- The inverse of an integral element in a subalgebra of a division ring over a field
  also lies in that subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/IsIntegralClosureBasicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantcb495bf34b71c14b8caa31a46252db535975093e60dbcf248cabe104e69e3a22.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a4aef79d57404a0c5c9515c2deb2032e1b775c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcb91f5b204b2cf3b299df55aa17cd974659e0e4cba7231995d8e57960f5c98b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variantcb495bf34b71c14b8caa31a46252db535975093e60dbcf248cabe104e69e3a22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
