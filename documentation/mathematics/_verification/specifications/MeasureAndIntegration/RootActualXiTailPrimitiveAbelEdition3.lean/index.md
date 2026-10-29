# Verification target: Root Actual Xi Tail Primitive Abel Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b2192bad9c5fb834cfb81c6811b6ac1e2a97fdf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant3f348db077f0c49a60cdc2eb752ed47d502c7611e188d26d96f2d3a0e1d65b79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b2192bad9c5fb834cfb81c6811b6ac1e2a97fdf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant3f348db077f0c49a60cdc2eb752ed47d502c7611e188d26d96f2d3a0e1d65b79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant3f348db077f0c49a60cdc2eb752ed47d502c7611e188d26d96f2d3a0e1d65b79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiTailPrimitive` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiTailSourceTest](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/declarations/actualxitailsourcetest.md) | 23 | `declaration-track:7d7239e0bfe6308b1427936b1d9adb706f4a7a78261a3501f39414149c558c0c` |
| 2 | `theorem` | [sourceTest_contDiff](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/declarations/sourcetest-contdiff.md) | 27 | `result-track:ba53d19c04b195432002b6258ca0ae608cb0a35bf92244976ea35526a0a2c9c3` |
| 3 | `theorem` | [sourceTest_hasDerivAt](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/declarations/sourcetest-hasderivat.md) | 31 | `result-track:1450af21dfeb286065debbcc66d9201929852276178613bde0e218c19218645c` |
| 4 | `theorem` | [sourceTest_zero_upper](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/declarations/sourcetest-zero-upper.md) | 41 | `result-track:48188aa8f5ed44b6891e6f1953e9841e8283a0cdcd959ad31edb98be864e464d` |
| 5 | `theorem` | [completeXiTail_eq_log_pairing](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/declarations/completexitail-eq-log-pairing.md) | 49 | `result-track:46f33a3dc18ff64ea7ba660c793627f0e58f958e9145bed3c60273d315685c02` |
| 6 | `theorem` | [completeXiTail_eq_anchored_primitive](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/declarations/completexitail-eq-anchored-primitive.md) | 78 | `result-track:2a9f26f24ae730be182b4f4b1b5ec593347bce1804d4ca6c6faadfe376908b22` |
| 7 | `theorem` | [completeXiTail_abs_le_primitive_average](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/declarations/completexitail-abs-le-primitive-average.md) | 120 | `result-track:27c4ed40c06df3da76e6bfd6cd2568b71a1c8048cf844fc48c1bd2a727ffd7df` |
| 8 | `theorem` | [completeXiTail_lower_of_uniform_primitive_average](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/declarations/completexitail-lower-of-uniform-primitive-average.md) | 155 | `result-track:943f952364e9e33dc511c673c0e29f4ff00a6db49bfe3534ee7e2b10c23c58e0` |
| 9 | `theorem` | [estimate_of_uniform_primitive_average](../../../../MeasureAndIntegration/RootActualXiTailPrimitiveAbelEdition3.lean/declarations/estimate-of-uniform-primitive-average.md) | 176 | `result-track:ef8709d8cb35da0718a8612f3e38e9aaab2397d459f1ac616555f2763462ebc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abd09fae1d76e8ba6b29f7f7ed7473c90710e4f022cb1035b0414c2c925fedfa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant3f348db077f0c49a60cdc2eb752ed47d502c7611e188d26d96f2d3a0e1d65b79.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variant3f348db077f0c49a60cdc2eb752ed47d502c7611e188d26d96f2d3a0e1d65b79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
