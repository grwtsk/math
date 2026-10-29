# Verification target: Monoid Algebra Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41fa24e7b349efb6c692ac71a55ac42616a53d74",
  "lexical_observation_count": 166,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41fa24e7b349efb6c692ac71a55ac42616a53d74`.

Source path: `GRWTSK/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean.json)

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
| 1 | `structure` | [AddMonoidAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/addmonoidalgebra.md) | 64 | `declaration-track:8ba1773e906fe757a1e348e51e4213c3ea01e16ad8917c70cb71d9f24c796419` |
| 2 | `structure` | [MonoidAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/monoidalgebra.md) | 76 | `declaration-track:f6c28676960f9181287170d638191f48724ec22228692b589cdc2c3ea3e0010c` |
| 3 | `macro_rules` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/macro-rules-source-edition-2.md) | 93 | `declaration-track:7c9ee5f991d36daaec66a1b1a0d59ba258140baca2ac1e74439d8f6f5d2ba759` |
| 4 | `def` | [unexpander](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/unexpander.md) | 97 | `declaration-track:ac6c662ffb30594a9d826eba4d74cafe0dfbdb41d058e1ca4e63f46b12b2321c` |
| 5 | `def` | [delabOfCoeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/delabofcoeff.md) | 102 | `declaration-track:8f4d9aa864043a6cbdf54cae4467aceea9b6e8e389b5542ea715329e6184d49e` |
| 6 | `def` | [delabOfCoeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/delabofcoeff-source-edition-2.md) | 112 | `declaration-track:b83a4af931915a33a4198af3242b1f7c2534fb372ac7f31027784b3c06661dac` |
| 7 | `macro_rules` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/macro-rules.md) | 117 | `declaration-track:556a755f6458b448043794f8046e0a1b2f9353d7e5d56687c34553335a295ec4` |
| 8 | `def` | [unexpander](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/unexpander-source-edition-2.md) | 121 | `declaration-track:ae986ec3361fcb77941e70e8b9cf87f72bf60a0d82ac3103a9b197d03adac803` |
| 9 | `lemma` | [coeff_ofCoeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-ofcoeff.md) | 130 | `result-track:f21d1ba72a96a166b408ddd192d8f5682147e705d6d8b48a3d7480feef8afbcf` |
| 10 | `lemma` | [ofCoeff_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-coeff.md) | 131 | `result-track:9bf9dcca1a7ac9b9ea961bd958cd959ddec1068f57b9d6cb777948c7b33d5295` |
| 11 | `def` | [coeffEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeffequiv.md) | 136 | `declaration-track:f316172088eb0987f164e9d48823c6dffc6c8f7b1db9a63b43ef460556513f05` |
| 12 | `lemma` | [«forall»](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/forall.md) | 142 | `result-track:9d60017b5b06628da9a36050700ca0caeb7de7aa38b816a641683ccfa58e7a69` |
| 13 | `lemma` | [«exists»](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/exists.md) | 145 | `result-track:4f2caf577abfad2671b349c13022f8d8bdf006c58278d59fcdc99b06c9b112c4` |
| 14 | `lemma` | [coeff_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-injective.md) | 149 | `result-track:f5b1a672ecfa838ac813a51b3bf7714923ec5d13aa9f39445b6686c0ad932646` |
| 15 | `lemma` | [ofCoeff_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-injective.md) | 152 | `result-track:e411d356a61dff04ce15dcf6ae389ebb911659ac200e813cff7adbdfe8cf3766` |
| 16 | `lemma` | [coeff_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-inj.md) | 156 | `result-track:d59b87c944f53d9952a951b47f64f1da57adf420a9d83191d75a9b49911e58c5` |
| 17 | `lemma` | [ofCoeff_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-inj.md) | 159 | `result-track:55da7bc31ac893129a79ed5aa2bc3f700f91c2d83bbaa2359a3fe138d74cd504` |
| 18 | `instance` | [instInhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/instinhabited.md) | 164 | `declaration-track:99fba6b0b159f24406e547ec0de2f32c37d7872b5fa642ee5a93f85044daf2f9` |
| 19 | `instance` | [instNontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/instnontrivial.md) | 167 | `declaration-track:055725b3867c0d2fbbb7318c38f2de7c409cddabc077b492bb970490bedc3b07` |
| 20 | `instance` | [instUnique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/instunique.md) | 170 | `declaration-track:3e81449b1df1d26c81efe698790f115c716b836a5c77ae41b9af20cc448a18dd` |
| 21 | `instance` | [instDecidableEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/instdecidableeq.md) | 173 | `declaration-track:f347fcd746522ed4f9c8c301ec1d07699ca53cc3238fa9c548417de294041e05` |
| 22 | `instance` | [instAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/instaddmonoid.md) | 177 | `declaration-track:fda7f6ae00d1c90290bc87e7e6df7d9305d349264be4e6926d6e9c25b3adba42` |
| 23 | `instance` | [instAddCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/instaddcommmonoid.md) | 180 | `declaration-track:cc2c9e63fda4e951fb86a0f8ae1e2028c7580ece4489df99a9d325bc9cde8952` |
| 24 | `instance` | [instIsCancelAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/instiscanceladd.md) | 183 | `declaration-track:ae37eb71eebca68589f9ecce034c56d5d1ba270f8fdfe6c142ba4311e2b5c4ba` |
| 25 | `def` | [coeffAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeffaddequiv.md) | 189 | `declaration-track:1c9ca94648a81817816ca8287669ea0d9043cfe04bb9c0fb1a1f1e00595e6ae4` |
| 26 | `lemma` | [coeff_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-zero.md) | 191 | `result-track:dfd2c92cb0579e0481e0b105aa9b42af4ba66da4b4890370469ce520f601596a` |
| 27 | `lemma` | [ofCoeff_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-zero.md) | 192 | `result-track:8dc974730172cce5ec8e32a500d8049a5ce9e4b6cc9290b591d50146195ea11f` |
| 28 | `lemma` | [coeff_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-eq-zero.md) | 193 | `result-track:709eaac3de65a820880d20b8a62d204d76a3a609871706c70793e0f096e5fd5b` |
| 29 | `lemma` | [ofCoeff_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-eq-zero.md) | 194 | `result-track:9034626f85d12697c23e58dd8ae552873a331d95c4b036bd62552151699d3b2d` |
| 30 | `lemma` | [coeff_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-add.md) | 198 | `result-track:6bcba56ad1f3fd0636da486503320d6e8567589b930de3aad910b6ca28eb77ea` |
| 31 | `lemma` | [ofCoeff_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-add.md) | 201 | `result-track:bfae96662ebb6908fedc7b435efaf43d8f96fae2544a07bf511ef91c3cc896ae` |
| 32 | `lemma` | [coeff_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-sum.md) | 204 | `result-track:f91a028bd7a07f5f046acddbb195abd3c33644dd75522f5ccb373ef0d47965c6` |
| 33 | `lemma` | [ofCoeff_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-sum.md) | 208 | `result-track:d82e756084536914e6f0018900ce2f005a8a1c35be26de541e5c0635eac940e1` |
| 34 | `lemma` | [coeff_finsuppSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-finsuppsum.md) | 212 | `result-track:dd367ccdeddfc1abb736a582c98ccd09859b752b6a7263e3181bd32a387c517b` |
| 35 | `lemma` | [ofCoeff_finsuppSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-finsuppsum.md) | 216 | `result-track:f53a1c63266dfb54a1588e86fb7b461e0db3a901c6135a590602299ad8e22935` |
| 36 | `def` | [single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single.md) | 222 | `declaration-track:110b71110490afc82b53bb5d3bb4637ce5e351db22eb93fb7ded5d1c4a72891e` |
| 37 | `lemma` | [coeff_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-single.md) | 225 | `result-track:342fe467fdfbfa6662d6b964d2d0c198c0b456f6b7fd526608a67491df614e24` |
| 38 | `lemma` | [ofCoeff_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-single.md) | 228 | `result-track:7ab59ebbe5835e04685b677d09a9b863e35362c2073d44271d51a34beeb39d16` |
| 39 | `lemma` | [single_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-inj.md) | 231 | `result-track:3b8c52f8ac5a5d8691602e7d720e3eb2966e68794b89c6bb045d62b28e56bdf2` |
| 40 | `lemma` | [single_left_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-left-inj.md) | 235 | `result-track:cc1fb63c8c1620c2145f6b630d1d81c35778c340bd8604399f7249f56f20cc8a` |
| 41 | `lemma` | [single_right_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-right-inj.md) | 238 | `result-track:52c198dadc60206200d41b329c527abc9c7ad48f805bdfffb60df7c63a64251b` |
| 42 | `lemma` | [single_left_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-left-injective.md) | 245 | `result-track:35af9240b0f821b2e815c44d15e6024d5813af8dccf8f237f7e65abf036dfa6d` |
| 43 | `lemma` | [single_right_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-right-injective.md) | 249 | `result-track:23abf620572c147c8a02f1b7c54fd68b35d3e97468cc0a41125c9406ebf0e5a6` |
| 44 | `lemma` | [single_add_single_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-add-single-inj.md) | 252 | `result-track:a27e94489fd232d33e270527d85c1d01606847cec38924ef4078692e929054f0` |
| 45 | `def` | [erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/erase.md) | 259 | `declaration-track:04924f0708a371092276146b5940b9d0dae91aff10371fd837dc261862f75aff` |
| 46 | `lemma` | [coeff_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-erase.md) | 262 | `result-track:1cdf9fc9d8177453a5d8177615169ca764dc5481d1b3b4a81d9ffd3245e68aa7` |
| 47 | `lemma` | [ofCoeff_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-erase.md) | 265 | `result-track:49f78ddba30e1a55d7d232c1263d6c62da2303823df9bc55325c2adbfe25dfe2` |
| 48 | `lemma` | [erase_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/erase-zero.md) | 268 | `result-track:62cccce242998c27c6459583e6c6e7c94812fcaef95eb35bc916559a2ab5e2d4` |
| 49 | `lemma` | [erase_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/erase-single.md) | 271 | `result-track:4ae63a44b543b7cdcc85627bbb0701ff306ddc9e307d69e2ec2b8268b2d2e92e` |
| 50 | `def` | [update](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/update.md) | 278 | `declaration-track:92f62ce899854f647b8ef342b135e05145df49336dcef37ddb441ea83cd740c0` |
| 51 | `lemma` | [coeff_update](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-update.md) | 282 | `result-track:b98bfc971e8ec4fd4e80c4e9a9ecf647a74a494393dd06893298b51d185a6a6a` |
| 52 | `lemma` | [ofCoeff_update](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-update.md) | 286 | `result-track:aa9906f84c259db2d06071fc1e8d80b52f1475d9df9578ac04df3bf933778f43` |
| 53 | `instance` | [smulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/smulzeroclass.md) | 302 | `declaration-track:edad3c64e1d5a3ea7697c77dca0c47572e1be69d17a4cdc397741c2ead9c5c76` |
| 54 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/example.md) | 307 | `declaration-track:a7cafb3df41f7098513fc2bab130d1192c0e64cbc5305d81b7a8a4e08b042c8e` |
| 55 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/instance.md) | 311 | `declaration-track:1e3ac156aa13ec3075073f6c651ea7ed5bc7cc00b189fa4309ec4eac95fc74dd` |
| 56 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/example-source-edition-2.md) | 312 | `declaration-track:c9db7c16d911ebb625135ed9c3c0d00e9b9b41214541bfcca92c4a3b016f5f94` |
| 57 | `lemma` | [coeff_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-smul.md) | 318 | `result-track:dd4588ec25d2e8cf06cf335b1fe714cc47d7afa38adbf119c184fa2a5c9e1277` |
| 58 | `lemma` | [ofCoeff_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-smul.md) | 321 | `result-track:bb7722bb8911a9d38785d1137904684bff131cb1405eccf5afa59f153da76c77` |
| 59 | `lemma` | [coeff_smul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-smul-apply.md) | 324 | `result-track:802751e7a6b286322c162bed94ae468f087ec46f1cf93362c76b3b06b48658b4` |
| 60 | `lemma` | [smul_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/smul-single.md) | 329 | `result-track:68228a8b7c9ff889c944e1d667443ece351548905fdcadbe4d6bb9f89083ffd9` |
| 61 | `lemma` | [smul_single'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/smul-single-source-edition-2.md) | 332 | `result-track:7f5fda23f4b1e24ed10b7328a6c9cb4a07927afca131a916d395ca48770e1a6f` |
| 62 | `instance` | [distribSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/distribsmul.md) | 335 | `declaration-track:01430db8badb2f18d3b5ab3d26872716f884e7bd6e14445e0523a995549ce826` |
| 63 | `instance` | [isScalarTower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/isscalartower.md) | 339 | `declaration-track:6c08055b185a4c4d5ba8472683d9e561c5641cf4638e0113b33f6ef723ece3ab` |
| 64 | `instance` | [smulCommClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/smulcommclass.md) | 343 | `declaration-track:1c0084fdead48a8705cac576077c7f934b77ca49a07c4e0e041da09548d1e203` |
| 65 | `instance` | [isCentralScalar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/iscentralscalar.md) | 347 | `declaration-track:ac10bc56da95c15b4df32587751daa451254ead3dabbd99d95f4921333c2d8b5` |
| 66 | `lemma` | [single_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-zero.md) | 353 | `result-track:b965b986f7b7f528e9fd7868bd570ed49e7e1407194fbfed59cd061d4992ec74` |
| 67 | `lemma` | [single_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-add.md) | 356 | `result-track:17eb24eddeccd0194adc488b219ac562debb8eda683e89c213f26d759f051994` |
| 68 | `lemma` | [coe_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coe-add.md) | 360 | `result-track:b1976346e23454186af9b1682cf4ce2e85835923be54a604ae0fe9fdfb3b0816` |
| 69 | `lemma` | [single_add_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-add-erase.md) | 363 | `result-track:9aba540ca2e3e6d1ee0250c57be1c110b6349f3ffd6e160279eb500da21a1dc9` |
| 70 | `lemma` | [erase_add_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/erase-add-single.md) | 367 | `result-track:bea33d0d0a650eb1e8dedce9091c81f9eee3c4ca251716a4fb80f777d39b5859` |
| 71 | `def` | [singleAddHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/singleaddhom.md) | 377 | `declaration-track:baec85b76a61e1380e4660ec9bf77c227e87ffad37ac013d42698c09bf950a49` |
| 72 | `lemma` | [addMonoidHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/addmonoidhom-ext.md) | 387 | `result-track:d37ca26272d8222456a328126658c9dd18c1d994cae118c6831a61d81fdd2d9e` |
| 73 | `lemma` | [addHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/addhom-ext.md) | 409 | `result-track:95b124b8900b2060fe7af190afae607c75ed8f45906cc3889ce81c5bde992084` |
| 74 | `lemma` | [sum_single_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/sum-single-index.md) | 414 | `result-track:b41c0a084ac1090dcfedc1f53b7f56333b496ad3fc9160f64698b5cfa3dd9b3c` |
| 75 | `lemma` | [sum_coeff_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/sum-coeff-single.md) | 419 | `result-track:37ee4ca1e563168d190d23bf543c673ec93280f917e7520c024e42748d9d23b5` |
| 76 | `theorem` | [coeff_single_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-single-apply.md) | 425 | `result-track:e26a71796a0078f23057b76de60d22d44040b8bc34784e865a112d81800f4621` |
| 77 | `lemma` | [single_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-eq-zero.md) | 432 | `result-track:bf4d44be610c73d7dd779aae6a7a6fcdf2e53419808555f92767e5ee8e0e4f61` |
| 78 | `lemma` | [single_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-ne-zero.md) | 434 | `result-track:340532ef2f2f936dc7f0a992a6bfa37276cd27da301f0e52d559a15756cc93b3` |
| 79 | `lemma` | [induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/induction.md) | 437 | `result-track:c3a08fe02c43daeb3aa7d67a8bbaf4d85b40d07ffada7d16f9a6e2770fb08946` |
| 80 | `lemma` | [induction_linear](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/induction-linear.md) | 445 | `result-track:0c9ffda04bc3947f4cb35723f63350c045b28dfd3aa3eb8be4eb6bebb0b96b5d` |
| 81 | `lemma` | [addSubmonoidClosure_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/addsubmonoidclosure-single.md) | 452 | `result-track:0f2d883e54be4774b7d27823b365122b7f556639e0f11576f81eb7beb02bdbed` |
| 82 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/one.md) | 465 | `declaration-track:c999885d9830c9ef481b84631c249f7f026ebd1f4118c9cfcbce44bac7f59bb7` |
| 83 | `lemma` | [one_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/one-def.md) | 468 | `result-track:2b590b1503a4766c5fc9f4b9be8507e79a0493f53c12e429e8c54320c7891995` |
| 84 | `lemma` | [coeff_one_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-one-one.md) | 471 | `result-track:0df7635e0a2e0a99642e4fa8aa8936f6812dad098ebd09a112ba1a02ab363525` |
| 85 | `def` | [_root_.AddMonoidAlgebra.mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/root-addmonoidalgebra-mul.md) | 485 | `declaration-track:21e29e51f077f30cde507e97154237c9508c6c15ae03ea71c235fe3f9a4a6000` |
| 86 | `def` | [mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/mul.md) | 491 | `declaration-track:b56412a794d1af6acd617636ce9f1b5c4c5046d31322db6adeb5e2c5ed4ba146` |
| 87 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/instmul.md) | 499 | `declaration-track:09598736b5002679cfd7ff3fd9f12405cbd382a46cc83345403acd5ff53bcf9c` |
| 88 | `lemma` | [mul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/mul-def.md) | 502 | `result-track:2558a17dad2bfcca35958e2f769fe0a6d6d2c5dce4209779460afc8fc1389364` |
| 89 | `instance` | [nonUnitalNonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/nonunitalnonassocsemiring.md) | 507 | `declaration-track:264bb1ef52925ed4fed9ea6958155a9c713631cd7a78477f93b7c3140df8caee` |
| 90 | `lemma` | [coeff_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-mul.md) | 514 | `result-track:370fc5e0fc69117f6a214e8c8ed08cacfb2560c8d50804e6f049456bb10c9f1a` |
| 91 | `lemma` | [coeff_mul_antidiag](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-mul-antidiag.md) | 525 | `result-track:801241ac31eb736d65d15f81c58fac6beafcbdda59bcbe97a804e206f3347c90` |
| 92 | `lemma` | [single_mul_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-mul-single.md) | 547 | `result-track:18034e1281de391f03c1a1c9b2ecadd8b856c9b1793366bbd37e4ff0461d857f` |
| 93 | `lemma` | [single_commute_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-commute-single.md) | 551 | `result-track:0cdc8bf77c97666282cd510038102e3437d4c88a2d3ba7cfa68d01415776250a` |
| 94 | `lemma` | [single_commute](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-commute.md) | 555 | `result-track:c4ff24da2c2ea261d59d6b29f0d1edc49f0b592606e6dd8e3c79bcca9229c3b2` |
| 95 | `lemma` | [coeff_mul_single_eq_coeff_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-mul-single-eq-coeff-mul.md) | 562 | `result-track:4974cb41a4f80cfb573872d4b1f748114adda594d211ebfcf0b17ac39c92c84a` |
| 96 | `lemma` | [coeff_single_mul_eq_mul_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-single-mul-eq-mul-coeff.md) | 574 | `result-track:307cbdde6c949a172aa35c05bf097675eebd7528380dc8bc6afb9f890a30d24d` |
| 97 | `lemma` | [coeff_mul_single_of_forall_mul_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-mul-single-of-forall-mul-ne.md) | 586 | `result-track:6db86e79ea3b41ecfc819a2613c8509c2172f822de9ea6b875048e83fab9c654` |
| 98 | `lemma` | [coeff_single_mul_of_forall_mul_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-single-mul-of-forall-mul-ne.md) | 590 | `result-track:9350cf52e299d916b0e4d50b3ad7ea0e545f3648a90493fa0993363a22c291ba` |
| 99 | `lemma` | [mul_single_apply_of_not_exists_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/mul-single-apply-of-not-exists-mul.md) | 595 | `result-track:56ed40e6a96b6d045492741d52247366124931920720b7c2a1db183faa306890` |
| 100 | `lemma` | [single_mul_apply_of_not_exists_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-mul-apply-of-not-exists-mul.md) | 601 | `result-track:1952f83a1be85433f124e8cf15187e99fa7a7a0238666c4e6f5568250a3812e1` |
| 101 | `def` | [ofMagma](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofmagma-source-edition-2.md) | 608 | `declaration-track:50243719304b77f136139a756d1c4d95cecd3673fb6cb0c5939b53117ab5b2aa` |
| 102 | `instance` | [nonUnitalSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/nonunitalsemiring.md) | 618 | `declaration-track:c11fdfb5bdcd85b5b1a302ac30aaed66b734208095af8d95a7a4a04aeab4f2c2` |
| 103 | `instance` | [nonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/nonassocsemiring.md) | 627 | `declaration-track:a8986e9d07ac29d210dcc8183f05db0463ba519a7e5cc6d03203111c61839da0` |
| 104 | `lemma` | [natCast_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/natcast-def.md) | 635 | `result-track:8e771204416e2c50cc6e20bbb4222f186f3ca4826fb133cfedcb6ca2dfd83d55` |
| 105 | `lemma` | [ofNat_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofnat-def.md) | 638 | `result-track:e486fa3207ddb3ab7c4387b1083d260591601e6cb92e2dc5450bbfbdb940e040` |
| 106 | `lemma` | [coeff_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-natcast.md) | 641 | `result-track:0c5dd9c10d7ad44d58d0a9873bfe574a466e80654447b925c27ce0d7fecd2211` |
| 107 | `lemma` | [coeff_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-ofnat.md) | 644 | `result-track:921ff8d3722dfa63dd2e97fc4867d0568bb75192c8f11dbda1ade15e5ac4c5e5` |
| 108 | `lemma` | [coeff_mul_single_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-mul-single-one.md) | 647 | `result-track:3df06012f2859a8357ab927d3f4a0e550cdc351c7c0f076cdab67281e946889a` |
| 109 | `lemma` | [coeff_single_one_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-single-one-mul.md) | 654 | `result-track:b4359dae7dbcff422ffc511aadceaec40d2bcac30680263d1f6be8e308a7078e` |
| 110 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of-source-edition-3.md) | 663 | `declaration-track:6f68861f9640d575cac345298ff9a5682084382960121fc9477a98ab79cdfba5` |
| 111 | `lemma` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of-injective-source-edition-2.md) | 667 | `result-track:e439c471f308d8a2d4e974fa7c6bb48285ec1e6cf7ab6adeb72ce5b6327d89c7` |
| 112 | `lemma` | [of_commute](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of-commute.md) | 670 | `result-track:3ed4e0e6a189449780a917656e7797c76f67be52117bf47865214cea2015f9ac` |
| 113 | `def` | [singleHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/singlehom.md) | 678 | `declaration-track:27e64378b67619969cd25c5fe8c0f772c5fa97c67e3a85c436381a52e2a532eb` |
| 114 | `def` | [singleOneRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/singleoneringhom.md) | 686 | `declaration-track:fe3e7efdab181d4976bcf1e58cc4259c0eed02210e2ae6b79c2fecf8b65180e7` |
| 115 | `lemma` | [ringHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ringhom-ext-source-edition-2.md) | 696 | `result-track:a6f7bad6b2402fcacfd8298cdedac618588c6533c23276b9eba54d495522d9f2` |
| 116 | `lemma` | [ringHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ringhom-ext-source-edition-3.md) | 707 | `result-track:b80468af9cdf7bcfb8d424577aa95cae53c1b8797313f12412bee5772969def5` |
| 117 | `instance` | [semiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/semiring.md) | 719 | `declaration-track:ecfb3e36af570643d682fdbb9d916e2f10f51a1b931054f58740a3a142b3b702` |
| 118 | `lemma` | [single_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-pow.md) | 722 | `result-track:75879e91e24ca3e5429603121551c51dda14cbf7d763c1ddb18581f4d0e276b4` |
| 119 | `lemma` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/induction-on.md) | 726 | `result-track:4e5fc481e2ecdb6dd8fddc7bee61794948eba729dd364712e1a83b62644c36c9` |
| 120 | `instance` | [isLocalHom_singleOneRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/islocalhom-singleoneringhom.md) | 735 | `declaration-track:ade092669e27a13b0df745cd3d467bfca97c17ceee554ee06e5a0d2467294436` |
| 121 | `def` | [uniqueRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/uniqueringequiv.md) | 747 | `declaration-track:c48760656c89df6978a10826816884beb08bc5a1ae3c71b63045260a1c75818b` |
| 122 | `lemma` | [uniqueRingEquiv_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/uniqueringequiv-symm-apply.md) | 757 | `result-track:bd70e0ee30e42a726da7c8c9857e129cbfe70fa50cefdff58075315ac5abd8f4` |
| 123 | `lemma` | [coeff_uniqueRingEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-uniqueringequiv-symm.md) | 762 | `result-track:f5eefd8b8be7198b8375906bfa68d040362f5ee38658ddeb56ab088d672bc647` |
| 124 | `def` | [curryAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/curryaddequiv.md) | 771 | `declaration-track:8bbbf07a577ae310386c38398362ed0e3b74a099934c608d02c53034895314ba` |
| 125 | `lemma` | [curryAddEquiv_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/curryaddequiv-single.md) | 776 | `result-track:d2191ca016ef28689ad2fa2605661f62294b4dfa9e441497f4ceb443459e5dcb` |
| 126 | `lemma` | [curryAddEquiv_symm_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/curryaddequiv-symm-single.md) | 780 | `result-track:350c99f9c515e3ab2005cb10dbc579857f2f784468b282f7208a421b4da911fc` |
| 127 | `def` | [curryRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/curryringequiv.md) | 786 | `declaration-track:9207349d1130a81b4f17fbc6f7da4d3c4880fbd63c620dca15c09552ced27cf3` |
| 128 | `lemma` | [curryRingEquiv_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/curryringequiv-single.md) | 792 | `result-track:57e060b736360d59610eb74e3253237cb39836e31e2e0b7e691da5784d9842ea` |
| 129 | `lemma` | [curryRingEquiv_symm_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/curryringequiv-symm-single.md) | 797 | `result-track:d708b6ad1294f14411527378fb879cb81aac4f41f56ffd6ec4a74e622c3974ab` |
| 130 | `lemma` | [coeff_mul_single_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-mul-single-mul.md) | 804 | `result-track:7b8cf60dfc0e8a741c61db101044ff20b29d69866171b1d31ad9ea35c9e55985` |
| 131 | `lemma` | [coeff_single_mul_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-single-mul-mul.md) | 809 | `result-track:971ba84dbecbe90e3e99ab11630c3f23719e445968f56646f072570d7e7a52f1` |
| 132 | `lemma` | [coeff_mul_single_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-mul-single-apply.md) | 819 | `result-track:ef434bc98dfb6ee4756c22d67c28be6d3c78854a4d2e43651517d299ee78500d` |
| 133 | `lemma` | [coeff_single_mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-single-mul-apply.md) | 826 | `result-track:7ea6cbaeb2312da8279c5342564378763743552d95cfd7c90145fe0f2d228778` |
| 134 | `lemma` | [coeff_mul_apply_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-mul-apply-left.md) | 833 | `result-track:f52a27fa55414617c760abee34a95520bb4b354b574324299169cd0351d0f17d` |
| 135 | `lemma` | [coeff_mul_apply_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-mul-apply-right.md) | 840 | `result-track:23ba95950c572bc903d9ba832d5deaca37fe6419c81ed47ca5dc1aa242d2e7fa` |
| 136 | `instance` | [nonUnitalCommSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/nonunitalcommsemiring.md) | 853 | `declaration-track:c70b053eaadbf5a5d115daa9a8962d1103420be6b943e47fdbd9e04ba14d15dd` |
| 137 | `lemma` | [single_one_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-one-comm.md) | 857 | `result-track:19e5cd706f8e1cb5fcf9a1294ab9ef0a5246f2bf450c2dab55bf93d907637762` |
| 138 | `instance` | [commSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/commsemiring.md) | 865 | `declaration-track:31a9af62065694518341237abb426dc92068fe37e54df1bf1af17aaf54146f8f` |
| 139 | `lemma` | [prod_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/prod-single.md) | 869 | `result-track:953059d2cce7c1cc5a0f566b18e5b21fcb7f20a7f10cd82dc1758c5b21f66bad` |
| 140 | `lemma` | [finsuppProd_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/finsuppprod-single.md) | 876 | `result-track:4b286af69fa0c18eaa0072c9195a952b483e31f6e8326b3b45c7056edd35b171` |
| 141 | `instance` | [addCommGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/addcommgroup.md) | 886 | `declaration-track:8f22428522f16e7afe5c6b44febdea89027715502a53585273e4f075536b98fd` |
| 142 | `lemma` | [coeff_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-neg.md) | 889 | `result-track:a4c3f6c930b6f5d7a2e44939f35e8f2d21fd27a6f7b3a968cd0d889a5549c7bc` |
| 143 | `lemma` | [ofCoeff_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-neg.md) | 892 | `result-track:fad7d1065e2a2d86d84fae6f9b22b71118f3259ad52c455a1c060f4d083337a2` |
| 144 | `lemma` | [coeff_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/coeff-sub.md) | 895 | `result-track:0a96210864564fefd413dbbff1c9b3367e04de51126c11ecec1fa1ad3010588f` |
| 145 | `lemma` | [ofCoeff_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofcoeff-sub.md) | 898 | `result-track:f51c8bf0fd74cf1abcc4eb2be14d3bcfa95e698068f271575843dcf7144998e1` |
| 146 | `lemma` | [single_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-neg.md) | 901 | `result-track:d4dd56693b66cff36af9051caf3f9aa0a66d2a4dddf7a2088d2f79fc8fce0b18` |
| 147 | `lemma` | [single_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/single-sub.md) | 904 | `result-track:feccb6636b4c8be4865730ef12018b115ab5891923f5a1198957951e7aab6482` |
| 148 | `instance` | [nonUnitalNonAssocRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/nonunitalnonassocring.md) | 907 | `declaration-track:b63ca1f07ff5be2e1068d96d5a26fb20bad56dde71cecff63fb9cc100a6c9598` |
| 149 | `instance` | [nonUnitalRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/nonunitalring.md) | 910 | `declaration-track:74ccd34fdcb949859cf2bbab19aefc6c68f5daedcec8e8cdd2b1a9dcad67b626` |
| 150 | `instance` | [nonAssocRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/nonassocring.md) | 913 | `declaration-track:adbec01e5b31e133405c050ce03fd09b51a47b00c830159b297ef3b1f95809d2` |
| 151 | `lemma` | [intCast_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/intcast-def.md) | 919 | `result-track:43fbb9a272df0d18dbd42c46aac41033ca8153453057bc12ec0fc4d40b45fbba` |
| 152 | `instance` | [ring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ring.md) | 922 | `declaration-track:d449a4f0ee0b0b14b63de729095591ef56dc58954953cb0385d3f7de5b618170` |
| 153 | `lemma` | [neg_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/neg-apply.md) | 925 | `result-track:b5d8c238c3671a866eb78bc86f71e1e75e73b9f30728309deee151fa74875b06` |
| 154 | `instance` | [nonUnitalCommRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/nonunitalcommring.md) | 933 | `declaration-track:94568918a896179e6efc87d2ac8d26ac2e0aad3226a990a9f125eca3fe1f54f7` |
| 155 | `instance` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/commring.md) | 936 | `declaration-track:af75660c7e98bc42b3e79c488107368358a1c556d149b5b4098de2f6d7a1b3d5` |
| 156 | `def` | [ofMagma](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ofmagma.md) | 952 | `declaration-track:23e85726ec91061edefb928f9109143fedbb085e65a68e2220655eaf3f78663f` |
| 157 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of.md) | 957 | `declaration-track:11e1261a05e3853e1cc914e84d36199b9ade40ad31572d1d374e7a626b3c8819` |
| 158 | `def` | [of'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of-source-edition-2.md) | 962 | `declaration-track:52c10765c415ecd3a4af162740c527185b1baf72d84c5fe07c6262e187a53f60` |
| 159 | `theorem` | [of_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of-apply-source-edition-2.md) | 967 | `result-track:e9c99def1bc9ded878fc452bf54611d493c9558ea1bde6ae290227d85153b571` |
| 160 | `theorem` | [of'_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of-apply.md) | 971 | `result-track:b900a5aface886a3d2547ce1ecda078741d335c94871afa4aa78b0298e58779c` |
| 161 | `theorem` | [of'_eq_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of-eq-of.md) | 974 | `result-track:2a7212c03805507ec55d7decd894ac40c91049fdf98e46dfdfe2785f46818046` |
| 162 | `theorem` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of-injective.md) | 976 | `result-track:96cbf9c231019fab939f1c82b025816dcccbeeb10fbc4d9f32ebeeee655b9338` |
| 163 | `lemma` | [of'_commute](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/of-commute-source-edition-2.md) | 979 | `result-track:e837ba3b88549cbc9cdf4b747e32275c2dde591c19a649f83ef713fc7c310108` |
| 164 | `def` | [singleHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/singlehom-source-edition-2.md) | 989 | `declaration-track:b752a6eda31a9f4fe4fc7e43490bcf378df85951cd50d009ee01ffab68b469a6` |
| 165 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/induction-on-source-edition-2.md) | 995 | `result-track:5ad9f0b3fcad177dc1e1369afcbc2675335b4b2a415d3610afa35a018cc2999b` |
| 166 | `theorem` | [ringHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/declarations/ringhom-ext.md) | 1009 | `result-track:41db3002b627efc72b11c479128544ea44fdbd81574bb4586547be9f9b7b096b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d3096fc9f0d59f78088902a982bcd65559ee4ffd2d3957f1faa9c9d9a15fd6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
