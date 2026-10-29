# bernstein_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e45a3886-7d5c-a4cb-fb85-17e5b626ef97",
  "kind": "theorem",
  "lexical_name": "bernstein_nonneg",
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
  "slug": "bernstein-nonneg",
  "source": {
    "blob": "6a776bf727e8916d67b87be3734405fd02bcef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 334,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acfbf2778ff195fc83f6ac046ebd4df4cccb11172f4b11372fa2be9fdbbf4c69",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AssociativeRingsAndAlgebras/CoreNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e45a3886-7d5c-a4cb-fb85-17e5b626ef97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernstein_nonneg (n k : ℕ) (t : ℝ) (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    0 ≤ (Nat.choose n k : ℝ) * t ^ k * (1 - t) ^ (n - k) := by
  apply mul_nonneg
  · apply mul_nonneg
    · exact_mod_cast Nat.zero_le (Nat.choose n k)
    · exact pow_nonneg ht0 k
  · exact pow_nonneg (by linarith : (0 : ℝ) ≤ 1 - t) (n - k)

/-! ### Bernstein representation identity

The key identity: for a polynomial Q(t) = Σⱼ qⱼ tʲ of degree n,
with Bernstein coefficients bₖ = Σⱼ≤k C(k,j)/C(n,j) · qⱼ, we have:
  Q(t) = Σₖ bₖ · C(n,k) · tᵏ · (1-t)^(n-k)

The proof uses: tʲ = Σₖ≥ⱼ C(n-j,k-j) · tᵏ · (1-t)^(n-k)
which follows from tʲ · (t + (1-t))^(n-j) = tʲ (binomial theorem).
-/

/-- The monomial tʲ expanded in Bernstein basis.
    tʲ · 1 = tʲ · (t + (1-t))^(n-j)
           = Σₘ C(n-j,m) · t^(m+j) · (1-t)^(n-j-m)
           = Σₖ≥ⱼ C(n-j,k-j) · tᵏ · (1-t)^(n-k)

    The proof follows from the binomial theorem: tʲ · (t + (1-t))^(n-j) = tʲ.
    Expanding the binomial and reindexing m ↦ k=m+j gives the result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/CoreNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a776bf727e8916d67b87be3734405fd02bcef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7348581ea3e85bc83183275d073de994306c9e6c37e915ebeff1b58a76aef6e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
