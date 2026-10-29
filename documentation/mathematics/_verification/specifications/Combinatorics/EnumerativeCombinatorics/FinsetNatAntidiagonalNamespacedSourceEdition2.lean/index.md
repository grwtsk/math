# Verification target: Finset Nat Antidiagonal Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49c25e7aeb731d0112e98e43c96cb0fdbaba6b84",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49c25e7aeb731d0112e98e43c96cb0fdbaba6b84`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.NatAntidiagonal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal.md) | 39 | `declaration-track:502b39d871e9060790afb31473168917996819039cecf54491955039e1dd78e7` |
| 2 | `theorem` | [mem_antidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/mem-antidiagonal.md) | 45 | `result-track:d6fe39c44fa54d8637da4a19530947d17354db238c1259af87f07b1e17acfc30` |
| 3 | `theorem` | [card_antidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/card-antidiagonal.md) | 51 | `result-track:5523f9dbeb59a531047877300bc024ae84adf36fb13c1c282d9684ec55a01c6b` |
| 4 | `theorem` | [antidiagonal_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-zero.md) | 56 | `result-track:c15597838e89f02eeb97b60f2fb7d265961ff86f56357aa5b21e9010e882fd7a` |
| 5 | `theorem` | [antidiagonal_succ](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-succ-source-edition-2.md) | 59 | `result-track:e54defe95e899cd410a042492bfd4f609dabe33597afe67e6e964c01f3103efb` |
| 6 | `theorem` | [antidiagonal_succ'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-succ.md) | 70 | `result-track:bd7c5344668f86e736003d25f242861367f2d1baa6b2126e4cd8d3e70a972d29` |
| 7 | `theorem` | [antidiagonal_succ_succ'](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-succ-succ.md) | 81 | `result-track:cde43686cb9c82df84e702953b0fd742f21dbfde75d39f5e0a0a36da2335bfa9` |
| 8 | `theorem` | [map_swap_antidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/map-swap-antidiagonal.md) | 95 | `result-track:d87682b0a10b0c43ee9acefbc1961d18592d6af08af68da6e93f211ba8dede75` |
| 9 | `theorem` | [map_prodComm_antidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/map-prodcomm-antidiagonal.md) | 100 | `result-track:db9da3dc230b59b19a7b16fdd66f8f1267c4be740d7edbf2c100a6110d9b5a54` |
| 10 | `theorem` | [antidiagonal_congr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-congr.md) | 105 | `result-track:055c0dcd015fa4c94bfdbc50cd84e9a50336e97f00e7b3b36f546e3edd580144` |
| 11 | `theorem` | [antidiagonal_subtype_ext](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-subtype-ext.md) | 114 | `result-track:8d98fbe0b80df9893e5cd07a2ef2fa6ce7bf86c507c9b0ca2f58dcc5f32561b3` |
| 12 | `theorem` | [antidiagonal.fst_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-fst-le.md) | 117 | `result-track:93070f3336360f92cc1f7cbf522fcccdba8f47fbaa39d86fb2ace8df98a2006e` |
| 13 | `theorem` | [antidiagonal.fst_lt](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-fst-lt.md) | 123 | `result-track:bdf3ca141acdbc79963ffa16aac76967183fa2e6f91de928bc6b05d40b73a446` |
| 14 | `theorem` | [antidiagonal.snd_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-snd-le.md) | 126 | `result-track:70714191f4e05d8a4bffb2def003776240f5a592e4a76fcd785ac610a2665847` |
| 15 | `theorem` | [antidiagonal.snd_lt](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-snd-lt.md) | 132 | `result-track:b074354a9b19f5aaf23255c45948d3573e8e84e963c8e5a3c4d21d63c0482fb0` |
| 16 | `theorem` | [filter_fst_eq_antidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/filter-fst-eq-antidiagonal.md) | 135 | `result-track:977d30036349a736af207d47c9e8b7a8ccb0b735b0923d1b48ba4683b3b6b189` |
| 17 | `theorem` | [filter_snd_eq_antidiagonal](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/filter-snd-eq-antidiagonal.md) | 146 | `result-track:3736494bf43575721b1b7adc53d44bebd78ecb87948973397ed510273a93f54c` |
| 18 | `lemma` | [antidiagonal_filter_snd_le_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-filter-snd-le-of-le.md) | 154 | `result-track:1275758d147e15d55792121d1b954c21f7529a4471977af0df875f219d7472ac` |
| 19 | `lemma` | [antidiagonal_filter_fst_le_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-filter-fst-le-of-le.md) | 168 | `result-track:6e5f07d3685f87fe092cac6bcce283b8ed09e8fa5a913789fe0d30024a5e766c` |
| 20 | `lemma` | [antidiagonal_filter_le_fst_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-filter-le-fst-of-le.md) | 180 | `result-track:0d7f57d5db596a5ecb29af350b08156493f7cebe6166ce6ce3e4c0017e27a1ce` |
| 21 | `lemma` | [antidiagonal_filter_le_snd_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonal-filter-le-snd-of-le.md) | 193 | `result-track:fe1081e24a4a0100185293447a919d66a9bb08e0e86da060a8b30d30d75151da` |
| 22 | `def` | [sigmaAntidiagonalEquivProd](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/sigmaantidiagonalequivprod.md) | 210 | `declaration-track:99e7ae093eacd69971c41651fe98cd6c68a634c38b323ba73a88c917ecd297be` |
| 23 | `def` | [antidiagonalEquivFin](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetNatAntidiagonalNamespacedSourceEdition2.lean/declarations/antidiagonalequivfin.md) | 227 | `declaration-track:7ec7e38f40d049c2e6c40fc52e22c33dbad56b7d3ba03c93d5a4c26e31656096` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=775e039a5781ba90053a62a2e970e3cb60a60efd5ca44ed14f3b2b0eea44e061 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variant0169b35ae3b71b820becf8567e21e4e53a4e34b0b29f489e01198e97edd7592f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
