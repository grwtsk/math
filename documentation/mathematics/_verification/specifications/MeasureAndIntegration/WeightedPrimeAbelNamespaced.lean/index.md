# Verification target: Weighted Prime Abel Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74cb5fd35b264c09f8621a7c38bd130d27393855",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74cb5fd35b264c09f8621a7c38bd130d27393855`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeMertens` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeLogInventory](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primeloginventory.md) | 35 | `declaration-track:ec2ec4fc395dbfa9e7726c259fc3284d9dc52a651e3995ed59509de0205a549d` |
| 2 | `def` | [primeLogPrefix](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogprefix.md) | 39 | `declaration-track:0d4e9fabaa254ba81eaa0e48d739115da3930da9916aeeb783b0186402cf4699` |
| 3 | `def` | [primeLogSum](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogsum.md) | 42 | `declaration-track:3d85b914cb0f0ac6ce88e978198eaaf5b0cbea39b80dcc51fdcc6b864531748d` |
| 4 | `def` | [primeLogWindow](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogwindow.md) | 46 | `declaration-track:c1c8d0155da8bb8af77ddbebeb4e6847b1a170e492549a0769abadf0e9b034e5` |
| 5 | `def` | [primeLogError](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogerror.md) | 49 | `declaration-track:ba8dc492408974c9b4b4519142f4123a5676f1ae48914d37598f15ae337077ed` |
| 6 | `theorem` | [primeLogPrefix_eq_sum](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogprefix-eq-sum.md) | 51 | `result-track:a8ab05ce172d0497aeee1ebf72a71bfc793e85abc333ab3f9c8f6aa45f128fbe` |
| 7 | `theorem` | [primeLogInventory_filter_log](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primeloginventory-filter-log.md) | 55 | `result-track:6b72cb3d18a0bdc7935a5f64037c349457b60bde47b15cd54a852019b1bff89e` |
| 8 | `theorem` | [primeLogPrefix_eq_steps](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogprefix-eq-steps.md) | 68 | `result-track:71f1bc6dfad0a52ef2988c84cc42de537369214ed40412caba2893996a22cd78` |
| 9 | `theorem` | [primeLogInventory_log_bounds](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primeloginventory-log-bounds.md) | 73 | `result-track:9396f316858a0a2b7c3eecec63846cda96433cff590a3bc44823b3e1dd3e650b` |
| 10 | `theorem` | [primeLogPrefix_zero](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogprefix-zero.md) | 81 | `result-track:69500a43a002c8f9c6cae1ef622e913607b4c1a81625e326cb10d8a48e6594ca` |
| 11 | `theorem` | [primeLogError_uniformly_bounded](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogerror-uniformly-bounded.md) | 84 | `result-track:f0b83eca1e02d1548ff90d216aacaa8ff45daad48a7e6bece493431b9a9c159d` |
| 12 | `theorem` | [primeLogPrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogprefix-mul-deriv-intervalintegrable.md) | 91 | `result-track:40f52abea3daddacdd8fbd0a6391b33b6db917e969df43392ff3969800b84a1c` |
| 13 | `theorem` | [primeLogSum_abel](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogsum-abel.md) | 118 | `result-track:7d6904e82c151b818d152cc743e117150d0144d7a554b2f05107203e698dc400` |
| 14 | `theorem` | [primeLogWindow_abel](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogwindow-abel.md) | 142 | `result-track:bdf23702ec6c1700326751b81c60a4837698d942962db0ea93c8e9415d3252fc` |
| 15 | `theorem` | [primeLogWindow_eq_filter](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogwindow-eq-filter.md) | 153 | `result-track:7ccb8d2c58f52be0c8ec9c1d0ba28cae2425a43df648668eba14a09e052addc8` |
| 16 | `theorem` | [primeLogWindow_eq_interval_sum](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogwindow-eq-interval-sum.md) | 166 | `result-track:3ae626e0cebb4c0b5955069651e4282e4bcd044c08e49763ce08bdd2ff24b87b` |
| 17 | `theorem` | [primeLogError_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogerror-mul-deriv-intervalintegrable.md) | 181 | `result-track:a91997668b92315b36a743873f0cbe3c4bbc93cae0589c98a2f328d273058b22` |
| 18 | `theorem` | [primeLogWindow_sub_integral](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogwindow-sub-integral.md) | 189 | `result-track:4d60b7954dc90293264a182176356c4f730cd99b658ab79a65ff874c691cde7d` |
| 19 | `theorem` | [primeLogWindow_error_le](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogwindow-error-le.md) | 213 | `result-track:5a0b2a0d8817192d0551ff915435c38cbeffaecb25475d578995342cca487e3e` |
| 20 | `theorem` | [primeLogWindow_uniform_error_le](../../../../MeasureAndIntegration/WeightedPrimeAbelNamespaced.lean/declarations/primelogwindow-uniform-error-le.md) | 247 | `result-track:90d0c38f03d8e8f0f178064394e1cc73ed0d7d8c3c7b2a0f6ff7d2ee646d8819` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=207ed4727834123a013462e729d03da9fdfd9669bf9109dcbd1952fe6ad9f33c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/WeightedPrimeAbel/Variant9c516dfa751ba852d2d717f830a61291d9a7dd1a27a250396b6dde2e1236cfc0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
