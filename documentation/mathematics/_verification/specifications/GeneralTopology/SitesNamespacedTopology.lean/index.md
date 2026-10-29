# Verification target: Sites Namespaced Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b49aa52317a45cf99ca16293c9a3a6f61501c96",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantff5a1f435ae870b6e6947d7b821fa855b0ef9f85cb25f927c9f51dde7436634a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SitesNamespacedTopology.lean/index.md) · [Full source](../../../../GeneralTopology/SitesNamespacedTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b49aa52317a45cf99ca16293c9a3a6f61501c96`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantff5a1f435ae870b6e6947d7b821fa855b0ef9f85cb25f927c9f51dde7436634a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantff5a1f435ae870b6e6947d7b821fa855b0ef9f85cb25f927c9f51dde7436634a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Spaces` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Sheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coveringOfPresieve](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/coveringofpresieve.md) | 46 | `declaration-track:61662ea28188afd7d4b9e5dcb64045d54200942622ed6a48932b08b35bcb617d` |
| 2 | `theorem` | [coveringOfPresieve_apply](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/coveringofpresieve-apply.md) | 50 | `result-track:82639ed8bd72bc64493fd9b8f4c326d4dc66d0bb9abbdc6e0a2de60aea1606cd` |
| 3 | `theorem` | [iSup_eq_of_mem_grothendieck](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/isup-eq-of-mem-grothendieck.md) | 60 | `result-track:edb92862b60270373d7e8df65ee9b66136138b1fb6c403abbe8a76f87f346274` |
| 4 | `def` | [presieveOfCoveringAux](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/presieveofcoveringaux.md) | 77 | `declaration-track:4d52e438bb73ec4d8bd4312389afc5a8441b9ec8517ed6349579107007ca6e25` |
| 5 | `def` | [presieveOfCovering](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/presieveofcovering.md) | 81 | `declaration-track:36cb9826e68d8db0ca7b547943c695e7c5c777612878a8d8fb497874150a8157` |
| 6 | `theorem` | [covering_presieve_eq_self](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/covering-presieve-eq-self.md) | 89 | `result-track:8a93ad62ae4c53a5f92aee73b25b0cb4779adc36399e42c58e23be3277938272` |
| 7 | `theorem` | [mem_grothendieckTopology](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/mem-grothendiecktopology.md) | 101 | `result-track:89af0da731b138c0bb56dd3f1443e89642bf61f3b3343f1c3dd688aaf798db7b` |
| 8 | `def` | [homOfIndex](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/homofindex.md) | 110 | `declaration-track:322c36b74a45774926a50887ca67bda4b20bc44a5473bdf27327eea77b459dc5` |
| 9 | `def` | [indexOfHom](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/indexofhom.md) | 116 | `declaration-track:7685ae381a580b9b2bf66fb89a61dbd795d190cb20a1dc9c96913e4ca085aadf` |
| 10 | `theorem` | [indexOfHom_spec](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/indexofhom-spec.md) | 119 | `result-track:15973ad01dcae927640a1af0c872154230c1089067edac1a7f50eaef562dcdcb` |
| 11 | `theorem` | [coverDense_iff_isBasis](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/coverdense-iff-isbasis.md) | 131 | `result-track:5bf70650806acf43719a843460c89b2b325995d480ba433082712cb16b9addf0` |
| 12 | `theorem` | [coverDense_inducedFunctor](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/coverdense-inducedfunctor.md) | 140 | `result-track:1a20617027e68cc43cdcd21b9e5e6f18b0212aa362ec2d6873522f42e6aec7d2` |
| 13 | `theorem` | [Topology.IsOpenEmbedding.compatiblePreserving](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/topology-isopenembedding-compatiblepreserving.md) | 153 | `result-track:006bb708e6080be9fbb11c7f57f952bc73abf92168afbc3ecbe2fb85b8d6b9e6` |
| 14 | `theorem` | [IsOpenMap.coverPreserving](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/isopenmap-coverpreserving.md) | 162 | `result-track:b5b6309ed297477e38be8d886e7f52fb8cfdeb88bd999fdcecca09f8be93f167` |
| 15 | `lemma` | [Topology.IsOpenEmbedding.functor_isContinuous](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/topology-isopenembedding-functor-iscontinuous.md) | 170 | `result-track:1ed850ebb9623a7eacf26d323d61eeb06704e17988007add966f452436ac7f5c` |
| 16 | `theorem` | [TopCat.Presheaf.isSheaf_of_isOpenEmbedding](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/topcat-presheaf-issheaf-of-isopenembedding.md) | 177 | `result-track:cd715b62092d1d7e72b4f7d39a9713a6cdb36c29317ed04bcb167611ff738a90` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/instance-source-edition-2.md) | 184 | `declaration-track:698360ffa514e3f931a5388ee2270e9b91423521d3e46aa2f404b24336914aec` |
| 18 | `theorem` | [compatiblePreserving_opens_map](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/compatiblepreserving-opens-map.md) | 196 | `result-track:153b0a69200f99f0f8fc2395dc63722df05da80066e8566de00784c6b738d9c1` |
| 19 | `theorem` | [coverPreserving_opens_map](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/coverpreserving-opens-map.md) | 200 | `result-track:1090911fe34130aee7ba686e200eb60fbc46776f268028111f93dcf09c4c823c` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/instance.md) | 207 | `declaration-track:3b9517f093d4034574574d0362428cf9b694abe40d6d276716c5115492f20f0b` |
| 21 | `def` | [isTerminalOfEmpty](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/isterminalofempty.md) | 224 | `declaration-track:0987dfdda32f88ec5074832e5fd951f9961190f6c023de122b090f7a038990bb` |
| 22 | `def` | [isTerminalOfEqEmpty](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/isterminalofeqempty.md) | 228 | `declaration-track:389551e279e3e9c6c78e81ed476b7cdbb833a1eec67fba00bb20e1b74e8f5293` |
| 23 | `def` | [restrictHomEquivHom](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/restricthomequivhom.md) | 236 | `declaration-track:fa44f8e1a43fafd242a32eec6d3524d05eaa2fcea8c78d114a337169fdb76ba1` |
| 24 | `theorem` | [extend_hom_app](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/extend-hom-app.md) | 242 | `result-track:5b3da8ec95c58e408daf314da756a56bb3d1c044b2c3e27453ecac7965e3e8ce` |
| 25 | `theorem` | [hom_ext](../../../../GeneralTopology/SitesNamespacedTopology.lean/declarations/hom-ext.md) | 248 | `result-track:28203ea9446438cdfe353df670a8dc5cbf05e5f5ab2f5862677a9e999c2a18ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2f6c9caa98742f8dab4c17fd36d0c6e2409197b4b715f14c30462ff9b916e48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantff5a1f435ae870b6e6947d7b821fa855b0ef9f85cb25f927c9f51dde7436634a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variantff5a1f435ae870b6e6947d7b821fa855b0ef9f85cb25f927c9f51dde7436634a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
