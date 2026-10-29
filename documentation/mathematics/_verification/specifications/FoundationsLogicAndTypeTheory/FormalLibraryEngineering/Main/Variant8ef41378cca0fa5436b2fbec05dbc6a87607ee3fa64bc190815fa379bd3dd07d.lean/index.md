# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "265bc84c8cc7b596ff4b04f35b23eb6b889e414a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `265bc84c8cc7b596ff4b04f35b23eb6b889e414a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.BVDecide.Normalize` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bvUnsat](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean/declarations/bvunsat--ecdaf6957ae45dfe7df5e0a4.md) | 18 | `declaration-track:ecdaf6957ae45dfe7df5e0a4563ac6a080416783e9894d73ea31522bb2f6119f` |
| 2 | `structure` | [Result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean/declarations/result--92b0cf501e754fca43a13254.md) | 24 | `declaration-track:92b0cf501e754fca43a132544d219ed71210f4e10732c088ce78c81670e1aef0` |
| 3 | `def` | [bvDecide'](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean/declarations/bvdecide--01bd26231ac5a0cc76858e1e.md) | 35 | `declaration-track:01bd26231ac5a0cc76858e1e5abe265b07e9fecabce0368b044082ff25884687` |
| 4 | `def` | [bvDecide](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean/declarations/bvdecide--de6273d111f84107f6545ed6.md) | 45 | `declaration-track:de6273d111f84107f6545ed6f20d34d13940541804f278b76cf05c1d0b581ab7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb7933a7076df064137b51284889b68b472d7fa058af95579ff0502f5aa08ed1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
