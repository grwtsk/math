# Verification target: RCLike Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0939cb7d2b9c1c8061a0fc65f7d20afba88fd67a",
  "lexical_observation_count": 236,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0939cb7d2b9c1c8061a0fc65f7d20afba88fd67a`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Balance` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Expect` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.ContinuousLinearMap` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RCLike](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/rclike.md) | 63 | `declaration-track:b7ea82416de618e16af06066cdfa47d905630fe31d514e5bb2d22ad779bc5576` |
| 2 | `abbrev` | [ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal.md) | 99 | `declaration-track:e5279c1afd8bb5e5c3c238cd164b6a0e4035ea02b2faeb25effb21d231984b3a` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 103 | `declaration-track:6cf2e9e731eb658ad7678caab6f3ce5801379d7f928f44a488771331535f02fa` |
| 4 | `theorem` | [ofReal_alg](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-alg.md) | 106 | `result-track:106249ee594faf7456c2a1d97135fdd89e3594526c82692abd890f913b3846a5` |
| 5 | `theorem` | [real_smul_eq_coe_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/real-smul-eq-coe-mul.md) | 109 | `result-track:110d2d1ac5f19214a80735f3ee66dc85e31f9680f7696bfdaa24d2ae0de8b86c` |
| 6 | `theorem` | [real_smul_eq_coe_smul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/real-smul-eq-coe-smul.md) | 112 | `result-track:1af61ec2233cd6c162c560b4fffe0f1e6384baa608b70ad2ea637ade6c124369` |
| 7 | `theorem` | [algebraMap_eq_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/algebramap-eq-ofreal.md) | 115 | `result-track:273459423ebd7f5f6738e5b3d9ab12b9f30e56286875f6a6aac417d3a08a849e` |
| 8 | `theorem` | [re_add_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/re-add-im.md) | 119 | `result-track:264fa9ee7180f5ac3554a8953b307a6637c72e07025a1c1ce14b6fe8634f2f11` |
| 9 | `theorem` | [ofReal_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-re.md) | 123 | `result-track:22d7724936181cb5a14543fd7dd9162f48d81360291083bde2dad66ab3642290` |
| 10 | `theorem` | [ofReal_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-im.md) | 127 | `result-track:c05f3e12a11fcd40dce3845757522b2d4a175c23cd785e615b17f2df236fac01` |
| 11 | `theorem` | [mul_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/mul-re.md) | 131 | `result-track:6c433d61cf735b61680c35e14384c1e129967a55d601baa04ee85b0f937028e2` |
| 12 | `theorem` | [mul_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/mul-im.md) | 135 | `result-track:816b05ec85654e5970c7e2c56d3c1355c0909a199db614d67bdf9c4614f9acb7` |
| 13 | `theorem` | [ext_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ext-iff.md) | 138 | `result-track:df7bd9de7b6e00db27ab2126c051513be2011367f5481e4bd5fa42ae1a7a0532` |
| 14 | `theorem` | [ext](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ext.md) | 141 | `result-track:865c9ca46b2631d22f403549fc19f53cd20c679fbc58cf1828edf3e189168070` |
| 15 | `theorem` | [ofReal_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-zero.md) | 145 | `result-track:234856873d2a10e755b33c9fc07dee87da8a89e8c5eae35d3294ea6e53dd988a` |
| 16 | `theorem` | [zero_re'](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/zero-re.md) | 149 | `result-track:de095587c2bfd7a115cab9c260401f8b99c902a1869ddae903199d23f91f4a00` |
| 17 | `theorem` | [ofReal_one](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-one.md) | 153 | `result-track:5b255352ffeeb6ed7cf45e6722453426d12f84e1b4496d5339c34a01af47979f` |
| 18 | `theorem` | [one_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/one-re.md) | 157 | `result-track:c91ee1e42869f19ac76e6089d940c4d7db2df04cd411185d0e829a72dd4d04eb` |
| 19 | `theorem` | [one_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/one-im.md) | 160 | `result-track:b89a5085e2bfe5bc37a823a370729a6629e62d434b7fe53c328cb7c9b321a221` |
| 20 | `theorem` | [ofReal_injective](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-injective.md) | 162 | `result-track:8a3c5a86cec2854e16f2e1e1a1578e8fb6fb86d7197a777362b55115d01848ab` |
| 21 | `theorem` | [ofReal_inj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-inj.md) | 166 | `result-track:1b90b9a24d90c6016ca27d3c581cae84cbd39579121885e84375f4cbfb6b1864` |
| 22 | `theorem` | [ofReal_eq_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-eq-zero.md) | 172 | `result-track:ed2885a1459d7b9116a2e3f9ec8c219a89490301b23e437ffb10e39d472e3e13` |
| 23 | `theorem` | [ofReal_ne_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-ne-zero.md) | 175 | `result-track:67cf71a3c7bf82b7478fccd6123897ab5a11226ebb13f4e8363d414da27fc48e` |
| 24 | `theorem` | [ofReal_add](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-add.md) | 179 | `result-track:404d77eec13f4e74c3028f54203073799df95bbcfff99599732d8280f0c5b15d` |
| 25 | `theorem` | [ofReal_neg](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-neg.md) | 185 | `result-track:01c1defa6df3212bd75dd5296ba69adb9dc23f6e9c7423cf24e8e2b8099d4f80` |
| 26 | `theorem` | [ofReal_sub](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-sub.md) | 189 | `result-track:efc75cb152bb1a521620cfc428f762115da0f63f1b22cbe194a34cfecaf9b2f5` |
| 27 | `theorem` | [ofReal_sum](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-sum.md) | 193 | `result-track:4461aac197829857fb80184a3e157d7bc89ff5d0ea9e7ac6629bff0f7d45e1f1` |
| 28 | `theorem` | [ofReal_finsupp_sum](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-finsupp-sum.md) | 198 | `result-track:5f3e6e132391f15d9af0d71930f431b91b6e7e5443e9ee563d9a4fed9c002c25` |
| 29 | `theorem` | [ofReal_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-mul.md) | 203 | `result-track:05cefdd735905e9c6eab7a23a8c329ccd83aebc82b57393b134a38a415251e87` |
| 30 | `theorem` | [ofReal_pow](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-pow.md) | 207 | `result-track:e95f53ba0f50d89b59cd174a17dcc0e17b84500b70a3b1a6c0f89cc438523b83` |
| 31 | `theorem` | [ofReal_prod](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-prod.md) | 211 | `result-track:1d804577dd1f67a509112d4f2b857db290cedd2a9bd4103a3e51bca7b59eb2a0` |
| 32 | `theorem` | [ofReal_finsuppProd](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-finsuppprod.md) | 216 | `result-track:9c9eae265f924e4b4df0c88994366017253485974bfc39827dd9fbe8815066f4` |
| 33 | `theorem` | [real_smul_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/real-smul-ofreal.md) | 223 | `result-track:ea120a73cee20538bee4649bb04268ea8a3f6689a11647b30726e56b4f1eb05c` |
| 34 | `theorem` | [re_ofReal_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/re-ofreal-mul.md) | 227 | `result-track:63ed5d55272cddc666e6001bc1e37d701e0a93490964c03d495c0777a55b2bea` |
| 35 | `theorem` | [im_ofReal_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/im-ofreal-mul.md) | 231 | `result-track:a83c092cfdf30a09201e78562ee69cd279c9ebc0e14fcf893d190ef80115fbf4` |
| 36 | `theorem` | [smul_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/smul-re.md) | 235 | `result-track:e12a9489896a72221bc58a28035682c5ed532554447eed13f992026c7cf5fcd9` |
| 37 | `theorem` | [smul_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/smul-im.md) | 239 | `result-track:b4fb96a0dd4513ff5fdad25e1149313f8c73d9a417a6214792b03ec4930ffc5e` |
| 38 | `theorem` | [norm_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-ofreal.md) | 243 | `result-track:1a338d170ea1b65b0274e24bfef9d6467af29bfae802c3b0aee6d4fcbe958219` |
| 39 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instance.md) | 250 | `declaration-track:1f29bb0a815cb456eb92550dac930e3f3360428689c59ba540b12abb346dd5a4` |
| 40 | `lemma` | [ofReal_expect](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-expect.md) | 254 | `result-track:c0f8bc061cb37682c516f5b44a9d1f974bf64e451df18055285152e6f8af01fc` |
| 41 | `lemma` | [ofReal_balance](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-balance.md) | 258 | `result-track:cdb3372c58781b27cc0b1c68064ed9b4a1be696553fb401dfe17b0724410ac1f` |
| 42 | `lemma` | [ofReal_comp_balance](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-comp-balance.md) | 261 | `result-track:58e8876c03adf3fddc760e7a3eb115566efe19829fb775b1097d486155b1a77c` |
| 43 | `theorem` | [I_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/i-re.md) | 268 | `result-track:f5bc8a4a7df5a82427204db51b7a71595df447dec0613a4c8d4c924351df48b3` |
| 44 | `theorem` | [I_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/i-im-source-edition-2.md) | 272 | `result-track:3ccb9578aebbf0d79d90c3d2ebd319e962365baeae8a75ec9947ecce23bf2462` |
| 45 | `theorem` | [I_im'](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/i-im.md) | 276 | `result-track:22664c9e41cfc38acf4423ea0df15e9f9d0ef41daa86eff7c8fc8c415a468430` |
| 46 | `theorem` | [I_mul_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/i-mul-re.md) | 279 | `result-track:895c77be586611f9877ebdb32c3e096ba06ccea30090fc8d91590899b5fd5ac0` |
| 47 | `theorem` | [I_mul_I](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/i-mul-i.md) | 282 | `result-track:6e2a79151beb34c1b1280d69468ae7a7e7b6d6cf1e40adfb78b9a4079a631fb8` |
| 48 | `lemma` | [I_eq_zero_or_im_I_eq_one](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/i-eq-zero-or-im-i-eq-one.md) | 286 | `result-track:feb328a6c61d5feb9d2259a5d2fe2b7279c77bad8182bdbd6e0b66ba44d34c80` |
| 49 | `theorem` | [conj_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-re.md) | 290 | `result-track:a65163a1942b25952fdfccb63953eb85b637a8d29134a5ea3280c9a9586122ca` |
| 50 | `theorem` | [conj_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-im.md) | 294 | `result-track:245042eb65092ae13e0e03f2fe7b0c523e0a722212865f34c8881f4652a9effb` |
| 51 | `theorem` | [conj_I](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-i.md) | 298 | `result-track:405f531d1d8482e2d3d77f662bdfc3740181e0d8d3a2d875b335688f95d7ba1e` |
| 52 | `theorem` | [conj_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-ofreal.md) | 302 | `result-track:6dfccb79ba0a5e09ea02d98175402c2d29f50fc8073dae0b1811517992b5d32c` |
| 53 | `theorem` | [conj_nat_cast](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-nat-cast.md) | 308 | `result-track:4279bca62b774540330cb1b3f424164b61b61db559c503543b0e71042d19b061` |
| 54 | `theorem` | [conj_ofNat](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-ofnat.md) | 310 | `result-track:a83c164690d034a742db388e950a7a9ab28e70ef2761f10dd11913bee3178807` |
| 55 | `theorem` | [conj_neg_I](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-neg-i.md) | 314 | `result-track:bf3dded79ce167a09dca9aafc966bc24558889e6973b51d4c06cd33980014817` |
| 56 | `theorem` | [conj_eq_re_sub_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-eq-re-sub-im.md) | 316 | `result-track:ec3d9e691e77b7ad25b47c853a7f37b5753b65fd761cfe146cdb12e2002f6b8d` |
| 57 | `theorem` | [sub_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/sub-conj.md) | 320 | `result-track:e48abe9d6ed9705a6bf1ff3e7a97a4205a170cae93081aa6a9b3689b041eba1a` |
| 58 | `theorem` | [conj_smul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-smul.md) | 326 | `result-track:1f2d937f0f3810c6a1e37d1324dab3c4b21aa38addbcb3cd23c73d9ee0e82bd1` |
| 59 | `theorem` | [add_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/add-conj.md) | 330 | `result-track:1c1728476c7de3475eed1f4025497f77a5d9d7032a13141a2f3275e40ed85d78` |
| 60 | `theorem` | [re_eq_add_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/re-eq-add-conj.md) | 335 | `result-track:120d4d970b1256dd55a116b56a112f99631e4f11cded91e5c39131d03c9b9b08` |
| 61 | `theorem` | [im_eq_conj_sub](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/im-eq-conj-sub.md) | 338 | `result-track:5b1b8bc1a480a5a38594f12eee4c2fa546815803961cc0f718e2e18190ac6d8a` |
| 62 | `theorem` | [is_real_TFAE](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/is-real-tfae.md) | 344 | `result-track:eb9e069a2465f99760afd63c2b9640f4d3c400962c2d445d06cad0d13ac07770` |
| 63 | `theorem` | [conj_eq_iff_real](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-eq-iff-real.md) | 356 | `result-track:50a4ab03afe12bc32b44bebdb5524b5eeec82145facb6b66d8a5fdd742d0f466` |
| 64 | `theorem` | [conj_eq_iff_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-eq-iff-re.md) | 361 | `result-track:4490cd989a1b407fdc30cfa4ffb71bdf383f39d3132e8aa95125a1c01d839e00` |
| 65 | `theorem` | [conj_eq_iff_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-eq-iff-im.md) | 364 | `result-track:9dabff6579062bc03a6060a30d21e8cd908f3367d360f7e4e76f43291bd690a3` |
| 66 | `theorem` | [star_def](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/star-def.md) | 368 | `result-track:17d67d3b5fc1d55452e3f4c91291053888d87f46e897b108a12d2b5f27c0a0fc` |
| 67 | `abbrev` | [conjToRingEquiv](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conjtoringequiv.md) | 375 | `declaration-track:08c8bf72cf61a1459dba08e7c5f3691b9d48ab856aa5b2027fd9dd9efd17cc00` |
| 68 | `def` | [normSq](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq.md) | 381 | `declaration-track:67353ffad1c24cf1164d1852056511b90a7a3b1b898a2459dfd585ec135cb816` |
| 69 | `theorem` | [normSq_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-apply.md) | 389 | `result-track:14e2d04b3364da8d727fc95effa0fd5b357c2b9ad269c57fb1a0560b8b35d9bd` |
| 70 | `theorem` | [norm_sq_eq_def](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-sq-eq-def.md) | 392 | `result-track:a2389b54cd286c5bd0da9fe127f3b9e2980bfeecd20f9365fbd2a78ecb0ffd61` |
| 71 | `theorem` | [normSq_eq_def'](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-eq-def.md) | 395 | `result-track:e2ce0d3739b2c133d67d1c29adc1ac7370eb59001c7c188a04b1e9c981f77999` |
| 72 | `theorem` | [normSq_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-zero.md) | 399 | `result-track:a70592046da5d940da423b4c30e2fa8bf2794964222b70ae4e5a1a58a8062612` |
| 73 | `theorem` | [normSq_one](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-one.md) | 403 | `result-track:2892ed8b7d56c9d40468fb20f70c9f662da4bcbbed574d9263eba2a2ac6774fc` |
| 74 | `theorem` | [normSq_nonneg](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-nonneg.md) | 406 | `result-track:768c22b53b526896ec1932b2251420dfe088037b43a25fbda356054a6f79a07c` |
| 75 | `theorem` | [normSq_eq_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-eq-zero.md) | 410 | `result-track:34f35ff6df49d20fb3850de0bfcaa5630c3d0c3dead219f7a8bb0c595289df13` |
| 76 | `theorem` | [normSq_pos](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-pos.md) | 414 | `result-track:4801b757460d7661331eb44ae45efce1e0574e3de52ae3262cbb53f9baefd3f4` |
| 77 | `theorem` | [normSq_neg](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-neg.md) | 418 | `result-track:649d8318fe252c8d96c8250feed3e931a6dbb1aaed3e3011a250188b88d30751` |
| 78 | `theorem` | [normSq_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-conj.md) | 421 | `result-track:5cc5435aea42b7de5a2ec3ff3a7df271b7102b81d37cbb58b5198f0681014ca4` |
| 79 | `theorem` | [normSq_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-mul.md) | 425 | `result-track:7244fdd354840aa572b980020a32913f6dc762695a45d20ab84af5c9cba7b7f8` |
| 80 | `theorem` | [normSq_add](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-add.md) | 428 | `result-track:a1da1695e03326a5f81f388e72b1628b998e9fefb367ab07bc4d93172399c954` |
| 81 | `theorem` | [re_sq_le_normSq](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/re-sq-le-normsq.md) | 432 | `result-track:cfef5bca03ad3e4279ec8ec5b789896360803e4d023ef613f11457f44ed630c7` |
| 82 | `theorem` | [im_sq_le_normSq](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/im-sq-le-normsq.md) | 435 | `result-track:450ae3828634ab62f6c23ce54e8e13937b8dc71f43def1545d10ce6bcdd0e212` |
| 83 | `theorem` | [mul_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/mul-conj.md) | 438 | `result-track:29dff4de1dd0797f51d3f8540e79af77a2f09a5a5061c04f01b6ec3d8c20e96a` |
| 84 | `theorem` | [conj_mul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-mul.md) | 441 | `result-track:8bb87afac67a89926cb95ecdbaf02152e59971df15b65d3ca112b19260fa6e6b` |
| 85 | `lemma` | [inv_eq_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/inv-eq-conj.md) | 443 | `result-track:26d8e729421189d4544f4baebc40d80083f1696e93821f02960b6561562f0198` |
| 86 | `theorem` | [normSq_sub](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-sub.md) | 446 | `result-track:3dcfaeaa5d9352eb1cc1706aeb8607fb02ffe105db992fbd1b436ce9f2358626` |
| 87 | `theorem` | [sqrt_normSq_eq_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/sqrt-normsq-eq-norm.md) | 449 | `result-track:53b28bdac93101b5aa5dbc1606fa898498850a2373186b411da6048313df4f86` |
| 88 | `theorem` | [ofReal_inv](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-inv.md) | 455 | `result-track:c096fbba731c2144a044a096d2a4f6b07b3918918ac46a49d7cc681939636b6e` |
| 89 | `theorem` | [inv_def](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/inv-def.md) | 458 | `result-track:cb6287b3add04b6ce9bd88a4895b35547457d9fdea88005cc1f0b80a292be72c` |
| 90 | `theorem` | [inv_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/inv-re.md) | 466 | `result-track:bd2d7f670c413139a4821dded0eda49d60d6dad4f8d0690679b530a94bbdc21e` |
| 91 | `theorem` | [inv_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/inv-im.md) | 470 | `result-track:b43d8d1224555d6aa9af3817b1efc07631ab7db3604b95d0723b887fa200f43e` |
| 92 | `theorem` | [div_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/div-re.md) | 473 | `result-track:d5e180e49115a426267b55f5da4f8280300d6969bddaafd66e3d8c5fba8a3bf0` |
| 93 | `theorem` | [div_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/div-im.md) | 477 | `result-track:369fc93037c68d5db7f4a38eee8696e818ac21fd6bb6a9d6e791880a59e60a50` |
| 94 | `theorem` | [conj_inv](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-inv.md) | 482 | `result-track:f67a6bffa07d3441688c3bcc2320520624cdfe82eee91d6f13bf29799696a47c` |
| 95 | `lemma` | [conj_div](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-div.md) | 485 | `result-track:217f954c2f87b6905172901ef791e16040850ee8e256f0cfe07f2bc670489ae4` |
| 96 | `lemma` | [exists_norm_eq_mul_self](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/exists-norm-eq-mul-self.md) | 488 | `result-track:b4195b97f88809c13ea22ba6456a773de38329012abedac87a03f21fb108e032` |
| 97 | `lemma` | [exists_norm_mul_eq_self](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/exists-norm-mul-eq-self.md) | 493 | `result-track:525a3e46dec92ee29e1829c4b5e65a27bbfe761367edb37d4e21039e8ec27e8e` |
| 98 | `theorem` | [ofReal_div](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-div.md) | 499 | `result-track:73b85f54cbf7c530d356db36d3220d449af91be88a69344ab416fa11312facbc` |
| 99 | `theorem` | [div_re_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/div-re-ofreal.md) | 502 | `result-track:6707c6edc6024ca0589e0327340bfa5380877596634b6568c64f7c119b3e33c3` |
| 100 | `theorem` | [ofReal_zpow](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-zpow.md) | 506 | `result-track:aedca3446fcd29c3b79ff951f3709543a2e3b455af1001f049287744ab9581bc` |
| 101 | `theorem` | [I_mul_I_of_nonzero](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/i-mul-i-of-nonzero.md) | 509 | `result-track:3c4fe3383494b3a81f55fd576d1a2d9c7f6dd3b8327d595196cb336c4043bad0` |
| 102 | `theorem` | [inv_I](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/inv-i.md) | 513 | `result-track:3d249abd1dfe5f2399e3b85a0c0fea8cedaa6792094cdcc696b650b0f41be971` |
| 103 | `theorem` | [div_I](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/div-i.md) | 519 | `result-track:eb1f6c0b8998bf8ee04c6ae2ff16f9c0d892f44a059cab840e0509815fc3427b` |
| 104 | `theorem` | [normSq_inv](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-inv.md) | 522 | `result-track:960635ca3e2145bebc68912ae5dbd70959083b0c6eed406d43cc9696f8e57d19` |
| 105 | `theorem` | [normSq_div](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-div.md) | 526 | `result-track:5fe3a6f1ff2c6578baae1ed7e29041c82be8d85acb7f16ccd045ee0e90337a89` |
| 106 | `theorem` | [norm_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-conj.md) | 530 | `result-track:a3e7c761269e4bd316f97b365128dd44bdc599fca078e04cbca619f2204b3cc5` |
| 107 | `lemma` | [nnnorm_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nnnorm-conj.md) | 532 | `result-track:030e499768e8130a9cf5b1ebf16b796fce6938dc63a67ae2cbf28bded0b4149b` |
| 108 | `lemma` | [enorm_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/enorm-conj.md) | 534 | `result-track:0227c14084f5937f84ad44c1a3a8018e87c6bcbbd492d38a862b550a7c59b59b` |
| 109 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 536 | `declaration-track:c11588b94268b3bc0a988d4594dee10999e5a542186ebcbaf3445494f18992ef` |
| 110 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 539 | `declaration-track:c3226d18aa010d2ab86d7db4f4a0934179fcf8bd3c8348144825be19c96790df` |
| 111 | `theorem` | [ofReal_natCast](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-natcast.md) | 546 | `result-track:6090b2aa2879d6de1456187670c6f8fdfc7ef27a0e07092ba97b6d4bc6ad6eb4` |
| 112 | `lemma` | [ofReal_nnratCast](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-nnratcast.md) | 550 | `result-track:fd2aa9b03251e0a12a4c992766fc05c98bfd4b7915e4c2fa9c4f3896f92dd1db` |
| 113 | `theorem` | [natCast_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/natcast-re.md) | 553 | `result-track:56277baa70e1dacf4c7545a20b9ac0871e3a26755800ce771c4c5598b48bdb9e` |
| 114 | `theorem` | [natCast_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/natcast-im.md) | 556 | `result-track:cab6623e932ef258d51eacccd2e1cf00fc693137283f6e18151d4464ed4a937f` |
| 115 | `theorem` | [ofNat_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofnat-re.md) | 558 | `result-track:3fbee1bc092c20fa7fd119651080bf46dcee5232f8689cd86ab02d91264d2e6d` |
| 116 | `theorem` | [ofNat_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofnat-im.md) | 561 | `result-track:1562308e00d6a0dce2e454f8f16a0b7ceba51bf70e53660b209c3f14854f0b93` |
| 117 | `theorem` | [ofReal_ofNat](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-ofnat.md) | 565 | `result-track:91435d5f5d826f5f163fd0f2000176984bb1c952827c8fc1ff88f9bdde3bd3e9` |
| 118 | `theorem` | [ofNat_mul_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofnat-mul-re.md) | 568 | `result-track:4e37fe1edd0633804fc7575cab1e2d66e8fac23d8816d1ba238657bac5a4df36` |
| 119 | `theorem` | [ofNat_mul_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofnat-mul-im.md) | 572 | `result-track:f17de1472156855bbbd15c77aceea2f24ad70bcce16b008e78ceb20d1cedb6e2` |
| 120 | `theorem` | [ofReal_intCast](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-intcast.md) | 577 | `result-track:296ebb0ff4c7bdbd3ba937f6a10cb432e7eef0866983850d000fd1cb93b1bcf6` |
| 121 | `theorem` | [intCast_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/intcast-re.md) | 581 | `result-track:3ad52b7eb36de65a05999eaaf5463bc09c1eabd319e4696cff4963a43f180a05` |
| 122 | `theorem` | [intCast_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/intcast-im.md) | 584 | `result-track:31bdcfa34892429c9241e7c0c19c291f14525fbc4d7abd4d03aac894cd05c303` |
| 123 | `theorem` | [ofReal_ratCast](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-ratcast.md) | 587 | `result-track:9c89bfe04c7ab4610532b8ca0e992738e95950313f0ab7ab0c25e2378b40d08d` |
| 124 | `theorem` | [ratCast_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ratcast-re.md) | 591 | `result-track:e1c1edaea0d09494a631422cbb1129f905cd3f333157f32c32f9d7b1956b1367` |
| 125 | `theorem` | [ratCast_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ratcast-im.md) | 594 | `result-track:c8935e6afa5d42b402a8e742de073e226386b4c3a7ff9322dc5f4cd632525e43` |
| 126 | `theorem` | [norm_of_nonneg](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-of-nonneg.md) | 598 | `result-track:e96cf3efc1929ff1bf33768596e85c015ff424443848f098981fe33858db7835` |
| 127 | `theorem` | [norm_natCast](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-natcast.md) | 602 | `result-track:277a7e2ecdc6149643c1139d9071942fbdc1131ff62133f22988a62a06803e28` |
| 128 | `lemma` | [nnnorm_natCast](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nnnorm-natcast.md) | 606 | `result-track:035b166d7966852b08967d950e37eb9148da302ab7a98c4151b9bf974b75ce43` |
| 129 | `theorem` | [norm_ofNat](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-ofnat.md) | 609 | `result-track:f2c83cad931345e5912a50a0d562df9d39bd062344d660247a94899c3f5cbc64` |
| 130 | `lemma` | [nnnorm_ofNat](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nnnorm-ofnat.md) | 613 | `result-track:00b606b61a1f0fa69b35895ce147b7a0be2b54bc6580cfac8f710ceb2fa468c8` |
| 131 | `lemma` | [norm_two](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-two.md) | 616 | `result-track:94e67b2878799a1fb2a8ebacaee8eea33f5872bb64e7e43461694828a09466be` |
| 132 | `lemma` | [nnnorm_two](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nnnorm-two.md) | 617 | `result-track:ebcb863d65a0410c4ed85d43dcaa27cd70bd2fb167efcbabb3b9d60ee31cab2c` |
| 133 | `lemma` | [norm_nnratCast](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-nnratcast.md) | 620 | `result-track:cc1482320552ce9cb8b8d9ee3b079c2fe679a6621a4c24487f4161882d6a3ce3` |
| 134 | `lemma` | [nnnorm_nnratCast](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nnnorm-nnratcast.md) | 624 | `result-track:b307e9107eaab3fd6722ee3bd6a83dfd81b447d8bf26b5df42525fd4f8131993` |
| 135 | `lemma` | [norm_nsmul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-nsmul.md) | 627 | `result-track:a74fbc56e310edc920e8d2647b7f97765f80fa58c156abcd3db959f202c113c2` |
| 136 | `lemma` | [nnnorm_nsmul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nnnorm-nsmul.md) | 631 | `result-track:46dfb827f4226017d53607b38ed34714222cad5c6ac339d2de4b95934818af93` |
| 137 | `lemma` | [norm_nnqsmul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-nnqsmul.md) | 639 | `result-track:de0e7688f472f0268d479bdc23801fbf0d161f29bac87d1c51d1e29ac8611d50` |
| 138 | `lemma` | [nnnorm_nnqsmul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nnnorm-nnqsmul.md) | 643 | `result-track:99d00da6f82cb222d80bf02a2515d2c1c5122d211503a4bc8ad030cd90a20027` |
| 139 | `lemma` | [norm_expect_le](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-expect-le.md) | 647 | `result-track:065fa3568f82bef32dce68aa358a6bff08b61d72fa8bcb63521f56dbad6adc25` |
| 140 | `theorem` | [mul_self_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/mul-self-norm.md) | 652 | `result-track:8eb3b700f88c041a51d3f0b5dfcaec918fec86484847749c6f42946f541396aa` |
| 141 | `theorem` | [abs_re_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/abs-re-le-norm.md) | 656 | `result-track:d22edde312c76ec311b1eac7a64c009454a289b272f58bff7b00095069a37174` |
| 142 | `theorem` | [abs_im_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/abs-im-le-norm.md) | 660 | `result-track:5b00a0463f9de09999dd7980933e158c7dc9cc1bf20977762077dd0d868dc8d4` |
| 143 | `theorem` | [norm_re_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-re-le-norm.md) | 664 | `result-track:7a068726f748c08118153024b8769e5433a64bf5bd696acaee9bf00da5e01845` |
| 144 | `theorem` | [norm_im_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-im-le-norm.md) | 667 | `result-track:15bc3ee76022d82201df43f75c01059e6931e833e96da7659fb8aa91484fce55` |
| 145 | `theorem` | [re_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/re-le-norm.md) | 670 | `result-track:d16369d283370ef97257c2cdfbea8259f4445e9fe3e1bd77974ddbc3f5e27808` |
| 146 | `theorem` | [im_le_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/im-le-norm.md) | 673 | `result-track:ee6e9d5d526b01cdb14bc79f636e80e4605644864f6f535cb707eb06701f5108` |
| 147 | `theorem` | [im_eq_zero_of_le](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/im-eq-zero-of-le.md) | 676 | `result-track:4813c9493ba7c9de3392e5021b12f3bb0b32580e7acc36ef7c73c88aee4d1d8f` |
| 148 | `theorem` | [re_eq_self_of_le](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/re-eq-self-of-le.md) | 680 | `result-track:5530c71d8d5de4a6bec4cf79adcd737a42021f95763eb13df959bb6af6832840` |
| 149 | `theorem` | [abs_re_div_norm_le_one](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/abs-re-div-norm-le-one.md) | 685 | `result-track:e2612645e1a0dc0bb307dbdacdcb582339f4101653c8e417bbc76025f159516e` |
| 150 | `theorem` | [abs_im_div_norm_le_one](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/abs-im-div-norm-le-one.md) | 689 | `result-track:68a128fec4b0bf0218838e931a436de5cec9f3fd52b1cf9687371389e161ada4` |
| 151 | `theorem` | [norm_I_of_ne_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-i-of-ne-zero.md) | 693 | `result-track:705f675a8bea44576b7513a6fae1cf465348a5f7abef4d08618074ffa70aead5` |
| 152 | `theorem` | [re_eq_norm_of_mul_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/re-eq-norm-of-mul-conj.md) | 697 | `result-track:3e44c13ac13d967163560744ffb87c7add968b7e92ee406422b8eac3053d4cf6` |
| 153 | `theorem` | [norm_sq_re_add_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-sq-re-add-conj.md) | 700 | `result-track:d847a748eae1792b3e685de390db5dc0938d07181e909560b186ab7200519da8` |
| 154 | `theorem` | [norm_sq_re_conj_add](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/norm-sq-re-conj-add.md) | 703 | `result-track:5e6c8e4fa0e06cc77ee2893cd2d27d7282987493345c322edb70041c42514dbd` |
| 155 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 706 | `declaration-track:ba1bde8b0ba58f728c36695f9d8cb96e1fcd7ada0417d97286409be87288f82f` |
| 156 | `theorem` | [isCauSeq_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/iscauseq-re.md) | 712 | `result-track:37294db3010a26c3df0090eb2af8b2d45bf3cf520945131cf55a1481ce8bd307` |
| 157 | `theorem` | [isCauSeq_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/iscauseq-im.md) | 716 | `result-track:2d962beec10735c1d00d66a5b77e3d70d21accbf48777ab11a7b5239c366b37e` |
| 158 | `def` | [cauSeqRe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/causeqre.md) | 721 | `declaration-track:097f2c691f9f7a32b4d5740a4e76c503d586239c1c51c01214df44aa4c9e0616` |
| 159 | `def` | [cauSeqIm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/causeqim.md) | 725 | `declaration-track:5552f19d00f13ebe62c5dfa85bfaa678cd8d38dbc138dda679df1aa728f0a3ee` |
| 160 | `theorem` | [isCauSeq_norm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/iscauseq-norm.md) | 728 | `result-track:ce5f14608d68ab65853dd9f5f08404b9773f7c79a0369a26c51d2d4e768332cd` |
| 161 | `instance` | [Real.instRCLike](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/real-instrclike.md) | 736 | `declaration-track:11c5aa76d9500605ac762c8b8f7744d22a0128fcfd2c642d2b08a4fc15589cea` |
| 162 | `theorem` | [lt_iff_re_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/lt-iff-re-im.md) | 765 | `result-track:217a015a3a011c49e6e8d12503f6863970e6926bc2894cee77921ad5b3e68133` |
| 163 | `theorem` | [nonneg_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nonneg-iff.md) | 773 | `result-track:8837c9c6db33ffd13885d35bfbb55896c9622528ea89595707a944b934b814b5` |
| 164 | `theorem` | [pos_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/pos-iff.md) | 776 | `result-track:5d452b4a7bc2f5cb478020c88379b8340808cae4322a619e76487308d7f5a3d4` |
| 165 | `theorem` | [nonpos_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nonpos-iff.md) | 779 | `result-track:b6a8847101990af401bea3c56b9c5f02fce48df59702c6a34bfc8b8d7a7545c5` |
| 166 | `theorem` | [neg_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/neg-iff.md) | 782 | `result-track:46f57b1654e9464f0198898aebbaf44382e1b0f7ce8af2db75fe08b96e4c39db` |
| 167 | `lemma` | [nonneg_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nonneg-iff-exists-ofreal.md) | 785 | `result-track:7b011d06d26d6b926346b8580c26601ce5c623822a4c13dad614aa1508c03164` |
| 168 | `lemma` | [pos_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/pos-iff-exists-ofreal.md) | 788 | `result-track:bf6a9d038e5ca474fc9d9b664848cf357d51de9a97abe32fb65ab449d1099e83` |
| 169 | `lemma` | [nonpos_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/nonpos-iff-exists-ofreal.md) | 791 | `result-track:6bcbc7db50a68dfa3f921b0c8f64dde0734bc0b5a1dc53f29d46aaf6effb4f7c` |
| 170 | `lemma` | [neg_iff_exists_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/neg-iff-exists-ofreal.md) | 794 | `result-track:f5dba9e0e9e61040dafe40916ab5cbeca81dddf5e68fa6d5cf19b00561df05c9` |
| 171 | `lemma` | [ofReal_le_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-le-ofreal.md) | 798 | `result-track:e7b5c4067be2e32abc0268eec7aca94f8896ae9b75d788c29c6ba04bc2f25acb` |
| 172 | `lemma` | [ofReal_lt_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-lt-ofreal.md) | 803 | `result-track:86192fa510c3b8be8c3b3d1bfadc85259b70917b16ba905e7f6260ed3f559088` |
| 173 | `lemma` | [ofReal_nonneg](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-nonneg.md) | 808 | `result-track:2a6f100a1790c4817edd29922622b7bd43bfed5bcbca9a192a8be7a47b8e5ced` |
| 174 | `lemma` | [ofReal_nonpos](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-nonpos.md) | 812 | `result-track:0422b8fca7457604ac191596b3833005ed57ee073d0d7c77f9b5fd76d88f76d9` |
| 175 | `lemma` | [ofReal_pos](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-pos.md) | 816 | `result-track:daa3015449e0f28be4f1f047db09c7991d4c85c37971c9e01a98c86ca5ca1ace` |
| 176 | `lemma` | [ofReal_lt_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-lt-zero.md) | 820 | `result-track:92558953ca944ed739835685d87c94a98b218e1354d03f29c852a415031d0b81` |
| 177 | `lemma` | [inv_pos_of_pos](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/inv-pos-of-pos.md) | 823 | `result-track:34eae673414b3afc974a27c5163a36da2f3778272a947035e9b7fafc223a0b96` |
| 178 | `lemma` | [inv_pos](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/inv-pos.md) | 829 | `result-track:e698ae89312bc01e1816ea977c5fd4bd772ecfe3e99c7283a1bc0fdf76c9d151` |
| 179 | `lemma` | [toStarOrderedRing](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/tostarorderedring.md) | 838 | `result-track:94e9548c42bfca76fbe8170184185bb04b9168b9d421f46a893f2bc09e7cec78` |
| 180 | `lemma` | [toZeroLEOneClass](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/tozeroleoneclass.md) | 851 | `result-track:2e96d2379dde3c2769d3bd2ebc73d152bc9c2d326599fbb9e4ba2b7dcc351e95` |
| 181 | `lemma` | [toIsOrderedAddMonoid](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/toisorderedaddmonoid.md) | 856 | `result-track:74fd0c3469710c1348d14ffab0344df9910a45e02a3bfaac44a29d96ceef2a38` |
| 182 | `lemma` | [toIsStrictOrderedRing](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/toisstrictorderedring.md) | 864 | `result-track:22a22ae08a557c0d6b12836edcd00392b141cc3402eeed997eaa08a2e4eed298` |
| 183 | `theorem` | [toOrderedSMul](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/toorderedsmul.md) | 871 | `result-track:a937ca28dc1d20bf6f456cb2ecc78d52d82bf98f4a584a95773c4e283114e5a8` |
| 184 | `lemma` | [RCLike Basic Namespaced](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instorderedsmul.md) | 881 | `result-track:ebb729a6cd70890d355f45163b4b4b1b477afe8774fd84a62869207b3ce4d0de` |
| 185 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 890 | `declaration-track:52944c717c1bf57c16a084b6a1421739605d938f59f838cd0242e7cb8895515f` |
| 186 | `theorem` | [ofReal_mul_pos_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-mul-pos-iff.md) | 897 | `result-track:61cecb61be25a24527e920f100c09fc50592850be869d7aed4cfbd8624f431f6` |
| 187 | `theorem` | [ofReal_mul_neg_iff](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-mul-neg-iff.md) | 907 | `result-track:042452a3f16d5ea4b074dce24c61fb3fd0627d5611cf96794611747d9b4fa643` |
| 188 | `lemma` | [instPosMulReflectLE](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instposmulreflectle.md) | 911 | `result-track:033a4dbe22e6d3ff95d0b0054527aa68e2af66cc49b1c97b24fe1bd44b90bf4e` |
| 189 | `theorem` | [re_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/re-to-real.md) | 935 | `result-track:f8cff71fac7424e99b44fb65226a288848435505c34b4568a195c7b3f00985d7` |
| 190 | `theorem` | [im_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/im-to-real.md) | 939 | `result-track:6108870f42ed0eafe33da1e8b819db9614b4d7104d3e708e200583c249557bf1` |
| 191 | `theorem` | [conj_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conj-to-real.md) | 943 | `result-track:a27c638f56ab829614245192fa3652d43649a0f752c861eba1daea516c200719` |
| 192 | `theorem` | [I_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/i-to-real.md) | 947 | `result-track:d81f31c434e3e1f307d689532bc9e3e14a20b643ea6896abf7465ac147b7ee6b` |
| 193 | `theorem` | [normSq_to_real](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/normsq-to-real.md) | 951 | `result-track:99b6874a6efc51354c1e4d2ce766a22a2fc94dc64031ca32ede9192db27fc6e0` |
| 194 | `theorem` | [ofReal_real_eq_id](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofreal-real-eq-id.md) | 954 | `result-track:9e29d73d7af5f4aa1f9f80bb63c16f47fa6d9fb686d77e3e232b13c2f23b7653` |
| 195 | `def` | [reLm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/relm.md) | 962 | `declaration-track:b2b741c462eaac1372e50092753978294241209ce39d1fddfd552dd045966420` |
| 196 | `theorem` | [reLm_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/relm-coe.md) | 966 | `result-track:2877c25868ce1f593d09274355cb46e6babe31f780257ef571bde00f4cd4989b` |
| 197 | `def` | [reCLM](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/reclm.md) | 970 | `declaration-track:a96a832b6c673136c77b37e938cdc34bbf62d101e766ec49fe51ece3fcc2698d` |
| 198 | `theorem` | [reCLM_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/reclm-coe.md) | 976 | `result-track:74c3cc5901596cc821c3b9f006a5034ae853ad0d80f3d9c2b367cdc767a2d418` |
| 199 | `theorem` | [reCLM_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/reclm-apply.md) | 980 | `result-track:ab2dcbfd0278267c0573477068c85596fce71d3c0314ad1a0a00e42b323626d3` |
| 200 | `theorem` | [continuous_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/continuous-re.md) | 984 | `result-track:3fdd0726170a711c47b0b482e08f10beaf40c4917003101b486c3911afbdd581` |
| 201 | `def` | [imLm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/imlm.md) | 988 | `declaration-track:959668135a8957384c013c1ab59246e9bb50d80826b08b4b111eba2c04535ba6` |
| 202 | `theorem` | [imLm_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/imlm-coe.md) | 992 | `result-track:2aa3082336eb1b85aeab2efe756b04b26134f32a291cee6b37989bd6b97ae8a9` |
| 203 | `def` | [imCLM](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/imclm.md) | 996 | `declaration-track:315b71e7e68b6452e6e7f4926d86df770e36b18e5c91d3a4fe105ddd25d4ab94` |
| 204 | `theorem` | [imCLM_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/imclm-coe.md) | 1002 | `result-track:85d8f02286e0e30d6b26c867f4a5dbcd00fb5b2cc4d193749348100b8e2a004b` |
| 205 | `theorem` | [imCLM_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/imclm-apply.md) | 1006 | `result-track:0be115429a516f0d41cdfbda9c56ebb2cfa9e999314f902f874b6ab0fcd9c4bc` |
| 206 | `theorem` | [continuous_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/continuous-im.md) | 1010 | `result-track:0f681623f503606e7454dfa1b5dd02107564f091ea07ea44d63c84f2862a3c98` |
| 207 | `def` | [conjAe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conjae.md) | 1014 | `declaration-track:9456a395e85d9e3d3291a769a8a5b28b917c0724b1b291b80d90397aab418153` |
| 208 | `theorem` | [conjAe_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conjae-coe.md) | 1022 | `result-track:3a403c9bdb38953c0d09f8c463394fcba7b678e07385aa20de5534edc51354b8` |
| 209 | `def` | [conjLIE](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conjlie.md) | 1026 | `declaration-track:dcd603b5699367c88bf32b9f70488f4f1fe6aaf011ed078267dcc4d97d4cb021` |
| 210 | `theorem` | [conjLIE_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conjlie-apply.md) | 1030 | `result-track:90e585e55ed5c6b84bf86e217db4f06c9e49fcf4243174b54ce8ef6ce80c1773` |
| 211 | `def` | [conjCLE](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conjcle.md) | 1034 | `declaration-track:e88d75ea835daadf7150afcaae432bbd53d9decf0232dc840edbfc3557aa7f3c` |
| 212 | `theorem` | [conjCLE_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conjcle-coe.md) | 1038 | `result-track:a6ab748fe2bec96ba6de516b5dd776b785afbc73f9219d0649db7694d876e58e` |
| 213 | `theorem` | [conjCLE_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/conjcle-apply.md) | 1042 | `result-track:484d6bd117e3fca7b54799e943c76830c5ef204e071de22586a2886aa447ce40` |
| 214 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 1045 | `declaration-track:70ee19c4e08ae42b539f0f7fd5163ab0f0f9ada5ef24edbc8855f985d2e47ee0` |
| 215 | `theorem` | [continuous_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/continuous-conj.md) | 1049 | `result-track:083e45d52041ddcc7c8493130a4453471abc296be3b474ed4c519fd45b0037b6` |
| 216 | `def` | [ofRealAm](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofrealam.md) | 1053 | `declaration-track:a715dda020ea82597133842411e11760e803fd850647a68fd7fc8c5424200ff7` |
| 217 | `theorem` | [ofRealAm_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofrealam-coe.md) | 1057 | `result-track:08f0ca9f270f3db22e73dbf3002b3b00d074f9bc42c07051d3b26c8bbc025c46` |
| 218 | `def` | [ofRealLI](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofrealli.md) | 1061 | `declaration-track:968e7d595dc232aafc9615a13319cc24b07b6843846ebed8ec6ba4ab14bcfdac` |
| 219 | `theorem` | [ofRealLI_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofrealli-apply.md) | 1066 | `result-track:27bb60fcb73f6233727009b88df38d216de1f7002bef431d56cfe6be1010f89d` |
| 220 | `def` | [ofRealCLM](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofrealclm.md) | 1070 | `declaration-track:41456a91973eb39a7a2e4a473063f282b0c65be522c60dd4b1ecf9f7a1a1558f` |
| 221 | `theorem` | [ofRealCLM_coe](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofrealclm-coe.md) | 1074 | `result-track:519486e4dba27914444058feeb9a4ae245466fd4dfaf76c76820307bbfa5c19d` |
| 222 | `theorem` | [ofRealCLM_apply](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/ofrealclm-apply.md) | 1078 | `result-track:d35533c98589632c4c521b9784cab72d9ce570000593d2e0752d89bbebb34153` |
| 223 | `theorem` | [continuous_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/continuous-ofreal.md) | 1082 | `result-track:6f15efdb71c69c058315ff4d1bf4a72b17a9bcfbb947852aec646b7092a15134` |
| 224 | `theorem` | [continuous_normSq](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/continuous-normsq.md) | 1086 | `result-track:93d932337087db6c0b29849b708bf2eb3aa6f8277657aea310baf53b6e362a38` |
| 225 | `theorem` | [lipschitzWith_ofReal](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/lipschitzwith-ofreal.md) | 1089 | `result-track:1d9b0e181177a041afab3eb619af8663a95e7358ff68a2bf68d3396b389beb84` |
| 226 | `lemma` | [lipschitzWith_re](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/lipschitzwith-re.md) | 1092 | `result-track:3b747c126ddc94ed174ccfb838d089e68a96bbad01707b45b8830738efe97eab` |
| 227 | `lemma` | [lipschitzWith_im](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/lipschitzwith-im.md) | 1099 | `result-track:2b0bb25c550605cf3fc32f18eb34314d521fa3fd75e2cec34701fc6ef3f9b743` |
| 228 | `lemma` | [im_eq_zero](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/im-eq-zero.md) | 1115 | `result-track:f8a7e4dcfcfdaa95f7e9863f2632b5ec057d7b9909bbb859597103a2923b42ed` |
| 229 | `def` | [realRingEquiv](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/realringequiv.md) | 1121 | `declaration-track:21a609445ac8e2d9bf479aecdb42d553bd7471850e20e6264847535a4348a7cf` |
| 230 | `def` | [realLinearIsometryEquiv](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/reallinearisometryequiv.md) | 1132 | `declaration-track:abe3b927c1a147ef408e91dcdb538ed0cf9ef208343228444ae19d71a8b708cb` |
| 231 | `lemma` | [inv_apply_eq_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/inv-apply-eq-conj.md) | 1144 | `result-track:2f0125bd7ea8fe6f7b28ada75db94acc094edd7969f1d09fc74be8a3496e0978` |
| 232 | `lemma` | [map_neg_eq_conj](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/map-neg-eq-conj.md) | 1147 | `result-track:fff1ffa71d71084bbe487440864c4d75589c5e0c65284c09da29c603d459038a` |
| 233 | `class` | [IsRCLikeNormedField](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/isrclikenormedfield.md) | 1157 | `declaration-track:8616839fd3b937462ec063d3c0942b009b5db539f59ad0466680a878ca6eb64b` |
| 234 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 1160 | `declaration-track:9bedd83ef6f80585e07e6d4ae9aabcc833862c715aaa71d18ee861eaa207be1a` |
| 235 | `def` | [RCLike.copy_of_normedField](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/rclike-copy-of-normedfield.md) | 1164 | `declaration-track:3d74570e7bf92865c5a419459fdc3598844de1fc95a0cbd6cf4d6ca6b54e4209` |
| 236 | `def` | [IsRCLikeNormedField.rclike](../../../../FunctionalAnalysis/RCLikeBasicNamespaced.lean/declarations/isrclikenormedfield-rclike.md) | 1207 | `declaration-track:f6bcf77d2a681cdbde5c614f1b4be4a8aec8b0eb8f3b84f46e1d47556c61183f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48b66ca47ee8704e195472b4d4fb8691811832e4035662809edf06a601cfb763 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
