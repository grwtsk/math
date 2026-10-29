# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BVCheck.Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5064c4367b54978f2116c85486de8963558b42bb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5064c4367b54978f2116c85486de8963558b42bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.BVDecide.TacticContext` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.BVDecide.Normalize` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getSrcDir](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean/declarations/getsrcdir--2d0474fe6c47a1cf6b0bb0cf.md) | 30 | `declaration-track:2d0474fe6c47a1cf6b0bb0cfb6a586262c987c6ff9b8c82cdb8368f69016d28a` |
| 2 | `def` | [mkContext](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean/declarations/mkcontext--a262e35140020d70cdf0e0c4.md) | 37 | `declaration-track:a262e35140020d70cdf0e0c4c555ba4f1025fb98aa9cc125a025aea3c90cd0ea` |
| 3 | `def` | [bvCheck](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean/declarations/bvcheck--60bd86ba188f1511be130f26.md) | 42 | `declaration-track:60bd86ba188f1511be130f267cd31147b54ecfe98dfcd1468d454b9c5241b1d3` |
| 4 | `def` | [evalBvCheck](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean/declarations/evalbvcheck--9c1e985aa5e00c81a9031490.md) | 48 | `declaration-track:9c1e985aa5e00c81a9031490cd902060cbafe95d79dd1184ed5d48e5c50299ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d66e9d933af84152726cd3d38bb703e6b3efb7cc1f7d32d7851e9bd27b1ab088 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
