# Verification target: Linear Independent Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d691b993206990704e02d62c3d1a5bdd41e9289",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d691b993206990704e02d62c3d1a5bdd41e9289`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean.json)

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
| 1 | `theorem` | [LinearIndependent.restrict_scalars](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-restrict-scalars.md) | 74 | `result-track:38eb72816d1c080ce79ab46da1fa1101aef0133c8dfb77bb56099529fa258723` |
| 2 | `theorem` | [LinearIndependent.restrict_scalars'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-restrict-scalars-source-edition-2.md) | 85 | `result-track:e9adc6c6efea024592c8e413591c01417c399128f2d057328f92d8da1600959e` |
| 3 | `theorem` | [Submodule.range_ker_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/submodule-range-ker-disjoint.md) | 93 | `result-track:2285791903efcd8819bc049654611ae71184f7ae96e62cf24b71b05fec76c012` |
| 4 | `theorem` | [LinearIndependent.map_of_injective_injectiveₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-map-of-injective-injective-source-edition-2.md) | 107 | `result-track:8de88b2636d446e57c01a97f6a2eedb4356ac4e102e9b7ab50f9e28e0b14e9d1` |
| 5 | `theorem` | [LinearIndependent.map_of_surjective_injectiveₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-map-of-surjective-injective-source-edition-2.md) | 122 | `result-track:2ba3388b5eeedc35da6ca83abeb9abb00978eabdd85251a7a7dd47e41c3d8b05` |
| 6 | `theorem` | [LinearIndependent.map_injOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-map-injon.md) | 136 | `result-track:a7ed9c4bbc0afbea87f0caba1abcbcdf0802740bf481b6f5845a69d01e5fe75b` |
| 7 | `theorem` | [LinearIndepOn.map_injOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-map-injon.md) | 140 | `result-track:3fe39b159b8d8849c24ee7e9bb9fb166c7aa3d48f169be024171043e9059a83f` |
| 8 | `theorem` | [LinearIndepOn.comp_of_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-comp-of-image.md) | 144 | `result-track:747e0313aefcb76aa75cd0bf2ff921c1e57d4994a37851e2f218300438982e14` |
| 9 | `theorem` | [LinearIndepOn.image_of_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-image-of-comp.md) | 148 | `result-track:1576ec4401161fed3f3054bec44f06e0909cc959ad30af05b19533b4caca0d2f` |
| 10 | `theorem` | [LinearIndepOn.id_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-id-image.md) | 154 | `result-track:412f3571100296d1f1d1af5cd73015f22386a9702d4961f4ae51814d9135085d` |
| 11 | `theorem` | [LinearIndepOn_iff_linearIndepOn_image_injOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-iff-linearindepon-image-injon.md) | 157 | `result-track:346c2f6391eaed010240d1a0d3583fe262b311b277cd69828a67500eae0d4732` |
| 12 | `theorem` | [linearIndepOn_congr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-congr-source-edition-2.md) | 161 | `result-track:da0ec4255a9bb6dd8d4c15410d202166525dd503f290f86fccf188276f4b4d5c` |
| 13 | `theorem` | [LinearIndepOn.congr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-congr.md) | 168 | `result-track:9021eb63945857e2ae1e218b510aee1a010ae6ca51bfec75988014db81ead888` |
| 14 | `theorem` | [LinearIndependent.group_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-group-smul.md) | 172 | `result-track:8db0471e0e6f352effceff3cdccf050bb9cfaec4c6c9f9e66a4e54df8b6da8e8` |
| 15 | `theorem` | [LinearIndependent.group_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-group-smul-iff.md) | 183 | `result-track:174ad63fc6cfc93edc38b89ebe64177d0e9aa326391018ace0acf493b4328db8` |
| 16 | `theorem` | [LinearIndependent.units_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-units-smul.md) | 192 | `result-track:0da2f726702a414d430494376fcb9a30179ca1a6e3a0a23a640a4946cca9cee8` |
| 17 | `theorem` | [LinearIndependent.units_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-units-smul-iff.md) | 202 | `result-track:292c5d469fcbf22bb04bfe4120ccff742358bce2ad9150b949fccbd3f309de9b` |
| 18 | `theorem` | [LinearIndependent.codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-codrestrict.md) | 208 | `result-track:b48458c5c9b9097eee2a36a9a8123d1717967ebb41e3ac0f18890d0c0474ea1f` |
| 19 | `theorem` | [linearIndependent_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-span.md) | 212 | `result-track:75dba5c1b5ca3afbf8c0ba3e1dea182ad97c98cc11a4751a5bd8f5e930bd7515` |
| 20 | `theorem` | [linearIndependent_finset_map_embedding_subtype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-finset-map-embedding-subtype.md) | 218 | `result-track:25742e5845a1e09f157484c459c6ed7cdd99a6a8508c0fe573d66114d0244ad6` |
| 21 | `theorem` | [linearIndepOn_of_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-of-finite.md) | 225 | `result-track:ac848ee0f8590cec72c1bb309cd27921e673ad0d5e38ee012f2ac2f9f9a26d85` |
| 22 | `theorem` | [LinearIndependent.eq_of_smul_apply_eq_smul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-eq-of-smul-apply-eq-smul-apply.md) | 234 | `result-track:bd920340b1a5f8b220e748b762e62d26a63e7f3fc46a71fc4f75f46ea73a75f0` |
| 23 | `theorem` | [LinearIndependent.disjoint_span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-disjoint-span-image.md) | 247 | `result-track:29e6eb8ae20bc255ee30690885adad689d2cb2b67d7f225e7234a52ef666e553` |
| 24 | `theorem` | [LinearIndependent.notMem_span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-notmem-span-image.md) | 255 | `result-track:232c5837d5f74a1077248ee733b22722436410b62e0e293e6e9d5ea81b56bd09` |
| 25 | `theorem` | [LinearIndependent.linearCombination_ne_of_notMem_support](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-linearcombination-ne-of-notmem-support.md) | 265 | `result-track:a747869adf68c300232446c712bd7a32d586807f0a22cf47de2ec606e6aec39c` |
| 26 | `theorem` | [LinearIndepOn.id_imageₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-id-image-source-edition-2.md) | 277 | `result-track:52f97d89d18d35a3dc102e7f5e36d4fe9c9e3f0732652318d9df8717af5fa4bc` |
| 27 | `theorem` | [surjective_of_linearIndependent_of_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/surjective-of-linearindependent-of-span.md) | 281 | `result-track:a8c2828b81c2fab97f8ee5432a0ab86a86c73998f16fb8da5f9e4d031fd68181` |
| 28 | `theorem` | [eq_of_linearIndepOn_id_of_span_subtype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/eq-of-linearindepon-id-of-span-subtype.md) | 302 | `result-track:532a6cc9c595b890f8ade3b5a00e083ddd490dd2ba5fb14f50e621270e8e895d` |
| 29 | `theorem` | [le_of_span_le_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/le-of-span-le-span.md) | 316 | `result-track:cf549f47337622994bbf18d61bc48b459efbfdeeb486fa79db1cb88347eb0ff9` |
| 30 | `theorem` | [span_le_span_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/span-le-span-iff.md) | 323 | `result-track:90f697a1c28b580064e522e869d4cb9099b25728e89713a1383bb8aebcf31825` |
| 31 | `theorem` | [LinearIndependent.eq_coords_of_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-eq-coords-of-eq.md) | 337 | `result-track:247e131d46d7d1b25c99e6cb6fa06887783746f4451203aabf8058c8b99a8ef0` |
| 32 | `theorem` | [LinearIndependent.map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-map-source-edition-2.md) | 346 | `result-track:f285bcd9f9f21fcc08b613739e49788df7963a94673933602de4534e68233ad2` |
| 33 | `theorem` | [LinearIndependent.map'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-map.md) | 352 | `result-track:a1d47faf1c8beae9951ed79020c65b607d46319ce13291c839284573b6cf743c` |
| 34 | `theorem` | [LinearIndependent.map_of_injective_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-map-of-injective-injective.md) | 361 | `result-track:525eda31f1e8eb36e218ea578b8d08b6a0c721b9197c415b62d29f4acfbef734` |
| 35 | `theorem` | [LinearIndependent.map_of_surjective_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-map-of-surjective-injective.md) | 375 | `result-track:0f44659dfe967c7454786d53a58b15334236953d8a641e637826dce8681fc5a9` |
| 36 | `theorem` | [LinearMap.linearIndependent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearmap-linearindependent-iff.md) | 383 | `result-track:67dc249b2e5a37446d45fc746ace1dde28c684a47983c377a7be56870c659481` |
| 37 | `theorem` | [LinearIndependent.finCons'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-fincons.md) | 388 | `result-track:bf8cebaaf7132503df9dda84108ed2e4d7625fa626e4c77de9e51990f27c2042` |
| 38 | `theorem` | [LinearIndependent.finSnoc'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-finsnoc.md) | 404 | `result-track:faf1318ee95a65764d2413d2a83c7150e1f0bdf8344d96b393323affb1813928` |
| 39 | `theorem` | [linearIndependent_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-sum.md) | 421 | `result-track:c862626c6596b53c61054c00c4ac3ddb7e2f81202287909a74902172349760da` |
| 40 | `theorem` | [LinearIndependent.sum_type](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-sum-type.md) | 457 | `result-track:976e558af23286b86347dd8fc0f226b4adb8143c5a8fd41070e9899186e1fd42` |
| 41 | `theorem` | [LinearIndepOn.union](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-union.md) | 463 | `result-track:458f03c1c02de5c72553c554dea80c3ee64121c3581154f108669ed43035739b` |
| 42 | `theorem` | [LinearIndepOn.id_union](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-id-union.md) | 474 | `result-track:133a937bd2304945b696e7f2cb4de6f8e019bf79c2524d7722a5af8f7f8b8c32` |
| 43 | `theorem` | [linearIndepOn_union_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-union-iff.md) | 478 | `result-track:e79462a655d6d8b151b5064b45827701f0deaf4bddf9a43f95f9a6cd628c9fd7` |
| 44 | `theorem` | [linearIndepOn_id_union_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-id-union-iff.md) | 486 | `result-track:81cbe00e39c90cf25f53ecfd884c8c50cb111a637fba62db4e52071780a11b37` |
| 45 | `theorem` | [LinearIndepOn.image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-image.md) | 493 | `result-track:a9d2e8f233c1b4a594d85dd8ea3dcd79cc5cbd68f72878bed587b33a7158faa2` |
| 46 | `theorem` | [linearIndependent_monoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-monoidhom.md) | 502 | `result-track:19a21711a94805413552664e9788069632c58571fd23390f8d8335d14fd41e83` |
| 47 | `lemma` | [linearIndependent_unique_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-unique-iff.md) | 572 | `result-track:8acb0748f2b5f9ccf0186d3f259d486dc7adcac0779d2f01bdb56f0943479d39` |
| 48 | `theorem` | [linearIndepOn_singleton_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindepon-singleton-iff.md) | 579 | `result-track:f5eedfdfbb4536a6402ac60662195bab9f51428184db7f26f9bdf89b7f1c5c2a` |
| 49 | `theorem` | [linearIndependent_subsingleton_index_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentBasicPublic.lean/declarations/linearindependent-subsingleton-index-iff.md) | 583 | `result-track:99b884a20729fa206b23586080a8cfc4ab9458e6e62cc726531709e325b9cf42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=135491cc10b90e02aced473f65208bc3406229b5d9700e2d297f348a680d4442 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
