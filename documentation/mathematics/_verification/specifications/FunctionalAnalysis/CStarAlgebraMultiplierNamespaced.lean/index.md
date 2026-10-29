# Verification target: CStar Algebra Multiplier Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19e6009d93dd22c2c397baab24ac9bfb4152c1c4",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Multiplier/Variantf5164c958b3465391851517b5c22bd2bcbe976c0728210b5e14fd67126e96dd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19e6009d93dd22c2c397baab24ac9bfb4152c1c4`.

Source path: `GRWTSK/Analysis/Multiplier/Variantf5164c958b3465391851517b5c22bd2bcbe976c0728210b5e14fd67126e96dd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Multiplier/Variantf5164c958b3465391851517b5c22bd2bcbe976c0728210b5e14fd67126e96dd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DoubleCentralizer](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/doublecentralizer.md) | 72 | `declaration-track:ceb1c4fad594160ddcc99c78526f8bacffc22a07342c03dec1d763e585b0818f` |
| 2 | `lemma` | [DoubleCentralizer.ext](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/doublecentralizer-ext.md) | 84 | `result-track:ecdb43f7f1df0c90e209f8876c582c65f99d4e17c97caa78cb83bc0285371355` |
| 3 | `theorem` | [range_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/range-toprod.md) | 108 | `result-track:2cf8c28ba7bbf460a838373a6b07caa8fa6362100d017c9d2c00d6889727db91` |
| 4 | `instance` | [instAdd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instadd.md) | 115 | `declaration-track:01baed1925683ab437d68dca95f2126e2c784055da0a15739c4134f6689045c2` |
| 5 | `instance` | [instZero](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instzero.md) | 122 | `declaration-track:8454084ad10da911fb9d8374b67998ab5e458353886c3cc09f59deac04368322` |
| 6 | `instance` | [instNeg](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instneg.md) | 127 | `declaration-track:9e2fe43ffe6c152538a33c01444c15c3b1ec141648d3a5ae5a93afb789f2a107` |
| 7 | `instance` | [instSub](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instsub.md) | 134 | `declaration-track:3ea70ab133728de02d1d75f00f37fac4399561110d616b7ca818317e46d0b295` |
| 8 | `instance` | [instSMul](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instsmul.md) | 146 | `declaration-track:c549d29e78e942038247405dae4e8d260bffd58815742ccc65dfad934bf215e1` |
| 9 | `theorem` | [smul_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/smul-toprod.md) | 154 | `result-track:ceb5b447803965073628d578b3bb390e6be346d1b25d0238d2ed3b0b123b8ff3` |
| 10 | `theorem` | [smul_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/smul-fst.md) | 157 | `result-track:fa58cd20ccf4d6ac9ed7d2d24366a438c9412fb84b43db9abcf741d4751f2b35` |
| 11 | `theorem` | [smul_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/smul-snd.md) | 160 | `result-track:a3c3ec30336f10900930e7de55071328b46ffb8467ba44b32821c7db62b118ac` |
| 12 | `instance` | [instIsScalarTower](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instisscalartower.md) | 166 | `declaration-track:9a1adff59b40e28b8f4c4fd0734c154623ed610e1200a0ec6d7c36d20e0ed43d` |
| 13 | `instance` | [instSMulCommClass](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instsmulcommclass.md) | 169 | `declaration-track:9a673c7564e2f05f83f95627dab4842353479d95b3117b046a73ac7d4b85a706` |
| 14 | `instance` | [instIsCentralScalar](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instiscentralscalar.md) | 172 | `declaration-track:3b056fb720c256ad8b2d37e6728ac023a617145b83360ac12343051c2a3a3d06` |
| 15 | `instance` | [instOne](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instone.md) | 179 | `declaration-track:9a6d969b5fb8790b6a67f25e9706affe8c37977cd958315c65d3790372b007ff` |
| 16 | `instance` | [instMul](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instmul.md) | 182 | `declaration-track:1fe74e717e3778017d2dd5d17ed0fe68f65f162c25729fc81f43802bef9b76ff` |
| 17 | `instance` | [instNatCast](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instnatcast.md) | 187 | `declaration-track:9d1d436bc830bb31a878ad3bde332f412704badb53512ba58881301baa133fc0` |
| 18 | `instance` | [instIntCast](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instintcast.md) | 193 | `declaration-track:79c9bf5373b085130bcb3d245dbca06e0aa5c9214e17efda21fac23561ae95f6` |
| 19 | `instance` | [instPow](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instpow.md) | 199 | `declaration-track:45d0c91e421404cbe5d06af656df5ed0ea002c6a0d6f0d6af02cb5d260538647` |
| 20 | `instance` | [instInhabited](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instinhabited.md) | 207 | `declaration-track:8638b4fd0eafc859ec89d85ff22e39ddf15e119ef2e1bc18c254570038ca445e` |
| 21 | `theorem` | [add_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/add-toprod.md) | 211 | `result-track:b947ec855f9da0897d89321d5e0ff61f9cad16309a0ac74832c29f4a16976870` |
| 22 | `theorem` | [zero_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/zero-toprod.md) | 215 | `result-track:39189aebe94caf56e67a2bc8c8afbf910f3ec23ac46f6df7e1d369a6d0d2b7a6` |
| 23 | `theorem` | [neg_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/neg-toprod.md) | 219 | `result-track:741119e39bfd78b25f346502fa0b14f6ad58a92feffb18a281286082bcee3b8f` |
| 24 | `theorem` | [sub_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/sub-toprod.md) | 223 | `result-track:fd2ec291c7dc01e2dc210c163863f5f1eb9e1a75c14943616a943ed0d44aa0a1` |
| 25 | `theorem` | [one_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/one-toprod.md) | 227 | `result-track:9016074281c94226eace1a19d8d8824001f6f598e5ece132d6aadc7553313a2a` |
| 26 | `theorem` | [natCast_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/natcast-toprod.md) | 231 | `result-track:e489791c21d2ceadebf7b0329069afae5aa93ed36698db7e1b9ca23514879cc7` |
| 27 | `theorem` | [intCast_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/intcast-toprod.md) | 235 | `result-track:f1aaf85676e78fb54d522848273f5793d3148069bb3b921d791d61910d97906c` |
| 28 | `theorem` | [pow_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/pow-toprod.md) | 239 | `result-track:e9c5f231050d2efafbc2723d1a12959c80bf40ce2060cd259c6b5820b93b8dec` |
| 29 | `theorem` | [add_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/add-fst.md) | 242 | `result-track:e852234018eb4d4b0890fedb7436b66425738d1c3b5c079d4bf6fa3c25ebc7e1` |
| 30 | `theorem` | [add_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/add-snd.md) | 245 | `result-track:2125eced501c5cbf1d02dc36284626a775747968f85bce621e6d21ec3c3ffdf7` |
| 31 | `theorem` | [zero_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/zero-fst.md) | 248 | `result-track:d8e4dc2860a783f38c0aa90e8b22c524118365982e061ffee3f64f4038a4d69d` |
| 32 | `theorem` | [zero_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/zero-snd.md) | 251 | `result-track:cd01350f8c4577e3dad623baf4028669049b818df179d6f8c58d833fdc0fb5f8` |
| 33 | `theorem` | [neg_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/neg-fst.md) | 254 | `result-track:5aff4a781bc19ff8e1dc9c617e3e8565b8dc6acb7212bd25d833a16d1005acf6` |
| 34 | `theorem` | [neg_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/neg-snd.md) | 257 | `result-track:d9ba9af5e7bc6a41e7fe4045090a4203a726d8248ee7eca5b401deaf063d0721` |
| 35 | `theorem` | [sub_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/sub-fst.md) | 260 | `result-track:a1c1f65263e135688af2a410d886eba9cc95ea9689b294332969445a793c1f43` |
| 36 | `theorem` | [sub_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/sub-snd.md) | 263 | `result-track:b6461fc0b938c39b12fa917b450ed3f9b325b7b11dc773158cdd58c6b44f1257` |
| 37 | `theorem` | [one_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/one-fst.md) | 266 | `result-track:37e71044f34f43393289beb89554418168dbba046c0992880560557c75ec3536` |
| 38 | `theorem` | [one_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/one-snd.md) | 269 | `result-track:74ae8c0d268cbab8da426fe10c9da4ad87df613e5d694ba3a54f10417527b596` |
| 39 | `theorem` | [mul_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/mul-fst.md) | 273 | `result-track:c8d46102e3e3ad8c55137170121d6d65ce4d004301527a7d579fe5024e078150` |
| 40 | `theorem` | [mul_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/mul-snd.md) | 277 | `result-track:bf59bc856217913fdc9b7e89ae0a7449fe2de40eff3fd4e383d74eed71ea3b38` |
| 41 | `theorem` | [natCast_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/natcast-fst.md) | 280 | `result-track:cb43044bc745ace2498b60bce18ba09b08b429ea2f879a2454c99b56121e76fb` |
| 42 | `theorem` | [natCast_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/natcast-snd.md) | 283 | `result-track:05f25a3cb0ebcf056ff53c1d7fd80e29a7b56176a4bfac69b95de2abea7587b4` |
| 43 | `theorem` | [intCast_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/intcast-fst.md) | 286 | `result-track:047d215cb5ec050b169e4a006ed6d6f2f0b8ca4468bcc435759df6394dfce23c` |
| 44 | `theorem` | [intCast_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/intcast-snd.md) | 289 | `result-track:d5653631025940ca19c73f6fbae55e133335215b1653666e5483d907d80acf5b` |
| 45 | `theorem` | [pow_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/pow-fst.md) | 292 | `result-track:e4e68a7c4ba918833ea7140302bdb8122d6b096c96b33e606f3ca629c23d8a7c` |
| 46 | `theorem` | [pow_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/pow-snd.md) | 295 | `result-track:fa7f525bd0b8ebd9c4f34be800ee6e0c30dcd09c031a3bf4ad7e7983a429550c` |
| 47 | `def` | [toProdMulOpposite](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/toprodmulopposite.md) | 300 | `declaration-track:bb3b406b45203acd4f667087d0e22881773ff3609f80616059fb837b3ace6134` |
| 48 | `theorem` | [toProdMulOpposite_injective](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/toprodmulopposite-injective.md) | 303 | `result-track:5a79efa3ef1b680ff3af0ab1bae2718920ac0b3a7a208855683d370baba1f8f3` |
| 49 | `theorem` | [range_toProdMulOpposite](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/range-toprodmulopposite.md) | 309 | `result-track:58ee2d460e4f14c94b73c889963463c281fb8018d967d0c9085225cd2b4574a7` |
| 50 | `instance` | [instRing](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instring.md) | 319 | `declaration-track:8429448cfb75a1f94222dba91aebdf494a78fdbf367b1cf5df9b0fd01aac20b6` |
| 51 | `def` | [toProdHom](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/toprodhom.md) | 327 | `declaration-track:4abc4e5c8b4201ce8178e00928faa2cce5499afc29651f781c63797039b5806b` |
| 52 | `def` | [toProdMulOppositeHom](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/toprodmuloppositehom.md) | 334 | `declaration-track:f964b0e3f5c818cbc2f191151ca0cd3b6695b26b219eee86562131df68a0a08a` |
| 53 | `instance` | [instModule](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instmodule.md) | 343 | `declaration-track:042614cca053196bd25bb2c260eeb993bea83b901e6070e6e2c1100d5b094393` |
| 54 | `instance` | [instAlgebra](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instalgebra.md) | 348 | `declaration-track:b1479b2985655ef31cc8f315435302896aba2c9ad83244e7ca87073214aebbf2` |
| 55 | `theorem` | [algebraMap_toProd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/algebramap-toprod.md) | 369 | `result-track:8664f90cea8e980c21d5546c6987120d62dca7089ca921a6ac9e17d0d1d269f1` |
| 56 | `theorem` | [algebraMap_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/algebramap-fst.md) | 372 | `result-track:6868c6aa9bbec9a13035ae4b839a25acd2d19dbe9aa95394a91bf156fe663c10` |
| 57 | `theorem` | [algebraMap_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/algebramap-snd.md) | 375 | `result-track:97a79827e8264208e6b3846733b36ce30b0bd773f4869692529725609d00b9fa` |
| 58 | `instance` | [instStar](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/inststar.md) | 389 | `declaration-track:b453326a6d990da612305729ddc0779b25f1dbbad07e9e6607793f15d3cf1be1` |
| 59 | `theorem` | [star_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/star-fst.md) | 401 | `result-track:6625c38b84034ce30fccb694e85770bc0121e96dcf6699056d0b3cbea5d45064` |
| 60 | `theorem` | [star_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/star-snd.md) | 405 | `result-track:77af692acbf6a8bfa0ce34c2d3ed7d08ba6eb6ace5d3d3ca6dd8c0e80b64c329` |
| 61 | `instance` | [instStarAddMonoid](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/inststaraddmonoid.md) | 408 | `declaration-track:a9ae9b13532aa84e840b2d80c350893936953835ad15b2265720367df8b1ba71` |
| 62 | `instance` | [instStarRing](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/inststarring.md) | 415 | `declaration-track:2a3ce66a2d7a84e586ce7a4a709bd80060080b98479a78d365fcd11804bfa1f4` |
| 63 | `instance` | [instStarModule](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/inststarmodule.md) | 422 | `declaration-track:d0e64739ba7833d007b7a8ef3d55b89000c4a5a778a1a5747e71b7f7efcce56f` |
| 64 | `def` | [coe](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/coe.md) | 440 | `declaration-track:56c9607f3ec7dfe7382b396fc625c38aa7d8869aad7ac1cd98b57f81ef32781b` |
| 65 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instance-source-edition-4.md) | 451 | `declaration-track:e424e15fc09d1b891b92e8dd47c93e6e90aa7c31213a32cb84c0b5f41778805c` |
| 66 | `theorem` | [coe_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/coe-fst.md) | 455 | `result-track:08277d59fe318beaee5abb2a02cf81a659b2edbb710b389888952af2114d1807` |
| 67 | `theorem` | [coe_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/coe-snd.md) | 459 | `result-track:83b59dd7e6f3d5585742eda0d7f7ba9fa66748aa4e632c5cf8313e917ce5c638` |
| 68 | `theorem` | [coe_eq_algebraMap](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/coe-eq-algebramap.md) | 462 | `result-track:48b1646c4f587e10155da921d5945ddbe6e53aa2855f515fa0af3fc1680a9363` |
| 69 | `def` | [coeHom](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/coehom.md) | 471 | `declaration-track:e5754bc59720d34053c74448d126ec12a5ccea49e27396854ebfbade48c43148` |
| 70 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instance-source-edition-3.md) | 498 | `declaration-track:cc03d94d821b4e99ca9dd0ab26c6c72f7a1ffd0e7b9e729346cf51ffd427b8eb` |
| 71 | `theorem` | [norm_def](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/norm-def-source-edition-2.md) | 504 | `result-track:51278a00934682a3f127741962c328c0a11aa7d849060f361cc9a1400593cacb` |
| 72 | `theorem` | [nnnorm_def](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/nnnorm-def.md) | 507 | `result-track:3fed56ae95c6a5f92891a4a0354b637cb5ea1d041c7b5763a4d97ffd4a88cbda` |
| 73 | `theorem` | [norm_def'](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/norm-def.md) | 510 | `result-track:211311c90e258fcba7a5b64f18d399b41cf3ee8302db121fb14b00bfb1902da3` |
| 74 | `theorem` | [nnnorm_def'](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/nnnorm-def-source-edition-2.md) | 513 | `result-track:aa70f55fd3f5d354705261cfc3b568135c76b1cf7e16d143b01c5993e945c9c4` |
| 75 | `instance` | [instNormedSpace](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instnormedspace.md) | 516 | `declaration-track:cf78a583d67dd22903dd9ed835d7f1a237c53c8b09ee360644d53b4895274dae` |
| 76 | `instance` | [instNormedAlgebra](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instnormedalgebra.md) | 520 | `declaration-track:c019fe68a94c65042122a613799f3ffa93a8757e77cb946eac45bd23c8025581` |
| 77 | `theorem` | [isUniformEmbedding_toProdMulOpposite](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/isuniformembedding-toprodmulopposite.md) | 523 | `result-track:1faaf83d6de378da309f974fabb5a53131cbd56a157c0f7d959004e3db99ef11` |
| 78 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instance-source-edition-2.md) | 527 | `declaration-track:741a04218bbc3de702f378dbbfe55e2d114466c1f81c7c907163599a211ea022` |
| 79 | `theorem` | [norm_fst_eq_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/norm-fst-eq-snd.md) | 541 | `result-track:fad7e7714f57b8ee8d020172e4cdd7d8136d955d0ee2f088e65844708ed15433` |
| 80 | `theorem` | [nnnorm_fst_eq_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/nnnorm-fst-eq-snd.md) | 577 | `result-track:26436072827a2a3a6f859d943ceac5b18a3baed666b13e0b9560e7d51403362e` |
| 81 | `theorem` | [norm_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/norm-fst.md) | 581 | `result-track:7261b81f2c8a7d7778950a87c4a2afa7c33036835ab8af00b6024f546cdfaa97` |
| 82 | `theorem` | [norm_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/norm-snd.md) | 585 | `result-track:4f43431b2d9e785bd81b38a2a4c1e5b49f63c09eb5895e8f8ebf3cb55088772f` |
| 83 | `theorem` | [nnnorm_fst](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/nnnorm-fst.md) | 588 | `result-track:d2a6b9d036f0cfccf2d0015351b4de739e74c59f3501416e50522f3d136c9f97` |
| 84 | `theorem` | [nnnorm_snd](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/nnnorm-snd.md) | 592 | `result-track:f2f5c7ff7c6068c8ff4667acfec62bdbe060f0a0104dc0b8b24f94a699bf0894` |
| 85 | `instance` | [instCStarRing](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instcstarring.md) | 603 | `declaration-track:63c2bee46828fb738b06e376b4c82bc9674696ceddc6079b4a9fe38c08780373` |
| 86 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraMultiplierNamespaced.lean/declarations/instance.md) | 654 | `declaration-track:686733afd41d86379dbe3d5cfe73476c5c7ea26ff2955d5b47637d63b27e6e43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7819994609951da19da655dd5a917a9722b7c4669a23ac24c67c9e80a5cdbef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Multiplier/Variantf5164c958b3465391851517b5c22bd2bcbe976c0728210b5e14fd67126e96dd2.lean","GRWTSK/_verification/specifications/Analysis/Multiplier/Variantf5164c958b3465391851517b5c22bd2bcbe976c0728210b5e14fd67126e96dd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
