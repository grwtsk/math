# Verification target: Sets Order Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63094d57fd2588fb38f59134cfd585348c9c2bc2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63094d57fd2588fb38f59134cfd585348c9c2bc2`.

Source path: `GRWTSK/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Closeds` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClopenUpperSet](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/clopenupperset.md) | 23 | `declaration-track:29b5bc303445125703e669b0ca9363f047d1314a09f17cdfdfa97bc8fc587fff` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/instance-source-edition-4.md) | 28 | `declaration-track:6fd03a7a66a74b2d48cc44d9657f859699447e00869947a732341f1db30a086b` |
| 3 | `def` | [Simps.coe](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/simps-coe.md) | 36 | `declaration-track:9dce5eb7e4a040ae0d1e22a9a7e47e9d77a4aa43574dcd4f6bc224629ed96c51` |
| 4 | `theorem` | [upper](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/upper.md) | 40 | `result-track:e3a67f39f21a616fa71c507fab440ba923a0ff688e7be8199353720a0eafad47` |
| 5 | `theorem` | [isClopen](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/isclopen.md) | 43 | `result-track:45f20376a2b8aba071803ef350b48d7000da67e82374ca663343019f7237a56a` |
| 6 | `def` | [toUpperSet](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/toupperset.md) | 48 | `declaration-track:b777da5fc562b58df9dbe8accf6c4a40a52b371fbac51b6276bda3e883275b0b` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/ext.md) | 52 | `result-track:499a0909e7238b9308831d20af7f325802fed0ee487a60b4610fc819a8bdd86b` |
| 8 | `theorem` | [coe_mk](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/coe-mk.md) | 56 | `result-track:71d579034d178346ad37eb79c42eed46c8cd91f2575bd998d71fa6ba4af08d35` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:2e6abdfca3bae196af0415144dbb938b7a63467a9e73960b3d0a0018447e9dff` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/instance-source-edition-5.md) | 62 | `declaration-track:75c15fed179e6dd975eb5bca9e86ba6cba5fff58b3ba90e47b20dd06c13a119e` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/instance-source-edition-6.md) | 65 | `declaration-track:8c3da830212fb90c6c8b402d742b1add500a953fa6dd20b05cfd00fc0e5cb312` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:3de908f951ece013ad2faef4c691f4a7f576461e5f7cbf66885749b904400be2` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/instance.md) | 71 | `declaration-track:110e98f13ff42971684f447e3d2197467fdee21c14606fca0fcd891549e96c32` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/instance-source-edition-8.md) | 74 | `declaration-track:e91e5ae144ad09790c243b17394536c9dcef4182b11dbe6538d4a0d2b4df151b` |
| 15 | `theorem` | [coe_sup](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/coe-sup.md) | 78 | `result-track:29186fc62f97ec8592cc06ba3645379bfee75a31b84461e3ad396358a99bb55d` |
| 16 | `theorem` | [coe_inf](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/coe-inf.md) | 82 | `result-track:90154c9dd1a5ef5c154b14b04aa0313a0d8e3face89cc62c308722c255532f37` |
| 17 | `theorem` | [coe_top](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/coe-top.md) | 86 | `result-track:8cc42e0056f5f739a871ebb00c242911332facbac0fd7645f75a4e7d5ed40063` |
| 18 | `theorem` | [coe_bot](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/coe-bot.md) | 90 | `result-track:ecaf7bfc6c79d7f780394dc2edb3a551fbd8f5f335e8212b94c6838d3aee7c93` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderSourceEdition2.lean/declarations/instance-source-edition-7.md) | 93 | `declaration-track:cd85260a2b8e7c80e09371047b58194573e7daca51e67d83182e07b200829436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9230f0e31a8af508669cbec09076d22ea19da9b52a91d594a5d2bb47ee147584 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Order/Variantfafafda0b8d7de2204b0d0fde3964f565d3cd16721798796b4b711bf60a5b7e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
