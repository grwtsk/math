# Left.mul_eq_mul_iff_eq_and_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f933e9-d9f1-3944-5842-830b504a00fe",
  "kind": "theorem",
  "lexical_name": "Left.mul_eq_mul_iff_eq_and_eq",
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
  "slug": "left-mul-eq-mul-iff-eq-and-eq",
  "source": {
    "blob": "93c5dbcb8e9006c93f13e932c2ae88af47ef9f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1262,
    "line": 1247,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f58e9687fbcbbb5f939291ffa2798567992113ad3a7c08c83f67fc2beae9bc07",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidLemmasNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f933e9-d9f1-3944-5842-830b504a00fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1247–1262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Left.mul_eq_mul_iff_eq_and_eq [CovariantClass α α (· * ·) (· < ·)]
    [CovariantClass α α (swap (· * ·)) (· ≤ ·)] [ContravariantClass α α (· * ·) (· ≤ ·)]
    [ContravariantClass α α (swap (· * ·)) (· ≤ ·)] {a b c d : α} (hac : a ≤ c) (hbd : b ≤ d) :
    a * b = c * d ↔ a = c ∧ b = d := by
  refine' ⟨fun h => _, fun h => congr_arg₂ (· * ·) h.1 h.2⟩
  rcases hac.eq_or_lt with (rfl | hac)
  · exact ⟨rfl, mul_left_cancel'' h⟩

  rcases eq_or_lt_of_le hbd with (rfl | hbd)
  · exact ⟨mul_right_cancel'' h, rfl⟩

  exact ((Left.mul_lt_mul hac hbd).ne h).elim
#align left.mul_eq_mul_iff_eq_and_eq Left.mul_eq_mul_iff_eq_and_eq
#align left.add_eq_add_iff_eq_and_eq Left.add_eq_add_iff_eq_and_eq

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidLemmasNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean#L1247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c5dbcb8e9006c93f13e932c2ae88af47ef9f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd5ae2d75268baa7de854b548d526e0c423032adbc70662bb3ccb319195b2b68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
