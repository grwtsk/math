# actual_closed_primitive_termwise_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30c884fe-4edc-703c-2aaf-bc17f15a4476",
  "kind": "theorem",
  "lexical_name": "actual_closed_primitive_termwise_upper",
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
  "slug": "actual-closed-primitive-termwise-upper",
  "source": {
    "blob": "0d9215002a8c434ab2a0174941c7b42e2b0934a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 126,
    "path": "GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73e4491f7897c18b392e1a4ca6d4da244f1d455396d3e5adeb4308c1d99f9a3a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TheActualMangoldtPrimitiveAlsoHasALargeTermwiseAbsolutePaymentEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30c884fe-4edc-703c-2aaf-bc17f15a4476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_closed_primitive_termwise_upper {x : ℝ} (hx : 0 ≤ x) :
    |ArithmeticPrimitive.closedPrimitive (fun n ↦ ArithmeticFunction.vonMangoldt n - 1) x| ≤
      absolutePrimitiveMass x := by
  rw [exact_closed_primitive_weight_row]
  have h := Finset.abs_sum_le_sum_abs (s := Finset.Icc 2 ⌊x⌋₊)
    (f := fun n ↦ (ArithmeticFunction.vonMangoldt n - 1) * primitiveWeight x n)
  apply h.trans_eq
  unfold absolutePrimitiveMass
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hn2, hnhi⟩ := Finset.mem_Icc.mp hn
  have hnx := (show (n : ℝ) ≤ (⌊x⌋₊ : ℝ) by exact_mod_cast hnhi).trans (Nat.floor_le hx)
  rw [abs_mul, abs_of_nonneg (visible_primitive_weight_nonnegative (by omega) hnx)]

/-- Uses Mario Carneiro and Joseph Myers' qualified Mathlib numerical exponential bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TheActualMangoldtPrimitiveAlsoHasALargeTermwiseAbsolutePaymentEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9215002a8c434ab2a0174941c7b42e2b0934a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ccb15b7f382c76553e4dfd1e015917117818623eed119d397e69c45c516b2f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
