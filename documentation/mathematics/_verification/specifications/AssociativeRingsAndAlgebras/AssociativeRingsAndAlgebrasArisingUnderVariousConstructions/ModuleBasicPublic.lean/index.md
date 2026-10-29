# Verification target: Module Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ffeca98c7caa53c3650d5b95c08b2f68b643fdf",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4449a18a8a42cc552ca8f5c2aa1ac4bb9ec1c0d401e16180ac8c5180082bd7a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ffeca98c7caa53c3650d5b95c08b2f68b643fdf`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4449a18a8a42cc552ca8f5c2aa1ac4bb9ec1c0d401e16180ac8c5180082bd7a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant4449a18a8a42cc552ca8f5c2aa1ac4bb9ec1c0d401e16180ac8c5180082bd7a4.lean.json)

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
| 1 | `structure` | [PolynomialModule](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/polynomialmodule-source-edition-2.md) | 42 | `declaration-track:d628b4ae8937caa68f8f1639c03e5af898bb6e073b597c16c195267bf6ef57fe` |
| 2 | `lemma` | [coeff_ofCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeff-ofcoeff.md) | 54 | `result-track:cc4bd226a079eeefdcca2fdc25cb0377ba78a7d42a291e73214af8fdbc7a8a8b` |
| 3 | `lemma` | [ofCoeff_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/ofcoeff-coeff.md) | 55 | `result-track:2525b6af94d63b56bbf3b69f13470e02faffe7998f4006b26750521a28bc08da` |
| 4 | `def` | [coeffEquiv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeffequiv.md) | 60 | `declaration-track:75aa8c14eeaa49fba22701084d035e587a8e29b39b7b12a95e8c1efa846d4742` |
| 5 | `lemma` | [«forall»](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/forall.md) | 66 | `result-track:e4ee20bd2347d69fb82a8a20b113aa7fa3e09efd12fdcc9869a60a8425f5f4aa` |
| 6 | `lemma` | [«exists»](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/exists.md) | 69 | `result-track:426dd2bb44251e54620ffac2295a3a95cac0836e66831cab4cefeaec03abf734` |
| 7 | `lemma` | [coeff_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeff-injective.md) | 72 | `result-track:cd44e63590b3231e2ef049d0a317dac2ec34d4421d2d565bcec980c5d31a29d6` |
| 8 | `lemma` | [ofCoeff_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/ofcoeff-injective.md) | 75 | `result-track:f9bb11a43b2aec5d3972553decd93b6c2229055dd9539839dcdb369a5cdf6e70` |
| 9 | `lemma` | [coeff_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeff-inj.md) | 79 | `result-track:6ba7bba24fe722c50c6962199186578c6e74e1eadd380eeaf25507c968f513f1` |
| 10 | `lemma` | [ofCoeff_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/ofcoeff-inj.md) | 81 | `result-track:31f103d69879476741a05897fbea153d34845e4849f5a5596a39ba76aca8d5b8` |
| 11 | `instance` | [instInhabited](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/instinhabited.md) | 85 | `declaration-track:4cd18145a8146cae1e87f9fdc93f8fca44274a5263c5ac64cda7a2ae40a7231a` |
| 12 | `instance` | [instNontrivial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/instnontrivial.md) | 87 | `declaration-track:835521488eb92831e846347cf8250466f5479a83bd3af1413c60949e520455f8` |
| 13 | `instance` | [instUnique](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/instunique.md) | 90 | `declaration-track:1cefa070856a13ba914cbf763671c31688c4a29192c50f55997ef5fd38fa5487` |
| 14 | `instance` | [instDecidableEq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/instdecidableeq.md) | 93 | `declaration-track:18a9430d126f09153d406e61041207da0f9a2d34e86b184ccad8d26fc472fe83` |
| 15 | `instance` | [instAddCommGroup](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/instaddcommgroup.md) | 96 | `declaration-track:9cfa1cf4c58142172c07512e4a2d7df127253ec7d0d0af3e7e2a43efec99a474` |
| 16 | `def` | [coeffAddEquiv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeffaddequiv.md) | 101 | `declaration-track:3a991c643e4ff17d3004f9dff46af5fe7c090a80c08b5eb4cdf2b48f2f885299` |
| 17 | `lemma` | [coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeff-zero.md) | 103 | `result-track:c12eff5248dfb9ee58c849a24133e543abfd19adcd6881eac4c48b3098a3ac9c` |
| 18 | `lemma` | [ofCoeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/ofcoeff-zero.md) | 104 | `result-track:922599ba567f937094585fd4945b9cf31016c353d58943ead43b4bafbab051fd` |
| 19 | `lemma` | [coeff_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeff-eq-zero.md) | 105 | `result-track:0e4790dfeabf17eb3ee5c8ed955f8e73931901aa96076e0f4061ffb436fcee15` |
| 20 | `lemma` | [ofCoeff_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/ofcoeff-eq-zero.md) | 106 | `result-track:e4fcf015c3a87a72a7185a0f595b74663c1ebe5a1d8f1f9358c7761c5f12b90e` |
| 21 | `lemma` | [coeff_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeff-add.md) | 109 | `result-track:95b5660b597165d4592acb7068383241a544fe67baadd1f661c97fb83fcbfa17` |
| 22 | `lemma` | [ofCoeff_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/ofcoeff-add.md) | 110 | `result-track:cee5b99504db5835cab80f2d0f598433d483931874521a13e34c417407d461c7` |
| 23 | `lemma` | [coeff_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeff-sum.md) | 113 | `result-track:fa4ba8bad63a223ed90bb3795e54c794b2baa6407d789b7e5b50ccfeb9583150` |
| 24 | `lemma` | [ofCoeff_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/ofcoeff-sum.md) | 117 | `result-track:69744ee7f3f3314c2fdaa4d2b2fa7a330b00bf214102bbef43f516bdd24fce2e` |
| 25 | `lemma` | [coeff_finsuppSum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeff-finsuppsum.md) | 121 | `result-track:c675ddb3b55e3ecc286a97fe46adc81fcf1802e183eb236e075536794393be70` |
| 26 | `lemma` | [ofCoeff_finsuppSum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/ofcoeff-finsuppsum.md) | 125 | `result-track:6433d49fdfab59ce38172a1e087593078360ce82335dcad4f1b422dac2f77293` |
| 27 | `def` | [single](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/single.md) | 131 | `declaration-track:204a17dfb564d34ef0403c569f08ce778fa4e3d0428cb20c7086e8abbf36d3fb` |
| 28 | `lemma` | [coeff_single](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coeff-single.md) | 133 | `result-track:db654993e3ab86e773367346a52739ef76bd2815cf65d6ad0a41bfb988ca19bd` |
| 29 | `lemma` | [ofCoeff_single](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/ofcoeff-single.md) | 134 | `result-track:2fdfb166b5ce41b58c76a3a288bb351ae750fadd1c76c64c3ec9981eef9214cf` |
| 30 | `lemma` | [single_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/single-zero.md) | 138 | `result-track:e0a2117787fd9c11256030b44ec74f3efa8efe793ca150948c921687c5a4633a` |
| 31 | `lemma` | [single_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/single-add.md) | 141 | `result-track:2251fd1dc7626f138fca82afc153bbe2b49b417ea38bbfb1e97c97506042b97f` |
| 32 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/instance-source-edition-2.md) | 145 | `declaration-track:8d68065109f1868fd33730766980d706ece23b0cbec5b7f1cd5a608a739e064d` |
| 33 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/instance.md) | 147 | `declaration-track:4e3dbb5d0ff0be8aa89b2b04435112617ea70410220b8beddc85d6218efb5665` |
| 34 | `def` | [coeffLinearEquiv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/coefflinearequiv.md) | 153 | `declaration-track:fd72bf0acd8d25abd7f9eb078f127fa8cecc667bee1d899342531424c77632bc` |
| 35 | `def` | [lsingle](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/lsingle.md) | 157 | `declaration-track:4b0dd06981c383f749bff87c87049beebb608c5eb7a8e97ed9834e50f779e59d` |
| 36 | `theorem` | [lsingle_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/lsingle-apply.md) | 160 | `result-track:b7b42ff44a670f0ef3035519ad05073081041e8b97c9d3806a4f5ec3f26c910e` |
| 37 | `theorem` | [single_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/single-smul.md) | 163 | `result-track:151e08b2aba2f62e328accf335ca9bfd0858bd282bf2bf18c3e8ad5f7fa62401` |
| 38 | `lemma` | [induction_linear](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/induction-linear.md) | 167 | `result-track:2099577bdd81c8f65b1943c1f8ab76a867a4d1791e41d2bebbf70517fa2c96d4` |
| 39 | `instance` | [polynomialModule](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/polynomialmodule.md) | 173 | `declaration-track:0a714ac4caa38646c165f9496b5e882b013f0a571ee64f015e95f07e80437813` |
| 40 | `lemma` | [smul_def](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/smul-def.md) | 177 | `result-track:e2238786eaca61e931f228a28034728f8556fa5a15278348e8ed926d457d50fe` |
| 41 | `instance` | [isScalarTower'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/isscalartower.md) | 182 | `declaration-track:d9b4f7ef4e28053a92eeb6b33f8c6317218f89dedc8efde6b8c04e0e0412322e` |
| 42 | `theorem` | [monomial_smul_single](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/monomial-smul-single.md) | 192 | `result-track:65a7b1b128bc82cae499c5e7655862b6bb6ade90b22fe3c84b9e96f802c0f984` |
| 43 | `theorem` | [monomial_smul_lsingle](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/monomial-smul-lsingle.md) | 207 | `result-track:f61feadfa7ef71fc9cc09a685b0a549f08392cbd3e5eda213058ab12b4f1f5d2` |
| 44 | `theorem` | [monomial_smul_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/monomial-smul-apply.md) | 212 | `result-track:8f28b7902b8081197c29da72e7c785badd1eb8c78b815a230bab553a5122be90` |
| 45 | `theorem` | [smul_single_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/smul-single-apply.md) | 222 | `result-track:8f398eaa04d5ac572e00cc0c037e76a95c964703f07a43f78d3a23bda6997bc9` |
| 46 | `theorem` | [smul_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/smul-apply.md) | 228 | `result-track:eed63d56b647b481a41fcfc4ccf0205d63ce79d669ebef0a9429ff8621a949a2` |
| 47 | `def` | [equivPolynomialSelf](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/equivpolynomialself.md) | 238 | `declaration-track:a395beccfec92abbcb2dc1803600ee41dc80156d349a59780106bcebfba97044` |
| 48 | `def` | [equivPolynomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/equivpolynomial.md) | 259 | `declaration-track:53374743a78f3b87ec76a3be64da139227087f64f38bb4749dc23394bf8f4142` |
| 49 | `lemma` | [equivPolynomialSelf_apply_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/equivpolynomialself-apply-eq.md) | 265 | `result-track:28e13d1111db9720a3b14c5b2d4c6059780b72b9944b8e53692779bda7a42636` |
| 50 | `lemma` | [equivPolynomial_single](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/equivpolynomial-single.md) | 269 | `result-track:a15a66779cf06b6837608e211ff7cb4ab6d5811f9aa73326f1d6425def5728de` |
| 51 | `lemma` | [equivPolynomial_symm_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/equivpolynomial-symm-monomial.md) | 273 | `result-track:81d4cb46bc27410740e6bb5c64a249d9dbb3c9df663f83dd6b47ebb3122ec04e` |
| 52 | `lemma` | [equivPolynomial_symm_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/equivpolynomial-symm-one.md) | 277 | `result-track:33d74c988f5c7b0fd1a48d1ae36e3dfa08972a00e3caa2fce4084c30c9cb613e` |
| 53 | `theorem` | [hom_ext](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/hom-ext.md) | 286 | `result-track:c51e750fe69b9d7cf244b171fbb755121361e09b2d50e6cec15baf008bb9fa32` |
| 54 | `def` | [map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/map.md) | 293 | `declaration-track:813e7cf111111fab5785ed93a3c895234fbd9b4c72e603363a08ae98f92df24d` |
| 55 | `theorem` | [map_single](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/map-single.md) | 298 | `result-track:af30eb9720ac753d025c1570578f5cd1b92611ef30bef9b3aab36c02dd7a07a6` |
| 56 | `theorem` | [map_lsingle](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/map-lsingle.md) | 302 | `result-track:b0cad539dd27e127c5407886ab2fcffeaf877886880e0061e164c2753fd45f45` |
| 57 | `theorem` | [map_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/map-smul.md) | 308 | `result-track:2334eb3d0d69322ecaec415f1268393762ea07115e201fafd46b70b588ed5ed9` |
| 58 | `def` | [eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/eval.md) | 321 | `declaration-track:739d0cd7c4f4ec235eb80960bbcbe3a132c339dc63230573a99bcc27ce22b118` |
| 59 | `theorem` | [eval_single](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/eval-single.md) | 333 | `result-track:59c4856864877ee9b9bba739a73526e160b119436e72bc9ceb60b198dfef500c` |
| 60 | `theorem` | [eval_lsingle](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/eval-lsingle.md) | 337 | `result-track:e4edd51054b796fa7fa76613245cff52d476f59087e9e55e3b655e68b4e5afc1` |
| 61 | `theorem` | [eval_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/eval-smul.md) | 341 | `result-track:bb4716972c7c9535ca220d9e8bebc380e46b5b2793046229eb65e8be294fd037` |
| 62 | `theorem` | [eval_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/eval-map-source-edition-2.md) | 352 | `result-track:700d0f81c18021f21736c7734f18f9ca8ae3abfa10eb42a915512670bc2e299c` |
| 63 | `theorem` | [eval_map'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/eval-map.md) | 360 | `result-track:281219c5ed10df9b76681ba6baff1eb8d79adc0a208ca80562c5e4735ad188bf` |
| 64 | `lemma` | [aeval_equivPolynomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/aeval-equivpolynomial.md) | 365 | `result-track:62cbecc616cf8b14b537e71193f7b3c79808055d76e4e5367667ffef4597a200` |
| 65 | `def` | [comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/comp.md) | 376 | `declaration-track:a09235f829b3f50b99b8c4558f615423b9e082b77947fa50326a3ea74e486ee1` |
| 66 | `theorem` | [comp_single](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/comp-single.md) | 379 | `result-track:47798d815fd3f193d526884f7a6118ef185e1fdcd065d3e2cb9ceb7535e48058` |
| 67 | `theorem` | [comp_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/comp-eval.md) | 383 | `result-track:bcd284fda113bab268936449fb467788d9c9157821664c5903501ce22c1e7833` |
| 68 | `theorem` | [comp_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/ModuleBasicPublic.lean/declarations/comp-smul.md) | 393 | `result-track:72f04d9e36a931adc26856a41e5bb67728f2c9e1f6c99d0efddb469ca467e709` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22c2680a935c07eb74ab085835d5d1d79cfd32bcad95e914944d0bc5472ed04b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4449a18a8a42cc552ca8f5c2aa1ac4bb9ec1c0d401e16180ac8c5180082bd7a4.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant4449a18a8a42cc552ca8f5c2aa1ac4bb9ec1c0d401e16180ac8c5180082bd7a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
