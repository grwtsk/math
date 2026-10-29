# degreeBudget_strict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:755818f5-86ea-d00d-5a1b-83ba35b14606",
  "kind": "theorem",
  "lexical_name": "degreeBudget_strict",
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
  "slug": "degreebudget-strict",
  "source": {
    "blob": "3fe71f961a52227a9a9b5740756604923df065d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88217d49f1db0fb8e1f010e7302009983634cf88bdc0d6cc9be27ea9ea05fbd8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConcreteFourPrimeQuotientMapAndExactInterpolationDegreeBudgetEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:755818f5-86ea-d00d-5a1b-83ba35b14606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degreeBudget_strict {N : ℕ} (hN : 1 ≤ N) :
    (4 * (N : ℤ) - 3) ^ 4 <
      ∏ _j : Fin 3, (degreeBudget N - 3 * ((N : ℤ) - 1) + 1) := by
  rw [degreeBudget_exact]
  have hn : (1 : ℤ) ≤ N := by exact_mod_cast hN
  have hs : 1 ≤ (4 * (N : ℤ) - 3) ^ 2 := by nlinarith
  have hsq : (4 * (N : ℤ) - 3) ^ 4 = ((4 * (N : ℤ) - 3) ^ 2) ^ 2 := by ring
  rw [hsq]
  nlinarith [sq_nonneg ((4 * (N : ℤ) - 3) ^ 2 - 1)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConcreteFourPrimeQuotientMapAndExactInterpolationDegreeBudgetEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fe71f961a52227a9a9b5740756604923df065d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b504a3acd2633d32f90136c0a64c9c884b778b6dcebc8e1de7f7b05e25e7d88e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
