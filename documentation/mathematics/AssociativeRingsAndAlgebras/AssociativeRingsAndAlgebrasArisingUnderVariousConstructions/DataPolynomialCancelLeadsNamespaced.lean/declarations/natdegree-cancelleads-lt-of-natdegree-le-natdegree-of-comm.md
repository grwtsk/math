# natDegree_cancelLeads_lt_of_natDegree_le_natDegree_of_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:368d2e8b-ca09-2088-ebb4-e455f65bc518",
  "kind": "theorem",
  "lexical_name": "natDegree_cancelLeads_lt_of_natDegree_le_natDegree_of_comm",
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
  "slug": "natdegree-cancelleads-lt-of-natdegree-le-natdegree-of-comm",
  "source": {
    "blob": "247adb51db77fca22bdb17582a9d9e8a95d0d5cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 59,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec076e9f997cf6bb6fdf53e44f42531776b6cae772be97fde3c036bc129db87c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialCancelLeadsNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:368d2e8b-ca09-2088-ebb4-e455f65bc518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_cancelLeads_lt_of_natDegree_le_natDegree_of_comm
    (comm : p.leadingCoeff * q.leadingCoeff = q.leadingCoeff * p.leadingCoeff)
    (h : p.natDegree ≤ q.natDegree) (hq : 0 < q.natDegree) :
    (p.cancelLeads q).natDegree < q.natDegree := by
  by_cases hp : p = 0
  · convert hq
    simp [hp, cancelLeads]
  rw [cancelLeads, sub_eq_add_neg, tsub_eq_zero_iff_le.mpr h, pow_zero, mul_one]
  by_cases h0 :
    C p.leadingCoeff * q + -(C q.leadingCoeff * X ^ (q.natDegree - p.natDegree) * p) = 0
  · exact (le_of_eq (by simp only [h0, natDegree_zero])).trans_lt hq
  apply lt_of_le_of_ne
  · -- porting note: was compute_degree_le; repeat' rwa [Nat.sub_add_cancel]
    rw [natDegree_add_le_iff_left]
    · apply natDegree_C_mul_le
    refine (natDegree_neg (C q.leadingCoeff * X ^ (q.natDegree - p.natDegree) * p)).le.trans ?_
    exact natDegree_mul_le.trans <| Nat.add_le_of_le_sub h <| natDegree_C_mul_X_pow_le _ _
  · contrapose! h0
    rw [← leadingCoeff_eq_zero, leadingCoeff, h0, mul_assoc, X_pow_mul, ← tsub_add_cancel_of_le h,
      add_comm _ p.natDegree]
    simp only [coeff_mul_X_pow, coeff_neg, coeff_C_mul, add_tsub_cancel_left, coeff_add]
    rw [add_comm p.natDegree, tsub_add_cancel_of_le h, ← leadingCoeff, ← leadingCoeff, comm,
      add_right_neg]
#align polynomial.nat_degree_cancel_leads_lt_of_nat_degree_le_nat_degree_of_comm Polynomial.natDegree_cancelLeads_lt_of_natDegree_le_natDegree_of_comm

end Ring

section CommRing

variable [CommRing R] {p q : R[X]}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialCancelLeadsNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `247adb51db77fca22bdb17582a9d9e8a95d0d5cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7e2243016d672ffe28dcdb3f5cdb1b421da648fecae27ae8b0f76520f0a7982 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/CancelLeads/Variant81fd12fdc4fee7a25a3842c14f53d522759615c72d1df24aae84601bb27b2302.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
