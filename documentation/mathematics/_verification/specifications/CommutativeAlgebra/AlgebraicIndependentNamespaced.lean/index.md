# Verification target: Algebraic Independent Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a155f6aae8000cb174870fcdbb3cf233dca747c6",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraicIndependent/Variant2879ef89c02ff54e64ff91abb32e924deb938a9eaf61c735ec6c28a608f587f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a155f6aae8000cb174870fcdbb3cf233dca747c6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AlgebraicIndependent/Variant2879ef89c02ff54e64ff91abb32e924deb938a9eaf61c735ec6c28a608f587f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AlgebraicIndependent/Variant2879ef89c02ff54e64ff91abb32e924deb938a9eaf61c735ec6c28a608f587f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Supported` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Equiv` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgebraicIndependent](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent.md) | 73 | `declaration-track:4b28d8f085ea1b708a3a7673a610411f25dd253d2c4f98e55e61494d7ed9e2fd` |
| 2 | `theorem` | [algebraicIndependent_iff_ker_eq_bot](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-iff-ker-eq-bot.md) | 79 | `result-track:8f474695812ed9ecbd0c23e685547eb5f8f2b71ed9fd4cb5f9f9993a5f122489` |
| 3 | `theorem` | [algebraicIndependent_iff](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-iff.md) | 85 | `result-track:fb61aac0b90e80b932b455bbb8674eb1d566ea5de40b319f953332f9ddf93e8a` |
| 4 | `theorem` | [AlgebraicIndependent.eq_zero_of_aeval_eq_zero](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-eq-zero-of-aeval-eq-zero.md) | 91 | `result-track:d8936ff49b6784c41665017ae763c060c5f5c0279764592e40b710a46fd2369b` |
| 5 | `theorem` | [algebraicIndependent_iff_injective_aeval](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-iff-injective-aeval.md) | 96 | `result-track:46369edc3b9ff209e840a194008a733322230b5877b2ac22d504010d3af18263` |
| 6 | `theorem` | [algebraicIndependent_empty_type_iff](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-empty-type-iff.md) | 102 | `result-track:b710f9e1a7f5fafb7da0167932e20795a38f20612ccd9dfb84654228d0667333` |
| 7 | `theorem` | [algebraMap_injective](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebramap-injective.md) | 115 | `result-track:ff41989e038e0a34e778ad44d1c3cec3d1801c9eebe1d7c863f6ad9b03fffffd` |
| 8 | `theorem` | [linearIndependent](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/linearindependent.md) | 121 | `result-track:6d38bdb097fd05da62fcdbad2fe0407fc6bda4fa2071265941427cee3ba01db0` |
| 9 | `theorem` | [injective](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/injective.md) | 133 | `result-track:30f910eec427ecf796556a016383caba24bef6acaf8a71a9b662d950b452ddfb` |
| 10 | `theorem` | [ne_zero](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/ne-zero.md) | 137 | `result-track:e3b88e87ad11493d8b6bf6d3590b69aec5bae3e278785a297742de0b8905ffd1` |
| 11 | `theorem` | [comp](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/comp.md) | 141 | `result-track:031f0b5cf5e02da3a6c10d4ff0a3e9fc054a0190492e2ac1ab7ed4481b8a2460` |
| 12 | `theorem` | [coe_range](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/coe-range.md) | 146 | `result-track:a5bd74bdae4d409ed03b542baa06ce0ef0875467aeec1ed25ed03770077f7e5a` |
| 13 | `theorem` | [map](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/map-source-edition-2.md) | 150 | `result-track:30a6356fc8dbcd6405297fad8ae94e3a7e700dad371b520b6154e1e1d85ea7f3` |
| 14 | `theorem` | [map'](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/map.md) | 164 | `result-track:1b9198be6df51825ec4c0097b17f6ac93b84f3f2182a8161ded190139d1a8e69` |
| 15 | `theorem` | [of_comp](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/of-comp.md) | 168 | `result-track:265a598ae08aeb8259b2931e642cf67190262f871e0756afcda75562ae4aff57` |
| 16 | `theorem` | [AlgHom.algebraicIndependent_iff](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/alghom-algebraicindependent-iff.md) | 179 | `result-track:38176d9c5ba00f2ce8b7bc19f70aa8029c099a0accf8e6235e21a42f1cfd7999` |
| 17 | `theorem` | [algebraicIndependent_of_subsingleton](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-of-subsingleton.md) | 185 | `result-track:dbcfefd154d9660e025f975cf9e5c271466b74fd22f29bb87c2797d8aa702ec4` |
| 18 | `theorem` | [algebraicIndependent_equiv](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-equiv-source-edition-2.md) | 189 | `result-track:a787af6caf7b7fb8abe0811137a75ff7fdfae3669d3bcdde41bb55d69d381fc2` |
| 19 | `theorem` | [algebraicIndependent_equiv'](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-equiv.md) | 195 | `result-track:326d9dc3fdc06c60ccd53705ec847224bbb990cc0e31a6d516e3b3d3d68b0ca0` |
| 20 | `theorem` | [algebraicIndependent_subtype_range](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-subtype-range.md) | 200 | `result-track:4475855731e8556ce34368f8949d9cbd35410b36e0bf08719687e3f667324688` |
| 21 | `theorem` | [algebraicIndependent_image](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-image.md) | 208 | `result-track:695acd8e22d59fb656cebd90e15f32eb440639719d13ad2bf1b9c7735b3e77e9` |
| 22 | `theorem` | [algebraicIndependent_adjoin](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-adjoin.md) | 213 | `result-track:70a8a697241836037940588123f3a1ba17ae43d6cd46b8a8d6ea2fc8e2a14a40` |
| 23 | `theorem` | [AlgebraicIndependent.restrictScalars](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-restrictscalars.md) | 221 | `result-track:5fbd17982568ac41dca3136df1f9dd69f2d84327d468b7f24d354ba985decf15` |
| 24 | `theorem` | [algebraicIndependent_finset_map_embedding_subtype](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-finset-map-embedding-subtype.md) | 233 | `result-track:a7a6de84ca1ad9e724c19b81c3b63f47b68eae41897f2cc343c8849380f41226` |
| 25 | `theorem` | [algebraicIndependent_bounded_of_finset_algebraicIndependent_bounded](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-bounded-of-finset-algebraicindependent-bounded.md) | 252 | `result-track:2009c3df1a0d12a3ab2f1589ffd06fb6c55a1e882b5b2184b6fcbef4105e2d37` |
| 26 | `theorem` | [AlgebraicIndependent.restrict_of_comp_subtype](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-restrict-of-comp-subtype.md) | 265 | `result-track:d72480d8e5cbb2af91b92045c00238e561ca9344af3381e5753d5a9c1bf93c67` |
| 27 | `theorem` | [algebraicIndependent_empty_iff](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-empty-iff.md) | 272 | `result-track:b854120d9e0981bade0b1541baae9d60d853d55de0d57ed3075a332d3f98fe3c` |
| 28 | `theorem` | [AlgebraicIndependent.mono](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-mono.md) | 278 | `result-track:103268ddfa1be6d904b84eeb59de3ba750ec9e03a147bcac347697edf7df8a23` |
| 29 | `theorem` | [AlgebraicIndependent.to_subtype_range](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-to-subtype-range-source-edition-2.md) | 285 | `result-track:18897e38596686fbe2eaf4677511f61eb6cf16d47c90d56e5d754d50d7029763` |
| 30 | `theorem` | [AlgebraicIndependent.to_subtype_range'](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-to-subtype-range.md) | 291 | `result-track:041507624870436a4c113da13ed40176afcc19f179b0bf7396782c020c8fb54d` |
| 31 | `theorem` | [algebraicIndependent_comp_subtype](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-comp-subtype.md) | 296 | `result-track:92b1fe24efe79ecf1980db3b08f93c92c79f65772af4ba58cf410724b989b936` |
| 32 | `theorem` | [algebraicIndependent_subtype](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-subtype.md) | 306 | `result-track:48f4e4ecc84130858d9888dc3058c570bd1412fb54d2b89f18c8dc86f4e94450` |
| 33 | `theorem` | [algebraicIndependent_of_finite](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-of-finite.md) | 312 | `result-track:257798bf76fc2cd4244c20c0a4e17459c112704a5ebaea2d5c8ba2b8fa686def` |
| 34 | `theorem` | [AlgebraicIndependent.image_of_comp](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-image-of-comp.md) | 319 | `result-track:a988c84c0325125d54b389849b3d092bfb9c0713f5e592bcda6b167f56c1eb96` |
| 35 | `theorem` | [AlgebraicIndependent.image](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-image-source-edition-2.md) | 327 | `result-track:c2834b7c7796bfa3fa6f243e91b91840b54d000bb0bcca7c1b73862e91d63740` |
| 36 | `theorem` | [algebraicIndependent_iUnion_of_directed](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-iunion-of-directed.md) | 333 | `result-track:df60a6352915959c379df16ebb7caa95f97260b2011ace158e8f5f23ffd8fc9c` |
| 37 | `theorem` | [algebraicIndependent_sUnion_of_directed](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-sunion-of-directed.md) | 342 | `result-track:3dc19c996d570268f1fa1b098c6b6735564ccfba71169dd6ef0fe40e59760314` |
| 38 | `theorem` | [exists_maximal_algebraicIndependent](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/exists-maximal-algebraicindependent.md) | 350 | `result-track:86c2c28333a0272eea12e356aebede679e5dda6a4b28f4d142c696571f0a39a9` |
| 39 | `def` | [AlgebraicIndependent.aevalEquiv](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-aevalequiv.md) | 378 | `declaration-track:ee6e5217177c6652e2cddcb50705c7644ba7a564a69f659776b2439acd97d995` |
| 40 | `theorem` | [AlgebraicIndependent.algebraMap_aevalEquiv](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-algebramap-aevalequiv.md) | 397 | `result-track:68edf3b6d6010440b5b1e7161d334e6fc93ff89599db43bba5d59da472648943` |
| 41 | `def` | [AlgebraicIndependent.repr](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-repr.md) | 405 | `declaration-track:cff13410374da5cc60d26739f2f23cd3e25c34ef23b97611ffcb0bee8da3b550` |
| 42 | `theorem` | [AlgebraicIndependent.aeval_repr](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-aeval-repr.md) | 411 | `result-track:2a8202c1d0374a4347133b7de86e67133151623c867f6106d12b044aedcf19c2` |
| 43 | `theorem` | [AlgebraicIndependent.aeval_comp_repr](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-aeval-comp-repr.md) | 415 | `result-track:02accc90bbef59dae0d4b1406d28e65c377cea07c5a555c2e0756e92477da862` |
| 44 | `theorem` | [AlgebraicIndependent.repr_ker](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-repr-ker.md) | 419 | `result-track:26fdff3b25c6d4102dbf46399728831fccdc8b0d6bd57a980ceae5b282ad30af` |
| 45 | `def` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin.md) | 429 | `declaration-track:ac22b76d1dcbf22bdb273cd99321e8d924d63ec5d55c86085f3181fc92538530` |
| 46 | `theorem` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin_apply](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin-apply.md) | 436 | `result-track:140cd83f3c585dcec2490c2332e74b3eb38df15b8067d50191acf013bb4c65b1` |
| 47 | `theorem` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin_C](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin-c.md) | 445 | `result-track:43f23195fbbaf48033a5e7a580640626dd0dcb2b5fde1ceeb94ab20b8a3011ec` |
| 48 | `theorem` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin_X_none](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin-x-none.md) | 455 | `result-track:55cdb1477d228040450b00bfd24f3ca38af3c1ea216f31ecfaffd71e82eb9c8c` |
| 49 | `theorem` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin_X_some](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin-x-some.md) | 464 | `result-track:6aaeb42a980a4290658fbf416438ce9e0d09e364b18fcf8f0a1a58039880108a` |
| 50 | `theorem` | [AlgebraicIndependent.aeval_comp_mvPolynomialOptionEquivPolynomialAdjoin](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-aeval-comp-mvpolynomialoptionequivpolynomialadjoin.md) | 475 | `result-track:e1945b056d92ae5931409b94a30a4f3d11e2fbc847e57cf29acd29ddd60b2133` |
| 51 | `theorem` | [AlgebraicIndependent.option_iff](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-option-iff.md) | 495 | `result-track:07b595382f0d34c566ce0b3bddec3c609ba02bca8e7248831a8f2ae7b222c354` |
| 52 | `def` | [IsTranscendenceBasis](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/istranscendencebasis.md) | 508 | `declaration-track:7fef6f4b39a70fad2f9f7ccfd4eef6f709f1fb77200db526ac5bd00027c0309b` |
| 53 | `theorem` | [exists_isTranscendenceBasis](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/exists-istranscendencebasis.md) | 513 | `result-track:f89d60833af1de615f171a11fddf7ad0d68a1fdb4c628051f47136da4bc644f1` |
| 54 | `theorem` | [AlgebraicIndependent.isTranscendenceBasis_iff](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-istranscendencebasis-iff.md) | 526 | `result-track:480188d5c6fc31f563677a01d59da1217624a158f5da37137258d8fbec6bba33` |
| 55 | `theorem` | [IsTranscendenceBasis.isAlgebraic](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/istranscendencebasis-isalgebraic.md) | 547 | `result-track:264f3877e307cb44454d0ac7f2d115c02feed5c479cefa94371cec397f8327b2` |
| 56 | `theorem` | [algebraicIndependent_empty_type](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-empty-type.md) | 573 | `result-track:fe68b5d7c4096afb8be685878e33322c328bd4d2ed495e87d50353fd9dcce607` |
| 57 | `theorem` | [algebraicIndependent_empty](../../../../CommutativeAlgebra/AlgebraicIndependentNamespaced.lean/declarations/algebraicindependent-empty.md) | 578 | `result-track:ad03fe5506d30b51bb9d6a99f129ae522b37b0b81c15d9adc04190895eda3f6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=076eb328c5804a3303690775f59ab81be0c17ec7a147a8982bc0b96252dda938 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AlgebraicIndependent/Variant2879ef89c02ff54e64ff91abb32e924deb938a9eaf61c735ec6c28a608f587f1.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/AlgebraicIndependent/Variant2879ef89c02ff54e64ff91abb32e924deb938a9eaf61c735ec6c28a608f587f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
