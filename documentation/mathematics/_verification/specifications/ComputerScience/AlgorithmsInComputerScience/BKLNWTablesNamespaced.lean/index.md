# Verification target: BKLNWTables Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be7f02109c11b29282a87bb98e199242d2cf0b03",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be7f02109c11b29282a87bb98e199242d2cf0b03`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime_tables` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_app_tables` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [table_14_margin](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/table-14-margin.md) | 28 | `declaration-track:24fb5698e91cc9c56fad97f6bd8ce789a49e0c0859ca0a56e3168362afefd3cf` |
| 2 | `def` | [table_14](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/table-14.md) | 30 | `declaration-track:0e9c8f01bec3b70a9849b8e4b091fac7a3a576b6c04d9ad1e7a9c2c58d163e6b` |
| 3 | `def` | [check_row_prop](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/check-row-prop.md) | 67 | `declaration-track:f5fee9c229026f4556193ebb918e1494eb7f4020e745c25098c6c7798a478b94` |
| 4 | `abbrev` | [exp_neg_one_ub](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/exp-neg-one-ub.md) | 74 | `declaration-track:fd99cfb0cfd83c8e2e64aac03e210cafba1d56c86812efd115edae3839662c32` |
| 5 | `lemma` | [exp_neg_le_rpow](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/exp-neg-le-rpow.md) | 76 | `result-track:3075320f3969001b8a63cab9f0ff71e902afff8da84c9c8ba77ebd5a38874a65` |
| 6 | `lemma` | [exp_neg_le_rpow'](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/exp-neg-le-rpow-source-edition-2.md) | 88 | `result-track:e2913cef21421933048db0d60a09f9eee9471223e4c4dc24017707a3bd724d62` |
| 7 | `lemma` | [rpow_le_of_pow_le](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/rpow-le-of-pow-le.md) | 91 | `result-track:91bf7099a6cfb1af17e3f708c66374d5c756e88bf806a5e6a889be7cb8659841` |
| 8 | `lemma` | [exp_neg_le_pow](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/exp-neg-le-pow.md) | 107 | `result-track:73bfcebde4262ec31e86d40d242c7c9e82fe1e748fa2d759bb173ce0fe20533b` |
| 9 | `lemma` | [exp_neg_le_pow'](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/exp-neg-le-pow-source-edition-2.md) | 123 | `result-track:b968f554a065612b63b8437c8f45ecaa8b27cca52446f2e93716182c538d26e2` |
| 10 | `lemma` | [check_row_prop_of_bounds](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/check-row-prop-of-bounds.md) | 126 | `result-track:13a80b1538d2c3dcf2b4844f71962e5a00c45660eab9bd6a3299c92fcc187412` |
| 11 | `theorem` | [table_14_check](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/table-14-check.md) | 164 | `result-track:26564ac9c003ee31a1d272cec775e0e0c1f414717ee0a2927c61aaf9d33c6dcd` |
| 12 | `def` | [table_10](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/table-10.md) | 795 | `declaration-track:0c92d29f0464e97e89db34bb221317b73c65d0abcf1a8d484fca81ebd50e3bc8` |
| 13 | `def` | [table_11](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/table-11.md) | 842 | `declaration-track:bbba7b3f7fe196c9da94a9575ca15195d6122bba03b78889885cf1685b62d280` |
| 14 | `def` | [table_12](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/table-12.md) | 986 | `declaration-track:c4844e5c42e039eadbb7abbdc92976733ec7b2b1532fd40055c2c8b4d39e8bcc` |
| 15 | `def` | [C_bk_S](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/c-bk-s.md) | 1017 | `declaration-track:955f57460939f1dd6d6757027d22c611337e596cd7934ff9a02a525bbc45cd90` |
| 16 | `lemma` | [C_bk_S_nonneg](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/c-bk-s-nonneg.md) | 1021 | `result-track:5a2116cf3b2055a2fb4cbb31dfc7dd292360b8e1344b1e62e1762ec9bf11f58b` |
| 17 | `lemma` | [C_bk_S_antitone](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/c-bk-s-antitone.md) | 1030 | `result-track:55d1660415070f35680aca51a476151b1675e275e8ef0c6633534b8e679e3416` |
| 18 | `lemma` | [C_bk_log_row_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/c-bk-log-row-bound.md) | 1045 | `result-track:b6ebde46ee334086a69f61f92ceb955a2408872d49158c5232c4b504440b78fa` |
| 19 | `theorem` | [table_12_check](../../../../../ComputerScience/AlgorithmsInComputerScience/BKLNWTablesNamespaced.lean/declarations/table-12-check.md) | 1064 | `result-track:601fc72b1194cd8e00672684e3a5229fc628993f2eb45657ea50917edb8082c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3982a44bdd0245764272a7caa4da36eb92250f45cd9227c1732f01c4c4c470d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
