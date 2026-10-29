# Verification target: Skew Polynomial Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60240011f2bc8dddc179bdd51a0df4c1cba8ffe7",
  "lexical_observation_count": 141,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60240011f2bc8dddc179bdd51a0df4c1cba8ffe7`.

Source path: `GRWTSK/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean.json)

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
| 1 | `abbrev` | [SkewPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/skewpolynomial.md) | 94 | `declaration-track:7510a33b547a2daa7a5d4a79e3dd4d4c40f02963d3e4fb3c85c08de5fb6b4f58` |
| 2 | `lemma` | [zero_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/zero-def.md) | 105 | `result-track:9ddcf35b0e9a0e9dda9af346e658814176ce7db4409feb219564b7bb50f11e76` |
| 3 | `def` | [support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support.md) | 112 | `declaration-track:7f893c90e0c87f2d9e8d813c5db4aa0f86b72cc6853d1d5f40bb77a1eff82752` |
| 4 | `lemma` | [support_eq_skewMonoidAlgebra_support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-eq-skewmonoidalgebra-support.md) | 117 | `result-track:061d6e2462e0a1f66d80558e8b450c105b7e679379efeadefa840d15a768a826` |
| 5 | `lemma` | [support_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-zero.md) | 121 | `result-track:414a2114f76e212d55eeed448ecfb94524a07bb91f6709afcca122df5eb7aff5` |
| 6 | `lemma` | [support_eq_empty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-eq-empty.md) | 123 | `result-track:69492f1f020e267f822abc3f834a646785d3b5c5270b1fcd89c40c45cd1029f3` |
| 7 | `lemma` | [card_support_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/card-support-eq-zero.md) | 125 | `result-track:14bd1c9b66716c3ab6fa336af0ebd3c1821dbb96f958a83acdd2ac09d296800b` |
| 8 | `lemma` | [support_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-add.md) | 127 | `result-track:01996ed94a148b68dc7a9bfe6d373e77e0eb24224a85f9a20164990d0fabe366` |
| 9 | `def` | [coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff.md) | 131 | `declaration-track:3a8e25bca16b2abd6c2d01d6f899c47fb81c842edd476bbe16e358f522956d6e` |
| 10 | `lemma` | [mem_support_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/mem-support-iff.md) | 134 | `result-track:1cc2dac74bba522448fac9597ab45174fcec434eb983aad136ece638fa2e4de5` |
| 11 | `lemma` | [notMem_support_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/notmem-support-iff.md) | 137 | `result-track:fef3c387e8cf15a80dce7b69898b9ba8e7e2da01a95ace9f0fae4dfcc272a3b5` |
| 12 | `def` | [sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum.md) | 141 | `declaration-track:d2d60fdccdeaa7ab0764a4f6378fb06661c93efa34f0dc46929f2a5570fa42f5` |
| 13 | `lemma` | [sum_def'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-def.md) | 145 | `result-track:303641c6f8d68e266e02019122e25d4a71f4fd6f0aa1313d13fd599e4ca4939a` |
| 14 | `lemma` | [sum_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-def-source-edition-2.md) | 148 | `result-track:a540869b2f09eb1cd991f9b391348c0b02c093df09854bac7c4a46a32931aab8` |
| 15 | `lemma` | [sum_sum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-sum-index.md) | 154 | `result-track:fa5d599c75ab5cea70e7a6e30b61b25acacf65d6f6062a9033c5f994ffc24698` |
| 16 | `lemma` | [sum_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-zero.md) | 162 | `result-track:14d0e0b8eb47085dde00a174ed1619ce2b5e90386d205dfd33429819f41f5fdb` |
| 17 | `def` | [monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial.md) | 171 | `declaration-track:cee20327356f5f879fabfa7ff9b137e88fba9e0ee0c557f794d085f31424309a` |
| 18 | `lemma` | [monomial_zero_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-zero-right.md) | 173 | `result-track:d5d4e10ee2ba5b1dcef0178d20183f7331036b83a86cc1ac056d26b6dc12ebbf` |
| 19 | `lemma` | [monomial_zero_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-zero-one.md) | 175 | `result-track:291c36b1def2f4bf196f8f8e2af85e4e20e35cac8f8405f29d64e0f11f0cd3f6` |
| 20 | `lemma` | [monomial_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-def.md) | 177 | `result-track:ad11be9a918746c973fff0473842b709189ca9071ae064d57aa813019eb40a98` |
| 21 | `lemma` | [monomial_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-add.md) | 179 | `result-track:72faa31fcda9f771ae31c76c55fd150866b42a0508edca348a3051accb707bfb` |
| 22 | `lemma` | [smul_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/smul-monomial.md) | 182 | `result-track:6347953c06626a531883c42a38e94908359a2405a342d45fc0ca6eb766709c4d` |
| 23 | `lemma` | [sum_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-monomial.md) | 187 | `result-track:5ec8ec0eb7b5218a448e07d46962166ac3bfebcb368b9969fea3fdf0326176e4` |
| 24 | `lemma` | [sum_monomial_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-monomial-index.md) | 191 | `result-track:91ecddd152150b3ce3931af69b67f1f70787e029c10bac1fb47a229e1ea92dd2` |
| 25 | `lemma` | [monomial_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-injective.md) | 194 | `result-track:15e77b313cf38b6263754db4cf9c5e72aea5c36899cc59634992efdbb6bbeb9c` |
| 26 | `lemma` | [monomial_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-eq-zero-iff.md) | 198 | `result-track:769576390c18799c9a0522067ed99dbdaaa4fcbdaa38d72c72c2b9b2a040ab76` |
| 27 | `lemma` | [monomial_eq_monomial_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-eq-monomial-iff.md) | 201 | `result-track:845c7ac498bc4c211b076e6d1a2e8294b9ae3f48d239bd5d0d8560e5091cf6d1` |
| 28 | `lemma` | [induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/induction.md) | 208 | `result-track:e1f24b119c147fba128010407e8878942689bad7b4daecdbe9c350f5c10d6eb7` |
| 29 | `abbrev` | [φ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/anonymous.md) | 220 | `declaration-track:ef385f617e8db2bd13340ab662cb613a2255c270186be12309a40117443aa39b` |
| 30 | `theorem` | [φ_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/def.md) | 222 | `result-track:448d609792f0424a98631f05c13b3bc234227d17f0d49ef8c9b64836297b5f8a` |
| 31 | `lemma` | [φ_iterate_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/iterate-apply.md) | 224 | `result-track:0fe9110e57917b29ffda6b855ca137986428ea97c78e73a459bd96c4ed952c2b` |
| 32 | `lemma` | [monomial_mul_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-mul-monomial.md) | 233 | `result-track:81ac2e1ecf22ab0889970a42093d7e825a92f90839d8bd11850bc7521f7faf3b` |
| 33 | `lemma` | [mul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/mul-def.md) | 238 | `result-track:dbd3060f30c82c302cd118dc8254982f76f68ec4aae6e4a0cf95f70adb51c6a6` |
| 34 | `def` | [C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c.md) | 246 | `declaration-track:02f37ca2889c822977562d89d8bbe976905a9e0527212bc8c46bad4161bafa82` |
| 35 | `lemma` | [monomial_zero_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-zero-left.md) | 250 | `result-track:61d2ea8c9e70515eb854a87510c0fb90e3a86429162b2b53770887e72873ad24` |
| 36 | `lemma` | [C_0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-0.md) | 252 | `result-track:0e02870a010142f1f593c4abd7e6ec965565a1039024fe8405d527bae3389541` |
| 37 | `lemma` | [C_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-add.md) | 254 | `result-track:4558ba98cb1075701476599f644a3f50c18493594823370e8d6465b4188ab5a8` |
| 38 | `lemma` | [C_1](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-1.md) | 256 | `result-track:349699b19070360ecbc1f21224f1a75de89215238b3dcbc8e9c851853b1ccf33` |
| 39 | `lemma` | [sum_C_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-c-index.md) | 259 | `result-track:7874608907d90ddbbcb9835379681054e64ac0932962333b4dd27a7a16fff613` |
| 40 | `def` | [CRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/cringhom.md) | 268 | `declaration-track:765ccd6c8f5d0c87d23dcfe5f0604bb4bfb3d52497e7f01b4dcb67f48a163d7f` |
| 41 | `lemma` | [CRingHom_eq_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/cringhom-eq-c.md) | 270 | `result-track:4462e72ef60cdfcbbe6d28d3435dcd22077eeaf3acbd41f78d7ef5efe99463bf` |
| 42 | `lemma` | [C_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-mul.md) | 272 | `result-track:fae24d386de7159c1ef2bad432a39a55184fcbd32b878531e3bf35fb1e61ac25` |
| 43 | `lemma` | [C_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-pow.md) | 274 | `result-track:b275de03ffd6adfec506346e3a6adc4741f75a04178acd8fec6b27f185abaea4` |
| 44 | `lemma` | [C_eq_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-eq-natcast.md) | 276 | `result-track:4f1a691db38dff0430b7c7d6d65b696de9142084ee6af58790f9804e5462c9b3` |
| 45 | `lemma` | [C_mul_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-mul-monomial.md) | 279 | `result-track:f3b0f224d132213f0f8610ba6616414f6ad58b910f0e28bd98e0896deb945bf9` |
| 46 | `lemma` | [monomial_mul_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-mul-c.md) | 283 | `result-track:b834ace2a1d54559237cc7a242b4494e34864ab7d0eaff0d5578e2f21040b8b9` |
| 47 | `def` | [X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/x.md) | 293 | `declaration-track:3db5301a88942ca79b7988101a83b0e7309ba46c8bf294fee5db95e18d52cb39` |
| 48 | `lemma` | [monomial_one_one_eq_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-one-one-eq-x.md) | 295 | `result-track:ddb94aa3be6156d4208cbd80cb21db12db92415ad79854c7e76549715d6b57ac` |
| 49 | `lemma` | [monomial_one_right_eq_X_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-one-right-eq-x-pow.md) | 299 | `result-track:a45eec48767b67f418d963e3b0cfa67551c443aab0696e806120ffc9fa8ef7d2` |
| 50 | `lemma` | [X_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/x-mul.md) | 306 | `result-track:64a698e0896de6fd68cdf3b6f10d8a40cce7279b6105f3d7de0b5c31b0afb61c` |
| 51 | `lemma` | [X_pow_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/x-pow-mul.md) | 311 | `result-track:5a067830426ee0ab4cf6ca485e78ccb252fd600868dc84680a271489b33530a4` |
| 52 | `lemma` | [monomial_mul_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-mul-x.md) | 320 | `result-track:91a1387ad9ed3f612487c47f2da8959ef6852123e7c8062ae1dfda0449c06ffe` |
| 53 | `lemma` | [monomial_mul_X_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-mul-x-pow.md) | 324 | `result-track:1dab00f40a3dc595b9be29168c279624fe26c8dafd7c77626501413a620086a8` |
| 54 | `lemma` | [X_mul_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/x-mul-monomial.md) | 330 | `result-track:098f2b007523fa3f605b241d1885e5725539419eba13bac7f49e2425e8fb30a4` |
| 55 | `lemma` | [X_pow_mul_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/x-pow-mul-monomial.md) | 334 | `result-track:182f840565b01335dec735644013bba475ae0d013d3946915f3b5cb9c07de242` |
| 56 | `lemma` | [coeff_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-monomial.md) | 343 | `result-track:d1a0ce1228be1df5ef432ec331b7335e41adfc3f7199d656f4e13fc68c027744` |
| 57 | `lemma` | [coeff_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-zero.md) | 346 | `result-track:550fa40d0a2198a096c891cbe4f72e1124e454b36cef92838cbb0c7cfe4d8ef8` |
| 58 | `lemma` | [coeff_one_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-one-zero.md) | 348 | `result-track:9f8bc75f6c16381ebbdf0f9f57f56fdb6e45cdac1855debe5bb4140b85dbd28e` |
| 59 | `lemma` | [coeff_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-one.md) | 350 | `result-track:a6724908b9009926c28d9fecd5438646ee48bd5c395470094c1fdecc109c00b3` |
| 60 | `lemma` | [coeff_X_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-x-one.md) | 355 | `result-track:f0f3070f680a9fa576b175d0a01ebaa61de252da67be6f068a3e7e2ab0fa921e` |
| 61 | `lemma` | [coeff_X_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-x-zero.md) | 357 | `result-track:0f0e1c5edc2714e05f25c1fc7635036993274d42324b10c2763a9f64172937de` |
| 62 | `lemma` | [coeff_monomial_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-monomial-succ.md) | 359 | `result-track:68cc4a651b8998f92ccdd802dcbf2404bae6b95192b9019e5954d796b43c78a6` |
| 63 | `lemma` | [coeff_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-x.md) | 361 | `result-track:a6500daa3bb1431da4a10f170c092d26ad01fe2f4909b17962cc8b5866aa54b4` |
| 64 | `lemma` | [coeff_X_of_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-x-of-ne-one.md) | 363 | `result-track:d5588507f70fa115c521cede77364bec440aedb1b6d908053d106a2409f97116` |
| 65 | `lemma` | [coeff_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-c.md) | 366 | `result-track:57de31a11bb78773bbd500162e159db1b821c3f7ee1098436fdffee2a5ba49f8` |
| 66 | `lemma` | [coeff_C_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-c-zero.md) | 369 | `result-track:95b8b4e0cc742366483139bfc45b5f178c133c64e06c1fc0036ceb2090b516b7` |
| 67 | `lemma` | [coeff_C_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-c-ne-zero.md) | 371 | `result-track:7e12757a8a3f973c18e0da19ac371c0b3ca592e5c6fc93f22c40db4cb5e93b7a` |
| 68 | `lemma` | [coeff_C_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-c-succ.md) | 374 | `result-track:d407da6359c77ece10b5e87e620d1e9071463b4e1fe3137951860b150e88ce08` |
| 69 | `lemma` | [coeff_natCast_ite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-natcast-ite.md) | 377 | `result-track:cc6643b8fd07b56960e4af98f8ac454d233e6c1cff8f20845366becc470a27f2` |
| 70 | `lemma` | [coeff_ofNat_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-ofnat-zero.md) | 382 | `result-track:bb69b9ba850953c15087c3c318b4da80211a5499543195c4fb3d506013b1be25` |
| 71 | `lemma` | [coeff_ofNat_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-ofnat-succ.md) | 386 | `result-track:214f99488ba2ff017ccc5373407411ace41e8ed86b0a384a69a1904b075790f0` |
| 72 | `lemma` | [C_mul_X_pow_eq_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-mul-x-pow-eq-monomial.md) | 391 | `result-track:6b6f562bc2c3e818b25025cce2bdc6f663833997222ec762ced03a6211e8fcc9` |
| 73 | `lemma` | [C_mul_X_eq_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-mul-x-eq-monomial.md) | 398 | `result-track:8f79f98e95236c3fcd57bf8a425663be1b6efdefc391eb48038e3575e0b1f57f` |
| 74 | `lemma` | [C_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-injective.md) | 401 | `result-track:505e77e0cf1b0e8e07c11f3a10ccfe50b739538c04565ab40e6fb2e858ecaf43` |
| 75 | `lemma` | [C_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-inj.md) | 403 | `result-track:aec481b48bce5451872c40d64e2390c9de8221604735374acf5f2048dbf42ef5` |
| 76 | `lemma` | [C_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-eq-zero.md) | 406 | `result-track:a2822888cc968858e694fd88daa24210108da45517280b6da7e37fa231a86e9d` |
| 77 | `lemma` | [Nontrivial.of_polynomial_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/nontrivial-of-polynomial-ne.md) | 412 | `result-track:271293567be1cce53d17ea7d36f18be5d8d95cb3c876497cb2fdec73dac86e65` |
| 78 | `lemma` | [ext_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/ext-iff.md) | 417 | `result-track:705e1355463b119f1dc056be63669dc6d6e403503425b0f1f10fbf8620b3e9a2` |
| 79 | `lemma` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/ext.md) | 420 | `result-track:7bd91c3795bea1084f3962204d0c983987aa24929564d2b6bdf45fcbf251aa02` |
| 80 | `lemma` | [addHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/addhom-ext.md) | 423 | `result-track:2ec651c4ba7edbda4d0a9b2c44d45729f20dfd87d0273cbb4b62f84b07d2da63` |
| 81 | `lemma` | [addHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/addhom-ext-source-edition-2.md) | 427 | `result-track:cc35a2768cc00b20d80a9b797628a5dd62c2d8a9988aa460a9f23f4326710fdb` |
| 82 | `lemma` | [linearMap_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/linearmap-ext.md) | 431 | `result-track:bba3654a701a8ae5e0e4a408ea4ed373b338d8e1944fae19b992e12c4dfe888d` |
| 83 | `lemma` | [eq_zero_of_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/eq-zero-of-eq-zero.md) | 436 | `result-track:719ebdca8790a08aa4c22fbe3dbcb205d440dfb54654f10b988f7e6dcd4898b2` |
| 84 | `lemma` | [support_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-monomial.md) | 441 | `result-track:a5d48afb482ccf4ad6e939249e8572fa9aace5d6bccef2f9f3e313553835b413` |
| 85 | `lemma` | [support_monomial_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-monomial-subset.md) | 445 | `result-track:3196ae045b0f22005c44dd484e548fb7f981f96309f2330aa13adbae28d8e382` |
| 86 | `lemma` | [support_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-c.md) | 449 | `result-track:c81d157203dcb2d39ad2ccf36c832e994695fbc6bdb2c8bae680fb0dc10ec7de` |
| 87 | `lemma` | [support_C_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-c-subset.md) | 451 | `result-track:136010b5ed48c419d3155ac6d169ee88a210131a266f0d4b4573d74329e4062b` |
| 88 | `lemma` | [support_C_mul_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-c-mul-x.md) | 453 | `result-track:73d72b99273fde941541ecc43d4d8ad8c704c8745a89d1a4c293005f227d6fda` |
| 89 | `lemma` | [support_C_mul_X_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-c-mul-x-subset.md) | 457 | `result-track:8436cb84fe44fc518a68f46001a9f4fb3e6b028d4529e3e6ebc31e675fb523b7` |
| 90 | `lemma` | [support_C_mul_X_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-c-mul-x-pow.md) | 462 | `result-track:c8d2845b84a4a4b779dfd595bd94c0fdf085edcbe07409e5fabf93cce72661ba` |
| 91 | `lemma` | [support_C_mul_X_pow_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-c-mul-x-pow-subset.md) | 466 | `result-track:0b7d397576544ae294cc1e3f2e56bede212522495dce02982a0c18de2f6859c0` |
| 92 | `lemma` | [support_binomial_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-binomial-subset.md) | 471 | `result-track:e9a1011b67593e5d2cfd2ce425de8eb58395a19a8df698794c266eedd28ff8c6` |
| 93 | `lemma` | [support_trinomial_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-trinomial-subset.md) | 479 | `result-track:b8133835f1250ef7b1bece489c5057e5e22e466a62e19d9dd5e198992a6577f8` |
| 94 | `lemma` | [X_pow_eq_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/x-pow-eq-monomial.md) | 496 | `result-track:637f9359e175f383cfbc4a22c9cefb80b5d89d5bf00d91ce13cf134dd3049687` |
| 95 | `lemma` | [smul_X_eq_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/smul-x-eq-monomial.md) | 504 | `result-track:8295427bd90ac3716f7dd36396ac65cd0e0dce30ef832dae1ccfd548936bab2a` |
| 96 | `lemma` | [support_X_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-x-pow.md) | 513 | `result-track:96374646c801c8f437e9122a370914f382d25b9cbdc35381ce79e2964e58ad9b` |
| 97 | `lemma` | [support_X_empty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-x-empty.md) | 518 | `result-track:df22e2bf530a7943350d1aed890f881f5488ea3d400cd7654f85188e9f038b8e` |
| 98 | `lemma` | [support_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-x.md) | 522 | `result-track:555fe6184b520613399fdeec5d2b983fcfd5450d1fe5f600a0ebdc836c02f8ed` |
| 99 | `lemma` | [monomial_left_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-left-inj.md) | 526 | `result-track:f13f3461d08bfd00f8f9997c3f973c203aabad6f675029af27a3c3f65de57776` |
| 100 | `lemma` | [nat_cast_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/nat-cast-mul.md) | 530 | `result-track:7369ecc21349931a069b2138d52afdf909455d7be5da80e4808b8619897a0cf6` |
| 101 | `lemma` | [sum_eq_of_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-eq-of-subset.md) | 537 | `result-track:a0a62b447700412cdd6389f23ae69f3070799ebaeef41cf87b560ce72c99022c` |
| 102 | `lemma` | [sum_zero_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-zero-index.md) | 545 | `result-track:8dab3528a93720c5d1ce53d3797bea690c3a6def7cbb359721a1de16ebe81ab5` |
| 103 | `lemma` | [sum_X_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-x-index.md) | 549 | `result-track:505f2a44e54eae7f7a8147ff8753e6e9a817e98a61ade73217d66fd7cfdb21bb` |
| 104 | `lemma` | [sum_add_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-add-index.md) | 552 | `result-track:3d5d9150ab16df53d95d523af46a305c994a401883f965d7bbf3272a6dc8eec6` |
| 105 | `lemma` | [sum_add'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-add.md) | 560 | `result-track:5e1c7502d505e08a36fcf6abfe8ca60afc3ad57072ab154c5fc9e4bae53a053d` |
| 106 | `lemma` | [sum_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-add-source-edition-2.md) | 565 | `result-track:619859fa056c34f2ccd4e3a740206f0011c98a5c72aaf1d13479940184807a36` |
| 107 | `lemma` | [sum_smul_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-smul-index.md) | 570 | `result-track:3ce8fefa4e49ba5827a766f900ec61452fab83dd9df0a1f9457aa04c499484cf` |
| 108 | `lemma` | [sum_smul_index'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-smul-index-source-edition-2.md) | 575 | `result-track:8a2d685ac41ef384a977f65fc1869630d516a06225c99aecf180d5c26b561418` |
| 109 | `lemma` | [smul_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/smul-sum.md) | 579 | `result-track:eaff0a7be60a51defab398c95112e39f61ae0aaa4816f00e71783ac9aed47d50` |
| 110 | `lemma` | [coeff_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-add.md) | 586 | `result-track:0a86e2cd22ce4605dc36a43a425c8afb0c0067a0ae905942d1d9c7feacfb5435` |
| 111 | `lemma` | [sum_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-neg.md) | 595 | `result-track:b729ba9ea3f103414de69e05a956ccb4fa199883e9be3969a6613cf54c8ca5e2` |
| 112 | `lemma` | [sum_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/sum-sub.md) | 599 | `result-track:93d62b12876aae0eb1d3b463c15b10ef93eaac4d058d4508d3d99614d2458c0b` |
| 113 | `instance` | [instRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/instring.md) | 603 | `declaration-track:42a1ed8037e89a36851de4afd5c7808ac5bddd43a534b7b0c89033d029ead643` |
| 114 | `lemma` | [coeff_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-neg.md) | 607 | `result-track:a03690ee0333fd4eed22f740cf1c1cfff4a23944eb484b405f370d0975f7abb1` |
| 115 | `lemma` | [coeff_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-sub.md) | 611 | `result-track:9d6b4f9162af00e6334b2e87be1db2e8829a140c5f6a5de258dfecb51abab2a1` |
| 116 | `lemma` | [monomial_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-neg.md) | 614 | `result-track:e76e6648110b77f556f4c4ed22d275dff139ea6f62e61c2e07aca500a1496410` |
| 117 | `lemma` | [support_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-neg.md) | 617 | `result-track:1b39f06fa1677f9aff5a5c4df751479fd19580a99e1fbf3f65a674f4901377c8` |
| 118 | `lemma` | [monomial_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-sub.md) | 620 | `result-track:0d4d3b65aeb9883ffa8dfa8ed418a84bb3f358779a3ee1dd75adc8da46b21424` |
| 119 | `lemma` | [C_eq_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-eq-intcast.md) | 625 | `result-track:d89d8bf53579b9e15dbc261d6af132a37ec0d9d090cd5a9d01c2abd082c4a7ba` |
| 120 | `lemma` | [C_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-neg.md) | 627 | `result-track:1d3118db074248eac7c099f8ae1e4bbcb3c102870169f979d057aef8cfabf53d` |
| 121 | `lemma` | [C_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/c-sub.md) | 629 | `result-track:cfabf47c29d381092d5941952f3066da3d2ad441d3eb882a98e6db2b934ca579` |
| 122 | `instance` | [instNontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/instnontrivial.md) | 637 | `declaration-track:ee4c1e222a1b386c0adba29c1d648dcf783c4d2bf7e0088f6f8935d7d4798071` |
| 123 | `lemma` | [X_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/x-ne-zero.md) | 640 | `result-track:e1dcb612729e657cbb3367c1d5fa79d11b6e79c5e313e0675eb8ef0bb93faf64` |
| 124 | `def` | [erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/erase.md) | 649 | `declaration-track:ee0249b3e5dc2621a9cef49b03e770015bad915304a14f2b01b6d18a86b58f38` |
| 125 | `lemma` | [support_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-erase.md) | 653 | `result-track:8a8d3cd22899e5521a944c294d4fc8be1c592de156bcc9aaf3a4b053a1860f48` |
| 126 | `lemma` | [monomial_add_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/monomial-add-erase.md) | 657 | `result-track:7b7d9d0a95a3d4ebcec979622f448a422ede62d5179de7b3dce57205b14465cf` |
| 127 | `lemma` | [coeff_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-erase.md) | 662 | `result-track:3ee01a5df9a3b3e7720b0babb23cf885fb7d96bda1cb97c7e184270fc99be8a5` |
| 128 | `lemma` | [erase_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/erase-zero.md) | 667 | `result-track:10040ce642f07c27f274fb152084603ea1eae0242c08f035bd4255cbe2374418` |
| 129 | `lemma` | [erase_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/erase-monomial.md) | 671 | `result-track:53f81004d2b116d5094d0d7117cb0c9ddaa606d5d5b14a20c2f10927eab2e8f5` |
| 130 | `lemma` | [erase_same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/erase-same.md) | 675 | `result-track:0a3db6f65b06af1de17177a06bcfb60d53b0a028eb5063c1dbecff559ef6778f` |
| 131 | `lemma` | [erase_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/erase-ne.md) | 679 | `result-track:22b4f8b0464ed74202701f693d3347202978c8b8f6d3eb14320981ea7c08dfa0` |
| 132 | `def` | [update](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/update.md) | 692 | `declaration-track:c5f6ec5bb7d5411b392b857e1c2de1fad4050226c991ccce248dabc9fd813a5e` |
| 133 | `lemma` | [update_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/update-def.md) | 695 | `result-track:c6e3f4666d839413918a089c0ecba9285cef58f1af22e7edda4e83744de126a0` |
| 134 | `lemma` | [coeff_update](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-update.md) | 699 | `result-track:37dc40a1a42776c1c9f58db25eca4e1ea4869a2898962cd169be5151d9fc8df8` |
| 135 | `lemma` | [coeff_update_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-update-apply.md) | 704 | `result-track:94d3311c809950a74347f407a6bec048d23dc93f49c8fc92119058e14887f874` |
| 136 | `lemma` | [coeff_update_same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-update-same.md) | 709 | `result-track:97cfad87f292c1bea5ae0511aa5237b4635d7dc405f1f599fc2b3469d0a03936` |
| 137 | `lemma` | [coeff_update_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/coeff-update-ne.md) | 713 | `result-track:1913c4dee9d5701cbed0804a86d210176bb8993d10355e821482b401c9168923` |
| 138 | `lemma` | [update_zero_eq_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/update-zero-eq-erase.md) | 717 | `result-track:3db9f099878603ddb09b7f7493ab3befd1a1c6628cc8bf8ed43919ecd21384f8` |
| 139 | `lemma` | [support_update](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-update.md) | 720 | `result-track:6aadc75f5f0d5e6eb87922eeee70f5cf3674ba70c20191e65e768294439ea7d2` |
| 140 | `lemma` | [support_update_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-update-zero.md) | 725 | `result-track:02e5df99c2866f337191199e401a1d3b89105fb5e0d6695eb525bd29c64b880e` |
| 141 | `lemma` | [support_update_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SkewPolynomialBasicPublic.lean/declarations/support-update-ne-zero.md) | 729 | `result-track:c0f50f3a17c5c9ae4d10d15efbb0d54f8e03cadcdfd10c1d4eb7ea6c2843f712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bf14a10bd3a5f08665d0fc4b6d9f16ef3177955059fbd587fc4907a63889ef7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant4c614f4ad0750fe2817f5c7e19829567062524932ec8422dc6b2cafcf295a922.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
