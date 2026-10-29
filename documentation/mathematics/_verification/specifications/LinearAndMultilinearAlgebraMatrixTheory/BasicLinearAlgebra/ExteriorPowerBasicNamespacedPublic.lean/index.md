# Verification target: Exterior Power Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e803813de5a155b9f552dfc03699fe1d2804e777",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e803813de5a155b9f552dfc03699fe1d2804e777`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean.json)

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
| 1 | `def` | [ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi.md) | 64 | `declaration-track:84e3763400af8018fdbe0759d14339529ed8ba950041f318be7f965b9e45a488` |
| 2 | `lemma` | [ιMulti_apply_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-apply-coe.md) | 68 | `result-track:8a73400196141dcbe57e1589383285a22be3479d7b2ab2b4543d6f9f18fb8603` |
| 3 | `def` | [ιMulti_family](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-family.md) | 73 | `declaration-track:d92148da7785a5756c3828ac3c3c5f33b375e6798ddf3aaea45b2ac10ada2319` |
| 4 | `lemma` | [ιMulti_family_eq_coe_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-family-eq-coe-comp.md) | 77 | `result-track:9a9c77dccc06b4860bcc6765c1581cda3ae5fd8a6ef62c8ab6a3643f466dbd0c` |
| 5 | `lemma` | [ιMulti_family_apply_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-family-apply-coe.md) | 81 | `result-track:00fb06cfb0c142682517dbcc8d5bbb6cb5f27fe335f9edd20afad1991dc94e7b` |
| 6 | `lemma` | [ιMulti_span_fixedDegree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-span-fixeddegree.md) | 88 | `result-track:131660a99c23cdc053de82f61d3334cb54a69cd5106949c315164dfbcc9b1b96` |
| 7 | `lemma` | [ιMulti_span_fixedDegree_of_span_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-span-fixeddegree-of-span-eq-top.md) | 95 | `result-track:fe89d35dcc6f4a7957fb054638865fdcd4c751cc64428c2d117adc3a73a378e9` |
| 8 | `lemma` | [ιMulti_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-span.md) | 116 | `result-track:443d66debd2b7a426a42fd30ef4b1e54909f0d67e91069de74f3ec1be0172d6d` |
| 9 | `lemma` | [ιMulti_span_of_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-span-of-span.md) | 126 | `result-track:e53b3b290b63b4364a14902d6c3ed513de0169779f3e3af9a1d4c206327ca003` |
| 10 | `inductive` | [Rels](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/rels.md) | 135 | `declaration-track:d581eb5e155ff62081394d5883344e9367adcf7cdd3a0de72cbdea65570ade55` |
| 11 | `def` | [relations](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/relations.md) | 142 | `declaration-track:37885e75f1bc02c9429d109e8a489a7c9b6f687441cf37370900c8de0f648859` |
| 12 | `def` | [relationsSolutionEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/relationssolutionequiv.md) | 161 | `declaration-track:0ce9aede863045989f3eafe71a71f1728e3be9e09690b32e8345e7fac8ad4459` |
| 13 | `def` | [isPresentationCore](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/ispresentationcore.md) | 192 | `declaration-track:923fdf608e1e6ceca9e84ee72507f2b074fbb6aa3308e83be68568b370319837` |
| 14 | `def` | [presentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/presentation.md) | 206 | `declaration-track:38973f9fbd723661ba33e1cd865c03e5d3116efa30e603af7b17afaa369d1260` |
| 15 | `lemma` | [linearMap_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/linearmap-ext.md) | 214 | `result-track:492d20166b8d2488caea38eeecd3d25c311de4e948db9d64605491e157577ed1` |
| 16 | `def` | [alternatingMapLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/alternatingmaplinearequiv.md) | 220 | `declaration-track:89cacdf4cf7399a901ed4a712c6440942419ccadeae0d06ea18c4443dc936893` |
| 17 | `lemma` | [alternatingMapLinearEquiv_comp_ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/alternatingmaplinearequiv-comp-multi.md) | 228 | `result-track:1b60c32127659f7c886fce71401d398f9df56f2a9b5229de2c4e9bce2ad1c09e` |
| 18 | `lemma` | [alternatingMapLinearEquiv_apply_ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/alternatingmaplinearequiv-apply-multi.md) | 236 | `result-track:daf3cc03907ce499c7abf0d0f7cd6f8438647949209fcf42a857c0b68f14533b` |
| 19 | `lemma` | [alternatingMapLinearEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/alternatingmaplinearequiv-symm-apply.md) | 241 | `result-track:d877f4bec6a7cf7d988f465010d06baa06155ea0ec7bccb3b3f8c5b25c218089` |
| 20 | `lemma` | [alternatingMapLinearEquiv_ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/alternatingmaplinearequiv-multi.md) | 247 | `result-track:62ef64fecaf221a716b188d62d100b079f8743d049afd281a52b04e875b48bdc` |
| 21 | `lemma` | [alternatingMapLinearEquiv_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/alternatingmaplinearequiv-comp.md) | 258 | `result-track:694d1f1935a226636d3f4ffe70af71716b1b8e6ba004194aa00d8009123b631a` |
| 22 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map.md) | 268 | `declaration-track:55c33bd32c99eb7493ef35d08aee7f4a4451fa753aa32dee4eb88ca716960ec6` |
| 23 | `lemma` | [alternatingMapLinearEquiv_symm_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/alternatingmaplinearequiv-symm-map.md) | 271 | `result-track:1161eb19c84a0e0f01aa54f691bb7d637c5f254fc2098ab06d46397502642530` |
| 24 | `theorem` | [map_comp_ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map-comp-multi.md) | 276 | `result-track:0b6c6c23944ae9f4ea12cc537dfa1392a171b22036a8d2bc002a60a53576f4ed` |
| 25 | `theorem` | [map_apply_ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map-apply-multi.md) | 281 | `result-track:8e9b2fcdfd1023d374615868b38916637cab6bf4d42c2a11fd8099339b5efc89` |
| 26 | `lemma` | [map_comp_ιMulti_family](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map-comp-multi-family.md) | 287 | `result-track:53d316683717910f001a8ad8e348fd94fee9390aa0b4c4e0a8103b4887f875a0` |
| 27 | `lemma` | [map_apply_ιMulti_family](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map-apply-multi-family.md) | 294 | `result-track:4765742a75fb255236c923b3e4aefcf0a5f8f5d916b7dc1c926beb38e1ca56e0` |
| 28 | `theorem` | [map_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map-id.md) | 301 | `result-track:51534e35630c7d73731ed452723f811a7ea25800906d13ef5f4dc3d3d5205003` |
| 29 | `theorem` | [map_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map-comp.md) | 306 | `result-track:d014851903e49965137909d9353c234ec3790bee759e2c3fd09fcebbb33c2fba` |
| 30 | `theorem` | [subtype_comp_map_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/subtype-comp-map-eq.md) | 310 | `result-track:3e2f264a80f257e9bf0298eaae35a9cae01dfd69ac305bc87c74f92930f3fbf6` |
| 31 | `theorem` | [coe_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/coe-map.md) | 316 | `result-track:cc2126b7fae7521655a00d8cd00093e37864647c71f97c5f6f380e7b01cc5a2a` |
| 32 | `lemma` | [map_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map-injective.md) | 322 | `result-track:a729057a29243a4581c4aee232d1b3ce3c701501835a2b4909b11f98c8446c9f` |
| 33 | `lemma` | [map_injective_field](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map-injective-field.md) | 329 | `result-track:af9e2118af08af21c6fad54b7a3f9390a7fb8a423e65536cf70b117cf0b74d07` |
| 34 | `lemma` | [map_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/map-surjective.md) | 335 | `result-track:6082f19ef6b0fcaba6c4fbf0c5d6c3b37dcc39e91e98258de71f6da7c7e90906` |
| 35 | `lemma` | [ιMulti_family_span_fixedDegree_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-family-span-fixeddegree-aux.md) | 353 | `result-track:c1b71634f63a3a8109e360b9ba88fb2cc2c4f0bb5cb252ab31f4050b1da65ac8` |
| 36 | `lemma` | [ιMulti_family_span_fixedDegree_of_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-family-span-fixeddegree-of-span.md) | 383 | `result-track:9d536e97a25e889ddee62feb8e68b102a2c040325df5b53724a9eaf853583b18` |
| 37 | `lemma` | [ιMulti_family_span_of_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-family-span-of-span.md) | 400 | `result-track:94560ead226487cb0e33f5c7ae9895f22900d2dbd562427046482b0313326800` |
| 38 | `lemma` | [ιMulti_family_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/multi-family-span.md) | 412 | `result-track:597d50cd89a71da39dc2ca36638ed4da932b833dedbcd6c99212a6b73e6037fd` |
| 39 | `lemma` | [subsingleton_of_span_eq_top_of_card_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/subsingleton-of-span-eq-top-of-card-lt.md) | 426 | `result-track:00fc18ab89baf3ecd3196cf7d8255e6f1358697977d742318f550587e058680b` |
| 40 | `def` | [zeroEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/zeroequiv.md) | 442 | `declaration-track:a8a548983848f0d206a2824e5a054585d8345b57bd0d8776a5c84ba5b6c0add3` |
| 41 | `lemma` | [zeroEquiv_ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/zeroequiv-multi.md) | 450 | `result-track:1cdf7e02fd2599e4736dc4f08a902554a8225f8341d219cde17a6319ab4c570f` |
| 42 | `lemma` | [zeroEquiv_naturality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/zeroequiv-naturality.md) | 454 | `result-track:236f8354dc9c901dd1fd0f57b4436d27fed6be7190f1fd0cce9b034d68dfd4b0` |
| 43 | `def` | [oneEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/oneequiv.md) | 460 | `declaration-track:f90b5e28a2f93e3fe3154a53b074b29483e4b9fd84b894c706aa0e4f2b5d01a1` |
| 44 | `lemma` | [oneEquiv_ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/oneequiv-multi.md) | 478 | `result-track:e23f2a6fd3bde3c903f99b202daf57bcebddc090b4a38e725e7bf5711c972438` |
| 45 | `lemma` | [oneEquiv_naturality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasicNamespacedPublic.lean/declarations/oneequiv-naturality.md) | 482 | `result-track:59585fe220425eee85313ff692d71f55da197b4e2c767504b50cfb8997a30d5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1584b82f2944cc4ac4cf707ec4eefcffaa2959cc66076fe0d0eb196c4d5c8ac8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
