# Verification target: Tangent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04032c452b9ab100e527882c7e8c5c111fdf32f6",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/Tangent.lean/index.md) · [Full source](../../../../DifferentialGeometry/Tangent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04032c452b9ab100e527882c7e8c5c111fdf32f6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffOn_fderiv_coord_change](../../../../DifferentialGeometry/Tangent.lean/declarations/contdiffon-fderiv-coord-change.md) | 54 | `result-track:439745db404c314a7556275fade040411398e8c7da8b63164aa5691ec82bd6d6` |
| 2 | `def` | [tangentBundleCore](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundlecore.md) | 82 | `declaration-track:9668c26ddfd749bc4f296f1f3dc65978599ee6d58ce4b94ed4d0eb49830e2170` |
| 3 | `theorem` | [tangentBundleCore_baseSet](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundlecore-baseset.md) | 119 | `result-track:43996dfa27d1f40e26a6899161868a7d74501f7c741952237a8622336a9ed5ca` |
| 4 | `theorem` | [tangentBundleCore_coordChange_achart](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundlecore-coordchange-achart.md) | 121 | `result-track:83a2aa13360c1413fd64591b84e178a460ebc5fe5424a6c28e7dd95ab5a1b819` |
| 5 | `abbrev` | [tangentCoordChange](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentcoordchange.md) | 135 | `declaration-track:62dd8a4a6225318dd52d21dc7bfe79ba113944c3772c275dc54bb6dd670bb1bc` |
| 6 | `lemma` | [tangentCoordChange_def](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentcoordchange-def.md) | 138 | `result-track:47e0e6798d7c367b135a7bc6983dfdc2f7584bde9036a160551a60e769332136` |
| 7 | `lemma` | [tangentCoordChange_self](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentcoordchange-self.md) | 141 | `result-track:8f0b87ae43e913b81bb14b1c909c2e0dd22d584df334ca2a793fc1b69f4cfaac` |
| 8 | `lemma` | [tangentCoordChange_comp](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentcoordchange-comp.md) | 147 | `result-track:e489d09ec439a6d12c5473d5f3619fa53b727509eda6540270fbbbe46965d85e` |
| 9 | `lemma` | [hasFDerivWithinAt_tangentCoordChange](../../../../DifferentialGeometry/Tangent.lean/declarations/hasfderivwithinat-tangentcoordchange.md) | 154 | `result-track:630aab05dff477aebacd907975dd1f1c3eecc9523993340e6e19102f0b6fe4c2` |
| 10 | `lemma` | [continuousOn_tangentCoordChange](../../../../DifferentialGeometry/Tangent.lean/declarations/continuouson-tangentcoordchange.md) | 163 | `result-track:3b7cbbd91c6fce4e11f476e98dae819033b71edf873b1f45b33c8b8853324113` |
| 11 | `instance` | [(anonymous)](../../../../DifferentialGeometry/Tangent.lean/declarations/instance-source-edition-3.md) | 174 | `declaration-track:1294aab5210e2976557c7967755987545c38871b3136bb66cb46ff5d9bac3803` |
| 12 | `instance` | [TangentSpace.fiberBundle](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentspace-fiberbundle.md) | 177 | `declaration-track:5d51084aca327131ebb043852484afb93e08609cc777ed9488c056dc58e13e9c` |
| 13 | `instance` | [TangentSpace.vectorBundle](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentspace-vectorbundle.md) | 180 | `declaration-track:fbeb764d00634686012d4fba69607cf6dd2960ab0951dfa74491118948d57d9b` |
| 14 | `theorem` | [chartAt](../../../../DifferentialGeometry/Tangent.lean/declarations/chartat.md) | 185 | `result-track:c628f3dd92c9a7bae318252effbebf03f5e599132a011abec6b572f87036460c` |
| 15 | `theorem` | [chartAt_toPartialEquiv](../../../../DifferentialGeometry/Tangent.lean/declarations/chartat-topartialequiv.md) | 191 | `result-track:23bbc96294b01f2cd2116aca028ef2ba74cf4c27c8cdcf750b28542f240dd758` |
| 16 | `theorem` | [trivializationAt_eq_localTriv](../../../../DifferentialGeometry/Tangent.lean/declarations/trivializationat-eq-localtriv.md) | 197 | `result-track:583b391f29f1d895b811474c5f7b95098adb0ee99d775cc319a378a51122a251` |
| 17 | `theorem` | [trivializationAt_source](../../../../DifferentialGeometry/Tangent.lean/declarations/trivializationat-source.md) | 203 | `result-track:5490e1c86c9339288c414d0132c2d34772f8b2c48c42867af7c597b0c15d8158` |
| 18 | `theorem` | [trivializationAt_target](../../../../DifferentialGeometry/Tangent.lean/declarations/trivializationat-target.md) | 209 | `result-track:d9384c839b1c59197230c910a057240886570a01d4a5954aa615b3ce9438e9e7` |
| 19 | `theorem` | [trivializationAt_baseSet](../../../../DifferentialGeometry/Tangent.lean/declarations/trivializationat-baseset.md) | 214 | `result-track:928cdee4adda6770e6dbbe6f75dd7a88dda5ba2f401c82b3b1e3dfc0b4583ff7` |
| 20 | `theorem` | [trivializationAt_apply](../../../../DifferentialGeometry/Tangent.lean/declarations/trivializationat-apply.md) | 218 | `result-track:3188bd962b031415b8aaca37b918fa010bccfb0dec4bfc24e57e78f629f8bcfb` |
| 21 | `theorem` | [trivializationAt_fst](../../../../DifferentialGeometry/Tangent.lean/declarations/trivializationat-fst.md) | 225 | `result-track:271e579fbda1ff10345a65f53bc17e7261da311c4a8581976d82160466a95551` |
| 22 | `theorem` | [mem_chart_source_iff](../../../../DifferentialGeometry/Tangent.lean/declarations/mem-chart-source-iff.md) | 229 | `result-track:f2ca958830b00bbbf3659944b4ae43c53d32e5414478f194af1af13089c28e38` |
| 23 | `theorem` | [mem_chart_target_iff](../../../../DifferentialGeometry/Tangent.lean/declarations/mem-chart-target-iff.md) | 234 | `result-track:c373e7721e6e333c88fef5dfad98c07f1521a7b7b971765b546b5c9955b1eb3f` |
| 24 | `theorem` | [coe_chartAt_fst](../../../../DifferentialGeometry/Tangent.lean/declarations/coe-chartat-fst.md) | 245 | `result-track:39f46d028669d393727371de02c9970667a8bacf64383cec619d6ae5670ea291` |
| 25 | `theorem` | [coe_chartAt_symm_fst](../../../../DifferentialGeometry/Tangent.lean/declarations/coe-chartat-symm-fst.md) | 249 | `result-track:6a9727ccf8419dff3bc337242227b8857d9d7149d6bf5516f8f0e069725bfb08` |
| 26 | `theorem` | [trivializationAt_continuousLinearMapAt](../../../../DifferentialGeometry/Tangent.lean/declarations/trivializationat-continuouslinearmapat.md) | 254 | `result-track:c459f6093136ded97981d299d4359e6b769ffff1b4b80c60f185922be169f9aa` |
| 27 | `theorem` | [trivializationAt_symmL](../../../../DifferentialGeometry/Tangent.lean/declarations/trivializationat-symml.md) | 261 | `result-track:bb34e679fbecbefb693e7287f56bf2a2ca2d43bb311d297010a4c3a28b61bee8` |
| 28 | `theorem` | [coordChange_model_space](../../../../DifferentialGeometry/Tangent.lean/declarations/coordchange-model-space.md) | 269 | `result-track:ea07a3e9100b9a71bae99dd3ff2fd3383d42aa656a3eae145651dacaa927b8cd` |
| 29 | `theorem` | [symmL_model_space](../../../../DifferentialGeometry/Tangent.lean/declarations/symml-model-space.md) | 276 | `result-track:0b9ed8f2fb7a1477f3eb55396e44546d910d8e33e2a2e552008ee034d692617a` |
| 30 | `theorem` | [continuousLinearMapAt_model_space](../../../../DifferentialGeometry/Tangent.lean/declarations/continuouslinearmapat-model-space.md) | 283 | `result-track:113083208549c0d058432123c66db2ae0893d3943c4a4c48068447d7a465ae3c` |
| 31 | `lemma` | [tangentBundleCore.isContMDiff](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundlecore-iscontmdiff.md) | 291 | `result-track:af80a136a6373180db701a181577852f3f8666f5970f0a42ea8eec397b1773e1` |
| 32 | `lemma` | [TangentBundle.contMDiffVectorBundle](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundle-contmdiffvectorbundle.md) | 308 | `result-track:40866eb7175ede4147e02aa55d3cdabe60049803ed3201093b62cd28491ef2dd` |
| 33 | `instance` | [(anonymous)](../../../../DifferentialGeometry/Tangent.lean/declarations/instance.md) | 319 | `declaration-track:0de7b45dbef94886f7bb9436056a5d9e7204e92e537c67ab3dd116a0282aa50f` |
| 34 | `instance` | [(anonymous)](../../../../DifferentialGeometry/Tangent.lean/declarations/instance-source-edition-2.md) | 325 | `declaration-track:0e09a8aa9dbf29d5d8858704e3ebc7906f79ed64b9088afaf3a158738fdc59c4` |
| 35 | `instance` | [(anonymous)](../../../../DifferentialGeometry/Tangent.lean/declarations/instance-source-edition-4.md) | 330 | `declaration-track:9317b6f69b6a45dcb0b244b8693c076f3bea7b1e1ee6267555ecebec49defa15` |
| 36 | `theorem` | [trivializationAt_model_space_apply](../../../../DifferentialGeometry/Tangent.lean/declarations/trivializationat-model-space-apply.md) | 340 | `result-track:65775563164ccf892ced488509fb72f7c8f052693a6c3c9bb3b6d150771ce4ff` |
| 37 | `theorem` | [tangentBundle_model_space_chartAt](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundle-model-space-chartat.md) | 351 | `result-track:cbae248b485acc2c44a4900c5fcdf53d36ab076f6f6f9815dc8eeb89fa8a19bc` |
| 38 | `theorem` | [tangentBundle_model_space_coe_chartAt](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundle-model-space-coe-chartat.md) | 365 | `result-track:26205ffc92da0210e6e3f2261377fca626d40343c502d60def46d71f743f5fe1` |
| 39 | `theorem` | [tangentBundle_model_space_coe_chartAt_symm](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundle-model-space-coe-chartat-symm.md) | 370 | `result-track:78b86cb4bfa0dab58273227e9f58a98e20d56074f78ac6d5933f67e9f9ebca33` |
| 40 | `theorem` | [tangentBundleCore_coordChange_model_space](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundlecore-coordchange-model-space.md) | 376 | `result-track:b49c6510ffe250e81e0190b401f4e7d4c3aefaa98d5db23ebab4a1cabdfc6c1e` |
| 41 | `def` | [tangentBundleModelSpaceHomeomorph](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundlemodelspacehomeomorph.md) | 384 | `declaration-track:46511683676762cdccf231964ba1fade69e127f71a4efe9c63684189ddaa3255` |
| 42 | `theorem` | [tangentBundleModelSpaceHomeomorph_coe](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundlemodelspacehomeomorph-coe.md) | 402 | `result-track:f56ebc1cca6c8fe5aa55341367734538716c8b76ef676385c95e94708160c531` |
| 43 | `theorem` | [tangentBundleModelSpaceHomeomorph_coe_symm](../../../../DifferentialGeometry/Tangent.lean/declarations/tangentbundlemodelspacehomeomorph-coe-symm.md) | 408 | `result-track:464386b6c27c526cb3fd8297ae64cfccd335cd70a9b7f73772af6d26028abec8` |
| 44 | `theorem` | [contMDiff_tangentBundleModelSpaceHomeomorph](../../../../DifferentialGeometry/Tangent.lean/declarations/contmdiff-tangentbundlemodelspacehomeomorph.md) | 413 | `result-track:865fdf834c0bb08ef18a5f0e51b32d3d28835f1f932d5c1caf007c6d9c28fe24` |
| 45 | `theorem` | [contMDiff_tangentBundleModelSpaceHomeomorph_symm](../../../../DifferentialGeometry/Tangent.lean/declarations/contmdiff-tangentbundlemodelspacehomeomorph-symm.md) | 423 | `result-track:73fdefaac6dccbd6c02f963f9a9ff550ba286560414ec90ccd53125d25aeee13` |
| 46 | `lemma` | [contMDiff_snd_tangentBundle_modelSpace](../../../../DifferentialGeometry/Tangent.lean/declarations/contmdiff-snd-tangentbundle-modelspace.md) | 435 | `result-track:a6d7cf80c68932c211e9cf68c61cfdc660c254ecb2c9a9fbebfe5710001762bb` |
| 47 | `lemma` | [contMDiffWithinAt_vectorSpace_iff_contDiffWithinAt](../../../../DifferentialGeometry/Tangent.lean/declarations/contmdiffwithinat-vectorspace-iff-contdiffwithinat.md) | 447 | `result-track:1286ed2cbd321119e49ec20f1dc59caa9f4e7d2e60ef6a55e3797d0cf68fb52d` |
| 48 | `lemma` | [contMDiffAt_vectorSpace_iff_contDiffAt](../../../../DifferentialGeometry/Tangent.lean/declarations/contmdiffat-vectorspace-iff-contdiffat.md) | 461 | `result-track:21a50e81e97b69d92c9334b9166f3bc2eb88aa81c1b589e2a5f1898e6547ea3f` |
| 49 | `lemma` | [contMDiffOn_vectorSpace_iff_contDiffOn](../../../../DifferentialGeometry/Tangent.lean/declarations/contmdiffon-vectorspace-iff-contdiffon.md) | 470 | `result-track:66f081697eca582b662c37eca55f09ab065a3372678df1188a332f6ae7cc70f6` |
| 50 | `lemma` | [contMDiff_vectorSpace_iff_contDiff](../../../../DifferentialGeometry/Tangent.lean/declarations/contmdiff-vectorspace-iff-contdiff.md) | 478 | `result-track:348383dd51cb9d87a9b08624e4ccd8543f2ba18995c1af23177aec5868387ae3` |
| 51 | `theorem` | [inCoordinates_tangent_bundle_core_model_space](../../../../DifferentialGeometry/Tangent.lean/declarations/incoordinates-tangent-bundle-core-model-space.md) | 489 | `result-track:5531f060ddbd4e56cb90dd13ff5eb20fd705ebfc2e5812903da3faef4516e532` |
| 52 | `def` | [inTangentCoordinates](../../../../DifferentialGeometry/Tangent.lean/declarations/intangentcoordinates.md) | 507 | `declaration-track:445a54a06e1427f8beab860a33194a9c51fcf8e8b5b6c6b4c9a61a85f9d7153d` |
| 53 | `theorem` | [inTangentCoordinates_model_space](../../../../DifferentialGeometry/Tangent.lean/declarations/intangentcoordinates-model-space.md) | 510 | `result-track:1012d6a17a88e4e145a3e7ada718488e245ada2eee4d12dc4e299816532b8c92` |
| 54 | `theorem` | [inTangentCoordinates_eq](../../../../DifferentialGeometry/Tangent.lean/declarations/intangentcoordinates-eq.md) | 519 | `result-track:22f488a0d1033bbb179e5494fa1efa9d5e29ebc6f1f4f6bb4b6eac972967a5d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8bbd5c7ecbfb6f56768f58e0dd4db332f11d61f19db9ec300000ec0c2fee6731 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Tangent/Variant8007251719575e92201bcd81a265489644b383eaf4489d5876d734ac7693c71b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
