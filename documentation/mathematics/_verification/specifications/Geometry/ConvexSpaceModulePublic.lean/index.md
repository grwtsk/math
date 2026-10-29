# Verification target: Convex Space Module Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d9ce9a13803bd7ffacd3ea042fd9e7e8315b152",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/ConvexSpaceModulePublic.lean/index.md) · [Full source](../../../../Geometry/ConvexSpaceModulePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d9ce9a13803bd7ffacd3ea042fd9e7e8315b152`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Prod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConvexSpace.ofModule](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/convexspace-ofmodule.md) | 46 | `declaration-track:7ef0085b78992675d850daeccbf75377df57fec785428ed866fcf37130a63265` |
| 2 | `instance` | [convexSpaceSelf](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/convexspaceself.md) | 61 | `declaration-track:7cbbc6ada5af2422e7e590c386e9d02b0494a65857e345e91d6a6f245fcb0fb7` |
| 3 | `class` | [IsModuleConvexSpace](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/ismoduleconvexspace.md) | 65 | `declaration-track:7d6d6661ad49ba4aa40100bfa7082d4bbdee7e22658636d6f3388c919cd123b3` |
| 4 | `instance` | [IsModuleConvexSpace.of_module](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/ismoduleconvexspace-of-module.md) | 75 | `declaration-track:ba7f8336b85f184687bfbaef87ed040c474f0923fbd3b026021e0ae73b6f3d46` |
| 5 | `lemma` | [isModuleConvexSpace_self](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/ismoduleconvexspace-self.md) | 79 | `result-track:8be57d41feb4cfc34fd7218f5ef85cf1b1ea6dd441277c882fa8849202231d95` |
| 6 | `lemma` | [iConvexComb_eq_sum](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/iconvexcomb-eq-sum.md) | 87 | `result-track:ba169d0fca74dcb606afb78c745b9b430ba6ff53767666d95f49a0bbbbd5a7f8` |
| 7 | `lemma` | [StdSimplex.affineMapMk_apply_eq_sum_of_fintype](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/stdsimplex-affinemapmk-apply-eq-sum-of-fintype.md) | 91 | `result-track:803adf9a5f53216ae9d7a98661b84b55bae0fc4405ca8ecc28144b10e06720c0` |
| 8 | `lemma` | [StdSimplex.coe_affineMapMk_of_fintype](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/stdsimplex-coe-affinemapmk-of-fintype.md) | 96 | `result-track:55ce9649c02d305ad6c46ec025cea30759a15b963f6d90f3cd8fc0e85dc47f71` |
| 9 | `lemma` | [convexCombPair_eq_sum](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/convexcombpair-eq-sum.md) | 104 | `result-track:027ea927ecaa9d5448f4c226f46ee0c58203a3417d43fc6ab7e8502ed71151e8` |
| 10 | `lemma` | [IsAffineMap.map_sum_weights](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-map-sum-weights.md) | 108 | `result-track:17baa18ae073e82e57f60ef40c23c5523b3d9a5b6f3f56cd4ef669ac58ff35ea` |
| 11 | `lemma` | [IsAffineMap.map_smul_add_smul](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-map-smul-add-smul.md) | 112 | `result-track:77f38524b3578e1953d3d2610705d3195bb7b1527fccc058bf77bd9901db3065` |
| 12 | `lemma` | [isConvexSet_coe](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isconvexset-coe.md) | 116 | `result-track:850f19bdec10dc913a6e24dfee97b7a41242fb869d7dcaa5a4474a175691e94c` |
| 13 | `instance` | [(anonymous)](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/instance-source-edition-5.md) | 121 | `declaration-track:6ca030464f706384bbcb8676e988d17ed1b4b373c31eb536a8a62ceb5e722495` |
| 14 | `lemma` | [subtypeVal_submodule_sConvexComb](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/subtypeval-submodule-sconvexcomb.md) | 124 | `result-track:1ecc7a1eef86e85a4b8dab67b2ce61acf2c2da7ae01ab418333a733f0b11b09f` |
| 15 | `lemma` | [subtypeVal_submodule_iConvexComb](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/subtypeval-submodule-iconvexcomb.md) | 127 | `result-track:9bf7e065a7c33f1365bc39c42cc4d3325f028993323f637029a7fd6786379d25` |
| 16 | `lemma` | [subtypeVal_submodule_convexCombPair](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/subtypeval-submodule-convexcombpair.md) | 130 | `result-track:a8a4056ae011b972f2a50656b82f94fcc1e6c2683c235f5f0ce4a102f6439ea5` |
| 17 | `instance` | [(anonymous)](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/instance-source-edition-2.md) | 134 | `declaration-track:37b9612b7216797e61522e4d2ad1e9c860b9aa1cceae8b165fe7ed589a8ee83b` |
| 18 | `instance` | [(anonymous)](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/instance-source-edition-3.md) | 136 | `declaration-track:6821ad35b227d7ca3a8ab5835c4b2a2b6680c35b12729f4052645d0492c29982` |
| 19 | `instance` | [(anonymous)](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/instance.md) | 139 | `declaration-track:02e752817e15fbd65f0c2a547473cfc1e2499456554ad8a3073c608e8af3fab4` |
| 20 | `instance` | [(anonymous)](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/instance-source-edition-4.md) | 144 | `declaration-track:6b56214cde1600bfbdcf18b75a935355b70fdccd638104cda054a56d0ffbcec1` |
| 21 | `lemma` | [IsAffineMap.linearMap](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-linearmap.md) | 148 | `result-track:20f8b815ae6b0d06a3ef5245b0d815787fac530bbfad6b77b7eab6cef1fedca6` |
| 22 | `lemma` | [isAffineMap_add](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-add-source-edition-2.md) | 153 | `result-track:f29febaa4cd5cde273be6092bf0d3bbfd046059fe11fc49c77f4d239613a1e98` |
| 23 | `lemma` | [IsAffineMap.add](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-add.md) | 160 | `result-track:bc1c0e8c00f4282533e634a06358c0d5147e168b69a5f481dea4b66efc8931b5` |
| 24 | `lemma` | [isAffineMap_const_smul](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-const-smul.md) | 167 | `result-track:26f2c5c4c13eef95e4e61e9630ea66e39d1231bc4fc70cba594db0cde8df790b` |
| 25 | `lemma` | [IsAffineMap.const_smul](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-const-smul-source-edition-2.md) | 174 | `result-track:a19b64d167e4a17fa969f99f0dfb6f1de75ded72a73277328063d9efdc5e8345` |
| 26 | `lemma` | [IsStarConvexSet.add](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isstarconvexset-add.md) | 180 | `result-track:19f7f3d75615264534ed65d051c805b1b5c8cdd8dadf71ac099b73f0fd515d88` |
| 27 | `instance` | [_root_.SMulCommClass.toIsConvexCombComm](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/root-smulcommclass-toisconvexcombcomm.md) | 193 | `declaration-track:830b76eb2264ae880049e939f35007c83f63ba8362449d9a3c60e4f88706fffc` |
| 28 | `lemma` | [StdSimplex.isAffineMap_weights](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/stdsimplex-isaffinemap-weights.md) | 202 | `result-track:00f2485100a2061585604d0a32261076bc7845664eb825d6fb0959315619d5f4` |
| 29 | `lemma` | [isAffineMap_neg](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-neg-source-edition-2.md) | 213 | `result-track:d41bd2ad2d4874ea5c833d24e90d1883122b16fd8b267e5d477d647973f527e9` |
| 30 | `lemma` | [isAffineMap_sub](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-sub-source-edition-2.md) | 216 | `result-track:732ef3e01a763c0c26c0466263eab552c2eed12482508d74a1f1aba119168a63` |
| 31 | `lemma` | [IsAffineMap.neg](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-neg.md) | 223 | `result-track:0539aa864d26cdb1478b21bc441f11d2031a514488f9c3e064b38df7c7c75a2e` |
| 32 | `lemma` | [IsAffineMap.sub](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-sub.md) | 227 | `result-track:710e6c1fb7cfc62335d918223101399c9b18ee3ecab07e34226e9d5bd9c672ec` |
| 33 | `lemma` | [isAffineMap_neg_iff](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isaffinemap-neg-iff.md) | 231 | `result-track:5df886ed9d7cc502c29d09e8ea9b9fa77496316ae7e4df5cc59ceb6acad2f7f2` |
| 34 | `lemma` | [IsStarConvexSet.neg](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isstarconvexset-neg.md) | 237 | `result-track:dc8643587c7dc13cbaa9cf69ba0f8b4d8c5a9747e22a46372dea06359dc344f6` |
| 35 | `lemma` | [IsStarConvexSet.sub](../../../../Geometry/ConvexSpaceModulePublic.lean/declarations/isstarconvexset-sub.md) | 240 | `result-track:27cee91dad101c24f8c9313e1d68ea6c45aec9d0404c25b4695d746a9d54e7f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8f60c59d9b808452cf6bdea8dc569b2fe9c76332ec04ac9e0ab2a0b1560cd41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Module/Variant3d5a341514d280e0e3037a4e0674978a5790c4d38e275a818c0bc11e01802ab2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
