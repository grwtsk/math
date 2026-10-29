# Verification target: Source Actual Euler Logarithmic Primitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2449f959c987d9cc8e01cb8990cf946d83ce8e6a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant6c8b9fc65eb96131c1d1cdb824c453c8aafd92d6f14cf061fc2ad2579f0e3c99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2449f959c987d9cc8e01cb8990cf946d83ce8e6a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant6c8b9fc65eb96131c1d1cdb824c453c8aafd92d6f14cf061fc2ad2579f0e3c99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant6c8b9fc65eb96131c1d1cdb824c453c8aafd92d6f14cf061fc2ad2579f0e3c99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEulerSupportHead` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualClosedPrimeLogPotential](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualclosedprimelogpotential.md) | 19 | `declaration-track:9e83c69e19e7dc311953f1c025935e99c9c5b60eb898974757b544695f45a356` |
| 2 | `theorem` | [term_eq_exp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/term-eq-exp.md) | 24 | `result-track:3d819a8277989a2c020e8d134997315a804ca4246ae73f342ddb9c36ed11f457` |
| 3 | `theorem` | [log_term_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/log-term-hasderivat.md) | 38 | `result-track:dd9f9ea9c133eff13619188d1f110639b88bc3149d681a1d2d9f2119d6d01378` |
| 4 | `theorem` | [actualClosedPrimeLogPotential_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualclosedprimelogpotential-hasderivat.md) | 64 | `result-track:3911dad7cda062c8780332c019076720c72aae080ea05093b106acb12b3f2c7f` |
| 5 | `def` | [actualEulerMellinSlope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualeulermellinslope.md) | 73 | `declaration-track:9a1bfbdb575bf5eb0ae932e458bef5d27b7254e52bcb6ff103a60eba15e2f931` |
| 6 | `theorem` | [bump_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/bump-hasderivat.md) | 80 | `result-track:3f77ed2026db0b38f49f17c43daa0efe9907dce3ba884def1bf9a6571fc7dd8b` |
| 7 | `theorem` | [actualEulerMellin_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualeulermellin-hasderivat.md) | 86 | `result-track:c5cb679eef2d05639d07878823eca14b9740bfeedb720cc97027a75a5594596a` |
| 8 | `theorem` | [potential_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/potential-continuous.md) | 102 | `result-track:6607c548441ac46db372fa928d56534268a088f9f7bf7e3ddb50b48b3b7f0fca` |
| 9 | `theorem` | [mellin_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/mellin-continuous.md) | 107 | `result-track:7458eed0ebaadb84db20114e8d8efb827b090fee7c17775440bda20d2946b5e2` |
| 10 | `theorem` | [slope_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/slope-continuous.md) | 111 | `result-track:1f2a20b7e99cbf3c58915cf06755a6d419c84a070fdd27e4ffb1b24d2076d63d` |
| 11 | `theorem` | [polynomial_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/polynomial-continuous.md) | 119 | `result-track:64bc321dccf4b24d68911e60cc40887c7154d37e5a6863ce0fd76bd47277f96d` |
| 12 | `def` | [actualClosedPrimeLogBulk](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualclosedprimelogbulk.md) | 126 | `declaration-track:2acb113787f90ed29262a1d71371757fb3ea6c54fb95d62fbffd0b40be817f48` |
| 13 | `def` | [actualClosedPrimeLogBoundary](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualclosedprimelogboundary.md) | 132 | `declaration-track:f3aa19a67b5aa2d0ef16d73b4461bed7b74fa437a51e4fc1f8fbeae68c7ea9ac` |
| 14 | `theorem` | [actualClosedPrimeLogBulk_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualclosedprimelogbulk-intervalintegrable.md) | 140 | `result-track:5ee98be1e08ad5aae643e133e7261a34c595ff4fa23b355f65f2b585be110991` |
| 15 | `theorem` | [actualClosedPrimeHead_eq_logBulk_add_boundary](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualclosedprimehead-eq-logbulk-add-boundary.md) | 149 | `result-track:fa4b079ec59345a227e07582604b088fda1cb83d469d05b2ffe159f152b95843` |
| 16 | `theorem` | [logTerm_norm_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/logterm-norm-le.md) | 192 | `result-track:d1a3af9e2f4afc14751c87ba44e2fff91e811e5ee4697c5c11d981ca6281d3f9` |
| 17 | `theorem` | [actualClosedPrimeLogPotential_norm_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualclosedprimelogpotential-norm-le.md) | 219 | `result-track:e5da4005ff604bac0c63971f72e54c572d2fe709ab56e20ee22bb88276533a01` |
| 18 | `def` | [mellinEndpointConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/mellinendpointconstant.md) | 238 | `declaration-track:13ef1ea41e62829cde9d89593f2926836a7333da0a7617d1dafbc8645f8cb05d` |
| 19 | `theorem` | [mellinEndpoint_norm_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/mellinendpoint-norm-le.md) | 241 | `result-track:d04a9ad887cd5b6475e5037e8b4e307cf7920ef1aaca1c7ff35a2d1663994ab1` |
| 20 | `def` | [actualEulerLogBoundaryConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualeulerlogboundaryconstant.md) | 270 | `declaration-track:8b8f9615ac669d5b2e19cfc0799ce9d20857e7dacf365550cddeb571e386b110` |
| 21 | `theorem` | [actualClosedPrimeLogBoundary_moving_norm_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualEulerLogarithmicPrimitive.lean/declarations/actualclosedprimelogboundary-moving-norm-le.md) | 274 | `result-track:2e4db5f5ea4393fe4e632186cac670f2d74ca21524d0ccaebcd1efd3cff61062` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54a2b35e11beb5f1ba51daf4893a88b34f82069183c7cd399b41a7097efb2168 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant6c8b9fc65eb96131c1d1cdb824c453c8aafd92d6f14cf061fc2ad2579f0e3c99.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant6c8b9fc65eb96131c1d1cdb824c453c8aafd92d6f14cf061fc2ad2579f0e3c99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
