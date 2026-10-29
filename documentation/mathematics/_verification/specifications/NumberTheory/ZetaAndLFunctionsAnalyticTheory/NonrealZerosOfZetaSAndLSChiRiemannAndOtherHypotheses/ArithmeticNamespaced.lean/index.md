# Verification target: Arithmetic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdd648c560cf6c82971fee6a7b2da6ee9e7f4211",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant740a1c150d81e2c8e34c9a729cde1dc2d15f2c2cd12966e4b9379043f821e2ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdd648c560cf6c82971fee6a7b2da6ee9e7f4211`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant740a1c150d81e2c8e34c9a729cde1dc2d15f2c2cd12966e4b9379043f821e2ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant740a1c150d81e2c8e34c9a729cde1dc2d15f2c2cd12966e4b9379043f821e2ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [primeTwo](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/primetwo.md) | 25 | `result-track:e0e027d44afc2e506c31e7350470d783e1ef910faabcd83938a9385e9dc3f3bd` |
| 2 | `theorem` | [primeLowerBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/primelowerbound.md) | 27 | `result-track:10bfbf9f629290a8e32e937265cc9a5859fc4efa16bc3fe47bb875cf7a2c0be6` |
| 3 | `theorem` | [factorization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/factorization.md) | 29 | `result-track:a1e5870fbe45e4d9c2b935744d290d89cf1875a988f8fe3bccfe096f7ba81365` |
| 4 | `theorem` | [logPower](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/logpower.md) | 32 | `result-track:e27a9b46c922a75ff2c91eb129b2d0860d8058be4d9bdfd7c50ab07ee9a79e8d` |
| 5 | `theorem` | [logPrimePositive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/logprimepositive.md) | 35 | `result-track:8c91b3419727a85e1f9c9eee24b98c80801772b4035d040a5b3c32fb3f13564a` |
| 6 | `theorem` | [primePowerNotPrime](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/primepowernotprime.md) | 38 | `result-track:c15ff7f7fe1237a6bd87fbd85ed0d08acd356a44c97d9295d1c3868e0d8607d4` |
| 7 | `theorem` | [lambdaPrimePower](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/lambdaprimepower.md) | 41 | `result-track:28e493a931e9dd8d7cb945989ee0281203e5e1175ccb2ae58f578a333613259f` |
| 8 | `theorem` | [lambdaZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/lambdazero.md) | 46 | `result-track:40ab2893150c90c79c30e9e90f146635040f048bbaf3926ad0936fd345f01243` |
| 9 | `theorem` | [lambdaDivisorSum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/lambdadivisorsum.md) | 49 | `result-track:c61bd691f757540c56d40dd9079ba8bfbd0edeaa37e9e5a8e2191160e37745cf` |
| 10 | `theorem` | [zetaSeries](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/zetaseries.md) | 52 | `result-track:762c6b2e027272f8363e030f8e149fb682683c536e0bd2729100be863c4e392d` |
| 11 | `theorem` | [eulerProduct](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/eulerproduct.md) | 56 | `result-track:74177707b7c15a6275390bb5f26dde08b3baa33cdfd98ea888bd9bfec5d4bbc0` |
| 12 | `theorem` | [eulerProductLimit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/eulerproductlimit.md) | 60 | `result-track:a022eb06fe4e0a05ec59fa92de073031bae08ec3332bba7b50b2dd2c26ba23e4` |
| 13 | `theorem` | [zetaExpLambdaSeries](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/zetaexplambdaseries.md) | 66 | `result-track:5e69bc312dabfb21702f073ec3a2463547fac36f746bf36470318e82707f0e6c` |
| 14 | `theorem` | [lambdaSummable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/lambdasummable.md) | 70 | `result-track:5e9c5a900ced9b977f056cd171522da504ee75a04db34656834d42f79696b5ba` |
| 15 | `theorem` | [zetaNonvanishing](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/zetanonvanishing.md) | 73 | `result-track:407e9c610987aec99fbb2c458780c9cda51b5cfa4da052662183ed1f28f4d13e` |
| 16 | `theorem` | [lambdaLogDerivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticNamespaced.lean/declarations/lambdalogderivative.md) | 76 | `result-track:2ecc045384fcdc8c6ea2a14a8a4cda840078ae413bdeb1908225c0c2eab48ba8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=172460ab7bf9f0917f23e9f4ac1bf0dfe68b37b03945e82737cbf3102b404ccc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant740a1c150d81e2c8e34c9a729cde1dc2d15f2c2cd12966e4b9379043f821e2ed.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant740a1c150d81e2c8e34c9a729cde1dc2d15f2c2cd12966e4b9379043f821e2ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
