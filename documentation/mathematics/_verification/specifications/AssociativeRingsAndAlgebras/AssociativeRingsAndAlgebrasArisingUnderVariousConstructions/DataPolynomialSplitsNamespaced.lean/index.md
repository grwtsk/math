# Verification target: Data Polynomial Splits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f036bce8c161f2f4ba88c3828f4d107973030b",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f036bce8c161f2f4ba88c3828f4d107973030b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Prime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.FieldDivision` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Lifts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits.md) | 62 | `declaration-track:dde1c18e3d465cea2d16260b587ee8a8da4efa74d2eebf17df141d51ce92ede0` |
| 2 | `theorem` | [splits_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-zero.md) | 67 | `result-track:48e49059486900a97840ed7fb1017a34f07c9c2b2222931bae49b440583fea6c` |
| 3 | `theorem` | [splits_of_map_eq_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-map-eq-c.md) | 71 | `result-track:de9785c1e7c4521406ea2c44bdbe5d35ac32e40771e58cdd9952d088b5645975` |
| 4 | `theorem` | [splits_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-c.md) | 86 | `result-track:1515ddcda692ccf9dc1d7c6adb95ae15e58755f5f861040ee36a6bda4ab74b1d` |
| 5 | `theorem` | [splits_of_map_degree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-map-degree-eq-one.md) | 91 | `result-track:8ff676a5084b7b7e4493c86c0e4db4301b8c74843b148e922e973f258252a3e1` |
| 6 | `theorem` | [splits_of_degree_le_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-degree-le-one.md) | 99 | `result-track:4062f47d3ba912764f493d29497bcee8e5638e54a72f341b786512ecb241fbe5` |
| 7 | `theorem` | [splits_of_degree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-degree-eq-one.md) | 107 | `result-track:d985341d9981d573165f5d3ae6864be553e23b87099497f0be18685ed697cacb` |
| 8 | `theorem` | [splits_of_natDegree_le_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-natdegree-le-one.md) | 111 | `result-track:09169f63e284a4bf70df6f4192030f827ab86ce64368e6399e6ed54b7cef9189` |
| 9 | `theorem` | [splits_of_natDegree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-natdegree-eq-one.md) | 115 | `result-track:33a26d5a8d03986a464835d133a7bebeb200e2692519b466673a43dd01edad96` |
| 10 | `theorem` | [splits_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-mul.md) | 119 | `result-track:3524cf94e97ddefc7437ca44efc08a92211ea7aea5c3c18e811e13899b0e1dcd` |
| 11 | `theorem` | [splits_of_splits_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-splits-mul.md) | 129 | `result-track:6d8fa56fa35d8e36f704188234ff501fd3b03ebeec03c78f36e2831b43ecdf19` |
| 12 | `theorem` | [splits_map_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-map-iff.md) | 137 | `result-track:d8b08c28db6c3f860b88c7440a7d6fe35345266dca758f825631bd9ff24092ad` |
| 13 | `theorem` | [splits_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-one.md) | 141 | `result-track:5681c600739e3a5027926a81b8ebbd7220635d6cb1bdf1a5ce6562822f884615` |
| 14 | `theorem` | [splits_of_isUnit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-isunit.md) | 145 | `result-track:50b7335a2f4639ad4f635e82c902ea769a42bf5c7d2eee72c329ba7a6fa30805` |
| 15 | `theorem` | [splits_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-x-sub-c.md) | 149 | `result-track:8da3f6617902b878e03dea4cf506dc731185da1693f7d7a2a62e284e98468e53` |
| 16 | `theorem` | [splits_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-x.md) | 154 | `result-track:de3e1690ca03e4225a27505d54c44b17bdd02253462e561c75a354c4ebf4cae2` |
| 17 | `theorem` | [splits_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-prod.md) | 159 | `result-track:eab31640adca8d9118d9d453131ae789421420a7d3457348fe16b98ecb208be3` |
| 18 | `theorem` | [splits_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-pow.md) | 166 | `result-track:8f4cfb110cfb50b5efc6d84c57f090cbce2e25ec84dc2e2192e314b9307f8ddd` |
| 19 | `theorem` | [splits_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-x-pow.md) | 171 | `result-track:c7775a5796eb2fa676d9d54071e77aa1df8a45436c7c5d0b5882287841b91d4b` |
| 20 | `theorem` | [splits_id_iff_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-id-iff-splits.md) | 176 | `result-track:482b8fdcf0bd34ecc4a03d27fe6a49b40bcd380e8fb55cd89d18033600b3a020` |
| 21 | `theorem` | [exists_root_of_splits'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/exists-root-of-splits-source-edition-2.md) | 180 | `result-track:ff6dc6483b26caba78f8342ab2e234143750f5323459f861ef16fcf5e79d65f4` |
| 22 | `theorem` | [roots_ne_zero_of_splits'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/roots-ne-zero-of-splits.md) | 192 | `result-track:4b25ba04a18251d01575116689dff3a9c3f594a637b33061a8a52504bb621f8b` |
| 23 | `def` | [rootOfSplits'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/rootofsplits.md) | 203 | `declaration-track:27d77badba628645d20ef6eb7be8be9f2e4122a24b73d0d0d828b4963d8dd7c7` |
| 24 | `theorem` | [map_rootOfSplits'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/map-rootofsplits-source-edition-2.md) | 207 | `result-track:b914be12a3b95d0b8c2b36198c898b688e1d006633a81b49e43dd0989b310e0b` |
| 25 | `theorem` | [natDegree_eq_card_roots'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/natdegree-eq-card-roots-source-edition-2.md) | 212 | `result-track:8de45ab2b467c8fbe0de158c1bef55416cda024106a8ea15120af35861eee9c9` |
| 26 | `theorem` | [degree_eq_card_roots'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/degree-eq-card-roots-source-edition-2.md) | 230 | `result-track:7ea70543c7b42b76df11eb3456ec6eb1277171a7238c555993fe8671f77bd562` |
| 27 | `theorem` | [splits_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-iff.md) | 242 | `result-track:476ba5d109fde0e0a0f69e6d679d9703249200272e875d7510fa085e2434b991` |
| 28 | `theorem` | [Splits.def](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-def.md) | 248 | `result-track:7e72d59fdd4e619fdd7b4d8f8b733b8987b3ca5e45526391edf7ec29b06bc7f8` |
| 29 | `theorem` | [splits_of_splits_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-splits-mul-source-edition-2.md) | 253 | `result-track:d3f69c1c0c69ceb87a8c4240e3d1a21b19ac883586ae8f76dae791910eba7896` |
| 30 | `theorem` | [splits_of_splits_of_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-splits-of-dvd.md) | 258 | `result-track:4ae7f8052743fcc93404bc5c22ec1dbd1d99365b71256238003b1b3f6a28158b` |
| 31 | `theorem` | [splits_of_splits_gcd_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-splits-gcd-left.md) | 264 | `result-track:cbe75c18a7e0018cd644dfde0de19d56ac155153efa958f9ed209d4dab6f81bd` |
| 32 | `theorem` | [splits_of_splits_gcd_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-splits-gcd-right.md) | 269 | `result-track:b93057ca8c075602a14a3d4fcc7ea4645bc158307ae6ae1dee8e60b18dfce5a4` |
| 33 | `theorem` | [splits_mul_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-mul-iff.md) | 274 | `result-track:5020cb212c21d5691056b480f30a9ad63aa4057481d4bf448a691d5a8c3ad848` |
| 34 | `theorem` | [splits_prod_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-prod-iff.md) | 279 | `result-track:b22eaa8207915e4313dfb3c71747fffe886ab9a4eced86c732f7522ef5b7d090` |
| 35 | `theorem` | [degree_eq_one_of_irreducible_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/degree-eq-one-of-irreducible-of-splits.md) | 289 | `result-track:66940d6bc32fd745d6f396ef20444aef07d1444e3f4601d698adc3a7c5bea4e6` |
| 36 | `theorem` | [exists_root_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/exists-root-of-splits.md) | 298 | `result-track:2bf2671c23f47aa9429c74228534f4598777e42d6c2831efe0760eef24d2890b` |
| 37 | `theorem` | [roots_ne_zero_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/roots-ne-zero-of-splits-source-edition-2.md) | 303 | `result-track:aa0ab1967106643dbfcfbc9c57bbd8e679f2ebd0984bc3d16c6543171f8110ef` |
| 38 | `def` | [rootOfSplits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/rootofsplits-source-edition-2.md) | 310 | `declaration-track:7d2ae8e0315d8c6e5c623c847e39fce55b2efb055a806cdd500b6a3099236596` |
| 39 | `theorem` | [rootOfSplits'_eq_rootOfSplits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/rootofsplits-eq-rootofsplits.md) | 315 | `result-track:3b64d8395837edbc0f0812e92cc997c755a9f5bdc7e3a93e340aad409991d9dd` |
| 40 | `theorem` | [map_rootOfSplits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/map-rootofsplits.md) | 320 | `result-track:880cd6d9e54d011e868b6bcbed69e73451045254b1be5ec8a28ff8af78db9b49` |
| 41 | `theorem` | [natDegree_eq_card_roots](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/natdegree-eq-card-roots.md) | 325 | `result-track:8546ee46c70517897c83fc1eb63dced6152ffc2c40aceb4a7efd906955d96715` |
| 42 | `theorem` | [degree_eq_card_roots](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/degree-eq-card-roots.md) | 330 | `result-track:560e011a14cbeba5a1b73c410e927464dbc9b01b0b35755ac7d8f0a811f32eb4` |
| 43 | `theorem` | [roots_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/roots-map.md) | 335 | `result-track:1533a0d78cffde9c64fd5a79bfaf62a1c3649c7d02e498a9d725f1f461b6e1d2` |
| 44 | `theorem` | [image_rootSet](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/image-rootset.md) | 341 | `result-track:a2c98701ca2bcda29790fe5a357098ed5a030edb090813c937d2b758ebbed46a` |
| 45 | `theorem` | [adjoin_rootSet_eq_range](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/adjoin-rootset-eq-range.md) | 349 | `result-track:3c822f63a23e1dd6eeb15cbde9f0cfb6d0cfbe4b9b402a4128aaebe187b6673e` |
| 46 | `theorem` | [eq_prod_roots_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/eq-prod-roots-of-splits.md) | 356 | `result-track:a4c82c3de5438192b2ac5c705b6dc43f0a262860d56ab1894e0ea37861baaff4` |
| 47 | `theorem` | [eq_prod_roots_of_splits_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/eq-prod-roots-of-splits-id.md) | 363 | `result-track:a408359166c100a9fbcb5951d4fa58686e5d51efe5cc45fdfdb6de43e33d2691` |
| 48 | `theorem` | [eq_prod_roots_of_monic_of_splits_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/eq-prod-roots-of-monic-of-splits-id.md) | 368 | `result-track:fa80e3010883135a20ff5381ea26c769c86b1c2079612893e215fcdbf577eda1` |
| 49 | `theorem` | [eq_X_sub_C_of_splits_of_single_root](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/eq-x-sub-c-of-splits-of-single-root.md) | 374 | `result-track:c541b4c1045ad5d59a99c5c51496faeaf2dcb2c420c919f7f70205ab5d662146` |
| 50 | `theorem` | [mem_lift_of_splits_of_roots_mem_range](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/mem-lift-of-splits-of-roots-mem-range.md) | 382 | `result-track:f1d8decb15b7985b1b11cc0cdac0e3b434767e0d295c76d7fcf85d3d8f58ddf2` |
| 51 | `theorem` | [splits_of_exists_multiset](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-exists-multiset.md) | 399 | `result-track:01f48b08888222b4ff514307e1475aee9c3b245dde37b584d746e3dd987552c8` |
| 52 | `theorem` | [splits_of_splits_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-of-splits-id.md) | 415 | `result-track:4ca3533bcf1b535eabae757e269ab0b0fb781de39883c1a485b6b3e274a1cf12` |
| 53 | `theorem` | [splits_iff_exists_multiset](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-iff-exists-multiset.md) | 428 | `result-track:5b4ab2dd3313839a6ff7f2a191fc3e46578324757cb761c33edae728aaa30110` |
| 54 | `theorem` | [splits_comp_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-comp-of-splits.md) | 435 | `result-track:3e5d851346d7c664f409c3dd847a19f3c9df1ac7c48fd7c3c43818b868465286` |
| 55 | `theorem` | [splits_iff_card_roots](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/splits-iff-card-roots.md) | 444 | `result-track:78643cecf2061838e67d96bd59b7fb97b6b9e7dbf1ac8559ee7df3a33ec75d8e` |
| 56 | `theorem` | [aeval_root_derivative_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/aeval-root-derivative-of-splits.md) | 456 | `result-track:5af5bc92e5f110e44b51b5f1e49fb2cdb52da08611d2cc0381ea2048039cf619` |
| 57 | `theorem` | [prod_roots_eq_coeff_zero_of_monic_of_split](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/prod-roots-eq-coeff-zero-of-monic-of-split.md) | 468 | `result-track:c46f5efc3e463ee2b8b25f65c78d095d140108c44e0c8c3603128cf16942e6c9` |
| 58 | `theorem` | [sum_roots_eq_nextCoeff_of_monic_of_split](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialSplitsNamespaced.lean/declarations/sum-roots-eq-nextcoeff-of-monic-of-split.md) | 482 | `result-track:935f4fde4348347ca1eda7c8f1a05c9cc9e1bf5ee632dba4b6bdcc357419e282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=118cff6ea0eeb8b486b17b82329327c6059379ad035bdd48e5f5cca83a6ee1e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Splits/Variant39e8d0c10b6e86fc522b98488016e9e19df3b541c0c852754b9ee4b099b379d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
