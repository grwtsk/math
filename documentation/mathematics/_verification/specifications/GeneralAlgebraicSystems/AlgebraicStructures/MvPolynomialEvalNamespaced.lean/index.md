# Verification target: Mv Polynomial Eval Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab22951c1504ee16b5f258063127ec9dfb12746c",
  "lexical_observation_count": 128,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant7f280c33b302b9a007a44e4c6a036dcd0ece6251eb56cb5f8c357beed7c27127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab22951c1504ee16b5f258063127ec9dfb12746c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant7f280c33b302b9a007a44e4c6a036dcd0ece6251eb56cb5f8c357beed7c27127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Eval/Variant7f280c33b302b9a007a44e4c6a036dcd0ece6251eb56cb5f8c357beed7c27127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eval₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-source-edition-2.md) | 73 | `declaration-track:881df867a1b084cce6fb874dc1774624fb577ef7fbedea074ffd844c250f4af9` |
| 2 | `theorem` | [eval₂_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-eq-source-edition-3.md) | 76 | `result-track:6446258670438d4f2154090878110b911638c58bc019b6c4cbfc605e80c331a4` |
| 3 | `theorem` | [eval₂_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-eq-source-edition-2.md) | 80 | `result-track:0787d8e6f8e8fd14ad0445941666e2506918e5cbbad03d897e1fd912803d021e` |
| 4 | `theorem` | [eval₂_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-zero-source-edition-2.md) | 86 | `result-track:8be9060bdebe320f9ba75f493f5609bdc3aab1b47b2852b6c6f7b543911ebb77` |
| 5 | `theorem` | [eval₂_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-add.md) | 92 | `result-track:5fa26500afcbd78f20091d55867168fd9a13850053568c959d87dc5b447cd388` |
| 6 | `theorem` | [eval₂_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-monomial-source-edition-2.md) | 96 | `result-track:df0a77b25077cef5264f7a09a4d48ac4cd791ced9f7cf7c46674180f6b1d9d7f` |
| 7 | `theorem` | [eval₂_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-c-source-edition-2.md) | 100 | `result-track:f568347c4bad5b8c364eb328cb36d5d893b1dcf2be7b6e1b9b6398c4dd367178` |
| 8 | `theorem` | [eval₂_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-one.md) | 104 | `result-track:b9ca82781dc73320bb5173b23a61ccbc7a0fd241246bdcd51ceaeb1d5e804479` |
| 9 | `theorem` | [eval₂_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-natcast.md) | 107 | `result-track:7d8e49f7010688ba063742c7084831518bf14f40fc6f0c60c100ef4815af695f` |
| 10 | `theorem` | [eval₂_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-ofnat.md) | 110 | `result-track:0047d5453410b05f555c2f47cb75ffbf483cb4f85991d1a23b05b9fa4e567585` |
| 11 | `theorem` | [eval₂_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-x.md) | 115 | `result-track:6df55bc585bb13d274f922857915cd37c36310b555f016726ee2b56d7c9f3014` |
| 12 | `theorem` | [eval₂_mul_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-mul-monomial.md) | 118 | `result-track:0d181923cf2f0267bf5f7729a0fca6e9d20c13799becfc22cd74002401961e15` |
| 13 | `theorem` | [eval₂_mul_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-mul-c.md) | 135 | `result-track:b93e6941dfb29a041280b712c05822aa41f05508c89f108c4319862742cbc29b` |
| 14 | `theorem` | [eval₂_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-mul.md) | 139 | `result-track:15413db99d2ed7e6f92a34ffaf29a427336085fdbc7553433fe0ff4df2b598f4` |
| 15 | `theorem` | [eval₂_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-pow-source-edition-2.md) | 146 | `result-track:d78cd2b54d1650e10fd14bfd73fa18c9a3a7bc0f1bb6f0133a938120e329498a` |
| 16 | `def` | [eval₂Hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom.md) | 153 | `declaration-track:7a31785f89a020e387e2bcd17cc7ce352ff59840d63800f7a6d5bb0745e85af9` |
| 17 | `theorem` | [coe_eval₂Hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/coe-eval-hom.md) | 161 | `result-track:1fdeb3defd4dcbd99b7abcf826a8205f2dc8918f4313a7a3c59161bd5774dc66` |
| 18 | `theorem` | [eval₂Hom_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-congr.md) | 164 | `result-track:bce7930340f06d2f54f78139c721b7cfac07138d6454f17948ff42819e92b29f` |
| 19 | `theorem` | [eval₂Hom_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-c.md) | 171 | `result-track:796f8a5cf4f39390918bbcd56873c37aba3215afdc3642b2bc599c1923d5ebb0` |
| 20 | `theorem` | [eval₂Hom_X'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-x.md) | 175 | `result-track:2c07c80129dc3418fca438f683c4e21305817cf1be0fbec1a41424a5916e116b` |
| 21 | `theorem` | [comp_eval₂Hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/comp-eval-hom.md) | 179 | `result-track:008b42669b7cefed1dfdf41a21d362ae301767125bd5e1a8debb67e3109c442e` |
| 22 | `theorem` | [map_eval₂Hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-eval-hom.md) | 187 | `result-track:21cb7ab2151af8d1b7824c4b38b5f940a8bbd578f8cf94be076a2383fda0c30f` |
| 23 | `theorem` | [eval₂Hom_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-monomial.md) | 192 | `result-track:8b6f449fce74381a330719813c1c8e8eb1660f6163dd7d637f1a4bf147053667` |
| 24 | `theorem` | [eval₂_comp_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-comp-left.md) | 199 | `result-track:6a778de3299a092ac00426cb77ba1aa561bc68843e1071dd8756dc96e950e152` |
| 25 | `theorem` | [eval₂_eta](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-eta.md) | 207 | `result-track:148809b4ecd01d1cc4ad5adb576f8ce59a64e90a72d74d79d279523d4b5dd790` |
| 26 | `theorem` | [eval₂_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-congr.md) | 211 | `result-track:a48dd9f610eeebfa7c77ff6f559f0c6d4a883fc1a620b260cf9c0c76e57ad316` |
| 27 | `theorem` | [eval₂_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-sum-source-edition-2.md) | 221 | `result-track:a38e9d557cb060deb13bec81e1bffc6e65619fae4a8c7267e09bf0d46e1147f5` |
| 28 | `theorem` | [eval₂_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-prod.md) | 225 | `result-track:65690311399a2a57e6403c4fafe031a150e7c84bcb68a9a9a957726e02ab5eb3` |
| 29 | `theorem` | [eval₂_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-assoc-source-edition-2.md) | 229 | `result-track:d4400bb37c95d94aa2adf9d600b8461eb07145a2e37054a246858c98f9649d1b` |
| 30 | `def` | [eval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval.md) | 241 | `declaration-track:2e7ca7701ff38f6fb609f46abba6041b7f38a8240b6a02d30353c4f5b4004d4e` |
| 31 | `theorem` | [eval_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-eq.md) | 244 | `result-track:05e76afcba2dc9438d0e3c919a19b4940f5e7394adfac68321c100abab0a6f64` |
| 32 | `theorem` | [eval_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-eq-source-edition-4.md) | 248 | `result-track:a3b81195288c6a9bbf049d1c40d9f6d53fbd63eacd4d124ba9a0c4839d044b2b` |
| 33 | `theorem` | [eval_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-monomial.md) | 252 | `result-track:a3515d1fa893d8b056c812064c9d38a042aa558765428085a1168cf6e5eaafaa` |
| 34 | `theorem` | [eval_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-c.md) | 256 | `result-track:a92d5d163623808969bd75ec253adb823cab17fe42a6a087cd2d3031f743bb56` |
| 35 | `theorem` | [eval_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-x-source-edition-2.md) | 260 | `result-track:84cd19e9b3043286aa0622e62245e63c810a8912976355e4a6d034abb9e0806c` |
| 36 | `theorem` | [eval_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-ofnat-source-edition-2.md) | 263 | `result-track:e85e30e4f3d224767c3bcd24a32167bbe5f57f8ef7b95e8366f8a4aec74163af` |
| 37 | `theorem` | [smul_eval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/smul-eval.md) | 268 | `result-track:49b737cc5a0698d455a6b16d422478a41e819378da75eae692bcf0e9305d9284` |
| 38 | `theorem` | [eval_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-add-source-edition-2.md) | 271 | `result-track:8f62a32ed99a99b1591c4f3193f8dcaec127ce0fd1c8077566db7917d308ae2d` |
| 39 | `theorem` | [eval_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-mul-source-edition-2.md) | 274 | `result-track:8f7087b2eb0a9c8474dcc481dd61c8348f204934b84ee3ecc42a96cb3f46cdb7` |
| 40 | `theorem` | [eval_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-pow.md) | 277 | `result-track:d6c22f4632a7841fb0f6c30f6530b191c3ebbfad460a3cc0fd1c0222da6dfa20` |
| 41 | `theorem` | [eval_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-sum.md) | 280 | `result-track:501a19c77b6c4bd365410a07fca83e43bf0f58e6a586d5ad3e0f67511f7ea685` |
| 42 | `theorem` | [eval_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-prod-source-edition-2.md) | 284 | `result-track:b124108011b237ff8815a02f9c8b5f19e5eeaa7b140a362db99c52a7def8f5cf` |
| 43 | `theorem` | [eval_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-assoc.md) | 288 | `result-track:ac9f72cdb17106ec27ff9bcc08f649d7d2ac84648bbe355a5f07347347c6a177` |
| 44 | `theorem` | [eval₂_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-id.md) | 295 | `result-track:821d4b1faa47a36336dbb1b605a0f1c51d5e66918464f9093bb79f236f31d55c` |
| 45 | `theorem` | [eval_eval₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-eval.md) | 298 | `result-track:e749438fa1a34942312f65f0655c9e49d4862eb41daceae4227918b181125312` |
| 46 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map.md) | 315 | `declaration-track:e079142c612702f78cedc24f5caece7c454145168dbd0c245e37cb78f2bc1a9a` |
| 47 | `theorem` | [map_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-monomial.md) | 319 | `result-track:91bd625cc14e47d7d70d0eeadf8c90af0eee7c0c7dda789a50042941c70bcaaf` |
| 48 | `theorem` | [map_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-c.md) | 323 | `result-track:f9c98df3efcfd8a724416ce65064ad3049703e911a499c0f5352c7ec7ef58f78` |
| 49 | `theorem` | [map_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-ofnat.md) | 326 | `result-track:4bdda532c22107fe8e4f93e7d213d985bd2be88faa7db14f12f0c9e6dc06d8bc` |
| 50 | `theorem` | [map_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-x.md) | 331 | `result-track:fbf95d315a62a7b32f8ca15c2d0cef3c9dd95755c32b2b7ff95cc7cec87c6aa2` |
| 51 | `theorem` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-id.md) | 334 | `result-track:6df752d3f3fc96feb260e072e134ee09510eff5813179e634b43980ffbf014fa` |
| 52 | `theorem` | [map_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-map.md) | 337 | `result-track:bcd210fc01d443d4d5b4ddc350aa175e05510f1322eff92744074426c941a8bd` |
| 53 | `theorem` | [eval₂_eq_eval_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-eq-eval-map.md) | 346 | `result-track:489d5570c6415773bc77fd72a7ebaaeffa61a09210a9da05be31b6bdf655a687` |
| 54 | `theorem` | [eval₂_comp_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-comp-right.md) | 360 | `result-track:91d4d75f0701fffd58c43b3e14bc9d17a55017a8d53d50e0037d476ea390e7f4` |
| 55 | `theorem` | [map_eval₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-eval.md) | 371 | `result-track:16fa1e3b4e65588cdef9c8bcd125c340d8ae39ed8fb193c615a8f1ee31fe30c8` |
| 56 | `theorem` | [coeff_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/coeff-map.md) | 382 | `result-track:1b32cb0015f96c92847087f50f1b8875c3a31cf31049649ee295766eeeb594de` |
| 57 | `theorem` | [map_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-injective.md) | 401 | `result-track:fb882fe9c64a7876f1a50bbffa46d253ef7ee134f5b872c2642351650468568c` |
| 58 | `theorem` | [map_injective_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-injective-iff.md) | 408 | `result-track:a0b141a384094cb27d3fb6c9e44a07e668b66a3aa14f848a825c2b02bfbf2766` |
| 59 | `theorem` | [map_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-surjective.md) | 411 | `result-track:dd17da34f74d5eae6b37cf76874ab2d2e02827bce2b7db94d335a65a7aab8517` |
| 60 | `theorem` | [map_surjective_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-surjective-iff.md) | 422 | `result-track:8dc89a955397782fad8f7b6bced128a24442c8db76f9cec01b614e93617cc9d8` |
| 61 | `theorem` | [map_leftInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-leftinverse.md) | 427 | `result-track:d51c8f605805b47935e02b3de0c49035f507f4d3062e5bdd8a891fc091b4acbf` |
| 62 | `theorem` | [map_rightInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-rightinverse.md) | 432 | `result-track:99401d650764d0011d6c8a2d70f3154185143ee35d80dd7706a0e7133d8dc34c` |
| 63 | `theorem` | [eval_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-map.md) | 437 | `result-track:6cef389f9148c2b42b6ab7ed0ef65a51eb2b24848c679f8eeb3b7642ba233bd3` |
| 64 | `theorem` | [eval₂_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-comp.md) | 441 | `result-track:7eda3f47c221e50e1539b5482f59f2c6452e5cd08aa2e42eb3929bda748b2147` |
| 65 | `theorem` | [eval₂_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-map-source-edition-2.md) | 446 | `result-track:7d57036d655fde6da34d8cb8e7c2d14b0ceec44feec73bf007e21a2d00982b8f` |
| 66 | `theorem` | [eval₂Hom_map_hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-map-hom.md) | 451 | `result-track:132eb87141ef11aba23bb7ba67b8f959e90a8afd1bc45dc1fdd31ffa6eb2c979` |
| 67 | `theorem` | [constantCoeff_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/constantcoeff-map.md) | 456 | `result-track:97dd9a746c196481aa0bcbdd6e0d46ea1f73eabdcd7f3e483f3e5aca6bff564c` |
| 68 | `theorem` | [constantCoeff_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/constantcoeff-comp-map.md) | 460 | `result-track:5ba323b57886eb734acf2463c32101a208a9c08662b4f7677ae89a4cf47bdd3d` |
| 69 | `theorem` | [support_map_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/support-map-subset.md) | 464 | `result-track:3edba435ed7738a4abf265bd83ed74bb19ec2830b327b7fa958c1b495ffd8407` |
| 70 | `theorem` | [support_map_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/support-map-of-injective.md) | 474 | `result-track:36e87eccd18960060b76eb8aa221caafd667decc23ba0828b1acda9766d2101e` |
| 71 | `theorem` | [C_dvd_iff_map_hom_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/c-dvd-iff-map-hom-eq-zero.md) | 486 | `result-track:24a9ae5fdd9bc170774ffb7f90135e75b4b06f42f423b7f683bdb0f4723a7a06` |
| 72 | `theorem` | [map_mapRange_eq_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-maprange-eq-iff.md) | 491 | `result-track:7d1cf47b99d648de2093f75e4d02e8f4b69e3e8defe5fcde9d3e8713bc4f360f` |
| 73 | `lemma` | [coeffs_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/coeffs-map.md) | 499 | `result-track:320dbceca3f8fe9660e6bed0e2273392bdcdca3871d48418f0e07a6c7c77efbe` |
| 74 | `lemma` | [coe_coeffs_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/coe-coeffs-map.md) | 514 | `result-track:95a8f0a6240187393bb7c74f4255d22f7da6fd8f83c37474af5cd12c563f62e4` |
| 75 | `lemma` | [mem_range_map_iff_coeffs_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/mem-range-map-iff-coeffs-subset.md) | 518 | `result-track:7ecb0cff4e3a9de172ce0150fbc32e7ee0b7472a934ecbb4363bb0f7267618fb` |
| 76 | `def` | [mapAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/mapalghom.md) | 545 | `declaration-track:4f2df5eb50062c2effe8aa4a141825303f74b2eae783a95e1f878fdde6d52d8a` |
| 77 | `theorem` | [mapAlgHom_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/mapalghom-id.md) | 557 | `result-track:5df5d975b565b6c92d23c028f636c63824f5773f3098e5904f0e325b9931c46a` |
| 78 | `theorem` | [mapAlgHom_coe_ringHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/mapalghom-coe-ringhom.md) | 562 | `result-track:3c1dc45e3c9b2ac21a881a5fa7589d897dc7bb45464027544c828dd8142538db` |
| 79 | `lemma` | [range_mapAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/range-mapalghom.md) | 567 | `result-track:242f08eb5da47a5c1d0cdf1a431c1bf804706f24a99bfd463a6c80f6489713fe` |
| 80 | `theorem` | [algebraMap_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/algebramap-apply.md) | 585 | `result-track:994d28dd7c2cfa48b5763c30dea10719b227a4dddd565d80392ff46cc3926c80` |
| 81 | `def` | [aeval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval.md) | 589 | `declaration-track:a617e430593b91685afb88b94be33c4d70a393bd53c53bea4d9ff8dc00b2d6c2` |
| 82 | `theorem` | [aeval_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-def.md) | 592 | `result-track:0626d9dc75dcb3ab67d1dcebfe38bfd6ed31bdf9694631dfeadc30320af03585` |
| 83 | `theorem` | [aeval_eq_eval₂Hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-eq-eval-hom.md) | 595 | `result-track:f280c6ad3681874fefb23825d14d07ff658106c5e1152733e7731f84c1b94652` |
| 84 | `lemma` | [coe_aeval_eq_eval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/coe-aeval-eq-eval.md) | 599 | `result-track:c67e06bf28e58b8a9c076c7258293158794709a7417861671f9456101c9b02c2` |
| 85 | `theorem` | [aeval_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-x.md) | 603 | `result-track:98979dbbec6d9dac80078390c1315e891042cc5eb7eba8c78e61af30cb85cb5f` |
| 86 | `theorem` | [aeval_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-c.md) | 606 | `result-track:b25c1f872d4ac7dcab05981e589477a5d06768be68cc357b9ca324671dd0e5b5` |
| 87 | `theorem` | [aeval_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-ofnat.md) | 609 | `result-track:c2f3028ac8f2bf43ed757b0661a04d8e06b33bc7acd7da885c8372502295cad1` |
| 88 | `theorem` | [aeval_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-unique.md) | 613 | `result-track:3f67be4933f97a23274e5d8a2b0e8a159ae9ae80a86d618045124f8978a79842` |
| 89 | `theorem` | [aeval_X_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-x-left.md) | 617 | `result-track:caae30eaf233b2de98a716c933c8cf7b255f327fefcc996867bb04115db18c12` |
| 90 | `theorem` | [aeval_X_left_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-x-left-apply.md) | 620 | `result-track:1e60e34765a38bd370f8d4fb80794590cf5857e4fbab8abc28060f4d95310c0d` |
| 91 | `theorem` | [comp_aeval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/comp-aeval.md) | 623 | `result-track:ce955e04ce94fda036e5a10c77c523d24e26dab3f3d4457b49cc198a091856e5` |
| 92 | `lemma` | [comp_aeval_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/comp-aeval-apply.md) | 628 | `result-track:8df3206c1407d53bfbe96314c8f09003d9eda0a1c98d856b33cbecd1c93a9692` |
| 93 | `theorem` | [map_aeval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/map-aeval.md) | 634 | `result-track:76fbf8e92e187e4eb3534cd9caedcf7782705f0f113316e61fa3540372a2f0d4` |
| 94 | `theorem` | [eval₂Hom_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-zero-source-edition-2.md) | 640 | `result-track:869f8f2b4abae75a2fc90e934c2c0803eef4067f27907c4146f947f2e7f230a8` |
| 95 | `theorem` | [eval₂Hom_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-zero.md) | 644 | `result-track:025ad7c92796810eb7c74cc586600d42711721b0dc8563ada1a4eabba8c195b6` |
| 96 | `theorem` | [eval₂Hom_zero_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-zero-apply.md) | 647 | `result-track:210a9b255b9a00575d501176a7a849943df11580d3dc1b224d6539c7b9cc469f` |
| 97 | `theorem` | [eval₂Hom_zero'_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-zero-apply-source-edition-2.md) | 651 | `result-track:6b69cad26adbcd82fd04511a44be874717004a70e49f33b91aedc99cd2cdb414` |
| 98 | `theorem` | [eval₂_zero_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-zero-apply.md) | 656 | `result-track:18e509b90acd96fb8bdcc8377c82fd69bb8c857132a784b02ff21a4f18cfa396` |
| 99 | `theorem` | [eval₂_zero'_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-zero-apply-source-edition-2.md) | 661 | `result-track:9d45dbe5909edd362088929d374144d2378dcb9ca22d805a7593a6af4e2295c5` |
| 100 | `theorem` | [aeval_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-zero-source-edition-2.md) | 666 | `result-track:59cd795c4dd2b39a4a7f87335e6088adbff5a47a4851de8a60278d25823a8f52` |
| 101 | `theorem` | [aeval_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-zero.md) | 671 | `result-track:1dcfab2f95d6ec219ee548c3f2bbec0e0c88c2ca783a7fdbb9b6fc6fbd7f411e` |
| 102 | `theorem` | [eval_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-zero.md) | 676 | `result-track:13004699a771cdefa59436b0f93efc3cc65f8211b06a7e5ed4a0818b5c54446e` |
| 103 | `theorem` | [eval_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-zero-source-edition-3.md) | 680 | `result-track:f4bbc067ebb2b2880d2ba7778d4a720e4a80c174e8cc5a24189f086ddea2dfc3` |
| 104 | `theorem` | [aeval_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-monomial.md) | 683 | `result-track:57c65e3c1096ad20d7b74448ba1ffb672bde68a6251f813c9f1373dfaae97f64` |
| 105 | `theorem` | [eval₂Hom_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-hom-eq-zero.md) | 687 | `result-track:f606cd2e1f8085401079234b448806a04e8a29eb4cc07232c4b37e49bd991f89` |
| 106 | `theorem` | [aeval_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-eq-zero.md) | 696 | `result-track:0a5cb1d425b4e31aa58ff8f20e4a232d80fee2b062865ca40912d36e63b32ff9` |
| 107 | `theorem` | [aeval_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-sum.md) | 700 | `result-track:f0794dff923943f872c89bf7b172b1be5f42b263e6076658bfdbc07e26903087` |
| 108 | `theorem` | [aeval_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-prod.md) | 704 | `result-track:5e7d811c3a54cb3907228795ee5b3a06ad1f2a2f7b75c6c34ce0089e2d98f76d` |
| 109 | `theorem` | [Mv Polynomial Eval Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/adjoin-range-eq-range-aeval.md) | 710 | `result-track:c432768b998a521d9755b74df680107859882c3606ac347514fdac1574f9ead6` |
| 110 | `theorem` | [Mv Polynomial Eval Namespaced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/adjoin-eq-range.md) | 715 | `result-track:7ddc15c8e0575a520a59ff8a6095fbc8006da786ba9633d7bec1c517be95a5c3` |
| 111 | `def` | [aevalTower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower.md) | 728 | `declaration-track:9234f68f178449025ee971f9f59481455d2c688ef8c377c11debc6b58a9e2cb3` |
| 112 | `theorem` | [aevalTower_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-x.md) | 736 | `result-track:949c693aca334ac7b871d03a13a3f857a95222c2a559742216c63eeba85ccc8d` |
| 113 | `theorem` | [aevalTower_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-c.md) | 740 | `result-track:84d65add1bd19e56e1fe23a84ef3405f6f91c47f7671d2eb858f0efec1c3f53e` |
| 114 | `theorem` | [aevalTower_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-ofnat.md) | 744 | `result-track:e1b2ca3dc31971de51cab1dc2ecd3019ecbed6e6106d25162bb4cfd6236a0b26` |
| 115 | `theorem` | [aevalTower_comp_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-comp-c.md) | 749 | `result-track:68043f4a159ff224924bda4e41ac1db32bd7874fa72af1c8a045a1af00d5231f` |
| 116 | `theorem` | [aevalTower_algebraMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-algebramap.md) | 752 | `result-track:a383edc8be4469c4450f3b7ea0660577381cc92c93cddd78684dff818c1b7618` |
| 117 | `theorem` | [aevalTower_comp_algebraMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-comp-algebramap.md) | 755 | `result-track:5962a7c3e4d7373be359f2b33770cc0de96b36326289838148ef68ddf859b2a3` |
| 118 | `theorem` | [aevalTower_toAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-toalghom.md) | 759 | `result-track:2b0308c760d8b2a8f104d181fe1ced06d329590c9bb9f6d368421e0deb4ab4ba` |
| 119 | `theorem` | [aevalTower_comp_toAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-comp-toalghom.md) | 764 | `result-track:43d71409b3ad5209380204c5dbaa94528f2ee263b776dd4342828a7bc64ee4fb` |
| 120 | `theorem` | [aevalTower_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-id.md) | 769 | `result-track:fc3f607c30be2ca5f9c4429d677b7218de470a8d0d7210a9b9a768e09fb90e9a` |
| 121 | `theorem` | [aevalTower_ofId](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aevaltower-ofid.md) | 775 | `result-track:44fc0aa873119d899b7451fb66037999365885aba62e28cbbaec41dc07fe810d` |
| 122 | `theorem` | [eval₂_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-mem-source-edition-2.md) | 786 | `result-track:cd3d8bd141c4909485d2225511a8c16366d3242932025a415e7dc961d7d9fa3e` |
| 123 | `theorem` | [eval_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/eval-mem.md) | 813 | `result-track:72c029c98d30ff762b6f424b873f50426cb39593e8642552e804243f4ec35845` |
| 124 | `lemma` | [aeval_sumElim](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/aeval-sumelim.md) | 822 | `result-track:03560cc3ea85471e1c0a4548fc5f6b032fd5110f37167e18a01cbfe58ddca522` |
| 125 | `def` | [algebraMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/algebramvpolynomial.md) | 845 | `declaration-track:cdef0878d9463a18ed7279c2c85341ac39b9eeac4d0bb52928931b701bd0a645` |
| 126 | `lemma` | [algebraMap_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/algebramap-def.md) | 851 | `result-track:c28390f9857506513f855018bbf8a347ee6478f2f686f1d7a87e084d709f8456` |
| 127 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/instance-source-edition-2.md) | 855 | `declaration-track:8e272b134b34912ea46cc260f305371aa3ce653320ba28300382d99263951dff` |
| 128 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialEvalNamespaced.lean/declarations/instance.md) | 858 | `declaration-track:7381e9f7066fe29ccc8b978d46d391c64575a59dc9b06b9c522ff2082440b113` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=829e5a82f0247cf9071e850a9736c2b62f7dbee4a370b1db28910c40cc19bb5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant7f280c33b302b9a007a44e4c6a036dcd0ece6251eb56cb5f8c357beed7c27127.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Eval/Variant7f280c33b302b9a007a44e4c6a036dcd0ece6251eb56cb5f8c357beed7c27127.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
