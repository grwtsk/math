# Verification target: Skolem Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69e93aab9fb43a59f6de1a219758f326648e72bc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant65671b32bb0033ddd347d692bd4243d6b7bef354df26be4be0efbb9dcc9b6826.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69e93aab9fb43a59f6de1a219758f326648e72bc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant65671b32bb0033ddd347d692bd4243d6b7bef354df26be4be0efbb9dcc9b6826.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant65671b32bb0033ddd347d692bd4243d6b7bef354df26be4be0efbb9dcc9b6826.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.ElementaryMaps` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [skolem₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/skolem.md) | 51 | `declaration-track:cb5846042ea0f8fbbb4fa96ca86e9367b19c3603bd126f6ab5a5948562e5d08b` |
| 2 | `theorem` | [card_functions_sum_skolem₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/card-functions-sum-skolem.md) | 58 | `result-track:2304c0f29e47b47ba7bee3c24942da5868d6779784be14050e5cd203b14bb5d2` |
| 3 | `theorem` | [card_functions_sum_skolem₁_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/card-functions-sum-skolem-le.md) | 73 | `result-track:9e916b9b1c1790a655eb9db598084c94e3d9b294b8ff6a7426d78b96fbec88a1` |
| 4 | `instance` | [skolem₁Structure](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/skolem-structure.md) | 86 | `declaration-track:8e6ac707acb32c1ec19d4032a4980d9d7c069b53189d49facdbf58e662e4724c` |
| 5 | `theorem` | [skolem₁_reduct_isElementary](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/skolem-reduct-iselementary.md) | 94 | `result-track:8f786b3d4c1ac907de2ad1800477563af731dcdb8e82d10794d4bc95a22485e1` |
| 6 | `def` | [elementarySkolem₁Reduct](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/elementaryskolem-reduct.md) | 107 | `declaration-track:3238a77b6bfd432601278f4120517082993a81c70ea70df210ab5fb15fc99aa6` |
| 7 | `theorem` | [coeSort_elementarySkolem₁Reduct](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/coesort-elementaryskolem-reduct.md) | 112 | `result-track:1390e6ca5dd37380ec3e0493ef4d1e39645e4ad9df7b308c302b42e1c7fe6e16` |
| 8 | `instance` | [Substructure.elementarySkolem₁Reduct.instSmall](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/substructure-elementaryskolem-reduct-instsmall.md) | 123 | `declaration-track:c4c7aed25dbfee6c3d2c466b7e0535d3ed64405806c1a325f72625149cb04e04` |
| 9 | `theorem` | [exists_small_elementarySubstructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/exists-small-elementarysubstructure.md) | 129 | `result-track:dec138fadea23442aac9bb923655be311c3806d032532101e77af606504d9c0f` |
| 10 | `theorem` | [exists_elementarySubstructure_card_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SkolemNamespacedAligned.lean/declarations/exists-elementarysubstructure-card-eq.md) | 139 | `result-track:4c1ef2a3182bb6e1e87d5a0ea25372bd681e5026faa4e463a56b39bdd6c4b473` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34c07ac7ab0e6cf5bfeb3c002cc5d91be7c4fcc281b448bdb2b5a1a3687ea263 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant65671b32bb0033ddd347d692bd4243d6b7bef354df26be4be0efbb9dcc9b6826.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant65671b32bb0033ddd347d692bd4243d6b7bef354df26be4be0efbb9dcc9b6826.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
