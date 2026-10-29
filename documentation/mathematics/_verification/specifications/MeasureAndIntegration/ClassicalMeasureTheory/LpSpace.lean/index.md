# Verification target: Lp Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "086920a13e481303d1474b03c12442c2af516c1c",
  "lexical_observation_count": 216,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `086920a13e481303d1474b03c12442c2af516c1c`.

Source path: `GRWTSK/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Compact` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/macro-rules.md) | 71 | `declaration-track:28ddc2c246ac26f175cac64f1063c350d6e778d1ce9bc2cb2c1a1b623c06fae4` |
| 2 | `theorem` | [snorm_aeeqFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-aeeqfun.md) | 86 | `result-track:76ca232625ce6450054d295fc5302422660e24a396d6013219ac45f2817d3ff5` |
| 3 | `theorem` | [Memℒp.snorm_mk_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-snorm-mk-lt-top.md) | 92 | `result-track:ce789fc654c53e1c457ab2d20c8304cc5ea8b6b7707d9b45d03b9465d4d57b9a` |
| 4 | `def` | [Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp.md) | 98 | `declaration-track:7335be761b7295b94105f64f1b4d777532c4c811f8eedbaf8cc9da37a0c985d2` |
| 5 | `def` | [toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-source-edition-2.md) | 115 | `declaration-track:981392983f91d28a69f6ee0e9bad8c92f778baf185f575cab6e5cd4be9cffdd2` |
| 6 | `theorem` | [coeFn_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-tolp.md) | 119 | `result-track:3d12395a9012828930a62156ae6f4624d193a36439d1cfb6baa46a61d0e022a1` |
| 7 | `theorem` | [toLp_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-congr.md) | 123 | `result-track:82c52f66e762b9e34f02b8472755400509285fc7300c74d319b29b93cf3f1585` |
| 8 | `theorem` | [toLp_eq_toLp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-eq-tolp-iff.md) | 128 | `result-track:2c18ff0c9f02d787a9f9fc674bd5b5bcc1a175d53a877dbe48ab42c26155ad51` |
| 9 | `theorem` | [toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-zero.md) | 133 | `result-track:3cc26891df20e150249fd7418b5d2b06fcd4c2ad5dbe69ba54023d09a5480394` |
| 10 | `theorem` | [toLp_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-add.md) | 137 | `result-track:13ab7eb11e19aaccdcd9b8bb37e98f0a8fb9ceb095d1384e580911bd6a493b29` |
| 11 | `theorem` | [toLp_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-neg.md) | 142 | `result-track:98522371657a57ce714c2d769375d9dbd3c07ff534ceab6d8017ae5c0eed295e` |
| 12 | `theorem` | [toLp_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-sub.md) | 146 | `result-track:d994cb82032b0da5501213dbf32979e8f79419cba313a8d6be932799c840bf0a` |
| 13 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instcoefun.md) | 155 | `declaration-track:11970ae74b4222612415c07bd186d2b39dfaf13e2683d82824f4f7a8bf395d0a` |
| 14 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/ext.md) | 160 | `result-track:b6bd206168bfdbc8ebe927d034640a231508f434eaff1e79fbae39efa1b5475e` |
| 15 | `theorem` | [ext_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/ext-iff.md) | 167 | `result-track:bae556f040602c9cd6d0928662d1b414cfd1bc1914a1c476859f52287e65e838` |
| 16 | `theorem` | [mem_Lp_iff_snorm_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-lp-iff-snorm-lt-top.md) | 171 | `result-track:bde9e77cbb6fd8b739530260b44d8a2c2d44d634a0f1e5bf189acd96dcb48c16` |
| 17 | `theorem` | [mem_Lp_iff_memℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-lp-iff-mem-p.md) | 175 | `result-track:841f4615ffd7b2cd75f2cde486146b6e6e452adfe458fdfbbb3b30d2f065a951` |
| 18 | `theorem` | [antitone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/antitone.md) | 179 | `result-track:09f8fd8f2f5726ee919090fab8d6f812b708f3f0b6f60e111bfc200a70b97b58` |
| 19 | `theorem` | [coeFn_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-mk.md) | 184 | `result-track:10e1bdc9f2522e74f4d86872bb4e06a75912d0ddb16432ab9f0a64bea0b51416` |
| 20 | `theorem` | [coe_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coe-mk.md) | 189 | `result-track:4a7f16a22d8c167772b6a352bef7cd9c369517d1b6fec1612e0367b05992099a` |
| 21 | `theorem` | [toLp_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-coefn.md) | 194 | `result-track:a069831bdfd0c1a8c0b699fb22fd36de5c70061d20ac3aa81e7af93580480ad7` |
| 22 | `theorem` | [snorm_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-lt-top.md) | 199 | `result-track:6ae75920bf9dc205cbec419bb0e61fae7f617eaad7f0dcb588051c251eb584e2` |
| 23 | `theorem` | [snorm_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-ne-top.md) | 203 | `result-track:15b6a9362a18a01f3d6e9fc7737a98046961967aed613115dcd4204c825ce2ce` |
| 24 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/stronglymeasurable.md) | 208 | `result-track:bb285140a2218b102d0beea2f4cb60b0a12cf3aceac900d8697c721ffb596a11` |
| 25 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/aestronglymeasurable.md) | 213 | `result-track:d14a970cbbd8e194046c83882afd4c2feda31cd8b3df5cde4ae6e61810c9c725` |
| 26 | `theorem` | [memℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p.md) | 217 | `result-track:64829fdc43cba65987ac67da2780fdae9e488ff025e64b8bf5b2ae790369ce62` |
| 27 | `theorem` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-zero.md) | 223 | `result-track:9ff6c5cc1d0554b84ad72fa2e97145b4c8bfbb9f7ababd12979db1908cbf2f34` |
| 28 | `theorem` | [coeFn_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-neg.md) | 229 | `result-track:f230007263569973d6354a392d72eccef26558dd6d2930bcfba92c62a3213fb9` |
| 29 | `theorem` | [coeFn_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-add.md) | 233 | `result-track:3b22db17acad871ddba9dc40777f4e9fd50bf463816c0146adaf10ffea96a89a` |
| 30 | `theorem` | [coeFn_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-sub.md) | 237 | `result-track:286317fb9e4272c1ea752e4904aef9c2877ccddeb6c6d64ae6c0b3f1ea54bfa6` |
| 31 | `theorem` | [const_mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/const-mem-lp.md) | 241 | `result-track:61bfbf61e342b2fa97a00d0177c535c0475c6557f253176a338cdccabb818845` |
| 32 | `instance` | [instNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instnorm.md) | 246 | `declaration-track:2b1afdb1ef00cc537e246755ac53c52f4f7c577c31a22240eb19f8de3246fb70` |
| 33 | `instance` | [instNNNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instnnnorm.md) | 251 | `declaration-track:de684f1f3cad498924c37c60ee8b15623d21d54145311e9e7dad5a4177b31a4a` |
| 34 | `instance` | [instDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instdist.md) | 254 | `declaration-track:2ca18336178f3762e7ea3760a113752ab0b9b23f75226a2d89bda81636303be5` |
| 35 | `instance` | [instEDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instedist.md) | 257 | `declaration-track:ebd98ed975133e11c08433c5f65801afb6bb0631040b5719b4c0d64edd85e997` |
| 36 | `theorem` | [norm_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-def.md) | 260 | `result-track:b1cfeb3a7ee4efbb063bd1a0996197d024fcedeac7d70f8d49d3671d53a24e9a` |
| 37 | `theorem` | [nnnorm_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/nnnorm-def.md) | 264 | `result-track:9c80abe0bc98573b7425221a096f5b13474fa7ebe5e1b0c72ce12b93eaefd7ee` |
| 38 | `theorem` | [coe_nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coe-nnnorm.md) | 269 | `result-track:d05efc7682676c646c54e9e5b04bbc9e2dac53a194489fc491a7bddb8039b57d` |
| 39 | `theorem` | [norm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-tolp.md) | 274 | `result-track:9155a4034cba31cfb355249e758b656a7bbf28c90b094e0f4ea7949f2b0f4573` |
| 40 | `theorem` | [nnnorm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/nnnorm-tolp.md) | 279 | `result-track:a01bb98c2a7b89e453f2ed9b35c55d16409dd18d1a1ff6f28e2f3ff03be989d7` |
| 41 | `theorem` | [coe_nnnorm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coe-nnnorm-tolp.md) | 284 | `result-track:b748e85e4277b0a18b84eabcbdc82a7780e8eec729816ea21f845b1002769186` |
| 42 | `theorem` | [dist_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/dist-def.md) | 287 | `result-track:3534d2be3bccaba39264cbcf2ec08f2a4777ffe95ae3f18bf3946d8f8ed09e5e` |
| 43 | `theorem` | [edist_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/edist-def.md) | 293 | `result-track:e945948fb2d532bbd2add2e8b976a938237f3318294a0df8907440835d5c8f7a` |
| 44 | `theorem` | [edist_dist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/edist-dist.md) | 297 | `result-track:205f951ea76b38bc535c8d7aa1adb3551074a8b7de18b0f6ead4e8254288824a` |
| 45 | `theorem` | [dist_edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/dist-edist.md) | 301 | `result-track:a3f910a094b8c1ef7dd88e37df5a3bf7b6775551b1ad32ac218ecfc94aad5da1` |
| 46 | `theorem` | [edist_toLp_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/edist-tolp-tolp.md) | 305 | `result-track:a85bea4ca0d1ea8434793f7d868b8bc3a4f1f67b62e849471a640d6570932169` |
| 47 | `theorem` | [edist_toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/edist-tolp-zero.md) | 312 | `result-track:3d118d5db50992d80fe13d6293a0af70d9d3ea0e8c5fe66eaa9fe14ece3599fa` |
| 48 | `theorem` | [nnnorm_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/nnnorm-zero.md) | 318 | `result-track:3a759e98f923d54a76063c193be9c978a39201cc72a312412b882a78b13789ec` |
| 49 | `theorem` | [norm_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-zero.md) | 325 | `result-track:d25d40e626797678c04d6e990f8f0705be101a9da6a4f90f24e075056bda4d07` |
| 50 | `theorem` | [norm_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-measure-zero.md) | 330 | `result-track:9e69369c91b0043e7a1a0f94ec600a46ece445bc5282d9dbe5aa23789cb361f5` |
| 51 | `theorem` | [norm_exponent_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-exponent-zero.md) | 333 | `result-track:75d741ccdeea0737c1953b9d28e5421170260cbba9c9eb2a42733a9e3536f3d6` |
| 52 | `theorem` | [nnnorm_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/nnnorm-eq-zero-iff.md) | 335 | `result-track:bef122dfefc171a5b47c8678cf4dcea34a0070c363af2100ca3da1233258f922` |
| 53 | `theorem` | [norm_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-eq-zero-iff.md) | 346 | `result-track:a4b8f1d95a85020f1949f074c995edf0539231afeb62f2f4f2c71ef08e613ab3` |
| 54 | `theorem` | [eq_zero_iff_ae_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/eq-zero-iff-ae-eq-zero.md) | 350 | `result-track:b72f5956a4cd54adb3130cc97906dcda87797aea07cd8256d555ad3fea7c1807` |
| 55 | `theorem` | [nnnorm_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/nnnorm-neg.md) | 355 | `result-track:196e30f739e0dc819301ad9aa4b57dc44ecdfc02c7286e605e1b03df6db365c4` |
| 56 | `theorem` | [norm_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-neg.md) | 360 | `result-track:f044c9c49a44a319029b444eccce3285ccfe763d99c9c6b4996509563946960f` |
| 57 | `theorem` | [nnnorm_le_mul_nnnorm_of_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/nnnorm-le-mul-nnnorm-of-ae-le-mul.md) | 364 | `result-track:d91521d04a799c5ecfa08bfa50a5b2cc6839eab7dc2bd289207b0e60e61827d0` |
| 58 | `theorem` | [norm_le_mul_norm_of_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-le-mul-norm-of-ae-le-mul.md) | 374 | `result-track:12bc28f4ff1587a30936399a5a03714ec795f89a9d06430031c880c8ea9fdbb3` |
| 59 | `theorem` | [norm_le_norm_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-le-norm-of-ae-le.md) | 384 | `result-track:9f4850e49ea1da6dac2aeadb2972e9cc3cdc1b8b7d442e189815c5eeb0581ca5` |
| 60 | `theorem` | [mem_Lp_of_nnnorm_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-lp-of-nnnorm-ae-le-mul.md) | 390 | `result-track:f2942855ca03f98216fc40f6fbabd1056c96dd3c2ee849e887bb60fc0251f9d4` |
| 61 | `theorem` | [mem_Lp_of_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-lp-of-ae-le-mul.md) | 395 | `result-track:60b191006095f59d81633cbea94082a1c64ccb7dd0f63582c5438dc11c7799eb` |
| 62 | `theorem` | [mem_Lp_of_nnnorm_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-lp-of-nnnorm-ae-le.md) | 400 | `result-track:bd67250dafacc0db838c3988833941fd290fbfc6c24c2431f28a409f66c55ef6` |
| 63 | `theorem` | [mem_Lp_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-lp-of-ae-le.md) | 405 | `result-track:7f1fb5d284d2be5184603342cadd551bb7d6567b8a5de5e3c5b3d65b7a1ee97e` |
| 64 | `theorem` | [mem_Lp_of_ae_nnnorm_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-lp-of-ae-nnnorm-bound.md) | 410 | `result-track:ffa28cc195e011be1c50e1e505d4ee2850269ed9387dec806775dd3405523488` |
| 65 | `theorem` | [mem_Lp_of_ae_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-lp-of-ae-bound.md) | 415 | `result-track:9746e73ffd8bc745193cecee7cab6a9f7794374531a5dcbfb54b282f3ff3e850` |
| 66 | `theorem` | [nnnorm_le_of_ae_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/nnnorm-le-of-ae-bound.md) | 420 | `result-track:b5138e3eb419282beba1670237adeb9c0b1412020c85fbf731bf2b60bc8d1c55` |
| 67 | `theorem` | [norm_le_of_ae_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-le-of-ae-bound.md) | 432 | `result-track:e526f5725ca492f45a4e8f0a486fb303c2c64be5c24adae8ca6903b6ce792259` |
| 68 | `instance` | [instNormedAddCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instnormedaddcommgroup.md) | 439 | `declaration-track:8b762904000e8151812b9385ec37c21ab88c05ef12ef744a9ce439941fe4766b` |
| 69 | `example` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/example.md) | 459 | `declaration-track:00911fcb9b336ce1f4e200fc57ea396711c0a5c2dd6bde1d6726e07b9119c96c` |
| 70 | `example` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/example-source-edition-2.md) | 462 | `declaration-track:a0e11f1599c14cb54a3430608f93ae9ce8578ebf348c63c9fe8f41b54bf57f0d` |
| 71 | `theorem` | [const_smul_mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/const-smul-mem-lp.md) | 473 | `result-track:de5dd927115dea5e87383f85a5d5887557a3ec5401a8f73ceb89cb1e0a7935d4` |
| 72 | `def` | [LpSubmodule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lpsubmodule.md) | 484 | `declaration-track:7e3e090ea6af52a745ffb77d4e284abbad68904d79e006e8f96c32327ca68e77` |
| 73 | `theorem` | [coe_LpSubmodule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coe-lpsubmodule.md) | 490 | `result-track:46613e1282d751610afe10aff164b9655adaec8180cf38dbfb02014e4ba9ff3f` |
| 74 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instmodule.md) | 494 | `declaration-track:b2502a5c0e04d2ab23de4d2efedffaf77acef18bddddb957c52f9ed1477b1554` |
| 75 | `theorem` | [coeFn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-smul.md) | 498 | `result-track:b09a4116f1ec88e476b2f963b9be86afac1502baee65f8b5209c1b3141af3ccb` |
| 76 | `instance` | [instIsCentralScalar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instiscentralscalar.md) | 502 | `declaration-track:7fe5c8318b48e57c947fdbece9c67d69e1367a406dd52baea5ea49a3904f93cb` |
| 77 | `instance` | [instSMulCommClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instsmulcommclass.md) | 507 | `declaration-track:939cfc84c37c6f4ee45aa40e71f8cba7764918354f3e64190ee02590f73f8bbe` |
| 78 | `instance` | [instIsScalarTower](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instisscalartower.md) | 511 | `declaration-track:b4b3e7c91664b01baf5d470b52ea1b61916ec1d30fe15422e2eec7bdeb811cee` |
| 79 | `instance` | [instBoundedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instboundedsmul.md) | 514 | `declaration-track:3d23ade09020e4418b839b309a70f0445a84fe7211a607b1697b564188fb770a` |
| 80 | `instance` | [instNormedSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instnormedspace.md) | 530 | `declaration-track:f10b18a49d40e8bbda81f3c62a76c6c1c984b59fe146563524cbd87b61d70bbc` |
| 81 | `theorem` | [toLp_const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-const-smul.md) | 542 | `result-track:24404eb6a2ae0810b3ebfee9a431e211ed62601fb7f8fde0bf670f889cc23525` |
| 82 | `theorem` | [snormEssSup_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snormesssup-indicator-le.md) | 562 | `result-track:53051954e4db139615b27c46e56e6b0bec8690c20d2bcfaf5a18dbc4076a9ead` |
| 83 | `theorem` | [snormEssSup_indicator_const_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snormesssup-indicator-const-le.md) | 569 | `result-track:d98de69070a035aa632bf15d79c089c55fcf3bc2e1cf52747d17f66d8e62d20c` |
| 84 | `theorem` | [snormEssSup_indicator_const_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snormesssup-indicator-const-eq.md) | 577 | `result-track:30e26990f568d5d9a8031e3a435ea9fc2f4c2a98fa9840bd66e9f60ef1a93b1f` |
| 85 | `theorem` | [snorm_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-indicator-le.md) | 587 | `result-track:bfb50f428e490145f3325aee2e19b8a8494b335cf1b6b2b2f5df815f2d0c1438` |
| 86 | `theorem` | [snorm_indicator_const₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-indicator-const-source-edition-3.md) | 595 | `result-track:d93e6c998d9d25f41488f7a6c3f8dce0d9da404ae6874df0284ed3a437a8ec05` |
| 87 | `theorem` | [snorm_indicator_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-indicator-const.md) | 611 | `result-track:98f7d4261370b4adeb18ff5af005f243f4140b94e353d4a6cb365513a5c12b5b` |
| 88 | `theorem` | [snorm_indicator_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-indicator-const-source-edition-2.md) | 616 | `result-track:becbe31ec58492ee898cf872f46b9c33c0b4f2d01ddf9f23f2dba31f9049693d` |
| 89 | `theorem` | [snorm_indicator_const_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-indicator-const-le.md) | 623 | `result-track:860b7c91bb6c0da1f298464fde615b0a47fd2051d556c365b324a95df7bbf37a` |
| 90 | `theorem` | [Memℒp.indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-indicator.md) | 639 | `result-track:fe2deaffd699b7401ef9e0167c834d83882577b17e70adc21c1bdbb3bbb51fab` |
| 91 | `theorem` | [snormEssSup_indicator_eq_snormEssSup_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snormesssup-indicator-eq-snormesssup-restrict.md) | 643 | `result-track:b3828e2ab2e95b876ceba406f18b2a72a7ffce4c874fe1e57eea60acb5074be1` |
| 92 | `theorem` | [snorm_indicator_eq_snorm_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-indicator-eq-snorm-restrict.md) | 658 | `result-track:7d60279626c18a655a436dd62c507b8732d780a5a67bf40697022a5878a9b533` |
| 93 | `theorem` | [memℒp_indicator_iff_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-indicator-iff-restrict.md) | 678 | `result-track:bb911b075fd98e8307d6005d67d1cf6aee804bddf6d948077133881b302ce501` |
| 94 | `theorem` | [memℒp_indicator_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-indicator-const.md) | 683 | `result-track:90a566b107ed3b352f4ecf7004a14fc9b8c205a06b22c337ea1578ab0648b344` |
| 95 | `theorem` | [exists_snorm_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/exists-snorm-indicator-le.md) | 695 | `result-track:62e3736c5ba4b5fc3b62ed872931ccf1a0e0a8c09e4c0e21e5b6b0c736b26446` |
| 96 | `def` | [indicatorConstLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/indicatorconstlp.md) | 732 | `declaration-track:2d376a609be24d2a98c7e44d82e5f14d42cba6300bf997dbb36cfbffb603505a` |
| 97 | `theorem` | [indicatorConstLp_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/indicatorconstlp-coefn.md) | 736 | `result-track:a92a64d6c3a16c63d8ab094773b951940de7e65d4a4fd5b03bbf0ee2ae12a2e5` |
| 98 | `theorem` | [indicatorConstLp_coeFn_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/indicatorconstlp-coefn-mem.md) | 740 | `result-track:c118d5a4d4cc794e25a6906452ebab63e92b20e4afa867df171c037c1d069bf0` |
| 99 | `theorem` | [indicatorConstLp_coeFn_nmem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/indicatorconstlp-coefn-nmem.md) | 744 | `result-track:f48142c5e45b8e3877a58152bfb522c37728bf878eb5e4ca20dc1c4dc134885b` |
| 100 | `theorem` | [norm_indicatorConstLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-indicatorconstlp.md) | 748 | `result-track:2b55e3a72adc46fc21956ee45822a3ebb63abb0221873a69aa21d8d6972ebf43` |
| 101 | `theorem` | [norm_indicatorConstLp_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-indicatorconstlp-top.md) | 755 | `result-track:b3c4160274ccece6f7738407d28dfc91830a4aaeaf2192a071f20c030a51509e` |
| 102 | `theorem` | [norm_indicatorConstLp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-indicatorconstlp-source-edition-2.md) | 762 | `result-track:f76dd7232a5a1ab720239bf0feb4f01554bb5d37a0ade8fc917b2dec607b5062` |
| 103 | `theorem` | [norm_indicatorConstLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-indicatorconstlp-le.md) | 770 | `result-track:49b0d41ea5e6bbd662c64853e05c2f439dc9520a4ee15519d7bba7824876580d` |
| 104 | `theorem` | [edist_indicatorConstLp_eq_nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/edist-indicatorconstlp-eq-nnnorm.md) | 779 | `result-track:27833a27fd5f99b4cae22c7e3e0ad36ecc4fbb08ed59aef22b957b16c59588a4` |
| 105 | `theorem` | [dist_indicatorConstLp_eq_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/dist-indicatorconstlp-eq-norm.md) | 785 | `result-track:253dc2b5dfae8ce1d2307565453c6b99699d319bb756e088dd7107582a3d5bcb` |
| 106 | `theorem` | [indicatorConstLp_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/indicatorconstlp-empty.md) | 791 | `result-track:f529eb57a35d81370276197806b4dd1bb5cb179fc69c1e43113927d808761dbb` |
| 107 | `theorem` | [memℒp_add_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-add-of-disjoint.md) | 799 | `result-track:0cb7ed2d6daff536c8986efa8fce4cae1a2b40df0906f69d5d72876d0561ff41` |
| 108 | `theorem` | [indicatorConstLp_disjoint_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/indicatorconstlp-disjoint-union.md) | 809 | `result-track:8b36c8ef1597b8905b882ab85ecc609b5ce51d3b12e25d103ecfbca4625217c8` |
| 109 | `def` | [Lp.const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-const-source-edition-2.md) | 829 | `declaration-track:e28b8709f9489ed302089a17c98df322b9340db5b698637ddffa8d11b569e7a0` |
| 110 | `lemma` | [Lp.coeFn_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-coefn-const.md) | 834 | `result-track:62bbfb01a7959a72db3f8697baa54e4f833c3b92675453a6326fd0d73ff6332c` |
| 111 | `lemma` | [Lp.const_val](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-const-val.md) | 837 | `result-track:8466efbee46b17015e014f801f32f1460d018c1124fb7c0f5fd3ba2f9931918f` |
| 112 | `lemma` | [Memℒp.toLp_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-tolp-const.md) | 840 | `result-track:4d9f39b4b7cee9e31053029a4660f559a0926a175813cf192ae1b0dcae67e9e6` |
| 113 | `lemma` | [indicatorConstLp_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/indicatorconstlp-univ.md) | 843 | `result-track:61a4f64cd31ed1200a79c83be13023d5688485b80524e44357b3b779e439e852` |
| 114 | `theorem` | [Lp.norm_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-norm-const.md) | 848 | `result-track:1a254d36206cb4d78f06a38c662dc25c1dc888fc13157efd3e11b0d2bb83b3c5` |
| 115 | `theorem` | [Lp.norm_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-norm-const-source-edition-2.md) | 854 | `result-track:4ff195f7c7e1ebd2e5599494b47f2983b7c0360beae1e2f1d31cd4416cf43380` |
| 116 | `theorem` | [Lp.norm_const_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-norm-const-le.md) | 859 | `result-track:110f197bb80939d7bf785a57c9baab54d12223b327ce5c179a5934ef01702e0a` |
| 117 | `def` | [Lp.constₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-const.md) | 864 | `declaration-track:570f7382b5286530c39ffd1ee17b974aaba06e8338cd81976084c03cbe56053b` |
| 118 | `def` | [Lp.constL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-constl.md) | 871 | `declaration-track:43d20dd47bd689e29802516170094ad2cfc78a532a91e1e2c47fa19cc9168b64` |
| 119 | `theorem` | [Lp.norm_constL_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-norm-constl-le.md) | 876 | `result-track:804344eb0aa7afc5dbc82017a1b795bb3f4986a839f699164b34f581096e3e3f` |
| 120 | `theorem` | [Memℒp.norm_rpow_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-norm-rpow-div.md) | 883 | `result-track:d48e66ce32db19b1785bfa4a166454ee904dc2da595ba7c8008b3c203821594a` |
| 121 | `theorem` | [memℒp_norm_rpow_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-norm-rpow-iff.md) | 900 | `result-track:0c7952c40883b8b1ecbf32aab54ef248a47ed8474c56fb58b43c81e0ede667f5` |
| 122 | `theorem` | [Memℒp.norm_rpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-norm-rpow.md) | 913 | `result-track:84a9ce6ab250de404400f1c3498d531ca4ba96ee13d0946cf0cd235bb2801c19` |
| 123 | `theorem` | [AEEqFun.compMeasurePreserving_mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/aeeqfun-compmeasurepreserving-mem-lp.md) | 919 | `result-track:5b567b76ab6eb5c50c89f7b710c1d461709cbe1c0b65b5aa502bcc6d4eee95e6` |
| 124 | `def` | [compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/compmeasurepreserving.md) | 933 | `declaration-track:1ffcbb96eaf5a33b2c29b24d9ab05afa2b1043507d774c876bc3e84286a18f76` |
| 125 | `theorem` | [compMeasurePreserving_val](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/compmeasurepreserving-val.md) | 940 | `result-track:1042d12098a0944af3f5e1812680d41c2208b179a122894af6175a093c18322b` |
| 126 | `theorem` | [coeFn_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-compmeasurepreserving.md) | 944 | `result-track:d8d26b360349f450cc898972d58d3a47ad0f2e49cd427b53c816ff49af19e126` |
| 127 | `theorem` | [norm_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-compmeasurepreserving.md) | 949 | `result-track:8a1c43727bd370fae5b5eaf1bc34a60de2fdc4f7052f047daa8af5c47a176042` |
| 128 | `def` | [compMeasurePreservingₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/compmeasurepreserving-source-edition-3.md) | 957 | `declaration-track:436e356f06fa5e9d1424883843e2a0e3b3f4e8c364a90194088ed9695f9bf78e` |
| 129 | `def` | [compMeasurePreservingₗᵢ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/compmeasurepreserving-source-edition-2.md) | 964 | `declaration-track:3c745dd3fd550c55bf14b1abb16a2e6af0b6a4c3ccfa04cfd1334d0d6ed7967b` |
| 130 | `theorem` | [LipschitzWith.comp_memℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lipschitzwith-comp-mem-p.md) | 988 | `result-track:8fc10114fb0d485f5cd06e0bddb4f0d55fb64f5891ea077ea344498d74e1a5d6` |
| 131 | `theorem` | [MeasureTheory.Memℒp.of_comp_antilipschitzWith](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/measuretheory-mem-p-of-comp-antilipschitzwith.md) | 998 | `result-track:7ff66bdfcbb91814f37f9bb696e7e117dc7642fe12874f555877932ad013d91d` |
| 132 | `theorem` | [memℒp_comp_iff_of_antilipschitz](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-comp-iff-of-antilipschitz.md) | 1014 | `result-track:a994da76ae7283ec351015fcadc16ae574f063e27fe46c95e56acf9a9d5fa1c5` |
| 133 | `def` | [compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/complp.md) | 1022 | `declaration-track:7784210e91069441b2c5e20f01d0bdba8bfe745b43b23b90c27fd8f78625ba8d` |
| 134 | `theorem` | [coeFn_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-complp-source-edition-3.md) | 1032 | `result-track:572297da4d5b305bd68cc020c2dad5593c69fe57cbf861f8db0af5904b33e2a2` |
| 135 | `theorem` | [compLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/complp-zero.md) | 1038 | `result-track:de668b0f2d5c35a7feeb7bdd12670c865fdde8c9edd3ced6bf57f726cdceee46` |
| 136 | `theorem` | [norm_compLp_sub_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-complp-sub-le.md) | 1045 | `result-track:4a375851fe361093965fd35e2fb62b544c1edce092422031e724562d06108546` |
| 137 | `theorem` | [norm_compLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-complp-le.md) | 1054 | `result-track:8004673aa4ff25085f5d9e546cd5a8ebd48698123c34746730532c4249a85a36` |
| 138 | `theorem` | [lipschitzWith_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lipschitzwith-complp.md) | 1058 | `result-track:58a19402f574ef207364b2b27b150f95a1b31f48316e4ee9ce43946fbab85e2b` |
| 139 | `theorem` | [continuous_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/continuous-complp.md) | 1063 | `result-track:e6212c51a01e3628c419acb3367039495f32128f34ef715836c7f07dd2fcbfb2` |
| 140 | `def` | [compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/complp-source-edition-3.md) | 1075 | `declaration-track:ca4d434818b984b9e1417128c5652af8a936938fd6b5f3870f350ebfc85101b4` |
| 141 | `theorem` | [coeFn_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-complp.md) | 1079 | `result-track:23c645b57bb49a3d012350edf1e722a3a2fc626dd22849b940410d5bc1c9c36b` |
| 142 | `theorem` | [coeFn_compLp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-complp-source-edition-2.md) | 1083 | `result-track:3a09d13c273ed52e24dda5929d14759c91ba058f1ac0845a2f4820b6f25861d6` |
| 143 | `theorem` | [comp_memℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/comp-mem-p.md) | 1087 | `result-track:54a41fcd11ad35da8d21223159a94bcae483705338d6807642c5d385c66252e6` |
| 144 | `theorem` | [comp_memℒp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/comp-mem-p-source-edition-2.md) | 1091 | `result-track:58d3952f034d413308c4f0dae9341d7007a232b17a9e4f06f90fb4258c8a1a81` |
| 145 | `theorem` | [_root_.MeasureTheory.Memℒp.ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/root-measuretheory-mem-p-ofreal.md) | 1099 | `result-track:4101c227ba6e7e331d1c48d0784b0a44a5b05be51d64416a4eefae626944345b` |
| 146 | `theorem` | [_root_.MeasureTheory.memℒp_re_im_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/root-measuretheory-mem-p-re-im-iff.md) | 1104 | `result-track:73e57e6bec634010377374a117df8b4134a4155e8c18aa7653a18fcff028101b` |
| 147 | `theorem` | [add_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/add-complp.md) | 1115 | `result-track:b3689c1f6716e25a863708a9be76a07dfa8655aee6308632d42319b607a38cc9` |
| 148 | `theorem` | [smul_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/smul-complp.md) | 1126 | `result-track:31322b60e0c36be5ccd44a16decb5232f97fbc1deef22e3b7ef94f0e73c7e433` |
| 149 | `theorem` | [norm_compLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-complp-le-source-edition-2.md) | 1136 | `result-track:b0dd3e31d1cbb83e1db7ccdd1ad5a10f21ac4b781402ff3e3fd241aff7f53f4e` |
| 150 | `def` | [compLpₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/complp-source-edition-2.md) | 1143 | `declaration-track:c29631671ff48efbdc8349fc06c0dcba1a09657b1a72bcd7f5c49f73d5d6d3a6` |
| 151 | `def` | [compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/complpl.md) | 1168 | `declaration-track:92ec588892816f60994f3f1c80d14c4e87137eaa0f0cc7c841b4c03907142862` |
| 152 | `theorem` | [coeFn_compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-complpl.md) | 1174 | `result-track:5c7cbaf086a74cbe4f0414925614a419b768259f762f761d34b92107d7e1c41e` |
| 153 | `theorem` | [add_compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/add-complpl.md) | 1179 | `result-track:7316548662f0acd579a30f28dc0bc1b9f184ce4dfa08334ee0b900863004cc4d` |
| 154 | `theorem` | [smul_compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/smul-complpl.md) | 1184 | `result-track:29c771f6d30f521f4d73de1b35ce7ec95bcdb7258326e39d827b8036db7fbd8d` |
| 155 | `theorem` | [norm_compLpL_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/norm-complpl-le.md) | 1189 | `result-track:e3143cfc4f11921ed16c88908c12dd8fe6edfa37d4a395a1cde6cb4e5a180942` |
| 156 | `theorem` | [indicatorConstLp_eq_toSpanSingleton_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/indicatorconstlp-eq-tospansingleton-complp.md) | 1197 | `result-track:30aaa11ab2fe7387922705d60b83949c420e42ed7ca43ffd9b4d79d565a3ee4f` |
| 157 | `theorem` | [lipschitzWith_pos_part](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lipschitzwith-pos-part.md) | 1218 | `result-track:136632a06683f79dcd31fd57a0d3a5aa5284d6503ede2a16406b84956688b364` |
| 158 | `theorem` | [_root_.MeasureTheory.Memℒp.pos_part](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/root-measuretheory-mem-p-pos-part.md) | 1222 | `result-track:250bea1731188b2e85746f4409f379a832c77a82a36c663fab61af1cdb465a44` |
| 159 | `theorem` | [_root_.MeasureTheory.Memℒp.neg_part](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/root-measuretheory-mem-p-neg-part.md) | 1227 | `result-track:52d12b557e65a0863a712da9160c76142178f8c4904606193b7510b2eeb90795` |
| 160 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/pospart.md) | 1233 | `declaration-track:9abee187f67f1caf42e99070fb4eff15dc904678cceee3ee024d39916f62a702` |
| 161 | `def` | [negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/negpart.md) | 1238 | `declaration-track:f6ef94ed09d3ca83b0fe9ba45407436dad7d1c8d86b7aac0ae30db540cefca2a` |
| 162 | `theorem` | [coe_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coe-pospart.md) | 1243 | `result-track:0fd2c5ee960fb69725464ae613030559c3e18ba9503a26de3e44581eb9177497` |
| 163 | `theorem` | [coeFn_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-pospart.md) | 1247 | `result-track:7aaa2476bc147a30311276d0d9608b4c86f10f3de3c2862efe0b3ad8fd3e329d` |
| 164 | `theorem` | [coeFn_negPart_eq_max](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-negpart-eq-max.md) | 1251 | `result-track:d127e50bc9bfdd489465450ff77b4638af2c9510ba02ca180728c601af84bd1a` |
| 165 | `theorem` | [coeFn_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-negpart.md) | 1257 | `result-track:b01ae9c3ac1bda8b83887c07aa1fd7e11193f7d2bde702c7427690d62f6c625f` |
| 166 | `theorem` | [continuous_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/continuous-pospart.md) | 1261 | `result-track:a039fbf94359fddefef93db1b3b4c93e9b32e9b247290e4f3e6b4f1ece0185d4` |
| 167 | `theorem` | [continuous_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/continuous-negpart.md) | 1265 | `result-track:1fdd942b610052bf97073523adcf52384be50debf95c67e8de9ebef885c228d9` |
| 168 | `theorem` | [snorm'_lim_eq_lintegral_liminf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-lim-eq-lintegral-liminf.md) | 1292 | `result-track:d6af9dfdaef03253c8b9dd56855e8d8c174596fb7d0de714db5f90972df2edc1` |
| 169 | `theorem` | [snorm'_lim_le_liminf_snorm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-lim-le-liminf-snorm-source-edition-2.md) | 1307 | `result-track:26ac309ff167c9a4c207ee7c24a3a434fcf7d8de3608c9d1b93f5bd69f5dc6fa` |
| 170 | `theorem` | [snorm_exponent_top_lim_eq_essSup_liminf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-exponent-top-lim-eq-esssup-liminf.md) | 1324 | `result-track:a46043e30e07ea802ce4adeffb26a6973dcada810bdd556a8d832d25a95715d9` |
| 171 | `theorem` | [snorm_exponent_top_lim_le_liminf_snorm_exponent_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-exponent-top-lim-le-liminf-snorm-exponent-top.md) | 1335 | `result-track:5a1bea1fff530241a8b794b01da8777b2c85ed0b052232179ed5b6f28984b30b` |
| 172 | `theorem` | [snorm_lim_le_liminf_snorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-lim-le-liminf-snorm.md) | 1344 | `result-track:1f65640e2c94b6522fb9577aa10a235f86a420ddd892c6daaeefe492b19e7091` |
| 173 | `theorem` | [tendsto_Lp_iff_tendsto_ℒp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tendsto-lp-iff-tendsto-p.md) | 1362 | `result-track:87916cbbca74f09a4b625cd59df3b8f8141624dff15c1d3e0e2bc263e8fe3a04` |
| 174 | `theorem` | [tendsto_Lp_iff_tendsto_ℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tendsto-lp-iff-tendsto-p-source-edition-3.md) | 1372 | `result-track:e89e788de89184ca5e4b6511aed15747d342c70150f7198f4cca395c2e3deba4` |
| 175 | `theorem` | [tendsto_Lp_iff_tendsto_ℒp''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tendsto-lp-iff-tendsto-p-source-edition-2.md) | 1384 | `result-track:db59da0613de25a1eefcf04e118125f3d1533bb2feeccd210c0c970a9fa96b56` |
| 176 | `theorem` | [tendsto_Lp_of_tendsto_ℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tendsto-lp-of-tendsto-p.md) | 1397 | `result-track:e73a6c704ca2157719d9bd85f7a32430aee12f168b61fe4c1c5b45e653b5d559` |
| 177 | `theorem` | [cauchySeq_Lp_iff_cauchySeq_ℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/cauchyseq-lp-iff-cauchyseq-p.md) | 1404 | `result-track:9c9a4557da43e1b9d2417aceccebdc046f3f7177a0bc4857869a112a168eef29` |
| 178 | `theorem` | [completeSpace_lp_of_cauchy_complete_ℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/completespace-lp-of-cauchy-complete-p.md) | 1413 | `result-track:3b61105ef48ee174008ffc540f0bf8651fb30e480405f5de429fa03fb1b42f30` |
| 179 | `theorem` | [snorm'_sum_norm_sub_le_tsum_of_cauchy_snorm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/snorm-sum-norm-sub-le-tsum-of-cauchy-snorm.md) | 1453 | `result-track:0474f94d49bffe438a45b60217ad248a8611ee53bc9a8b16c29cd1083c6305a9` |
| 180 | `theorem` | [lintegral_rpow_sum_coe_nnnorm_sub_le_rpow_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lintegral-rpow-sum-coe-nnnorm-sub-le-rpow-tsum.md) | 1469 | `result-track:059b1ca7d9228af4bfaa25e134a7d34ec64b3bc1bf3e53202093d0e90bfc3048` |
| 181 | `theorem` | [lintegral_rpow_tsum_coe_nnnorm_sub_le_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lintegral-rpow-tsum-coe-nnnorm-sub-le-tsum.md) | 1493 | `result-track:1cf533579256bf966fdf6aad94c3d6647f8302f987790e93fbe0a6fda7442e37` |
| 182 | `theorem` | [tsum_nnnorm_sub_ae_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tsum-nnnorm-sub-ae-lt-top.md) | 1527 | `result-track:50e5133cfc7650529e8225926360f7618866f3a9aba633a4c99dfd5795ca57a3` |
| 183 | `theorem` | [ae_tendsto_of_cauchy_snorm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/ae-tendsto-of-cauchy-snorm-source-edition-2.md) | 1543 | `result-track:d284aa076936044a08ebe59c3e5e83f062909c163238b1a66760d3ab255bb0ba` |
| 184 | `theorem` | [ae_tendsto_of_cauchy_snorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/ae-tendsto-of-cauchy-snorm.md) | 1586 | `result-track:3d405e6c2ecf95750ea82fca885ae9dd0b9d1a27de58805665de3a7f89538e5d` |
| 185 | `theorem` | [cauchy_tendsto_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/cauchy-tendsto-of-tendsto.md) | 1618 | `result-track:db128bc2714a43f7d75b747a1aa7546c32135b7973968c948b24afb0968f0fb0` |
| 186 | `theorem` | [memℒp_of_cauchy_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-p-of-cauchy-tendsto.md) | 1642 | `result-track:de6dd8cb6638abad40b16f5fa717cd86d42dcec95801bae7e532ec7f18711278` |
| 187 | `theorem` | [cauchy_complete_ℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/cauchy-complete-p.md) | 1660 | `result-track:4533756ba4cee2dcddcfa7576f30c241c39ecfa7469c859c9df2f1407bcd4541` |
| 188 | `instance` | [instCompleteSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/instcompletespace.md) | 1680 | `declaration-track:177ec090cd2f36f8498aef3268c066f3b05053e7346123862d6448da8290777e` |
| 189 | `def` | [MeasureTheory.Lp.boundedContinuousFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/measuretheory-lp-boundedcontinuousfunction.md) | 1706 | `declaration-track:1f98a708dcce6b123acd5f6cbd463383422b9c5d43cebe2f87240f91d72fd0e8` |
| 190 | `theorem` | [MeasureTheory.Lp.mem_boundedContinuousFunction_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/measuretheory-lp-mem-boundedcontinuousfunction-iff.md) | 1715 | `result-track:8fb024500f9fb47570d69bf20b5c6fb972b25dc23da2341589b49af0d95fd8b5` |
| 191 | `theorem` | [mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mem-lp.md) | 1726 | `result-track:14b8a95bc1a740783acc3f1edce1bb24a6a92ab7959eb62ae1b6e7c335029812` |
| 192 | `theorem` | [Lp_nnnorm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-nnnorm-le.md) | 1734 | `result-track:e619fe2d0b2781001b17b8c34001febcd04b36b45f3cf878dbf6332103449b03` |
| 193 | `theorem` | [Lp_norm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/lp-norm-le.md) | 1746 | `result-track:83e2d1de755b7261433da66ea333c1c02fa87dd18ae4a183b1da19c226206533` |
| 194 | `def` | [toLpHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolphom.md) | 1756 | `declaration-track:92e5513c42f22513de7bd8aa3b7048cfb2265ba5398e9b486d103b184b987375` |
| 195 | `theorem` | [range_toLpHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/range-tolphom.md) | 1762 | `result-track:0f23507bccf84c5830626865e1f8dc4ddd91596517aad0dbc3844d10879fd831` |
| 196 | `def` | [toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp.md) | 1775 | `declaration-track:8432598fe3c8c0e61e4fd1f4364363e0b79b6e99ee26b7c574b8c77c6d108fbd` |
| 197 | `theorem` | [coeFn_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-tolp-source-edition-2.md) | 1782 | `result-track:53a0a07977936f23890d5380c4e0ba0e03b5a90922e1a0f7f29319097b324b8e` |
| 198 | `theorem` | [range_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/range-tolp.md) | 1789 | `result-track:cba0c8deb364b72c1a131060a31dc3a2215ae0ad05e5b56119cb3d2c3135ecfb` |
| 199 | `theorem` | [toLp_norm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-norm-le-source-edition-2.md) | 1797 | `result-track:8e5d069f45aeff33cc90b066963f8cc439e365d6a1b177d404ade1b99f64c6c0` |
| 200 | `theorem` | [toLp_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-inj-source-edition-2.md) | 1802 | `result-track:744b221cf849d56e2cea183ec91bcd84826fb1c844f928a10fb3b6f505dd10e0` |
| 201 | `theorem` | [toLp_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-injective-source-edition-2.md) | 1810 | `result-track:b1f54b1ebd30a4bd4ebf816477cb3dc26e782f2acd94aa324d6909da12a8699a` |
| 202 | `def` | [toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-source-edition-3.md) | 1827 | `declaration-track:c25ea57d0eb306f77587cd564a11abcf8a5f1f1304472118594bfd9623e3fb01` |
| 203 | `theorem` | [range_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/range-tolp-source-edition-2.md) | 1834 | `result-track:fae43bdab9fc816aaf54a1054160395e566fdf2340f814fb22bcf10af8189358` |
| 204 | `theorem` | [coeFn_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coefn-tolp-source-edition-3.md) | 1846 | `result-track:62d99d8febf7a6923644b548e6e106c1b8f663c8d3a5885e913a69b78f1d3dab` |
| 205 | `theorem` | [toLp_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-def.md) | 1851 | `result-track:bd5f858ef99b2ac860b9cba9c270261fc505ca6abfa8cd4bc55ac7bc01f5a13a` |
| 206 | `theorem` | [toLp_comp_toContinuousMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-comp-tocontinuousmap.md) | 1858 | `result-track:77ee68050e5b10a993a8c04a8df9459e6394135488efdc9df409160abe439e15` |
| 207 | `theorem` | [coe_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/coe-tolp.md) | 1864 | `result-track:15184cc8905fe22f0d437f2b351d02a85c8d7aa74d74a557f48a986db003012f` |
| 208 | `theorem` | [toLp_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-injective.md) | 1869 | `result-track:b0ecb02c2231f536a03dd7be731ba3d0bc6999d15fbdf99015bac08c15a92278` |
| 209 | `theorem` | [toLp_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-inj.md) | 1874 | `result-track:1b84a1632919c136a6f3218530490559f4130fc94513b393684983a2baa6cf6d` |
| 210 | `theorem` | [hasSum_of_hasSum_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/hassum-of-hassum-lp.md) | 1883 | `result-track:c098e9194da1501d7314a88df2d485860e8a03e1f9e6bacf61cce8d2df943111` |
| 211 | `theorem` | [toLp_norm_eq_toLp_norm_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-norm-eq-tolp-norm-coe.md) | 1892 | `result-track:6f6f640d3228711142f7b7930eaa0e882ff712d29da6cdde9ded8c3bb683c5e5` |
| 212 | `theorem` | [toLp_norm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/tolp-norm-le.md) | 1899 | `result-track:24a940e76cd06a65109cd4f5141c6d90ce056ff17bcbc2fd8a86859c3f7b7c1a` |
| 213 | `theorem` | [pow_mul_meas_ge_le_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/pow-mul-meas-ge-le-norm.md) | 1913 | `result-track:a08ddaa4cdebb38cc16dd4b0ca889e0a95676577e9e5c2f69ce35957e61bdd14` |
| 214 | `theorem` | [mul_meas_ge_le_pow_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mul-meas-ge-le-pow-norm.md) | 1919 | `result-track:6260ddf2886db8d5c3a321318bc1c28c4ab91fa982ce357d1817b21b62460fa3` |
| 215 | `theorem` | [mul_meas_ge_le_pow_norm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/mul-meas-ge-le-pow-norm-source-edition-2.md) | 1926 | `result-track:de588bc07c500934aa379fb42b5c7fd5c58b5d606b19174d2d1d6c65cd14a103` |
| 216 | `theorem` | [meas_ge_le_mul_pow_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpace.lean/declarations/meas-ge-le-mul-pow-norm.md) | 1932 | `result-track:935cb3a47d03e7b5bf0e0639bee757a880f85c73e163a61d6a425a9081c768dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8984979724274ec69c61d976b6d179816ce4de3cbe44fa1f3f496b84ac2bad3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
