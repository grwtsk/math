# Verification target: Intervals Sum Ico By Parts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49d5a8a6d4616896ad15b3e24b781462d9627140",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant11ec757e9d2e94236d6ec09b901b137364cd02d02ee0b6f9deb54f4f8a7e859b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49d5a8a6d4616896ad15b3e24b781462d9627140`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant11ec757e9d2e94236d6ec09b901b137364cd02d02ee0b6f9deb54f4f8a7e859b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Intervals/Variant11ec757e9d2e94236d6ec09b901b137364cd02d02ee0b6f9deb54f4f8a7e859b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Interval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_Ico_add'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-add.md) | 34 | `result-track:52f34cadd7771ea119f596c5d70e7ccb3d2bd7d8b95b9e60c2692baed4a4d18d` |
| 2 | `theorem` | [prod_Ico_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-add-source-edition-2.md) | 42 | `result-track:cbdb8601a4bf41caab61a01f1b5640dd04273a6a37872decfbb026bdf195ee18` |
| 3 | `theorem` | [prod_Ico_succ_top](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-succ-top.md) | 50 | `result-track:3b0470733dc93f089f0778b35799be2451d610911c226a9dc6617389ded32eab` |
| 4 | `theorem` | [prod_eq_prod_Ico_succ_bot](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-eq-prod-ico-succ-bot.md) | 57 | `result-track:b6eb4c0a563bcd9374cf243933d6d45d98b436118a59ee2c7a3619668d3c7cd6` |
| 5 | `theorem` | [prod_Ico_consecutive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-consecutive.md) | 65 | `result-track:1c3420433f3f9ef0a7b1f0a6634052678e64d2cab62b196afbb9bf7bb8b2a924` |
| 6 | `theorem` | [prod_Ioc_consecutive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ioc-consecutive.md) | 72 | `result-track:dd780b1030ce60a2521fe33cf857a19817ce48421f77972cbeb18eb3e86f5267` |
| 7 | `theorem` | [prod_Ioc_succ_top](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ioc-succ-top.md) | 82 | `result-track:bbe5362901ce526e0e74816d1e0278df90e77cab83440ff1c0621c8dfa325a9a` |
| 8 | `theorem` | [prod_range_mul_prod_Ico](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-range-mul-prod-ico.md) | 89 | `result-track:07186ce8b1883a683327b5731b01cde13573419d5fe96b76167c947f3c3dc695` |
| 9 | `theorem` | [prod_Ico_eq_mul_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-eq-mul-inv.md) | 96 | `result-track:c68fd674d8e83958450757e03ee7b782c7caf03ce0bc0841706bac072b39cfd3` |
| 10 | `theorem` | [prod_Ico_eq_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-eq-div.md) | 103 | `result-track:1df72ec667392b11de9342d71f335c55fa0872d86b943a937a7f8eb6afdb75a5` |
| 11 | `theorem` | [prod_range_div_prod_range](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-range-div-prod-range.md) | 110 | `result-track:c1e70fff1dca1fa89a50b51a77a9c52473a1b1c7934093569cb9ee10a04cb57e` |
| 12 | `theorem` | [sum_Ico_Ico_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/sum-ico-ico-comm.md) | 122 | `result-track:0c58e35266eed1fea47f5386fca46bc5403fc320ab35c3e4cf64170be6f56c55` |
| 13 | `theorem` | [prod_Ico_eq_prod_range](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-eq-prod-range.md) | 137 | `result-track:bff88bb80c454ce39944d4b4b345e7c8f4b5d6ce06222b4677e54f1bc9307301` |
| 14 | `theorem` | [prod_Ico_reflect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-reflect.md) | 146 | `result-track:ad9ee0de9b3850befe0dd0db571c14d07c1d9052ff4262a2e375d42641ac0210` |
| 15 | `theorem` | [sum_Ico_reflect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/sum-ico-reflect.md) | 164 | `result-track:dd2cb7c5a81d00948043fec156fe8fb1070a57bb92c557dd94b9ebc0c03d89e9` |
| 16 | `theorem` | [prod_range_reflect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-range-reflect.md) | 169 | `result-track:438e142c6294f9d4368e1b8203c44bc7b28e68c01957ed13b34c379b1d83134d` |
| 17 | `theorem` | [sum_range_reflect](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/sum-range-reflect.md) | 178 | `result-track:b7cd3aca7e775cfd4a700de0ae3a96a844f6750b4315ea376ffa7e0c8a75c14a` |
| 18 | `theorem` | [prod_Ico_id_eq_factorial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-id-eq-factorial.md) | 184 | `result-track:5ea3a6db76349864ef49d6a71c233681d2045720a9fbb964311a5a4c7de4a536` |
| 19 | `theorem` | [prod_range_add_one_eq_factorial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-range-add-one-eq-factorial.md) | 192 | `result-track:acafbac7f85be76b4cc50b6e2d3b98e4a04f6fac213e20c45c823c3d46071e30` |
| 20 | `theorem` | [sum_range_id_mul_two](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/sum-range-id-mul-two.md) | 200 | `result-track:eb0c01d13efff9943b776e8a9f26393b7fdf855593b65d6e6f58be4682fd0131` |
| 21 | `theorem` | [sum_range_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/sum-range-id.md) | 211 | `result-track:cb20db6db00980632d82ebab751a015ad1657622ddc8f15cb574d9e2388e57c0` |
| 22 | `theorem` | [prod_range_succ_div_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-range-succ-div-prod.md) | 230 | `result-track:755d5438f2d6cdac3ea25ef680c4c26943849d857dd643ecf4232eadc4c70684` |
| 23 | `theorem` | [prod_range_succ_div_top](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-range-succ-div-top.md) | 236 | `result-track:717d55b75f62aa9dd4f91f165457493a049ed87bb30d224a8c13e3298f495c7b` |
| 24 | `theorem` | [prod_Ico_div_bot](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-div-bot.md) | 242 | `result-track:460949c4f1976be44f28c2aebfd518914da4bf7af9f631ed9f6e7b05be514f8c` |
| 25 | `theorem` | [prod_Ico_succ_div_top](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/prod-ico-succ-div-top.md) | 248 | `result-track:3874839a31a666ecbd43cba6b93795232e615331eb07f2e53df6cb21a7a209f8` |
| 26 | `theorem` | [sum_Ico_by_parts](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/sum-ico-by-parts.md) | 268 | `result-track:803eb103c5a981f8078b5d11017fa0c29eaca3a2f9a2ddd0bc3ce943ff32944e` |
| 27 | `theorem` | [sum_range_by_parts](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IntervalsSumIcoByParts.lean/declarations/sum-range-by-parts.md) | 310 | `result-track:ae6d406cecc4b50a83fa748704546e662fa6d3a2b3fcbe770234188b10844df1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f4bc601d685621db650733a0d88a774ca5272970f04c8c3b7b8033016ea34a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant11ec757e9d2e94236d6ec09b901b137364cd02d02ee0b6f9deb54f4f8a7e859b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Intervals/Variant11ec757e9d2e94236d6ec09b901b137364cd02d02ee0b6f9deb54f4f8a7e859b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
