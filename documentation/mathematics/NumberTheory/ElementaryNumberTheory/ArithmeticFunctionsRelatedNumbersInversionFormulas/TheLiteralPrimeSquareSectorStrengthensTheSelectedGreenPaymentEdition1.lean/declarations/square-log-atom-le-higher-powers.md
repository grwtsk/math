# square_log_atom_le_higher_powers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba9a8989-6f80-7bd0-e625-121281185e85",
  "kind": "theorem",
  "lexical_name": "square_log_atom_le_higher_powers",
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
  "slug": "square-log-atom-le-higher-powers",
  "source": {
    "blob": "7ac3e4f2b5e54c5405d674efff6614b50aa8e405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareGreen/Variant3dfec50355aaece3eab013558e109d9af6153b14e1ddd24fad766f79edb2d006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65e72914f43d430a3fa417b6e83b12402dd572b344effb6980a96238c23b35dc",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TheLiteralPrimeSquareSectorStrengthensTheSelectedGreenPaymentEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba9a8989-6f80-7bd0-e625-121281185e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_log_atom_le_higher_powers (n : ℕ) :
    squareLogAtom n ≤ vonMangoldt n - primeLogAtom n := by
  by_cases h : (Nat.sqrt n).Prime ∧ n = (Nat.sqrt n) ^ 2
  · have hnp : ¬ n.Prime := by
      rw [h.2]
      exact Nat.Prime.not_prime_pow (by decide : 2 ≤ (2 : ℕ))
    have hΛ : vonMangoldt n = Real.log (Nat.sqrt n) := by
      calc
        _ = vonMangoldt ((Nat.sqrt n) ^ 2) := congrArg vonMangoldt h.2
        _ = vonMangoldt (Nat.sqrt n) := vonMangoldt_apply_pow (by decide : (2 : ℕ) ≠ 0)
        _ = _ := vonMangoldt_apply_prime h.1
    rw [squareLogAtom, if_pos h, primeLogAtom, if_neg hnp, hΛ, sub_zero]
  · simpa only [squareLogAtom, h, ite_false] using mangoldt_minus_primeLog_nonneg n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TheLiteralPrimeSquareSectorStrengthensTheSelectedGreenPaymentEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareGreen/Variant3dfec50355aaece3eab013558e109d9af6153b14e1ddd24fad766f79edb2d006.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ac3e4f2b5e54c5405d674efff6614b50aa8e405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=345a37ee4f4c68055be4c8878c2b23c32562efc93e166c367d395a22d4ba322d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareGreen/Variant3dfec50355aaece3eab013558e109d9af6153b14e1ddd24fad766f79edb2d006.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
