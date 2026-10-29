# earlyPrimeBlock_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:716543be-910a-e8c6-9dba-3107358d6834",
  "kind": "theorem",
  "lexical_name": "earlyPrimeBlock_le_mass",
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
  "slug": "earlyprimeblock-le-mass",
  "source": {
    "blob": "05f6e406c262b178f32a5d8a947d2ab3f851ad81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variant446931ae468c6693c3fa0d0639cfd2467ad25f517567671e3bf0cce23e965e6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d9a0f5ffbd25df2ec681a896b6fc64aa8711df29e8dcab1cf3e41071c465e67",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:716543be-910a-e8c6-9dba-3107358d6834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem earlyPrimeBlock_le_mass {A : ℝ} (hA : 160 ≤ A) :
    earlyPrimeBlock A ≤ -(7 / 16 : ℝ)*Real.exp (A / 160)*
      primeLogWindow (A / 80) (A / 40) (fun _ => 1) := by
  classical
  unfold earlyPrimeBlock
  rw [primeLogWindow_eq_filter _ _ (by linarith),
    primeLogWindow_eq_filter _ _ (by linarith), Finset.mul_sum]
  apply Finset.sum_le_sum
  intro p hp
  obtain ⟨hI, hlo⟩ := Finset.mem_filter.mp hp
  have hbounds := primeLogInventory_log_bounds (A / 40) p hI
  have hn : 0 ≤ Real.log (p : ℝ) / (p : ℝ) := by
    have hprime := (Finset.mem_filter.mp hI).2
    exact div_nonneg hbounds.1 (by exact_mod_cast hprime.pos.le)
  have h := mul_le_mul_of_nonneg_left
    (earlyTailTest_le hA hlo.le hbounds.2) hn
  simpa only [mul_one, one_mul, mul_comm, mul_left_comm, mul_assoc] using h

/-- The actual prime window has linear mass for a genuine bounded prefix-error witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variant446931ae468c6693c3fa0d0639cfd2467ad25f517567671e3bf0cce23e965e6a.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05f6e406c262b178f32a5d8a947d2ab3f851ad81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f33f3af2341256ca0baeeb9065c5ae52b2dd9a6d508be9d2090a41d5d0affc78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variant446931ae468c6693c3fa0d0639cfd2467ad25f517567671e3bf0cce23e965e6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
