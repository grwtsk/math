# Verification target: Source Primitive Baseline Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5e4eaf6982065de98b6a60d149cdc73ca49e765",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5e4eaf6982065de98b6a60d149cdc73ca49e765`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedSquareMainTerm` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [primitive_zero_of_le_abs](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitive-zero-of-le-abs.md) | 29 | `result-track:b52fe7537133e70a0f5eccb60e6efd770de23a386dd02b31e871106dc1846200` |
| 2 | `theorem` | [primitiveCorrelationZero_zero](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitivecorrelationzero-zero.md) | 41 | `result-track:98d1cfd2b1e821a182b25b4a32404321bdc8ca1f31464bd572c8ddfd1b517f5a` |
| 3 | `theorem` | [primitiveCorrelationZero_even](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitivecorrelationzero-even.md) | 55 | `result-track:34aea06db2a401178217b2ccfc43ad38d9afdd556a08145294dca7aec81ca241` |
| 4 | `theorem` | [primitiveCorrelationZero_integrable](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitivecorrelationzero-integrable.md) | 63 | `result-track:5ee64224104a01764885a038c9d2a880b4111b89fb72c9bfd0ea449f590d8b21` |
| 5 | `theorem` | [primitiveCorrelationZero_half_integral](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitivecorrelationzero-half-integral.md) | 73 | `result-track:829660fca95ddd8a5f3686bc5092e4752b56c13120ac92634681ccd8f5c8179f` |
| 6 | `theorem` | [primitive_zero_mode_main](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitive-zero-mode-main.md) | 104 | `result-track:32f261a2188a31f8c87509297429c691fd027679301963cce7e49279cfef996b` |
| 7 | `def` | [primitivePrimeCombination](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitiveprimecombination.md) | 119 | `declaration-track:7d750be7c2f77fa0c90786ca3f4b791507403f0ea107910c94a8be01ece25e37` |
| 8 | `theorem` | [primitivePrimeCombination_eq_firstPrimeMoment](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitiveprimecombination-eq-firstprimemoment.md) | 128 | `result-track:2acfa924f7910fec5bb1cb494c21edce18bec5861fe0c3c555b1e09b684298df` |
| 9 | `def` | [primitivePairedRemainder](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitivepairedremainder.md) | 133 | `declaration-track:afc0becdf7e3a3f4869affff330189edb1785ee2f0489b98076716b5ffd342e5` |
| 10 | `theorem` | [squareRemovedPairedWork_eq_primitive_with_drift](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/squareremovedpairedwork-eq-primitive-with-drift.md) | 137 | `result-track:6cf5925272e3621f4143578212bce2ab7e4f94b543b2d7f40089c25b68862efb` |
| 11 | `theorem` | [squareRemovedPairedWork_eq_primitive_remainder](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/squareremovedpairedwork-eq-primitive-remainder.md) | 149 | `result-track:71f7f6a27fe6662ca2f706ed7bfa101fdd7e97f00b45e1da83beac5a8fef3d92` |
| 12 | `theorem` | [primitivePairedRemainder_uniformly_bounded](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitivepairedremainder-uniformly-bounded.md) | 156 | `result-track:76b555feb957b12f8b3ca1311e2a720ed4c1e8496969336c9b965a7ec59c3e02` |
| 13 | `theorem` | [primitivePrime_tail_iff_residual_tail](../../../../MeasureAndIntegration/SourcePrimitiveBaselineEdition4.lean/declarations/primitiveprime-tail-iff-residual-tail.md) | 168 | `result-track:c28fe7f209eebe7b6a975332825acf7a90de4a2a9f2d2a4bf67a92771bcf0a0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f97953da395cf56a7d3ed4f1d7900501cf26487a6980431dc5dedcbb3236b75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantc3b586270142ff715940d5e847401e62a9dcff57be132398a8a3bbb94d13f10a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
