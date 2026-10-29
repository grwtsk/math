# Verification target: Source Native Dirichlet Moments Edition2 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98ee08216616376a4ef41843e93b5d397b079ef2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantf4951cfc3e57628ed0c8f1024f3b015620d7622d94de93c68ca4ee75d689d1cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98ee08216616376a4ef41843e93b5d397b079ef2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantf4951cfc3e57628ed0c8f1024f3b015620d7622d94de93c68ca4ee75d689d1cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantf4951cfc3e57628ed0c8f1024f3b015620d7622d94de93c68ca4ee75d689d1cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/dirichletmoment.md) | 15 | `declaration-track:284b26fb557bb7c64567eecbca25352e937e5fa21bbed54db3e0493cdb6d5880` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/dirichletmoment-nonneg.md) | 19 | `result-track:5ccc51332c27b835a7be075e816d1001b28ab7a2a7b26546344402143159cd4e` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/mangoldt-abscissa-le-one.md) | 26 | `result-track:b6945213237f204a5d6b45f8f563e9711b8a7a740b1460c3714b3e7a00658849` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/iterate-logmul-eq.md) | 32 | `result-track:249dfdb3de344714fcafa1a38c10b9f9367ded4b138a81199c78df66cb13b1c8` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/dirichletmoment-summable.md) | 41 | `result-track:5cca03121190eddda4c0bd14e2c7067050cd6dd9aca2bbdf7dbae4cbdc00f2b7` |
| 6 | `theorem` | [log_moment_series_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/log-moment-series-eq.md) | 63 | `result-track:c80729cdb8f6947e14f71f9fe0aa5540a4b8418c86ded6f8da81038116d46dc9` |
| 7 | `theorem` | [native_series_hasDerivAt_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/native-series-hasderivat-two.md) | 91 | `result-track:6868902938301f965c786d7126d12337e16419f8c9d43711066fec9173fb239c` |
| 8 | `theorem` | [native_series_second_derivative_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/native-series-second-derivative-two.md) | 102 | `result-track:125f9af44e76d88f38e2f3924c5bc08257bf95bfa127ce6e6958928ee16008fd` |
| 9 | `theorem` | [combinedMultiplier_eventually_eq_series](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/combinedmultiplier-eventually-eq-series.md) | 111 | `result-track:97450f890d22d8cfde4e65a386343c340ed08b5829ffdba7100b2e83b05056fb` |
| 10 | `theorem` | [combinedMultiplier_hasDerivAt_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/combinedmultiplier-hasderivat-two.md) | 120 | `result-track:ae5c7bd68288f9cc15316a7763b110e1ba99be117ddf41aaf7ab7c24d71b573f` |
| 11 | `theorem` | [combinedMultiplier_second_derivative_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/combinedmultiplier-second-derivative-two.md) | 125 | `result-track:20f5d067bacabc4b983f62d55163ba0e8195661ef53caece193ef0cfe9d1321f` |
| 12 | `theorem` | [dirichletMoment_zero_eq_majorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/dirichletmoment-zero-eq-majorant.md) | 131 | `result-track:0c165523d7ab48dfb3334222d3df2f4992a4c93a06ca1ebd22cfa317951fabfe` |
| 13 | `theorem` | [combinedMultiplier_two_eq_majorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/combinedmultiplier-two-eq-majorant.md) | 138 | `result-track:a410091b720dca3e0cefe8be1656813d3b0041026da9a243e4b1fd03693aae4a` |
| 14 | `theorem` | [dirichletMoment_one_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsEdition2SourceEdition1.lean/declarations/dirichletmoment-one-pos.md) | 147 | `result-track:53de58ccd5e476a3a5d2d2c0b3f253c74ff5504eb05a02891d3c06312bae1e06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f42161f8cd45e9c03db3f9b12859593148001df3c9508bdec9608a129b838fa7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantf4951cfc3e57628ed0c8f1024f3b015620d7622d94de93c68ca4ee75d689d1cf.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantf4951cfc3e57628ed0c8f1024f3b015620d7622d94de93c68ca4ee75d689d1cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
