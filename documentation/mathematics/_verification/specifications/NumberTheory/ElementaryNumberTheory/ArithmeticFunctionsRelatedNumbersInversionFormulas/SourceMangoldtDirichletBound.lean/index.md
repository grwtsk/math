# Verification target: Source Mangoldt Dirichlet Bound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d524e5d5829ba1fe7db57637416b8937744b3c6e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variant17e1c7692e9e7be383aa9f97e559ed58b0658e316c4ddf145354d43504e0dd93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d524e5d5829ba1fe7db57637416b8937744b3c6e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variant17e1c7692e9e7be383aa9f97e559ed58b0658e316c4ddf145354d43504e0dd93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variant17e1c7692e9e7be383aa9f97e559ed58b0658e316c4ddf145354d43504e0dd93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtDirichletTerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichletterm.md) | 33 | `declaration-track:1b18397d71a8bd140a1c21191919c0a030f004578f423c6fb4c74a2357cbca45` |
| 2 | `def` | [cellMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/cellmajorant.md) | 37 | `declaration-track:7e274e7f6ed986d6553fed6d9eb1d1ba18ed4d2d4aaad8ec7dd9b826457484bb` |
| 3 | `def` | [dirichletBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/dirichletbudget.md) | 41 | `declaration-track:ac2b888402b3aab0b6bd2d44bf7aa555a69b43d357f2e7b633061217057c27ca` |
| 4 | `theorem` | [mangoldtDirichletTerm_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichletterm-zero.md) | 44 | `result-track:8d347ced838f957937abfa927f4c7c8db2c73696a7d6056b7ec5d3d5272a535b` |
| 5 | `theorem` | [mangoldtDirichletTerm_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichletterm-one.md) | 47 | `result-track:062c195bee1b75a3fe2d74cc2a8bfa66cdbc848131943c8f018f61ed33888f71` |
| 6 | `theorem` | [mangoldtDirichletTerm_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichletterm-nonneg.md) | 51 | `result-track:7ecc6e2e6e58ecd463a082798caff16bd4b69846af49f8cda1aca2e5aa0f05c3` |
| 7 | `theorem` | [mangoldtDirichletTerm_le_cellMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichletterm-le-cellmajorant.md) | 57 | `result-track:4794b01cf0fb298f247fc2a2d9af67a936baa7aa0226e36ad8c9e59d4fe2799d` |
| 8 | `theorem` | [cellMajorant_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/cellmajorant-nonneg.md) | 80 | `result-track:61ad3288a08efba6fe7f4398df6513fe77dc2cad033145659d6e3c8fbd4fc9ac` |
| 9 | `def` | [majorantPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/majorantprimitive.md) | 86 | `declaration-track:0fc378402ecb636f2dceae2bdc1857ff837e41c383f07c58f52b7de56fa53c8f` |
| 10 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/majorantprimitive-hasderivat.md) | 90 | `result-track:bcea12b52b770931b3be1848fce1b82b0d8b3ac06af3a61ee8afacbe58ce532b` |
| 11 | `theorem` | [cellMajorant_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/cellmajorant-continuouson.md) | 106 | `result-track:798b6e4c3a5db970d67b5cb63d6f904cd414d29ee8a37695d12f19404723c056` |
| 12 | `theorem` | [cellMajorant_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/cellmajorant-intervalintegrable.md) | 113 | `result-track:8208297722a7d506f9cc1b3eb61287a5b2381c6cc35912ba39d7206d8589a923` |
| 13 | `theorem` | [majorantPrimitive_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/majorantprimitive-one.md) | 120 | `result-track:6ab76b2a3c834931b4858d60a3f880959052b2d979cb9a418573650db28e460b` |
| 14 | `theorem` | [cellMajorant_integral_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/cellmajorant-integral-eq.md) | 129 | `result-track:0e404ee446237a3a3b450792afefee0509a6bd0c16c6f049e3be15ed36a29dfb` |
| 15 | `theorem` | [cellMajorant_integral_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/cellmajorant-integral-le.md) | 142 | `result-track:7edc264a824f4934f6f9f447f062d9ebec635e94e37f5d5a27c24a525e64e127` |
| 16 | `theorem` | [mangoldtDirichletTerm_le_cellIntegral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichletterm-le-cellintegral.md) | 154 | `result-track:aac3956098aa8a7b60edcff9dc12643b113f74804fc7559cd4144b46e838c32e` |
| 17 | `theorem` | [mangoldtDirichlet_sum_range_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichlet-sum-range-le.md) | 172 | `result-track:ebed8b8ae13e88df2c5a9834c52294a6f3283bac8e4d115e1be607c1a57cf1c9` |
| 18 | `theorem` | [mangoldtDirichlet_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichlet-summable.md) | 191 | `result-track:6cf10f5f50cee9c9bb0d85cb0c920b747c85a030a92c15a40948bdcee5adbbe5` |
| 19 | `theorem` | [mangoldtDirichlet_tsum_eq_shift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichlet-tsum-eq-shift.md) | 198 | `result-track:082ea1b385783a580c87dfa1b7b0111609f0918a5219ec51637b43f25fd4fe44` |
| 20 | `theorem` | [mangoldtDirichlet_tsum_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichlet-tsum-le.md) | 205 | `result-track:e5c7b1782f2f086b33ee4b365bd6b055519f6604ab2c52842664f00acdb724a2` |
| 21 | `theorem` | [tsum_vonMangoldt_div_rpow_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/tsum-vonmangoldt-div-rpow-le.md) | 214 | `result-track:1698a8cceb40c28ec5f0eafd83a9b54a3d0b2aa80c1c7ffe6f565fb1364b9a2b` |
| 22 | `theorem` | [movingLine_one_lt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/movingline-one-lt.md) | 220 | `result-track:c93e52853b7d887ab3d66a36b5b5a0f68e9ce4668088083e0f7784e17a9df1bb` |
| 23 | `theorem` | [mangoldtDirichlet_movingLine_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichlet-movingline-le.md) | 224 | `result-track:09244eb47dece9bf5c182c176bab44d427723540398a23903a668aa5e24bc13c` |
| 24 | `theorem` | [mangoldtDirichlet_movingLine_le_quadratic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceMangoldtDirichletBound.lean/declarations/mangoldtdirichlet-movingline-le-quadratic.md) | 232 | `result-track:3d7945d9c558cdcfca25670c070d06351608d3d154c7eb4e825a7834e574a175` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=375af44bde93ea8af9712e94358c4c74e9e8d59a3e36f85ee401131a211a3a54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variant17e1c7692e9e7be383aa9f97e559ed58b0658e316c4ddf145354d43504e0dd93.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/SourceMangoldtDirichletBound/Variant17e1c7692e9e7be383aa9f97e559ed58b0658e316c4ddf145354d43504e0dd93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
