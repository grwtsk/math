# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightPsiCapacityNoGoControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2f89121bee336ed2fc202d99ea5c58aeedb2d83",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiCapacityNoGoControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiCapacityNoGoControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiCapacityNoGoControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2f89121bee336ed2fc202d99ea5c58aeedb2d83`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiCapacityNoGoControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiCapacityNoGoControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiCapacityNoGo`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiCapacityNoGo.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PNTThetaOctaveProfile](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiCapacityNoGoControls.lean/declarations/pntthetaoctaveprofile.md) | 17 | `declaration-track:dfeb56f75b646ec336d338cb7f4477d75680ac9f3771aaa21da412a4877bbbae` |
| 2 | `def` | [ActualPsiCapacityToEnvelopeRecurrence](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiCapacityNoGoControls.lean/declarations/actualpsicapacitytoenveloperecurrence.md) | 30 | `declaration-track:7e3c4f1173629e8076d94bce879e0b93818bfda9aa47303080f42bc8b4cd6203` |
| 3 | `theorem` | [no_fixed_integerPsiCapacity_under_classical_inputs](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiCapacityNoGoControls.lean/declarations/no-fixed-integerpsicapacity-under-classical-inputs.md) | 40 | `result-track:f96968b4181252e5faf1b6d4ac43e012da189ae2639b4710c1627ae16936c278` |
| 4 | `theorem` | [no_integerPsiCapacity_under_classical_inputs](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiCapacityNoGoControls.lean/declarations/no-integerpsicapacity-under-classical-inputs.md) | 60 | `result-track:b230ecccbd74c78facecacbc5a7cc42e3459671b8735402c6e7ca75f9cadedb5` |
| 5 | `def` | [remainingFormalNoGoSuppliers](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiCapacityNoGoControls.lean/declarations/remainingformalnogosuppliers.md) | 75 | `declaration-track:f0f02fc2a5e3ab3d11a4e26efea5419052068cf255e25b803a78a0e7f3f86fb5` |
| 6 | `def` | [prohibitedPromotions](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightPsiCapacityNoGoControls.lean/declarations/prohibitedpromotions.md) | 83 | `declaration-track:620eca8e81f45f176852fc6f6078242e672afd733830e68d85e8f9c794935f2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7eb829e5e3a145278b7b673cc4a691ee558b157309d1053d3d80b5c57f23d040 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiCapacityNoGoControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiCapacityNoGoControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
