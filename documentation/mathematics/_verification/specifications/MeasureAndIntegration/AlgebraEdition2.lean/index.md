# Verification target: Algebra Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9e98e5fdeedc887527921185be261963ffab4ef",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variantc8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/AlgebraEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/AlgebraEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9e98e5fdeedc887527921185be261963ffab4ef`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variantc8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variantc8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSide.Assembly` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [actualQ](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/actualq.md) | 30 | `declaration-track:b4c620be4ee94a93ad6a6e5f45e8546093c11a91a2415431865dfe63e99584da` |
| 2 | `def` | [weightedSource](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/weightedsource.md) | 34 | `declaration-track:02a13c80e774708d3590c4e43db9acd08262e77f9d46719c2444e6fc5de04674` |
| 3 | `def` | [J](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/j.md) | 41 | `declaration-track:ea8827b5f6f9521ce8db523c803a629703c051e9da5450f7481ed66657b98baf` |
| 4 | `def` | [JIntegral](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/jintegral.md) | 49 | `declaration-track:564fe7912155e7315658d6ad08054cf316d1731d429e2a98ed8dfe488dfdb905` |
| 5 | `def` | [JIntegralObligation](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/jintegralobligation.md) | 53 | `declaration-track:1ffaf7c0906c7455f9a5d26579faeefbe6d0c6a8783ce8612ddc39bb1b77a711` |
| 6 | `def` | [JRegularPartObligation](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/jregularpartobligation.md) | 62 | `declaration-track:a66f0e186fcce050f1f413e169484157e5164e43316383aaf0d92599785f3f66` |
| 7 | `theorem` | [transformPolynomial_sq](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/transformpolynomial-sq.md) | 70 | `result-track:93c14121b7ede386c2409090d67b9915a6f7d78473d60182677d1b66d3d631e4` |
| 8 | `theorem` | [transformPolynomial_mul_neg](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/transformpolynomial-mul-neg.md) | 80 | `result-track:6844cf3d7d477f24cee73020a87fec73c047ae290e15ed8f48cad68bba76c961` |
| 9 | `theorem` | [mode_square_expansion](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/mode-square-expansion.md) | 87 | `result-track:62203f18de5af7ffdbcbd7d17ceff441e719e1ada33ad5f771ba03f08443c0ae` |
| 10 | `def` | [modeCoefficient](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/modecoefficient.md) | 96 | `declaration-track:5c6821ddb9e038ab13117a6a7655cc2b0c5bbb6f33f026d44b0fde83a9c7b0ed` |
| 11 | `theorem` | [modeCoefficient_neg](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/modecoefficient-neg.md) | 100 | `result-track:96c5079ca287ab31529dd6499d9d6d81cad1205674f4da99651f053b8bcf9d78` |
| 12 | `def` | [principalCoefficient](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/principalcoefficient.md) | 108 | `declaration-track:fd76b551e05aea34ec81b7eeced65cf69c973dc2e029e502b58386ec7fe897ef` |
| 13 | `theorem` | [principalCoefficient_eq](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/principalcoefficient-eq.md) | 113 | `result-track:af69bcb4b9f5b138f7d1756e3ff2a8b1cd69374594e88eee6fad265aa72e64da` |
| 14 | `theorem` | [pole_factor_ne_zero](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/pole-factor-ne-zero.md) | 123 | `result-track:da99477552057ea8170dc87b1913d3b4554a171a432d7d4f07c1f6c17fd31b3c` |
| 15 | `theorem` | [principalCoefficient_ne_zero](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/principalcoefficient-ne-zero.md) | 138 | `result-track:abf9565305687f2bf2d6f44a371dd680ff09d04a8beb3f8a28f2b35c4461d2f8` |
| 16 | `def` | [KernelCheckpoint](../../../../MeasureAndIntegration/AlgebraEdition2.lean/declarations/kernelcheckpoint.md) | 158 | `declaration-track:ef13a0721668a406b92c7d2632a3a566337aa7a30eb177185a6893b90a544fbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be5c8010bc7880523aadf0c0c3cad6a49ab8ad48b02379d39094d9b8a99eae19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variantc8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variantc8cb0a0a5d27f621e63ab76630af944891efd71e2123bdbaf2e194d702399766.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
