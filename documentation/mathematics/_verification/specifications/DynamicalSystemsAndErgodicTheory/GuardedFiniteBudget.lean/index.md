# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d3f4f339e079b69883fca2ed763e26109b3bfd8",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d3f4f339e079b69883fca2ed763e26109b3bfd8`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ControllerPolicy](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/controllerpolicy.md) | 33 | `declaration-track:319724fd6a8cda32fee94233bc7733225a801d8a56a887263eebd051570049ed` |
| 2 | `structure` | [EffectReceipt](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/effectreceipt.md) | 43 | `declaration-track:aec1862e5afe2d69a67936a71298973b279148166de547814ccb7719b2f941d9` |
| 3 | `structure` | [ControllerState](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/controllerstate.md) | 52 | `declaration-track:fd549e280fd6aa65d25e595a9d56fdcf56f9e8fc36e41cfa43e64e1b485dc344` |
| 4 | `structure` | [ControllerProposal](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/controllerproposal.md) | 66 | `declaration-track:2571bfcd3db51d7f9485974d550cf5f73fa32eb0ef949e528c03a9a21a92830f` |
| 5 | `def` | [ReceiptValid](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/receiptvalid.md) | 85 | `declaration-track:065629483d4a8ea1bc58175ed57bd2c7df8e8ac9c7650d15b2b1494bc7f144ca` |
| 6 | `structure` | [Safe](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/safe.md) | 91 | `declaration-track:aa8532855587a3c46eef426abd373b74e919b8b05b1bf3598620d16d0008e85e` |
| 7 | `def` | [initialState](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/initialstate.md) | 103 | `declaration-track:818e6a9c684838f67f22bd4b25a790ce0db696f428ae381732dbbb1091310f68` |
| 8 | `theorem` | [initial_state_safe](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/initial-state-safe.md) | 114 | `result-track:cec43288958bcce4484002063b0612dbe5a2e611f3a93d23523f35d3ab327dd0` |
| 9 | `structure` | [Guard](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guard.md) | 130 | `declaration-track:a95041d8c0b6b10364fe1d0713fa58d29d3bad120e88057773767e28d259918e` |
| 10 | `def` | [update](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/update.md) | 144 | `declaration-track:cd9b8eafb43ccb982e0fa97f934487c46394fb91d9486201ee167248fa945664` |
| 11 | `def` | [GuardedStep](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guardedstep.md) | 157 | `declaration-track:5de0ee13f8a40acdda40fb916cd8ce3cdfd025836ad906e6768568393e52aa9b` |
| 12 | `theorem` | [update_source](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/update-source.md) | 160 | `result-track:d49606cae6c8a250457b8e0aca96628678e135ad7fee2f0870fb96db7d32043a` |
| 13 | `theorem` | [update_issued_mono](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/update-issued-mono.md) | 163 | `result-track:9ca4bddb786587cbd03bd8bd5e77f3054d83b1c117b42696d18ff2e2fa6079ae` |
| 14 | `theorem` | [update_verified_mono](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/update-verified-mono.md) | 166 | `result-track:654debddc19643c7666bef11923b2a941f404b9b71656ec6249373481c403e97` |
| 15 | `theorem` | [update_retains_pending](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/update-retains-pending.md) | 171 | `result-track:67b18ca79cf052b94b6c85c8944373f167ec36af08061424b204461cc2b614b7` |
| 16 | `theorem` | [guard_preserves_safe](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guard-preserves-safe.md) | 180 | `result-track:5cfc822177d59ef0d1df2dd7f1b3f105eb3359370000142d3e6fca1a21399a31` |
| 17 | `theorem` | [guarded_step_safe](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-step-safe.md) | 220 | `result-track:c286e71ebb58a3ac048a407b6d73161b1512b03fe3f363bd56aee3c3b5b796f4` |
| 18 | `inductive` | [GuardedSteps](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guardedsteps.md) | 227 | `declaration-track:84dff2aea06cb4edcd36926c01c428b864b6772bac42f6c6fa579219596b603e` |
| 19 | `def` | [GuardedReachable](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guardedreachable.md) | 232 | `declaration-track:cfbf35e397713bd2b663e69047ecd69022566c6f981ac8589e17ad87daef5f94` |
| 20 | `theorem` | [guarded_steps_safe](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-safe.md) | 236 | `result-track:bf602ed24b87c69ab7c3da1477d1a6d3da31987c0e513c95d5269f48e197bdca` |
| 21 | `theorem` | [reachable_safe](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/reachable-safe.md) | 243 | `result-track:9d9a1e548f6d9bcbc0b7e21eb9b337c803036db57c827945cdfd1f7cb49f8ab8` |
| 22 | `theorem` | [guarded_steps_issued_mono](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-issued-mono.md) | 249 | `result-track:05846d77ac10a98e02d2aab477e7dc8668475f0643c3620458165c271671f3ef` |
| 23 | `theorem` | [guarded_steps_verified_mono](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-verified-mono.md) | 257 | `result-track:741dbb832d0b2f4dfbc0b04e5c0bfaaa1c23d0c7bfd12f39b73af6279d4a9b68` |
| 24 | `theorem` | [guarded_steps_retain_pending](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-retain-pending.md) | 267 | `result-track:0312609ea305a24ebca5083b55486b1febf1d64897b439e586ce4acfa933768f` |
| 25 | `theorem` | [reachable_obligation_retention](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/reachable-obligation-retention.md) | 280 | `result-track:ccf8910686e9139712220b3d2f1f7fb7d8fb993d0e601768fcd4daf730c756a6` |
| 26 | `theorem` | [guarded_steps_source](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-source.md) | 289 | `result-track:7dd0a1bbbeadc99697b2cab4dcf500608c5159d1b283ef7a810a66f20b16f7da` |
| 27 | `theorem` | [guarded_steps_lift](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-lift.md) | 299 | `result-track:e9d8f238b72fbc6f63207186c6feba8b89862acf01979857fedcae36b05c92e2` |
| 28 | `theorem` | [guarded_steps_checkpoint](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-checkpoint.md) | 308 | `result-track:953fa36bb9ac47bc8293ce77b06cf9f62f5871761d697d682c3748d6e4ef8737` |
| 29 | `theorem` | [guarded_steps_receipts_append](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-receipts-append.md) | 317 | `result-track:21e498b7625b07965f1d70d542956392f9517196335ef9492bce0c6c6a03cc58` |
| 30 | `theorem` | [guarded_steps_budget](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-budget.md) | 330 | `result-track:e99350cb2ff8cec4c5e4a2e476d1deedf6702d4a0995172fe50b432ec57b51d1` |
| 31 | `theorem` | [guarded_steps_length_le_budget](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/guarded-steps-length-le-budget.md) | 341 | `result-track:d454a37b210a498f7a4fae11b2177f61b284af0addf8b2d4aa4e479d74242ea0` |
| 32 | `theorem` | [no_infinite_guarded_trajectory](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/no-infinite-guarded-trajectory.md) | 348 | `result-track:7402bae101ff51f2d8b3e66f23f7b97a0e809a462ff702fd70e430651dcfb9ff` |
| 33 | `theorem` | [unproved_obligation_blocks](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/unproved-obligation-blocks.md) | 362 | `result-track:97c630a18ee0431daf1b0e3b093d82ea2efde27415304544b654b4f3802b53ce` |
| 34 | `theorem` | [unauthenticated_effect_blocks](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/unauthenticated-effect-blocks.md) | 367 | `result-track:36262d1e03c85998d94d43e18d4df466985cacf9b832e670ab76fc57ffddd39d` |
| 35 | `theorem` | [unauthorized_effect_blocks](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/unauthorized-effect-blocks.md) | 372 | `result-track:550a4888075912eeb375ded181c63c72fb24a3438ce3f56f809c6ef7774fcc3e` |
| 36 | `theorem` | [forbidden_surface_blocks](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/forbidden-surface-blocks.md) | 378 | `result-track:08509eb9a8aa52ac9284143b6da8e8f5e2da54f6bb9b5a0d5dc9e2c1424b17de` |
| 37 | `theorem` | [changed_source_blocks](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/changed-source-blocks.md) | 384 | `result-track:85cf81b8c96aa22dd98551cf69a70a789e5094ca172c404de28e155d62108adb` |
| 38 | `theorem` | [exhausted_budget_blocks](../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/declarations/exhausted-budget-blocks.md) | 389 | `result-track:209f43f4d1f97f62c8e8665f9b7b36d7699c44706339911bb811490c96ec73bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f7d773b185e9d482e48f384d5c3f0c51cfe1958998730b542fd7d4b47090ae8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
