# Verification target: Homotopy Cat Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3c72ae71e7a67f9aad4c8e6d078297b0d25770c",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantc3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/HomotopyCatPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/HomotopyCatPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3c72ae71e7a67f9aad4c8e6d078297b0d25770c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantc3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantc3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OneTruncation₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/onetruncation.md) | 53 | `declaration-track:36a504b3e356cf5c7d0d68f2a6da92801dcb0651b03f2dfed773dabbb3455061` |
| 2 | `instance` | [reflQuiver](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/reflquiver.md) | 59 | `declaration-track:157a06fc848d2065fa2bcbe50b12960430ef8e0f768a6c4851f3d92df0792c14` |
| 3 | `lemma` | [hom_ext](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hom-ext.md) | 64 | `result-track:d70c39ea42836a24c0dda628901d1f64168d6b80f15b5ae9c3de566498a1a635` |
| 4 | `def` | [map](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/map.md) | 73 | `declaration-track:ab073a1273c67ae9ff692484c7c2bd1c90fe0973c919589a2021fbf11970705c` |
| 5 | `def` | [oneTruncation₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/onetruncation-source-edition-2.md) | 83 | `declaration-track:da89d1abd61b9d0971601d599b3233ddcb3b41c6a4ca278bda6a6ad82b19786f` |
| 6 | `lemma` | [homOfEq_edge](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/homofeq-edge.md) | 90 | `result-track:eb472d450a10792f583d57e11e9b148b9e8121a0952650518112f396b658a44f` |
| 7 | `def` | [nerveEquiv](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/nerveequiv.md) | 103 | `declaration-track:9bafd312744d0e63546326648b666a54afe9c7a480d0424c1434f4b142e5ae9d` |
| 8 | `def` | [nerveHomEquiv](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/nervehomequiv.md) | 107 | `declaration-track:1c2dd7a6ba0fc26c75636ad0766f044a94df99433ac41abdba9033b20280cdd6` |
| 9 | `lemma` | [nerveHomEquiv_apply](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/nervehomequiv-apply.md) | 111 | `result-track:b7dc8d92f95dd6ee2be4e8b85d3745e23bfb942d4504e8083676a39e0d9ad1b8` |
| 10 | `lemma` | [nerveHomEquiv_id](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/nervehomequiv-id.md) | 118 | `result-track:9f66de6c4c7aae8b94fbbe510c9f0dd95ecabac116d2d44ba6e4031f98a58c14` |
| 11 | `def` | [ofNerve₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/ofnerve.md) | 123 | `declaration-track:06685df9bfa78a48d3f10863c3c0a0e6e6ec574fd3662e1addc3cc1d6850f9a4` |
| 12 | `lemma` | [nerve_hom_ext](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/nerve-hom-ext.md) | 129 | `result-track:7cb7e467acb1dfa14a9a33c5cf1050446a320df8bc7226c8448a61361254161e` |
| 13 | `def` | [OneTruncation₂.ofNerve₂.natIso](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/onetruncation-ofnerve-natiso.md) | 143 | `declaration-track:090146f84b5737512d8fbcc488b1da8a866e54b7a006e9234089b2a21babebdc` |
| 14 | `lemma` | [map_map_of_eq.](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/map-map-of-eq.md) | 154 | `result-track:1664eb37988dc946fddf54ec8b5794dbea20b9efc04b7f88074f149db1fd6010` |
| 15 | `def` | [ι0₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/0-source-edition-2.md) | 164 | `declaration-track:bf8b132591da21e64fffcf7cb61691c91d0edf2f709a57f4aa21c671f893fe96` |
| 16 | `def` | [ι1₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/1.md) | 168 | `declaration-track:0a40e8c601cf5e733889a61ac7bdf66eaaf330f2f113ae6fcb374f54181420c2` |
| 17 | `def` | [ι2₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/2.md) | 172 | `declaration-track:2a2c6cc01c265ce7328f97b29af62f38802389f1cde26ad0ed37ab216024ee33` |
| 18 | `def` | [ev0₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/ev0.md) | 175 | `declaration-track:82e97b2ba6fe4cff71a463bf1143ea884d2aa4dd03acfc9c820988c00ffce6e6` |
| 19 | `def` | [ev1₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/ev1.md) | 178 | `declaration-track:c1a5784aa1c70110f8bac1699ac8773e8c0c15433a22df2610c2c20710e344d8` |
| 20 | `def` | [ev2₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/ev2.md) | 181 | `declaration-track:93582c84d534ca25237765fb0a93fc8b25d6b575305499dd51d454ba5ede5500` |
| 21 | `def` | [δ0₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/0.md) | 184 | `declaration-track:505ed89d2df2befe3c2c7dec99439966c82e2abcbb586813fb4aa746566bb1b7` |
| 22 | `def` | [δ1₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/1-source-edition-2.md) | 187 | `declaration-track:184a5cdc300288e5d167273c30e76995a5a3900903a7791995f4d0745fd33558` |
| 23 | `def` | [δ2₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/2-source-edition-2.md) | 190 | `declaration-track:4ae1b92ff841594257de454c59a364dde75b19507bd4f23fbab84e85220b9b2f` |
| 24 | `def` | [ev12₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/ev12.md) | 196 | `declaration-track:742f4e1a98d9f54ea1173640131171013d921aed47c958f95230610061e547cc` |
| 25 | `def` | [ev02₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/ev02.md) | 206 | `declaration-track:cb704b792287172883d29d706f44a1c37d2ba8c6084e1c975f4886c7c2d854b8` |
| 26 | `def` | [ev01₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/ev01.md) | 213 | `declaration-track:7bd049ff4a17a70d8d13a363bd588cefcb7a98d2e8ec7a459c3301e3dc110878` |
| 27 | `inductive` | [HoRel₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/horel.md) | 226 | `declaration-track:923af024c5a4dd73f03f7a5f42ccc80e0ef7979caacdba514b6fb4656006897a` |
| 28 | `def` | [HomotopyCategory](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/homotopycategory.md) | 242 | `declaration-track:b04468707ceb6b0ce5dc0b8e7b73fcb7912a0c4c2e8f05282a0e0b3ee6d9b005` |
| 29 | `def` | [quotientFunctor](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/quotientfunctor.md) | 250 | `declaration-track:510a007af74616c1640ecf1fdae1da11f95c609f6aa00e7d905c789abe110a3d` |
| 30 | `instance` | [(anonymous)](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/instance.md) | 254 | `declaration-track:1338386453f51ce42e74f514d1431c868677d84a167f30565d1be96a85850297` |
| 31 | `def` | [mk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/mk.md) | 260 | `declaration-track:103c4a9c654647f8c1ad156a593777dbec23b1c60ef9ccabd229552afce977d4` |
| 32 | `lemma` | [mk_surjective](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/mk-surjective.md) | 263 | `result-track:832112919d481fdbe1cab92695571649926247cd1bc9d912fd092ee59e780b29` |
| 33 | `lemma` | [ext](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/ext.md) | 267 | `result-track:585dd38c9f3f624cfbb58992c178b16e290d4fb3246a277d30d20709eace48e2` |
| 34 | `lemma` | [cases_on](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/cases-on.md) | 274 | `result-track:dca290ae43613c6e29a522e8c97f4b69b13833d72d147f96a80be9a38524967f` |
| 35 | `def` | [homMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hommk.md) | 283 | `declaration-track:9a24ea59d89d765403fb99714928981ac40a017995d55191064b4c4ef0727acf` |
| 36 | `lemma` | [congr_arrowMk_homMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/congr-arrowmk-hommk.md) | 286 | `result-track:7bdea54175c6dd4540272e34a218679aea7298ecf185c541c7065680db77c877` |
| 37 | `lemma` | [homMk_id](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hommk-id.md) | 296 | `result-track:381746465f20390f3b897ca28255584c757b1500632ef612c6d85236669e4e27` |
| 38 | `lemma` | [homMk_comp_homMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hommk-comp-hommk-source-edition-2.md) | 303 | `result-track:bf346af86ef8fd798e0ab872a98fe1406701077a85fc028aa24efa32122c67d1` |
| 39 | `def` | [morphismPropertyHomMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/morphismpropertyhommk.md) | 314 | `declaration-track:ec55e0ab280a7315776b993a8d1a1f0a57be9ca8ea14bbb5f2e71dc1aadeb290` |
| 40 | `lemma` | [morphismPropertyHomMk_of_edge](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/morphismpropertyhommk-of-edge.md) | 317 | `result-track:899c70f271cbf6d66649f4e0f87835929e2fbe07639b3ce15161bd97a3cc8f6d` |
| 41 | `lemma` | [morphismPropertyHomMk_eq_strictMap](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/morphismpropertyhommk-eq-strictmap.md) | 323 | `result-track:c2800bf9060dd6f23cc8b83327e8e5cfdaeb7b0457b9b3bafeee0be97384989b` |
| 42 | `lemma` | [multiplicativeClosure_morphismPropertyHomMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/multiplicativeclosure-morphismpropertyhommk.md) | 334 | `result-track:09ffd51354172d8932cdf42d23cef21da868ede63209b47c6444e806a98d324f` |
| 43 | `lemma` | [morphismProperty_eq_top](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/morphismproperty-eq-top.md) | 343 | `result-track:34874b59ec23ebbc450bf2affbdd6e2bbe4915a015a96af1cb5fc0f8b49a10ef` |
| 44 | `lemma` | [hom_rec](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hom-rec.md) | 358 | `result-track:4b4d9860e44c4e527ffa3285475e7020b27c6fd378ae097a4d5ea35fbe1c031b` |
| 45 | `def` | [lift](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/lift.md) | 385 | `declaration-track:7b182fb3fdb6e5d7a2c3b0e0d57f4c8dfb30372afbd129c3250705e35798f8c7` |
| 46 | `lemma` | [lift_obj_mk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/lift-obj-mk.md) | 393 | `result-track:3a1623a62c5a14f968032dcab8d37c2d2bf6cf6959a4c55d261cb5e37272bfe4` |
| 47 | `lemma` | [lift_map_homMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/lift-map-hommk.md) | 396 | `result-track:1e33eaa9ae6fbc2972cf26178d9b03403cf86cf98a8017e095aa725cddf7debb` |
| 48 | `def` | [mkNatTrans](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/mknattrans.md) | 413 | `declaration-track:8d40a63c3130c0b740bdb09eb6d2f27f2fb8d4544a19bb1a1025af3f5900e44d` |
| 49 | `lemma` | [mkNatTrans_app_mk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/mknattrans-app-mk.md) | 422 | `result-track:04903007662d7ddbe844e4a1abac58ac05a4b78435b06e86fdfcdeea47026b2c` |
| 50 | `def` | [mkNatIso](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/mknatiso.md) | 435 | `declaration-track:e723927d4c741f6ead7d722e14c8d530ab8f1f772a924f3ed3f340d92dc895e0` |
| 51 | `lemma` | [mkNatIso_hom_app_mk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/mknatiso-hom-app-mk.md) | 440 | `result-track:7656b5725ea15c60bda401acf96f537b79dc358aa9795583521680443878da96` |
| 52 | `lemma` | [mkNatIso_inv_app_mk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/mknatiso-inv-app-mk.md) | 445 | `result-track:b28aa9d71f88943357debb66ab3fcd04445410de949db573a7c30bb0b510b489` |
| 53 | `lemma` | [functor_ext](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/functor-ext.md) | 450 | `result-track:0d9308c6abbb2ebb9b9637342a39038b59166800353625f7f0a7a8f94eeea7cf` |
| 54 | `instance` | [(anonymous)](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/instance-source-edition-6.md) | 460 | `declaration-track:e107b4291837ec36f8c38ffe5fb16b1768375643fb31147709108fe3ec3cd88e` |
| 55 | `instance` | [subsingleton_hom](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/subsingleton-hom.md) | 469 | `declaration-track:702e44da4001c439bf16e06f9e42503e7a8c9998d8c601671d808d4f8c0b308b` |
| 56 | `instance` | [(anonymous)](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/instance-source-edition-3.md) | 477 | `declaration-track:6d804bc8f5a577ef0b9324d9578e998a284e63c97f7e770f14d3882303931440` |
| 57 | `def` | [isTerminal](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/isterminal.md) | 483 | `declaration-track:fd63eda8f6cd1ca76078b074f7c19497be10fe7745851683bce42a7f6f66b202` |
| 58 | `def` | [mapHomotopyCategory](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/maphomotopycategory-source-edition-2.md) | 497 | `declaration-track:a895c119e4ab13b8344682204e0d0e8d33179a4e1248042439f734d2b6e606a2` |
| 59 | `lemma` | [mapHomotopyCategory_obj](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/maphomotopycategory-obj.md) | 505 | `result-track:5b22cba829058180c700b72116835982a3843eea0cc6473c277df81cd831c2a0` |
| 60 | `lemma` | [mapHomotopyCategory_homMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/maphomotopycategory-hommk.md) | 509 | `result-track:87ac26c1609790d134b4757d16a76cf589c828ee39a5315c90dbdecc81918ec6` |
| 61 | `def` | [hoFunctor₂](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hofunctor-source-edition-2.md) | 515 | `declaration-track:22262ab61907cab110b2447ac722c075f92c192f30b82e853b3d5efec466ed09` |
| 62 | `theorem` | [hoFunctor₂_naturality](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hofunctor-naturality.md) | 521 | `result-track:45ca81e37bb15bf5ad30cd9897ed844e906856d1a84a7e08f12c6a3898f44f3f` |
| 63 | `theorem` | [HomotopyCategory.lift_unique'](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/homotopycategory-lift-unique.md) | 528 | `result-track:e43d7d5fefb2d815ead12ae0cb397fc4c046a4e422e6564162f745f7891d6b1a` |
| 64 | `abbrev` | [HomotopyCategory](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/homotopycategory-source-edition-2.md) | 538 | `declaration-track:bbfa1ba07233fe7fe4b953b1bbe705db395efb00f7de0ccf0e10f0208e12990f` |
| 65 | `def` | [mapHomotopyCategory](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/maphomotopycategory.md) | 543 | `declaration-track:363f7d5d8495a57b38c27eb49020d8da670944a33dc7d6c7192d5fe81ac29fc3` |
| 66 | `def` | [mk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/mk-source-edition-2.md) | 553 | `declaration-track:69697e85beb8aaa6efe7f5154ae7e8c1c69c9850b70c7aeccdae98c32bb37dbe` |
| 67 | `def` | [objEquiv](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/objequiv.md) | 557 | `declaration-track:af1863315c65303f4d6c66d8c388893e287d9107bf2b4d430ac2a24af6dbbb4f` |
| 68 | `def` | [rec](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/rec.md) | 563 | `declaration-track:1ccbb43cb963963fa17254034b5a16749ae2f14fd38678a97d6c823426c69521` |
| 69 | `lemma` | [rec_mk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/rec-mk.md) | 568 | `result-track:f5a79b64b06bc6d184f5bf1291a43e2190be52bbb2820f04c09cda45d2bcfa18` |
| 70 | `def` | [homMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hommk-source-edition-2.md) | 573 | `declaration-track:eaa6d18642a618a13e3b44216bf0ee228baf37078af21f8dad764b978653ba46` |
| 71 | `lemma` | [homMk_id](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hommk-id-source-edition-2.md) | 577 | `result-track:4ed7aa5a3552d4c9292ea49ff835030e62b344eeecca515dfaa9d293d68cd6f7` |
| 72 | `lemma` | [homMk_comp_homMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hommk-comp-hommk.md) | 581 | `result-track:a80451e8edf27d38fbdf0ec06700de7fa4c7f3392e997461035e3bb98c174fcf` |
| 73 | `lemma` | [hom_rec](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hom-rec-source-edition-2.md) | 590 | `result-track:c93652b1054e779fe23f02996e0b0367e72dbc8fa9ce5000fb68d3aea59fe5e3` |
| 74 | `lemma` | [mapHomotopyCategory_obj_mk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/maphomotopycategory-obj-mk.md) | 602 | `result-track:5c87032f79412be537181cfae496ad09ad18961e45082028aed3c609bc94110f` |
| 75 | `lemma` | [mapHomotopyCategory_map_homMk](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/maphomotopycategory-map-hommk.md) | 607 | `result-track:1dd4314b0822eeb7773e7d49ba4836b14342efbb4472d7cc650b5f923ae23045` |
| 76 | `def` | [hoFunctor](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hofunctor.md) | 613 | `declaration-track:110fff0147a8a1a742900210de8ecb074eb8f012bb2f8e8f889f5f62556285f1` |
| 77 | `instance` | [instUniqueOneTruncation₂DeltaZero](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/instuniqueonetruncation-deltazero.md) | 624 | `declaration-track:54d1d38f1396caca490c224c7c88c9a0db4244cefd456afc763fc1129c9ecfaf` |
| 78 | `instance` | [(anonymous)](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/instance-source-edition-2.md) | 629 | `declaration-track:373deb9128a95e1939fe6d1e390942ffcbf6c9fca656691bcfa1ca5c8d42e4d4` |
| 79 | `instance` | [(anonymous)](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/instance-source-edition-5.md) | 640 | `declaration-track:da0081cff2d7f11aa79830ae5d32ccb7f0fe3aef9f9dff2055fbcd2227c298b2` |
| 80 | `instance` | [(anonymous)](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/instance-source-edition-4.md) | 644 | `declaration-track:bfa2ccec8749ed816a039d873a282c601840cabe4e1cd5c0fcd21b078da0c249` |
| 81 | `def` | [isTerminalHoFunctorDeltaZero](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/isterminalhofunctordeltazero.md) | 650 | `declaration-track:c0cde75b66649fd3f28ca5c7669468ebee32c672159cf02b20fb50dbaec73518` |
| 82 | `def` | [hoFunctor.terminalIso](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hofunctor-terminaliso.md) | 654 | `declaration-track:effec4f312abd8df9b22f99835a3c6d1efd497fbe7d1f96e8d38958b1b9f298d` |
| 83 | `instance` | [hoFunctor.preservesTerminal](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hofunctor-preservesterminal.md) | 658 | `declaration-track:12fe8f2d158b6d3d468c6a42aa8e0028af63f644418a0204dba95774fab6239e` |
| 84 | `instance` | [hoFunctor.preservesTerminal'](../../../../AlgebraicTopology/HomotopyCatPublic.lean/declarations/hofunctor-preservesterminal-source-edition-2.md) | 661 | `declaration-track:1e9521240afdee86942402899ecbe33b9c9ff655fd2013ee7cf96120f552c07d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fef0b04185b4b43071d7fc845b2377fb83f79746eeea09f1ce2e5cdc86d6a00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantc3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantc3d3a44b14aefb6479053e776eaef799e823b61ac07635351f5a9d9befc4f1f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
