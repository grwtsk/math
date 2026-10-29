# Verification target: Filter Subsingleton Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0642caaaabe577836b865479206a6af5593764be",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantdf8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0642caaaabe577836b865479206a6af5593764be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantdf8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantdf8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Bases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subsingleton](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton.md) | 22 | `declaration-track:e3f25ab68571bab2eb8b2631b5a502c697a8f22d5f9a6957bf3f1fb7480345b4` |
| 2 | `theorem` | [HasBasis.subsingleton_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/hasbasis-subsingleton-iff.md) | 24 | `result-track:a8f5bdf23ad19b16799a3d532a12a46652b7dfdf0e7868f96212acedd4c384fe` |
| 3 | `theorem` | [Subsingleton.anti](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-anti.md) | 28 | `result-track:20a567739957da2a4986f2927c47c678b771e7c6f2ac8d55c917040878c73c37` |
| 4 | `theorem` | [Subsingleton.of_subsingleton](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-of-subsingleton.md) | 32 | `result-track:0ca1c3b85cf0acebbc13b9d035d8420c5523d2d631db58f82860d62ad8344779` |
| 5 | `theorem` | [Subsingleton.map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-map.md) | 35 | `result-track:398da95f37160d6ba5aca7d616df4f5a6107c4b639f13a413e8f80d52b525adc` |
| 6 | `theorem` | [Subsingleton.prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-prod.md) | 38 | `result-track:a11aef3528740c6189a7c97c43099d09d3c47d4d03588d810597a4a044bd150c` |
| 7 | `theorem` | [subsingleton_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-pure.md) | 43 | `result-track:0dcd82570ca2953c32d52be9f5ea4e787021a825405ee3a652e564f3e2c28667` |
| 8 | `theorem` | [subsingleton_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-bot.md) | 47 | `result-track:e2ee49f8ff2271c6f701c036d6ef470cd29b79e3b8c90654e7e7f6eb9954ea35` |
| 9 | `theorem` | [Subsingleton.exists_eq_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-exists-eq-pure.md) | 51 | `result-track:440a7b5615a83e07282dd7c12f80fbedc0c523bd77495ce7020d6e817e1531cf` |
| 10 | `theorem` | [subsingleton_iff_bot_or_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-iff-bot-or-pure.md) | 58 | `result-track:f1121f9f34b80c9c7a90f2c4512500d3d4280cd13f8c154d906339799a3aa262` |
| 11 | `theorem` | [subsingleton_iff_exists_le_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-iff-exists-le-pure.md) | 65 | `result-track:6312c3e09bc2f6b945136853fb55ff337c71f7318319046a7e571031a74f0478` |
| 12 | `theorem` | [subsingleton_iff_exists_singleton_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterSubsingletonEdition2.lean/declarations/subsingleton-iff-exists-singleton-mem.md) | 70 | `result-track:d65426aac625052895f4e5578c1832ebe7f98c93a9af8391027f75b8e9c41c4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=639e359df5e04b8542312a212ce189d1bcee04e054abb62a4a5b0b8745cc2f0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantdf8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantdf8e2fecdb41c440038ceba1207b903d761cf525a30ebc59d195e5836564adee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
