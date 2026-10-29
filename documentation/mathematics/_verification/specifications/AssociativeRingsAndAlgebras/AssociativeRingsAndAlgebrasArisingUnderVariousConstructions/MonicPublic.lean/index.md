# Verification target: Monic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d55322a62697fff8c78402e9ccea0f970d5edd2d",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Monic/Variant6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d55322a62697fff8c78402e9ccea0f970d5edd2d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Monic/Variant6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Monic/Variant6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean.json)

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
| 1 | `theorem` | [monic_zero_iff_subsingleton](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-zero-iff-subsingleton.md) | 37 | `result-track:0849212c390c6d3cbd499edf5eb84da10b7e87e32a013e7793a32f67d549b741` |
| 2 | `theorem` | [not_monic_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/not-monic-zero-iff.md) | 40 | `result-track:4222c787ed4a91d83a4eab13fbd910940763d5f8fcfb52c81823b239a5f0a394` |
| 3 | `theorem` | [monic_zero_iff_subsingleton'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-zero-iff-subsingleton-source-edition-2.md) | 43 | `result-track:7aec05c0993e0e17bf72f68929ece74f74b19cec7f6ff9d8a02a9e87dc4a4956` |
| 4 | `theorem` | [Monic.as_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-as-sum.md) | 50 | `result-track:056cd8e19ee91a5d3952068ece62d547eeb923d5d336a67d8c9134d810939ca0` |
| 5 | `theorem` | [Monic.map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-map.md) | 56 | `result-track:3e57965ce4d910693359deab74d839f70263e49c64ac5b5da72a7e4f1941f2e7` |
| 6 | `theorem` | [monic_C_mul_of_mul_leadingCoeff_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-c-mul-of-mul-leadingcoeff-eq-one.md) | 60 | `result-track:653a6d29c8df8328b93d5348370344cb174b97a7b8ade1cf3d9088c01e8ea1ed` |
| 7 | `theorem` | [monic_mul_C_of_leadingCoeff_mul_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-mul-c-of-leadingcoeff-mul-eq-one.md) | 66 | `result-track:05c49d3622b326d0e2c3d1424bd6271fe09d3eadbeeb220ab655f2c7b49d882a` |
| 8 | `theorem` | [monic_X_pow_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-x-pow-add.md) | 72 | `result-track:0ec78dfe383b5650363467200f4361b1b5687bb0dc479bca2ff2c1fe301ecf10` |
| 9 | `theorem` | [monic_X_pow_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-x-pow-add-c.md) | 78 | `result-track:c8a9a18395d517bcb4129f48a99560245e1d34aeb893a30c79b0e4c5b48d3d7f` |
| 10 | `theorem` | [monic_X_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-x-add-c.md) | 82 | `result-track:15b9cab6a993769dbcc1a8180cc4c221c31e1d28fc91e369c10e9eee87b331ae` |
| 11 | `theorem` | [Monic.mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-mul.md) | 85 | `result-track:4234ec9d6815906d9072ea345fac0bf5fc310ea7963db8585225095e73b6542a` |
| 12 | `theorem` | [Monic.pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-pow.md) | 95 | `result-track:4223402310fcc23cde0b50dc89b70cfb1337d5c2a3d7fe5aa752e56ee554344d` |
| 13 | `theorem` | [Monic.add_of_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-add-of-left.md) | 101 | `result-track:bb50633f2b37ff5dd004eb623b00692179bf3a798abbb3351874da076bdd6b69` |
| 14 | `theorem` | [Monic.add_of_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-add-of-right.md) | 104 | `result-track:1b4f531b87e991b67be1ac163545cdeec4cdfd54af64b882587237c9bda73861` |
| 15 | `theorem` | [Monic.of_mul_monic_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-of-mul-monic-left.md) | 107 | `result-track:e44f843e3f07369236ed5d46dd2afc4fa4a66b8c24153a9a1b5948c600eea2d2` |
| 16 | `theorem` | [Monic.of_mul_monic_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-of-mul-monic-right.md) | 112 | `result-track:26c8e943af1e0c747776e716d54b545f66a087e621c29c0fc7e897b5bae2aeb6` |
| 17 | `lemma` | [comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/comp.md) | 119 | `result-track:97e339b5eb228a26c714c20f21ff2a86d8addf82c318793cc3c7cde514d19011` |
| 18 | `lemma` | [comp_X_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/comp-x-add-c.md) | 126 | `result-track:10142c0f80d16b5a5071d1b73772804bbae41cff242c42e815e7af5a908b27c7` |
| 19 | `theorem` | [degree_le_zero_iff_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/degree-le-zero-iff-eq-one.md) | 133 | `result-track:a95179518568f6b6e1ea34136c31b97240f906eca5df0d3dbed8da317fc18f70` |
| 20 | `theorem` | [natDegree_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/natdegree-mul.md) | 136 | `result-track:19c1e9463b44d42d90809049021866ebe6e36ee2713e59563eb47645887bb203` |
| 21 | `theorem` | [degree_mul_comm](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/degree-mul-comm.md) | 142 | `result-track:0561667ceefc923b8f7fc42a86be9c4a0e58d14e59801b8926a6cb7fe4e7b72b` |
| 22 | `theorem` | [natDegree_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/natdegree-mul-source-edition-2.md) | 149 | `result-track:d033266b3ccaf072efbd73d655affdf832b13ad09ad02d6ed3b6fab528b15744` |
| 23 | `theorem` | [natDegree_mul_comm](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/natdegree-mul-comm.md) | 154 | `result-track:71895a6f86a9098ad115fb71d2981141361bb93c9447c8e8e9444cebb172b291` |
| 24 | `theorem` | [_root_.Polynomial.not_isUnit_X_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/root-polynomial-not-isunit-x-add-c.md) | 160 | `result-track:9787d97e5bf9362d06c1dfeb400c82d39540eecab8a79851346a6d6a068fffda` |
| 25 | `theorem` | [not_dvd_of_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/not-dvd-of-natdegree-lt.md) | 166 | `result-track:661ae1f950027f855a7fa642baf964ed85ccf8e7bfe6d46dffdd3aab2b7b8841` |
| 26 | `theorem` | [not_dvd_of_degree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/not-dvd-of-degree-lt.md) | 172 | `result-track:19962f6b013ad53453e9eb385f8c466ddd480a189cf1770312d2640ed1454150` |
| 27 | `theorem` | [nextCoeff_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/nextcoeff-mul.md) | 175 | `result-track:c6f5557c0cdbd960d25b6d85ba40deb43277b5f69463a81c5a40e41fb3a66dc2` |
| 28 | `theorem` | [nextCoeff_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/nextcoeff-pow.md) | 181 | `result-track:04647198b753d11e5f0c10cf496511af4bce283fff96be27382833ff99b512af` |
| 29 | `theorem` | [eq_one_of_map_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/eq-one-of-map-eq-one.md) | 186 | `result-track:ff60359c67107a3302818b699a9a2949d736f5efe2a5dc4ecb8cc4ab651c6f36` |
| 30 | `theorem` | [natDegree_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/natdegree-pow.md) | 198 | `result-track:8da8021050e896ffcc03c405ad634076553e3ed9e191225ab74654af42b74246` |
| 31 | `theorem` | [natDegree_le_of_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/natdegree-le-of-dvd.md) | 203 | `result-track:3aa06898fdfb8f005bf7891560f8a9d20620e641d0a6d72a3b73ad5ddb3e8a2a` |
| 32 | `theorem` | [natDegree_pow_X_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/natdegree-pow-x-add-c.md) | 212 | `result-track:b526894b49148c521375b01780df4b98cef72cbb9bb1ab54b61ad21dab5608db` |
| 33 | `theorem` | [Monic.eq_one_of_isUnit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-eq-one-of-isunit.md) | 215 | `result-track:6d5a779366b23c19f03906ce38a6e34ee9c4e2e4a2811ad7b0ba8d19e87fad36` |
| 34 | `theorem` | [Monic.isUnit_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-isunit-iff.md) | 222 | `result-track:2fb5ec67fdd7faf3c38d6e70337b0e36756f67d78f35e4113cbf1f3fa4b2aa92` |
| 35 | `theorem` | [eq_of_monic_of_associated](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/eq-of-monic-of-associated.md) | 225 | `result-track:1eda20468b0f2df041584255027acc16a449b249d60d750456e4a3bee05b3967` |
| 36 | `abbrev` | [MonicDegreeEq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monicdegreeeq.md) | 240 | `declaration-track:6651dd9e8f6c545218d15026e8e6b0ed3ddc342960b64f7fd71258837b5c5aff` |
| 37 | `lemma` | [MonicDegreeEq.natDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monicdegreeeq-natdegree.md) | 243 | `result-track:93ea8add99616c0eb12f4bc550769381a2338be90d619400246793cf75a467a2` |
| 38 | `lemma` | [MonicDegreeEq.degree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monicdegreeeq-degree.md) | 248 | `result-track:11b5f5deff87a76ca4814f9ba573e3506a6eda18da35f8a26854d7c445da5aa1` |
| 39 | `lemma` | [MonicDegreeEq.monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monicdegreeeq-monic.md) | 252 | `result-track:42cd1472532adbb1922e29bd322fc38cac69efb6a0458f02df21e71c2628fc9e` |
| 40 | `lemma` | [MonicDegreeEq.coeff_of_ge](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monicdegreeeq-coeff-of-ge.md) | 257 | `result-track:d51586a2eff619b7021823e104f0ee2f454c1d1f68fa19e940cec685ff4b0fcd` |
| 41 | `def` | [MonicDegreeEq.mk](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monicdegreeeq-mk.md) | 263 | `declaration-track:0a3f946c70d6d3ff7ad34805ed777a30109d18047e56a77a47210e0f3a1a74c5` |
| 42 | `def` | [MonicDegreeEq.map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monicdegreeeq-map.md) | 269 | `declaration-track:278e1aba7fc86df27f67abb35af05d9dc240fcd9126772e6767ca8d5a49608d0` |
| 43 | `theorem` | [monic_multiset_prod_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-multiset-prod-of-monic.md) | 281 | `result-track:9d712df7bce4e3fc63c73cdb2c538b0b8538d575af1166bb1cdef3243d173a9d` |
| 44 | `theorem` | [monic_prod_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-prod-of-monic.md) | 289 | `result-track:8b0152658e4dd26302ad7d840e79c7432cca12e5c7127b330877b58c9f0fca7a` |
| 45 | `theorem` | [monic_finprod_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-finprod-of-monic.md) | 293 | `result-track:bb14e13cb0d0d43222ed33ec92a3ff141987bfb436d23f5274c1ff48820457b2` |
| 46 | `theorem` | [Monic.nextCoeff_multiset_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-nextcoeff-multiset-prod.md) | 302 | `result-track:7d4084f9deb474643be4459295b5270f314ea438e8a222049a2d226d2c8d8ed6` |
| 47 | `theorem` | [Monic.nextCoeff_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-nextcoeff-prod.md) | 315 | `result-track:85b002b06b4603fad20baabe0a936f269238c234c10cecb20618c53c3974dfbf` |
| 48 | `lemma` | [irreducible_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/irreducible-of-monic.md) | 321 | `result-track:5151e84ed3f0a3320bed57e1d5c13927d7d25a84d82dc43ccc54f4d56f743aab` |
| 49 | `lemma` | [Monic.irreducible_iff_natDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-irreducible-iff-natdegree.md) | 335 | `result-track:7cb2f210dc5c9b833a2c74581d07eac6d4ad1c6994cc68d3bdf02b60ba96e8ce` |
| 50 | `lemma` | [Monic.irreducible_iff_natDegree'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-irreducible-iff-natdegree-source-edition-2.md) | 343 | `result-track:feb9bbb93834bc7ea141f478fe3706e0e24f4af5b4e11da3b94252ffa091f30b` |
| 51 | `lemma` | [Monic.irreducible_iff_lt_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-irreducible-iff-lt-natdegree-lt.md) | 358 | `result-track:892c9355e031fd79ccdfb64a0d85033691995c3123c12540651700bb4f6594c2` |
| 52 | `lemma` | [Monic.not_irreducible_iff_exists_add_mul_eq_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-not-irreducible-iff-exists-add-mul-eq-coeff.md) | 367 | `result-track:e99435013012c749ecc3b9b853350e17c0d3a097ec7fc7713a78d063be7dcffc` |
| 53 | `theorem` | [Monic.natDegree_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-natdegree-map.md) | 397 | `result-track:663ca7b1bb72c85c841c60a2611e5217d03ccb834f7a7ade71b362a51cf6f07a` |
| 54 | `theorem` | [Monic.degree_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-degree-map.md) | 404 | `result-track:4fba24678b654f25db3968f3e36c24171b2be8f82dd492af4d227abda5b5202f` |
| 55 | `theorem` | [monic_of_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-of-injective.md) | 414 | `result-track:7ab923e01c80baf4ef7731a9ee28b6d411bec768ebde8f301e572208ccbc22f7` |
| 56 | `theorem` | [_root_.Function.Injective.monic_map_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/root-function-injective-monic-map-iff.md) | 418 | `result-track:e08afdeab04696b34ab57632b8fd313b6143315f3c9e2ca072e9d1b27f300fef` |
| 57 | `theorem` | [monic_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-x-sub-c.md) | 430 | `result-track:48997021fcd050ec70e65e18ec955737037f8fcc564f8a2681c8e2645459640b` |
| 58 | `theorem` | [monic_X_pow_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-x-pow-sub.md) | 433 | `result-track:8d99f862f6e46e645b68b52b1209e79875817bcf4222f580ff80be6587bbb8e8` |
| 59 | `theorem` | [monic_X_pow_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-x-pow-sub-c.md) | 437 | `result-track:d13e2b86589cfcf60c4e9e3c0503da6f13d561b3fbde9adef2f059828e68e3fb` |
| 60 | `theorem` | [monic_X_pow_sub_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-x-pow-sub-one.md) | 442 | `result-track:707402502f14464ec4b648a7679aef1fe157942bba2cb5750435941ac75702a7` |
| 61 | `theorem` | [not_isUnit_X_pow_sub_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/not-isunit-x-pow-sub-one.md) | 446 | `result-track:b835aa457014521f11a7289486f679f092860d794c3d671dbab822d60b589238` |
| 62 | `lemma` | [Monic.comp_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-comp-x-sub-c.md) | 454 | `result-track:65c20bfa4db0d13c6aab0628a0f74cb67c613ad0454887096cae6374412ca4b8` |
| 63 | `theorem` | [Monic.sub_of_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-sub-of-left.md) | 457 | `result-track:3262a4f0f7c603e686e7309cd3f967ff873bd8bca3952d843ca2fccac36ef9a3` |
| 64 | `theorem` | [Monic.sub_of_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-sub-of-right.md) | 463 | `result-track:21af4afbff9f1c7080ae9f606bebb73770005cab074b3dd7f015c31c27055314` |
| 65 | `theorem` | [not_monic_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/not-monic-zero.md) | 478 | `result-track:a8a9064eb8fc815b0df8cc47ec8e7eab789083a90704f1e796d4373d0bda4014` |
| 66 | `theorem` | [Monic.mul_left_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-mul-left-ne-zero.md) | 488 | `result-track:034ab8cd05b84c86a22f5d0678ea46543531f84ca39409d61a8b0a9dd485c1f1` |
| 67 | `theorem` | [Monic.mul_right_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-mul-right-ne-zero.md) | 497 | `result-track:52a323d78e0ade35b2122ca050ef2896be48b3f9ce1001e0f6115dcc329bbcc4` |
| 68 | `theorem` | [Monic.mul_natDegree_lt_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-mul-natdegree-lt-iff.md) | 507 | `result-track:71ebf9c92abfa2ce2037252043383e822b3d565c9a0f598d625a3a630eb26332` |
| 69 | `theorem` | [Monic.mul_right_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-mul-right-eq-zero-iff.md) | 514 | `result-track:b75b3bb9425cf410c351ea22914ffde08d8b100c9ba536a8d25ad2165f7bc272` |
| 70 | `theorem` | [Monic.mul_left_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-mul-left-eq-zero-iff.md) | 517 | `result-track:def4ca2a65f22f5ac743cb47d0399e766e3932c63519bd758516a589c320e146` |
| 71 | `theorem` | [Monic.isRegular](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-isregular.md) | 520 | `result-track:ea409d4cf008d91e8d3d601937277a20ffe1dfcc452f018751e124c09254ade9` |
| 72 | `theorem` | [degree_smul_of_smul_regular](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/degree-smul-of-smul-regular.md) | 529 | `result-track:6f89f5d6a20e4326c1698ee2db7dc596ee746ba15b7ce9d636ee9a51deb72c2c` |
| 73 | `theorem` | [natDegree_smul_of_smul_regular](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/natdegree-smul-of-smul-regular.md) | 542 | `result-track:c59502bb4fa1c03312a88403c9ab62add30a29a0e809fb4c5fd6470e345625f9` |
| 74 | `theorem` | [leadingCoeff_smul_of_smul_regular](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/leadingcoeff-smul-of-smul-regular.md) | 552 | `result-track:4c3ace840450418744b22d39db79899a93464c3c3a412bdfd8ccc966e6c4c40d` |
| 75 | `theorem` | [monic_of_isUnit_leadingCoeff_inv_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/monic-of-isunit-leadingcoeff-inv-smul.md) | 557 | `result-track:577301962d63870cf828ab89ea87276adc997b450ef44a45a5a8fbe28bdf4804` |
| 76 | `theorem` | [isUnit_leadingCoeff_mul_right_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/isunit-leadingcoeff-mul-right-eq-zero-iff.md) | 562 | `result-track:02960ee1e92504cc48aefa2c88598bef982e6f0596b1fa1862f492893acdb22c` |
| 77 | `theorem` | [isUnit_leadingCoeff_mul_left_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MonicPublic.lean/declarations/isunit-leadingcoeff-mul-left-eq-zero-iff.md) | 577 | `result-track:bcb39c36189db90d9fc0aee35557ff431f81817d7536dfa64b4f3440e7dafa14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49cc64a3cf22dd40f247282e0774ad2958108f91ce9150d99c7ff8dde19792c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Monic/Variant6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Monic/Variant6d71b7b0c3ee79b9a07a377e390fefd0f10dea8a0fe0eebbad8c96b2f8207e1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
