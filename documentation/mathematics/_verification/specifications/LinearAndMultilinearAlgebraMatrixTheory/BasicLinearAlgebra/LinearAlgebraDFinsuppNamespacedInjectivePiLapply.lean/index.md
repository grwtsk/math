# Verification target: Linear Algebra DFinsupp Namespaced Injective Pi Lapply

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5f72f3b28433f982cfc0bb18073fd95858776a1",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant8b2a78d9c43a3d3b043060f74500f935612350ba0ea4191adb652100db079c79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5f72f3b28433f982cfc0bb18073fd95858776a1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant8b2a78d9c43a3d3b043060f74500f935612350ba0ea4191adb652100db079c79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DFinsupp/Variant8b2a78d9c43a3d3b043060f74500f935612350ba0ea4191adb652100db079c79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Submonoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lmk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lmk.md) | 56 | `declaration-track:be1a25f38888b88205cb100cb298390338f3354e013ccfd87b2d6e9db5909024` |
| 2 | `def` | [lsingle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lsingle.md) | 62 | `declaration-track:886aeaa6e4a0392e8155d5c6cbc06f5dec0c306566f03249cb83df98dbb6d947` |
| 3 | `theorem` | [lhom_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lhom-ext.md) | 68 | `result-track:0a80852783c2cf27b6482173ed351fd4954ee071d9f07a1631983391f5f0ac1b` |
| 4 | `theorem` | [lhom_ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lhom-ext-source-edition-2.md) | 77 | `result-track:906524b1acb0655411e7b9037c3f45640d3ced8abdcea6208e64475a53b1a7e0` |
| 5 | `theorem` | [lmk_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lmk-apply.md) | 81 | `result-track:74c5dbf85ded07607dd68596507d8e6cef0e76114280df5f951d4e976c6ba4d8` |
| 6 | `theorem` | [lsingle_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lsingle-apply.md) | 85 | `result-track:0bd48c24d96d02dd229e1697d260b0473f0b41baba2c2dee9c5bee556e544ef8` |
| 7 | `def` | [lapply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lapply.md) | 91 | `declaration-track:00e762e6225268c34c9616c7be62c037c3c508bc74fdb5d81d05f9b3540445d6` |
| 8 | `theorem` | [lapply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lapply-apply.md) | 97 | `result-track:af44e63f10eba992d170ef68fd58a6ca76413c3234837c873d3713667612521d` |
| 9 | `theorem` | [injective_pi_lapply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/injective-pi-lapply.md) | 100 | `result-track:d4bd1d94e5558dfce3641eddf46daa63eaa720ad90e50d78b9a33fa3fa8e194b` |
| 10 | `theorem` | [lapply_comp_lsingle_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lapply-comp-lsingle-same.md) | 104 | `result-track:a25afe314c8b8ebb8a77073768b40fa6c6fea809c2961d440470e00583a30541` |
| 11 | `theorem` | [lapply_comp_lsingle_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lapply-comp-lsingle-of-ne.md) | 108 | `result-track:ec0b3b567404f0f6ac121d0ec931772a2fc77415742ef2dfca8954cf39feba1f` |
| 12 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/instance.md) | 116 | `declaration-track:99c1c221d656055a06ebf355eed9c9beee9fc85ddb5d26804dbb2537f7c6726c` |
| 13 | `def` | [lsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lsum.md) | 126 | `declaration-track:1a793d8de4dd333621b689f10baa862b6fffcc77888723173eb0614f060c3ca7` |
| 14 | `theorem` | [lsum_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lsum-single.md) | 158 | `result-track:6ab08373b0d6b7682cebb6d9fffa1cdbb956f21634a141c41eeafcc5a513c089` |
| 15 | `theorem` | [lsum_lsingle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lsum-lsingle.md) | 162 | `result-track:5671211d656e86a24b883739fe7fa40e099d505d82b106f41fdcdd9d050391da` |
| 16 | `theorem` | [iSup_range_lsingle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isup-range-lsingle.md) | 166 | `result-track:3c0579ba80ee40b8f17acef98ae95814a21ed34ee041e208607d4d1fe224d380` |
| 17 | `lemma` | [mker_mapRangeAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/mker-maprangeaddmonoidhom.md) | 185 | `result-track:fdb786582a69a72aa0128ce9a57e46995ccff52b7ec997987865d8f7fb5058fb` |
| 18 | `lemma` | [mrange_mapRangeAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/mrange-maprangeaddmonoidhom.md) | 191 | `result-track:381ae992138947330579250faf2f9aac469cc46d8178f7150ef31ea949856838` |
| 19 | `theorem` | [mapRange_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/maprange-smul.md) | 207 | `result-track:c082536f1f190fc054a263fe95ac2445bff5f0ff536c4bbce251607b2e5b4ca7` |
| 20 | `def` | [mapRange.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/maprange-linearmap.md) | 215 | `declaration-track:6c233d9938a282ceec6ab45345daf33fb5d340ab2c9fb3b6512a6d9b162c0e6b` |
| 21 | `theorem` | [mapRange.linearMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/maprange-linearmap-id.md) | 221 | `result-track:6d6a29d61845af2234b3af2b8e7d719ad8d87dfd67850043e825e1c89de42a76` |
| 22 | `theorem` | [mapRange.linearMap_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/maprange-linearmap-comp.md) | 226 | `result-track:61370413493a04d7484599338b7bfaf656c58f5468e5372d5acfa8cbbe431963` |
| 23 | `theorem` | [sum_mapRange_index.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/sum-maprange-index-linearmap.md) | 232 | `result-track:6ec2b7c0e8c5e9ca72d0449741bf99ba9f915d4ba7d3bd09bc29628a894e2728` |
| 24 | `lemma` | [ker_mapRangeLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/ker-maprangelinearmap.md) | 237 | `result-track:fe345ecf6bf8222d9686f0a891d384b289d635c5c7db515d527e4b89691c5c4b` |
| 25 | `lemma` | [range_mapRangeLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/range-maprangelinearmap.md) | 242 | `result-track:bb5eba304d07565d2c83167a4eb7eec2f6ec6d5bce3cf063ef7a0eaf4bfa6e8d` |
| 26 | `def` | [mapRange.linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/maprange-linearequiv.md) | 249 | `declaration-track:3a43a0048ad5019f633a24763096e7c17801d7b370856bbe7cff9d32bc0c19b4` |
| 27 | `theorem` | [mapRange.linearEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/maprange-linearequiv-refl.md) | 256 | `result-track:b75c79c2baa429c600688e5e96eee43615365cfc6b157edc747b39b0a1ed4123` |
| 28 | `theorem` | [mapRange.linearEquiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/maprange-linearequiv-trans.md) | 260 | `result-track:a035bed8adda37f7de45a2d552089b8bd2461d51e325f854eed3dc80b7d2b2b9` |
| 29 | `theorem` | [mapRange.linearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/maprange-linearequiv-symm.md) | 267 | `result-track:e88a0838397d58280e4c7a7d664536ccbb9a2d8f639293d55a3531514013a004` |
| 30 | `lemma` | [ker_mapRangeAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/ker-maprangeaddmonoidhom.md) | 275 | `result-track:3922de80e4a2f1d4ff76686f97791bd2a02fdeff92021b75433902ba47580fa4` |
| 31 | `lemma` | [range_mapRangeAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/range-maprangeaddmonoidhom.md) | 281 | `result-track:90b6fb8ed526e42732f2a1ba0c48e72bdf64d7f2cf815d5e6b8dba81323b1f60` |
| 32 | `def` | [coprodMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/coprodmap.md) | 299 | `declaration-track:e0a7623a62634120ec56f6020f919d8107113e1e8ae31ece5ae53f0823c856d5` |
| 33 | `theorem` | [coprodMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/coprodmap-apply.md) | 302 | `result-track:064d7be13b8654e6d98c87d754ef673d4db118e6b6624a3423540b7d1067359c` |
| 34 | `theorem` | [coprodMap_apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/coprodmap-apply-single.md) | 308 | `result-track:96fe909f9a4ee1ff2b507be48fa94f853813053f4dc06661f33ee76176899c96` |
| 35 | `theorem` | [dfinsuppSum_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/dfinsuppsum-mem.md) | 326 | `result-track:8a242db5995754974ab1b41ac92dcffcf94c040322b9f650474309675f7bfbf0` |
| 36 | `theorem` | [dfinsuppSumAddHom_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/dfinsuppsumaddhom-mem.md) | 333 | `result-track:138f1b47c2892822db768212f9a02dbb77e2f69ea8bda107fb463a53f5d821d3` |
| 37 | `theorem` | [iSup_eq_range_dfinsupp_lsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isup-eq-range-dfinsupp-lsum.md) | 343 | `result-track:795dcf07e1111d7b2db6de53b55a7953a52e071c5d8aebcae68dd84d6453b566` |
| 38 | `theorem` | [biSup_eq_range_dfinsupp_lsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/bisup-eq-range-dfinsupp-lsum.md) | 357 | `result-track:e85bd58a0f79bc684a7870cbfb64781c2e183d844d845c6b06268f59886da5cd` |
| 39 | `theorem` | [mem_iSup_iff_exists_dfinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/mem-isup-iff-exists-dfinsupp-source-edition-2.md) | 377 | `result-track:f10b8c1a93fe100d2496d47c1a2965cbefe1cc9948da1b9fe61f44e730e8ffc2` |
| 40 | `theorem` | [mem_iSup_iff_exists_dfinsupp'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/mem-isup-iff-exists-dfinsupp.md) | 385 | `result-track:30edf5c6c76b10bf4a10f3967ca6580af4c775ef3ac86b86fb199d5ab4b987aa` |
| 41 | `theorem` | [mem_biSup_iff_exists_dfinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/mem-bisup-iff-exists-dfinsupp.md) | 391 | `result-track:c5537b7b5f487267ea16fff0c9109a1c63970642569f07be8d7c7dff10f4f8b9` |
| 42 | `lemma` | [mem_iSup_iff_exists_finsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/mem-isup-iff-exists-finsupp.md) | 400 | `result-track:68947913cc449d9c080ca153e74e7fa9de0f8b806afe5978777a825ffd3d4976` |
| 43 | `theorem` | [mem_iSup_finset_iff_exists_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/mem-isup-finset-iff-exists-sum.md) | 410 | `result-track:0213cef6a8bf1e62499621edf043a5d84279a15ee882bff7a8ac39b553287e12` |
| 44 | `theorem` | [iSupIndep_iff_forall_dfinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-iff-forall-dfinsupp.md) | 458 | `result-track:d4d52cca619eb61dcc79a16c4ccefceb1b5ddcc501e2fbbf8da94e2edaea559c` |
| 45 | `theorem` | [iSupIndep_of_dfinsupp_lsum_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-of-dfinsupp-lsum-injective.md) | 472 | `result-track:aa704bbd7d128accb3946114eed1e61ed2c7f9bed1eb3ae67b7dda2141a0d040` |
| 46 | `theorem` | [iSupIndep_of_dfinsuppSumAddHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-of-dfinsuppsumaddhom-injective-source-edition-2.md) | 488 | `result-track:9c5879cb9c4b845d96a3822cf512d9b9ac422d0b9d159e2335d0238915900fca` |
| 47 | `theorem` | [lsum_comp_mapRange_toSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/lsum-comp-maprange-tospansingleton.md) | 501 | `result-track:97651593dd7f3f2e9e627faf8df8539ef71f786a58114cafe7be2e089c24bf0c` |
| 48 | `theorem` | [iSupIndep_of_dfinsuppSumAddHom_injective'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-of-dfinsuppsumaddhom-injective.md) | 519 | `result-track:83aa3fedffb04eef4a3a33c5e2e87aa8838c7eca7f6e4b392d7dc4b87369edbb` |
| 49 | `theorem` | [iSupIndep.dfinsupp_lsum_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-dfinsupp-lsum-injective.md) | 537 | `result-track:15fb35652ad777f265982dbcb7f8333f6054eb6acb5280b6e65e463ba1a87b40` |
| 50 | `theorem` | [iSupIndep.dfinsuppSumAddHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-dfinsuppsumaddhom-injective.md) | 560 | `result-track:0f174709ba3362d835bdcc4648ce5caa3fc89dbd967c8744ddba8c8d280e488d` |
| 51 | `theorem` | [iSupIndep_iff_dfinsupp_lsum_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-iff-dfinsupp-lsum-injective.md) | 576 | `result-track:7ac7bf47f37db00be2e2362ffb1f684037b5870434cec5dc302c9a4900af6bf6` |
| 52 | `theorem` | [iSupIndep_iff_dfinsuppSumAddHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-iff-dfinsuppsumaddhom-injective.md) | 585 | `result-track:567fd27289228193f5f57090ffbc660afbf01daf067566a8fef214b371e82a60` |
| 53 | `theorem` | [iSupIndep.linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-linearindependent.md) | 599 | `result-track:907a8726298be367bbeca860840d49aaaef8d18b04147517471ba76c2ba4e64d` |
| 54 | `theorem` | [iSupIndep_iff_linearIndependent_of_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/isupindep-iff-linearindependent-of-ne-zero.md) | 621 | `result-track:f1e75bbc66b08c151335505466a4788e32be798bbf847b9c497928402382499c` |
| 55 | `theorem` | [coe_dfinsuppSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/coe-dfinsuppsum.md) | 656 | `result-track:5387eeeb198a3f3eaf17e626cbee038ccd599c304794ba3acf314e7a5ff7bd58` |
| 56 | `theorem` | [dfinsuppSum_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/dfinsuppsum-apply.md) | 661 | `result-track:30b393ca7aca7d47a6a38764f6f3afd6bf298c05bbda68a9b73e43b4716cb95b` |
| 57 | `theorem` | [map_dfinsuppSumAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/map-dfinsuppsumaddhom-source-edition-2.md) | 674 | `result-track:d96f09334d46a5e854e0180f3602da66c8df1bc9a5fed083e47553f12e901092` |
| 58 | `theorem` | [map_dfinsuppSumAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppNamespacedInjectivePiLapply.lean/declarations/map-dfinsuppsumaddhom.md) | 704 | `result-track:b1121448a0e43ca0a55095bcca63ec0f6cd1cb451defca0c1a5636f3ff1d0fef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cbc06e4b5e7d0eeaa2219840e189f4d13263ba29872d15a6f59651d4bd1645e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant8b2a78d9c43a3d3b043060f74500f935612350ba0ea4191adb652100db079c79.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/DFinsupp/Variant8b2a78d9c43a3d3b043060f74500f935612350ba0ea4191adb652100db079c79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
