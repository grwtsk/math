# Verification target: Finite Game Search Weights

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f65797025598506b6cd21befbe1f46d255a671a4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGameSearchWeights/Variantaea2ba5d8daf818942d2381f212ba78b35c88e86f3b184b9ed8cbf6965f264ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f65797025598506b6cd21befbe1f46d255a671a4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGameSearchWeights/Variantaea2ba5d8daf818942d2381f212ba78b35c88e86f3b184b9ed8cbf6965f264ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGameSearchWeights/Variantaea2ba5d8daf818942d2381f212ba78b35c88e86f3b184b9ed8cbf6965f264ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualWeightUpdate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/dualweightupdate.md) | 32 | `declaration-track:85e0371b60a78dd2ff5a4f20a76e17ca4bc07ef3769218826b0c067b717374af` |
| 2 | `theorem` | [dualWeightUpdate_product](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/dualweightupdate-product.md) | 35 | `result-track:4f2e68eacc0beae51651a05ed8b323d6a3b601fa4fe8f9efb5ad4208009576ff` |
| 3 | `theorem` | [dualWeightUpdate_positive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/dualweightupdate-positive.md) | 40 | `result-track:701ac9ee2a47d74a38d940345cd8e441f0a5758ac365533cc86527f50f6c43a8` |
| 4 | `theorem` | [dualWeightUpdate_product_strict](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/dualweightupdate-product-strict.md) | 52 | `result-track:afeb59453df8dc94cbfd81f6ececfc378ea26361b4ec870baef8b25bdb927c88` |
| 5 | `def` | [dualWeightRun](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/dualweightrun.md) | 60 | `declaration-track:9c66baedec8ebeb6f55a6668dda4e1bcd187d70a44345025e88202fd641cb089` |
| 6 | `theorem` | [dualWeightRun_product](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/dualweightrun-product.md) | 66 | `result-track:54181d32185705f8cec09f9694b349fb8d00e826631c0928e0c53bdbb2f1e8af` |
| 7 | `theorem` | [dualWeightRun_threshold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/dualweightrun-threshold.md) | 77 | `result-track:670f7ef554262fc6839096875f01b80a65bd787b7e738061453728340cecf6c0` |
| 8 | `def` | [reweightedSupportMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/reweightedsupportmass.md) | 91 | `declaration-track:fbf4355c21d50dfb4b0048735d656823d25ba82de689d5c5d0106af657f95898` |
| 9 | `theorem` | [reweightedSupportMass_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/reweightedsupportmass-eq.md) | 94 | `result-track:1d210d9635591e4fdd3c8d83fe42a1ed4c7c9891ad7f8add96e6233ccb7d8d10` |
| 10 | `theorem` | [support_survives](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/support-survives.md) | 101 | `result-track:46e635671b8a8500e9623df7de02dadcd16a2ffac2c8fed01e919201999c0899` |
| 11 | `theorem` | [unsupported_reweighting_fails](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/unsupported-reweighting-fails.md) | 108 | `result-track:59a1eec467eac24eb4a9ef768f751d17efbf192b8a1ad230a92d6169620fc7f3` |
| 12 | `def` | [inverseProductRank](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/inverseproductrank.md) | 112 | `declaration-track:26b514129d919dd1d98c0d7fbf1ef0e1d856cef8a2cb1e872077693553c6d8a8` |
| 13 | `theorem` | [dualWeightUpdate_inverse_product](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/dualweightupdate-inverse-product.md) | 115 | `result-track:b3c3c44e35062f02ef6469a2567b57134f3ca7ac70d851f6fbdd1bf8b1d8479a` |
| 14 | `theorem` | [inverseProductRank_contracts](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/inverseproductrank-contracts.md) | 123 | `result-track:43cf894b94b94be023025904a1ce2a94a61da9484fc4e4c5b807ad99bebc26a0` |
| 15 | `theorem` | [inverseProductRank_positive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/inverseproductrank-positive.md) | 130 | `result-track:1a1f120c45955f927430d45da30257834b590817dc023559679ba3ca4f43249b` |
| 16 | `theorem` | [inverseProductRank_strict](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteGameSearchWeights.lean/declarations/inverseproductrank-strict.md) | 135 | `result-track:024af440fc60742c014930cbda833143564d87c0f38707a96133e8a03c23510e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dc2c2276bbb4083a315f59bce394197b1f9f75bd40bad54ad37d860953be02a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGameSearchWeights/Variantaea2ba5d8daf818942d2381f212ba78b35c88e86f3b184b9ed8cbf6965f264ee.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGameSearchWeights/Variantaea2ba5d8daf818942d2381f212ba78b35c88e86f3b184b9ed8cbf6965f264ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
