# Verification target: Finite Boolean Derivative And Field Data Identity Avalanche Counterexample

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f484e31c2de033034deb5279482b05fec7ab924",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/IdentityAvalancheCounterexample.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/index.md) · [Full source](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f484e31c2de033034deb5279482b05fec7ab924`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/IdentityAvalancheCounterexample.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/IdentityAvalancheCounterexample.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Reduction.SAT` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 30; external provider; requires a separately pinned dependency.
- [Marginal Balance Scores](../../../../ProbabilityTheoryAndStochasticProcesses/MarginalBalanceScores.lean/index.md) — import line 32; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [identity_bijective](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-bijective.md) | 74 | `result-track:cae54ec0b66d31e2dbec2d4b1e74820f229237e3750761becd380e3aa15943cc` |
| 2 | `theorem` | [identity_bitDerivative](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-bitderivative.md) | 79 | `result-track:07e356b80ba486f4339ad8dd62542619ba4860cf70091269460055b3f19358c3` |
| 3 | `theorem` | [identity_sacCount](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-saccount.md) | 85 | `result-track:0b7e4767a560334247787a013b2123a116e805d176e0d6dd39ba4542cf1f64c1` |
| 4 | `theorem` | [identity_sacEntry](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-sacentry.md) | 97 | `result-track:e54d204e4ab17256eeb5e683a5c6fa41b5beb604867d0f17f0e5106f8dfa97de` |
| 5 | `theorem` | [identity_sacScore](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-sacscore.md) | 106 | `result-track:3d4ea0cf6f71008dd26cee6de8f650d0c8f0d21f5f524aee61c65b40dc678845` |
| 6 | `theorem` | [identity_varianceScore](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-variancescore.md) | 120 | `result-track:080cfa0264bec1f1582c3c43b9386b38957c19878e858a54850e75c512907fcf` |
| 7 | `theorem` | [exists_bijective_with_zero_avalanche_scores](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/exists-bijective-with-zero-avalanche-scores.md) | 129 | `result-track:ac07b6d3d75d70e78c852d0c3df7d29d398eb6a4f3271aac7061b8dbe434c41c` |
| 8 | `theorem` | [identity_localJacobian](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-localjacobian.md) | 136 | `result-track:332452cf71eb1ac1504b4b8bb09bb3846aad48f1534f1ccd06bf96e0a561b605` |
| 9 | `theorem` | [identity_localJacobian_const](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-localjacobian-const.md) | 144 | `result-track:73fe2696ba89752a6ca20f6d6fb4b16430c3dd405a2f0135d2e2fe1e65460855` |
| 10 | `theorem` | [identity_jacobian_effectiveStates_eq_singleton](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-jacobian-effectivestates-eq-singleton.md) | 149 | `result-track:7daad8e31db32b73409a1a84e2d78b6e2aecf30f3ae11272aed62d2ddb88c5ac` |
| 11 | `theorem` | [identity_jacobian_effectiveStates_card](../../../../Combinatorics/FiniteBooleanDerivativeAndFieldDataIdentityAvalancheCounterexample.lean/declarations/identity-jacobian-effectivestates-card.md) | 167 | `result-track:2d1f14668e734e539e90a9593cca17f35ccf65d8d64a8f4bac387992ed9b656d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d39937678355f822b5385aee4e8d91119508847cdc4e6b4a0fd9dfeda11a7d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/IdentityAvalancheCounterexample.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/IdentityAvalancheCounterexample.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
