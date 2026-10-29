# Verification target: Actual Lower Trace Arithmetic Expansion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "914409ec3720d9f4eace9deabff8b9af65ee263b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Variant8b184a69000b24616d46d331b90496c40eaa4aea78aa12e8fa52a3617d3f925a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `914409ec3720d9f4eace9deabff8b9af65ee263b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Variant8b184a69000b24616d46d331b90496c40eaa4aea78aa12e8fa52a3617d3f925a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Variant8b184a69000b24616d46d331b90496c40eaa4aea78aa12e8fa52a3617d3f925a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualDoubleAdjointTransfer` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualAdjointColumnTrace` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLowerColumnPrimeTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actuallowercolumnprimetest.md) | 23 | `declaration-track:fd8df87daf4e625eec6d24602e259c09678c781aab32ad7d34a879bde8a9b8ae` |
| 2 | `def` | [actualLowerColumnHalfMangoldtRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actuallowercolumnhalfmangoldtrow.md) | 30 | `declaration-track:bda60c0ac80ae265c960398b23545a0701397eed0d7206e5f1f19d328938a178` |
| 3 | `def` | [actualLowerColumnMangoldtBracket](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actuallowercolumnmangoldtbracket.md) | 38 | `declaration-track:321b12ae55b06fa9e5d48599631f1efd6302999cebe0779e490dc8599a64303d` |
| 4 | `theorem` | [actual_orders](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actual-orders.md) | 47 | `result-track:237a422de61992af6fd332f7bfcb07bf915644792715e1f2519d7980a843cf4d` |
| 5 | `theorem` | [jet_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/jet-hasderivat.md) | 56 | `result-track:d56b6e730ca0a22fd724630e60cd1c8d7cc0b4026ebd77a2b9f75f927c1ac33d` |
| 6 | `theorem` | [jet_contDiff_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/jet-contdiff-one.md) | 64 | `result-track:bb2341dceb24533dd215cf92c8b223b8a7773d7fa8f8765b296796b160244481` |
| 7 | `theorem` | [actualLowerColumnPrimeTest_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actuallowercolumnprimetest-hasderivat.md) | 71 | `result-track:b344ebdc90e80bd03689f6a7a2c11bbe462bad8214e5327176c6ed8fa269566f` |
| 8 | `theorem` | [actualLowerColumnPrimeTest_contDiff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actuallowercolumnprimetest-contdiff.md) | 86 | `result-track:8156d9b1d9259eae8927d2e0245b3c10fc8fa298e7d7af9eb1ec0fa311c8a8c3` |
| 9 | `theorem` | [actualLowerColumnPrimeTest_at_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actuallowercolumnprimetest-at-upper.md) | 95 | `result-track:c3768fe6a933d040a83327edaa112fb8753303e521d08a6ac5bb50a8e260333b` |
| 10 | `theorem` | [actualLowerColumnPrimeWindow_eq_halfRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actuallowercolumnprimewindow-eq-halfrow.md) | 105 | `result-track:537049261cc193f01d9d4c03496e8c9647fd90a655a396be876fd710ada11c1d` |
| 11 | `theorem` | [actualLowerColumnTimeFactor_eq_closed_window](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actuallowercolumntimefactor-eq-closed-window.md) | 136 | `result-track:7627038b18b635fa77816aa831263ba8937fd30e50cf226689c639f5f41cafbb` |
| 12 | `theorem` | [actualAdjointLowerColumnTrace_eq_half_inventory_product](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualLowerTraceArithmeticExpansion.lean/declarations/actualadjointlowercolumntrace-eq-half-inventory-product.md) | 171 | `result-track:b9e42875fd5a07ae864eea88174611fb941e184c5594a004577991d1d3e51d24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8cd0fd6d6692ba4f31296e090c22820515f4f321e0cafd393f56cd5dd2a01f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Variant8b184a69000b24616d46d331b90496c40eaa4aea78aa12e8fa52a3617d3f925a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ActualLowerTraceArithmeticExpansion/Variant8b184a69000b24616d46d331b90496c40eaa4aea78aa12e8fa52a3617d3f925a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
