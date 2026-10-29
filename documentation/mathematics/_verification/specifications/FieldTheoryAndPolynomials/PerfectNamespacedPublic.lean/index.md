# Verification target: Perfect Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0d1b91e6f83832416a87ea3335241f4b483851a",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0d1b91e6f83832416a87ea3335241f4b483851a`.

Source path: `GRWTSK/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean.json)

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
| 1 | `class` | [PerfectRing](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/perfectring.md) | 52 | `declaration-track:c3562ff150e80105c30dae14a8c0a74953a0888ac37e21d27715e12a8292ea14` |
| 2 | `instance` | [one](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/one.md) | 63 | `declaration-track:6ef75525e4a64bf5b5eac8b166e89708e34312ee8a1e2d75c0dcbe04323c5f54` |
| 3 | `instance` | [mul](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/mul.md) | 66 | `declaration-track:5642578205548737d499087f4377c38c1663cb4a3ba22188a0ff14f3a0e1416c` |
| 4 | `instance` | [pow](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/pow.md) | 69 | `declaration-track:58b0619aa975c497139d45c2464d18cca355af9e84e2996eb2cb867cb9d3bac6` |
| 5 | `def` | [powMulEquiv](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/powmulequiv.md) | 76 | `declaration-track:d9b9d75f64be2eff1db0a558f30a9a159d9546c1a4d5bd903dddf819ef7064c7` |
| 6 | `theorem` | [powMulEquiv_symm_pow_p](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/powmulequiv-symm-pow-p.md) | 80 | `result-track:702cf889221179ca5f4f8345bc2589187ca0061ad3a77a660671a4e95f97323b` |
| 7 | `theorem` | [powMulEquiv_one](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/powmulequiv-one.md) | 83 | `result-track:e564cb9fb15f133b53f99e14b626b43d2c9cfec113aa648e43f76203bff528ab` |
| 8 | `theorem` | [powMulEquiv_mul](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/powmulequiv-mul.md) | 86 | `result-track:50d6976524959d9be527880b5b127114697e287279b650a94f7cf273cdcd4827` |
| 9 | `theorem` | [powMulEquiv_mul'](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/powmulequiv-mul-source-edition-2.md) | 89 | `result-track:a6975dc10700c31c831a3a028311a3c0202cc007e1f14f77c2045a38afc12e53` |
| 10 | `theorem` | [powMulEquiv_pow](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/powmulequiv-pow.md) | 92 | `result-track:4f0dafb69b45c27dcd801fb52ab3b33b20ad9f950ee866f8994574536154ae56` |
| 11 | `lemma` | [PerfectRing.ofSurjective](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/perfectring-ofsurjective.md) | 105 | `result-track:d52b13935994f47bdb92656185d3b88691d948bf7eaa334e6545ef5a29bf4967` |
| 12 | `instance` | [PerfectRing.ofFiniteOfIsReduced](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/perfectring-offiniteofisreduced.md) | 109 | `declaration-track:8f001f0fadd05d6a314e60171d8a215483df2957228a9300b4f025358d44e996` |
| 13 | `theorem` | [bijective_frobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/bijective-frobenius.md) | 116 | `result-track:e22a36eafe7fb56ad581e4bc3e4cd6c1c8d451e7890836a5f79c249baaba878e` |
| 14 | `theorem` | [bijective_iterateFrobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/bijective-iteratefrobenius.md) | 118 | `result-track:254a0d22436d5145d1dafe32ccef2629a97ee6039f8bb182aeb5294abfd34eac` |
| 15 | `theorem` | [injective_frobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/injective-frobenius.md) | 122 | `result-track:110beb050268d57e9b2a3878cea40752a2f293eb1d5aacd29ce9d82540f9ed92` |
| 16 | `theorem` | [surjective_frobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/surjective-frobenius.md) | 125 | `result-track:34d8cabc8c6dce1dd65ec0157e7ff47f18529b43b8382bcd2bd8bba0c7a26533` |
| 17 | `def` | [frobeniusEquiv](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/frobeniusequiv.md) | 129 | `declaration-track:2a83b2eb1d1b76ddeeb3e77f4ec730e748484994beaed654b446b2fa1d9d71ee` |
| 18 | `theorem` | [powMulEquiv_eq_toMulEquiv_frobeniusEquiv](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/powmulequiv-eq-tomulequiv-frobeniusequiv.md) | 132 | `result-track:82d08dd7bd600962276a3bc59268d8baacd1b6866180a13606aec0487ef62de7` |
| 19 | `theorem` | [coe_frobeniusEquiv](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/coe-frobeniusequiv.md) | 136 | `result-track:ebf165e99211f7d1b8e9e137b1913491edfc82ea491441dcb177991462f75144` |
| 20 | `theorem` | [frobeniusEquiv_def](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/frobeniusequiv-def.md) | 138 | `result-track:c1d9b9e9d993c7c9272b2472e42e8c90f99efb612ce7ed4659e4bf182460c26d` |
| 21 | `def` | [iterateFrobeniusEquiv](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv.md) | 142 | `declaration-track:938d0cc107e5247b6bc2916749796ba0b4e2cfc07fe5f603ee9be613fe87cdb9` |
| 22 | `theorem` | [coe_iterateFrobeniusEquiv](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/coe-iteratefrobeniusequiv.md) | 146 | `result-track:0ad370b03d564d322d6cd79f283b6877c3fb1af6127b4a46e709a9533783d0d5` |
| 23 | `theorem` | [iterateFrobeniusEquiv_def](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-def.md) | 148 | `result-track:ac346be36b73630690055465e3230e1f68d92581344473ab5b79f1b4f53ca349` |
| 24 | `theorem` | [iterateFrobeniusEquiv_add_apply](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-add-apply.md) | 150 | `result-track:e929bd546b60e2eecda7c8a537cdb9a4769bf35d050972c86810237fe4b946a1` |
| 25 | `theorem` | [iterateFrobeniusEquiv_add](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-add.md) | 154 | `result-track:d80a081da16d95c2e3a324f49c58bd87edade2d248e859913e1a50bc662a6e07` |
| 26 | `theorem` | [iterateFrobeniusEquiv_symm_add_apply](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-symm-add-apply.md) | 158 | `result-track:155f9b03b6f28c7a5bf9d42a0089a8211c3b421aa0125e36235d86f579dfd06e` |
| 27 | `theorem` | [iterateFrobeniusEquiv_symm_add](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-symm-add.md) | 163 | `result-track:80507e0cc2f019b812759e7e3b5ff589877c28249fc8676d0d47d046f5cbcd3d` |
| 28 | `theorem` | [iterateFrobeniusEquiv_zero_apply](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-zero-apply.md) | 167 | `result-track:6a4e2b4ca8dbb78cbc61db2ae5e4aa01cdad9548923595139427274fdd73d5cd` |
| 29 | `theorem` | [iterateFrobeniusEquiv_one_apply](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-one-apply.md) | 170 | `result-track:669e9afb607ffea11f3f2091ecf6327d37d8554f29a57cbffb2b02784e9ca5ff` |
| 30 | `theorem` | [iterateFrobeniusEquiv_zero](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-zero.md) | 174 | `result-track:3e2eb1d55e4395e6b7b1ea3d9a052f15ca92514b9722d76d12ae14e23f2dab41` |
| 31 | `theorem` | [iterateFrobeniusEquiv_one](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-one.md) | 178 | `result-track:81a4dc6ac9240134f522c1b57687fa2dfe2a4d7bc5bafefa815ae12bbadd2556` |
| 32 | `theorem` | [iterateFrobeniusEquiv_eq_pow](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-eq-pow.md) | 181 | `result-track:1c06df1ebc3fc736675e1e5a7751faab5b5725e07c2ab55627a51cbfde016f1d` |
| 33 | `theorem` | [iterateFrobeniusEquiv_symm](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iteratefrobeniusequiv-symm.md) | 185 | `result-track:dfb8c7369a0650013ec5592721e39b1a38758537a1a0b042d64f9606a0118f04` |
| 34 | `theorem` | [frobeniusEquiv_symm_apply_frobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/frobeniusequiv-symm-apply-frobenius.md) | 190 | `result-track:57bbd46ca8dd0729458cc34618a0f52c9b46ce478a710e2c094223b503ecf5c0` |
| 35 | `theorem` | [frobenius_apply_frobeniusEquiv_symm](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/frobenius-apply-frobeniusequiv-symm.md) | 195 | `result-track:1acd19208ab6562fca4bd56db012072b3a0565390f44e29ad92378d5ab5b7011` |
| 36 | `theorem` | [frobenius_comp_frobeniusEquiv_symm](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/frobenius-comp-frobeniusequiv-symm.md) | 200 | `result-track:63962eb125c6e48a231e6497e5bf74301a080e53d48d0e9f6c5bde4b2b2d764d` |
| 37 | `theorem` | [frobeniusEquiv_symm_comp_frobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/frobeniusequiv-symm-comp-frobenius.md) | 205 | `result-track:7cf68c767196aff5e776f139653640590e97b57a7f50acb14b612244d6acae80` |
| 38 | `theorem` | [coe_frobenius_comp_coe_frobeniusEquiv_symm](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/coe-frobenius-comp-coe-frobeniusequiv-symm.md) | 210 | `result-track:187c5729b3621f1d486616d5b03f6ffbd4924b8c71df5cb146e5208e6723f133` |
| 39 | `theorem` | [coe_frobeniusEquiv_symm_comp_coe_frobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/coe-frobeniusequiv-symm-comp-coe-frobenius.md) | 216 | `result-track:e2b0718f27e6150b8aa0f378dc165d51125b460a56caeca57603b40cb59aefc8` |
| 40 | `theorem` | [frobeniusEquiv_symm_pow_p](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/frobeniusequiv-symm-pow-p.md) | 222 | `result-track:3bd24f49fbdb99f82a67d283ba50c8b6417b572f5552f7ef24431e03510e670a` |
| 41 | `lemma` | [frobeniusEquiv_symm_pow](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/frobeniusequiv-symm-pow.md) | 226 | `result-track:8a738ced6896649632167ccbe1914704152eedd043f3070b5390f986c4c93562` |
| 42 | `theorem` | [iterate_frobeniusEquiv_symm_pow_p_pow](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/iterate-frobeniusequiv-symm-pow-p-pow.md) | 230 | `result-track:7c21c6618c2e8f685da907d060e0ed7d269b11d24b1f6cb3b5975f5d37013243` |
| 43 | `theorem` | [MonoidHom.map_frobeniusEquiv_symm](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/monoidhom-map-frobeniusequiv-symm.md) | 245 | `result-track:bae996de1bb64df549270950c9122ecc0d84268d85612c8618675e399eb9f5de` |
| 44 | `theorem` | [RingHom.map_frobeniusEquiv_symm](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/ringhom-map-frobeniusequiv-symm.md) | 250 | `result-track:a6eb0fbd3fc36070099502a2f2fb8192d9afe3223c2e80a4ffd4e76eb791d8a0` |
| 45 | `theorem` | [MonoidHom.map_iterate_frobeniusEquiv_symm](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/monoidhom-map-iterate-frobeniusequiv-symm.md) | 255 | `result-track:6e52eff7196a9cd156c4596577b3d106235c90028f0c0680b439f26c62f0700f` |
| 46 | `theorem` | [RingHom.map_iterate_frobeniusEquiv_symm](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/ringhom-map-iterate-frobeniusequiv-symm.md) | 267 | `result-track:3d7c578b5beaffa9db02de04d0f36bc6972888e36ee4a137885e089b2aa2a731` |
| 47 | `theorem` | [injective_pow_p](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/injective-pow-p.md) | 273 | `result-track:9da8551da3f20943bb9f040cc1163f2c2a7eded396c9a6ee8886a9702f8955f9` |
| 48 | `lemma` | [polynomial_expand_eq](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/polynomial-expand-eq.md) | 275 | `result-track:738c7463e1bea88da4ec6eb240a858aa990799fe7bb6ea227b165e0ac7bed05c` |
| 49 | `theorem` | [not_irreducible_expand](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/not-irreducible-expand.md) | 281 | `result-track:e498cbd0469eadc1925d1a09cfae91515cddd38ef300abb51137aac4305c3a10` |
| 50 | `instance` | [instPerfectRingProd](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/instperfectringprod.md) | 286 | `declaration-track:ef770701f7cb36aac554fb1473e98e71fb89c4301b5709a64f9d99527d7401d7` |
| 51 | `class` | [PerfectField](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/perfectfield.md) | 297 | `declaration-track:9019eb57fca172f591f2c3bfcc12afccce149983670c8e5c36e96eb8e110d788` |
| 52 | `lemma` | [PerfectRing.toPerfectField](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/perfectring-toperfectfield.md) | 301 | `result-track:1be37bc3beb4edc5ba8ec3a6883c55435a7586802bdd1ae4daebe103eea8a521` |
| 53 | `instance` | [ofCharZero](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/ofcharzero.md) | 314 | `declaration-track:d31df523910fb5fe8bcdea9657d2e26726c1986e41e7dd2ef3e090559496a069` |
| 54 | `instance` | [ofFinite](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/offinite.md) | 316 | `declaration-track:69aa57c99cd2eec24b7b50d72632fcba7832671c343cb4460467d932820f7a3b` |
| 55 | `instance` | [toPerfectRing](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/toperfectring.md) | 325 | `declaration-track:8921c13eb919d01bfc5722a550f937dc2e9943e17eef9341bbd2c77bf17d96f0` |
| 56 | `theorem` | [separable_iff_squarefree](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/separable-iff-squarefree.md) | 335 | `result-track:a4b724f4475905ac7126bfd6a3d1c5d022bd6cfeb7ac8f803d19c467bbf00400` |
| 57 | `instance` | [Algebra.IsAlgebraic.isSeparable_of_perfectField](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/algebra-isalgebraic-isseparable-of-perfectfield.md) | 346 | `declaration-track:5b1c187de94cd29b29d9657d4b18ba4569072523027a2808f8d5672d8cba30af` |
| 58 | `theorem` | [Algebra.IsAlgebraic.perfectField](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/algebra-isalgebraic-perfectfield.md) | 352 | `result-track:65fd2d2a3db590e57ec4c6b7ad358ac699a2a2b1f7811c00c33927ee57cec27a` |
| 59 | `theorem` | [PerfectField.of_ringEquiv](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/perfectfield-of-ringequiv.md) | 357 | `result-track:e5c8343d63b7e9a14768ee22553fcc6737b13617bec6a43b42c039248bff8d42` |
| 60 | `theorem` | [roots_expand_pow_map_iterateFrobenius_le](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand-pow-map-iteratefrobenius-le.md) | 368 | `result-track:b7f78bd06513313fbff30a1f35a493438360be0f3165b8820650a307db8dc422` |
| 61 | `theorem` | [roots_expand_map_frobenius_le](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand-map-frobenius-le.md) | 381 | `result-track:d2292d37ebb8897c984f416a72cf1f184485d126ee45f4b59737fbce20951fd3` |
| 62 | `theorem` | [roots_expand_pow_image_iterateFrobenius_subset](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand-pow-image-iteratefrobenius-subset.md) | 386 | `result-track:691ad51ca90ce00912e0bfd279e815ec14eea03534d1073aa28130fe76977cfb` |
| 63 | `theorem` | [roots_expand_image_frobenius_subset](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand-image-frobenius-subset.md) | 392 | `result-track:8e3ed20c35fa8d4de1a34188ef4b106a91a2784b5b2588ef5a64fb8df73b3c7f` |
| 64 | `theorem` | [roots_expand_pow](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand-pow.md) | 402 | `result-track:1be5110ad2e032c815f85979bcecc2e071b58d527dbe0fb04a5a9173f5027f3f` |
| 65 | `theorem` | [roots_expand](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand.md) | 410 | `result-track:192830a65edac041c7c17a3872e1bc4132ca39399c2b9bbc8138f1efc880949a` |
| 66 | `theorem` | [roots_X_pow_char_pow_sub_C](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-x-pow-char-pow-sub-c.md) | 414 | `result-track:20b5ace3eab00aef520e51554e210159a06b7cc0e10fc9b136f45e5f05e0423a` |
| 67 | `theorem` | [roots_X_pow_char_pow_sub_C_pow](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-x-pow-char-pow-sub-c-pow.md) | 419 | `result-track:c865740835f498bb4f4cf9631a60eca6b1fbc80efe703ea97ea98f97fad4aef8` |
| 68 | `theorem` | [roots_X_pow_char_sub_C](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-x-pow-char-sub-c.md) | 423 | `result-track:1ab69b67ebd1359ebd5bd8cdd966d8738aadfb1b3a6731871166e3fd1844d5e8` |
| 69 | `theorem` | [roots_X_pow_char_sub_C_pow](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-x-pow-char-sub-c-pow.md) | 428 | `result-track:da618c06e80d9f6de266ebb33ca693fc838025bba01c47c98884c5dc356ff830` |
| 70 | `theorem` | [roots_expand_pow_map_iterateFrobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand-pow-map-iteratefrobenius.md) | 433 | `result-track:efdee3a26b5b4ea710b6687af6ea9a63446db63dc0bfd76b01355b3fd605a3f5` |
| 71 | `theorem` | [roots_expand_map_frobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand-map-frobenius.md) | 438 | `result-track:0347b5ee317761160cdb6c2a0487f6f0672df0c09a4053d2942629c8d08b7894` |
| 72 | `theorem` | [roots_expand_image_iterateFrobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand-image-iteratefrobenius.md) | 441 | `result-track:457094f37f47229ca5262cbbede4f59d6c0a107b9dc8c5b53c31215e433ad3bb` |
| 73 | `theorem` | [roots_expand_image_frobenius](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/roots-expand-image-frobenius.md) | 446 | `result-track:59c61085ea97ca8cc537668c222be760058b52e4ea36ff25440710100328fde3` |
| 74 | `def` | [rootsExpandToRoots](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/rootsexpandtoroots.md) | 458 | `declaration-track:363f3bed05010fabebe5309c1d1ca3bbee9d85220ebc58ab8cfa1275a4b96a88` |
| 75 | `theorem` | [rootsExpandToRoots_apply](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/rootsexpandtoroots-apply.md) | 463 | `result-track:f036a000172a87d2e1c6f42fc656b288e5893066c4e902a73ca7a8892ee932f9` |
| 76 | `def` | [rootsExpandPowToRoots](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/rootsexpandpowtoroots.md) | 468 | `declaration-track:e3744540f64b2e3dbf3fd7ab27913cd3682d06d3762727d7a38f6047a9737f10` |
| 77 | `theorem` | [rootsExpandPowToRoots_apply](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/rootsexpandpowtoroots-apply.md) | 475 | `result-track:5e30f3acefac22e533c42c770c61f28f68969f63ec5cc79355494c3214e809a0` |
| 78 | `def` | [rootsExpandEquivRoots](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/rootsexpandequivroots.md) | 482 | `declaration-track:8fc9da7add6da192a83cfa6497da54e50e7ddeafc8a768614848a01bad8093a5` |
| 79 | `theorem` | [rootsExpandEquivRoots_apply](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/rootsexpandequivroots-apply.md) | 488 | `result-track:3fd13d76dac07de599718443d3d00a5414fc3d0a1bae9557a78591650423804c` |
| 80 | `def` | [rootsExpandPowEquivRoots](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/rootsexpandpowequivroots.md) | 493 | `declaration-track:5edcd1c293678c8746e2187667bbcab9f75da50396d2797728c5026e3d024cf8` |
| 81 | `theorem` | [rootsExpandPowEquivRoots_apply](../../../../FieldTheoryAndPolynomials/PerfectNamespacedPublic.lean/declarations/rootsexpandpowequivroots-apply.md) | 500 | `result-track:656635e7b6c0018f7eac245b65426a8fefcd268ed5ee12579831ea8ce5053add` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57f2ceaf60076820abf30459133188ee1fd9455dcc4ed5f2efd8d110c5907950 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean","GRWTSK/_verification/specifications/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
