# antidiagonal_first_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1b186e1-4db8-88fe-ba36-9d037fb2a1cf",
  "kind": "theorem",
  "lexical_name": "antidiagonal_first_factor",
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
  "slug": "antidiagonal-first-factor",
  "source": {
    "blob": "b5ed377db577d72aa845988b0d09b37974651382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant00b7a4dfd49b626465a0f9dd7a085e8438d72ccd1c8452cefe1bbb34805eb9bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15da01d46c1708662a1da5042237cd25f9f2f29e08a585ff27911aae832b77d0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMobiusIntegerTransportNamespacedEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1b186e1-4db8-88fe-ba36-9d037fb2a1cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antidiagonal_first_factor
    (A : ℝ) (d n : ℕ)
    (hn : n ≠ 0) :
    (∑ dk ∈ n.divisorsAntidiagonal,
      if dk.1 = d
      then Real.log dk.2 * closedPrimeWeight A n
      else 0) =
      if d ∣ n ∧ d ≠ 0
      then Real.log (n / d : ℕ) * closedPrimeWeight A n
      else 0 := by
  rw [Nat.sum_divisorsAntidiagonal
    (fun i j =>
      if i = d
      then Real.log j * closedPrimeWeight A n
      else 0)]
  by_cases hmem : d ∈ n.divisors
  · have hdvd : d ∣ n := Nat.dvd_of_mem_divisors hmem
    have hd0 : d ≠ 0 :=
      Nat.ne_zero_of_dvd_ne_zero hn hdvd
    simp only [hdvd, hd0, and_self, if_true]
    rw [Finset.sum_eq_single d]
    · simp
    · intro b hb hbd
      simp [hbd]
    · simp [hmem]
  · have hnot : ¬ (d ∣ n ∧ d ≠ 0) := by
      intro h
      exact hmem ((Nat.mem_divisors).mpr ⟨h.1, hn⟩)
    simp only [hnot, if_false]
    apply Finset.sum_eq_zero
    intro b hb
    have hbd : b ≠ d := by
      intro h
      subst b
      exact hmem hb
    simp [hbd]

/-- For a divisor d in the source Abel window, the antidiagonal integer kernel
is exactly the restricted k-sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateMobiusIntegerTransportNamespacedEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant00b7a4dfd49b626465a0f9dd7a085e8438d72ccd1c8452cefe1bbb34805eb9bc.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5ed377db577d72aa845988b0d09b37974651382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=148f84f81f299c79bb98ace9aebd67ade83d0623c4f3d8fcc40ee7b3142166d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EstimateMobiusIntegerTransport/Variant00b7a4dfd49b626465a0f9dd7a085e8438d72ccd1c8452cefe1bbb34805eb9bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
