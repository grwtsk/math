# Verification target: Choose Sum Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3aef7e31fff9831f893ada6d540ff00f12d953e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3aef7e31fff9831f893ada6d540ff00f12d953e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Order` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_pow](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/add-pow-source-edition-3.md) | 38 | `result-track:6ecf72dcfe4a9843d3d83a835c1d33660d764c8fe2317b4d36e15eb79a5bf867` |
| 2 | `theorem` | [add_pow'](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/add-pow-source-edition-2.md) | 73 | `result-track:23d36d25d6dd5f949f9405cb455d277916aa86ed60b1da772f0d7cd438ab6566` |
| 3 | `theorem` | [add_pow](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/add-pow.md) | 82 | `result-track:099b585db48b19cfa86bfb812a015275bd71e4a2b6989255eed44dce970e97a6` |
| 4 | `theorem` | [sum_range_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/sum-range-choose.md) | 90 | `result-track:941a10b2ecd4646cfd94046e2bc6ab383b3eb8a04bc2333d8a4bd0977e0bd56a` |
| 5 | `theorem` | [sum_range_choose_halfway](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/sum-range-choose-halfway.md) | 95 | `result-track:bd6f89c517acd35e5d4c36a541b31667afad491cb810fb42047028e505d663cd` |
| 6 | `theorem` | [choose_middle_le_pow](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/choose-middle-le-pow.md) | 119 | `result-track:b4b0a87606cfd540bb202209681a37d7b3624e74d295934123f9579757d71e79` |
| 7 | `theorem` | [four_pow_le_two_mul_add_one_mul_central_binom](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/four-pow-le-two-mul-add-one-mul-central-binom.md) | 125 | `result-track:b33556823e5fc44f5d48914bb8c50a3b9db799f5ef828ec344f5f7e9f61af410` |
| 8 | `theorem` | [Int.alternating_sum_range_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/int-alternating-sum-range-choose.md) | 136 | `result-track:d8820e880f4207a4b17f21e881f19030ba5720a23467b9ecf0027e34df87f639` |
| 9 | `theorem` | [Int.alternating_sum_range_choose_of_ne](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/int-alternating-sum-range-choose-of-ne.md) | 145 | `result-track:db4c54a71166ee1b3c5fbc8000d9684236cfe9e519e7510f46bbfcae3e2d4222` |
| 10 | `theorem` | [sum_powerset_apply_card](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/sum-powerset-apply-card.md) | 152 | `result-track:adb2daf2a2be6c198b6b2099736335a1820b627d242c7c479768b18045a9ce12` |
| 11 | `theorem` | [sum_powerset_neg_one_pow_card](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/sum-powerset-neg-one-pow-card.md) | 166 | `result-track:e7d9305291cc583340791a668edcc0b159a30e30f5723b3f95d28f41f83619d9` |
| 12 | `theorem` | [sum_powerset_neg_one_pow_card_of_nonempty](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/sum-powerset-neg-one-pow-card-of-nonempty.md) | 172 | `result-track:abf4f47293aef00bcc1003ffb215956e9ea3bf68d318cdd01c67b46d7a517ffe` |
| 13 | `theorem` | [prod_pow_choose_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/prod-pow-choose-succ.md) | 184 | `result-track:f8668a32967c8e310f5e8dd862524e6657a6741f7c7983ad574e2639b0003982` |
| 14 | `theorem` | [prod_antidiagonal_pow_choose_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/prod-antidiagonal-pow-choose-succ.md) | 197 | `result-track:6d9522d50cb1e73a6cbd58533ac3c9c58ceb9d7f167f1ace17ea7065d5356998` |
| 15 | `theorem` | [sum_choose_succ_mul](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/sum-choose-succ-mul.md) | 212 | `result-track:cf9ca932dd3ae2c3c676e5307501306658053adbab729b09962a54265ed7317d` |
| 16 | `theorem` | [sum_antidiagonal_choose_succ_mul](../../../../../NumberTheory/ElementaryNumberTheory/ChooseSumSourceEdition2.lean/declarations/sum-antidiagonal-choose-succ-mul.md) | 221 | `result-track:9b81d0ea01ff9dba623dd78c4b51f79fabc437a1e3a1f9f4ec65c5c24c8182e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d64966376eedefbc61f43cb5209c315840e1f0213271680dfdc6f415e0ea048 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sum/Variant858b59b5a5ecef4e91b3c742bff2d89818c81cfcfeb5bf6a304b68219aef3668.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
