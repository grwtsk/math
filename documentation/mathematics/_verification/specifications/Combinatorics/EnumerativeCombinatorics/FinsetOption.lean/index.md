# Verification target: Finset Option

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69f58fa332fdd4b3b16e7127924468b019cc0e29",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantf8457dfdc4c937eefc34706bf0d4215b2d7f85f4d2eb71d0271dbe8d4abb4a57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69f58fa332fdd4b3b16e7127924468b019cc0e29`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantf8457dfdc4c937eefc34706bf0d4215b2d7f85f4d2eb71d0271dbe8d4abb4a57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Option/Variantf8457dfdc4c937eefc34706bf0d4215b2d7f85f4d2eb71d0271dbe8d4abb4a57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/tofinset.md) | 36 | `declaration-track:45da8c7e700055616c8fd72314ed29791bceba9ca61f223b150842a336d86438` |
| 2 | `theorem` | [toFinset_none](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/tofinset-none.md) | 41 | `result-track:c48dd90d3a8fc2e2177a3c43e7e1a01f1612e300e9f7945c8288ae6b0c4cfbde` |
| 3 | `theorem` | [toFinset_some](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/tofinset-some.md) | 46 | `result-track:b05f6fce9573e0228888f2b1fd045867c53f1edaa8d921835dabe0235fb9c299` |
| 4 | `theorem` | [mem_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/mem-tofinset.md) | 51 | `result-track:b1f6d40c7cf9eb3f3a91600d400228fa30d136392c0d46b44ac91960ce6d7252` |
| 5 | `theorem` | [card_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/card-tofinset.md) | 55 | `result-track:e6d86b29b5948376909edc07e4fdf37f18c7b7deb41521e97b60e7a4d8a3191d` |
| 6 | `def` | [insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/insertnone.md) | 64 | `declaration-track:997d035f2f8fe546cce1724943cd60faff9ba30c1be11c4f786f2c4a459acfdd` |
| 7 | `theorem` | [mem_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/mem-insertnone.md) | 70 | `result-track:ba4381e3b987a45ecac31000ff3bf15ccb70544cba5be6883daaded799899ad0` |
| 8 | `theorem` | [some_mem_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/some-mem-insertnone.md) | 75 | `result-track:c408709d2decac0b777a3d13943969b0d57f02818a480fb1a1cec36b666a3bbd` |
| 9 | `theorem` | [card_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/card-insertnone.md) | 79 | `result-track:8b32fbcc4aa294d44983c0c3db928b6976677c7c7e8d3cb13b8965c24da2920a` |
| 10 | `def` | [eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/erasenone.md) | 84 | `declaration-track:fc3d4e873967e645f5f2e631137f9787c2eb6aae216c0f17f58f4eaad282311b` |
| 11 | `theorem` | [mem_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/mem-erasenone.md) | 90 | `result-track:28de0847c559bf54f89235ea1925259201e7cbab8af1974b5960c6a9c466b564` |
| 12 | `theorem` | [eraseNone_eq_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/erasenone-eq-biunion.md) | 94 | `result-track:ef462a30d70348d71a684b68f12145c1a1fad751bf761699ee8b917022b0abc3` |
| 13 | `theorem` | [eraseNone_map_some](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/erasenone-map-some.md) | 101 | `result-track:89aac6b1a959ae81b3cd6f53887b51939a5d9f75ac3a469a903350b401305b7f` |
| 14 | `theorem` | [eraseNone_image_some](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/erasenone-image-some.md) | 107 | `result-track:20271722cafd7ce0f7b80fbe6406887b8fb0b8fea8856d8c7aa11d861f986e01` |
| 15 | `theorem` | [coe_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/coe-erasenone.md) | 112 | `result-track:0c422ecd7a5de2f5658dc6148b9b60b0470d88772a90625ac85ea4fb076daeba` |
| 16 | `theorem` | [eraseNone_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/erasenone-union.md) | 117 | `result-track:926fb8fd0830178c2ac91e84fd846b4306bad3e00deed05eac78ffcd2e0a6e15` |
| 17 | `theorem` | [eraseNone_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/erasenone-inter.md) | 124 | `result-track:6ae9203027133267c3875954fe87bc3b43d1491ab2ab72dbf485467161c97a0e` |
| 18 | `theorem` | [eraseNone_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/erasenone-empty.md) | 131 | `result-track:0b6990604cbafb5c255074aa69e6d48d5c6f4d8bf76c55dbb6b53129fefddeff` |
| 19 | `theorem` | [eraseNone_none](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/erasenone-none.md) | 137 | `result-track:09fdbaf7036e8877e996f5078208cc61b40153ca35887419c596be9006af3563` |
| 20 | `theorem` | [image_some_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/image-some-erasenone.md) | 143 | `result-track:6247ad7a77569825bf110a646ce6fb707d0635a9fb5298d500b3d05606ab997b` |
| 21 | `theorem` | [map_some_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/map-some-erasenone.md) | 148 | `result-track:bc8f0c0f58b6162442c9f52f6f9584998ad4f96eb3e7a7c63807dfac5717b78d` |
| 22 | `theorem` | [insertNone_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/insertnone-erasenone.md) | 154 | `result-track:ee3751644abf05488026b5ff16e1e343a039cbb43f062c4e64e4c929d1bd69b2` |
| 23 | `theorem` | [eraseNone_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOption.lean/declarations/erasenone-insertnone.md) | 159 | `result-track:fda16e79f3908c53da4a994fc9abd57a1a5915806f97a43386107d468ef6e369` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e66744d52e3d156720e524d31c82b1b622dc1be807651a084a8fd32e9d0a50bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantf8457dfdc4c937eefc34706bf0d4215b2d7f85f4d2eb71d0271dbe8d4abb4a57.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Option/Variantf8457dfdc4c937eefc34706bf0d4215b2d7f85f4d2eb71d0271dbe8d4abb4a57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
