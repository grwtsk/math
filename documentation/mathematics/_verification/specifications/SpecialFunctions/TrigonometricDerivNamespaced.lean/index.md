# Verification target: Trigonometric Deriv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03bfc0f3133d3f4427331a984cfc56ea33dc903a",
  "lexical_observation_count": 228,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta7f9132510c8c571ec88757fbe57de13d41b40c29136db0db27b43842f53d296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/index.md) · [Full source](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03bfc0f3133d3f4427331a984cfc56ea33dc903a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta7f9132510c8c571ec88757fbe57de13d41b40c29136db0db27b43842f53d296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta7f9132510c8c571ec88757fbe57de13d41b40c29136db0db27b43842f53d296.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Monotone.Odd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-sin-source-edition-2.md) | 41 | `result-track:64aa4ffe3c3677a5676fb7546bd04e1c221de90a23e64898fce561101f0d214b` |
| 2 | `theorem` | [hasDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-sin-source-edition-2.md) | 50 | `result-track:4d00e237b82c2f4159f92b6d2dd34441b0054a4d16049784391423450d0377b7` |
| 3 | `theorem` | [contDiff_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-sin-source-edition-2.md) | 53 | `result-track:24b743fa0e7ff5481067ee1dcc92097b60f6202845229cb168bb923f503eb301` |
| 4 | `theorem` | [differentiable_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-sin-source-edition-2.md) | 58 | `result-track:a6c9d7e7cd07a3f1a30d14158c40846bf7fbd9540ca8638bd82c81cc649ba46b` |
| 5 | `theorem` | [differentiableAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-sin.md) | 61 | `result-track:88cfac52d53f2a76370aa7a5f8e43a49b449474e1cd8a06448c475567ba955c7` |
| 6 | `theorem` | [deriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-sin-source-edition-3.md) | 65 | `result-track:f700fb5490c27474a1c838fbb32527c3c5f788c6b7314a850d53949297112137` |
| 7 | `theorem` | [hasStrictDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-cos.md) | 70 | `result-track:1c4d1b660e952084a15191df36b577dc670b973f0dec4852dc717636b92a1f5b` |
| 8 | `theorem` | [hasDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-cos-source-edition-3.md) | 78 | `result-track:e9f98cae2f54cfcf93b9f651fe7e37df93f5aaa723f9f6860b08f7ca6f76b8ca` |
| 9 | `theorem` | [contDiff_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-cos-source-edition-2.md) | 81 | `result-track:2835f6cda85edcc6b369fdd19ef40e5c00ac23a6b2b82db209c52888c87cca9a` |
| 10 | `theorem` | [differentiable_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-cos-source-edition-2.md) | 85 | `result-track:c19534b4f8b6f01df4979e4c6755c398afcc292d2f9e4359f53bb01ff3f7cbbf` |
| 11 | `theorem` | [differentiableAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-cos-source-edition-3.md) | 88 | `result-track:6259df17b52b08cb42e6e910f8b444df898122280eda840f290cd2be32c24598` |
| 12 | `theorem` | [deriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-cos-source-edition-3.md) | 91 | `result-track:894f7000325bc087ee5382f08a001ab8399de68b624f94214ce4bb54c7afe7f6` |
| 13 | `theorem` | [deriv_cos'](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-cos-source-edition-5.md) | 95 | `result-track:d049a6abe2526aa2751b068b3644cd7925a8d6994e35fb50bb100007a275a98c` |
| 14 | `theorem` | [hasStrictDerivAt_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-sinh-source-edition-2.md) | 100 | `result-track:978d9d8f3ec444010ba45dbf7254176367824decc1e040eca26d90da586afe60` |
| 15 | `theorem` | [hasDerivAt_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-sinh-source-edition-3.md) | 108 | `result-track:c9572e850f0633381f915a365003974fb4a97369b81bdb23c4fe41224072d718` |
| 16 | `theorem` | [contDiff_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-sinh.md) | 111 | `result-track:5d632621226303a7eb37ada6a5f607281cbf513bccef27e0fc134fac900fe3ec` |
| 17 | `theorem` | [differentiable_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-sinh-source-edition-3.md) | 115 | `result-track:8a8824b03ad4d98b60c206aafe8afa6e0116470f7ccc5906a444f116e80c6e1c` |
| 18 | `theorem` | [differentiableAt_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-sinh.md) | 118 | `result-track:4484bf31da939ce3619dc64c53aed5d0d0e8069058b56e51e5e06c86f8457d13` |
| 19 | `theorem` | [deriv_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-sinh-source-edition-3.md) | 122 | `result-track:f091dbb874b212491f22c29fd2ac346f733ec4d2e21d386e1c81b7cd8e97d280` |
| 20 | `theorem` | [hasStrictDerivAt_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-cosh-source-edition-3.md) | 127 | `result-track:ffd6cc9dc440b183a25f5f590871137453ca771b340c23036e41eac0d86070d7` |
| 21 | `theorem` | [hasDerivAt_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-cosh-source-edition-2.md) | 135 | `result-track:4be13fe65f38c2f509d039476d316f198f5b3ce051ebd8f970fef67a1ba88813` |
| 22 | `theorem` | [contDiff_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-cosh-source-edition-2.md) | 138 | `result-track:7f351e8e5976c8175f87c7614b1d063ad414048cdb8b033214d243cb2f48af59` |
| 23 | `theorem` | [differentiable_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-cosh-source-edition-2.md) | 142 | `result-track:dce3da37241d63a9ce7bfe5ad7009cf797b22c60c4cb44df139960c614f5a57b` |
| 24 | `theorem` | [differentiableAt_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-cosh-source-edition-2.md) | 145 | `result-track:e5a082e5f95461a3749875e2efa10654750ed3762ae7300364edbb8a33a24183` |
| 25 | `theorem` | [deriv_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-cosh.md) | 149 | `result-track:35a0c4cba66223cce826f119a67c03fb856864f57f56fae3bd3b3dc8e7fd1fba` |
| 26 | `theorem` | [HasStrictDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-ccos.md) | 164 | `result-track:ec24642eaec4eda67575ca812075a8ccfdc7a25c785e1dd1d730b18b3f4fd0ac` |
| 27 | `theorem` | [HasDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-ccos.md) | 168 | `result-track:71657f22bddccac38ed52899d13e4540701b140854d223b1009b3b933299fc31` |
| 28 | `theorem` | [HasDerivWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivwithinat-ccos.md) | 172 | `result-track:3e52ede3b6edab1ce7762a1fd8c0af24271f95c8cf823e0e17690bb8929d5a14` |
| 29 | `theorem` | [derivWithin_ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/derivwithin-ccos.md) | 176 | `result-track:07cfd4a234aacaca331e00d8984d492ef38aa1158c1636f984dd90010d30a790` |
| 30 | `theorem` | [deriv_ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-ccos.md) | 181 | `result-track:1aa34a6fa0ec3bbcaf290fc5ce58eac8e38cfe5785b3c22363aca9f1fb581e4c` |
| 31 | `theorem` | [HasStrictDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-csin.md) | 188 | `result-track:0afeb5c3f75c9337c41f3fe6244f7336535fbd890f94fc012748bb9420c83ec4` |
| 32 | `theorem` | [HasDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-csin.md) | 192 | `result-track:efadc061cba6779badf8a22f517b566879de9b1fd9f3446612827079b4ba633c` |
| 33 | `theorem` | [HasDerivWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivwithinat-csin.md) | 196 | `result-track:33a6e88bc84f899113cf43380b999e67e0207210dca6c10b0309112c7a56168f` |
| 34 | `theorem` | [derivWithin_csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/derivwithin-csin.md) | 200 | `result-track:5992910d21c3cc392569c84cee5d6f132d18e1793ddfb93e0ca906127494436b` |
| 35 | `theorem` | [deriv_csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-csin.md) | 205 | `result-track:8b9369ad76411a329e530b0ab10e9c4090f83ab69e7400aafe5ee322f3f65c78` |
| 36 | `theorem` | [HasStrictDerivAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-ccosh.md) | 212 | `result-track:623444fe756101c077169218ec6d1584b00b74f9cba1daca49c766e93ea34121` |
| 37 | `theorem` | [HasDerivAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-ccosh.md) | 216 | `result-track:d82da4ae4d34090487563e5345051418fb426d2f17db39bba4ef5a6ad31a59ce` |
| 38 | `theorem` | [HasDerivWithinAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivwithinat-ccosh.md) | 220 | `result-track:bfaaeebd2bea4172a86d1eff78a01a598da94a6d0c1a69d47d6b4da101ed15cb` |
| 39 | `theorem` | [derivWithin_ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/derivwithin-ccosh.md) | 224 | `result-track:67bfdb5a104be81714805b073fe363f1320f2d2d55684d6485d927216b3c2b61` |
| 40 | `theorem` | [deriv_ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-ccosh.md) | 229 | `result-track:19eea4133d452b5ed3a325b6de6de8b5e15d62a5b2d26fe1cee8008826a37577` |
| 41 | `theorem` | [HasStrictDerivAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-csinh.md) | 236 | `result-track:8c4c8fb528917584be726f0ab3493e65a207e212c5e8e5fb654c07ba9e94973f` |
| 42 | `theorem` | [HasDerivAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-csinh.md) | 240 | `result-track:2bb8a016588cd58598aa4d4b63e71eef55c46cda285cb0bdaddd1b9d82a71591` |
| 43 | `theorem` | [HasDerivWithinAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivwithinat-csinh.md) | 244 | `result-track:4d350721c1fa84ad3042c2c9bd00b64f6340d254cb247a701649dc547cc393c5` |
| 44 | `theorem` | [derivWithin_csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/derivwithin-csinh.md) | 248 | `result-track:fbd5c3e9d4317dc2f5a4e403bf7292b894e4d062c9ce3398f7cfeb2d1f27c9c3` |
| 45 | `theorem` | [deriv_csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-csinh.md) | 253 | `result-track:3cfd79db55459b679a8dd0a15ff971a92ce2c1d18be885d07bfab92cee1a0cfc` |
| 46 | `theorem` | [HasStrictFDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictfderivat-ccos.md) | 270 | `result-track:6a427bbd60b9735cf5317b419266536b62a7da6738942d2836076b99ccfca226` |
| 47 | `theorem` | [HasFDerivAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivat-ccos.md) | 274 | `result-track:1461000e3c2198aec8dd3438cd62700348496bbb8da4bd4f829cd05ff7dafdb9` |
| 48 | `theorem` | [HasFDerivWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivwithinat-ccos.md) | 278 | `result-track:06038052dbe9816e9e0219285e7d8faeee10f5e395c7827049b8d35457874b83` |
| 49 | `theorem` | [DifferentiableWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiablewithinat-ccos.md) | 282 | `result-track:56dee8bb8afdd5a2e119a5bd98572010693059d66df1b293df093fe02f5f89a5` |
| 50 | `theorem` | [DifferentiableAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-ccos.md) | 287 | `result-track:b384db0d991303bae71eead4aed8b452f3813cb4b84185da3e5a20dff2dde60e` |
| 51 | `theorem` | [DifferentiableOn.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableon-ccos.md) | 291 | `result-track:f51408f65156a7219eb5cd067fc7fdf3f03fce93b3f2a178bb7fb03815407b94` |
| 52 | `theorem` | [Differentiable.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-ccos.md) | 295 | `result-track:bc9923898ac45a18ce780386a3221d6559859dbd3037ede6290b71e00633943b` |
| 53 | `theorem` | [fderivWithin_ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderivwithin-ccos.md) | 298 | `result-track:47fe3fa7a5ffc3ce03e846037b251138343c802e15b60fcb4fc0420322354547` |
| 54 | `theorem` | [fderiv_ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderiv-ccos.md) | 303 | `result-track:44ebaab32227a6e36bdbaef84fde6c3fd253e371d6e899bdb56965a219e779bd` |
| 55 | `theorem` | [ContDiff.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-ccos.md) | 307 | `result-track:dbdf37e250936c250c05a8b150a4b71a9e2647cf7a3617365b685a31a53f5565` |
| 56 | `theorem` | [ContDiffAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffat-ccos.md) | 310 | `result-track:2d2cedb08fa1928d51f19b5ebf3a51e1b61d39bb5d52181ebc64bd414691d526` |
| 57 | `theorem` | [ContDiffOn.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffon-ccos.md) | 314 | `result-track:92e5574a6bdb1a858cba93af852fc7a1e37efd4de273124f94c3cf5ef0c23c4a` |
| 58 | `theorem` | [ContDiffWithinAt.ccos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffwithinat-ccos.md) | 318 | `result-track:a5621e5602ffce94bfb1c76ecb84b1b75468b6fc421a9e8b6bc582960f257ecc` |
| 59 | `theorem` | [HasStrictFDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictfderivat-csin.md) | 325 | `result-track:4a08cc6dde44988e9162472cade9782b3484c2bc93bef40c1b6795d130e447c3` |
| 60 | `theorem` | [HasFDerivAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivat-csin.md) | 329 | `result-track:554a807a85b8f6612e0856a991dbd612cba07079d30ee091f5866cb52f09986f` |
| 61 | `theorem` | [HasFDerivWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivwithinat-csin.md) | 333 | `result-track:19a730d073d4be2049734118f151614ba2e17fda509a93210bd0e8c91eb35f8e` |
| 62 | `theorem` | [DifferentiableWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiablewithinat-csin.md) | 337 | `result-track:40a1de9815601c00da29bc3234c45165b99a5f3c0b5609c006803baf4b90e804` |
| 63 | `theorem` | [DifferentiableAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-csin.md) | 342 | `result-track:76c6c0ea205f4e38c1c0cb4e41ebf0e9626e0c4bd7ccccf794afcff47509e8e6` |
| 64 | `theorem` | [DifferentiableOn.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableon-csin.md) | 346 | `result-track:19de0b4fdba6f327b2071ab98eb5b51282c93cc5a715ae2d37ad82abcbc4e049` |
| 65 | `theorem` | [Differentiable.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-csin.md) | 350 | `result-track:eed284ae2809cd1a07fbaf594ba258238612c866df043c50e7d9ac0bfab1b069` |
| 66 | `theorem` | [fderivWithin_csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderivwithin-csin.md) | 353 | `result-track:8ec4541ce53a99a5b93dfcf6c6774dbba7d793aa6b865221ff4b0b886734496a` |
| 67 | `theorem` | [fderiv_csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderiv-csin.md) | 358 | `result-track:0bdbae07bffea85dca1fb0368f9e7d1592dd8e6cdbc57038ee87fcb92d9da66e` |
| 68 | `theorem` | [ContDiff.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-csin.md) | 362 | `result-track:44c7174a7789b026c8d1babdd06aecb8927454d516834aadd8830ba948e6d791` |
| 69 | `theorem` | [ContDiffAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffat-csin.md) | 365 | `result-track:b7ab47e8bff7da64f40111668aa9e70b3c6ad9eb3913e39614ce622ded22789f` |
| 70 | `theorem` | [ContDiffOn.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffon-csin.md) | 369 | `result-track:fe4673d3debf3a2f7adaa55beb0e1527822232f21dffad674f0d389a0cf94465` |
| 71 | `theorem` | [ContDiffWithinAt.csin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffwithinat-csin.md) | 373 | `result-track:5bdc1ac04096d3b5bbebc5e373556a24c579db3f776e82955c9de8b133f67546` |
| 72 | `theorem` | [HasStrictFDerivAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictfderivat-ccosh.md) | 380 | `result-track:3a6370c92da9dcb0ff8fdb3b444b50365b26a65e25aedb33f1433872bbb51aff` |
| 73 | `theorem` | [HasFDerivAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivat-ccosh.md) | 384 | `result-track:36c3fc3e64148009fb13ca1ea7494d2e61b06c0f3d9aa486c97b06c8ac67bc23` |
| 74 | `theorem` | [HasFDerivWithinAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivwithinat-ccosh.md) | 388 | `result-track:74518db147b6f5933533b8c740a7fe1b8199bccf2b8881a1454d395e1c884208` |
| 75 | `theorem` | [DifferentiableWithinAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiablewithinat-ccosh.md) | 392 | `result-track:18c34542be1cb2b06914cbc60840076358fe2c0a5b1b224d94f923109a9dd010` |
| 76 | `theorem` | [DifferentiableAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-ccosh.md) | 397 | `result-track:3e87e9abc56c12c996c8f9a4ff2067f01eb96e574ee0539bfe59f0585dcd0e38` |
| 77 | `theorem` | [DifferentiableOn.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableon-ccosh.md) | 401 | `result-track:9da2347606450a3abe6db608faa4034c0f47bda24229ea176d56dd6b022a7b58` |
| 78 | `theorem` | [Differentiable.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-ccosh.md) | 405 | `result-track:4b771279dba19b3989c540965b0aa4c18ae451bfe2991b5d9c63a4dabea07b46` |
| 79 | `theorem` | [fderivWithin_ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderivwithin-ccosh.md) | 408 | `result-track:f0de77009c8683d031f9e6dd08764ef094434ddd5208957e6ad4ca09d1bc1b9c` |
| 80 | `theorem` | [fderiv_ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderiv-ccosh.md) | 413 | `result-track:ebefecf88ceda0b77c22b54155cd4bc2a9a9681c36e9ee037b033a2a79b9e4f8` |
| 81 | `theorem` | [ContDiff.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-ccosh.md) | 417 | `result-track:44907bebec93ac5a6908ad7336aa690e734cc1082950e110810a4dc600f91fab` |
| 82 | `theorem` | [ContDiffAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffat-ccosh.md) | 420 | `result-track:33580623c01fee497a8353e884d80e1c4a8477c5365c91cdcd78fa4997fa62e8` |
| 83 | `theorem` | [ContDiffOn.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffon-ccosh.md) | 424 | `result-track:4a169b73e879c58d53d74535be57f615818294a90c0eaaeaae55d37136886610` |
| 84 | `theorem` | [ContDiffWithinAt.ccosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffwithinat-ccosh.md) | 428 | `result-track:f7de8d44ca1188116b76168d3e4c1ba45404aa622fdeaf44f1530930c9b9e9d7` |
| 85 | `theorem` | [HasStrictFDerivAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictfderivat-csinh.md) | 435 | `result-track:cd8df6cd9413523f04f53031857916acddf354098e5456fb84b182d9d01e6817` |
| 86 | `theorem` | [HasFDerivAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivat-csinh.md) | 439 | `result-track:8c374ed8185bbbd94155ebac8ba09b21dfe155e67428af42e34ae55b09c412d8` |
| 87 | `theorem` | [HasFDerivWithinAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivwithinat-csinh.md) | 443 | `result-track:fdc5f3d77d6ef33cb57dee094b145e52950235e7732a6fa6493884f80fcdf4cb` |
| 88 | `theorem` | [DifferentiableWithinAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiablewithinat-csinh.md) | 447 | `result-track:1b3357f06ffeba024011aa7a912eebc1f7f8e0a7883cc012808c27e829cdaa34` |
| 89 | `theorem` | [DifferentiableAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-csinh.md) | 452 | `result-track:0d178ad4b40fd55732d9cab43a7b7b7cce07939aa256d904ef125e01e497448a` |
| 90 | `theorem` | [DifferentiableOn.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableon-csinh.md) | 456 | `result-track:19175c0e0bc494bc097a6ab19fc5e47dcaa3d7f702f4c90c1ffb0f3a7178e17d` |
| 91 | `theorem` | [Differentiable.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-csinh.md) | 460 | `result-track:7a0ccf8d15ac328f45687ed66c202081341ee2bd501be5329d361f5b6fd7e928` |
| 92 | `theorem` | [fderivWithin_csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderivwithin-csinh.md) | 463 | `result-track:9f5925e42ab143f67d4c28edd81b66fce7ca5f30650074ed729cad06184c0aec` |
| 93 | `theorem` | [fderiv_csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderiv-csinh.md) | 468 | `result-track:260246595b56128b3663767762fc4e37c31fa767fa6fe38c25d4cadfe449696b` |
| 94 | `theorem` | [ContDiff.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-csinh.md) | 472 | `result-track:02184d0d636b2bdd7e5f8d9005cd7693efa988808849d58952bdc7b213925808` |
| 95 | `theorem` | [ContDiffAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffat-csinh.md) | 475 | `result-track:46c963c04071e5f0acb0091cd3f8cddf1d649ce7ba5f4794ba094894e15d51f9` |
| 96 | `theorem` | [ContDiffOn.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffon-csinh.md) | 479 | `result-track:0d6874e2524b5885be6f0ed814e98738e5797121bd923dc60cd2bbde32ef0fca` |
| 97 | `theorem` | [ContDiffWithinAt.csinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffwithinat-csinh.md) | 483 | `result-track:ab7f78fca51a3b04ac37215a4eb702fd8d1734ac8de2dd7ed64fb545c2ec14d3` |
| 98 | `theorem` | [hasStrictDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-sin.md) | 493 | `result-track:225b5a0ec86874a2c18014af55dffe55f00fda48031477d464bb54c8d285e992` |
| 99 | `theorem` | [hasDerivAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-sin.md) | 496 | `result-track:2b3aa3aa92980252ff0c895e3abb9bf0c75349981a5e70dcbbe8880160534afe` |
| 100 | `theorem` | [contDiff_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-sin-source-edition-3.md) | 499 | `result-track:fc794ee40b516bf6ea2b362c318f1392c1bcdbb6a781baf6f6bfe2dcd29c024c` |
| 101 | `theorem` | [differentiable_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-sin-source-edition-3.md) | 503 | `result-track:f4fed7f0589fdcecdeb31eace95fc1ebfc27899513ad8e0915be0b1e3c282d4c` |
| 102 | `theorem` | [differentiableAt_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-sin-source-edition-3.md) | 506 | `result-track:dc24d45c2e071046108858451ecbae459f0ccdad1f925f96eb9ef9a57d8b546f` |
| 103 | `theorem` | [deriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-sin-source-edition-2.md) | 510 | `result-track:c1a81493e5afebf0814ffe5f8c72f57aff362c99fbc4d260491afd991ef792de` |
| 104 | `theorem` | [hasStrictDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-cos-source-edition-3.md) | 513 | `result-track:f32f77d4c3d08106db2203435b3dc18555425aa590bdadd5e8b08a4f1cc60db1` |
| 105 | `theorem` | [hasDerivAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-cos.md) | 516 | `result-track:8864ab0fcc8601f4f72e7c124dce4348fa8ec15d6eb62cfa91963d9dc328955e` |
| 106 | `theorem` | [contDiff_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-cos-source-edition-3.md) | 519 | `result-track:2ec09c56c05f3d02cb789d40db5265b6ecc9a90ebc1bdc4254e41b3805263e7e` |
| 107 | `theorem` | [differentiable_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-cos.md) | 523 | `result-track:b319079c5e742ac03f450329ce84ba5e7a368a2f7feaa8a7e2d6a5229893d9a7` |
| 108 | `theorem` | [differentiableAt_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-cos.md) | 526 | `result-track:1213d18874ba754d19e7857fc595e370627d8c0fb9caafc049158d74fe8bd962` |
| 109 | `theorem` | [deriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-cos-source-edition-2.md) | 529 | `result-track:76fb183be1df7e30b19621678f5324b8e660f417107cb015d0ee473d6f27faca` |
| 110 | `theorem` | [deriv_cos'](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-cos.md) | 533 | `result-track:11eae5d408c1cd1194c411ddd73a5c4c866bf2a83db865b01bc7d41aecc3c792` |
| 111 | `theorem` | [hasStrictDerivAt_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-sinh.md) | 536 | `result-track:141410041a79ab26d78df367cc6df3e21c18054569633de0856dc7ecf03ec4f3` |
| 112 | `theorem` | [hasDerivAt_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-sinh-source-edition-2.md) | 539 | `result-track:0420994515d6a3de1665ef86fef3f34d2f56fa5fca7a56ef6e6f8af6be7a0361` |
| 113 | `theorem` | [contDiff_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-sinh-source-edition-2.md) | 542 | `result-track:d39eff5339a39a5bd677ce7c740f5b65302fd3e661668572cd1fbad1dadf2946` |
| 114 | `theorem` | [differentiable_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-sinh.md) | 546 | `result-track:1e17044ad305e8035abd93a54f25b42f03394d17b403792831b37f55e58f582c` |
| 115 | `theorem` | [differentiableAt_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-sinh-source-edition-3.md) | 549 | `result-track:e591ba520c1bf492f57b6ec36046460f4a5ed6cdb20a907849ea6a5ae5219eaf` |
| 116 | `theorem` | [deriv_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-sinh.md) | 553 | `result-track:7de76c2a0d2116dabe8f7c09c965f167f59b5412b0e2470c9a968a25e898633f` |
| 117 | `theorem` | [hasStrictDerivAt_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-cosh-source-edition-2.md) | 556 | `result-track:48f5e79daf16d15d4ee21a786786ca53a0f8d05f0ce2c900b3efce03eaa1ea83` |
| 118 | `theorem` | [hasDerivAt_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-cosh.md) | 559 | `result-track:1da343f4e08d8b3b77924b28e9a6568d6ff64666d789baa4412550981a12a5d2` |
| 119 | `theorem` | [contDiff_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-cosh.md) | 562 | `result-track:4e714303c3bc5e3f89dc0e840e1282fc7973af1b1a02eb5cd8ac27278e0c99a1` |
| 120 | `theorem` | [differentiable_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-cosh.md) | 566 | `result-track:13a64f1417e9415728dd9e477ac0ef2d9644b5a3787fc7aa4882339fb708fcf4` |
| 121 | `theorem` | [differentiableAt_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-cosh.md) | 569 | `result-track:a6db28bf1aea457b48a3dfab9ef509e023d86a4bb22ecc236f33f5ec6155cfb3` |
| 122 | `theorem` | [deriv_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-cosh-source-edition-2.md) | 573 | `result-track:8ed701f2e98f9e9c07d0543a7080eb1bee94a10cff4c4a0ba6e4b80393bd55e6` |
| 123 | `theorem` | [sinh_strictMono](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-strictmono.md) | 577 | `result-track:9a4f68e8d7e61d9210199653a3530b4876ba9291a7abd6d27b3fbfcd2b8a72e3` |
| 124 | `theorem` | [sinh_injective](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-injective.md) | 581 | `result-track:265cd4ae2dbe7343c0383a28c2b6fcf1e9d2150c2f0559d4138ab5ae3ae95ff3` |
| 125 | `theorem` | [sinh_inj](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-inj.md) | 585 | `result-track:87cd4d7bd93df8ced88ac523b2b3cab90131e536abfc4308b86ddbe50b4aa202` |
| 126 | `theorem` | [sinh_le_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-le-sinh.md) | 589 | `result-track:a0d31932a51d9736bebb29c6ef5e46690eb5fdc957731f228bbde09d21ba7fdd` |
| 127 | `theorem` | [sinh_lt_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-lt-sinh.md) | 593 | `result-track:365259025dbb12a1153eee39f4651b66d5341d8042d39864822f6ec14609a6af` |
| 128 | `lemma` | [sinh_eq_zero](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-eq-zero.md) | 596 | `result-track:0abd9f146697ab7bf0f716fdfb631279c91806efed44aef6a6e42ec3ca70865e` |
| 129 | `lemma` | [sinh_ne_zero](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-ne-zero.md) | 598 | `result-track:7bf754af90ad33ec713cfd58673f51ff573e63875bdd56f361a7b0ff0770e747` |
| 130 | `theorem` | [sinh_pos_iff](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-pos-iff.md) | 601 | `result-track:6c95150ce244a0003d789a00edd4c11b0540e22ce91e85f15db2148a3d52ff80` |
| 131 | `theorem` | [sinh_nonpos_iff](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-nonpos-iff.md) | 604 | `result-track:42fa6c54d4971c6ca384559346c718a6b31089016934fd3b4fcec1e59be2788b` |
| 132 | `theorem` | [sinh_neg_iff](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-neg-iff.md) | 607 | `result-track:510c691199b20599fe7c9f0a224b9586208f4f7fba100d4457343532d7a0df8b` |
| 133 | `theorem` | [sinh_nonneg_iff](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-nonneg-iff.md) | 610 | `result-track:3a50852ab124c4d834290b06afed0851fe0e6646d29a3176095ee5be9540af6c` |
| 134 | `theorem` | [abs_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/abs-sinh.md) | 612 | `result-track:13d89da987b925e6715f9f77dd99db55a2f0099d57d26252561798c16fa2ddc8` |
| 135 | `theorem` | [cosh_strictMonoOn](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/cosh-strictmonoon.md) | 615 | `result-track:d65a4aa411c9e29403c6743000a1e42d9a04fbc9ee8ba182b15517372006e970` |
| 136 | `theorem` | [cosh_le_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/cosh-le-cosh.md) | 620 | `result-track:c7cdafbab43321e5f680e1d056a5a959cd83d89d704584b8958d204b2374d3c8` |
| 137 | `theorem` | [cosh_lt_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/cosh-lt-cosh.md) | 624 | `result-track:9d665805d95a7e10c9cc7cc1849098f541e2e14f0d29225d517381a380f5dc44` |
| 138 | `theorem` | [one_le_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/one-le-cosh.md) | 628 | `result-track:c95cccdfc6c848b809f12ffc1baa3302f2f7dc7d8c40c9d0a682a856eb64ffe2` |
| 139 | `theorem` | [one_lt_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/one-lt-cosh.md) | 632 | `result-track:108e325cbefaf03083fb7ec7db372ef3f48e1bf648bcdb77e2df313b6f8c53e8` |
| 140 | `theorem` | [sinh_sub_id_strictMono](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-sub-id-strictmono.md) | 635 | `result-track:cf7791575debe338de25ceada018271119ddb6534a7546d301b1511cebe42472` |
| 141 | `theorem` | [self_le_sinh_iff](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/self-le-sinh-iff.md) | 644 | `result-track:5934810bae0ffe7934908d0229e151adc1f9bcb3de080c34d124bbb5c5ee8de9` |
| 142 | `theorem` | [sinh_le_self_iff](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-le-self-iff.md) | 650 | `result-track:ea4b73892d706138f88f4d4ae06d34221dfa83ec9f1a6216087834dc1deebf31` |
| 143 | `theorem` | [self_lt_sinh_iff](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/self-lt-sinh-iff.md) | 656 | `result-track:c23177224bda1f6c2170857d9fc1fec1e66ce2a58b1d6413a4a72d4d84606644` |
| 144 | `theorem` | [sinh_lt_self_iff](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/sinh-lt-self-iff.md) | 660 | `result-track:2b42369327153d4b84a9b52db1deaf84b067a73d206fed0397cd093781ad8ca2` |
| 145 | `theorem` | [HasStrictDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-cos-source-edition-2.md) | 675 | `result-track:4de79c6cc797f5c2904dbc3688c4495e14c72f27b51911c191df18b64d53ca77` |
| 146 | `theorem` | [HasDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-cos-source-edition-2.md) | 679 | `result-track:a677ff4555b136ca0014ce7a659bea85516faf3ca63a3deb7cad7327409215dd` |
| 147 | `theorem` | [HasDerivWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivwithinat-cos.md) | 683 | `result-track:c10646b5e138e244dc9f87c9a0d7002c29f4519580cd02bc9ab7d57c6d1ff26e` |
| 148 | `theorem` | [derivWithin_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/derivwithin-cos.md) | 687 | `result-track:e0ef2741ccbf7153d6a4efdb843ae4b084ecdd54b6a33a1a48a690d551726287` |
| 149 | `theorem` | [deriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-cos-source-edition-4.md) | 692 | `result-track:b099e113af67ad885aee2c6339e8c63ef00bce79a26df0fcba0867972d3cbe0b` |
| 150 | `theorem` | [HasStrictDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-sin-source-edition-3.md) | 699 | `result-track:74b9209c8f76e640bb512b61ab2af8cd129555c407e5b7b8322025b72602a59d` |
| 151 | `theorem` | [HasDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-sin-source-edition-3.md) | 703 | `result-track:70c98ab4e43bbf098a482723d9c56767de3db64f0d55da2f3009363b49fc7625` |
| 152 | `theorem` | [HasDerivWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivwithinat-sin.md) | 707 | `result-track:aed2630c80058c9c4fecf270bb61ded4113456d4c6f75e2d7ab54160a4303122` |
| 153 | `theorem` | [derivWithin_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/derivwithin-sin.md) | 711 | `result-track:9b697d5f0000d38e763f9747cffb99dd9007414d45f9d740338b15345174ce80` |
| 154 | `theorem` | [deriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-sin.md) | 716 | `result-track:2b53781dddf38e8882a88bc32760dca88f040478e3a8532cd921c8fb57503c0d` |
| 155 | `theorem` | [HasStrictDerivAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-cosh.md) | 723 | `result-track:39e5681336c2399b9409fdf836af7b182d73857c532e27313dff89d74150f851` |
| 156 | `theorem` | [HasDerivAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-cosh-source-edition-3.md) | 727 | `result-track:a3354c0af037cd578d2f93ff4ea46df4f48cca619767e9637e00f31136619a2c` |
| 157 | `theorem` | [HasDerivWithinAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivwithinat-cosh.md) | 731 | `result-track:ee5751411da254bda96644b3767f70c31d2ac6f0de40352a2032361ec94bc2ba` |
| 158 | `theorem` | [derivWithin_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/derivwithin-cosh.md) | 735 | `result-track:237152079eb9e579646bcfaa4bca3281313e2bef15684e9161387889f0cf20dc` |
| 159 | `theorem` | [deriv_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-cosh-source-edition-3.md) | 740 | `result-track:96917610fd02bb58472ba28057bff6b2b0615e156defc211910bb22da6131a6c` |
| 160 | `theorem` | [HasStrictDerivAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictderivat-sinh-source-edition-3.md) | 747 | `result-track:d2906c2fb0ee0b0efe0a5bcb76711de7e42b6800fe31cd36f22888e03a077e78` |
| 161 | `theorem` | [HasDerivAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivat-sinh.md) | 751 | `result-track:0345dfc08ac0bdc543446c3ca345ff82a8315c7941a4e3270678d54fd841d340` |
| 162 | `theorem` | [HasDerivWithinAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasderivwithinat-sinh.md) | 755 | `result-track:c670a5e8eaf8774475af69079da77da5180600d9442da39e1e68bd87bcfcb69d` |
| 163 | `theorem` | [derivWithin_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/derivwithin-sinh.md) | 759 | `result-track:a99dac7af05e281432343d4de112dccbfa50675a21efb5841c12d0a82d72c9ab` |
| 164 | `theorem` | [deriv_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/deriv-sinh-source-edition-2.md) | 764 | `result-track:80065b7d6ee3387848932107ab593ffe39fc078d88a9a25d6fb21a6991c479e1` |
| 165 | `theorem` | [HasStrictFDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictfderivat-cos.md) | 781 | `result-track:53555173068961d996cc6e00c40cce57f2e2c26ca35c5f7339de14571cb8e514` |
| 166 | `theorem` | [HasFDerivAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivat-cos.md) | 785 | `result-track:be35267b3baf9dd2034aa21923c36326b803368a8e0bf6d9bda689d0787eea82` |
| 167 | `theorem` | [HasFDerivWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivwithinat-cos.md) | 789 | `result-track:610d5c3659201599b3e566db8f600684f1a13cd6add9d012d1363ab1f5c5a0f1` |
| 168 | `theorem` | [DifferentiableWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiablewithinat-cos.md) | 793 | `result-track:3e86cd7a62a24af585758f6901a1c994fe41e8a0b80e06960ba7fca4e14f0475` |
| 169 | `theorem` | [DifferentiableAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-cos-source-edition-2.md) | 798 | `result-track:3d7f58bf043bae98066b471167bab71ce90fbdaff12713820aeaf513e8943408` |
| 170 | `theorem` | [DifferentiableOn.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableon-cos.md) | 802 | `result-track:65e896359588b81ee7a3199938e7f4bfccaa667ef10cd520470ede7d9fdbddbd` |
| 171 | `theorem` | [Differentiable.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-cos-source-edition-3.md) | 806 | `result-track:ddef2cf8ab9d0e6983c06b10ac0927b5e006e82672877c85c5d5e1ede33b317c` |
| 172 | `theorem` | [fderivWithin_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderivwithin-cos.md) | 809 | `result-track:ba6c4f7635e0aee2143d202817b1db3417ec37b548f29a5cb6bee1b3c63d4650` |
| 173 | `theorem` | [fderiv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderiv-cos.md) | 814 | `result-track:b9ebd553f1fe503207cdb5f5acb78ccf9098049a22ee614862d93510b7ab015f` |
| 174 | `theorem` | [ContDiff.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-cos.md) | 818 | `result-track:1410f94b931ac03c098dfe19e9c8730f78f5a5decd6fe8dad168675d5429be19` |
| 175 | `theorem` | [ContDiffAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffat-cos.md) | 821 | `result-track:3df30617b566df32cb6cc6a62c2634b79ce0fac9a3e04092270ba8ba6edb5f86` |
| 176 | `theorem` | [ContDiffOn.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffon-cos.md) | 824 | `result-track:b208b8b5a6b5f154964ed2195392907e6115c5f48b54cbddcc004d1c88d9d8cd` |
| 177 | `theorem` | [ContDiffWithinAt.cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffwithinat-cos.md) | 827 | `result-track:a7b8343f78d2c52ec89011972959d1df2d63937198327c6ac44db82484e391bc` |
| 178 | `theorem` | [HasStrictFDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictfderivat-sin.md) | 834 | `result-track:c234b2eccdd87eeb9cec1800e37bae7e1669c09b0d965ed006bc9782e5d53e01` |
| 179 | `theorem` | [HasFDerivAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivat-sin.md) | 838 | `result-track:eefe74fea5428fbaf678912aa3ee5a1680b05e5635d2579ca6fcf72a92eff9e3` |
| 180 | `theorem` | [HasFDerivWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivwithinat-sin.md) | 842 | `result-track:f55e099597c024881d509c20e193ebc2d55491d433df7d0771b736ac214f21eb` |
| 181 | `theorem` | [DifferentiableWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiablewithinat-sin.md) | 846 | `result-track:c76bbc9a97403b15f26c5bc58a871d77c2f0fe075644eaeca48589cd042b1fcc` |
| 182 | `theorem` | [DifferentiableAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-sin-source-edition-2.md) | 851 | `result-track:8d4bf248b924b7cddee82f78495a7cea1508f5e3eb660de19d6ddb2e388b847e` |
| 183 | `theorem` | [DifferentiableOn.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableon-sin.md) | 855 | `result-track:898389a8b8b65129e4859d3d7a87ea12c658bedff8f8292f1dfa1abc67d39dc4` |
| 184 | `theorem` | [Differentiable.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-sin.md) | 859 | `result-track:28f039327aa7d2efca51c953113be61a91dcf31224deea74d20665eb3c05701a` |
| 185 | `theorem` | [fderivWithin_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderivwithin-sin.md) | 862 | `result-track:4f46b04648b0c430fc4a52e9ebf932e630332230f07d691c680606110acfdecc` |
| 186 | `theorem` | [fderiv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderiv-sin.md) | 867 | `result-track:151cd08f15cc09c9cbd22e0aa0850ec6a066989fff029d902b0c223f61e71c08` |
| 187 | `theorem` | [ContDiff.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-sin.md) | 871 | `result-track:1020e9f2fba13fb454cafc40b16856c1aa78c65d99b8f15d91f524491791cd3c` |
| 188 | `theorem` | [ContDiffAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffat-sin.md) | 874 | `result-track:e6278f5ee806f94b1367204520f7cecec900f11c0941b4e5977db16d5a667dbc` |
| 189 | `theorem` | [ContDiffOn.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffon-sin.md) | 877 | `result-track:4c55f0905a17208d817f63cf28cc74a972faa2252fa8b8ad3d9a0e93aa209240` |
| 190 | `theorem` | [ContDiffWithinAt.sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffwithinat-sin.md) | 880 | `result-track:83282bf2d3250ec6d67f599d8013db0e4f912a60fd56f10e17036c6d35dbd535` |
| 191 | `theorem` | [HasStrictFDerivAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictfderivat-cosh.md) | 887 | `result-track:8c2dbe66cb301a2f463c6e894792e0cc2a4ded00ada3efa80e2a41bead6a2639` |
| 192 | `theorem` | [HasFDerivAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivat-cosh.md) | 891 | `result-track:27412cdea357a5f0fd65eb1d8c328314f12e1502256632a2147275f238ad9a54` |
| 193 | `theorem` | [HasFDerivWithinAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivwithinat-cosh.md) | 895 | `result-track:5e9365b399ef4280542c92f27dcfa187916f4a10e9949766ea62a49427d187cb` |
| 194 | `theorem` | [DifferentiableWithinAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiablewithinat-cosh.md) | 899 | `result-track:bba5bee11c6d897bef1f21044e57123aba3ef714a84d8d475670d9ecaf4e1f2d` |
| 195 | `theorem` | [DifferentiableAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-cosh-source-edition-3.md) | 904 | `result-track:e9d4dcbae23af9dec851c175096e5178c3b19da352c28c2a4fb7a6e2de2be50f` |
| 196 | `theorem` | [DifferentiableOn.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableon-cosh.md) | 908 | `result-track:b38b79621b669bd0aa19d8be27adcf286163bd4f842da219f66f082ab5a16eb7` |
| 197 | `theorem` | [Differentiable.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-cosh-source-edition-3.md) | 912 | `result-track:e587557de0c3643e4302fba9b17a8f1a9f78cbf79a5aa375f0162d66c0df0896` |
| 198 | `theorem` | [fderivWithin_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderivwithin-cosh.md) | 915 | `result-track:2bb19ac0d2fc07a640aeddc6c9885eb9bf46ee39106bf2f6d487c6e7e1ac50a5` |
| 199 | `theorem` | [fderiv_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderiv-cosh.md) | 920 | `result-track:5c765c3c0d997b702f4d685956ee5009674a2b04a6d8802eb55fd5d2733528c1` |
| 200 | `theorem` | [ContDiff.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-cosh-source-edition-3.md) | 924 | `result-track:9c4ebc62f76bb4899c248ad04a0130ae3d83735767f1c035de229871538dcde0` |
| 201 | `theorem` | [ContDiffAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffat-cosh.md) | 927 | `result-track:5c16041858fdb715b1f7755e4073203a0dca6808f6e404ed06e2678b118c4c95` |
| 202 | `theorem` | [ContDiffOn.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffon-cosh.md) | 931 | `result-track:7f6d3884824d092d29d7159d403293f57cffed4f43233c87e2252fb0102dec59` |
| 203 | `theorem` | [ContDiffWithinAt.cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffwithinat-cosh.md) | 935 | `result-track:89fa6f0a7fe32707402f028cf4c9a59fbcceaead9b995ecf8393846cd9b9098e` |
| 204 | `theorem` | [HasStrictFDerivAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasstrictfderivat-sinh.md) | 942 | `result-track:558831e3dea7943e5e66e64e029c703e1d46b8c65ee08d4d87b98e9364fb57b3` |
| 205 | `theorem` | [HasFDerivAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivat-sinh.md) | 946 | `result-track:cf56fdc7b08e8638e9b6563c4b42d5d3c9ee1340f722f556b08ad1012d43f3b6` |
| 206 | `theorem` | [HasFDerivWithinAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/hasfderivwithinat-sinh.md) | 950 | `result-track:14a9e654b695a735204c61d63b77aefff82155c8eb77a66e8496bdf80319bc39` |
| 207 | `theorem` | [DifferentiableWithinAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiablewithinat-sinh.md) | 954 | `result-track:033d58ab30c179454953ef038fef3b4c02e1b2aa0082a6832835fd8581bd7730` |
| 208 | `theorem` | [DifferentiableAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableat-sinh-source-edition-2.md) | 959 | `result-track:db8cf96d580d0b97caebe5cd74c81cec3c559ce24f687b4687d31e4693f336b7` |
| 209 | `theorem` | [DifferentiableOn.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiableon-sinh.md) | 963 | `result-track:9542f2f801385c4293426d56302b4878d56d105e5f2cc28ebff844ac78a663e0` |
| 210 | `theorem` | [Differentiable.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/differentiable-sinh-source-edition-2.md) | 967 | `result-track:7429db6ea89d982aeb48bd38199bcf3d6a18f4026f2d7d0a0fa94099110c5ef5` |
| 211 | `theorem` | [fderivWithin_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderivwithin-sinh.md) | 970 | `result-track:1574857ca4f6a3030ab40112a4cbe2c3f829da8742944c2babf0e7772e296ae0` |
| 212 | `theorem` | [fderiv_sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/fderiv-sinh.md) | 975 | `result-track:e1308d50763945cdefe4d4b2e984fb5cc0ff41f2a17f6e8f6d39daf0aa713d12` |
| 213 | `theorem` | [ContDiff.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiff-sinh-source-edition-3.md) | 979 | `result-track:e6e3e434e65a6fc748b52ef8c3607fbd0cc40e9e8cdb39bf06580f42a292a4c9` |
| 214 | `theorem` | [ContDiffAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffat-sinh.md) | 982 | `result-track:99d091036f9897007f4455e155da823f96b06171dfc0f66a7b209826bb8741d5` |
| 215 | `theorem` | [ContDiffOn.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffon-sinh.md) | 986 | `result-track:6cd775a25f0039c58f65ae1228c6ab7d454e1dc4f556eeb9141386aa9ec07332` |
| 216 | `theorem` | [ContDiffWithinAt.sinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/contdiffwithinat-sinh.md) | 990 | `result-track:707d51b4e0bd46d04e3f3bfad6bae4d8f447b7d7013f826a908b48020ab2d4ee` |
| 217 | `theorem` | [Complex.logDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/complex-logderiv-sin.md) | 997 | `result-track:7c471bb01c4400a5e631fd11fb6150321a8b3264086d726ffd9ac5e10beb1756` |
| 218 | `theorem` | [Real.logDeriv_sin](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/real-logderiv-sin.md) | 1002 | `result-track:73a114bdc417015020aec3d689bcefe7b8dc79a6ed3317a37b001adaa941e8a4` |
| 219 | `theorem` | [Complex.logDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/complex-logderiv-cos.md) | 1007 | `result-track:1b6f43fcd44234dfb4a489807ee74026ae4b52ab602cdf1a255568e05dca81ae` |
| 220 | `theorem` | [Real.logDeriv_cos](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/real-logderiv-cos.md) | 1012 | `result-track:fb9e172b6dfd37ab9cf347465a2785b9b59afed1e1b75a4128987e5021d51d60` |
| 221 | `theorem` | [Complex.logDeriv_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/complex-logderiv-cosh.md) | 1017 | `result-track:b7902a2ddf28023396b60f2878859d6e20a8ec5d4d70840f3b78b984d207fe5d` |
| 222 | `theorem` | [Real.logDeriv_cosh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/real-logderiv-cosh.md) | 1022 | `result-track:df63974aeddf7e922b3edd0f9a69f5ea9d8b5a019d02b3ede91f1dbacca608d5` |
| 223 | `theorem` | [Complex.LogDeriv_exp](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/complex-logderiv-exp.md) | 1027 | `result-track:ced8ba4e3e0a9e11d6e77f4d28c673c3378203d90fa09a1daaaef375daa5e717` |
| 224 | `theorem` | [Real.LogDeriv_exp](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/real-logderiv-exp.md) | 1032 | `result-track:1726d133b368e4e540fac2a6a99e1b33ef031765507df8c64ac3da05040738a3` |
| 225 | `def` | [evalSinh](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/evalsinh.md) | 1050 | `declaration-track:9dcf4e8d8f4b1ba00f3feec54fe69e5d1d7b2a7d8cfb9fa229c48aca8e9e465c` |
| 226 | `example` | [(anonymous)](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/example-source-edition-3.md) | 1063 | `declaration-track:9a653f649e823a5d22ceef37f60774f92cb38e465c0dc21ed11e70d8320552d8` |
| 227 | `example` | [(anonymous)](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/example-source-edition-2.md) | 1064 | `declaration-track:5c4d6664269f76e3231bfa1f9a12dd152d53c7e69ce8f70d622b51bf31d7f21c` |
| 228 | `example` | [(anonymous)](../../../../SpecialFunctions/TrigonometricDerivNamespaced.lean/declarations/example.md) | 1065 | `declaration-track:5b5af00f4fb4a4633f6d2a8907c9d05967e2a962839e1fff55182241f98f83e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d582f85b8045417cc72863d392417e8ef38dc94821176560fa32d7febc58d2f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta7f9132510c8c571ec88757fbe57de13d41b40c29136db0db27b43842f53d296.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta7f9132510c8c571ec88757fbe57de13d41b40c29136db0db27b43842f53d296.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
