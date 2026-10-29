# isNonarchimedean_gaussNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d679f18-8503-bc59-bcad-bd2a1ec692de",
  "kind": "theorem",
  "lexical_name": "isNonarchimedean_gaussNorm",
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
  "slug": "isnonarchimedean-gaussnorm",
  "source": {
    "blob": "d3433bc3c4325da129954004b59d7457fd657c66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 178,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b0c1ba9776d11b9110abb13988226cbd74bba7053ab47f5edf461f8c256cda1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d679f18-8503-bc59-bcad-bd2a1ec692de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNonarchimedean_gaussNorm (hna : IsNonarchimedean v) {c : ℝ} (hc : 0 ≤ c) :
    IsNonarchimedean (gaussNorm v c) := by
  intro p q
  rcases eq_or_ne p 0 with hp | _
  · simp [hp]
  rcases eq_or_ne q 0 with hq | _
  · simp [hq]
  rcases eq_or_ne (p + q) 0 with hpq | hpq
  · simp [hpq, hc, gaussNorm_nonneg]
  simp only [gaussNorm, support_nonempty, ne_eq, hpq, not_false_eq_true, ↓reduceDIte,
    Finset.sup'_le_iff]
  intro i _
  calc
  v ((p + q).coeff i) * c ^ i
    ≤ max (v (p.coeff i)) (v (q.coeff i)) * c ^ i := by
    rw [coeff_add]
    gcongr
    exact hna (p.coeff i) (q.coeff i)
  _ = max (v (p.coeff i) * c ^ i) (v (q.coeff i) * c ^ i) := by
    rw [max_mul_of_nonneg _ _ (pow_nonneg hc _)]
  _ ≤ max (gaussNorm v c p) (gaussNorm v c q) := by
    apply max_le_max <;>
    exact le_gaussNorm v _ hc i

open Finset in
/-- If `v` is a nonnegative nonarchimedean multiplicative function with `v 0 = 0` and `c` is
nonnegative, then the Gauss norm is submultiplicative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3433bc3c4325da129954004b59d7457fd657c66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02b2389de7f16bc6a6f5bad3d3e2cd7712232a892defd3ed56d3623d65881212 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
