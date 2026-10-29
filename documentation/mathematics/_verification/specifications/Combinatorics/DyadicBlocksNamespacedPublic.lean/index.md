# Verification target: Dyadic Blocks Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba01a79bd8791d800207ec1368316feae7c65e59",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant70427d70dc297cf81a4127379b94e45cd30d7ff195d8764500c80ed90d900779.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba01a79bd8791d800207ec1368316feae7c65e59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant70427d70dc297cf81a4127379b94e45cd30d7ff195d8764500c80ed90d900779.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant70427d70dc297cf81a4127379b94e45cd30d7ff195d8764500c80ed90d900779.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicLowerEndpoint](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/dyadiclowerendpoint.md) | 39 | `declaration-track:fa8034c36f56cb4e6f52d1131385c3747f3e7e89f88836277289d943cdf353de` |
| 2 | `theorem` | [dyadicLowerEndpoint_pos](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/dyadiclowerendpoint-pos.md) | 43 | `result-track:4b6386043b51411ae88dbe316b550612c1d57049c21ea5ed96cb05ef5006564c` |
| 3 | `theorem` | [dyadicLowerEndpoint_lt](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/dyadiclowerendpoint-lt.md) | 49 | `result-track:0752c3180a462812dbda1f769e908df1244aad7032f0f18413fa89528d772188` |
| 4 | `theorem` | [le_twice_dyadicLowerEndpoint](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/le-twice-dyadiclowerendpoint.md) | 60 | `result-track:19928a9199c7396da023b9683822603491fddc1914a170826f73b553a54a6aa7` |
| 5 | `theorem` | [dyadicLowerEndpoint_eq_of_mem](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/dyadiclowerendpoint-eq-of-mem.md) | 74 | `result-track:756949416d1742df929cde608ca0bf1753c1db25c02a41e9e2c5c165c99ae43b` |
| 6 | `structure` | [TypeIIDyadicBlock](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/typeiidyadicblock.md) | 94 | `declaration-track:4dbf35811ba12e2f67af78ac6b2e123036bb20bab6c22b18136cf51e23077490` |
| 7 | `theorem` | [TypeIIDyadicBlock.ext](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/typeiidyadicblock-ext.md) | 112 | `result-track:87afd8a0686e190ef7f86caad63bc0ddf7f18e0d743759eb405072244376997f` |
| 8 | `abbrev` | [TypeIIDyadicBlock.Left](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/typeiidyadicblock-left.md) | 120 | `declaration-track:09ba2c3fda0f3b00fd8b0779839e2ddea4949e9ce3ef6ca935977e93b214f7ef` |
| 9 | `abbrev` | [TypeIIDyadicBlock.Right](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/typeiidyadicblock-right.md) | 124 | `declaration-track:9f2159419d5f88596fddc9f30803fcaf7eb5323f4a8e0d04080b384dad07fa27` |
| 10 | `def` | [typeIIFactorDyadicBlock](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/typeiifactordyadicblock.md) | 130 | `declaration-track:d93d17a5ecc49bb17dd1b8fac12f2672e547cbb7b4d84247a308a46ea96b5871` |
| 11 | `instance` | [(anonymous)](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/instance.md) | 175 | `declaration-track:3ed53e883cf08f568d2f651f1c5b12929b2837d4ffa08ffe2b95b3fda5767bdc` |
| 12 | `def` | [conductorThreeTypeIIBlocks](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/conductorthreetypeiiblocks.md) | 183 | `declaration-track:64688172fde6d12bea3d6c7452a126ec5869db36dcb78a7f297870e919f7bd46` |
| 13 | `theorem` | [typeIIFactorDyadicBlock_mem](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/typeiifactordyadicblock-mem.md) | 188 | `result-track:8009279761b3c3d04e3d33f9e07662f6eb2d4bd8b418dd85c0bd46dbe6cb9e42` |
| 14 | `def` | [typeIIFactorLeftInBlock](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/typeiifactorleftinblock.md) | 197 | `declaration-track:36046b3e0d9dd1d26bef0598093d6747b69d35b9c8e54214bbc30b831ca0118c` |
| 15 | `def` | [typeIIFactorRightInBlock](../../../../Combinatorics/DyadicBlocksNamespacedPublic.lean/declarations/typeiifactorrightinblock.md) | 209 | `declaration-track:d2a5bf926e32b4409bc22ac15ee9c3f7588edaa027aacd9597e438ad9372184c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57993e546125f9950db39004ca47e7695462d1f4536b5f7dbe77ca22995c6779 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant70427d70dc297cf81a4127379b94e45cd30d7ff195d8764500c80ed90d900779.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant70427d70dc297cf81a4127379b94e45cd30d7ff195d8764500c80ed90d900779.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
