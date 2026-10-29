# Verification target: Sheaves Stalks Germ Res

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fc734f866e0e2415cda5e63762f4af745cb8ac0",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SheavesStalksGermRes.lean/index.md) · [Full source](../../../../GeneralTopology/SheavesStalksGermRes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fc734f866e0e2415cda5e63762f4af745cb8ac0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.OpenNhds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.UniqueGluing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stalkFunctor](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkfunctor.md) | 68 | `declaration-track:93165fcd57f4641bc53c61f7229f4a5320864a9b00376932eb52644e828499d2` |
| 2 | `def` | [stalk](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalk.md) | 74 | `declaration-track:c6c4f3c8bb50bb347cbd179f74a0bf39757197e1842ea905a06479d63fc37301` |
| 3 | `theorem` | [stalkFunctor_obj](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkfunctor-obj.md) | 79 | `result-track:49b3c012ba97b4acab87b00aa22af77998c978546b0d0dc39170e0cef8c6a2af` |
| 4 | `def` | [germ](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ.md) | 84 | `declaration-track:8a633e8f56f57795d77a66c2383e5ad7a96f079d540a57c1c12d15428a910b20` |
| 5 | `def` | [Γgerm](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-source-edition-2.md) | 88 | `declaration-track:acdef82dac7b8cbd8e352f85b4c2a697b3748121ef39b69d7647a881dc09c645` |
| 6 | `theorem` | [germ_res](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-res-source-edition-2.md) | 92 | `result-track:506e7fd1a78e62db8247f586aa2128af879b39b22a9ce7319339b00ddda5c921` |
| 7 | `theorem` | [germ_res'](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-res.md) | 100 | `result-track:432c10fe4e0123488c70574942d0c07f11c377a36d0eba9dbb2127bfc394f364` |
| 8 | `lemma` | [map_germ_eq_Γgerm](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/map-germ-eq-germ.md) | 106 | `result-track:a89e239f69d613a28cadeb4580156ab132d23bafc8e521a6ccc7e741e6e538ea` |
| 9 | `theorem` | [germ_res_apply](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-res-apply-source-edition-3.md) | 112 | `result-track:ff7be6c38c00f0243ccf699ed97678fc498c5d48410bf1f561ceda1129e8e4da` |
| 10 | `theorem` | [germ_res_apply'](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-res-apply-source-edition-2.md) | 117 | `result-track:69f9a971ebe00dfd1b66d25ab4bb1b0a6aa3fd328310349dc0844b94580301df` |
| 11 | `lemma` | [Γgerm_res_apply](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-res-apply.md) | 122 | `result-track:31b5e956d8929e4cb009cecd940e657f28128e029760ce93b34b7845a7247366` |
| 12 | `theorem` | [stalk_hom_ext](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalk-hom-ext.md) | 130 | `result-track:91ab270e99aa72f946cb0a84b1bca9cab81447bad2615a15c507eec9524d7300` |
| 13 | `theorem` | [stalkFunctor_map_germ](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkfunctor-map-germ.md) | 136 | `result-track:cc5bc3ce9c0431c8ee26b8992f0ad42ab0c9024335bd18ccccc127feb0691437` |
| 14 | `theorem` | [stalkFunctor_map_germ_apply](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkfunctor-map-germ-apply-source-edition-2.md) | 140 | `result-track:7c6d3f2decdaf5bce33bb452c41b938b3fbe11dbdfa2ad5f629ea391b8a7e1af` |
| 15 | `theorem` | [stalkFunctor_map_germ_apply'](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkfunctor-map-germ-apply.md) | 148 | `result-track:646a6a7b5e4a9c2c163c11110b16f7b5e530d5bb71ef08f9ed15d306fedd4cd0` |
| 16 | `def` | [stalkPushforward](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkpushforward.md) | 160 | `declaration-track:7c9f42e2e19db0618ab27718dbb1f80b5b41dc4e1881ff460e8853bfe8e6a32e` |
| 17 | `theorem` | [stalkPushforward_germ](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkpushforward-germ.md) | 166 | `result-track:1a7d7647b97a6fed1d785fe2670f6aad0ce38087df6dfc5b5e0e0f009e639dbf` |
| 18 | `theorem` | [id](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/id.md) | 188 | `result-track:af455314956c2e8658a20162a37740e8a04bc07b0e94c2bd09a47fa2784fec21` |
| 19 | `theorem` | [comp](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/comp.md) | 196 | `result-track:73dafb6572d876f1380c1db5408d9b170872de0310feb883e80dcbc5fc4fb85b` |
| 20 | `theorem` | [stalkPushforward_iso_of_isInducing](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkpushforward-iso-of-isinducing.md) | 202 | `result-track:3925200db469428d0eefafc0490434cebd41815d0bf4579743b4c4bdfaa84265` |
| 21 | `def` | [stalkPullbackHom](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkpullbackhom.md) | 217 | `declaration-track:828e9f9acedb661beef888876cb3624632743b9b7ddd1808817d6319db2c21db` |
| 22 | `lemma` | [germ_stalkPullbackHom](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-stalkpullbackhom.md) | 223 | `result-track:6cffd005384c893d58e6766bfbcb26ac1db46ce4a1f16d62453cfeb1adf45344` |
| 23 | `def` | [germToPullbackStalk](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germtopullbackstalk.md) | 231 | `declaration-track:a2936c4d5031855ed1808187a2d0d64d9c9b6cbb01fc01cc5b6e283ea6c2f4c3` |
| 24 | `lemma` | [pullback_obj_obj_ext](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/pullback-obj-obj-ext.md) | 241 | `result-track:e339ef8b8f3e259f9a859198ba7e05741c88395bea435c0f239763e1d5c59593` |
| 25 | `lemma` | [pushforwardPullbackAdjunction_unit_pullback_map_germToPullbackStalk](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/pushforwardpullbackadjunction-unit-pullback-map-germtopullbackstalk.md) | 255 | `result-track:539f85fd3ea8c5210074544cfaa43c61016c339642625b53caa52a8a5643316b` |
| 26 | `lemma` | [germToPullbackStalk_stalkPullbackHom](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germtopullbackstalk-stalkpullbackhom.md) | 266 | `result-track:cef97e1d2555d8da9d354359aab3e61267ba65eeca1192003a0f8c0081089208` |
| 27 | `lemma` | [pushforwardPullbackAdjunction_unit_app_app_germToPullbackStalk](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/pushforwardpullbackadjunction-unit-app-app-germtopullbackstalk.md) | 276 | `result-track:88e89e8f8cf2b74fd1dc67c9396cce9d468c1db58be8167bef72de10654a1047` |
| 28 | `def` | [stalkPullbackInv](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkpullbackinv.md) | 284 | `declaration-track:19ffeef8c7736bcaeb88473b4364735c345aa201d76fd07cab8ba03f78c58291` |
| 29 | `lemma` | [germ_stalkPullbackInv](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-stalkpullbackinv.md) | 299 | `result-track:fea6f68a1f5a73e10586442af34ac0a6653ea7a5c938b7a0669ccd100853700c` |
| 30 | `def` | [stalkPullbackIso](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkpullbackiso.md) | 305 | `declaration-track:732a914c38de4400b529ee6650ea7a916dd81c97f1d9b94db53d39914f6521c1` |
| 31 | `def` | [stalkSpecializes](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkspecializes.md) | 326 | `declaration-track:f6065c99e2703e1e1c552f3c468bcd209908fab14482943b3ea5ef9fd4ca5f76` |
| 32 | `theorem` | [germ_stalkSpecializes](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-stalkspecializes.md) | 340 | `result-track:1e9a5a3ce1b17c5e69910d58fb0c75f6785ca6d804a8a48cde2e7ffacf42df23` |
| 33 | `theorem` | [stalkSpecializes_refl](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkspecializes-refl.md) | 346 | `result-track:96871a6b1fa9092905ecf621186e02abe3398a2da0f8fe2897beb442affe6bf7` |
| 34 | `theorem` | [stalkSpecializes_comp](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkspecializes-comp.md) | 352 | `result-track:ee220811db1fe8a81b9c6e965fbd95878c7bb24a8ad228d266c2356bc2ccfadf` |
| 35 | `theorem` | [stalkSpecializes_stalkFunctor_map](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkspecializes-stalkfunctor-map.md) | 359 | `result-track:39d969d79667d3ab9583ebaf513a1c3116426bb4acf24427aaecbe721805959a` |
| 36 | `theorem` | [stalkSpecializes_stalkPushforward](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkspecializes-stalkpushforward.md) | 368 | `result-track:93e9f2536c1c89d50e6b14ed753a1e54c3152a060d7f76559ea811a2338270b3` |
| 37 | `def` | [stalkCongr](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkcongr.md) | 379 | `declaration-track:79bcc93cd1fab35d9c57fad6a975bd4563d26446ea0e26cc49d7bf0d0c158170` |
| 38 | `theorem` | [germ_ext](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-ext.md) | 392 | `result-track:0ac62493f44325493d86562dbceaab39dcf6296eb0751dea98b61d67d805be2e` |
| 39 | `theorem` | [germ_exist](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-exist.md) | 406 | `result-track:c1e7d5441628db371a1dd94ec8484f084d850723e995451c3c0610792efcfa83` |
| 40 | `theorem` | [germ_eq](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-eq.md) | 416 | `result-track:932f432c17566a5d86992ac31f35ee9f45609e570b131cfaf60c529f180297e0` |
| 41 | `theorem` | [stalkFunctor_map_injective_of_app_injective](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkfunctor-map-injective-of-app-injective.md) | 426 | `result-track:24e3b838ed07362fd61028c600dbdc4ec2d23cbaefcc610a048736f5ccf41da1` |
| 42 | `lemma` | [germ_exist_of_isBasis](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-exist-of-isbasis.md) | 445 | `result-track:272b2a52a975361d86b19b7fcbafb93812d3cd0160054bdb0dfa21e698d3eed6` |
| 43 | `lemma` | [germ_eq_of_isBasis](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/germ-eq-of-isbasis.md) | 451 | `result-track:51b430ec31b5e429418a59e033e3fec2d63df9a5c5508a6a6c9a3cfc5318e42f` |
| 44 | `lemma` | [stalkFunctor_map_injective_of_isBasis](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkfunctor-map-injective-of-isbasis.md) | 462 | `result-track:1b81c7a28b1edec1dee3cf0b9cf4c7c5f197c9de983064eea0b1044f212b3362` |
| 45 | `theorem` | [section_ext](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/section-ext.md) | 480 | `result-track:ab445bf1baa28d24511c3fe053ff0f14ec57e5576fd7b270f2c57d93010f68ee` |
| 46 | `theorem` | [app_injective_of_stalkFunctor_map_injective](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/app-injective-of-stalkfunctor-map-injective.md) | 499 | `result-track:99218722465e8cb301e26f8bb6bcbbcc5c329621209c9e197a85694b25772724` |
| 47 | `theorem` | [app_injective_iff_stalkFunctor_map_injective](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/app-injective-iff-stalkfunctor-map-injective.md) | 505 | `result-track:27b67e4e7e2815970c68ffe9bc24d2f4fcdb980df2d039712c59a6e49bbae896` |
| 48 | `instance` | [stalkFunctor_preserves_mono](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalkfunctor-preserves-mono.md) | 512 | `declaration-track:2a8f731e82791231704d7c853feafa1484e6c6589754e61e98a65dc1b56f8972` |
| 49 | `theorem` | [stalk_mono_of_mono](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/stalk-mono-of-mono.md) | 525 | `result-track:dcce976474540fb4b24b4a9b7f829f748903110342d4b2ddc118993c1ee9a371` |
| 50 | `theorem` | [mono_of_stalk_mono](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/mono-of-stalk-mono.md) | 530 | `result-track:4125b41f3db4184f69e6745836d515b5f2466a20feff20c070fe71e6ce4d7218` |
| 51 | `theorem` | [mono_iff_stalk_mono](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/mono-iff-stalk-mono.md) | 540 | `result-track:a2d6f1e3d57cfce5c60d08c30f530801b7a029d1293cc8945c29b1a2159828c7` |
| 52 | `theorem` | [app_surjective_of_injective_of_locally_surjective](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/app-surjective-of-injective-of-locally-surjective.md) | 548 | `result-track:f439744c7bd88a5425fa6fb01dbe393007448c718530992796f889a2f89d4dfa` |
| 53 | `theorem` | [app_surjective_of_stalkFunctor_map_bijective](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/app-surjective-of-stalkfunctor-map-bijective.md) | 585 | `result-track:cf0d9c7b6fd2750e6f9254ccc0a77f674a905adebed8eda74c910c1383c68c58` |
| 54 | `theorem` | [app_bijective_of_stalkFunctor_map_bijective](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/app-bijective-of-stalkfunctor-map-bijective.md) | 603 | `result-track:3b9358aed5776c21aecce816698a4bcaaa652082be40ed73e243829a26c3741c` |
| 55 | `theorem` | [app_isIso_of_stalkFunctor_map_iso](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/app-isiso-of-stalkfunctor-map-iso.md) | 610 | `result-track:33cf0b0dc6709e2e0718f05a34e80cda3b43ffde71bcfa8f77b8e1164e62d8a2` |
| 56 | `theorem` | [isIso_of_stalkFunctor_map_iso](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/isiso-of-stalkfunctor-map-iso.md) | 628 | `result-track:b8d7b13e18e74304fcd1c48b575650076d777a7cf53fce30f4c3d7398da07655` |
| 57 | `theorem` | [isIso_iff_stalkFunctor_map_iso](../../../../GeneralTopology/SheavesStalksGermRes.lean/declarations/isiso-iff-stalkfunctor-map-iso.md) | 644 | `result-track:928513d0e1d1dcec547b1b761693c5bccddad7bf434b9ea527a2ba1e4a6ea36e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c244bcbe65efde23f0936206eec59214f1fbaca4d23744b3063c4a260e5e798a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
