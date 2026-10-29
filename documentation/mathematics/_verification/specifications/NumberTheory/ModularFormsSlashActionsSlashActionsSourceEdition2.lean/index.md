# Verification target: Modular Forms Slash Actions Slash Actions Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0367fab1220c515ade50ab2e5ed6d6960ee78fb6",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/index.md) · [Full source](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0367fab1220c515ade50ab2e5ed6d6960ee78fb6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SlashAction](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/slashaction.md) | 32 | `declaration-track:1dfbdddd9bbdf4475db1241bf015597a2849026c2683999c00f6a81ee0e1cfa4` |
| 2 | `theorem` | [SlashAction.neg_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/slashaction-neg-slash.md) | 46 | `result-track:d6d2da7618757ed84460a08da13a1e8af02b228cda9d3f430ebdc802011079fa` |
| 3 | `def` | [monoidHomSlashAction](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/monoidhomslashaction.md) | 54 | `declaration-track:6b9408d33b9e7a28a1825bb54eeb8772d9d5625169bf60c1544c32b7efed30cd` |
| 4 | `def` | [slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/slash.md) | 67 | `declaration-track:b0b16185f0ccc0de58ae2119a5be13d639e2fe0c5446e269ded3dd6b38a1aa37` |
| 5 | `theorem` | [slash_mul](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/slash-mul.md) | 77 | `result-track:6a36cac7f9c7a02150687b1f2e294e8484f1e349abd69cd8c7c9327ccc92bd09` |
| 6 | `theorem` | [add_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/add-slash.md) | 91 | `result-track:bc3da3377fc6f439a8a27f58d4514a0ea0d4f72a4e3e21ff148a00473a314f79` |
| 7 | `theorem` | [slash_one](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/slash-one.md) | 96 | `result-track:f7d98c7b818f7072645d6c7e3718b41425b993bb3bb12ac0b37bb22d5af14e3b` |
| 8 | `theorem` | [zero_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/zero-slash.md) | 99 | `result-track:327cd477d3eb5353fb0127650bfc2a07549891c86ca7fe20504bdb03b8400ee1` |
| 9 | `instance` | [(anonymous)](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/instance.md) | 102 | `declaration-track:0272b7c32e465932cb9084bd41f328dfe79c9025a2aafb855f818c159104f458` |
| 10 | `theorem` | [slash_def](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/slash-def.md) | 111 | `result-track:0fe14b5d065887307a3d715f05b03f6016c575604b2dbb272f55fcbcebcab697` |
| 11 | `theorem` | [slash_apply](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/slash-apply.md) | 115 | `result-track:0ce108ed910d8bf3e3b5ed6a40167f2664796cbc4cef57eab0fee0523e834560` |
| 12 | `theorem` | [smul_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/smul-slash.md) | 119 | `result-track:4d60fd74e2f11711fd112beb6dd28599a16bffab6044780e3f588a316c2da439` |
| 13 | `instance` | [SLAction](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/slaction.md) | 124 | `declaration-track:3ee50f1629523fee6d91836fc6771324d5d47e395047a306eae90e336871635b` |
| 14 | `theorem` | [SL_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/sl-slash.md) | 128 | `result-track:fb6b3cf8b5080b7deb79fc0dfca9d72bf0cac5a1141997cac098545f5f4e3c86` |
| 15 | `theorem` | [SL_slash_def](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/sl-slash-def.md) | 131 | `result-track:56855a835059c50a093d48978b0be7f09fcdb54fa6ee10471f620a62b9f9ddb8` |
| 16 | `theorem` | [SL_slash_apply](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/sl-slash-apply.md) | 136 | `result-track:5e8e20d1e81d53b05b7304a35afc9253d04095d6f4c57823d013538823aa9d95` |
| 17 | `theorem` | [SL_smul_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/sl-smul-slash.md) | 141 | `result-track:48e92fc900cdc2c982bcc3e66da175f907f131b34de434ba2bc29f805dd29a14` |
| 18 | `theorem` | [is_invariant_const](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/is-invariant-const.md) | 147 | `result-track:8b7334f77ea2168fb85e59466d924047062d60fbb56873df63e9a0109af2b895` |
| 19 | `theorem` | [is_invariant_one](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/is-invariant-one-source-line-153-occurrence-2.md) | 153 | `result-track:853f1855e47d0eea6f98acef209538bc346ab6588a46ebc7caa41cdd79d6d5db` |
| 20 | `theorem` | [is_invariant_one'](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/is-invariant-one.md) | 158 | `result-track:6ca903daf259fba8768316e92336a31105d4013411a95e18e118531e59e4ed1d` |
| 21 | `theorem` | [slash_action_eq'_iff](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/slash-action-eq-iff.md) | 164 | `result-track:b4dbe3c75166a5255da728d76eaadc2f1d657273fd05a8668f0db1c241089382` |
| 22 | `theorem` | [mul_slash](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/mul-slash.md) | 172 | `result-track:4145ceef62f36c9efecd7f1d331ae8ac03bb53678e8b3588433048dab2fd2075` |
| 23 | `theorem` | [mul_slash_SL2](../../../../NumberTheory/ModularFormsSlashActionsSlashActionsSourceEdition2.lean/declarations/mul-slash-sl2.md) | 185 | `result-track:5a03c1be99219ce26a9baf41782ecbadaaacfd53fdb53c85071b793bfca6f6fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3cc6c023006b2ed51e8955aa0d53da1f9ad47eea8e4f6aff8e30ec189d25d61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
