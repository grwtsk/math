# completeRows_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17fc022f-e9b1-a11e-037f-078e7a801958",
  "kind": "theorem",
  "lexical_name": "completeRows_abs_le",
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
  "slug": "completerows-abs-le",
  "source": {
    "blob": "096935e8b70d5bfec0240b2b9feb9e64ce813705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWholePlainConvolution/Variantfa9cfa98c836d75e8d99d4f4179fb54973ef59ed6ad23d289734c323773439b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c2e113efc7c06995581be6f1e796c3e1d6d97aa3b50db1d7e90dcfc02131e44",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWholePlainConvolutionAlternative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17fc022f-e9b1-a11e-037f-078e7a801958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeRows_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |completeMangoldtPlainRows A| ≤ 8 + 96 * (162826 / 7623 : ℝ) := by
  have hsq : 1 ≤ A ^ 2 := by nlinarith
  have hdiv : 96 * (162826 / 7623 : ℝ) / A ^ 2 ≤ 96 * (162826 / 7623 : ℝ) :=
    div_le_self (by norm_num) hsq
  calc
    |completeMangoldtPlainRows A| =
        |(completeMangoldtPlainRows A - samplingAlpha1) + samplingAlpha1| := by
      congr 1
      ring
    _ ≤ |completeMangoldtPlainRows A - samplingAlpha1| + |samplingAlpha1| :=
      abs_add_le _ _
    _ ≤ 8 + 96 * (162826 / 7623 : ℝ) := by
      linarith [completeRows_sub_alpha1_abs_le A hA, samplingAlpha1_abs_le_eight]

/-- Both strict axes remove the unit column and retain the original raw deleted diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceWholePlainConvolutionAlternative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWholePlainConvolution/Variantfa9cfa98c836d75e8d99d4f4179fb54973ef59ed6ad23d289734c323773439b1.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `096935e8b70d5bfec0240b2b9feb9e64ce813705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70581f8acba9f2fb48285d0e02e272f5c69876e57b42d91fae2f1e4f8b2870d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceWholePlainConvolution/Variantfa9cfa98c836d75e8d99d4f4179fb54973ef59ed6ad23d289734c323773439b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
