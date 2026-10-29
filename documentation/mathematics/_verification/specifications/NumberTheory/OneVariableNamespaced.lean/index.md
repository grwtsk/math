# Verification target: One Variable Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "072154c19cf3bf6cd3a674365081345466066c6b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant68a1460630c342737be6f43363105e283f2ce4ee9e81825300630bfc93ebfba7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/OneVariableNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/OneVariableNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `072154c19cf3bf6cd3a674365081345466066c6b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant68a1460630c342737be6f43363105e283f2ce4ee9e81825300630bfc93ebfba7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/OneVariable/Variant68a1460630c342737be6f43363105e283f2ce4ee9e81825300630bfc93ebfba7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.JacobiTheta.TwoVariable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.MoebiusAction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiTheta](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/jacobitheta.md) | 33 | `declaration-track:f2ee3787cb1fe1a444e8c2ea578818397c6fbe5bb9092688473b636448a885c2` |
| 2 | `lemma` | [jacobiTheta_eq_jacobiTheta₂](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/jacobitheta-eq-jacobitheta.md) | 35 | `result-track:c065e9190a2ff7548d78182fab8788752a511d3cd4c4baea9562edf1220e4a6f` |
| 3 | `theorem` | [jacobiTheta_two_add](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/jacobitheta-two-add.md) | 38 | `result-track:e33d77907be98feea45d07e7ca607a11549d50d7b52efe80a7b098679f5e2d60` |
| 4 | `theorem` | [jacobiTheta_T_sq_smul](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/jacobitheta-t-sq-smul.md) | 41 | `result-track:7c090c3966ebd70154e809b3c8b77c749e50fb3728413d45c7feffcc52bc9286` |
| 5 | `theorem` | [jacobiTheta_S_smul](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/jacobitheta-s-smul.md) | 47 | `result-track:5227ba50a262a3c99fca960eb53fb7dcac0671426075c3db8d1b5ac0c7bd30a2` |
| 6 | `theorem` | [norm_exp_mul_sq_le](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/norm-exp-mul-sq-le.md) | 59 | `result-track:6cd2c5e21278e4d31d615cbf97366bcc5a276afe4cf6bafe2bad363bd1ae873f` |
| 7 | `theorem` | [hasSum_nat_jacobiTheta](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/hassum-nat-jacobitheta.md) | 75 | `result-track:475775ca0cfd15e03651af2b8fa6f597eb87e11ec8a375d7b9b5ca558c4f85a5` |
| 8 | `theorem` | [jacobiTheta_eq_tsum_nat](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/jacobitheta-eq-tsum-nat.md) | 88 | `result-track:2426640f0cf6e18f8fabc767b1e85607f769b5a3996b3f1d4f4c038ab9fb445d` |
| 9 | `theorem` | [norm_jacobiTheta_sub_one_le](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/norm-jacobitheta-sub-one-le.md) | 94 | `result-track:04c51a0ecba1ff0bfac9e78373c3687d2a335adb048179f86a3fb2f338bb711a` |
| 10 | `theorem` | [isBigO_at_im_infty_jacobiTheta_sub_one](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/isbigo-at-im-infty-jacobitheta-sub-one.md) | 116 | `result-track:ed90ba4bb108944308ef3a2c512112d7f45b89822eaaed0c30abc1a30a4f8f8a` |
| 11 | `theorem` | [differentiableAt_jacobiTheta](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/differentiableat-jacobitheta.md) | 125 | `result-track:1cefc20de102c8918a754c278ab749aa4851d1b0825b7761e90de7675d5cc41d` |
| 12 | `theorem` | [continuousAt_jacobiTheta](../../../../NumberTheory/OneVariableNamespaced.lean/declarations/continuousat-jacobitheta.md) | 130 | `result-track:f8b94c4477d5ee7bc70d50988b51b68e3756854bd63264e24e8519ce5dc03f0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd110f821a87b2fa6b91f16042c62f024015fd35bfe5ded88dcc1134ef005bfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/OneVariable/Variant68a1460630c342737be6f43363105e283f2ce4ee9e81825300630bfc93ebfba7.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/OneVariable/Variant68a1460630c342737be6f43363105e283f2ce4ee9e81825300630bfc93ebfba7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
