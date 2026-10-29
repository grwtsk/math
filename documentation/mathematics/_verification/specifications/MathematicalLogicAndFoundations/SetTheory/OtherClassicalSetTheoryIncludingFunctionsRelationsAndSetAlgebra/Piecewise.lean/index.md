# Verification target: Piecewise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ecafe4712e9bd66dc9fbac9fac14664495bbbb0",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variant2da6be034b7289e0856765c6851095f772526fe79581a8fb7014f0dd90e40c7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ecafe4712e9bd66dc9fbac9fac14664495bbbb0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variant2da6be034b7289e0856765c6851095f772526fe79581a8fb7014f0dd90e40c7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variant2da6be034b7289e0856765c6851095f772526fe79581a8fb7014f0dd90e40c7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [piecewise_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-empty.md) | 23 | `result-track:f9ca9dfe2d9840275cd7aecb7d8793c1a9be121061943d8e3a4b10f6182c5352` |
| 2 | `theorem` | [piecewise_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-univ.md) | 28 | `result-track:1ac604df78c0e22e6207bee7e95544931a824f6d749fa7ae506c8e5be269122a` |
| 3 | `theorem` | [piecewise_insert_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-insert-self.md) | 33 | `result-track:837c854abc82cf3cd113a89073787eaf515b612372c9d2f13e91de2b8b7add92` |
| 4 | `theorem` | [piecewise_insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-insert.md) | 38 | `result-track:78bf012268906f2ce935ebaaabf4a76d82ca8a690d68a899011b03f7d55bd0db` |
| 5 | `theorem` | [piecewise_eq_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-eq-of-mem.md) | 48 | `result-track:21e755678719df749fc51ffc7a3c551c4710894482084c5f29222dbf1eeeab73` |
| 6 | `theorem` | [piecewise_eq_of_notMem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-eq-of-notmem.md) | 52 | `result-track:fd20c1cbf27c1c92ac761cc546014d5a99822a710f89259c7e0acaf1bca600f7` |
| 7 | `theorem` | [piecewise_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-singleton.md) | 57 | `result-track:381ad85f62e0ea43011435ac2f27d8241814043ad13b9f1e7ea1ee173723fee5` |
| 8 | `theorem` | [piecewise_eqOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-eqon.md) | 65 | `result-track:746e7ede4150c1ada294e442bd4afa001f1fc84e988f049019ae86f784263fe0` |
| 9 | `theorem` | [piecewise_eqOn_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-eqon-compl.md) | 68 | `result-track:e52e4530ea7c82c61d5470872b0e08421b576d525c88f61f1beeb88c83f9530d` |
| 10 | `theorem` | [piecewise_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-le.md) | 71 | `result-track:6e5da688117c85d5a65e7be3781956d05c4085fe61841587bacc6ef2ba318b82` |
| 11 | `theorem` | [le_piecewise](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/le-piecewise.md) | 75 | `result-track:9a4e866991a63e9c29d45e07e59c48deb7b091b2507c4186f944a803b5f36c99` |
| 12 | `theorem` | [piecewise_mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-mono.md) | 81 | `result-track:e01c4b48960188b74d28ff0621ef7b7186a68969f10376930fafd20cb62117b4` |
| 13 | `theorem` | [piecewise_insert_of_ne](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-insert-of-ne.md) | 87 | `result-track:351bcbc476683aa13ddb1d507cbba69074eb1a8edf3c1dc38031ad0faccc596b` |
| 14 | `theorem` | [piecewise_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-compl.md) | 91 | `result-track:d10a660686166008f9bd8764a09c04abd06264bf2bfed3455f55673289edaabb` |
| 15 | `theorem` | [piecewise_range_comp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-range-comp.md) | 95 | `result-track:d334d89bfe3690d9b724827732398e232b6750adcd4c2c212688405affdf640a` |
| 16 | `lemma` | [piecewise_comp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-comp.md) | 99 | `result-track:904a62274bd613d6e6967528bf36bfb6ff11700be6dee955bd499eb5d6af78df` |
| 17 | `theorem` | [MapsTo.piecewise_ite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/mapsto-piecewise-ite.md) | 105 | `result-track:32a3ed1f8015c3883ebe04f4640581170330375e9aa526ab3246bdefc8e02c3c` |
| 18 | `theorem` | [eqOn_piecewise](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/eqon-piecewise.md) | 113 | `result-track:09848f7529c49dc5da76e5af542b18ada9593f59810436843645a7212c8cc4bb` |
| 19 | `theorem` | [EqOn.piecewise_ite'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/eqon-piecewise-ite-source-edition-2.md) | 118 | `result-track:f5e898e41de143b9f2eb1064e3b45100b2fff941cf2d98e4cbb804e410f9e037` |
| 20 | `theorem` | [EqOn.piecewise_ite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/eqon-piecewise-ite.md) | 122 | `result-track:211bbc49025c0f4c37748a416b08fe56d899c0ff5701fc049afc82354255ef2e` |
| 21 | `theorem` | [piecewise_preimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-preimage.md) | 126 | `result-track:20d43cd1b3f606152b1ea7c6481119bfbef81552c10e7a711f43d26e60388c95` |
| 22 | `theorem` | [apply_piecewise](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/apply-piecewise-source-edition-2.md) | 129 | `result-track:e45ee9a732421776c10cd6bce229301c2dfce4b525118b0859505d7fe585c702` |
| 23 | `theorem` | [apply_piecewise₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/apply-piecewise.md) | 133 | `result-track:44c5d3d99cccba9c488b0213c15b16392f6e65b71382f0b0f79b02750c1710c3` |
| 24 | `theorem` | [piecewise_op](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-op.md) | 139 | `result-track:10dc6fa5a2a0c0451a0fc50a6e65600f9b71c621f3fdf38514de1cd8b915c6d9` |
| 25 | `theorem` | [piecewise_op₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-op-source-edition-2.md) | 143 | `result-track:1286ae779df003980951c3d57575915c8b96c856d4630935795bf13e5396364c` |
| 26 | `theorem` | [piecewise_same](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-same.md) | 149 | `result-track:df5dad4479887e478ede31723298485e11041be38909d8f934812f75a44ee3fd` |
| 27 | `theorem` | [range_piecewise](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/range-piecewise.md) | 153 | `result-track:197990e8ebcab8ab0eaa1820769872ef5859d7a98caeab78e4eefab0ee89f67c` |
| 28 | `theorem` | [injective_piecewise_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/injective-piecewise-iff.md) | 159 | `result-track:cdfde91aad4ee8a1462823e46e4413e414a863b7cacffeb54a457f3891f3cb82` |
| 29 | `theorem` | [piecewise_mem_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/piecewise-mem-pi.md) | 167 | `result-track:06ea0b25b8e31191f401814511c1df400b50361aaa79c971b96bf21bd8ecbb9f` |
| 30 | `theorem` | [pi_piecewise](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/pi-piecewise.md) | 173 | `result-track:f053e11258316fe77dfecf940c72ad33ef37a82b907ebf3b1a91f54416140e2d` |
| 31 | `theorem` | [univ_pi_piecewise](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/univ-pi-piecewise.md) | 177 | `result-track:6302f9eb708b8eb556e666b635746b247e02b8e5cbc26d89be4c8c3b9d7a81c5` |
| 32 | `theorem` | [univ_pi_piecewise_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Piecewise.lean/declarations/univ-pi-piecewise-univ.md) | 181 | `result-track:13e2b17a5363e44ec069352beb63c1399b295f8005c78ced8191c09ad3bdab56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f4e221fef656f63b20a4bc40b0b806730cc4c44ff6c327444b309c7dbd6d8e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variant2da6be034b7289e0856765c6851095f772526fe79581a8fb7014f0dd90e40c7b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variant2da6be034b7289e0856765c6851095f772526fe79581a8fb7014f0dd90e40c7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
