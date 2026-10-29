# Verification target: NComp Gamma Compatibility NN

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "613ee2aabf79d0d9b14293d00abc8f4b93ea9a1a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/index.md) · [Full source](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `613ee2aabf79d0d9b14293d00abc8f4b93ea9a1a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.GammaCompN` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.NReflectsIso` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PInfty_comp_map_mono_eq_zero](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/pinfty-comp-map-mono-eq-zero.md) | 38 | `result-track:b3700636312f7f317af9d652ecf4d6e52148ec29dda9bc80bd66da6d83d0a57e` |
| 2 | `theorem` | [Γ₀_obj_termwise_mapMono_comp_PInfty](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/obj-termwise-mapmono-comp-pinfty.md) | 83 | `result-track:906465c272357397778f554fae9191bd9b455e959095a69cd65412c0d30d29a3` |
| 3 | `def` | [natTrans](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/nattrans-source-edition-2.md) | 134 | `declaration-track:82558222457679ff386a719daaaba83e49f52e9462e833849d937a77e9a3d705` |
| 4 | `def` | [compatibility_Γ₂N₁_Γ₂N₂](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/compatibility-n-n.md) | 175 | `declaration-track:57ee8c148d14f0b3783753b0f9aecf2435980204963fa6b50722912345e60230` |
| 5 | `lemma` | [compatibility_Γ₂N₁_Γ₂N₂_hom_app](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/compatibility-n-n-hom-app.md) | 181 | `result-track:61aeaa2ab396afcb44ceff4919af39580614a97a8b27b68f51ffcdd2cfd72ede` |
| 6 | `lemma` | [compatibility_Γ₂N₁_Γ₂N₂_inv_app](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/compatibility-n-n-inv-app.md) | 190 | `result-track:49ea958795969893d8eb9422f5e3e778fb53550699323047e3b68bade77dcb83` |
| 7 | `def` | [natTrans](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/nattrans.md) | 199 | `declaration-track:7387486806db4abaa43e2161cc7163c0542a71c8c0f94b2f625a11987ee28c48` |
| 8 | `theorem` | [natTrans_app_f_app](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/nattrans-app-f-app.md) | 205 | `result-track:2810489ddf00a3356665e2623d5b79e35b96e3923f1d051cebe64a81b4bb2e9c` |
| 9 | `theorem` | [compatibility_Γ₂N₁_Γ₂N₂_natTrans](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/compatibility-n-n-nattrans.md) | 220 | `result-track:3c7a3598a8dd75532697edcb23a9d373230140fbe52d9d45248643eacd7faf91` |
| 10 | `theorem` | [identity_N₂_objectwise](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/identity-n-objectwise.md) | 232 | `result-track:499b8fe6376820f4d8e29b3fbcddd6f4a518dd5fc7bc722d6d64c6dbf3b810a7` |
| 11 | `theorem` | [identity_N₂](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/identity-n.md) | 256 | `result-track:de85f73903c4f588f3808bcb06cdc810a8e8f9d2d13bec9c4ca4e88c52e32eb4` |
| 12 | `instance` | [(anonymous)](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/instance-source-edition-2.md) | 266 | `declaration-track:f2da69030837a9601325ab0ba7889a5c0d4b0c4fec7284d7410bc59627390cb2` |
| 13 | `instance` | [(anonymous)](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/instance.md) | 277 | `declaration-track:e87b5954e73fb2f7bec2fcf131cd42d31078804148ebdd0947a6fcc42cd4390b` |
| 14 | `def` | [Γ₂N₂](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/n-source-edition-2.md) | 286 | `declaration-track:ab375e8fdeb389935caeacb87f4751441ad152483bfbb37d46028df40fe1cdaf` |
| 15 | `def` | [Γ₂N₁](../../../../AlgebraicTopology/NCompGammaCompatibilityNN.lean/declarations/n.md) | 293 | `declaration-track:877ca8cd39486f19f30fe6821ce56707a94d03b09d1abc2e531dc35f4f439c0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e173bcf34fc2b16ea8107d5e2aecc4a42ddf951dace7d5ad0ea76486308a5a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
