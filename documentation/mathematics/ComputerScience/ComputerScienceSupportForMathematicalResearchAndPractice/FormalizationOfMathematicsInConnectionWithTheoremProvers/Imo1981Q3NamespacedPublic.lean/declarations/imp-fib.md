# imp_fib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fce269fb-d89a-3d29-26be-551ba35999d5",
  "kind": "theorem",
  "lexical_name": "imp_fib",
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
  "slug": "imp-fib",
  "source": {
    "blob": "c9acd421eefcac3b5bfed9d3efb320a6db91b4ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantbce0bc121cf3cafa7480c5965da32b7a1949cb9bf64138d1b9d68b9aedcabef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ed7854316c9e3799cccdb878ae1c6b9cb4cf082e2eff74612dc6b523de588cc",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fce269fb-d89a-3d29-26be-551ba35999d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imp_fib {n : ℕ} (m : ℕ) (h : NatPredicate N m n) :
    ∃ k : ℕ, m = fib k ∧ n = fib (k + 1) := by
  induction n using Nat.strong_induction_on generalizing m with | h n ih => ?_
  have h3 : m ≤ n := h.m_le_n
  obtain (rfl : 1 = n) | (h4 : 1 < n) := (succ_le_iff.mpr h.n_pos).eq_or_lt
  · use 1
    have h5 : 1 ≤ m := succ_le_iff.mpr h.m_pos
    simpa using h3.antisymm h5
  · obtain (rfl : m = n) | (h6 : m < n) := h3.eq_or_lt
    · exact absurd h.eq_imp_1 (Nat.ne_of_gt h4)
    · have h7 : NatPredicate N (n - m) m := h.reduction h4
      obtain ⟨k : ℕ, hnm : n - m = fib k, rfl : m = fib (k + 1)⟩ := ih m h6 (n - m) h7
      use k + 1, rfl
      rw [fib_add_two, ← hnm, tsub_add_cancel_of_le h3]

end NatPredicate

/-
Next, we prove that if `N < fib K + fib (K+1)`, then the largest `m` and `n`
satisfying `NatPredicate m n N` are `fib K` and `fib (K+1)`, respectively.
-/
variable {K : ℕ} (HK : N < fib K + fib (K + 1)) {N}

include HK in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Imo1981Q3NamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantbce0bc121cf3cafa7480c5965da32b7a1949cb9bf64138d1b9d68b9aedcabef4.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9acd421eefcac3b5bfed9d3efb320a6db91b4ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6dfbc054594d48c75ef84800b2bdf54793ebaabb7b715b6cb8e28c07cde2716 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variantbce0bc121cf3cafa7480c5965da32b7a1949cb9bf64138d1b9d68b9aedcabef4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
