# actualAnchoredXiTailPrimitive_eq_reciprocal_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82d97431-a7ee-4902-2457-090c277f764f",
  "kind": "theorem",
  "lexical_name": "actualAnchoredXiTailPrimitive_eq_reciprocal_abel",
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
  "slug": "actualanchoredxitailprimitive-eq-reciprocal-abel",
  "source": {
    "blob": "496939f5b3c6499f43e2f9c62619ebbb5461d859",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantcc202b4154e5d4ce6a150c1cc5ebb6016068730af04095738d0921e8124f7ebc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d085917acd96697df8fbed355f582df2435091707df46fd3e8d2090c4b1ee35",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualReciprocalXiQuotientWeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82d97431-a7ee-4902-2457-090c277f764f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAnchoredXiTailPrimitive_eq_reciprocal_abel {t : ℝ} (ht : Real.log 7 ≤ t) :
    actualAnchoredXiTailPrimitive t =
      2 * ((∑ d ∈ Finset.Icc 1 (Nat.floor (Real.exp t) - 1), alpha d *
        (actualReciprocalXiQuotientWeight (Real.exp t) d -
          actualReciprocalXiQuotientWeight (Real.exp t) (d + 1))) -
        ∑ d ∈ Finset.Icc 1 6, alpha d *
          (actualReciprocalXiQuotientWeight 7 d - actualReciprocalXiQuotientWeight 7 (d + 1))) -
        2 * (Real.exp t + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) /
          Real.sqrt (Real.exp t) +
        2 * (7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 := by
  rw [actualAnchoredXiTailPrimitive_eq_closed_pair ht,
    actualClosedMangoldtXiPair_eq_reciprocal_abel,
    actualClosedMangoldtXiPair_eq_reciprocal_abel]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceActualXiReciprocalJointAbel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualReciprocalXiQuotientWeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantcc202b4154e5d4ce6a150c1cc5ebb6016068730af04095738d0921e8124f7ebc.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `496939f5b3c6499f43e2f9c62619ebbb5461d859` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d7c73d463f3277cc22dd0cfa05e0b6876d6c11d5eb35e6632659bc9a906342f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantcc202b4154e5d4ce6a150c1cc5ebb6016068730af04095738d0921e8124f7ebc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
