# Verification target: Covering Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "147c855e60cc037014bf0a846b0fc577c6011713",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant0ab1887e843f75085187cdac6f364f0d3a32b7ef625abc3d2eddf5fb63d19fc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `147c855e60cc037014bf0a846b0fc577c6011713`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant0ab1887e843f75085187cdac6f364f0d3a32b7ef625abc3d2eddf5fb63d19fc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant0ab1887e843f75085187cdac6f364f0d3a32b7ef625abc3d2eddf5fb63d19fc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Quiver.Star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-star.md) | 67 | `declaration-track:e52311090a44799c5cb54d6ac48a0c7198694ff15b0f5b2125f405488421ecd7` |
| 2 | `abbrev` | [Quiver.Star.mk](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-star-mk.md) | 71 | `declaration-track:cdbdd0b41d1042c1d233f45e2b54714939a1bf730be36bb9d7774d090361d37d` |
| 3 | `abbrev` | [Quiver.Costar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-costar.md) | 76 | `declaration-track:a29eaea9398ff84b9a4e89bf5e08cd9322f8f0d5f2f726e0ab2b1c0199093e39` |
| 4 | `abbrev` | [Quiver.Costar.mk](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-costar-mk.md) | 80 | `declaration-track:eddd82edbc950ed1314238144cb5c46ffa099e98168f708227d84d35f8aa7b1a` |
| 5 | `def` | [Prefunctor.star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-star.md) | 85 | `declaration-track:e30f5affd646de73455b22e48e3be068ab7f26acf3c9b568f3ff850054843652` |
| 6 | `def` | [Prefunctor.costar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-costar.md) | 90 | `declaration-track:05f1dcce3023cb8e5b2dd1b33f985ff347c5b8d22c9652cd796c2cd56898d9e6` |
| 7 | `theorem` | [Prefunctor.star_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-star-apply.md) | 94 | `result-track:afb2168fe450ed985d5cbe4e0be1687a565b887c72ab421350a4aa6ae5adfea3` |
| 8 | `theorem` | [Prefunctor.costar_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-costar-apply.md) | 99 | `result-track:3c157dcee5ea58b999751d689e80eef6c05f9b1970a62b93d912593d690bfcf0` |
| 9 | `theorem` | [Prefunctor.star_comp](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-star-comp.md) | 103 | `result-track:c1c1d4d3846b6c129821f3c8c95f5db5bdc0d933956d59497c80c8190ea9b83c` |
| 10 | `theorem` | [Prefunctor.costar_comp](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-costar-comp.md) | 106 | `result-track:c32484a063655d2fb19d3e25587a65ff0482059228b136f432d01ae207f1d0d1` |
| 11 | `structure` | [Prefunctor.IsCovering](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-iscovering.md) | 110 | `declaration-track:d885a6fae9fecccbcbc918366f2697c1b5a32bc3d20522e79ec2f6f35137a584` |
| 12 | `theorem` | [Prefunctor.IsCovering.map_injective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-iscovering-map-injective.md) | 115 | `result-track:3f879ae5f4127019684b5d216cd27610f0b1fd536c552d1b8bac1b1ae5b1a6f6` |
| 13 | `theorem` | [Prefunctor.IsCovering.comp](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-iscovering-comp.md) | 121 | `result-track:4fbb2e3bb69eab3cfe408b5bd3661a016407b78ee6ff59aa267645ae50370c79` |
| 14 | `theorem` | [Prefunctor.IsCovering.of_comp_right](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-iscovering-of-comp-right.md) | 125 | `result-track:0caa5eabc41bd46f3bdd2d1381d95a7cd87791ef2229071fb4b6247556491b08` |
| 15 | `theorem` | [Prefunctor.IsCovering.of_comp_left](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-iscovering-of-comp-left.md) | 130 | `result-track:410f1317c7ab732b2d35a85f31450441c64c668e70a029428f0badbefcf470d7` |
| 16 | `def` | [Quiver.symmetrifyStar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-symmetrifystar.md) | 138 | `declaration-track:cc835e1f99024741afa8b2224f8d2f7510ab30289d44b97e6242e217516f15a5` |
| 17 | `def` | [Quiver.symmetrifyCostar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-symmetrifycostar.md) | 144 | `declaration-track:5185de3f3a5e58dea3cbdc919927854936f69d1f3264f0943639336d13440d94` |
| 18 | `theorem` | [Prefunctor.symmetrifyStar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-symmetrifystar.md) | 149 | `result-track:9b0e061f75ffd235e423376c874fcd04839889e6deeddf1c98cdfc57b6f76c3e` |
| 19 | `theorem` | [Prefunctor.symmetrifyCostar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-symmetrifycostar.md) | 161 | `result-track:791a5933c2b27b1e0c49a4fa352e2486a8dde5b23475a0ece68be166d8e81fee` |
| 20 | `theorem` | [Prefunctor.IsCovering.symmetrify](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-iscovering-symmetrify.md) | 174 | `result-track:baa962e66fabc86d581b4c5d33c6237187449667a5bb97c6e77d41d2a583a8dd` |
| 21 | `abbrev` | [Quiver.PathStar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-pathstar.md) | 181 | `declaration-track:1c96371d07a1617578a26a327be49b6265951785756c65c4f6c2c1760e86161c` |
| 22 | `abbrev` | [Quiver.PathStar.mk](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-pathstar-mk.md) | 185 | `declaration-track:2b046f7707e141333229bc664b44ce9cfc44e0a98138bc39e13a78f83e917a72` |
| 23 | `def` | [Prefunctor.pathStar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-pathstar.md) | 189 | `declaration-track:b270c38340166431ea9e23f6fe3d9270bb29d00e24aaba2752da559e4725be84` |
| 24 | `theorem` | [Prefunctor.pathStar_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-pathstar-apply.md) | 193 | `result-track:8979feebee0bfc8b82ba0c21cd016dfd9184cd1d9ad3420033e2ba5ed3aa2ef1` |
| 25 | `theorem` | [Prefunctor.pathStar_injective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-pathstar-injective.md) | 197 | `result-track:45a2e9e6272cf1afa8e5ebc11974adf2e5ac74d2e97d2089fee7c7b177ec1707` |
| 26 | `theorem` | [Prefunctor.pathStar_surjective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-pathstar-surjective.md) | 238 | `result-track:e09d06eb3d818915c4a47d15dc89b33fed5b0ca7e9d29d2a9b3f20966032f713` |
| 27 | `theorem` | [Prefunctor.pathStar_bijective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-pathstar-bijective.md) | 259 | `result-track:ef1ea6a2e284bb0a8ac2ce86e3256291080d8a56307a99ce674d175d826625b9` |
| 28 | `theorem` | [pathStar_bijective](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/pathstar-bijective.md) | 267 | `result-track:b8527f15a57400a729f862a17ca311dffce3ed6ac45991a60eaad9331d558508` |
| 29 | `def` | [Quiver.starEquivCostar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-starequivcostar.md) | 279 | `declaration-track:875f0b60a211882d39f52b695cb51901d9322e76750fdf76e891c2260a568042` |
| 30 | `theorem` | [Quiver.starEquivCostar_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-starequivcostar-apply.md) | 286 | `result-track:6bb5322d3af6825aa92145bd7ada4d798402ed9e760f4cb01273e95cecfca2f6` |
| 31 | `theorem` | [Quiver.starEquivCostar_symm_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/quiver-starequivcostar-symm-apply.md) | 291 | `result-track:a39c2954ce42becf6d9ea583bb708c5edfacde5b066bcd5de7aa48a7fe8b9a66` |
| 32 | `theorem` | [Prefunctor.costar_conj_star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-costar-conj-star.md) | 297 | `result-track:da5e51b93785e0d9b4b28668203d3b42a21b090fcd9f2a79b3d9fb7d3723e011` |
| 33 | `theorem` | [Prefunctor.bijective_costar_iff_bijective_star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-bijective-costar-iff-bijective-star.md) | 301 | `result-track:53866de9bd06f484094d38ee5dec30d5829da28bc8d275bbca45f13a5f8842d9` |
| 34 | `theorem` | [Prefunctor.isCovering_of_bijective_star](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-iscovering-of-bijective-star.md) | 305 | `result-track:28e716cafcaa482214584bea1d18b9ba655a3cf083bc2476a7ae8de15e62fad0` |
| 35 | `theorem` | [Prefunctor.isCovering_of_bijective_costar](../../../../../Combinatorics/GraphTheory/CoveringNamespacedPublic.lean/declarations/prefunctor-iscovering-of-bijective-costar.md) | 308 | `result-track:fb1916b579274db35d711edc6cac6cc78ea2610788edf944d9b0354a9acf26f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfdbd492a81389c0455bad2456ad7b06ff83930a9c01191acf465adf4b7f2878 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant0ab1887e843f75085187cdac6f364f0d3a32b7ef625abc3d2eddf5fb63d19fc3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant0ab1887e843f75085187cdac6f364f0d3a32b7ef625abc3d2eddf5fb63d19fc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
