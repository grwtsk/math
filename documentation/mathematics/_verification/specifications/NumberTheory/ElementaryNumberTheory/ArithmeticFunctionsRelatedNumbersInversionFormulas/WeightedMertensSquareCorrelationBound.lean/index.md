# Verification target: GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3c6eb93645865d05abe185faac1937215d8237c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3c6eb93645865d05abe185faac1937215d8237c`.

Source path: `GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensDiagonalMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertensdiagonalmajorant.md) | 32 | `declaration-track:1a9e892726aab5630a3bda7c255a62539f1833b84d00bb12f94b083bf3231db1` |
| 2 | `theorem` | [moebiusReal_sq_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/moebiusreal-sq-le-one.md) | 35 | `result-track:ec374c7d42c8cd28bd245a8efd93c7a8e6da4c6547750c815e69ba530a2c4387` |
| 3 | `theorem` | [sum_range_moebiusReal_sq_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/sum-range-moebiusreal-sq-le.md) | 43 | `result-track:108e6d781fa5061b0b19f8ed093cec39c8f8d3fea56d511e9b376e39bec6a1f3` |
| 4 | `theorem` | [weightedMertensSquareWeight_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertenssquareweight-nonneg.md) | 52 | `result-track:20d2c34c31f8665322201f012c1874df6590f98496820dc2b85fb30e9a3d33e3` |
| 5 | `theorem` | [weightedMertensTail_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertenstail-nonneg.md) | 57 | `result-track:983daede52ed65799263051a099d9e480656072d249310b1b364b491e0bf6a84` |
| 6 | `theorem` | [weightedMertensDiagonal_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertensdiagonal-nonneg.md) | 62 | `result-track:2ed808918f91d76b3e2195f62354339a62b471b832386cb9f24c1df087bd3f26` |
| 7 | `theorem` | [weightedMertensSquareWeight_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertenssquareweight-scale.md) | 68 | `result-track:958e172a021267b555abf3c74ef3ffa1d8cd31e9c519d15ab013db5134d816c0` |
| 8 | `theorem` | [weightedMertensDiagonal_succ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertensdiagonal-succ.md) | 76 | `result-track:821b0f2edbb1968e46beea3390aae63bd927bd24597fce0fe2a5e1c8ab4f5054` |
| 9 | `theorem` | [weightedMertensDiagonalMajorant_succ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertensdiagonalmajorant-succ.md) | 103 | `result-track:784e8261d965a76948f98a03f5bdb60bd7428a152667448b0c4c4c896123c7d3` |
| 10 | `theorem` | [weightedMertensDiagonal_le_majorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertensdiagonal-le-majorant.md) | 112 | `result-track:c5fe7cdb74d417cfd67995e6919526a54498ee43e91fd3e1ee096cbfc8ae2cf9` |
| 11 | `def` | [WeightedMertensCorrelationUniform](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertenscorrelationuniform.md) | 131 | `declaration-track:921d9f9fe9f772dad79f641f2a3236bef77b25e629d6b702ca0a5e5a4052a56b` |
| 12 | `theorem` | [summable_shifted_diagonalMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/summable-shifted-diagonalmajorant.md) | 134 | `result-track:ecbc825d07cd90154631667ebb4b475afc56b34678ef6193ea0df1e51f13f8dd` |
| 13 | `theorem` | [weightedMertensDiagonal_le_tsum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertensdiagonal-le-tsum.md) | 141 | `result-track:f479ded1f9088c4e6ca8b112040e664247e475207411110320b2e73656d0560a` |
| 14 | `theorem` | [weightedMertensSquarePartial_uniform_of_correlation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertenssquarepartial-uniform-of-correlation.md) | 148 | `result-track:538be5a13ddda1ffbb3eb9343bfde9ceffd13c5dbd332e5cf0fa895d97e7052f` |
| 15 | `theorem` | [weightedMertensSquareTerm_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertenssquareterm-nonneg.md) | 161 | `result-track:69348f2b1580d32cbec77c6172e03bffb52ace8b014b00dcf3e980d4d150c5a9` |
| 16 | `theorem` | [weightedMertensSquarePartial_succ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertenssquarepartial-succ.md) | 166 | `result-track:ec2708f0c040def9d159bf6dcbb5aab50131d27dcd9e930ef40df740e58f30c3` |
| 17 | `theorem` | [sum_range_succ_weightedMertensSquareTerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/sum-range-succ-weightedmertenssquareterm.md) | 174 | `result-track:8350145d17dd1234f2a3650fcaa1b415b7c874c82be529c5f61d0c97f530c469` |
| 18 | `theorem` | [weightedMertensSquareSummable_of_correlationUniform](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/weightedmertenssquaresummable-of-correlationuniform.md) | 189 | `result-track:7ff74b1c11ef0473957c65c5520a4ff3fea6d6c3f2046d3724c6c202b5dca5cc` |
| 19 | `theorem` | [correlationUniform_of_weightedMertensSquareSummable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/correlationuniform-of-weightedmertenssquaresummable.md) | 205 | `result-track:2077bdee2eeacc15eab97048d35ecbada4432dc45fd4a668bcaa6238a6028f49` |
| 20 | `theorem` | [correlationUniform_iff_weightedMertensSquareSummable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/correlationuniform-iff-weightedmertenssquaresummable.md) | 232 | `result-track:e3f1121a9a82cadf43e2ea38d610b46b975218096743c93f08cbfdbab55ec185` |
| 21 | `theorem` | [criticalBoundary_of_weightedMertensCorrelationUniform](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedMertensSquareCorrelationBound.lean/declarations/criticalboundary-of-weightedmertenscorrelationuniform.md) | 241 | `result-track:6655e1e9d61d12e3cf0cd105bb3a6a03d477bfa0498c4cf13cad1b89fa3fd022` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63cfd1f849929efdb7ff9c398c2f64b4ca9c29c99dc0862ba5bc86a9c4319154 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
