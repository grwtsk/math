# exists_notMem_dvd_algebraMap_of_primesOver_eq_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af107dbb-59b5-ffdf-fbfa-794bdf8386d4",
  "kind": "lemma",
  "lexical_name": "exists_notMem_dvd_algebraMap_of_primesOver_eq_singleton",
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
  "slug": "exists-notmem-dvd-algebramap-of-primesover-eq-singleton",
  "source": {
    "blob": "9c5efd24c06b66490ab5fe0925e39f8795ebcd84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 406,
    "path": "GRWTSK/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:578979d2b53034f1929207055aa005df6a1349b756b3ec0918e9cea470eeea4e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/GoingUpNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af107dbb-59b5-ffdf-fbfa-794bdf8386d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_notMem_dvd_algebraMap_of_primesOver_eq_singleton
    {p : Ideal R} [p.IsPrime] {q : Ideal S} [q.IsPrime] (hq : p.primesOver S = {q})
    [Algebra.IsIntegral R S] (x : S) (hx : x ∉ q) : ∃ r ∉ p, x ∣ algebraMap _ _ r := by
  simp only [dvd_def, eq_comm, mul_comm x]
  by_contra!
  obtain ⟨Q, hQ, hxQ, hQp⟩ := Ideal.exists_le_prime_disjoint (.span {x})
    (Algebra.algebraMapSubmonoid _ p.primeCompl)
    (by simpa [Set.disjoint_iff_forall_ne, Ideal.mem_span_singleton',
      Algebra.algebraMapSubmonoid, @forall_comm S])
  have hQp' : Q.under _ ≤ p := by
    intro x hxQ
    by_contra hxp
    exact Set.subset_compl_iff_disjoint_right.mpr hQp hxQ ⟨x, hxp, rfl⟩
  obtain ⟨Q', hQ'Q, hQ', hQ'p⟩ := Ideal.exists_ideal_over_prime_of_isIntegral_of_isPrime _ _ hQp'
  obtain rfl : Q' = q := hq.le ⟨hQ', ⟨hQ'p.symm⟩⟩
  exact hx (hQ'Q (hxQ (Ideal.mem_span_singleton_self _)))

end IsDomain

section IsIntegral

variable {A : Type*} [CommRing A] {B : Type*} [CommRing B] [Algebra A B] [Algebra.IsIntegral A B]
  (P : Ideal B) (p : Ideal A) [P.LiesOver p]

variable (A) in
/-- If `B` is an integral `A`-algebra, `P` is a maximal ideal of `B`, then the pull back of
  `P` is also a maximal ideal of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/GoingUpNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5efd24c06b66490ab5fe0925e39f8795ebcd84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1574db3f737a0a81d81a3289ba3053d226999bcaad95835d6e984ac74990ec8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GoingUp/Variant9c0c13a1bd9990bffcac203ca4376baef8e58ae747e6c4d143bfa41ddb5e6626.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
