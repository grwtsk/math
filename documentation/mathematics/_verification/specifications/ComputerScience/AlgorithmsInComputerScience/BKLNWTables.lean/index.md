# Verification target: BKLNWTables

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90cc22da81712426fc2a263448d888e2115dab73",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90cc22da81712426fc2a263448d888e2115dab73`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime_tables` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_app_tables` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [table_14_margin](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/table-14-margin.md) | 20 | `declaration-track:1916c3de8ffdfaf0b449692e59b5acd85b681957636743cd63084a524c1c6f72` |
| 2 | `def` | [table_14](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/table-14.md) | 22 | `declaration-track:b5a3a554a8a2759196ece6b23630a507f6a82cb50b1b992a882e629c2fb490fd` |
| 3 | `def` | [check_row_prop](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/check-row-prop.md) | 59 | `declaration-track:0327a13bfca9c7ae794e5cfa12bc8dffd6f522627374391d563769b189fbd479` |
| 4 | `abbrev` | [exp_neg_one_ub](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/exp-neg-one-ub.md) | 66 | `declaration-track:024385d62ef110557670c3be51d7e0f060a6fb0670c2e746b38db69555bdbca0` |
| 5 | `lemma` | [exp_neg_le_rpow](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/exp-neg-le-rpow-source-edition-2.md) | 68 | `result-track:cce5b3b438427484377d353645ebd7fb85a9d82daae8579c17f8f858c7c07464` |
| 6 | `lemma` | [exp_neg_le_rpow'](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/exp-neg-le-rpow.md) | 80 | `result-track:bca49c563a10936981187817ba8edbd089c9c5368f337ca0de1274555fcd8085` |
| 7 | `lemma` | [rpow_le_of_pow_le](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/rpow-le-of-pow-le.md) | 83 | `result-track:7fbb245a34e9365ba4f0cb0318ccc879d5ab09d964df50faf0746e49a06962b6` |
| 8 | `lemma` | [exp_neg_le_pow](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/exp-neg-le-pow-source-edition-2.md) | 99 | `result-track:50cc680ab6231f69e11d89835bc9a3d8eb41b324c5bb35ace8509b38fecb4bed` |
| 9 | `lemma` | [exp_neg_le_pow'](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/exp-neg-le-pow.md) | 115 | `result-track:2b3c6bd6c2229e045031a15c9b95d97b630549fd8395b96997b87e8e61e8265e` |
| 10 | `lemma` | [check_row_prop_of_bounds](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/check-row-prop-of-bounds.md) | 118 | `result-track:ecd0a4e2f5294dadcec9e66eeb1cd5b843febfd0f0b8cdab8593411ca6c08c25` |
| 11 | `theorem` | [table_14_check](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/table-14-check.md) | 156 | `result-track:212f6eff7409ee5f73dcd5c924080146eca2c399472ff238b9295d4e64cc9b85` |
| 12 | `def` | [table_10](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/table-10.md) | 787 | `declaration-track:6204a39493e9947951a893fa553ad972163de2c8b7b30bf76ed7569f0984a82c` |
| 13 | `def` | [table_11](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/table-11.md) | 834 | `declaration-track:a392993ba9606b0f885b7420da76983ca4b4212363b180de1bc5f4374a515eb7` |
| 14 | `def` | [table_12](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/table-12.md) | 978 | `declaration-track:a76621b3eaebc5e5b61bfecdcbdba7406dd23ff34e349719ca56914a3cd8241b` |
| 15 | `def` | [C_bk_S](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/c-bk-s.md) | 1009 | `declaration-track:79c9d3712e74efd3e1aa544b35740f1871807d0bf62c57a4cc7b39ceef2edf25` |
| 16 | `lemma` | [C_bk_S_nonneg](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/c-bk-s-nonneg.md) | 1013 | `result-track:ea3dba62e34a74293ef956c7c205e14c9f639afc278830b8ac74ba059f16443f` |
| 17 | `lemma` | [C_bk_S_antitone](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/c-bk-s-antitone.md) | 1022 | `result-track:a2fa8b330c450e6938aeab89b9a7c4e386f501e9c0cbbc3ce3d7d200c3e9b9e0` |
| 18 | `lemma` | [C_bk_log_row_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/c-bk-log-row-bound.md) | 1037 | `result-track:9b61f0a9ae9327c79ba1ac27dcf988559b9ac1a6f3dc91a08f594cb2ade950f6` |
| 19 | `theorem` | [table_12_check](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTables.lean/declarations/table-12-check.md) | 1056 | `result-track:63949a242bb6ad03f0a3d5ad17fa395df88150d21e0c2d9a8c3ce492f588e650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc3d01f344b804932fc94836b1ebb38a6772b155ed03fab46f4bf63127ef37ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant73f8929a6381dca0da9e7a4025a5cf54afc5100a32515309f80a40832e005751.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
