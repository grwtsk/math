# Verification target: GDelta Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4294eb4c65288af29e958e8dfc906085db51fb12",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2b74f5c5e36c2f17a4e780bf29b750d38a7d3e4f5220906825bc058bc4952d2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4294eb4c65288af29e958e8dfc906085db51fb12`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant2b74f5c5e36c2f17a4e780bf29b750d38a7d3e4f5220906825bc058bc4952d2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant2b74f5c5e36c2f17a4e780bf29b750d38a7d3e4f5220906825bc058bc4952d2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.CountableInter` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Closure` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGδ](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg.md) | 65 | `declaration-track:6011f516cb32259edd24a9f4652d2c584cea97e4db3f0c3505d942da759f8595` |
| 2 | `theorem` | [IsOpen.isGδ](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isopen-isg.md) | 69 | `result-track:00fa83fe9f54e5c655e45ac8f7f599b5fca686744f0f163510ce5946d05124a7` |
| 3 | `theorem` | [IsGδ.empty](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-empty.md) | 73 | `result-track:5d8229097fadcf2a941f30a8cce79c19798e018f19b43bade5c5af038c8a3f1d` |
| 4 | `theorem` | [IsGδ.univ](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-univ.md) | 78 | `result-track:f7fa13014e8ed2583d87dafa56c8e03f5b1de2d6bdb6686c16d535fd12d00e31` |
| 5 | `theorem` | [IsGδ.biInter_of_isOpen](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-biinter-of-isopen.md) | 82 | `result-track:78ddb262aed70a69a811f286b78252689656d5d469bbe17c9c2d466fe7cb3c85` |
| 6 | `theorem` | [IsGδ.iInter_of_isOpen](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-iinter-of-isopen.md) | 87 | `result-track:16850c053e161ef4bb9caf63d7fa8775bbc56b81ef771a1fbeec4fecef8075ff` |
| 7 | `lemma` | [isGδ_iff_eq_iInter_nat](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-iff-eq-iinter-nat.md) | 92 | `result-track:84fc6ac65bcfecca2ae0308e5a85fb100046d1d7a09b38c8d4ed41a7b01dfafd` |
| 8 | `theorem` | [IsGδ.iInter](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-iinter.md) | 106 | `result-track:2e838b7dacab4404da2ec1351f360e4599e6844105cbac3d5c0baf4a692e28ce` |
| 9 | `theorem` | [IsGδ.biInter](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-biinter.md) | 115 | `result-track:e8088edf01ff06a52f28ff6a6f63ec997688f341a34c4354f3e1b43a6fa4a577` |
| 10 | `theorem` | [IsGδ.sInter](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-sinter.md) | 123 | `result-track:4a9fb816e2cf29c63d38996363d2f23bf69d04e1812eb0c11ebf1975ee7c0587` |
| 11 | `theorem` | [IsGδ.inter](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-inter.md) | 127 | `result-track:885a337f55fcf2026a1535b598cba4daeeee14430f4c184c0a71b674cd4c45bd` |
| 12 | `theorem` | [IsGδ.union](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-union.md) | 132 | `result-track:7ef608e849d2cb35d6f82d65f55f96b771d9f34293a0fbb903141d84828aff86` |
| 13 | `theorem` | [IsGδ.sUnion](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-sunion.md) | 141 | `result-track:ffc60740105d5105dbacc9b15afe2598454acc84fb5dd9cec744a59d21f0c0ab` |
| 14 | `theorem` | [IsGδ.biUnion](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-biunion.md) | 149 | `result-track:3b78af0c2afe5a7ae8f973a4449e882c61677d3abdb5d14fe94bf042940af859` |
| 15 | `theorem` | [IsGδ.iUnion](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isg-iunion.md) | 155 | `result-track:a6d9015b5aa01ec78a20557debf1288189d8b6490b40d97d191e5ef9c2cb3856` |
| 16 | `def` | [residual](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/residual.md) | 165 | `declaration-track:8aac2521cad08ec90385db34fb7b0efe4a113886d21c5fa1a4bf13416594b78a` |
| 17 | `instance` | [countableInterFilter_residual](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/countableinterfilter-residual.md) | 168 | `declaration-track:3143812a73d9d8a22f72ddc4c3cb5f43801bdd190ac697513bc357ea4ba33e13` |
| 18 | `theorem` | [residual_of_dense_open](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/residual-of-dense-open.md) | 172 | `result-track:216110e4bb34aee302c1500b5cb607553eafecf65c644369bc46732a677f96c4` |
| 19 | `theorem` | [residual_of_dense_Gδ](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/residual-of-dense-g.md) | 176 | `result-track:fa4366ff5354b1b87b7eb1c17c625ab81efde621a5e40a03648219e5136dee97` |
| 20 | `theorem` | [mem_residual_iff](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/mem-residual-iff.md) | 183 | `result-track:85f671e88368fd537c4fade608b0229eb8da7528df6778caa1c52e45d76f0b70` |
| 21 | `def` | [IsNowhereDense](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isnowheredense.md) | 195 | `declaration-track:ea401eb884b2dffb38080d2a836110af6ae0dd49a91e7b49a172b4779b96e434` |
| 22 | `lemma` | [isNowhereDense_empty](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isnowheredense-empty.md) | 199 | `result-track:452cabb6a94cd7873fb92da35e6f02d159a9d806440857c2067cc4ab66885a26` |
| 23 | `lemma` | [IsClosed.isNowhereDense_iff](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isclosed-isnowheredense-iff.md) | 203 | `result-track:cc96ef1c8cb082a3c89ba6cc6677b1bf8c6c6f8edcbbcc2a659344db163e5ba3` |
| 24 | `lemma` | [IsNowhereDense.closure](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isnowheredense-closure.md) | 208 | `result-track:6042330ceb8a848fc43e00c2cf288e44e1a61724d2bb44d8cb3a6c6c4d7a875c` |
| 25 | `lemma` | [IsNowhereDense.subset_of_closed_isNowhereDense](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isnowheredense-subset-of-closed-isnowheredense.md) | 213 | `result-track:eb3b2258ca011e954dd6b3d8b3432cb1e6e182899b9b15aed448703942e6b048` |
| 26 | `lemma` | [isClosed_isNowhereDense_iff_compl](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/isclosed-isnowheredense-iff-compl.md) | 218 | `result-track:dee3be49e86a411282fd419861c2249b227bb56c651b67066a794dd62ff97a3f` |
| 27 | `def` | [IsMeagre](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/ismeagre.md) | 224 | `declaration-track:391d3b30647d6fa3c6c49b3a9db35a491b33c9b46cfa1d06179a5fe116a0293b` |
| 28 | `lemma` | [meagre_empty](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/meagre-empty.md) | 227 | `result-track:747f04d460d22979959071715dbe063103239f77f0bc908d5855eb1c6f4ab6f0` |
| 29 | `lemma` | [IsMeagre.mono](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/ismeagre-mono.md) | 232 | `result-track:5a9ece4dad9116f369f8ebc3a383c6cfd161020b169b8b0f27b120fa1d7ded13` |
| 30 | `lemma` | [IsMeagre.inter](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/ismeagre-inter.md) | 236 | `result-track:45ed961a3d43e93984416e0596cfdcf497c090de8e719d742a97073a38db52f4` |
| 31 | `lemma` | [isMeagre_iUnion](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/ismeagre-iunion.md) | 240 | `result-track:2a69e8890d67328754ecb589f8f9e4db8cc67d37104ca4c46ef5ac871ee79a6b` |
| 32 | `lemma` | [isMeagre_iff_countable_union_isNowhereDense](../../../../GeneralTopology/GDeltaBasicNamespaced.lean/declarations/ismeagre-iff-countable-union-isnowheredense.md) | 245 | `result-track:4adbfa9223151156040a75095375d1ebf6b7794d25964fb0932b29d9a4e06902` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9483db3f201ce1f6b2e90d18eeb99493140567e8aec9f1e5b3ba417ae39e5659 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant2b74f5c5e36c2f17a4e780bf29b750d38a7d3e4f5220906825bc058bc4952d2d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant2b74f5c5e36c2f17a4e780bf29b750d38a7d3e4f5220906825bc058bc4952d2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
