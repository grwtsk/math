# Verification target: Source Module Build01 Elementary Right Line Bound For The Actual Mangoldt Coefficients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99b6e5176d5221a8ae80a9a7e88570e157e2c673",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Varianta141d97b75e558a6499c20afe2f2f7ec5db95812c241a7df2d0a514797997663.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99b6e5176d5221a8ae80a9a7e88570e157e2c673`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Varianta141d97b75e558a6499c20afe2f2f7ec5db95812c241a7df2d0a514797997663.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Varianta141d97b75e558a6499c20afe2f2f7ec5db95812c241a7df2d0a514797997663.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtDirichletTerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichletterm.md) | 25 | `declaration-track:6c2661680e5b13545a19035075de2365e33fff4a4b58dd7ffd5a853d516287be` |
| 2 | `def` | [cellMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/cellmajorant.md) | 29 | `declaration-track:badf80498e4e9d41f0b13e9989d6a6f1d068f9a76654ef924c696ff8bf33f201` |
| 3 | `def` | [dirichletBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/dirichletbudget.md) | 33 | `declaration-track:6eed5a44c5fd57af5ed4416d08cbad557e6bd2d045d26a89bf2817cc19b9017d` |
| 4 | `theorem` | [mangoldtDirichletTerm_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichletterm-zero.md) | 36 | `result-track:75abecbe96a65f49360f009d823def310afe86f97fa0463dd74c8e9c53fa55bf` |
| 5 | `theorem` | [mangoldtDirichletTerm_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichletterm-one.md) | 39 | `result-track:c6f254c8b00812a95d9c3446f24bae5910d6d0c52d23d9f57a7551a6b3f90b37` |
| 6 | `theorem` | [mangoldtDirichletTerm_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichletterm-nonneg.md) | 43 | `result-track:05e887009b1552cb60ad26eb6e46ca104a117b472e3904f196f66370f330348c` |
| 7 | `theorem` | [mangoldtDirichletTerm_le_cellMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichletterm-le-cellmajorant.md) | 49 | `result-track:c4684aa392d790c953f63030403f809c90961e635dd823a71c742468236382ad` |
| 8 | `theorem` | [cellMajorant_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/cellmajorant-nonneg.md) | 72 | `result-track:b9032b369d86011637eec57bb396b95d91c071c3576a0ec3f1116593e9c20722` |
| 9 | `def` | [majorantPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/majorantprimitive.md) | 78 | `declaration-track:e19908d2e5202d72d93154a70b36a65c178b99235a5d9858cdb10d4aa3a63e38` |
| 10 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/majorantprimitive-hasderivat.md) | 82 | `result-track:1e2b14cd6585fdbce31db61996bea0fa4aa1656264f8d831997f9a30165702d4` |
| 11 | `theorem` | [cellMajorant_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/cellmajorant-continuouson.md) | 98 | `result-track:44bf987cde3b591a03079766d4e404846c059ca8fec68c383fb51cd1c16354fa` |
| 12 | `theorem` | [cellMajorant_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/cellmajorant-intervalintegrable.md) | 105 | `result-track:9c97d33c7ef630216d26583e70c3419577d474061160e8f2e013ddc28dfc7099` |
| 13 | `theorem` | [majorantPrimitive_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/majorantprimitive-one.md) | 112 | `result-track:9304476fd2b210cd80500088dd26519e22d2515712d38dcffed4ceaa24ec27e7` |
| 14 | `theorem` | [cellMajorant_integral_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/cellmajorant-integral-eq.md) | 121 | `result-track:26242f1c8ea567eac88f6acb4a5af4557f577cad48c0cbf72d26a8e264f3f504` |
| 15 | `theorem` | [cellMajorant_integral_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/cellmajorant-integral-le.md) | 134 | `result-track:8bc07195b2c030dcaa650de2fa776221d7baf73db4c66e4043bf5e1b4c9aed18` |
| 16 | `theorem` | [mangoldtDirichletTerm_le_cellIntegral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichletterm-le-cellintegral.md) | 146 | `result-track:abcea81c5bc31715d934c6b66f6c1ccc5dda409cf82e8eb6da0a61ea1f4d7e4e` |
| 17 | `theorem` | [mangoldtDirichlet_sum_range_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichlet-sum-range-le.md) | 164 | `result-track:17db389b07e45387441e3a8bd62624dc0615ec6d9a246179f6d71764517bb87f` |
| 18 | `theorem` | [mangoldtDirichlet_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichlet-summable.md) | 181 | `result-track:78f6f5657a65cfb0d3767f7feb3505f7a1135a4fc6e5e449d9ca050c138207ca` |
| 19 | `theorem` | [mangoldtDirichlet_tsum_eq_shift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichlet-tsum-eq-shift.md) | 188 | `result-track:97157c56daca76bc3f491b552e2f1e83d22f25a316caa93500d3e8d7ff7a4a0e` |
| 20 | `theorem` | [mangoldtDirichlet_tsum_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichlet-tsum-le.md) | 195 | `result-track:f2643f8cf35d14de0a434169587d3f551dc0c5efa2daf7cc2bdd17a7088e36b8` |
| 21 | `theorem` | [tsum_vonMangoldt_div_rpow_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/tsum-vonmangoldt-div-rpow-le.md) | 204 | `result-track:efbadf4148882347b13ae4807617452e32cb868e669e72bf3590b26017638077` |
| 22 | `theorem` | [movingLine_one_lt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/movingline-one-lt.md) | 210 | `result-track:a7462ebaa94944dd55c69199d76ce03018a27a20538c5dade9e20c215a4a40cb` |
| 23 | `theorem` | [mangoldtDirichlet_movingLine_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichlet-movingline-le.md) | 214 | `result-track:fd6281b195fb969bd8e25e0ddc7ae5c7c1d4b5ff422895d6f4f73aa804062808` |
| 24 | `theorem` | [mangoldtDirichlet_movingLine_le_quadratic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceModuleBuild01ElementaryRightLineBoundForTheActualMangoldtCoefficients.lean/declarations/mangoldtdirichlet-movingline-le-quadratic.md) | 222 | `result-track:7b661a7da67937380b9f190aa1080df464a7e20c0abec97aace7f032ad19bca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26f3f0e711de9abe3aec432d948d5cb0ac95dc4748195b84c036cc58336228e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Varianta141d97b75e558a6499c20afe2f2f7ec5db95812c241a7df2d0a514797997663.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Varianta141d97b75e558a6499c20afe2f2f7ec5db95812c241a7df2d0a514797997663.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
