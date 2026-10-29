# Verification target: Jacobi Theta Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "784ecab95ef493db2cd246f0ba7e6b0a2555bccf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/JacobiThetaBounds.lean/index.md) · [Full source](../../../../NumberTheory/JacobiThetaBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `784ecab95ef493db2cd246f0ba7e6b0a2555bccf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.JacobiTheta.TwoVariable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isBigO_exp_neg_mul_of_le](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/isbigo-exp-neg-mul-of-le.md) | 45 | `result-track:9c7f2e9983a17343dbf976e9683b8d8396e2da5e8bec5923bd130f6f70270cd3` |
| 2 | `lemma` | [exp_lt_aux](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/exp-lt-aux.md) | 51 | `result-track:df41143f1aafa5df7a676fa69d235e486db1974807226770646d8e80362ee1e3` |
| 3 | `lemma` | [isBigO_one_aux](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/isbigo-one-aux.md) | 54 | `result-track:3bda38834f574c4ff9c41fe9b7bfa7232a07e0a41235e3c3528577ddfe0ab20c` |
| 4 | `def` | [f_nat](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-nat-source-edition-2.md) | 66 | `declaration-track:34b158660212606d1886ae95ba05021d65888ea4fdae2d22ca1ff018aa628e8f` |
| 5 | `def` | [g_nat](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/g-nat.md) | 69 | `declaration-track:1b9c2cbf3329c9d23790ae6582d5c2493d7209e8268d036c5cf0e09ad8ce8b6d` |
| 6 | `lemma` | [f_le_g_nat](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-le-g-nat.md) | 71 | `result-track:475a06439cff350f8e5a2794450340685d3ff214622f5692ea9f8bd737f143b7` |
| 7 | `def` | [F_nat](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-nat.md) | 83 | `declaration-track:1198b4e00ceb75ba67ed02006943cb2417476c5a7ddeab7ed84ecec7c579fb61` |
| 8 | `lemma` | [summable_f_nat](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/summable-f-nat.md) | 85 | `result-track:b22f235c415311293ef4e1feb31a90618bd8e455f16226f29aef95143734e2dc` |
| 9 | `lemma` | [F_nat_zero_le](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-nat-zero-le.md) | 113 | `result-track:43c97527a24285e10a88a78765ac43fee5d7c42e4dfe15753eddf442f92ada50` |
| 10 | `lemma` | [F_nat_zero_zero_sub_le](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-nat-zero-zero-sub-le.md) | 122 | `result-track:74a8e886e8b5c1ebad53656c6263655361667634ab8028d37d5852564a341678` |
| 11 | `lemma` | [isBigO_atTop_F_nat_zero_sub](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/isbigo-attop-f-nat-zero-sub.md) | 130 | `result-track:990ba9b0f1aa7a5b14119a20b3369b330e1d6cc5b2a2fd355edb8d8864d9eef8` |
| 12 | `lemma` | [F_nat_one_le](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-nat-one-le.md) | 158 | `result-track:4b1785899bc2740314c35520e848a730e5cec3acbd2e7d3d438e4459862377ea` |
| 13 | `lemma` | [isBigO_atTop_F_nat_one](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/isbigo-attop-f-nat-one.md) | 177 | `result-track:ba40618597ea060ecd39cbca9856605f34758b4713e6544a6c95c18527cc96f5` |
| 14 | `def` | [f_int](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-int.md) | 207 | `declaration-track:74bf01b471a2acb17b31018520daea0b1f5b7a589c838cd8dc05a45eef443899` |
| 15 | `lemma` | [f_int_ofNat](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-int-ofnat.md) | 209 | `result-track:1229db2d478b6bd6c6a7b98e374d53e002daee019b354ebba154290712ae37cc` |
| 16 | `lemma` | [f_int_negSucc](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-int-negsucc.md) | 213 | `result-track:5b08d56fcedcd0f211d9658b9f58483534d960dda3c191fcd7992f79fa9ffe95` |
| 17 | `lemma` | [summable_f_int](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/summable-f-int.md) | 218 | `result-track:976887771864cd687fedb3bdd69a87db2f26f01029e91fe0c099a606c88e4b68` |
| 18 | `def` | [F_int](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-int-source-edition-2.md) | 231 | `declaration-track:795c2f675c613c5dc1fe82c814d697a6eeded315f36d549c2fa96a2fc9feca48` |
| 19 | `lemma` | [F_int_eq_of_mem_Icc](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/f-int-eq-of-mem-icc.md) | 238 | `result-track:c4d0e1d41f0856ce49e711b41612579e579cbfb252253ad76142af2fa5a4f562` |
| 20 | `lemma` | [isBigO_atTop_F_int_zero_sub](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/isbigo-attop-f-int-zero-sub.md) | 247 | `result-track:4e9a57f0a19deba187723ce9f22f7d4752e5ad78b11c01b16e837e7f15d0ca79` |
| 21 | `lemma` | [isBigO_atTop_F_int_one](../../../../NumberTheory/JacobiThetaBounds.lean/declarations/isbigo-attop-f-int-one.md) | 264 | `result-track:3f5a48196b6914aadadadc4b53d0948ce6da4a33321f613511a8ed976a910133` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf8ac6daa01ba24bab0ba08592594b7729307cc10e4cbfcac3817d26e1c16e6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
