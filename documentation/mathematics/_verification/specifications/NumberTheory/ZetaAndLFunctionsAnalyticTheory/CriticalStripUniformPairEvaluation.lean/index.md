# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59bb7e8bf16418be5f177784f38ac718bc4cd3a1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59bb7e8bf16418be5f177784f38ac718bc4cd3a1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformFiniteC1`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformFiniteC1.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluatedPair`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalEvaluatedPair.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_le_of_band](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/norm-le-of-band.md) | 29 | `result-track:f14ea470d0e739be1f0169184912cf74e22948503ec60f59f864314c258b572f` |
| 2 | `def` | [finiteEnclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/finiteenclosure.md) | 36 | `declaration-track:d1c681ae0740ec76609c473e38d67d45deaf9e7a9da1444f6c73be9c53a26061` |
| 3 | `def` | [sourceEnclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/sourceenclosure.md) | 49 | `declaration-track:a7c2a3b84965ee5da578f6e58c0b025c2245b52748fd25380e28b0884e36a65e` |
| 4 | `def` | [totalBudget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/totalbudget.md) | 55 | `declaration-track:c892c5b20cf812ee01ee8394eb1408b786fefe3ffc37f7cba7bdfc44a80700ac` |
| 5 | `lemma` | [sourceEnclosure_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/sourceenclosure-budget.md) | 59 | `result-track:c0840f1188a60cb3d1753777a5e0aaed2eb86e5464c102459fada6a4563d15f1` |
| 6 | `theorem` | [finite_channel_errors](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/finite-channel-errors.md) | 65 | `result-track:557ab56f398381086f59a479719e9c49db2d8d6bc1c3d784a1a899ee31f79c9b` |
| 7 | `def` | [witness](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/witness.md) | 73 | `declaration-track:e15ac4b6a3801eba85fedb37b2cc4bd0182453c75cc35e603dde680b73b8dbd4` |
| 8 | `def` | [check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/check.md) | 86 | `declaration-track:d01faba4304263e01b82f43dfedf49cc0798dc98c3dafd8190bd77256584936d` |
| 9 | `lemma` | [check_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/check-iff.md) | 89 | `result-track:60cc166ddf42277d71b1a2f2e00922b4b02dcb8bb6ba5334d5daff9f473aed60` |
| 10 | `lemma` | [centers](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/centers.md) | 94 | `result-track:e5859e66222d3494e02f57d2f96546ac7c3c62d8956d7c82b91bd847638e2887` |
| 11 | `lemma` | [source_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/source-valid.md) | 108 | `result-track:493a9e762de73e4275ef75ab791357ce3221894612d6d557c495463d2ae45bb5` |
| 12 | `lemma` | [evaluation_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/evaluation-valid.md) | 117 | `result-track:78a1ed5eb51905e4d432e567399ab2e39b7daf1b6ceecdd2fa96b1fa8d83397b` |
| 13 | `lemma` | [weight_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/weight-valid.md) | 127 | `result-track:0fe2a2e98b0f5ea5ac76d30cf33aeaa52fb67714ef870dc2981ddb8f1537b3e7` |
| 14 | `theorem` | [not_target](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/not-target.md) | 136 | `result-track:c17f035b123fded9b422aad7768e87f17225ad5ada48b1338c1ee688994027f3` |
| 15 | `theorem` | [window_successor_of_uniform_margin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripUniformPairEvaluation.lean/declarations/window-successor-of-uniform-margin.md) | 150 | `result-track:5b312da44690cb5f84576416d511b71a6d55a29976a4371ba9ccb50c55a08dd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b0c9829f54c1b530bac0a7fbba5d950297354a3935b50e7657e8f291cb0462e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
