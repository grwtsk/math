# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOffDiagonalReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0395e4d6d09c52140c055bbd7bf78d569d522245",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0395e4d6d09c52140c055bbd7bf78d569d522245`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerBoundaryMinimalExactReadout`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerBoundaryMinimalExactReadout.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvexContraction`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclicSharpPrefixIndicator_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/cyclicsharpprefixindicator-nonnegative.md) | 58 | `result-track:9c4689e184966ae8bf0e9cc1cdb0bbeddd01b5bc1b5f21b98f8f8e7b376f54a5` |
| 2 | `theorem` | [cyclicSharpPrefixIndicator_le_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/cyclicsharpprefixindicator-le-one.md) | 66 | `result-track:794b3eeffc92747dd77c22d482dbd737e19b39a45b97e9b369f9504967deebb0` |
| 3 | `theorem` | [cyclicFejerSmoothedPrefix_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/cyclicfejersmoothedprefix-nonnegative.md) | 75 | `result-track:1b1de71c86c578450a39cfd8f53584216a831873dbc49c253d61954667225d3c` |
| 4 | `theorem` | [cyclicFejerSmoothedPrefix_le_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/cyclicfejersmoothedprefix-le-one.md) | 88 | `result-track:22ead0cca65abc039bbf2d4b31f4e875ab486f6e474efe0d4c0d655e10ae9ca3` |
| 5 | `theorem` | [nonAliasingFejerPrefixWeight_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/nonaliasingfejerprefixweight-nonnegative.md) | 115 | `result-track:4bf697686f421bcde8a197d58fa49411a6687499a95ce5f1835e7bfa60344872` |
| 6 | `theorem` | [nonAliasingFejerPrefixWeight_le_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/nonaliasingfejerprefixweight-le-one.md) | 131 | `result-track:610b3203bf3052d7740f5928b0ecc7ed7f73cefd3b7c9b60352dd7c249c69ea2` |
| 7 | `theorem` | [one_add_log_four_mul_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/one-add-log-four-mul-nonnegative.md) | 147 | `result-track:2c48a8e22864f7421560918af9dc3cdef677d1b17ae5746c2fca583fe7ba5754` |
| 8 | `theorem` | [nonAliasingFejerWeightedPrimeAtom_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/nonaliasingfejerweightedprimeatom-abs-le.md) | 159 | `result-track:b7ad9b875d2ceebd45dfada741f2c560cf45bf024c02b42458b2b6c9d4da44c4` |
| 9 | `theorem` | [nonAliasingFejerQuadraticDiagonal_le_atomEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/nonaliasingfejerquadraticdiagonal-le-atomenvelope.md) | 187 | `result-track:96e1f134fbb65bf9cc816df91caccbd1b9388a0ca03f14ac59ef12da94d63140` |
| 10 | `theorem` | [sevenEighthsBoundaryMinimalFejerQuadraticDiagonal_le_exactTarget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/seveneighthsboundaryminimalfejerquadraticdiagonal-le-exacttarget.md) | 227 | `result-track:eef18e7b0ceeaa137878386d14b576dcfd82849eadb8eba56525b86bb6b543cb` |
| 11 | `theorem` | [nonAliasingFejerQuadraticCorrelation_eq_diagonal_add_offDiagonal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/nonaliasingfejerquadraticcorrelation-eq-diagonal-add-offdiagonal.md) | 327 | `result-track:ad7da0f99694bcb153b2f7b9909acfa3ad1ff629760f890130f457adcfb87aaf` |
| 12 | `def` | [SevenEighthsBoundaryMinimalExactOffDiagonalBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/seveneighthsboundaryminimalexactoffdiagonalbound.md) | 337 | `declaration-track:59cd30f65b45f5df70453419805d1038f35448f27b458d411e4e7148f83a8c9f` |
| 13 | `def` | [SevenEighthsBoundaryMinimalExactOffDiagonalAbsoluteBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/seveneighthsboundaryminimalexactoffdiagonalabsolutebound.md) | 356 | `declaration-track:86801ff4b2fbdb38cbca69385096aef2d789494f3c9cdc143fe060a207589b3d` |
| 14 | `theorem` | [absoluteOffDiagonalBound_to_signedOffDiagonalBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/absoluteoffdiagonalbound-to-signedoffdiagonalbound.md) | 374 | `result-track:edb413c1c1edea8c6058ea61985dbd565e860472060095ca671fa6c04b72d176` |
| 15 | `theorem` | [signedOffDiagonalBound_to_exactCorrelationBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/signedoffdiagonalbound-to-exactcorrelationbound.md) | 392 | `result-track:8cb6ca9790145e73a1f44c62c37f243315627394b7bc7d31d4a6cea1fcddbb04` |
| 16 | `theorem` | [signedOffDiagonalBound_to_partialDiscrepancy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/declarations/signedoffdiagonalbound-to-partialdiscrepancy.md) | 451 | `result-track:5da78371ee7ddaa5483686b041b70dad52d49de7e25f25bc7b89bb8540f3c0ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f505eb866b311e392ca657d1b4d1db415c672ccbb345686393372776dd921d7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
