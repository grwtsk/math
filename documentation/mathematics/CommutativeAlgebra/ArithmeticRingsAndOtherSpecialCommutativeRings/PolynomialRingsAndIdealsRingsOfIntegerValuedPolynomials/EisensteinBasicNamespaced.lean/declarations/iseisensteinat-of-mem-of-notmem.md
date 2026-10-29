# isEisensteinAt_of_mem_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d72c645f-ba62-db46-66f6-9e61384b2632",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.IsWeaklyEisensteinAt.Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.Polynomial.Monic.isEisensteinAt_of_mem_of_notMem",
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
  "slug": "iseisensteinat-of-mem-of-notmem",
  "source": {
    "blob": "7d860baf8ccc6eeee94762c32c8386f1fe3e230b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 202,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4e16222596d0399654d72d6240f980a25d768324bde940d259eeabdf3a1da09",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d72c645f-ba62-db46-66f6-9e61384b2632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.IsWeaklyEisensteinAt.Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.Polynomial.Monic.isEisensteinAt_of_mem_of_notMem (hf : f.Monic) (h : 𝓟 ≠ ⊤)
    (hmem : ∀ {n}, n < f.natDegree → f.coeff n ∈ 𝓟) (hnotMem : f.coeff 0 ∉ 𝓟 ^ 2) :
    f.IsEisensteinAt 𝓟 :=
  { leading := Polynomial.Monic.leadingCoeff_notMem hf h
    mem := fun hn => hmem hn
    notMem := hnotMem }

@[deprecated (since := "2025-05-23")]
alias _root_.Polynomial.Monic.isEisensteinAt_of_mem_of_not_mem :=
  _root_.GRWTSK.Algebra.CommutativeAlgebra.IsWeaklyEisensteinAt.Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.Polynomial.Monic.isEisensteinAt_of_mem_of_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/EisensteinBasicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d860baf8ccc6eeee94762c32c8386f1fe3e230b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0504f589e056ad510f19b4f1d0336c7178525e0d820b05a3ce39f950d2e8568f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant2f20a1b33f1d7f550c8bf4ca0c8aa72b31d971086900b9f0931f4a28f5a5dc26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
