# Verification target: Real Namespaced Public Rpow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5afc07585a3bee0b6df9c22e16ad0cf231ef3feb",
  "lexical_observation_count": 216,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variantcd352ea029cc2c81be163a34ec852f68b5a149968e2ca51ddff4a3184bb059ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/index.md) · [Full source](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5afc07585a3bee0b6df9c22e16ad0cf231ef3feb`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Real/Variantcd352ea029cc2c81be163a34ec852f68b5a149968e2ca51ddff4a3184bb059ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Real/Variantcd352ea029cc2c81be163a34ec852f68b5a149968e2ca51ddff4a3184bb059ff.lean.json)

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
| 1 | `def` | [rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow.md) | 43 | `declaration-track:aa81f923d7093d939654a30413fd2d079492b6bb64da68f6ebf015c08ac9bead` |
| 2 | `instance` | [(anonymous)](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/instance.md) | 46 | `declaration-track:3b0ef0db69a9fd5530217c52ccc02c4377bb305eb5bec928f8a41b2c2fa0a6ae` |
| 3 | `theorem` | [rpow_eq_pow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-eq-pow.md) | 49 | `result-track:836c01faa7e0a29b58587c56e74401d8bab2f2a319bbff33ecc4298771ed8494` |
| 4 | `theorem` | [rpow_def](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-def.md) | 51 | `result-track:769b7dc97c9b983460d2fe0c44872e51c41be7c69084d6dadf7029431d831984` |
| 5 | `theorem` | [rpow_def_of_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-def-of-nonneg.md) | 53 | `result-track:9fe7cee1102f77bbe09b81af6126eb9e6443b1d23fadf36eaff4a4c1725d4b1c` |
| 6 | `theorem` | [rpow_def_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-def-of-pos.md) | 59 | `result-track:e4ebf04dd32c133a6c82b1fbd19a6d91f5421eb5dd5c7cc0122384177bd89096` |
| 7 | `theorem` | [exp_mul](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/exp-mul.md) | 62 | `result-track:a447ccad3be2198ef63708bbe956d7042aad15b6a9e64022f75775906e2c2ac2` |
| 8 | `theorem` | [rpow_intCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-intcast.md) | 65 | `result-track:a00fc205ec791c2d9e4062c6d1d82b2ff77e261e193480080b11a81838c12054` |
| 9 | `theorem` | [rpow_natCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-natcast.md) | 70 | `result-track:58c38dd298079b1f9d10471a69bc56a16b330565293f12978ac0285700651a27` |
| 10 | `theorem` | [rpow_neg_natCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-neg-natcast.md) | 73 | `result-track:cc23a00b8c87f1070cac7ad14878fa0539ad9ff0e3b61cf2e8b64860e4f14c83` |
| 11 | `lemma` | [rpow_ofNat](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-ofnat.md) | 77 | `result-track:f15888c8756aaed0e15886c3186254f6bb61ed679a19b4690d8edbc367130b74` |
| 12 | `theorem` | [rpow_neg_ofNat](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-neg-ofnat.md) | 82 | `result-track:4b47d7b79bd5770c4cbcc90c8b8a94e02b724d971ae0c890d8d837016647cb52` |
| 13 | `theorem` | [exp_one_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/exp-one-rpow.md) | 86 | `result-track:112b8539f26065c3b443e8f307c4ece77992ed1b68b03a032853b6cafd9d9298` |
| 14 | `lemma` | [exp_one_pow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/exp-one-pow.md) | 88 | `result-track:6e050a5d60860cb828480ca6bfe06b0a50dc889fb77bcdaa489881b1ebf06b76` |
| 15 | `theorem` | [rpow_eq_zero_iff_of_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-eq-zero-iff-of-nonneg.md) | 90 | `result-track:ae1ef3537429666fd9fd1e84ab5db0a6b6fe5d9d6ba49a3fe7614f5bc9cd3e80` |
| 16 | `lemma` | [rpow_eq_zero](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-eq-zero.md) | 95 | `result-track:aa492b9ecffb2bee910392a4224d0ec92293db894604f693832f75164d061a1e` |
| 17 | `lemma` | [rpow_ne_zero](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-ne-zero.md) | 98 | `result-track:483f19d513414dc3043bea879bb7e073125955c75ae5f5dc4e7419cb1e8cb532` |
| 18 | `theorem` | [rpow_def_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-def-of-neg.md) | 103 | `result-track:8bdf756ca125a106e189a002374ebb8c46c2e64270eeeca37c48241ab34eda53` |
| 19 | `theorem` | [rpow_def_of_nonpos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-def-of-nonpos.md) | 117 | `result-track:c9a623a081149a80fe8f30595774238160c88d05a6f8c4491e0d422015296d72` |
| 20 | `theorem` | [rpow_pos_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-pos-of-pos.md) | 125 | `result-track:53012936d2e8fc42aa5238e70b413979b66899abc92df5313688e797ccce7e09` |
| 21 | `theorem` | [rpow_zero](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-zero.md) | 129 | `result-track:d4176dd45b71406cb920e61f518e42816ed6e5a8068c4ddcabd0d6444caf5bb9` |
| 22 | `theorem` | [rpow_zero_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-zero-pos.md) | 131 | `result-track:bd124db047235c112965b85673743562bab6de4054e5787d90d7f90e405754df` |
| 23 | `theorem` | [pi_rpow_zero](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/pi-rpow-zero.md) | 134 | `result-track:476f5cc391f76a1534b74c9bf8e71a3b3f7b22ee6022736208b77b1ecbbece82` |
| 24 | `theorem` | [zero_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/zero-rpow.md) | 137 | `result-track:a5e8f3da94173292fa6c810466ec94af57ef350cd84f1c5746bef2745e06874c` |
| 25 | `theorem` | [zero_rpow_eq_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/zero-rpow-eq-iff.md) | 139 | `result-track:3887b92f5c77948f748f1d9b532d890f2fa767dafb8fc469a735b8796d28eac9` |
| 26 | `theorem` | [eq_zero_rpow_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/eq-zero-rpow-iff.md) | 153 | `result-track:a7e9fd217f4f26439ad94ca68bd76b15377562d461242c34181e95269a0f7fd5` |
| 27 | `theorem` | [rpow_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-one.md) | 157 | `result-track:7143861831a43f19b0a1ca01194c6a6540acbae89d18e806de8531f6288604b8` |
| 28 | `theorem` | [pi_rpow_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/pi-rpow-one.md) | 160 | `result-track:b51019fa31f61b95aa6c25bed8f579b2f9d7b8abdf024a9b5b44658803f0afb7` |
| 29 | `theorem` | [one_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/one-rpow.md) | 163 | `result-track:8383367f1329f94862ab465e2bfe6afef2eb9a35e4549a32aebc7063f2fe71a0` |
| 30 | `theorem` | [zero_rpow_le_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/zero-rpow-le-one.md) | 165 | `result-track:da65a2b623eab883f1d4b0688ad5eed328808e46c1e3dfd1f7c3333174689ea5` |
| 31 | `theorem` | [zero_rpow_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/zero-rpow-nonneg.md) | 168 | `result-track:e59a427f8b33bb4011980820bcc1e80a74c8cd4ba31d269aaab08ad8cb72fb11` |
| 32 | `theorem` | [rpow_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-nonneg.md) | 172 | `result-track:e96b283261ba0830db2be6306bf4a78bc57f12224a80b57a679e0b6ec7cbeeca` |
| 33 | `theorem` | [abs_rpow_of_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/abs-rpow-of-nonneg.md) | 176 | `result-track:71307cca96ef464cb640acf6e8ac6465bac94be10804be90b37e69a0ce8a1b63` |
| 34 | `theorem` | [abs_rpow_le_abs_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/abs-rpow-le-abs-rpow.md) | 181 | `result-track:a4bd0f059fe1eeba0e88d925c6ff49eab8983923b99686ff90a7e2fa7d6764f0` |
| 35 | `theorem` | [abs_rpow_le_exp_log_mul](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/abs-rpow-le-exp-log-mul.md) | 188 | `result-track:20fd167bc6e092a953e638c33f17fd18d9ab61580a186433bf59b33d87d5bd2e` |
| 36 | `lemma` | [rpow_inv_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-inv-log.md) | 194 | `result-track:080730b166b425bc0fd1126d16e67ab1ba79cb0f04774db6cdb8042a0c6fff16` |
| 37 | `lemma` | [rpow_inv_log_le_exp_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-inv-log-le-exp-one.md) | 199 | `result-track:883cadfbbc31dadf33a9b935f463c3b1693f170f4a39b0dfb03138f5f8d0766c` |
| 38 | `theorem` | [norm_rpow_of_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-rpow-of-nonneg.md) | 210 | `result-track:14908b0792e09e03ecb1266b8d7975f988d534b2cb6ee26ba94fa532aed1d5d3` |
| 39 | `theorem` | [rpow_add](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-add-source-edition-2.md) | 216 | `result-track:2f6d6c7ee2c8f23860b555960250babdd14a6c17455cf32df70952e4a12b94a7` |
| 40 | `theorem` | [rpow_add'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-add.md) | 219 | `result-track:2b43d9c62bfa486225594ded508d2050f5deb4adfe322a2a38f2b7e893ffa7dd` |
| 41 | `lemma` | [rpow_of_add_eq](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-of-add-eq.md) | 227 | `result-track:b8d4d0b610dbc029219c65dc2116feaf8ee9a1823d91bd24a6ff1d1478b9bc0b` |
| 42 | `theorem` | [rpow_add_of_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-add-of-nonneg.md) | 230 | `result-track:3f40b5d1c0a93890c3e8cc26aee1e58e6764c9d405361da7205df0ed81a7861e` |
| 43 | `theorem` | [le_rpow_add](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-rpow-add.md) | 239 | `result-track:47ebff4c20f300e93c96fb63b6b15cd8b400dfe93507fcfe06854c1c7e9585eb` |
| 44 | `theorem` | [rpow_sum_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sum-of-pos.md) | 251 | `result-track:b6fe879b12ed0e7ed1ab80acef336388b75955d3a04ba9bc6c123b4b8a08e8e9` |
| 45 | `theorem` | [rpow_sum_of_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sum-of-nonneg.md) | 255 | `result-track:ace639d042d558f1d9870666d16cbeaffbcc671f31ff8e3981abc04dd1336280` |
| 46 | `theorem` | [rpow_neg_eq_inv_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-neg-eq-inv-rpow.md) | 264 | `result-track:ad4e9c08a35f80f0c7e6f3394bdd5363dbbcda41a36d5acf24bf2930c5229487` |
| 47 | `theorem` | [rpow_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-neg.md) | 268 | `result-track:5d8f998311332649d6d5df133f24cf5e68980222ae3e33ddfe406b5e3e8ce635` |
| 48 | `theorem` | [rpow_sub](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sub-source-edition-2.md) | 271 | `result-track:f5b5fa6f9b78abeff044e27b034dc4c7a2bebe43824a546861c629dc867f4f90` |
| 49 | `theorem` | [rpow_sub'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sub.md) | 274 | `result-track:75e0bfab0313a9e930a767bf0c7bce26fa45e335ab7773a9375a76b53e050787` |
| 50 | `theorem` | [Real Namespaced Public Rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-const.md) | 278 | `result-track:fd9df5c05d3a1407add52f2445644333c183019558cec5bbdb74fb4e7470c61e` |
| 51 | `theorem` | [ofReal_cpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/ofreal-cpow.md) | 291 | `result-track:5be3afcdc67e7b7b13ded69b1b668c1cad51c2c3aafc86b5c043e087a99df0e9` |
| 52 | `theorem` | [ofReal_cpow_of_nonpos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/ofreal-cpow-of-nonpos.md) | 295 | `result-track:da39322871e9d5f26c364f4035da01b813b622f5b5fa712f7fb4eca810beba7d` |
| 53 | `lemma` | [cpow_ofReal](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/cpow-ofreal.md) | 304 | `result-track:1b672ac1fbbca37e80b72fac735eba7d960fce48de7cb0b6e5873835320fea17` |
| 54 | `lemma` | [cpow_ofReal_re](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/cpow-ofreal-re.md) | 314 | `result-track:734e832e6cd59fafe65c09ac296bfa1b99599909b47b7530800bfc2cb6059165` |
| 55 | `lemma` | [cpow_ofReal_im](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/cpow-ofreal-im.md) | 317 | `result-track:7c45779a9ddaa8d07229af3a3b1d19f3fc20c050aa9af6c9ac460e60776a0939` |
| 56 | `theorem` | [norm_cpow_of_ne_zero](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-cpow-of-ne-zero.md) | 320 | `result-track:18a862853638995bf8e27e38d8fbe7522a601ad2c57a03143222adee285cd72a` |
| 57 | `theorem` | [norm_cpow_of_imp](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-cpow-of-imp.md) | 325 | `result-track:02860dbdfe8f8f2d1f127cbf4a0610bb8abde443dd7d5f38a7b3f22a2ca12da4` |
| 58 | `theorem` | [norm_cpow_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-cpow-le.md) | 333 | `result-track:c2192a8eb24f78526d703804d342e9ebaf2c1327da72484dc10294ce148fcb5f` |
| 59 | `theorem` | [norm_cpow_real](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-cpow-real.md) | 339 | `result-track:a6ef5954ea1893f95bff222eeca470237ef0457d38b1798936a8c0f874146999` |
| 60 | `theorem` | [norm_cpow_inv_nat](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-cpow-inv-nat.md) | 343 | `result-track:b15123c648ccf002e5829f77b93c49a2a7459b7f5685c46162257b4a71782eb3` |
| 61 | `theorem` | [norm_cpow_eq_rpow_re_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-cpow-eq-rpow-re-of-pos.md) | 346 | `result-track:45b3c61eca0d6a330f45fa439f05f30897337fdc4ad3c47f11d861db780356e0` |
| 62 | `theorem` | [norm_cpow_eq_rpow_re_of_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-cpow-eq-rpow-re-of-nonneg.md) | 350 | `result-track:6c07b6ff40c02135aac988113e88e4febb11cabbae5a2bbf9eff143da35ca270` |
| 63 | `lemma` | [norm_ofReal_cpow_eventually_eq_atTop](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-ofreal-cpow-eventually-eq-attop.md) | 355 | `result-track:73aad6b7cb06e16e6d685a1f1cac64f7bda21bbef71a76b44ee83fdf15666b32` |
| 64 | `lemma` | [norm_natCast_cpow_of_re_ne_zero](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-natcast-cpow-of-re-ne-zero.md) | 360 | `result-track:b2c630febeefd43ca6c5d85f4baf4d862d8b1cb74bef3e6b4b7549c4f74c45fc` |
| 65 | `lemma` | [norm_natCast_cpow_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-natcast-cpow-of-pos.md) | 364 | `result-track:c3dc811b6ae9d2f63330aaef170480e8892dd9ec04cdc67fb0440490dc6ade02` |
| 66 | `lemma` | [norm_natCast_cpow_pos_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-natcast-cpow-pos-of-pos.md) | 368 | `result-track:c13bbd8036a000f7ab46caa9cc6a3921df226b1df1fdd25caec25a2f5bbe2275` |
| 67 | `theorem` | [cpow_mul_ofReal_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/cpow-mul-ofreal-nonneg.md) | 371 | `result-track:873067361ee9a2ef8286e0393c86c4c6be2941d6cc3602e9e48717cd18c05e08` |
| 68 | `def` | [evalRpowZero](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/evalrpowzero.md) | 387 | `declaration-track:d443fed6b10c7accf2f49ef678fd0d918ce98d6e2460bdca1b05bdc06d21d6f6` |
| 69 | `def` | [evalRpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/evalrpow-source-edition-2.md) | 398 | `declaration-track:e6ac63cd9b06b0925004030cd8a8cc833354cca4c11dc75ef21a2e292c9f9820` |
| 70 | `theorem` | [rpow_mul](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-mul.md) | 423 | `result-track:cf840541a4cc004897e34dadb1f3b039e8c409ccb6958590b81fa519c949384e` |
| 71 | `lemma` | [rpow_pow_comm](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-pow-comm.md) | 429 | `result-track:c3881179af911353ac6247e00bf365fc426f21b7ae4bc47d7d1033c97bd95cae` |
| 72 | `lemma` | [rpow_zpow_comm](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-zpow-comm.md) | 432 | `result-track:c51d99800ffe3452b107d193df047af338893c876686595677e95d8e00226eae` |
| 73 | `lemma` | [rpow_add_intCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-add-intcast-source-edition-2.md) | 435 | `result-track:5151496a0e635def9444968fa04f2ad0368d5f9583c7bca328f854bb67c3c5e7` |
| 74 | `lemma` | [rpow_add_natCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-add-natcast-source-edition-2.md) | 440 | `result-track:c985ffb28547a9dfef46c91d35e1b90ef20b491f0a997826688fa9925bce38d8` |
| 75 | `lemma` | [rpow_sub_intCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sub-intcast.md) | 443 | `result-track:87050d89f4595e5f4518dfe1b01aec76aa4f6de8448fc315ef435c88c081b3d1` |
| 76 | `lemma` | [rpow_sub_natCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sub-natcast.md) | 446 | `result-track:4ce037fc01667da750d5cbdcaa58607d680a5598edbf7e0363eb9dbe211d5f0a` |
| 77 | `lemma` | [rpow_add_intCast'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-add-intcast.md) | 449 | `result-track:47ba340285a32b3408d1d52ae907656bde5311b63b78668382d88fb4ade69a15` |
| 78 | `lemma` | [rpow_add_natCast'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-add-natcast.md) | 452 | `result-track:1e5d3cec999cb40c6d9dd9751bae256c45c88e6135426206298f87b79ca7d902` |
| 79 | `lemma` | [rpow_sub_intCast'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sub-intcast-source-edition-2.md) | 455 | `result-track:e4c537ace16ec0ec5470694f4ac542badcfd54cdd040d2a3d2abe79b732bb25a` |
| 80 | `lemma` | [rpow_sub_natCast'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sub-natcast-source-edition-2.md) | 458 | `result-track:8193c7953b00e5407feeac6877048fb7093c60fa68282c0f33c6833cbea8c7e3` |
| 81 | `theorem` | [rpow_add_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-add-one.md) | 461 | `result-track:36367a6943c38ffde16b69ea46578c9d81ea99ee7a18b2828b9918483640ca7e` |
| 82 | `theorem` | [rpow_sub_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sub-one.md) | 464 | `result-track:37c58deb236185876d454dcda0e1080ec4583c26d119cfc0c0891c3ef5ddb3d6` |
| 83 | `lemma` | [rpow_add_one'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-add-one-source-edition-2.md) | 467 | `result-track:fb3119333d03368b06f2e597bdfa00e7ebb3b69454daee1c196eef70a61598fe` |
| 84 | `lemma` | [rpow_one_add'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-one-add.md) | 470 | `result-track:249b3744560e8f0b4d8f727b1222325c11e0368a561c058bab0f09d4ca4bab97` |
| 85 | `lemma` | [rpow_sub_one'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-sub-one-source-edition-2.md) | 473 | `result-track:93fb0db116564eccc0804523003f02f75f267051d74479d6b008036831d344b9` |
| 86 | `lemma` | [rpow_one_sub'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-one-sub.md) | 476 | `result-track:50fcb4148aa4a881ef2bf3fadab79cb5dab063f25a505ba4e8e43507b034c917` |
| 87 | `theorem` | [rpow_two](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-two.md) | 479 | `result-track:451173dda35d6ddefb4ed6d03ce34da52a2e757b8353c176b5b38b39f2ef69da` |
| 88 | `theorem` | [rpow_neg_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-neg-one.md) | 482 | `result-track:ff76e3201766ab540289f4189dd349d9d3662327aef97eba506d21ba4f0865b7` |
| 89 | `theorem` | [mul_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/mul-rpow.md) | 485 | `result-track:18ee4e914493a949a31b0e34abf68bcacbb2c31be1c6d8b3d963889c7f46ff85` |
| 90 | `theorem` | [inv_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/inv-rpow.md) | 493 | `result-track:956bec073fe272bfcf123dbd1c2c82bf06545793d9bc904ae991ac7b555e990c` |
| 91 | `theorem` | [div_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/div-rpow.md) | 496 | `result-track:46b480f697c416645c513d566cff35d192bd782108c9e02ded503d7a9e6264e4` |
| 92 | `theorem` | [log_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/log-rpow.md) | 502 | `result-track:678a041991ffe87ebb33d29da39069d03c3e62eaa109b001a0e43068762ac47e` |
| 93 | `theorem` | [mul_log_eq_log_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/mul-log-eq-log-iff.md) | 506 | `result-track:5148d8bb7c581c412cda45974bd3e8e75ad484d42fbc9ffe3b7d64ce02a35b1e` |
| 94 | `lemma` | [rpow_rpow_inv](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-rpow-inv.md) | 511 | `result-track:27ecdc78a16106ca0da0096f2484dda9ab8221137e049123eb2f0274357f8e68` |
| 95 | `lemma` | [rpow_inv_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-inv-rpow.md) | 514 | `result-track:3c7249253476568cce171af955b79cab86ce61520cb3fa980c35de210d74e9d3` |
| 96 | `theorem` | [pow_rpow_inv_natCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/pow-rpow-inv-natcast.md) | 517 | `result-track:4fd51ad11c80f80bc4289027f939bf6a3697fad1cd3a65ed0f1c46a99ccb39b7` |
| 97 | `theorem` | [rpow_inv_natCast_pow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-inv-natcast-pow.md) | 521 | `result-track:13cd2d1907876cffcc4f4619805558c5d8712f408111301861944fe2338cf8d0` |
| 98 | `lemma` | [rpow_natCast_mul](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-natcast-mul.md) | 525 | `result-track:d06d892c007ec87fe91db6042bfc3d220f82d9a11d6a065bd075f69c3d4a3bcf` |
| 99 | `lemma` | [rpow_mul_natCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-mul-natcast.md) | 528 | `result-track:0b7a013ca24e202e58ce0086960c4c610bb9d30abf8947eb902525dd64bfefab` |
| 100 | `lemma` | [rpow_intCast_mul](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-intcast-mul.md) | 531 | `result-track:93f0d74c1225e030f01d8b7ef716e0d598720cbd59845bf610b453a1de3c62ca` |
| 101 | `lemma` | [rpow_mul_intCast](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-mul-intcast.md) | 534 | `result-track:88c61ad13b3749f18789212794899a08305d0a10ce0c4ccc6915cc212ff3cf43` |
| 102 | `theorem` | [rpow_lt_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-rpow.md) | 546 | `result-track:20132b6306c671a464f7d85d2cfc066f44ee01807a447f88518da82a9c9eb86b` |
| 103 | `theorem` | [strictMonoOn_rpow_Ici_of_exponent_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/strictmonoon-rpow-ici-of-exponent-pos.md) | 553 | `result-track:3168455562b74a33dae1c814361fb403c77da72a91751908e8cd8aecea6873d6` |
| 104 | `theorem` | [rpow_le_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow.md) | 558 | `result-track:c121161c0ee6e236c780c28a7ac0eae70cf5acfd48f7fadab5379db26ee39768` |
| 105 | `theorem` | [monotoneOn_rpow_Ici_of_exponent_nonneg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/monotoneon-rpow-ici-of-exponent-nonneg.md) | 563 | `result-track:9ef972b01d285437aa0c26bc51a27c96a6f7962a752dea02bc39752f179c1125` |
| 106 | `lemma` | [rpow_lt_rpow_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-rpow-of-neg.md) | 567 | `result-track:da9044ee8776215ee14c7005dc53bf20deb1709452ae1608a98f516a11e48f85` |
| 107 | `lemma` | [rpow_le_rpow_of_nonpos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-of-nonpos.md) | 573 | `result-track:52a7a30f2909beac363e1e692ba3b6c3d8fef7a3564bbbb28ddd5819100db21d` |
| 108 | `theorem` | [rpow_lt_rpow_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-rpow-iff.md) | 579 | `result-track:03d1517c5a193f74fdf6bab6c77ca9017fa150a438615cdf58b4c55366c99640` |
| 109 | `theorem` | [rpow_le_rpow_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-iff.md) | 582 | `result-track:b1a86a182157c476473f26df8411aa27ab45e2ac15933dc7594c163dae6b28f1` |
| 110 | `lemma` | [rpow_lt_rpow_iff_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-rpow-iff-of-neg.md) | 585 | `result-track:21ef4878255d0f53ec32f87276b3e75ac2353f5fe89e59c84bbe6873f5ea495c` |
| 111 | `lemma` | [rpow_le_rpow_iff_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-iff-of-neg.md) | 589 | `result-track:2324fa7defa739f654ce5579c9d75b02341d62fb6f7b8825990ee96c0e7e8cdc` |
| 112 | `lemma` | [le_rpow_inv_iff_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-rpow-inv-iff-of-pos.md) | 592 | `result-track:6e62a41429d6b315346d732cdf1c4a0fff2195f63532473aeb9acf55b8877515` |
| 113 | `lemma` | [rpow_inv_le_iff_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-inv-le-iff-of-pos.md) | 595 | `result-track:fa7090b6e6656a4777ec69f33df629cea2b271b1dd7d5f546fd48e73d7d13768` |
| 114 | `lemma` | [lt_rpow_inv_iff_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-rpow-inv-iff-of-pos.md) | 598 | `result-track:3f1691d83ffbeaf0e5ad07b15b9a881ad651b29ebbdef8f6c038a142c741194e` |
| 115 | `lemma` | [rpow_inv_lt_iff_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-inv-lt-iff-of-pos.md) | 601 | `result-track:796aad94e0f18ac66b9c27c1be272666e09d0635cc7a79aecb9f56ffdca629d1` |
| 116 | `theorem` | [le_rpow_inv_iff_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-rpow-inv-iff-of-neg.md) | 604 | `result-track:149317ed66c7d709d1549eb57e2ff655f19dd08aae4e15794fa3843353b9b557` |
| 117 | `theorem` | [lt_rpow_inv_iff_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-rpow-inv-iff-of-neg.md) | 608 | `result-track:eab7ea20556eb1945ad6694f5780827da7b8fee4b0d70ccb28457ee3f36480c3` |
| 118 | `theorem` | [rpow_inv_lt_iff_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-inv-lt-iff-of-neg.md) | 612 | `result-track:4a38b176a1c0e760850e362fc00f2995964d32d412f837a157bd718d38335468` |
| 119 | `theorem` | [rpow_inv_le_iff_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-inv-le-iff-of-neg.md) | 616 | `result-track:2d87d9e7cfdf48c07040d2c525b706771ca730aa2b298aadfea74037f3b9c0ee` |
| 120 | `theorem` | [rpow_lt_rpow_of_exponent_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-rpow-of-exponent-lt.md) | 620 | `result-track:a015eae5eb236489c454b5a533781bc38ad79e47803d1313144855e1dc28789b` |
| 121 | `theorem` | [rpow_le_rpow_of_exponent_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-of-exponent-le.md) | 625 | `result-track:52c474a576cda59a8f13b87c94bd03ff46ffa1419e3dc65a936996be16bd36b5` |
| 122 | `theorem` | [strictAntiOn_rpow_Ioi_of_exponent_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/strictantion-rpow-ioi-of-exponent-neg.md) | 629 | `result-track:647c700371f55718863006a877a04b200c69c1f48b0ec5fa689e5cd211545eca` |
| 123 | `theorem` | [antitoneOn_rpow_Ioi_of_exponent_nonpos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/antitoneon-rpow-ioi-of-exponent-nonpos.md) | 633 | `result-track:14f7fa1d2c0a7940fcff6ebc91fbf0d88683b06adff37de8bb13e8da9d16cfd2` |
| 124 | `theorem` | [rpow_le_rpow_left_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-left-iff.md) | 638 | `result-track:f922c55fd11497877e44ee21fa9c0bd31411f8bcf16163f84b895da92c569ad8` |
| 125 | `theorem` | [rpow_lt_rpow_left_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-rpow-left-iff.md) | 644 | `result-track:4d4904c811100b6df8d19ce4df05819b41994b2a8eac45e8a709bc79cc75feba` |
| 126 | `theorem` | [rpow_lt_rpow_of_exponent_gt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-rpow-of-exponent-gt.md) | 647 | `result-track:a014ce91c3c83c0ab45d0f9706875d223467ab8660b3026a869d5186bc083cab` |
| 127 | `theorem` | [rpow_le_rpow_of_exponent_ge](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-of-exponent-ge.md) | 651 | `result-track:11764aa3e018c02cf732ab875a5c995c941c9a74db94d3a41de02fec6edd2ec7` |
| 128 | `theorem` | [rpow_le_rpow_left_iff_of_base_lt_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-left-iff-of-base-lt-one.md) | 656 | `result-track:c4ffc9eb0b3b510e0f165677d5bc8ebcc763626305ffb772f9e2edb78c93cf87` |
| 129 | `theorem` | [rpow_lt_rpow_left_iff_of_base_lt_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-rpow-left-iff-of-base-lt-one.md) | 662 | `result-track:c19dab6cb33c59ad53107df7a5af3c9382a753d0a24af201298676b3f83bf73b` |
| 130 | `theorem` | [rpow_lt_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-one.md) | 666 | `result-track:8b1224579b2f0669291d862b0d34db3d660c0fd01ff70824f37257c86a28da4e` |
| 131 | `theorem` | [rpow_le_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-one.md) | 670 | `result-track:f3ca4e14af09094da5ae3bf390a20bcd711924594b7762dc583147915c0bbe0e` |
| 132 | `theorem` | [rpow_lt_one_of_one_lt_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-one-of-one-lt-of-neg.md) | 674 | `result-track:6a8e9e61afdf51e01524b96af88164161f56dd3a15acb6211bc31d0bda80b507` |
| 133 | `theorem` | [rpow_le_one_of_one_le_of_nonpos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-one-of-one-le-of-nonpos.md) | 678 | `result-track:159b1eacc80fd1ee1132676c88c6d55f221015354d5dccb951817d43d767c75e` |
| 134 | `theorem` | [one_lt_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/one-lt-rpow.md) | 682 | `result-track:cf8d4a8740fe3aadfa6df82d8e7d65f46f7d79bacc01c5370f36bca501884de1` |
| 135 | `theorem` | [one_le_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/one-le-rpow.md) | 686 | `result-track:609694f8a2a3a7e8d52eb851d88fb72846d74f29774e4dccc4c3030ab1ff2f73` |
| 136 | `theorem` | [one_lt_rpow_of_pos_of_lt_one_of_neg](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/one-lt-rpow-of-pos-of-lt-one-of-neg.md) | 690 | `result-track:cee0dedadd66956266d2c458a253391768aff589753c96f262e66e73cc15c50f` |
| 137 | `theorem` | [one_le_rpow_of_pos_of_le_one_of_nonpos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/one-le-rpow-of-pos-of-le-one-of-nonpos.md) | 695 | `result-track:0a39e6a2650e4d797ed9ed22fa9bbd2d8254360083c4ebf1eb6bef1530c2b92f` |
| 138 | `theorem` | [rpow_lt_one_iff_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-one-iff-of-pos.md) | 700 | `result-track:f2345209b7aa2a39394bd219f9402138f3fa713f09e6c3c0859d3d4b48b1e4c0` |
| 139 | `theorem` | [rpow_lt_one_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-one-iff-source-edition-2.md) | 703 | `result-track:c330f130a396ce34c9185c96622fd07e150655feb5dfbb40551971e369cc1a5b` |
| 140 | `theorem` | [rpow_lt_one_iff'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-one-iff.md) | 709 | `result-track:a329a1b6d40fc6a3e74cb78cad60b60b27fcdc32dbc780075efb141d1bb1b985` |
| 141 | `theorem` | [one_lt_rpow_iff_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/one-lt-rpow-iff-of-pos.md) | 713 | `result-track:5538d5cf7c9df4bd666f450bcf339790751ab2c06f7f62e6ec026483625f5867` |
| 142 | `theorem` | [one_lt_rpow_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/one-lt-rpow-iff.md) | 716 | `result-track:fc334f823902ae8105f34bf64047340675e0ab838adf60f465de125a9e47cbab` |
| 143 | `theorem` | [rpow_le_rpow_of_exponent_ge_of_imp](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-of-exponent-ge-of-imp.md) | 723 | `result-track:3ff486d77162649104d976f079db3809ea644486b5f77b849c663088a08ce389` |
| 144 | `theorem` | [rpow_le_rpow_of_exponent_ge'](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-of-exponent-ge-source-edition-2.md) | 735 | `result-track:570ff9e379ce585bafc80dbc5845b320d52c3f2b855398fa37f0a01fad2e2a4b` |
| 145 | `lemma` | [rpow_max](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-max.md) | 739 | `result-track:4b925e0f556378d109562b42d55785f8062ffcbe887f7f5b80d69df0065dc83d` |
| 146 | `theorem` | [self_le_rpow_of_le_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/self-le-rpow-of-le-one.md) | 745 | `result-track:d197fcca772c017ffb9ffb708ff5c84c5a58c33720a3723145804338f7dc516a` |
| 147 | `theorem` | [self_le_rpow_of_one_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/self-le-rpow-of-one-le.md) | 749 | `result-track:c836ef65091eb425db0a249109571577541e6e405ddb0ac35c84c9befe3a7736` |
| 148 | `theorem` | [rpow_le_self_of_le_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-self-of-le-one.md) | 752 | `result-track:b1b26e7d6fe6587b0a341599267d8207d6fa733038ffe139906b25e8772dadf5` |
| 149 | `theorem` | [rpow_le_self_of_one_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-self-of-one-le.md) | 756 | `result-track:244c085df0316b666747e908c7415570191ff8d683fcc44a8b4c5d721ffef289` |
| 150 | `theorem` | [self_lt_rpow_of_lt_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/self-lt-rpow-of-lt-one.md) | 759 | `result-track:9b54ffcac01c270556d202fd922651e502cef6bc7834441bf009b94a6161547d` |
| 151 | `theorem` | [self_lt_rpow_of_one_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/self-lt-rpow-of-one-lt.md) | 762 | `result-track:d492b555f6d84de8bcb7ef0d051704f53aaf8d4802780b147b20125babd4b09b` |
| 152 | `theorem` | [rpow_lt_self_of_lt_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-self-of-lt-one.md) | 765 | `result-track:704fff770bd1a6a5554ef455efd1ead756df6121c2adb51b56a84b6bcdad0b3b` |
| 153 | `theorem` | [rpow_lt_self_of_one_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-self-of-one-lt.md) | 768 | `result-track:c70a97544f6b11109d5906c20bb8518ad5a9aa029042200500fce7b114632db0` |
| 154 | `theorem` | [rpow_left_injOn](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-left-injon.md) | 771 | `result-track:7e28868e08ebd6a05beccd67601405126c38ffb802dbcdd3f18220cb51340921` |
| 155 | `lemma` | [rpow_left_inj](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-left-inj.md) | 775 | `result-track:7171a85d4560fb1c2b9b337006058d00bcda7fd4676c545fcebadce3e7fe566b` |
| 156 | `lemma` | [rpow_inv_eq](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-inv-eq.md) | 778 | `result-track:a6bc10edf2856bc999b50c056e90e56cc475f6e7c8010f984b8e5cf1dedd865c` |
| 157 | `lemma` | [eq_rpow_inv](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/eq-rpow-inv.md) | 781 | `result-track:5d5e3dfc54156cc0de87ba849c2429285c40af5d5418cb279be822e597c43a44` |
| 158 | `theorem` | [le_rpow_iff_log_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-rpow-iff-log-le.md) | 784 | `result-track:3c99055c0e28aa6105120435e4c89419958301a654ff9dd0fd43f758f472f9df` |
| 159 | `lemma` | [le_pow_iff_log_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-pow-iff-log-le.md) | 787 | `result-track:04ea07ba99a31146117231a5cc91cc846ff09eceabec5bceb4083da72afacb1c` |
| 160 | `lemma` | [le_zpow_iff_log_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-zpow-iff-log-le.md) | 790 | `result-track:9da1a85a40c333399ad15fe10e6387a40f8d1196860da5ba1653476428e1a691` |
| 161 | `lemma` | [le_rpow_of_log_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-rpow-of-log-le.md) | 793 | `result-track:fe42cdd8075bf14d6e874503e237c7947702343b9f4e8e34487994d737d973fc` |
| 162 | `lemma` | [le_pow_of_log_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-pow-of-log-le.md) | 798 | `result-track:8b1126eb5e0313caa0c80a8b7912a8fb24d8f7654a9b0ab5658225a8f73c8200` |
| 163 | `lemma` | [le_zpow_of_log_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-zpow-of-log-le.md) | 801 | `result-track:737cd5d1784d5f90f8d405b4496c881038164757d584b0c76ca55d6b2ba5c007` |
| 164 | `theorem` | [lt_rpow_iff_log_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-rpow-iff-log-lt.md) | 804 | `result-track:0c2d98c153fa8949b5d8d9702db3148b51056b90e1fb561c795442d0cffe3c15` |
| 165 | `lemma` | [lt_pow_iff_log_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-pow-iff-log-lt.md) | 807 | `result-track:524cd4740d543b7eaf2de55cd58ad09055aebe33a40af0b3bc0c487c0d7d8be1` |
| 166 | `lemma` | [lt_zpow_iff_log_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-zpow-iff-log-lt.md) | 810 | `result-track:98a00faea794e4b83a73055f89072b989017a2b6988c9d85bad33d6804594c11` |
| 167 | `lemma` | [lt_rpow_of_log_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-rpow-of-log-lt.md) | 813 | `result-track:cb3dfdde9676e4940f70328f726cae0488dd76817caa6eaa1766fd4a61b3678f` |
| 168 | `lemma` | [lt_pow_of_log_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-pow-of-log-lt.md) | 818 | `result-track:1a1c2f01151891d818ab8e14b6cc3c8b3a0430f48206f4d10a3a1bcaa644bacf` |
| 169 | `lemma` | [lt_zpow_of_log_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-zpow-of-log-lt.md) | 821 | `result-track:b5872ed0d07b412a8cd5917e18feeba4c6f13c0bcf8e1e99ce1ad8b10152f606` |
| 170 | `lemma` | [rpow_le_iff_le_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-iff-le-log.md) | 824 | `result-track:fd7a7d19db22513488efb885ca15d41de4914eaa211a2e9ab8028e440a055f6d` |
| 171 | `lemma` | [pow_le_iff_le_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/pow-le-iff-le-log.md) | 827 | `result-track:6649efe844b95afb523abc29f342271d777ac97383da998b3580400f07690432` |
| 172 | `lemma` | [zpow_le_iff_le_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/zpow-le-iff-le-log.md) | 830 | `result-track:ff9ddd11b3540c921b147805897b62b4b394594cfb55614df2a04fe97a66461f` |
| 173 | `lemma` | [le_log_of_rpow_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-log-of-rpow-le.md) | 833 | `result-track:8ac475c8cfb3f3eea2d478427980875c5db6afef54f16a0707398754e3f031e7` |
| 174 | `lemma` | [le_log_of_pow_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-log-of-pow-le.md) | 836 | `result-track:4b49cddeb4411adc6c44734dc42ee715c1b0d2b82d62c38d46a9e82610c2384f` |
| 175 | `lemma` | [le_log_of_zpow_le](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/le-log-of-zpow-le.md) | 839 | `result-track:20dca0c313a10973fea8875849e0faa7bf0fd02c7ff4699614d31198dc90de36` |
| 176 | `lemma` | [rpow_le_of_le_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-of-le-log.md) | 842 | `result-track:a2e7ebc3740a9bac3fbfa0df63d76f4a18044b9a861e2ec7d03f95d619dfba03` |
| 177 | `lemma` | [pow_le_of_le_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/pow-le-of-le-log.md) | 847 | `result-track:b38342712acba6f5bd54ff11377bddd427e08f8d9b19eb317f901e9e56789062` |
| 178 | `lemma` | [zpow_le_of_le_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/zpow-le-of-le-log.md) | 850 | `result-track:b94d0118b5b9e63349ddbe864e5993ffac2e7bfeec48a108047cbb539a286fca` |
| 179 | `lemma` | [rpow_lt_iff_lt_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-iff-lt-log.md) | 853 | `result-track:62d846afc4306f08b5579eb6a180fe0576a26f1c3b04fdddc18560eb135264d4` |
| 180 | `lemma` | [pow_lt_iff_lt_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/pow-lt-iff-lt-log.md) | 856 | `result-track:fd0f388712254de9f011ab9fb40e0d0b399a6e5dab26327c3f8274b54abf3386` |
| 181 | `lemma` | [zpow_lt_iff_lt_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/zpow-lt-iff-lt-log.md) | 859 | `result-track:6e5856201d93c3c8015e203016a1c0899bdd0f01487e76e3b616bd6a9365f74d` |
| 182 | `lemma` | [lt_log_of_rpow_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-log-of-rpow-lt.md) | 862 | `result-track:19bb7cbc12c39d75a0d91cf16fc94ab4b0b9ce48e650b6ae24d15683ba8148b4` |
| 183 | `lemma` | [lt_log_of_pow_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-log-of-pow-lt.md) | 865 | `result-track:14244d388e9fe11eb4bd96c659777faa099a7163039abe9e0f78a3cb3a9b3908` |
| 184 | `lemma` | [lt_log_of_zpow_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/lt-log-of-zpow-lt.md) | 868 | `result-track:7c8f3789cf47538c0a87606a57f5114e09c41a4a0816a4116f9fe687f0c1d1fb` |
| 185 | `lemma` | [rpow_lt_of_lt_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-lt-of-lt-log.md) | 871 | `result-track:dee722a6bf0ca20178272a40bcc8d1cae5c0d8ea892f28fb7aee154e1623893c` |
| 186 | `lemma` | [pow_lt_of_lt_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/pow-lt-of-lt-log.md) | 876 | `result-track:3fa1e887c2d5c06f7be2632a0e1bd6c58c34f4d523f5a4407453173ab6dfa074` |
| 187 | `lemma` | [zpow_lt_of_lt_log](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/zpow-lt-of-lt-log.md) | 879 | `result-track:e26d7dd3e9f0094045c45df9f3ba4053218dd6ffb835dc85421549d16e34fcd2` |
| 188 | `theorem` | [rpow_le_one_iff_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-one-iff-of-pos.md) | 882 | `result-track:32528228b6872614a933e628264555ec0d4b72f33c56f2d895c9969ea9c0dfa6` |
| 189 | `theorem` | [abs_log_mul_self_rpow_lt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/abs-log-mul-self-rpow-lt.md) | 886 | `result-track:28ea621f5209f0134cdb4395190f9a347be06f858b3223357237ba1674fd7a38` |
| 190 | `lemma` | [log_le_rpow_div](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/log-le-rpow-div.md) | 893 | `result-track:dfa1f2ec7dea2f91037e99fa99c4f3b3d1256b8162c69f68d510a1fbae7b75b1` |
| 191 | `lemma` | [log_natCast_le_rpow_div](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/log-natcast-le-rpow-div.md) | 902 | `result-track:c4eb9092acdab4cea59f8a58a4a064f926eeec8aa9461a37bc437fd29e1783c7` |
| 192 | `lemma` | [strictMono_rpow_of_base_gt_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/strictmono-rpow-of-base-gt-one.md) | 905 | `result-track:801df4e83ba5d9f46bf663891f6e5ba67f1322501cb49d82533db765a75ce74f` |
| 193 | `lemma` | [monotone_rpow_of_base_ge_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/monotone-rpow-of-base-ge-one.md) | 910 | `result-track:6bd5c842116e04d1bd60fd13035eef7cb9bfad994ffc2a4aa8563c57e31180f9` |
| 194 | `lemma` | [strictAnti_rpow_of_base_lt_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/strictanti-rpow-of-base-lt-one.md) | 916 | `result-track:df95fef909abd2703a3a9ce77c18f9bf32008ff1ddec633ce5df5549ef626e84` |
| 195 | `lemma` | [antitone_rpow_of_base_le_one](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/antitone-rpow-of-base-le-one.md) | 922 | `result-track:9b325b507a6bdf0f9d74f73bcd8570f50e797663de5fc2e7535341e361945f59` |
| 196 | `lemma` | [rpow_right_inj](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-right-inj.md) | 928 | `result-track:a2e6836b76e3dd2ddab5b7d52fbc9b320e49d114112c62d67fc9566d879b7f54` |
| 197 | `lemma` | [rpow_le_rpow_of_exponent_le_or_ge](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-le-rpow-of-exponent-le-or-ge.md) | 936 | `result-track:fa285d1457aaeeb199b4054ee83ca022572575aaaa885f9bfdbe412af8acef19` |
| 198 | `lemma` | [norm_prime_cpow_le_one_half](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-prime-cpow-le-one-half.md) | 946 | `result-track:91bb54ceea3481a94b4219ece7650965562e9b3f51e0cf916feb739f554fed81` |
| 199 | `lemma` | [one_sub_prime_cpow_ne_zero](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/one-sub-prime-cpow-ne-zero.md) | 954 | `result-track:80c5816f8b0e7fed19c70cdfa1ef4736b039bad8329473a7f9a3d51edcc78410` |
| 200 | `lemma` | [norm_natCast_cpow_le_norm_natCast_cpow_of_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-natcast-cpow-le-norm-natcast-cpow-of-pos.md) | 962 | `result-track:5441bdb27796c9572930b5027eb05dda6de204c9d38b0eadf22f3ad0be6ffcbe` |
| 201 | `lemma` | [norm_natCast_cpow_le_norm_natCast_cpow_iff](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-natcast-cpow-le-norm-natcast-cpow-iff.md) | 968 | `result-track:91c823ec4fd978a5daec7725378562641dd8b327a35cfc916ab04bcb8530b31e` |
| 202 | `lemma` | [norm_log_natCast_le_rpow_div](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/norm-log-natcast-le-rpow-div.md) | 973 | `result-track:f449b2e2c858ea0fbdd5f1b00993d0fc9dc3905643879ca27640a844925fd683` |
| 203 | `theorem` | [sqrt_eq_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/sqrt-eq-rpow.md) | 994 | `result-track:edf94f4c3ec10c8229de965ab866917aa41ead5641f6276a4a0e496cf6bc2a75` |
| 204 | `theorem` | [rpow_div_two_eq_sqrt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-div-two-eq-sqrt.md) | 1002 | `result-track:bd774d5cce496e697ad71e3e2ad70e89e4c191d432d9ab666031c414ca9042e3` |
| 205 | `lemma` | [cpow_inv_two_re](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/cpow-inv-two-re.md) | 1013 | `result-track:3e4fb328e86793d7ddcf7b1249d3f226dcd091ca652b855bddc2b53405967be7` |
| 206 | `lemma` | [cpow_inv_two_im_eq_sqrt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/cpow-inv-two-im-eq-sqrt.md) | 1018 | `result-track:eade9ff084e22bd72e45f038fd07a713b3b3498e1596fb6fa89b02e589cdf77d` |
| 207 | `lemma` | [cpow_inv_two_im_eq_neg_sqrt](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/cpow-inv-two-im-eq-neg-sqrt.md) | 1026 | `result-track:8fda799139806fc1c5ccf5e05ce7976930607f8ba01298fb7a1efbb064536777` |
| 208 | `lemma` | [abs_cpow_inv_two_im](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/abs-cpow-inv-two-im.md) | 1034 | `result-track:40fff7493fcc41136ceb0772ff95a7f845f80d28b22e7219867a53ae68bb649f` |
| 209 | `lemma` | [inv_natCast_cpow_ofReal_pos](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/inv-natcast-cpow-ofreal-pos.md) | 1040 | `result-track:78bdcd44bf84954f4b902b5e4aa3e4718b8bb15f5bba776c696eb88184ea4373` |
| 210 | `theorem` | [IsNat.rpow_eq_pow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/isnat-rpow-eq-pow.md) | 1057 | `result-track:6b3ede78788455c9829d5521a174ee4521c148d64f12036d18e516c0119020ad` |
| 211 | `theorem` | [IsInt.rpow_eq_inv_pow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/isint-rpow-eq-inv-pow.md) | 1060 | `result-track:57c405aae8ec33f31b01b45385a27e8603dce6b45a7bd1be5a79954e5e5ef659` |
| 212 | `theorem` | [IsNat.rpow_isNNRat](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/isnat-rpow-isnnrat.md) | 1071 | `result-track:3d8e77a746c3a0f1d34476455d739f7fcc6092c39bd2738a845edf3b37257629` |
| 213 | `theorem` | [IsNNRat.rpow_isNNRat](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/isnnrat-rpow-isnnrat.md) | 1079 | `result-track:93c6925173bc6c6f1a4eecaefb72d1699bd5f4133d61fb6457f33be41287298f` |
| 214 | `theorem` | [rpow_isRat_eq_inv_rpow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/rpow-israt-eq-inv-rpow.md) | 1089 | `result-track:42625da074627aa55560691e788e7f9effffa1ebeb30d81e68bd21779f97021a` |
| 215 | `def` | [proveIsNatRPowIsNNRat](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/proveisnatrpowisnnrat.md) | 1105 | `declaration-track:c7df935c5b745cdd02dacef5ed87526c749ce81935e2b57917ef2efc652f3f0b` |
| 216 | `def` | [evalRPow](../../../../SpecialFunctions/RealNamespacedPublicRpow.lean/declarations/evalrpow.md) | 1125 | `declaration-track:1e9145356fa8291748908d65fa5742a08c30341e92404aaae8ec714e6bf3093e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=716e9cb95f3e4fc17969ce58389abe9d48d284a217717b35e6b77c2f157d96a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Real/Variantcd352ea029cc2c81be163a34ec852f68b5a149968e2ca51ddff4a3184bb059ff.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Real/Variantcd352ea029cc2c81be163a34ec852f68b5a149968e2ca51ddff4a3184bb059ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
