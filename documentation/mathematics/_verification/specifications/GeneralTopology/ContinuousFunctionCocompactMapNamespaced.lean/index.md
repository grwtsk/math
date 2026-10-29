# Verification target: Continuous Function Cocompact Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ef2800a54d4f177fc9258237e15e652fe0076a5",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variant5b3dd19587503ed79b8741e4daab5168efd67e6fa566f35ba9b10506be839181.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ef2800a54d4f177fc9258237e15e652fe0076a5`.

Source path: `GRWTSK/Topology/GeneralTopology/CocompactMap/Variant5b3dd19587503ed79b8741e4daab5168efd67e6fa566f35ba9b10506be839181.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CocompactMap/Variant5b3dd19587503ed79b8741e4daab5168efd67e6fa566f35ba9b10506be839181.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CocompactMap](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/cocompactmap.md) | 41 | `declaration-track:ece40ea6b24c1a5ed644d48d2b9196d4e12932f9d9e3fffe62fcab6e026d4e3d` |
| 2 | `class` | [CocompactMapClass](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/cocompactmapclass.md) | 52 | `declaration-track:0aeca59b21e635c4c42e8c9d29bcaa2b3e9f49f4ecf4d6478da8ead6bf3d9536` |
| 3 | `def` | [toCocompactMap](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/tococompactmap.md) | 67 | `declaration-track:ebf6fa4ef89cd84a1024a03f430392546a74c8c0495e0be255b55c48085e71e1` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:fabf51051db8809edfadb9c0615b7439cd41574fbf2fc1dbc720f815e7c37a9d` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/instance-source-edition-2.md) | 85 | `declaration-track:499aaf3d680d389aa4333396822e56bb776fa7bf4cc263a48747b4d76d14526f` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/coe-tocontinuousmap.md) | 101 | `result-track:7743ead268d151c311dbe1ec61e8b65ba9f42878e7030c89a98b0ea06183147b` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/ext.md) | 106 | `result-track:e82a8b7a5f73c789b0781dd7f63ea6594eecbe607519403439e232f4d4258ffb` |
| 8 | `def` | [copy](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/copy.md) | 112 | `declaration-track:e960bcb2af500b7ac25d04060e5ad18865d62bc550f13e81179e7f0705015681` |
| 9 | `theorem` | [coe_copy](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/coe-copy.md) | 123 | `result-track:fe2463cbdcb412252ea2adcb45796429d70c9b883b908d3b2870535bd9a030a9` |
| 10 | `theorem` | [copy_eq](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/copy-eq.md) | 127 | `result-track:f2eeec3031ca1bc47d87ed0384ef9accd99b7e7e67b27272e1f0937fb6b12412` |
| 11 | `theorem` | [coe_mk](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/coe-mk.md) | 132 | `result-track:b9aeed2d448b899aa868a997a96e83a9a1833e8dec705fad47fe2dbafd315a88` |
| 12 | `def` | [id](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/id.md) | 142 | `declaration-track:f140539143e78f3a15fbe728a30c1fca1bb7de5d5760fc5a89d4a3a6dfa3e6aa` |
| 13 | `theorem` | [coe_id](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/coe-id.md) | 147 | `result-track:d91d14accae612fc2f10bc997579414a08d112844f2d333daa253665a351e84b` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/instance.md) | 153 | `declaration-track:2af866645c6517a366bedbff722a212e5dd45d5d6f4c03b362a9cb1c8c1bec3b` |
| 15 | `def` | [comp](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/comp.md) | 157 | `declaration-track:88ad14a5b27f305a97fadb68f6d1d803356099aad59b7ff46fce393bde1bd65b` |
| 16 | `theorem` | [coe_comp](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/coe-comp.md) | 162 | `result-track:25f6f67102d7285ee68d64e0ddd028ea890b868329de0f1cf537b0442ed9609a` |
| 17 | `theorem` | [comp_apply](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/comp-apply.md) | 167 | `result-track:a944ff70a856b1c5401e2a25360a4b2a1325ff2f6fc6fc8e56c9793db8a3b8ff` |
| 18 | `theorem` | [comp_assoc](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/comp-assoc.md) | 172 | `result-track:038fb2ae54da36b90a6e82581eab098f63bd052cd56034d39a8d5996437661be` |
| 19 | `theorem` | [id_comp](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/id-comp.md) | 178 | `result-track:67e80e15343d11ea66161f055d0e17b95583384f0c4555b7d2b429693c2fc77b` |
| 20 | `theorem` | [comp_id](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/comp-id.md) | 183 | `result-track:9e91cc84ce7db02898c21bcec34943e1e52d4d5406012e97e984316f792e9e8b` |
| 21 | `theorem` | [tendsto_of_forall_preimage](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/tendsto-of-forall-preimage.md) | 187 | `result-track:dd85217f8cf1aa45d0035eae9dda1a31bf1d0ca59e5c6a17c681c8a0d8291a66` |
| 22 | `theorem` | [isCompact_preimage](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/iscompact-preimage.md) | 196 | `result-track:5b41f365aebbf19221c72cc6f26bbb1ecb24cce4065be468bc6d7961d98c10cb` |
| 23 | `def` | [Homeomorph.toCocompactMap](../../../../GeneralTopology/ContinuousFunctionCocompactMapNamespaced.lean/declarations/homeomorph-tococompactmap.md) | 215 | `declaration-track:144a5ab223ed4727eecb350843eab3e1a4ecf32e363c5d4f186f397461fb9c4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=589a98f159d237b84b2fc27db46c8ee6f609ea1427a1be58763f8cdcc7017537 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CocompactMap/Variant5b3dd19587503ed79b8741e4daab5168efd67e6fa566f35ba9b10506be839181.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CocompactMap/Variant5b3dd19587503ed79b8741e4daab5168efd67e6fa566f35ba9b10506be839181.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
