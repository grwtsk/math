# Verification target: Vector Bundle Tangent Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "934fab2dbf638b2530ee925d6b60e4b199bd04f4",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `934fab2dbf638b2530ee925d6b60e4b199bd04f4`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Notation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffOn_fderiv_coord_change](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/contdiffon-fderiv-coord-change.md) | 59 | `result-track:e467d6ec65acb5edeb8ff6f415969303b6f32f12b27df812ac802c5fd85ff148` |
| 2 | `def` | [tangentBundleCore](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundlecore.md) | 87 | `declaration-track:d1598077560b1d5f81bd44a406021deafeeec70d43561eee06e1066bb0dd0ebf` |
| 3 | `theorem` | [tangentBundleCore_baseSet](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundlecore-baseset.md) | 123 | `result-track:f865a911c4130603bbc0fd61f201dc7085beef9a37847bc2ccbe6c61ff491ac6` |
| 4 | `theorem` | [tangentBundleCore_localTriv_baseSet](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundlecore-localtriv-baseset.md) | 126 | `result-track:15acb51e1d3f401da365c6f5c9f35ea6787d07e75dc9296632060ca32ed7ce8c` |
| 5 | `theorem` | [tangentBundleCore_coordChange_achart](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundlecore-coordchange-achart.md) | 129 | `result-track:43f8e1ba8cf90dd355fbebf42414d435c2401fe097902c6bc5ca72d59fd9fe02` |
| 6 | `abbrev` | [tangentCoordChange](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentcoordchange.md) | 143 | `declaration-track:a647827eb6596ec45313db43da5774eea892e1e87dca97120c30572b26aaa9f8` |
| 7 | `lemma` | [tangentCoordChange_def](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentcoordchange-def.md) | 146 | `result-track:e181bd4902595fa2c84fd67f5d3156781f3bf20435780c1ab8b8b53719ab1f17` |
| 8 | `lemma` | [tangentCoordChange_self](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentcoordchange-self.md) | 149 | `result-track:2fc04de7be9e9740c1e973a7c20941e1027eafaac70d17c61c5729a9c72de64d` |
| 9 | `lemma` | [tangentCoordChange_comp](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentcoordchange-comp.md) | 155 | `result-track:143e8fb16fa526d22822aacb5c9f88f3c83e0cd6adda258c3d83f15b20cf42a7` |
| 10 | `lemma` | [hasFDerivWithinAt_tangentCoordChange](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/hasfderivwithinat-tangentcoordchange.md) | 162 | `result-track:174d004011d46f1e09e24a33a87c7f743e84eb67f30366ba4fe87fedd1158eca` |
| 11 | `lemma` | [continuousOn_tangentCoordChange](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/continuouson-tangentcoordchange.md) | 171 | `result-track:54567a92e1fa1e79207d1e0cb4d691585562a4337975d11f03dfb247cf852165` |
| 12 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/instance-source-edition-4.md) | 182 | `declaration-track:fb77f79ca379cf514de12302e64749700549cd3baeb8f337cece8be850938775` |
| 13 | `instance` | [TangentSpace.fiberBundle](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentspace-fiberbundle.md) | 185 | `declaration-track:96b0b3fbf5baeb166d0e838c0f2557e14174d0acaf90849aa2568cda01636a0a` |
| 14 | `instance` | [TangentSpace.vectorBundle](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentspace-vectorbundle.md) | 188 | `declaration-track:d28c79655bec3d7de37e4f0ad5652a3a56cb0335ee6e8465c3b2e09960ba79b0` |
| 15 | `theorem` | [chartAt](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/chartat.md) | 193 | `result-track:f59972be7db1aabed42ad73ab13191d4c370109b834530b9c0c4c01406c48817` |
| 16 | `theorem` | [chartAt_toPartialEquiv](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/chartat-topartialequiv.md) | 200 | `result-track:986c6102b980bd0b1530a8caa01d070dd6bf9423637ba9f33ae8ef9300633377` |
| 17 | `theorem` | [trivializationAt_eq_localTriv](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/trivializationat-eq-localtriv.md) | 206 | `result-track:4fd68a5dcee72a3650f5f98c60a15c07300c6c5f1f65fdf9e550f0593a5dc9d9` |
| 18 | `theorem` | [trivializationAt_source](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/trivializationat-source.md) | 212 | `result-track:bc07d1d0b2cd965ae45cfd5d95d84f8ac6d589d1743f1f636d9beff5aa4a158c` |
| 19 | `theorem` | [trivializationAt_target](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/trivializationat-target.md) | 218 | `result-track:36ab47fcd53ddf00bfd3800208eb758c5483438a7cb6d36f4d6f833d634c4cdc` |
| 20 | `theorem` | [trivializationAt_baseSet](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/trivializationat-baseset.md) | 223 | `result-track:7fd717406f09c8d74da491b6b73a4e76c334abd62048748fede849e569589bc6` |
| 21 | `theorem` | [trivializationAt_apply](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/trivializationat-apply.md) | 227 | `result-track:bb9f1b034d68824499ece05d71f20e4fc39cc5a926ad2edcd791bc491c5a5bc2` |
| 22 | `theorem` | [trivializationAt_fst](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/trivializationat-fst.md) | 234 | `result-track:e6b67e64429806c15bbaf84fb819a021ce2af5fd5c0fe4da1f5ac03cdc7eb9f1` |
| 23 | `theorem` | [mem_chart_source_iff](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/mem-chart-source-iff.md) | 238 | `result-track:8205017a478ac0d904bc365a241efb5cab42907245fff21bf688e9aa6cb64a31` |
| 24 | `theorem` | [mem_chart_target_iff](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/mem-chart-target-iff.md) | 243 | `result-track:3756f5c451d8d3f8fe6a67a6fa97a9437e44d069ef2271a90faee8d06cd1d731` |
| 25 | `theorem` | [coe_chartAt_fst](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/coe-chartat-fst.md) | 254 | `result-track:12fd48e8b6400c0dcbdd177a79b01230755f7fba6367e1541203bf69ea5a5d94` |
| 26 | `theorem` | [coe_chartAt_symm_fst](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/coe-chartat-symm-fst.md) | 258 | `result-track:b523aedf3c50fc9444ecc9373a5b62ecf373f1f210ca81a7b09578642225d64f` |
| 27 | `theorem` | [continuousLinearMapAt_trivializationAt_eq_core](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/continuouslinearmapat-trivializationat-eq-core.md) | 268 | `result-track:1e5c8127873d2ea55ced3099256bb0ae972dc155a298edbdec42b50675aacc0b` |
| 28 | `theorem` | [symmL_trivializationAt_eq_core](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/symml-trivializationat-eq-core.md) | 279 | `result-track:d0070a0d1bfdd4e287699e203272fae435c7f0836718571661a0b2a8d3b9a924` |
| 29 | `theorem` | [coordChange_model_space](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/coordchange-model-space.md) | 287 | `result-track:a15bcc98e577c22a4ef3f25b492a69134042b28a2f9918f8d699e6fc48ec9138` |
| 30 | `theorem` | [symmL_model_space](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/symml-model-space.md) | 293 | `result-track:7afbfbad4b2074714f45f24e815aee536e09d6df4481cb39710d4e113728d9c8` |
| 31 | `theorem` | [continuousLinearMapAt_model_space](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/continuouslinearmapat-model-space.md) | 299 | `result-track:9d78cf6442b7f3a101cdee99c17631ef2c1ac7fa1b756a25d02c1483c34e48aa` |
| 32 | `lemma` | [tangentBundleCore.isContMDiff](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundlecore-iscontmdiff.md) | 307 | `result-track:efd39a5a3bfee703ee4a885d5413d9d884573133e46a379a20b7c6f5f7f497bd` |
| 33 | `lemma` | [TangentBundle.contMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundle-contmdiffvectorbundle.md) | 321 | `result-track:2b25b5d5fd35b1b49f10f75904d98a08324f22c2f7135d7b7de945b0993634e5` |
| 34 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/instance-source-edition-2.md) | 329 | `declaration-track:7c715b0a115c8918ccd83cdd1bee5f33698ae008e56689985261ab2cfcfe58cb` |
| 35 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/instance-source-edition-3.md) | 335 | `declaration-track:a8db5bec338dd75dc4b9ed67459df931783c8dc68c171221d854e2086b0d2a76` |
| 36 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/instance.md) | 340 | `declaration-track:7c02d3741c8039898bb92e5c7158f1c08d7fca005187f3b786b5db8c8b3ebb91` |
| 37 | `theorem` | [trivializationAt_model_space_apply](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/trivializationat-model-space-apply.md) | 351 | `result-track:03fd673bc4b128c23be6424681dd0aa9ff37b495f7cfa4cef32c74830a425f32` |
| 38 | `theorem` | [tangentBundle_model_space_chartAt](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundle-model-space-chartat.md) | 363 | `result-track:e3a53d3661c84926b17ab41a43bb9f2fb0bf195a80b6b70a4a504db96d3b26d9` |
| 39 | `theorem` | [tangentBundle_model_space_coe_chartAt](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundle-model-space-coe-chartat.md) | 377 | `result-track:35f8b78951b063bf9c8b6ed50995418da23f560658e91bc377aac2d34134a00b` |
| 40 | `theorem` | [tangentBundle_model_space_coe_chartAt_symm](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundle-model-space-coe-chartat-symm.md) | 382 | `result-track:fabd4d23dff77b574ea33aff0156322b5841dc38f92d7b30b27a8ce5e6fdc7c3` |
| 41 | `theorem` | [tangentBundleCore_coordChange_model_space](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundlecore-coordchange-model-space.md) | 388 | `result-track:5d43faf2d9a7aebcf19ffeed52d760e070f34775a763f736ee6512a6b883a9b4` |
| 42 | `def` | [tangentBundleModelSpaceHomeomorph](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundlemodelspacehomeomorph.md) | 397 | `declaration-track:6f3443d19616bf6f1197c1458c5247d30a0a196b5e93c844cd70c070c2b43e62` |
| 43 | `theorem` | [tangentBundleModelSpaceHomeomorph_coe](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundlemodelspacehomeomorph-coe.md) | 415 | `result-track:a6aebd75db6334e1e47ad4e8abd2aff98288746ba7b65dd92af6eece121c1762` |
| 44 | `theorem` | [tangentBundleModelSpaceHomeomorph_coe_symm](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/tangentbundlemodelspacehomeomorph-coe-symm.md) | 421 | `result-track:8cb273d0876bd8a305d2a750782386cf2dfe9e0cb074b28f8ce28f08173b525f` |
| 45 | `theorem` | [contMDiff_tangentBundleModelSpaceHomeomorph](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/contmdiff-tangentbundlemodelspacehomeomorph.md) | 427 | `result-track:b97847e2a63b0f55199e512463f4a2d7981ff1a50b239254f4b6787dab336dbf` |
| 46 | `theorem` | [contMDiff_tangentBundleModelSpaceHomeomorph_symm](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/contmdiff-tangentbundlemodelspacehomeomorph-symm.md) | 438 | `result-track:658e9158fc45472679b3c30bc609223726881333923fba8b33540e653e67f4ff` |
| 47 | `lemma` | [contMDiff_snd_tangentBundle_modelSpace](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/contmdiff-snd-tangentbundle-modelspace.md) | 450 | `result-track:7755a0ee526685733e4302918c42fe3ff7169055144183c07c34fb106e33c987` |
| 48 | `lemma` | [contMDiffWithinAt_vectorSpace_iff_contDiffWithinAt](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/contmdiffwithinat-vectorspace-iff-contdiffwithinat.md) | 461 | `result-track:5973bb53a6714d94dcd75fab1781676822a4d704638d829b4badf912284dd0f2` |
| 49 | `lemma` | [contMDiffAt_vectorSpace_iff_contDiffAt](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/contmdiffat-vectorspace-iff-contdiffat.md) | 475 | `result-track:7ce2d06436be960fd15edc3f3fb51e201c672fbae3ef16ca7dd9d62c0469395a` |
| 50 | `lemma` | [contMDiffOn_vectorSpace_iff_contDiffOn](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/contmdiffon-vectorspace-iff-contdiffon.md) | 483 | `result-track:d4d0d404111d8b3dc118046d243b5b411f02857b41f53b005115ecaac2560dde` |
| 51 | `lemma` | [contMDiff_vectorSpace_iff_contDiff](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/contmdiff-vectorspace-iff-contdiff.md) | 491 | `result-track:883608d9c0f9e50e7eec8ffd5ef723ffa15de94be1b86c9b28f2d64f506647da` |
| 52 | `theorem` | [inCoordinates_tangent_bundle_core_model_space](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/incoordinates-tangent-bundle-core-model-space.md) | 500 | `result-track:49ead86b2f46e96274ddb6a7560929416ddc02d9b2d46d8fcf307f845ab176e1` |
| 53 | `def` | [inTangentCoordinates](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/intangentcoordinates.md) | 514 | `declaration-track:f82faf6a281a3e0ea93a9809cbca1b0f23cfe1673776171ede6124a5fbb83f59` |
| 54 | `theorem` | [inTangentCoordinates_model_space](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/intangentcoordinates-model-space.md) | 518 | `result-track:9164ba95fff184f4f75618c20d51e03da578f47444ce8be130e976352ffc6070` |
| 55 | `theorem` | [inTangentCoordinates_eq](../../../../DifferentialGeometry/VectorBundleTangentPublic.lean/declarations/intangentcoordinates-eq.md) | 527 | `result-track:3eb5ca64d4471a11955e1f972e27bbb9c2f8991cd1f7411b9c9ed356954c40d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dff079d80f26deb16e48c23766abb40b9cc27a6cb09a824ebad0206f9ab21de4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
