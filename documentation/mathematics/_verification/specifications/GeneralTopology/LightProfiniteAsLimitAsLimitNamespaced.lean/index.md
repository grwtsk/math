# Verification target: Light Profinite As Limit As Limit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22f11f13c91060599ffaee1709a50b1d5db30283",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant8fdf0bef50b54f9aa1c42e172cd57680d72546a44f51af4bf8cb2fa2780b499d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22f11f13c91060599ffaee1709a50b1d5db30283`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant8fdf0bef50b54f9aa1c42e172cd57680d72546a44f51af4bf8cb2fa2780b499d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant8fdf0bef50b54f9aa1c42e172cd57680d72546a44f51af4bf8cb2fa2780b499d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.LightProfinite.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [fintypeDiagram](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/fintypediagram.md) | 38 | `declaration-track:7cc82f14fa0bfe3ef39a0710ac787c4ec02192f5e85e6d45a3cc4b9637170c7e` |
| 2 | `abbrev` | [diagram](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/diagram.md) | 41 | `declaration-track:920abb1b30239fd8f32716b27a0f36b9c8a2ad364e8083fd5d45e4364d2aeed9` |
| 3 | `def` | [asLimitConeAux](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/aslimitconeaux.md) | 47 | `declaration-track:2a4909c43a364788d13cf3e57f3eeee8183dc4679e773b297afbf25e729accb2` |
| 4 | `def` | [isoMapCone](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/isomapcone.md) | 53 | `declaration-track:c23760ea999b939b9f82a68c505954083105b78b77090aa88045fd686232ae09` |
| 5 | `def` | [asLimitAux](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/aslimitaux.md) | 62 | `declaration-track:994f776ab7c7ad3d79e7f4aa4d3d745ce766272f847a13e45100c14fbc793084` |
| 6 | `def` | [asLimitCone](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/aslimitcone.md) | 68 | `declaration-track:47e230a04e4d7427f4cfb5b748c91e381d6fc60bd17d5d420d909ae2f9414b45` |
| 7 | `def` | [asLimit](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/aslimit.md) | 76 | `declaration-track:b4216cd65e04ca3045e16b630e72d159d0274c4877211409ee77cc3768bea5b9` |
| 8 | `def` | [lim](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/lim.md) | 81 | `declaration-track:9d49a0b0a349e3af00806b3c0346e16e5e0a15bff3f14d6a17ad32faa49bd224` |
| 9 | `abbrev` | [proj](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/proj.md) | 84 | `declaration-track:cdddbc2db861064c665ff90381b8fe70c2b088cdb96c50ae0d56c0cdfbb9d7c9` |
| 10 | `lemma` | [lightToProfinite_map_proj_eq](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/lighttoprofinite-map-proj-eq.md) | 86 | `result-track:d78d7bab68d62abc328ee84376391d1fd66cfac052ee1e5dc78f3b55387125ca` |
| 11 | `lemma` | [proj_surjective](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/proj-surjective.md) | 93 | `result-track:de2bc0a3d9bd5b8448f74de751c12263d1221dc4a2a499ff9557a00c9385e3a5` |
| 12 | `abbrev` | [component](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/component.md) | 99 | `declaration-track:74b4b1107957cffe081939f75819cdcf961a74ef6f13eb5cb8a28da41a648e01` |
| 13 | `abbrev` | [transitionMap](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/transitionmap.md) | 102 | `declaration-track:7282e97a7ea77deb43fc6db2617963883ba131dd560439dae2125befc5a5e99c` |
| 14 | `abbrev` | [transitionMapLE](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/transitionmaple.md) | 106 | `declaration-track:32eab01c6c61d65915b03d42e382206a18c0bd9f36a9c463806143d3cdaecc6b` |
| 15 | `lemma` | [proj_comp_transitionMap](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/proj-comp-transitionmap.md) | 109 | `result-track:5c524b15994e94abf665dbc1649beef56165fb3f0580bf35a097726c3919bd2a` |
| 16 | `lemma` | [proj_comp_transitionMap'](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/proj-comp-transitionmap-source-edition-2.md) | 113 | `result-track:91406cd7a0b0db0b081c24d44c586907d37b725dbcd535a6730a98931682e9f1` |
| 17 | `lemma` | [proj_comp_transitionMapLE](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/proj-comp-transitionmaple-source-edition-2.md) | 117 | `result-track:f68c1fe1b2dc20a61a339a9c5c61adf029e70ff917fb742fee43763aad0804d0` |
| 18 | `lemma` | [proj_comp_transitionMapLE'](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/proj-comp-transitionmaple.md) | 121 | `result-track:9ae3f4c237d5a2cb07a2a0d06903ca029630bc34830b3e27d2ae4a74ba2bff97` |
| 19 | `lemma` | [surjective_transitionMap](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/surjective-transitionmap.md) | 126 | `result-track:d0b155852123226d2dfa793c970bc8aed308a5df1195d3ff8aa6abf17312fe92` |
| 20 | `lemma` | [surjective_transitionMapLE](../../../../GeneralTopology/LightProfiniteAsLimitAsLimitNamespaced.lean/declarations/surjective-transitionmaple.md) | 130 | `result-track:487e54c3bc7d7f17800d6f5f2910d58d2f71e387c5153316213942a84dd6a08c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5822db1d52c35809fe5278cd5b37f2bf3506fe41752cb78b34f946b0fd6e5c1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant8fdf0bef50b54f9aa1c42e172cd57680d72546a44f51af4bf8cb2fa2780b499d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant8fdf0bef50b54f9aa1c42e172cd57680d72546a44f51af4bf8cb2fa2780b499d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
