# Verification target: GRWTSK.Topology.Induction.Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a07cc68566e7164526b9ac4f3526373b7a6c972a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/index.md) · [Full source](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a07cc68566e7164526b9ac4f3526373b7a6c972a`.

Source path: `GRWTSK/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Free` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.Span` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.Successor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.ZeroLimit` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [GoodProducts.P0](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/declarations/goodproducts-p0--f7033d6a8194087c7b14bfcd.md) | 53 | `result-track:f7033d6a8194087c7b14bfcd9ca3c195056cbb7413b8a0170d9c8885187c1d3d` |
| 2 | `theorem` | [GoodProducts.Plimit](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/declarations/goodproducts-plimit--96072ef158ee2bbb8341e1f7.md) | 63 | `result-track:96072ef158ee2bbb8341e1f74ba2ce457b79c706372bf7dc055e2e57c4229aad` |
| 3 | `theorem` | [GoodProducts.linearIndependentAux](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/declarations/goodproducts-linearindependentaux--c516cc11699f5e4d7ea52bb2.md) | 72 | `result-track:c516cc11699f5e4d7ea52bb2fa8e3a5b772a51e21c03b414d82ab366bf4a4932` |
| 4 | `theorem` | [GoodProducts.linearIndependent](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/declarations/goodproducts-linearindependent--2d438f0ec778a387397bf8f6.md) | 85 | `result-track:2d438f0ec778a387397bf8f670b48828c3cc1fed3683265c2cad77662c4ffc90` |
| 5 | `def` | [GoodProducts.Basis](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/declarations/goodproducts-basis--e123eb5e9af7d63c96bb1937.md) | 92 | `declaration-track:e123eb5e9af7d63c96bb19373659cf848f51bc2c56ecc62102afaa70c028cbd0` |
| 6 | `theorem` | [Nobeling_aux](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/declarations/nobeling-aux--e290ff8b3e9fc06e348f045b.md) | 105 | `result-track:e290ff8b3e9fc06e348f045b3dc4e9e7d245bae2aaebefcd80c2b2b1c8c02c6a` |
| 7 | `def` | [Nobeling.ι](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/declarations/nobeling--767a9ae3002e8f99223eca15.md) | 116 | `declaration-track:767a9ae3002e8f99223eca15f4f53cec6aa8d3a7b747464c96ed66c57103e206` |
| 8 | `theorem` | [Nobeling.isClosedEmbedding](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/declarations/nobeling-isclosedembedding--4f37f65c0beb5e355ac77c63.md) | 120 | `result-track:4f37f65c0beb5e355ac77c637ee873bee841a99731e0e2720632a2c38d395173` |
| 9 | `instance` | [LocallyConstant.freeOfProfinite](../../../../mathematics/Topology/Induction/Variant04f8ff602e8c01485e7c888af855d9064796a3b9005bde33ae161066343004cd.lean/declarations/locallyconstant-freeofprofinite--4b3f2137f49bfc4925599c12.md) | 154 | `declaration-track:4b3f2137f49bfc4925599c12b5acde4b273da5082f292a27a1581ada030bca08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
