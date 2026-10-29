# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaLambdaSigmaBoundaryTanneryControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93cb4339d19b8bf7b6dd514179968ad3ef20a73c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93cb4339d19b8bf7b6dd514179968ad3ef20a73c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaSigmaBoundaryTannery`](../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wienerSigma_zero_arithmetic_term](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-zero-arithmetic-term.md) | 22 | `result-track:aa767f71f3680b481ba7e1e8a71acf3781b631715c10b931dadda2546a9fdfca` |
| 2 | `theorem` | [wienerSigma_boundary_zero_term](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-boundary-zero-term.md) | 29 | `result-track:d3ad8cc9fc28d7191390a2b619680ee83a89164bafb61a01b58f33d0414846a2` |
| 3 | `theorem` | [wienerSigma_boundary_one_term](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-boundary-one-term.md) | 37 | `result-track:1ed734abe9d19deec28a5b52ff0329d256793c3f43b1b4100b534396e07f0530` |
| 4 | `theorem` | [wienerSigma_unit_frequency_at_n](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-unit-frequency-at-n.md) | 45 | `result-track:60a6ec697fc588935c40f00e295a036dc8625becc02766fa8b4788f8bae5e228` |
| 5 | `theorem` | [wienerSigma_boundary_source_exact](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-boundary-source-exact.md) | 55 | `result-track:0e3b14952f001e394156f24db01465ca1f04bf213eaaf70e8cd90839682bfb86` |
| 6 | `theorem` | [wienerSigma_pointwise_source_limit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-pointwise-source-limit.md) | 63 | `result-track:972f56c7942e960ee22a8827a59d4c6d758017f74a2fb06e0952dc9e6daddd6e` |
| 7 | `theorem` | [wienerSigma_schwartz_decay_source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-schwartz-decay-source.md) | 74 | `result-track:b138512463b33f21c24455a84aa1c146c8b017d24d8ef852da786a6da88ead04` |
| 8 | `theorem` | [wienerSigma_arithmetic_kernel_domination](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-arithmetic-kernel-domination.md) | 84 | `result-track:2f350c0db2d2645e9551ed818c597ab9aec3aef39d7a0257d12c17a3b605edd6` |
| 9 | `theorem` | [wienerSigma_actualLambda_tendsto_boundary](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-actuallambda-tendsto-boundary.md) | 94 | `result-track:4e7ddd11999f81c3ed0d94a014eb5e6500b862e1f60e8f84d74acd114efb8c78` |
| 10 | `theorem` | [wienerSigma_boundary_fourier_summable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-boundary-fourier-summable.md) | 107 | `result-track:34a7da89783e065d09366df94f91d256c9b4d381966f82ac7e9369d13f01621d` |
| 11 | `theorem` | [wienerSigma_actualLambda_uniform_absolute_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-actuallambda-uniform-absolute-bound.md) | 124 | `result-track:d873383409a236e360e880710209413f5c746ba3137bc0821963fa978386cef1` |
| 12 | `def` | [wienerSigma_nextProofObligations](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-nextproofobligations.md) | 137 | `declaration-track:e1415f77117c1fd9f6a85e5953233635cfe552eeb625902027e6d9bb3a266f35` |
| 13 | `def` | [wienerSigma_prohibitedPromotions](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean/declarations/wienersigma-prohibitedpromotions.md) | 147 | `declaration-track:56c5fa84c061e6271984bedcc0f834cc08fa30cbdc092d14d5896c46c9107415` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5207b93121832c20777cc4fb487c1223eaf24efe2a7700061ef05e5f37f73a83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaLambdaSigmaBoundaryTanneryControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
