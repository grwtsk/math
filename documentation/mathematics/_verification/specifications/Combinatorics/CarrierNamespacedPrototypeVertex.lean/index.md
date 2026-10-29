# Verification target: Carrier Namespaced Prototype Vertex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8fe5b549f9ecf7187a97b52c7997a9b5560bc45",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/index.md) · [Full source](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8fe5b549f9ecf7187a97b52c7997a9b5560bc45`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Integration.WorldModelPrototype.Models` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.Carrier` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrototypeVertex](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypevertex.md) | 29 | `declaration-track:465a3a185b0df204d35df81813773c86210d047c36f07829740ff8a6596b8987` |
| 2 | `inductive` | [PrototypeEdge](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypeedge.md) | 34 | `declaration-track:defcc511ea1125deeabd70cbd39deff4d795801dccc789dd7f8a0966256d4ae0` |
| 3 | `inductive` | [PrototypeFace](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypeface.md) | 39 | `declaration-track:aa040b9885bf1a472f6362da6742c8df019a9ba316f1500fb9ef238dcfc76c85` |
| 4 | `inductive` | [PrototypeCell](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypecell.md) | 44 | `declaration-track:d8c8fa57102900c2a4ffb25369e51cb8b7729ed2ffd6b4eb73343b8fd56d9295` |
| 5 | `def` | [prototypeEdgeEndpoints](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypeedgeendpoints.md) | 51 | `declaration-track:bc71ac23bc36ca5b024c99c45e83e2aab95c75cc4f2056254f444deb25c6720d` |
| 6 | `def` | [prototypeFaceEdges](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypefaceedges.md) | 60 | `declaration-track:43a8fc64a13340a553ed40e8d0b1057c1e6b53aa3f4557c3651a5d541f592d65` |
| 7 | `def` | [prototypeCellVertices](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypecellvertices.md) | 65 | `declaration-track:79395ff3355be254fc716f88a6ac48a1b68198fa825dc097c4046e6b0dbf0b85` |
| 8 | `def` | [prototypeCellDimension](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypecelldimension.md) | 73 | `declaration-track:f68a03aaa36194fa26895296cdc4b35704c1647c7aec8e312f93d4b25c550691` |
| 9 | `def` | [PrototypeIncident](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypeincident.md) | 79 | `declaration-track:75c5fe961ad31250d47c00f457dc618ac17e49a33d383945676424715f86ad0b` |
| 10 | `instance` | [(anonymous)](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/instance.md) | 83 | `declaration-track:724f52c55312fd05db72e03daedfc7ca917129470c6b281a198794dc77b4f935` |
| 11 | `def` | [prototypeCarrier](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypecarrier.md) | 88 | `declaration-track:97224602dc1d3cea8843573d97844b02c6410f9e6f059033dbdeadad35fbe24b` |
| 12 | `inductive` | [PrototypeOpen](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypeopen.md) | 99 | `declaration-track:9b00202f9525d75009505717c40b5692ad3081c78569e15008ae7505901ad8b9` |
| 13 | `def` | [prototypeOpenVertices](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypeopenvertices.md) | 104 | `declaration-track:ae0459831a956926aa9a2068da891930b6aa905b941861de87530cf07b44e728` |
| 14 | `def` | [prototypeCover](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypecover.md) | 110 | `declaration-track:61dc53114d2cf6c6cea9ef3abd6efeb4d0fe1d2c41ffbc02e3ba9f34a1b650ed` |
| 15 | `theorem` | [prototypeCover_card](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypecover-card.md) | 112 | `result-track:3becbba9239c427bd94617e058d1ecbbdad1e1556580a22f1680abd4fb70e4d3` |
| 16 | `theorem` | [prototypeCover_covers_vertices](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypecover-covers-vertices.md) | 115 | `result-track:45a07e4ae6cb4351cd14d9650b0faaa55cfa88b6e57e4a68ff059085123e87a8` |
| 17 | `theorem` | [prototypeCarrier_card](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototypecarrier-card.md) | 126 | `result-track:4b13c9f8d4bc338a015311e23a5577fea37050f308bd5e2f273efd9a1aebd2c2` |
| 18 | `theorem` | [prototype_incidence_does_not_supply_translation](../../../../Combinatorics/CarrierNamespacedPrototypeVertex.lean/declarations/prototype-incidence-does-not-supply-translation.md) | 130 | `result-track:9fdab870f390b5b114011129fc2ade627c3ab0695baa7660c2fbd3cf87262444` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e05fa91bcaf281df40300a47e6625c6cc9272224144ae550fbf40e6ffa9c6e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Carrier/Variantae8ecc2ac6d7f851681cac472fc8c36c0611da9e9da0719b28ad5e257137bab8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
