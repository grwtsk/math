# Verification target: Inventory V2 Input

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dc764f720fdd1d6e05dd6974d8ac3a0c5720378",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InventoryV2Input/Variant26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/InventoryV2Input.lean/index.md) · [Full source](../../../../Combinatorics/InventoryV2Input.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dc764f720fdd1d6e05dd6974d8ac3a0c5720378`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/InventoryV2Input/Variant26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/InventoryV2Input/Variant26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtStorage` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HigherIndex](../../../../Combinatorics/InventoryV2Input.lean/declarations/higherindex.md) | 7 | `declaration-track:c0307265cdb4d3054f8ebb14e64c50092df3ca7f8285e0008cb69649a2139641` |
| 2 | `def` | [atomNatural](../../../../Combinatorics/InventoryV2Input.lean/declarations/atomnatural.md) | 9 | `declaration-track:aa890269994ec88ecfabfe14efd7413c1300281784e6b9b2d7dc0f821931460b` |
| 3 | `theorem` | [atomNatural_injective](../../../../Combinatorics/InventoryV2Input.lean/declarations/atomnatural-injective.md) | 11 | `result-track:847ef67ea4a2419ac6bf58ad541beaa405c7404b86b02afc9784da6deec46701` |
| 4 | `theorem` | [prime_of_mem](../../../../Combinatorics/InventoryV2Input.lean/declarations/prime-of-mem.md) | 20 | `result-track:3a5b41d61ed917b73e2a927b71bbc9c91b55e4ea980ec6d81d7dbab92b9cb72b` |
| 5 | `theorem` | [exponent_of_mem](../../../../Combinatorics/InventoryV2Input.lean/declarations/exponent-of-mem.md) | 24 | `result-track:cb75612d929569c6e716f4a4d0d539ec21f6f15ffea6ed1dacc631a57b56c7a1` |
| 6 | `def` | [inventoryIndex](../../../../Combinatorics/InventoryV2Input.lean/declarations/inventoryindex.md) | 28 | `declaration-track:c6a9a131629a877fb1dad2273374ca7fc0038b8d529cedb401e66a7867e2857a` |
| 7 | `def` | [atomInventory](../../../../Combinatorics/InventoryV2Input.lean/declarations/atominventory.md) | 31 | `declaration-track:b6fc7fd5c01ecf16939f48156de1158cff5412a13888f6432dd167eb5d2eb59f` |
| 8 | `theorem` | [inventoryIndex_natural](../../../../Combinatorics/InventoryV2Input.lean/declarations/inventoryindex-natural.md) | 35 | `result-track:b4ea9715b4aeae6db9f2ed628c9e858febba0f2465ccba63852edb83ab0ff93b` |
| 9 | `theorem` | [atomNatural_mem_inventory_iff](../../../../Combinatorics/InventoryV2Input.lean/declarations/atomnatural-mem-inventory-iff.md) | 42 | `result-track:10b5a8bf5c2197e35429c502cc11060e770ddc925544cd99890bf04a10121fc4` |
| 10 | `theorem` | [mem_atomInventory_iff](../../../../Combinatorics/InventoryV2Input.lean/declarations/mem-atominventory-iff.md) | 66 | `result-track:bb0b3911557194798bcdee5d055266fc9225b8a028256d4a5ad3665506626634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4edeb50b01029eb108b0b9d597089f06ffb6546b759e89081cf6113021fb190 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/InventoryV2Input/Variant26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/InventoryV2Input/Variant26884edab8eeef25204a4950dd475b7ec9aef749b2905bcb75d441e3a89d9cc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
