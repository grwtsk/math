# Verification target: Order Type Tags

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65d24335fb5d9a2376410c403177f8c5644bd4e0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65d24335fb5d9a2376410c403177f8c5644bd4e0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Notation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/withbot.md) | 20 | `declaration-track:4f67e7137aea55d8d192e066efad52db1f364eeb66e00d2b487da9d9afc38b1c` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/instance-source-edition-2.md) | 24 | `declaration-track:3dec78b310932890658b836f77a1ab49b5fb994ced4a1ddfd55d5ce912467eb1` |
| 3 | `def` | [some](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/some-source-edition-2.md) | 31 | `declaration-track:ccae822976a947189c6144a85d9a482b872d5547ffc1e6f8a0fe33cdc3ade4d2` |
| 4 | `instance` | [coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/coe.md) | 34 | `declaration-track:0ad697d34865fec7b01adfb3e4db425fe9e10d5b5deb2d283787931ea854ffc7` |
| 5 | `instance` | [bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/bot.md) | 37 | `declaration-track:bc1eb18d1cac44c0b35190577dabe9f1234cded1af3ca27ed3dc01459783cd50` |
| 6 | `instance` | [inhabited](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/inhabited-source-edition-2.md) | 40 | `declaration-track:294f99cc5e70f97431801aaca0dac0b576241a952adba6c14428a234fcaaa4a5` |
| 7 | `def` | [recBotCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/recbotcoe.md) | 45 | `declaration-track:3b27627163084cdbe15beccee5dce970b91589339153a0c0f23eb2a02b0ca20a` |
| 8 | `theorem` | [recBotCoe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/recbotcoe-bot.md) | 50 | `result-track:27d5e1e0c067c102bb344582880dc35ec172d815b0a62e3efeabf72e8d692039` |
| 9 | `theorem` | [recBotCoe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/recbotcoe-coe.md) | 55 | `result-track:9159e49fd5c4230d38d4618146b6b9b5ef8311aee817e8fda55deebe19f7eef8` |
| 10 | `def` | [WithTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/withtop.md) | 63 | `declaration-track:3c1fa037d47aae407ca80eb3a306252a43ef120834b69c33548f3300524cb7d4` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/instance.md) | 68 | `declaration-track:32b4cc9e5779364387b70265a32302da97b519058a715ead72d22e2c0cdc1803` |
| 12 | `def` | [some](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/some.md) | 75 | `declaration-track:b70e4b75d8cdd574635dc851aa860affae8bf85589da46696def665066f71619` |
| 13 | `instance` | [coeTC](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/coetc.md) | 78 | `declaration-track:1c1c8ab3a66e498c14319346f37b3ddbf94b2ad47785a834e3bd76197d8060cf` |
| 14 | `instance` | [top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/top.md) | 81 | `declaration-track:fe5da99f6684d6e93b3941a55eb66b34d463c0a51a2afea2915cf8e08a65b14d` |
| 15 | `instance` | [inhabited](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/inhabited.md) | 84 | `declaration-track:1f0834712c88cdd2bf377636e85df1301f05692dff5873a392a787104020f968` |
| 16 | `def` | [recTopCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/rectopcoe.md) | 89 | `declaration-track:f3d49693d6aa843154b77013b08330034f5a1128085f88b76e2f34be560edbcd` |
| 17 | `theorem` | [recTopCoe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/rectopcoe-top.md) | 94 | `result-track:dcfc27b35620f51a9b32da2aa6e0760f1eccd9e4c5c8f8c58a8c7fbc1f46ff3f` |
| 18 | `theorem` | [recTopCoe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderTypeTags.lean/declarations/rectopcoe-coe.md) | 99 | `result-track:dacb17f5ede9c2718e45a039a3593f94ab7362ae6b7f87eca23e4efcabeab577` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22c5c0f49a901e62e8dd72b959642ed7bc1f70a37afe4e21cebf9cbb0765cec2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
