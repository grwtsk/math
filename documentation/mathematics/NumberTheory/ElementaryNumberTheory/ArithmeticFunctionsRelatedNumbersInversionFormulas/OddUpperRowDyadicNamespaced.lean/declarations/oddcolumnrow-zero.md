# oddColumnRow_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d048d7a-6e8b-9e39-3f1a-f76a3a9f6c14",
  "kind": "theorem",
  "lexical_name": "oddColumnRow_zero",
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
  "slug": "oddcolumnrow-zero",
  "source": {
    "blob": "8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 25,
    "path": "GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:106146e35ba9196eccae8ecf7718fbe8a38582403602cca190c2995d6426edfe",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d048d7a-6e8b-9e39-3f1a-f76a3a9f6c14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddColumnRow_zero (A : ℝ) (i : ℕ) (hi : 1 ≤ i)
    (hcut : Real.exp (2*A) ≤ 2*(i:ℝ)) : oddColumnRow A i = 0 := by
  unfold oddColumnRow
  apply sum_eq_zero
  intro j hj
  have hj1 := (mem_Icc.mp (mem_filter.mp hj).1).1
  rw [SourceUpperSupport.thetaKernel_zero_of_two_mul_ge A (i*j)
    (Nat.mul_pos hi hj1) ?_, mul_zero]
  have hmul : i ≤ i*j := Nat.le_mul_of_pos_right i hj1
  have hr : (i:ℝ) ≤ (i*j:ℕ) := by exact_mod_cast hmul
  linarith

/-- Odd half-cutoff padding is exact for an upper row; every added complete kernel is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=439e77d0b58d080cad2932036c58a9b57f17e2d0e836f53baf3d6491a323c52d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
