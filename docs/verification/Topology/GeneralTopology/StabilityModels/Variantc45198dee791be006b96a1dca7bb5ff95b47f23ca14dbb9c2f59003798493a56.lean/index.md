# Verification target: GRWTSK.Topology.GeneralTopology.StabilityModels.Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90917418bd6b7f627bae5b1ef0e78adbd840c70f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90917418bd6b7f627bae5b1ef0e78adbd840c70f`.

Source path: `GRWTSK/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Contraction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.Lyapunov` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [snapshot](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/snapshot--675c0560a839cf441800eeb9.md) | 34 | `declaration-track:675c0560a839cf441800eeb910dd9d47948e04aff2da5d86814d915eb15f8ada` |
| 2 | `def` | [digest](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/digest--5e41b96ab15a7837c9293600.md) | 46 | `declaration-track:5e41b96ab15a7837c92936008e272ec770110dd404666d40bd752a449ff1ccaf` |
| 3 | `def` | [doublingOperator](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/doublingoperator--08ead5152072a156c47d21df.md) | 49 | `declaration-track:08ead5152072a156c47d21dff19975a93e4a86dc4e1577fdce482133f96a103c` |
| 4 | `def` | [identityOperator](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/identityoperator--aa1fb1a208d053fa88e375f6.md) | 57 | `declaration-track:aa1fb1a208d053fa88e375f6a6d4efe009eb52520fad7c3b091c7b3531f82c53` |
| 5 | `def` | [halfOperator](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/halfoperator--59f0fb8dcaa98b06f3dd9b33.md) | 65 | `declaration-track:59f0fb8dcaa98b06f3dd9b33255dcb75e3a027ffaade638385b186a20b97bb0a` |
| 6 | `def` | [doublingZero](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/doublingzero--e1db18af9041dcbd689d0c68.md) | 73 | `declaration-track:e1db18af9041dcbd689d0c6834e0bde9841ba7729f8b75dcaaa1300ef1cfaadb` |
| 7 | `def` | [identityPoint](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/identitypoint--4ea6d1b6aee57863e4d369dd.md) | 81 | `declaration-track:4ea6d1b6aee57863e4d369dd5862aea2efb23e103101ad6feefe6b2cec264bb6` |
| 8 | `def` | [halfZero](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/halfzero--fd7d0b5a418f0acec68c8e75.md) | 89 | `declaration-track:fd7d0b5a418f0acec68c8e75c1bdc7604c3deb89509721555a817406a2eed1ae` |
| 9 | `theorem` | [doubling_step_value](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/doubling-step-value--ff4907b295c1f67bd055c4a3.md) | 96 | `result-track:ff4907b295c1f67bd055c4a3150d43fde96a3d2a9f19c745815ae1b42dc18754` |
| 10 | `theorem` | [identity_step](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/identity-step--0203a2f02140c1000b69a752.md) | 101 | `result-track:0203a2f02140c1000b69a752fa68de53ba7477af91616f6a51e50f2adf793243` |
| 11 | `theorem` | [half_step_value](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/half-step-value--4840f5fafcc9fa07686f5a07.md) | 107 | `result-track:4840f5fafcc9fa07686f5a073071ab4afb255dc52d016a88fc4ebad8a769887e` |
| 12 | `theorem` | [doubling_iterate_value](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/doubling-iterate-value--eba04ff42b8d6725603ce79f.md) | 113 | `result-track:eba04ff42b8d6725603ce79fd8bb0ca2da546ae35514e6175db07accd3335bc7` |
| 13 | `theorem` | [doublingZero_not_lyapunovStable](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/doublingzero-not-lyapunovstable--dd82e84f8272c437f376bf9c.md) | 127 | `result-track:dd82e84f8272c437f376bf9ca39202d89ecb0e274b3487dbfbcf8023eae8ab74` |
| 14 | `theorem` | [identityPoint_lyapunovStable](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/identitypoint-lyapunovstable--29800d5a85d1413806f238d7.md) | 165 | `result-track:29800d5a85d1413806f238d7d241cf842343d92e558009684afe469714a04da6` |
| 15 | `theorem` | [identityPoint_not_locallyAttractive](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/identitypoint-not-locallyattractive--fff26c0d0974d9b2d31f5ca2.md) | 176 | `result-track:fff26c0d0974d9b2d31f5ca27c4f50c0afe579ce11c0d17e02219f33feb78992` |
| 16 | `theorem` | [half_step_contracting](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/half-step-contracting--dc653ff37c3ed9e24711442d.md) | 211 | `result-track:dc653ff37c3ed9e24711442ddef370a06a9f00864c7372c475c601348b2f6d68` |
| 17 | `def` | [halfZero_lyapunovCertificate](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/halfzero-lyapunovcertificate--3fad82cc7d087cf047a3a44a.md) | 227 | `declaration-track:3fad82cc7d087cf047a3a44a149a1b23037d1fcf4da5593cb4e1e9e01c283f31` |
| 18 | `theorem` | [halfZero_asymptoticallyStable](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/halfzero-asymptoticallystable--d1fc0756ad12fef029f720a2.md) | 268 | `result-track:d1fc0756ad12fef029f720a2b69a89a9bffce318f711ea7e056c065bbf5d4e37` |
| 19 | `def` | [lowResidualObservation](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/lowresidualobservation--7b3fc45e731333daadc9dd2d.md) | 277 | `declaration-track:7b3fc45e731333daadc9dd2db783e7e0740aa275b4e866a75d334d1da8a497c9` |
| 20 | `theorem` | [lowResidualObservation_not_fixed](../../../../../mathematics/Topology/GeneralTopology/StabilityModels/Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56.lean/declarations/lowresidualobservation-not-fixed--17815a55a8431b1b45da9ac9.md) | 291 | `result-track:17815a55a8431b1b45da9ac95e28a553b8c9d7d74109e7afcc50380d28917b60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
