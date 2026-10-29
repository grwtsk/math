# Verification target: Fixed Point Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9202cd1e97b1bbece2de1fb970cbb3b9eddc15de",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variante6ab882f93dcf56982781f9e4606f0f6f037b9ca66b78d81be00df3e865b18b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9202cd1e97b1bbece2de1fb970cbb3b9eddc15de`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variante6ab882f93dcf56982781f9e4606f0f6f037b9ca66b78d81be00df3e865b18b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variante6ab882f93dcf56982781f9e4606f0f6f037b9ca66b78d81be00df3e865b18b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfpfamily.md) | 54 | `declaration-track:5ee441b4cfde3c9b91888cd4af1acae43a0972615c4b6fbcd8c34b0e284182c6` |
| 2 | `theorem` | [foldr_le_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/foldr-le-nfpfamily.md) | 57 | `result-track:09d90ea59ce54c55f9a60a612c70fa0609caa0fddd2cec0537d1035f48cf3f25` |
| 3 | `theorem` | [le_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/le-nfpfamily.md) | 61 | `result-track:5212a3fb4c2d8f7ed7e93c8f11fd74ee9a6b29caafd5d212822146fe59c49bbe` |
| 4 | `theorem` | [lt_nfpFamily_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/lt-nfpfamily-iff.md) | 64 | `result-track:239daa9938bc4a1fd3b383dfc028d17b6032059a331a06b818d0b17241a2ee66` |
| 5 | `theorem` | [nfpFamily_le_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfpfamily-le-iff.md) | 67 | `result-track:6b2bec885727ca31d4cc46645ec9f99a6b3a7cc3ae4dd1fd73dc8f303dead783` |
| 6 | `theorem` | [nfpFamily_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfpfamily-le.md) | 70 | `result-track:19efd64bffeecb43f1b75bfae01d028eded4b91ada2f1f10d5b836469353b07c` |
| 7 | `theorem` | [nfpFamily_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfpfamily-monotone.md) | 73 | `result-track:010236013b953645260d19a7bd954267c858421775a7a2b60af721638f42e901` |
| 8 | `theorem` | [apply_lt_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/apply-lt-nfpfamily.md) | 76 | `result-track:5d40262a4868961bcb8fc8547c78752b3de7835b925f597280116c1f881b8078` |
| 9 | `theorem` | [apply_lt_nfpFamily_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/apply-lt-nfpfamily-iff.md) | 81 | `result-track:f33c5e66dc447afda26e89d2cbd6f725f601ee2ebc44a15b89df910735f6e0e9` |
| 10 | `theorem` | [nfpFamily_le_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfpfamily-le-apply.md) | 87 | `result-track:2b336e92984e6e9c3fc4c02c8b21133565eb3fbbba38313851e95f60eabbd45d` |
| 11 | `theorem` | [nfpFamily_le_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfpfamily-le-fp.md) | 91 | `result-track:92613be96bf7d8d82d4d94c72f4416a29874e63d672269c05139a03cf3659589` |
| 12 | `theorem` | [nfpFamily_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfpfamily-fp.md) | 98 | `result-track:e934dfe9514c1669d9cb2794b0df34e50971ff9a909daf8d09cae5eddfe03a1d` |
| 13 | `theorem` | [apply_le_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/apply-le-nfpfamily.md) | 105 | `result-track:df56378b9e5d8d83c7d7b451e569dd8df8495cce7ce621a409daf199845b51cb` |
| 14 | `theorem` | [nfpFamily_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfpfamily-eq-self.md) | 113 | `result-track:966e8bb86f6fbdba494a67d1220af3842366410ae888b36ba0f44e41770b58d0` |
| 15 | `theorem` | [not_bddAbove_fp_family](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/not-bddabove-fp-family.md) | 121 | `result-track:c71be35064cc138d66fa94c977fdd3dc5f05ca02947e95ee7c386ec0a6ca8a05` |
| 16 | `def` | [derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/derivfamily.md) | 132 | `declaration-track:7995f3aaf865552fb359aaf98695b26e23811352704159e633ef5c3a10197114` |
| 17 | `theorem` | [derivFamily_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/derivfamily-zero.md) | 137 | `result-track:e25eba3e1ae177d5781bc422a0958a4b3d8ac3d10aebb810e617e8e6d9da615c` |
| 18 | `theorem` | [derivFamily_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/derivfamily-add-one.md) | 142 | `result-track:431db387a971bc3ab12fcd2141132a1a3d37258fbfc7c32c2dd94f18b2c59061` |
| 19 | `theorem` | [derivFamily_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/derivfamily-succ.md) | 147 | `result-track:2bafc6e79233191329848f3dda73402b7fb9cc5fbf6e0f78486cbe4f04c75ae9` |
| 20 | `theorem` | [derivFamily_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/derivfamily-limit.md) | 151 | `result-track:9620fc5969cdbfe907e45d645e10d1b38b55811aba049e471f9e7fbfee03898d` |
| 21 | `theorem` | [isNormal_derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/isnormal-derivfamily.md) | 155 | `result-track:76d4ec4fc47827e2ed7f722c9f7148aee14d04aafa55d40a9f349a45708dc67a` |
| 22 | `theorem` | [derivFamily_strictMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/derivfamily-strictmono.md) | 164 | `result-track:093d57b44d94117d8f4c9c600891a5d76e7c9fdb11aca7587438ed57b8b3706b` |
| 23 | `theorem` | [derivFamily_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/derivfamily-fp.md) | 168 | `result-track:d34417cf79eb283fafe5fd0f98a61e7b98b6aac541a98e4ee04f7dad338cba17` |
| 24 | `theorem` | [le_iff_derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/le-iff-derivfamily.md) | 185 | `result-track:2f705a0d1af9d4c674a0688506813ef53381e7fc70e5a5686a2cc040227dd7a8` |
| 25 | `theorem` | [fp_iff_derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/fp-iff-derivfamily.md) | 213 | `result-track:5f48352b311a2bc56b44cfa17fbd769747c74837780ff1cd26981146f19f3427` |
| 26 | `theorem` | [mem_range_derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/mem-range-derivfamily.md) | 218 | `result-track:40115fad881fb4124e8f0d4dc2d4e92fbe24876deca92a37da83a9ae4b321538` |
| 27 | `theorem` | [derivFamily_eq_enumOrd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/derivfamily-eq-enumord.md) | 223 | `result-track:73a7e3ffe84e93e9f895b4f1d82a3fb27495fd168748de46ac3f078ee63d2686` |
| 28 | `def` | [nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp.md) | 246 | `declaration-track:a3356dbd8911a0b22d0648fb50661b74a1413e41fb81b5552d6e2ff9f049a7c9` |
| 29 | `theorem` | [nfp_eq_nfpFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-eq-nfpfamily.md) | 249 | `result-track:4c77f3aff54f0e0e379dfbbc7e3bcaa331c717c092508d0b30f3217a8b5513bd` |
| 30 | `theorem` | [iSup_iterate_eq_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/isup-iterate-eq-nfp.md) | 252 | `result-track:360222f0aeaae0f7e81434cef2a0c0fd370ca402d68d537e115dd55da8fad730` |
| 31 | `theorem` | [iterate_le_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/iterate-le-nfp.md) | 264 | `result-track:0294e52b2dd77aa792b6681b8ac6ec9d4c0dccd280f637cc4a7e06a0a578bc57` |
| 32 | `theorem` | [le_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/le-nfp.md) | 268 | `result-track:4992a543829d430a9d23454c7db1d3d605e5bc545361b6b03cec1fb5bf1039bc` |
| 33 | `theorem` | [lt_nfp_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/lt-nfp-iff.md) | 271 | `result-track:e9650211ec0e4033befebfb04ef9cea6524d2263427bbfbb90b601aca2321608` |
| 34 | `theorem` | [nfp_le_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-le-iff.md) | 275 | `result-track:8305da58fd70b278ff1f64e8f49e17e5dba23765ab6efab2b8b8d78cef25ed42` |
| 35 | `theorem` | [nfp_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-le.md) | 279 | `result-track:d8a0fa2d738cd0f57d83ee2bca39e702878fc65585fa4a1f384a778d7097a4d0` |
| 36 | `theorem` | [nfp_id](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-id.md) | 283 | `result-track:07913ab14854267ecb01fa32834b337cb1565893be419404c4d1f6c5ef22fb7a` |
| 37 | `theorem` | [nfp_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-monotone.md) | 288 | `result-track:57242566dfadacd824200841f55bd67875d13c8d568545303fca79901c71aad5` |
| 38 | `theorem` | [iterate_lt_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/iterate-lt-nfp.md) | 291 | `result-track:41ab4fee03987e25dbf747cd156ccf387611ef8615c105e6a3eb7eb777c82aa1` |
| 39 | `theorem` | [apply_lt_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/apply-lt-nfp.md) | 296 | `result-track:9e0a4b96730be71ad4b5c7214a5454a02ec99bf04c12f6edd3c63447793103ed` |
| 40 | `theorem` | [nfp_le_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-le-apply.md) | 301 | `result-track:c9e13e2d7163a5b1296beb19b4a3b901998d0d663db8a94fb23b5d57f2e449aa` |
| 41 | `theorem` | [nfp_le_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-le-fp.md) | 304 | `result-track:57ef598b5a3808f8a751f4ee90d72565168967ffada2c0f47a1b161c6b3a5cd2` |
| 42 | `theorem` | [nfp_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-fp.md) | 307 | `result-track:8ff2ff678121a5763a77ffd56662bdaa80999b89f68c681a9adfcaa023b26a14` |
| 43 | `theorem` | [apply_le_nfp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/apply-le-nfp.md) | 310 | `result-track:bdab64070006e55eeedfd68c66414d7de8fe105da8c468aba2a1c15f735e31d4` |
| 44 | `theorem` | [nfp_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-eq-self.md) | 313 | `result-track:a331f29d3677f9238a9e14f7b8866a709ba319727eb9514775dd0905db90eead` |
| 45 | `theorem` | [not_bddAbove_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/not-bddabove-fp.md) | 318 | `result-track:51e4f8df24b8024711c0e634de586c6632395f6ccc34e9308626c2a2af9a136f` |
| 46 | `def` | [deriv](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv.md) | 325 | `declaration-track:74ca9d9a94b04f01abb4b2a08264045039a46e9e409c46bfcebcbc5016190f46` |
| 47 | `theorem` | [deriv_eq_derivFamily](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-eq-derivfamily.md) | 328 | `result-track:9662b1e6ef852348ab03006243c719d1bf0e6b3b37a5c33d55ac744d1295416b` |
| 48 | `theorem` | [deriv_zero_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-zero-right.md) | 333 | `result-track:9fc6d9a2940628dfbb57c70d1a02837758f6a8edc169092751bb898620a299ff` |
| 49 | `theorem` | [deriv_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-add-one.md) | 337 | `result-track:79ee78f4cfffd274377c7552a1b46f6bb486b340c706281bfbb4e733dff3641b` |
| 50 | `theorem` | [deriv_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-succ.md) | 341 | `result-track:1b78bdb452294ed1de67eb246865269301b3eb09ecfa7f0b35a9f3cc9d231c59` |
| 51 | `theorem` | [deriv_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-limit.md) | 344 | `result-track:a24bcc2716bd8ffcb24f832f2a95f8d2904a513a59c25cb4abfd769e175880a4` |
| 52 | `theorem` | [isNormal_deriv](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/isnormal-deriv.md) | 347 | `result-track:7901b3398d1ecf672c5f20e410cc4fa15e6b010fc1c745fab3f7ec89c85000be` |
| 53 | `theorem` | [deriv_strictMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-strictmono.md) | 350 | `result-track:57f459a23a663cc160c3ec42ced09209cad437eb4ea70eda5f1aaf39c9560a1f` |
| 54 | `theorem` | [deriv_eq_id_of_nfp_eq_id](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-eq-id-of-nfp-eq-id.md) | 354 | `result-track:0759c9b92d99b76a6026a9d891a26d5920d792a0370c3f15ae2cbe6c7e2eea48` |
| 55 | `theorem` | [deriv_fp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-fp.md) | 357 | `result-track:c8e1f658805fb05a444cd29f378f0dc342b1184322d2ab75f50b1b05e03aeeaa` |
| 56 | `theorem` | [le_iff_deriv](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/le-iff-deriv.md) | 360 | `result-track:afa7f056281fe9d93507ed9db6d0de3691916781795e5f9c8a0e16574d9fa8ae` |
| 57 | `theorem` | [mem_range_deriv](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/mem-range-deriv.md) | 365 | `result-track:64dd555583c2cb87185594ab12261042c5e2a0a6e161843c55aaf2c4459e65a2` |
| 58 | `theorem` | [deriv_eq_enumOrd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-eq-enumord.md) | 369 | `result-track:4ccd696d0963fbb1837e2385e3056e15fbf560bb239555f8447b740da69e6764` |
| 59 | `theorem` | [nfp_zero_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-zero-left.md) | 374 | `result-track:8aa7c62f8a07f03650ba5fa0ab8389af35d08c6e4d63f9083e588ab4c4b118fc` |
| 60 | `theorem` | [nfp_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-zero.md) | 384 | `result-track:67854bc01ebc24f049d0f4410ef3982e41dc7ab49012481aaa95f6a66086c125` |
| 61 | `theorem` | [deriv_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-zero.md) | 389 | `result-track:025c60bfb75c06ac0059c66254d8ae41788a8fd64b06eeb32d23403185e497f6` |
| 62 | `theorem` | [deriv_zero_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-zero-left.md) | 393 | `result-track:db1ab3644b8e77460799682886521345a26dbb3cbd9ea4753f18e6d7d85c382d` |
| 63 | `theorem` | [nfp_add_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-add-zero.md) | 401 | `result-track:306fe40b2b329ea4eba052e9554879196a02b6bd1b9a8c18a50e9196a8dafac3` |
| 64 | `theorem` | [nfp_add_eq_mul_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-add-eq-mul-omega0.md) | 404 | `result-track:793aa5047a9a9e8215c4bb458d1b17564673949b646d9173432079290adc5b7a` |
| 65 | `theorem` | [add_eq_right_iff_mul_omega0_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/add-eq-right-iff-mul-omega0-le.md) | 410 | `result-track:aa10801e8c8c1e149d877bb2fc44770184f47934b4bd8431d13c4c14cd76907c` |
| 66 | `theorem` | [add_le_right_iff_mul_omega0_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/add-le-right-iff-mul-omega0-le.md) | 420 | `result-track:658a0f8987436f72c26d34f5a315481a87c01fbb0ccddc5a1f265ddbfafd50ad` |
| 67 | `theorem` | [deriv_add_eq_mul_omega0_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-add-eq-mul-omega0-add.md) | 424 | `result-track:8e58c11002e05188bc5aa66502ef23040795e889f337339f37285c906d4561da` |
| 68 | `theorem` | [nfp_mul_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-mul-one.md) | 436 | `result-track:d5fcc2ba070ad0b15bbca4f94830231f6c113ab75bc07ea36029666ada768b17` |
| 69 | `theorem` | [nfp_mul_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-mul-zero.md) | 441 | `result-track:e4c4892d0f5c569eafce1f49a8d31379799f7c0f5baf9c2bb44bfefdec077c01` |
| 70 | `theorem` | [nfp_mul_eq_opow_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-mul-eq-opow-omega0.md) | 445 | `result-track:291803d5888428bd1709e49b0b5cfa75821a0569e431a2b090ea00c0b00cdafd` |
| 71 | `theorem` | [eq_zero_or_opow_omega0_le_of_mul_eq_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/eq-zero-or-opow-omega0-le-of-mul-eq-right.md) | 456 | `result-track:70ade3ae2d3ea6fb58aabe045b90d8f3ed3ce3294dc25d4a283a1269c39edf45` |
| 72 | `theorem` | [mul_eq_right_iff_opow_omega0_dvd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/mul-eq-right-iff-opow-omega0-dvd.md) | 467 | `result-track:79b7a6d19439485ff9588ec1c88abed318c008eadf8819bb76d7cf3dabfae20a` |
| 73 | `theorem` | [mul_le_right_iff_opow_omega0_dvd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/mul-le-right-iff-opow-omega0-dvd.md) | 482 | `result-track:0407ce93e6c9dcd9cb7b34c778e5ac3929a5448dce718b0c223c6c2ecb537cc6` |
| 74 | `theorem` | [nfp_mul_opow_omega0_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/nfp-mul-opow-omega0-add.md) | 487 | `result-track:922522f34fba34ca6a36f7d00d2f54400e47db10abec46e5550dffae92fc881f` |
| 75 | `theorem` | [deriv_mul_eq_opow_omega0_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointPublic.lean/declarations/deriv-mul-eq-opow-omega0-mul.md) | 504 | `result-track:d27beb5574c61d3694b2589200e40c0882fd546f7ef27b94d49cf6ea37ac41c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=311365084838220ec3f03208d054dc216fb7454bd9dabe9744db568585e66434 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variante6ab882f93dcf56982781f9e4606f0f6f037b9ca66b78d81be00df3e865b18b1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variante6ab882f93dcf56982781f9e4606f0f6f037b9ca66b78d81be00df3e865b18b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
