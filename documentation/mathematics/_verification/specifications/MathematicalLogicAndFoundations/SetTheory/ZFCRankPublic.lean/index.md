# Verification target: ZFCRank Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "875892b19824112c1770e6ade2db5bc83d1bceb7",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant9d603ac86c8165c3575e09be9b1caafcc915f308b72956a5c91dfe9404008635.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `875892b19824112c1770e6ade2db5bc83d1bceb7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant9d603ac86c8165c3575e09be9b1caafcc915f308b72956a5c91dfe9404008635.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant9d603ac86c8165c3575e09be9b1caafcc915f308b72956a5c91dfe9404008635.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank.md) | 36 | `declaration-track:32bc186458cbb29f4c36530ac5dc24ae7d7ffcc06e9e78378dd0838769f73f01` |
| 2 | `theorem` | [rank_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-congr.md) | 39 | `result-track:6c9cea39aded18a92e51018a568557ab8ab9fd5c57ed6851c2af6975672a8f38` |
| 3 | `theorem` | [rank_lt_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-lt-of-mem.md) | 51 | `result-track:666b627349b7507877ee3bf7c02973f621885eb4fea0954a409f656cf625a914` |
| 4 | `theorem` | [rank_le_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-le-iff-source-edition-2.md) | 56 | `result-track:a8b0c756240326dc1ed9cf44ffa8ab425c9efe4b47d925a30e11ad64dc7fa4dd` |
| 5 | `theorem` | [lt_rank_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/lt-rank-iff-source-edition-2.md) | 62 | `result-track:e0a7742476e7d34269a508415f3777045340a95f5b2bd7c711e86ac3c7e934d5` |
| 6 | `theorem` | [rank_mono](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-mono.md) | 67 | `result-track:4cb54886085e3688d80cc0303e86732a187c8ba9be1813ac6c8f58d1a5949d4d` |
| 7 | `theorem` | [rank_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-empty.md) | 71 | `result-track:7e266ea6092e730d81cd40d94bc2d5ae6821bb9a4c70943f4298e90cac8e4a1d` |
| 8 | `theorem` | [rank_insert](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-insert-source-edition-2.md) | 74 | `result-track:f1247021d1668bbb29e9f4b89e966327ca559c69e695222f5e9b56edadc8c181` |
| 9 | `theorem` | [rank_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-singleton-source-edition-2.md) | 85 | `result-track:c08ea0917e180fb1bf8e8b752551bcaed4ebfb618fb740adb1d3875798244811` |
| 10 | `theorem` | [rank_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-pair.md) | 88 | `result-track:03761d33e8e9dbfa8672d4bc376eaa52a510a738b4ebfd1ecaed0c3b98efcf96` |
| 11 | `theorem` | [rank_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-powerset-source-edition-2.md) | 92 | `result-track:852c195b2a2055014ea571efe7bd1ee12589adaabb0869ae07ce8a612c643e96` |
| 12 | `theorem` | [rank_sUnion_le](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-sunion-le.md) | 104 | `result-track:c0a833c1275673686091ce293dc5b7cd7ffcd7d9411f0376a69d08ade53c1b82` |
| 13 | `theorem` | [le_succ_rank_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/le-succ-rank-sunion.md) | 109 | `result-track:69bf5eca0e824455688799fe44d787081109d22b41159b4dfadb7962c920b5b1` |
| 14 | `theorem` | [rank_eq_wfRank](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-eq-wfrank.md) | 120 | `result-track:189953dfa5436cc18115bfd290104234e3af98d67d30dd8f6d1db52dbff39adb` |
| 15 | `def` | [rank](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-source-edition-2.md) | 139 | `declaration-track:c336acfb14295fdadd7e6c287c16eb125686e43f9021ea1d9848d29ed09069ef` |
| 16 | `theorem` | [rank_mk](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-mk.md) | 143 | `result-track:60346e8e6dad588d610d568449f150915c2fc92e80cd92c43a24762b97a691ad` |
| 17 | `theorem` | [rank_lt_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-lt-of-mem-source-edition-2.md) | 146 | `result-track:e4c650aed7376c5e57b2ffec23d82df01bbccce2bcc8a4e4e05dedf83e46a233` |
| 18 | `theorem` | [rank_le_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-le-iff.md) | 149 | `result-track:3fbe8ed687cf6ce704e5fde4458faa82e3f61eb571370809c3af0fcce4db5560` |
| 19 | `theorem` | [lt_rank_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/lt-rank-iff.md) | 154 | `result-track:0dd0d3525f5c40872b453328868e8dbfe159ed717f77f199bb7344d3c5cfa6b2` |
| 20 | `theorem` | [rank_mono](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-mono-source-edition-2.md) | 157 | `result-track:a10d72acac9bfed82f6d36ebd4e22c8e64e83b2f1249d6792ac590d62c0e394f` |
| 21 | `theorem` | [rank_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-empty-source-edition-2.md) | 161 | `result-track:d5b0280c80b4a225b4fcc7db5244858c95b0106c730935928c9baa03170104c1` |
| 22 | `theorem` | [rank_insert](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-insert.md) | 164 | `result-track:7e786f3178abca78e3488e074f6327a071091ad2fb6484d46d53410766484307` |
| 23 | `theorem` | [rank_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-singleton.md) | 168 | `result-track:bfa799a58122213895d00fd66012d850109c6839892f6751c6e126c240a65d5a` |
| 24 | `theorem` | [rank_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-pair-source-edition-2.md) | 171 | `result-track:bd6ee19423e837c24b2b372dc729ec47c7aeeada06659fb1c3a2254878c8e26b` |
| 25 | `theorem` | [rank_union](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-union.md) | 175 | `result-track:810e5fdee66ac06699bb92b4a10914898e225ac76414ef9df0fb7cdf3e428164` |
| 26 | `theorem` | [rank_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-powerset.md) | 183 | `result-track:46831f654139ef2d21c4d7a295dfcc2c3cbb08ce334ac5823f1b08b5821ffb03` |
| 27 | `theorem` | [rank_sUnion_le](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-sunion-le-source-edition-2.md) | 189 | `result-track:c13d74fd0016af92019e6af6de702d3996607dd10deab6090ae90a7c43d4ded8` |
| 28 | `theorem` | [le_succ_rank_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/le-succ-rank-sunion-source-edition-2.md) | 194 | `result-track:f4d4cb03463e1cf644dd0e25ad0cd37ce7fbf04d1071e216306ed83a7758af1b` |
| 29 | `theorem` | [rank_range](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-range.md) | 204 | `result-track:1833ccd1126db77930eef0f3707b0d3787937aab97750fe8f5ac6fd26e0402dc` |
| 30 | `theorem` | [rank_iUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-iunion.md) | 211 | `result-track:ac68396472dfb76c7ab95e1d904e72575d8978c9f06dbe82a2700ab297c9d712` |
| 31 | `theorem` | [rank_eq_wfRank](../../../../../MathematicalLogicAndFoundations/SetTheory/ZFCRankPublic.lean/declarations/rank-eq-wfrank-source-edition-2.md) | 220 | `result-track:a8aa7c6250a1c66a17d9475013c94152d5c41d9153e798f0f11802b2a5110129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d04013c9b5cdf244899c860dbefba221c29d4c564d6410a3ce13963ff7b444e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant9d603ac86c8165c3575e09be9b1caafcc915f308b72956a5c91dfe9404008635.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Rank/Variant9d603ac86c8165c3575e09be9b1caafcc915f308b72956a5c91dfe9404008635.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
