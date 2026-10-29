# Finset.exists_eq_pow_of_mul_eq_pow_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ae97acd-a86c-dd1b-e1dd-02d45e8de410",
  "kind": "theorem",
  "lexical_name": "Finset.exists_eq_pow_of_mul_eq_pow_of_coprime",
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
  "slug": "finset-exists-eq-pow-of-mul-eq-pow-of-coprime",
  "source": {
    "blob": "09d1e8368230d25e20c3ee040463e27f381ad896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8c8888293b11c6782a69d2f4889d202273adcf0c59fd1a830e03e1fa09e5d4a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/IntegralDomainNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ae97acd-a86c-dd1b-e1dd-02d45e8de410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.exists_eq_pow_of_mul_eq_pow_of_coprime {ι R : Type*} [CommSemiring R]
    [GCDMonoid R] [Subsingleton Rˣ] {n : ℕ} {c : R} {s : Finset ι} {f : ι → R}
    (h : ∀ i ∈ s, ∀ j ∈ s, i ≠ j → IsCoprime (f i) (f j))
    (hprod : ∏ i ∈ s, f i = c ^ n) : ∀ i ∈ s, ∃ d : R, f i = d ^ n := by
  classical
    intro i hi
    rw [← insert_erase hi, prod_insert (notMem_erase i s)] at hprod
    refine
      exists_eq_pow_of_mul_eq_pow_of_coprime
        (IsCoprime.prod_right fun j hj => h i hi j (erase_subset i s hj) fun hij => ?_) hprod
    rw [hij] at hj
    exact (s.notMem_erase _) hj

end CancelMonoidWithZero

variable {R : Type*} {G : Type*}

section Ring

/-- Every finite domain is a division ring. More generally, they are fields; this can be found in
`Mathlib/RingTheory/LittleWedderburn.lean`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/IntegralDomainNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09d1e8368230d25e20c3ee040463e27f381ad896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1c64485f1db328c8844e66ea2212524251786155430ac7b25e14d7391d2f29b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant3ede48ae7813588d396327c65a10f46d6ab724d83c5a188db12f54bd22663727.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
