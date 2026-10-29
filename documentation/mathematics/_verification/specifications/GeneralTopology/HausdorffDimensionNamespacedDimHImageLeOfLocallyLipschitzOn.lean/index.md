# Verification target: Hausdorff Dimension Namespaced Dim HImage Le Of Locally Lipschitz On

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "313d5c7269d9d85022ff9a6eddfbde0b3c924326",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant9043b1f9865fc4fd0d885e3ff3e755ee84aaaa374b779ab3075d841d5f840758.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/index.md) · [Full source](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `313d5c7269d9d85022ff9a6eddfbde0b3c924326`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant9043b1f9865fc4fd0d885e3ff3e755ee84aaaa374b779ab3075d841d5f840758.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant9043b1f9865fc4fd0d885e3ff3e755ee84aaaa374b779ab3075d841d5f840758.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Hausdorff` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh.md) | 100 | `declaration-track:440ab8b852060482768d829354cf6468800b03f890c93fa43a606c97ba94d9c9` |
| 2 | `theorem` | [dimH_def](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-def.md) | 114 | `result-track:254c4ef74d53e5d80a66acd4da24cce049a245760c516d6195b2cb6f94f70c32` |
| 3 | `theorem` | [hausdorffMeasure_of_lt_dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/hausdorffmeasure-of-lt-dimh.md) | 117 | `result-track:4519d90e5703b94e1af35c6bdf582dd4c7172b28deca8092f8bd377414fbf955` |
| 4 | `theorem` | [dimH_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-le.md) | 123 | `result-track:5aebeba65ffd0c1f398e4a1542f387b8a58a3f5c190b015de45aeea22023d1a6` |
| 5 | `theorem` | [dimH_le_of_hausdorffMeasure_ne_top](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-le-of-hausdorffmeasure-ne-top.md) | 126 | `result-track:6347c561af888d075097bf6fd2f358573e8032fa058e2c6b1686bfbd1fc1f73c` |
| 6 | `theorem` | [le_dimH_of_hausdorffMeasure_eq_top](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/le-dimh-of-hausdorffmeasure-eq-top.md) | 129 | `result-track:b858431a36f4954d4372fc742ee523dfcc6b72326d8f774544ccb5a8d32852b8` |
| 7 | `theorem` | [hausdorffMeasure_of_dimH_lt](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/hausdorffmeasure-of-dimh-lt.md) | 133 | `result-track:50ed46c5c1ada724e715af76dfe6e3b33217146f609c14c414f0e3b107943635` |
| 8 | `theorem` | [measure_zero_of_dimH_lt](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/measure-zero-of-dimh-lt.md) | 140 | `result-track:f347bed8083dea3696dc01e9fda6bb6bdcdc0b420ff597d5203f0e4aa3b6429b` |
| 9 | `theorem` | [le_dimH_of_hausdorffMeasure_ne_zero](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/le-dimh-of-hausdorffmeasure-ne-zero.md) | 144 | `result-track:5968ce65386ae8218d5e2234cbac135908d7e02299f68b0ac62d62ab0c7b5e31` |
| 10 | `theorem` | [dimH_of_hausdorffMeasure_ne_zero_ne_top](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-of-hausdorffmeasure-ne-zero-ne-top.md) | 147 | `result-track:f7926ca82512ef92f2307ad951ab0b90046818ee9bc657b2a76b5bd9ab11a029` |
| 11 | `theorem` | [dimH_mono](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-mono.md) | 154 | `result-track:d1decb39f95d7f727f33eac1290434f462fa83843dabfddeb1a63adeb5ac632c` |
| 12 | `theorem` | [dimH_subsingleton](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-subsingleton.md) | 158 | `result-track:f211bd605b9957f8563cbac62f9506ddf098ccc9cb80dc7050ce45d3687edd8d` |
| 13 | `theorem` | [dimH_empty](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-empty.md) | 167 | `result-track:8e9e7446871370342983674082d76fae531e5171825423aa2d06747d0b565907` |
| 14 | `theorem` | [dimH_singleton](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-singleton.md) | 171 | `result-track:27e8e2793e293c20e6007ab41faa57def03994672b6ff6f8d1bc08f6f45d848e` |
| 15 | `theorem` | [dimH_iUnion](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-iunion.md) | 175 | `result-track:c0d49820906e7085f891443ee556693cac9a071e560a8ff8f34d92affc8de25d` |
| 16 | `theorem` | [dimH_bUnion](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-bunion.md) | 186 | `result-track:9582fcb53fa18593bd5caa2c113593d9eac07c6c237fe88e9267557aa556d6aa` |
| 17 | `theorem` | [dimH_sUnion](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-sunion.md) | 192 | `result-track:6b2feadd17c29e7df1f1c0e7d60d47c83490d44b97883fa1aab4f9504dc3b106` |
| 18 | `theorem` | [dimH_union](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-union.md) | 196 | `result-track:4d197d76719510d0f22db6cb13b159f810677a264063f3747e6ed01d73f481b5` |
| 19 | `theorem` | [dimH_countable](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-countable.md) | 199 | `result-track:bcde5a69f08acc838b50ca85d33bc3d62ccd1ba9dc3d412ec5929c07b9d87a11` |
| 20 | `theorem` | [dimH_finite](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-finite.md) | 204 | `result-track:a66196a701ab80bf1fc10e3f05745d61dca74a27561436f96ce5aa3804ec93a8` |
| 21 | `theorem` | [dimH_coe_finset](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-coe-finset.md) | 210 | `result-track:03e32d59de552648c8672d9be1cb09a6b2a0a838ea5762527163f0db5fe644e4` |
| 22 | `theorem` | [exists_mem_nhdsWithin_lt_dimH_of_lt_dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/exists-mem-nhdswithin-lt-dimh-of-lt-dimh.md) | 227 | `result-track:7f8dcc9888e197a504a0abcf7b1bb090438a93293fed2069fdc97c359fd5424e` |
| 23 | `theorem` | [bsupr_limsup_dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/bsupr-limsup-dimh.md) | 239 | `result-track:f50d77f2829c6e340e00338994c698faf4c5aaf6a411f286c7745b49d000a44e` |
| 24 | `theorem` | [iSup_limsup_dimH](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/isup-limsup-dimh.md) | 252 | `result-track:d88d696d98f1768dccaf643acf5891231bf6027141aaf00e059f8ba00875aa3d` |
| 25 | `theorem` | [HolderOnWith.dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/holderonwith-dimh-image-le.md) | 268 | `result-track:4d815144f354eec796ec2a7c92db1b24727bdc0138654f5f76a06981a0c4ea71` |
| 26 | `theorem` | [dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-image-le.md) | 285 | `result-track:62fa512b58b83d51fe74db37990542085ba2039d0c76b91d7267a143ba0bbe1a` |
| 27 | `theorem` | [dimH_range_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-range-le.md) | 291 | `result-track:0803e8f5584fc08003893543a5ddfeca19a25423b9ce67564407e46b93d90dc7` |
| 28 | `theorem` | [dimH_image_le_of_locally_holder_on](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-image-le-of-locally-holder-on.md) | 301 | `result-track:699500c46edcd8ba486071faec1f4d16d6ac8aa47fdb332ce02cab36165f3961` |
| 29 | `theorem` | [dimH_range_le_of_locally_holder_on](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-range-le-of-locally-holder-on.md) | 313 | `result-track:c0be5f2d02ee7f609723564c2cacf90ca01977c8c491ce9fe33de782fb470001` |
| 30 | `theorem` | [LipschitzOnWith.dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/lipschitzonwith-dimh-image-le.md) | 326 | `result-track:f09ce6d0d742a8460e3ccd6b73411bc9a8910de7aa8cd79c39e4c0f0aa03f1e2` |
| 31 | `theorem` | [dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-image-le-source-edition-2.md) | 332 | `result-track:794caec713c206c95c6919eff0d466caec81397d74f7856cef556503aeb79dcf` |
| 32 | `theorem` | [dimH_range_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-range-le-source-edition-2.md) | 337 | `result-track:5bd307291498c6ed181a75aa3f3e191abb95192fef1a6b9351be06c27062626b` |
| 33 | `theorem` | [dimH_image_le_of_locally_lipschitzOn](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-image-le-of-locally-lipschitzon.md) | 345 | `result-track:1ec96b768654dbdff035d0ab6778735464df05a6a221f11e50e11f6813f9945e` |
| 34 | `theorem` | [dimH_range_le_of_locally_lipschitzOn](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-range-le-of-locally-lipschitzon.md) | 353 | `result-track:f3da143a55740b04cfdd4092716e7d17a8d13825776713b7f85f72e7ef084ced` |
| 35 | `theorem` | [dimH_preimage_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-preimage-le.md) | 362 | `result-track:cd1c361a3c03656ca68ec1bc3572218b95385098557349a013d02449bbef42cd` |
| 36 | `theorem` | [le_dimH_image](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/le-dimh-image.md) | 370 | `result-track:e7c8405e0a11c4390fc8281cc3fe26286e069ff39e3a30d92dc55ae8575bad37` |
| 37 | `theorem` | [Isometry.dimH_image](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/isometry-dimh-image.md) | 382 | `result-track:fa78dc33401910690d785104abba0d2a37043b07ee62ebfe7d26f702912e7ab1` |
| 38 | `theorem` | [dimH_image](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-image.md) | 388 | `result-track:48ea529ebad35fabd3fc4c4c04aa9658894e723b53d01278fc2edc2643d5f1ff` |
| 39 | `theorem` | [dimH_preimage](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-preimage-source-edition-2.md) | 392 | `result-track:de2f29ace3e837eb46035cd0e64042b0125b5a0bcc96c5a46ef50a664edb34e9` |
| 40 | `theorem` | [dimH_univ](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-univ-source-edition-3.md) | 395 | `result-track:fbc297073669ffeea6e77a936b07075e48dd0efa48b87e670e9556edcaf69897` |
| 41 | `theorem` | [dimH_image](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-image-source-edition-2.md) | 406 | `result-track:8a56b9abcea823c281c2a9a517a2d90b93dfe101ebf717d68fd5103bdd1eca1a` |
| 42 | `theorem` | [dimH_preimage](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-preimage.md) | 411 | `result-track:d6c7c8e9ef0ebabf58cf829dd8e4946fb9d61855238b07d6d7d9386a59247cf6` |
| 43 | `theorem` | [dimH_univ](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-univ.md) | 414 | `result-track:66ca1fe495bedcc124e9b0e8b38638bfb9d7d6e15a6eb2077bf1517c2b5b67ef` |
| 44 | `theorem` | [dimH_ball_pi](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-ball-pi.md) | 428 | `result-track:19e787847e5a726d083eade572e745147c90b4651a266ec78376cbc1e5a36f67` |
| 45 | `theorem` | [dimH_ball_pi_fin](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-ball-pi-fin.md) | 440 | `result-track:ff16a21992c9a263ff68622e5e2e49ae9b54fdf0aa207b71f381e0f94c454ebc` |
| 46 | `theorem` | [dimH_univ_pi](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-univ-pi.md) | 443 | `result-track:c6e447a69468aaea91b0bf387d461b3f265f1808032c913374cdbdf0508bda7a` |
| 47 | `theorem` | [dimH_univ_pi_fin](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-univ-pi-fin.md) | 447 | `result-track:7767dc0510397301298debcd0bfe05f3f5d40c2845530d6907cb56555ceac354` |
| 48 | `theorem` | [dimH_of_mem_nhds](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-of-mem-nhds.md) | 450 | `result-track:df5eefe4ed331eaa1cc4fda3b2b5fbf04c9d5fc66c17101dbd3fd0272bd2bf70` |
| 49 | `theorem` | [dimH_of_nonempty_interior](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-of-nonempty-interior.md) | 460 | `result-track:502d60f4f9fb76eac6bf2c7a4224f62ecc6ad9d17a184cdbe8ecb314687bb1b3` |
| 50 | `theorem` | [dimH_univ_eq_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-univ-eq-finrank.md) | 466 | `result-track:6154a0c5ac7d51a20d062409e536b0437e03406dea1734e624596113ffe170ce` |
| 51 | `theorem` | [dimH_univ](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dimh-univ-source-edition-2.md) | 469 | `result-track:c887ec69ac51c9c326734f2a0149a1c5c895271425be5e7756647db8c1b0212b` |
| 52 | `lemma` | [hausdorffMeasure_of_finrank_lt](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/hausdorffmeasure-of-finrank-lt.md) | 474 | `result-track:e2cfd19682c68e026252bf5e764bb2a0115c1b1c649ab06a61ef104c7c69fc8c` |
| 53 | `theorem` | [dense_compl_of_dimH_lt_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/dense-compl-of-dimh-lt-finrank.md) | 487 | `result-track:b0d8358d9b5541260de9cb06b748c77fff2bc6fdf7dd102b9f598362e95471e1` |
| 54 | `theorem` | [ContDiffOn.dimH_image_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/contdiffon-dimh-image-le.md) | 506 | `result-track:18df92199ccb21f791cdd1d945d2e348369b1cb6bc7ef8e9a27a0aef405471e8` |
| 55 | `theorem` | [ContDiff.dimH_range_le](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/contdiff-dimh-range-le.md) | 514 | `result-track:41990edefd9d6966b8b754ad97f0ae895084dfd4e85b457fbdd1404c1566bd3f` |
| 56 | `theorem` | [ContDiffOn.dense_compl_image_of_dimH_lt_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/contdiffon-dense-compl-image-of-dimh-lt-finrank.md) | 523 | `result-track:1fcb543f41b9261a4f6feee6ca25da933b0385e7755a0d308b5ed3dbd04e3d92` |
| 57 | `theorem` | [ContDiff.dense_compl_range_of_finrank_lt_finrank](../../../../GeneralTopology/HausdorffDimensionNamespacedDimHImageLeOfLocallyLipschitzOn.lean/declarations/contdiff-dense-compl-range-of-finrank-lt-finrank.md) | 531 | `result-track:386d561057f8f8eb1b165d2d25d8f29716432e6f83e17f9ced2fa36fa6a7528f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d9cb7d53163e52f0a685d571f92fe55e07d890fe3b6a21674c26dae1cc30773 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant9043b1f9865fc4fd0d885e3ff3e755ee84aaaa374b779ab3075d841d5f840758.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant9043b1f9865fc4fd0d885e3ff3e755ee84aaaa374b779ab3075d841d5f840758.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
