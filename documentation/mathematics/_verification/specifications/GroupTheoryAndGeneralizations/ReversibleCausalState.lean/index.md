# Verification target: Reversible Causal State

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ccf577090d83b9b11228ce4649120cbba87c1f8",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ccf577090d83b9b11228ce4649120cbba87c1f8`.

Source path: `GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ReversibleCausalState/Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReversibleSystem](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/reversiblesystem.md) | 23 | `declaration-track:1712cc8b536579662e29b1f36b28f8d648f467a8f5015a1291671e2bc5a41c4d` |
| 2 | `def` | [ForwardCausalEquivalent](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardcausalequivalent.md) | 35 | `declaration-track:8af4db23dc979408142500ec895b55c0036dac6149d8feac610c737c1e7b1f05` |
| 3 | `def` | [BilateralCausalEquivalent](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/bilateralcausalequivalent.md) | 43 | `declaration-track:74bb2abc84ad2d277fa9eb6811e4748cebd9ac08d8b46c42581e6220187e0e15` |
| 4 | `def` | [forwardSetoid](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardsetoid.md) | 52 | `declaration-track:4b065d2d619d35f27465ab45d375402812682b044706ef43ef0e283e7184be0b` |
| 5 | `def` | [bilateralSetoid](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/bilateralsetoid.md) | 62 | `declaration-track:3a988ee67ae0a133e70fc93832eeb869c9cdefe26bb04684addeed845f6ce700` |
| 6 | `def` | [ForwardCausalState](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardcausalstate.md) | 82 | `declaration-track:b43e587569cd0133f2e1fb92758ab78f3e21b0fa896b667d0e2114c861e6379d` |
| 7 | `def` | [BilateralCausalState](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/bilateralcausalstate.md) | 87 | `declaration-track:22b4bce45c04c9532617f06346cb764e667d5798f5865b1ab1692033953bd8e0` |
| 8 | `def` | [toBilateral](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/tobilateral.md) | 92 | `declaration-track:4613842d236b206c2328a10e3e22734c8a465ad34facf0612a1c1a179b9033c8` |
| 9 | `theorem` | [bilateral_step](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/bilateral-step.md) | 97 | `result-track:8de0f4529484c0240ee3ef9d0177c7a3c69919a42fd299c110e33ac3e78ec9f3` |
| 10 | `theorem` | [bilateral_step_symm](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/bilateral-step-symm.md) | 112 | `result-track:03c4594f766ec455fb748ed2492980d81e538b59b9a768c3a22ecd9b149d95ff` |
| 11 | `def` | [bilateralStepPerm](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/bilateralstepperm.md) | 128 | `declaration-track:3cc77a22eacb97b8f8ce46e75e86d74212c45e6e255498d0d47e6413e278b99b` |
| 12 | `theorem` | [bilateralStepPerm_toBilateral](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/bilateralstepperm-tobilateral.md) | 147 | `result-track:f85be71dc5682167ff75d0c959cdffcee0427c4e62e79f8916f5be910a8990c2` |
| 13 | `def` | [bilateralObserve](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/bilateralobserve.md) | 155 | `declaration-track:e9bcf9640b3f69a9abf0ab595816085595460e27dce248126066861b197112ea` |
| 14 | `theorem` | [bilateralObserve_toBilateral](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/bilateralobserve-tobilateral.md) | 164 | `result-track:a6a2950b78042cacf7ea20c50e1e8a2e1de4cebbc56b83ed9389b0168444aff5` |
| 15 | `theorem` | [forward_eq_bilateral_of_pow_eq_one](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forward-eq-bilateral-of-pow-eq-one.md) | 175 | `result-track:02a8bc17b9846e36a2b1128d8989c9e64d55cf8a359baa449fa4db8d4dcda159` |
| 16 | `def` | [forwardCausalStateEquivBilateralOfPowEqOne](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardcausalstateequivbilateralofpoweqone.md) | 218 | `declaration-track:d7215b30fb64108ef0ff0241ed55655e4e1ea460429da4e23d0d9ff84c9f0662` |
| 17 | `theorem` | [forwardCausalStateEquivBilateralOfPowEqOne_mk](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardcausalstateequivbilateralofpoweqone-mk.md) | 249 | `result-track:5f418ebc13fa5df1267fb9080f7def357324aae5ca09ca8f5adf0f852fc76c85` |
| 18 | `def` | [forwardStepPermOfPowEqOne](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardsteppermofpoweqone.md) | 265 | `declaration-track:ec81e7c955d30b6468a21411a5b71bd9e7b4ddd813880520c80a7655bb698f11` |
| 19 | `theorem` | [forwardStepPermOfPowEqOne_mk](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardsteppermofpoweqone-mk.md) | 276 | `result-track:24e21071600d0c26203e30dd8748611186a94925231646a10e504a36e6aa6e99` |
| 20 | `theorem` | [forward_eq_bilateral_of_finite](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forward-eq-bilateral-of-finite.md) | 288 | `result-track:f94a40d50277bbd63c98c9bddb69d07c341536de522401d23ea63850d813da8d` |
| 21 | `def` | [forwardCausalStateEquivBilateralOfFinite](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardcausalstateequivbilateraloffinite.md) | 297 | `declaration-track:9b3c4bccd42fa5e25c6ca4fc38a41587665674220892b49c605154d33779f9f6` |
| 22 | `def` | [forwardStepPermOfFinite](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardsteppermoffinite.md) | 306 | `declaration-track:8aaaafa1647e6f9734cbe4718560639f2a074c0c53103fff0b84b83b24874cfe` |
| 23 | `theorem` | [forwardStepPermOfFinite_mk](../../../../GroupTheoryAndGeneralizations/ReversibleCausalState.lean/declarations/forwardsteppermoffinite-mk.md) | 315 | `result-track:8287253ea6a32d8360499dc03a56d60f48e77be0f2b49fc9b8e84a3dc60d5c65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35599c99c89778c357abd538973bf34275d4ab9301fd8290d88126bf439e7e6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ReversibleCausalState/Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
