# Verification target: Connected Component

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbfd91a3bc4bf0114ccd1a5d1b9e907e68bd2bf7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ConnectedComponent/Variant0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ConnectedComponent.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ConnectedComponent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbfd91a3bc4bf0114ccd1a5d1b9e907e68bd2bf7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ConnectedComponent/Variant0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/ConnectedComponent/Variant0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Subquiver` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Symmetric` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zigzagSetoid](../../../../../Combinatorics/GraphTheory/ConnectedComponent.lean/declarations/zigzagsetoid.md) | 28 | `declaration-track:3c83ec948fa610b143fd66af457754b172fa41f921715f412c58d2a94fe49b9d` |
| 2 | `def` | [WeaklyConnectedComponent](../../../../../Combinatorics/GraphTheory/ConnectedComponent.lean/declarations/weaklyconnectedcomponent.md) | 35 | `declaration-track:ba715c515f2a0ee450229dc6c10a736271a2f01a259177d889a3d2cc472633e1` |
| 3 | `def` | [mk](../../../../../Combinatorics/GraphTheory/ConnectedComponent.lean/declarations/mk.md) | 43 | `declaration-track:1ae2106f175d0f3e19863765d3cd0d7c8356b2c5a323808ed62fb249036732f7` |
| 4 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectedComponent.lean/declarations/instance.md) | 46 | `declaration-track:112197954b37cc95bf5d4a55e738b2ceb27ecaa013bab0dcf39a53aace8f6a76` |
| 5 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ConnectedComponent.lean/declarations/instance-source-edition-2.md) | 49 | `declaration-track:1d187f8c7194866e0d7311e0158132d21892fab467af30285c643d562f423b8c` |
| 6 | `theorem` | [eq](../../../../../Combinatorics/GraphTheory/ConnectedComponent.lean/declarations/eq.md) | 52 | `result-track:39ba4d9c881011583833f54678421bf93f5e640304e9c3852edeacae82b3642f` |
| 7 | `def` | [wideSubquiverSymmetrify](../../../../../Combinatorics/GraphTheory/ConnectedComponent.lean/declarations/widesubquiversymmetrify.md) | 64 | `declaration-track:d99f8a184acfbf01d3f60402f439c1796fda792f88628286c44dbbc0506797ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48a2686a2180a29eac7247d8e71d786e86a323f6cb82fbfcec2ecd8846f9d9a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ConnectedComponent/Variant0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/ConnectedComponent/Variant0f0eb372802b1ec74ae1b68e34fb59fa67a7541711bf05864b32907561cffb60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
