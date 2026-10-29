# Verification target: ZMod Basic Namespaced Val Nat Cast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1d2973d2dd49d6121053b8c3457cdc768a6666c",
  "lexical_observation_count": 146,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1d2973d2dd49d6121053b8c3457cdc768a6666c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [charZero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/charzero.md) | 46 | `declaration-track:746177bb12d26dc9d0515869f87f4d8aaf70b8563c0c24ed4d0088d6ce37e738` |
| 2 | `def` | [val](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val.md) | 55 | `declaration-track:8066a2ba25718ef830639085990f10318d4449b85b6490b065911bd85f0114a6` |
| 3 | `theorem` | [val_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-lt.md) | 60 | `result-track:e89c01b541db91970010700411af6d94058b5842f167911b0a4088d37ad1b6d4` |
| 4 | `theorem` | [val_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-le.md) | 66 | `result-track:4479baa80624434e59b9a149e949ac86fe8967d187068a9f8997f86afb8290e7` |
| 5 | `theorem` | [val_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-zero.md) | 71 | `result-track:7e2d7cd6470a19314f6914b2b51031d3746f1a8429fdf73361a4e7740c32fa6b` |
| 6 | `theorem` | [val_one'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-one.md) | 77 | `result-track:34551fbbf554f04dcf641435d4c412f018b5161c6dde6c8bd1c890dda69288bc` |
| 7 | `theorem` | [val_neg'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-neg.md) | 82 | `result-track:50c1f96c132e90469412245b571e2c9d3325a032f4b726347b3c45feec74c694` |
| 8 | `theorem` | [val_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-mul.md) | 87 | `result-track:6f9e99e689224c3160e4a599f7155f0f757832dc3408a27ec099b0f68890380b` |
| 9 | `theorem` | [val_nat_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-nat-cast.md) | 91 | `result-track:6dcaa913df4fcd6efb92131843f6b27374816f93452de7e101e47c92637c3807` |
| 10 | `instance` | [charP](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/charp.md) | 99 | `declaration-track:851b5b18142fe90e2839265698dbcbf855410dc78e76be41f74a0837308deef3` |
| 11 | `theorem` | [addOrderOf_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/addorderof-one.md) | 109 | `result-track:c7e393e50f0e47cb7fe32c81fad33136318a6cb284393f5ba59e32cc27dd0de7` |
| 12 | `theorem` | [addOrderOf_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/addorderof-coe.md) | 116 | `result-track:a8d799f1e5703a4db6a600012d3aa5730ecf5265c3bd2ed0f1fcf19ef3df985f` |
| 13 | `theorem` | [addOrderOf_coe'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/addorderof-coe-source-edition-2.md) | 125 | `result-track:f0bcf7adab3502aa7a9b99097e0d3123ce4c0e20563c36770c843339fdbfe7a7` |
| 14 | `theorem` | [ringChar_zmod_n](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ringchar-zmod-n.md) | 130 | `result-track:2757e01e58c9584273a0b83666b30349f1e5e4c5f98f96359753b83c64688a71` |
| 15 | `theorem` | [nat_cast_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-self-source-edition-2.md) | 136 | `result-track:21593878559e300da9e42277fd5f91393cb717629f1ea1e20f9147cbd73d0051` |
| 16 | `theorem` | [nat_cast_self'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-self.md) | 141 | `result-track:09935d7764b7b1543e493babfa89bd3aa68b662f50e680462f624de644a3753f` |
| 17 | `def` | [cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast.md) | 156 | `declaration-track:4849c9b2bf2cf3e831485b022edaafd4f5a367daf8400c85314187f8a5ad2d84` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/instance-source-edition-4.md) | 162 | `declaration-track:eecf1ada089dbc35205eb73898a9510ade83fa4d79cbd0aa07cda06a4c612ba7` |
| 19 | `theorem` | [cast_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-zero.md) | 166 | `result-track:2f4e8e6fdda7bdbf5b58529041bac99e754229dbd519c1c4308ee42533443c5a` |
| 20 | `theorem` | [cast_eq_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-eq-val.md) | 173 | `result-track:d14ebaae15abf42718297fd7edaf6b56293c3f850d540bdfbf7b299b405d1e03` |
| 21 | `theorem` | [ZMod Basic Namespaced Val Nat Cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/fst-zmod-cast.md) | 182 | `result-track:350fc95d436d98797cdbe6adcb06bfb4b258a51d3dea0cdf23362bde3096878e` |
| 22 | `theorem` | [ZMod Basic Namespaced Val Nat Cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/snd-zmod-cast.md) | 189 | `result-track:56e84e39b37b1a694fafa723f173e78d681351daa60c0729db931bef08965e7b` |
| 23 | `theorem` | [nat_cast_zmod_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-zmod-val.md) | 199 | `result-track:4c692c313895b3ae59f6af334425a7834c10b9a8b0ac6b1a65f2ec5a18c7a358` |
| 24 | `theorem` | [nat_cast_rightInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-rightinverse.md) | 205 | `result-track:9fd9f672cd720e59c983a445bb2bff00c1716cad005fbda5686e0293728dddf0` |
| 25 | `theorem` | [nat_cast_zmod_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-zmod-surjective.md) | 209 | `result-track:3b76b0863aedda94ac3e47efaad9843399b898cc25f375a91f0f5d578ba4c6b6` |
| 26 | `theorem` | [int_cast_zmod_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-zmod-cast.md) | 216 | `result-track:614be99b29d10d3c87a7f1e60aae4cfd6e45e1cc3ee8a3c3097180def83322ef` |
| 27 | `theorem` | [int_cast_rightInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-rightinverse.md) | 223 | `result-track:1a508c6f7cb1a4e4b3db98e9c1ef5ec68ac1634c3b18379ec5ea9dd16e6e9659` |
| 28 | `theorem` | [int_cast_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-surjective.md) | 227 | `result-track:ceafa6548dc7a5d93f9437c20b3116c2a73e5544dbedce1415e93acefe3ee90e` |
| 29 | `theorem` | [cast_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-id.md) | 232 | `result-track:3b95c04be0526695f41f5791ee3e6e82df5021eb0a0befb8acc05fe0e5a82269` |
| 30 | `theorem` | [cast_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-id-source-edition-2.md) | 238 | `result-track:43c678b9401a68e9a067116d900a5272b530799f80d8a5f9f0da21e07822357c` |
| 31 | `theorem` | [nat_cast_comp_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-comp-val.md) | 246 | `result-track:cbe06857cf440b1b7c705c4e606510c96f56221deefa4dbdecd506eb6f6d996b` |
| 32 | `theorem` | [int_cast_comp_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-comp-cast.md) | 254 | `result-track:56ce29022ffd9dc6ac63f02de99d24c59f23e089a3d9db71888d697aab82c3a7` |
| 33 | `theorem` | [nat_cast_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-val.md) | 264 | `result-track:08af8e13c8caafdb06fbcfa0c363b2de0a2cd8dbbd46f7c33431c077633f263d` |
| 34 | `theorem` | [int_cast_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-cast.md) | 269 | `result-track:567f0c96410ccbf14742c8adc9eb0cfad468661da14fdf0986a5f8a0316f7641` |
| 35 | `theorem` | [coe_add_eq_ite](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/coe-add-eq-ite.md) | 273 | `result-track:85890a7b2d9c13e5ccf8bca78dc3d244bed242a58a2d21cbb26b774f264f454b` |
| 36 | `theorem` | [cast_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-one-source-edition-2.md) | 295 | `result-track:c54b99593c5c68c5127006040b7da8a93daf58d5537a285fdeb843cd04e31bcb` |
| 37 | `theorem` | [cast_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-add.md) | 308 | `result-track:39e7ccf4a24f4e123f28d2ea9cafa3e88e473ed7009d257d0b4ef06f40ec7e4d` |
| 38 | `theorem` | [cast_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-mul-source-edition-2.md) | 318 | `result-track:77dd6c771929a618252f0375cd961929219616dc2ca6638c59a89a5c18d3086e` |
| 39 | `def` | [castHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/casthom.md) | 332 | `declaration-track:24d711439902a28758289ed32c699cc6707294996132b04c9c8d1927a7b26fb8` |
| 40 | `theorem` | [castHom_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/casthom-apply.md) | 341 | `result-track:bb14a49958f89f2e2fecc3243aab2cb004e60be66495bd330d48f4127a59c111` |
| 41 | `theorem` | [cast_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-sub.md) | 346 | `result-track:80d964c96333744cf2ec13a1a2fa1cc5ba9729d7fcb1964e87640276d8e0e4fa` |
| 42 | `theorem` | [cast_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-neg.md) | 351 | `result-track:19f226de54ccd0014b87b8887e2c112b3091356f13fb29bee61766d7a2b41936` |
| 43 | `theorem` | [cast_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-pow.md) | 356 | `result-track:73570c70b75405279d5d0e8fbb4671d2258fea9d5fce5bba18725c26775d12f7` |
| 44 | `theorem` | [cast_nat_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-nat-cast-source-edition-2.md) | 361 | `result-track:d62e8bd1d735c58247ac724fb0194cf5c18e2a47f387c0d72ea91efa69131958` |
| 45 | `theorem` | [cast_int_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-int-cast-source-edition-2.md) | 366 | `result-track:d04e59afe011982bf85a61f5a8ef204825247622afb6115ed1149074f304a370` |
| 46 | `theorem` | [cast_one'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-one.md) | 380 | `result-track:00435b562ad76ba1223cbb92a856890bbcd129aa8a13d60e49766cc0d67d37a6` |
| 47 | `theorem` | [cast_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-add-source-edition-2.md) | 385 | `result-track:e2b2283cf0fa1fd322f3cf5e40cd392ee44e17814d0ec982675c01919b010d8e` |
| 48 | `theorem` | [cast_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-mul.md) | 390 | `result-track:7258ebf717b66df6fc3fa4c211e931b981c74997e33887ffbc64486e307bf2a6` |
| 49 | `theorem` | [cast_sub'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-sub-source-edition-2.md) | 395 | `result-track:d5aa0cfa71755ea5b6f69cebad14b91c746e831d1e9a64bafc353040a75e4339` |
| 50 | `theorem` | [cast_pow'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-pow-source-edition-2.md) | 400 | `result-track:a422f553f651ee483914f20d74c85410a7b35629b701654483a2382ca4a136db` |
| 51 | `theorem` | [cast_nat_cast'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-nat-cast.md) | 405 | `result-track:5e75542d84b4818fd65998ec5718674686ff11841691b1fa63ed1e3c87cb54e6` |
| 52 | `theorem` | [cast_int_cast'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-int-cast.md) | 410 | `result-track:6fe77df65d10e06b089318f67ac0a1bbf6bce4986ca1caf0cdef0018e1103773` |
| 53 | `theorem` | [castHom_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/casthom-injective.md) | 416 | `result-track:42f20f0fb12bfda8172688672fa0b92d130e11ee36aa801b7bf0d737caa4c1bb` |
| 54 | `theorem` | [castHom_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/casthom-bijective.md) | 424 | `result-track:5878af5a60a7ac2e91d94a2078a1c1c506cd65d1355a1c65d40d10c9d752d997` |
| 55 | `def` | [ringEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ringequiv.md) | 437 | `declaration-track:722e8ce0a51cb657772489d84c2b613752254a5d160f91633d23ee33d1c947af` |
| 56 | `def` | [ringEquivCongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ringequivcongr.md) | 442 | `declaration-track:836b2e7cf88ea7582fde11200caff0a2a61e897dbf37717ffff2344a6281c26a` |
| 57 | `theorem` | [int_cast_eq_int_cast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-eq-int-cast-iff-source-edition-2.md) | 465 | `result-track:9d01a49559c60acf204b706d34d217fc4b9af931bf2b7a350d0f2b34ec936495` |
| 58 | `theorem` | [int_cast_eq_int_cast_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-eq-int-cast-iff.md) | 469 | `result-track:43250c8f6b1424e3743c1a6730327b48a0b42025805055a4fbd8f7ef47b521e2` |
| 59 | `theorem` | [nat_cast_eq_nat_cast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-eq-nat-cast-iff.md) | 473 | `result-track:34c05f50d476dfead0a209df4c7f6a0db85b600cacefeb197aa02ea7bcbebb04` |
| 60 | `theorem` | [nat_cast_eq_nat_cast_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-eq-nat-cast-iff-source-edition-2.md) | 477 | `result-track:e5090d680ca2eddde73fc4f7ae172f028a46cdca771d1ae136fd6bd5ee537b16` |
| 61 | `theorem` | [int_cast_zmod_eq_zero_iff_dvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-zmod-eq-zero-iff-dvd.md) | 481 | `result-track:c4489df019d444c36e54efc4a760972a8705ede7186a85e67bec798d97eb8e9d` |
| 62 | `theorem` | [int_cast_eq_int_cast_iff_dvd_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-eq-int-cast-iff-dvd-sub.md) | 485 | `result-track:7a606982e4ef9af9f0bd2d8f6ae25e7a5327af2e1cb3cf9cb5eadf3abe745568` |
| 63 | `theorem` | [nat_cast_zmod_eq_zero_iff_dvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-zmod-eq-zero-iff-dvd.md) | 489 | `result-track:3ee98c6797695e46b5ff21f722a42edcc11fc4ff6a93d442db3e1989652eea52` |
| 64 | `theorem` | [val_int_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-int-cast.md) | 493 | `result-track:cd4e4106a0d93eb95ce5b94e44fd4cb5bfcbce1ec6cf9ae847f67d8d3821d96e` |
| 65 | `theorem` | [coe_int_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/coe-int-cast.md) | 500 | `result-track:332a9e8322670f539c50c8728768a8b0db1550c3f1f716d4724fd3673b7eef04` |
| 66 | `theorem` | [val_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-neg-one.md) | 507 | `result-track:df9e0242dfc810c7e19695ff73214a724ad50c3f24cfe8ac8af529a481a08d8f` |
| 67 | `theorem` | [cast_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-neg-one.md) | 516 | `result-track:8598549c6f54d24de7e151e9eff463c7b98628e1e60c4e4449cb5b85a22d0910` |
| 68 | `theorem` | [cast_sub_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/cast-sub-one.md) | 522 | `result-track:ea991f9d6a1cb87a3ecfc6fb482b6faf2a7887384e5dd9e937d6a9f4fd15e4e3` |
| 69 | `theorem` | [nat_coe_zmod_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-coe-zmod-eq-iff.md) | 536 | `result-track:48c10dcd681714f5f83c7aac1be2d66c213eed95915af9b8f22e416f2bab118d` |
| 70 | `theorem` | [int_coe_zmod_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-coe-zmod-eq-iff.md) | 547 | `result-track:8bb81b75c73ba3cd102d97ed6a116e025c030e90616003ff6d01e381b6258f40` |
| 71 | `theorem` | [int_cast_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/int-cast-mod.md) | 559 | `result-track:6f136b3bbdf8a7e56d2aafecfa020c47ba731cc92263f05a98ce28792fadfb5c` |
| 72 | `theorem` | [ker_int_castAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ker-int-castaddhom.md) | 564 | `result-track:ebb93efe30cc779bd0b53722820e22e1fa550d353e45ac35ae312a8ba7232950` |
| 73 | `theorem` | [ker_int_castRingHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ker-int-castringhom.md) | 571 | `result-track:8336c837b4c87cacafb961944417fbd21ad0fe98244e98b47637d32f1d2b75ff` |
| 74 | `theorem` | [nat_cast_toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-tonat.md) | 581 | `result-track:f6ed73d8d1bcd21a2fb623077de08860928ee52d0a348b8fc4095697bc074b0b` |
| 75 | `theorem` | [val_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-injective.md) | 586 | `result-track:b4e6987b558b757e1722a11883c1bb6f566aa56b4fb0c9c234cb4fd4d0083067` |
| 76 | `theorem` | [val_one_eq_one_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-one-eq-one-mod.md) | 595 | `result-track:05623d08c37084cf9a99dc6c6400b8d348471366da8b01387cafd543a6a214e5` |
| 77 | `theorem` | [val_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-one-source-edition-2.md) | 599 | `result-track:f6fc5bac68d57d3af78848993466656da152839f50a62676ab192e067f93c495` |
| 78 | `theorem` | [val_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-add.md) | 604 | `result-track:9ed7a8a346afae396e4b7ed653c1a0f41358bc62d80f4d20339067959796dbc5` |
| 79 | `theorem` | [val_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-mul-source-edition-2.md) | 610 | `result-track:a0d77548586b02a7a137f293b1a342da54655a3e16114e890c617643e9ac5a63` |
| 80 | `instance` | [nontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nontrivial.md) | 617 | `declaration-track:6e167ab813649aa411b8547234fe754916d2c4f1e7c153a0533c14e55c407fcf` |
| 81 | `instance` | [nontrivial'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nontrivial-source-edition-2.md) | 627 | `declaration-track:8cb6020312a8aa58c8c974032529043975907f561ea4a42ff2661381bc99f889` |
| 82 | `def` | [inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/inv.md) | 634 | `declaration-track:e65ee050164d90350a945b98840b482cfbf7fdeeec0b05b64e533dfc5bbb9a3a` |
| 83 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/instance-source-edition-3.md) | 639 | `declaration-track:e93f1da529bef25d91fa93aaead61e470e505120f22fe3d1ac91f0eeedc72a2c` |
| 84 | `theorem` | [inv_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/inv-zero.md) | 643 | `result-track:db80aba58d67eeebeb1b6e7e7ca9924e20163f101be0bc180980ad7a8427e2e6` |
| 85 | `theorem` | [mul_inv_eq_gcd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/mul-inv-eq-gcd.md) | 652 | `result-track:a54b168911449dd3739d2d4f47d8135ba90c608348e6b197f864fbd50f431c72` |
| 86 | `theorem` | [nat_cast_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-mod.md) | 670 | `result-track:e19ef62da449a89b939f1ef96bfac113f65a583a14fec19b2527456797009710` |
| 87 | `theorem` | [eq_iff_modEq_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/eq-iff-modeq-nat.md) | 677 | `result-track:3c389a2f1c74abb78c9e259c0799aca6d168fed95986d16bc6ba6fe1d92da0c8` |
| 88 | `theorem` | [coe_mul_inv_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/coe-mul-inv-eq-one.md) | 684 | `result-track:248c0a9fa8492d4fbaa004a721df9f09b7b18d5ff409e748995c568c32115b22` |
| 89 | `def` | [unitOfCoprime](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/unitofcoprime.md) | 692 | `declaration-track:5e94300796cae6df3a722720a934b6e35ef0923551d97e316f26e657c0b7b12a` |
| 90 | `theorem` | [coe_unitOfCoprime](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/coe-unitofcoprime.md) | 697 | `result-track:9d1b798fae83db911acda9b5d5c86a004e35d4555e46c0c1c8fd6ec22ee0c357` |
| 91 | `theorem` | [val_coe_unit_coprime](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-coe-unit-coprime.md) | 702 | `result-track:f7e70237653d2cde760c5efdb4571728fd10915f1136f1fef2b1ceddd7f8efba` |
| 92 | `theorem` | [inv_coe_unit](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/inv-coe-unit.md) | 714 | `result-track:574290a9c49b9c42eee090c25d3d2816953638f5fcffbf60d86ae9225197f388` |
| 93 | `theorem` | [mul_inv_of_unit](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/mul-inv-of-unit.md) | 725 | `result-track:5c8b84f32e9d579f3290b537e786b820051163d2d30889e3681fc4df940e6c5e` |
| 94 | `theorem` | [inv_mul_of_unit](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/inv-mul-of-unit.md) | 730 | `result-track:dbc66316dcb57efc72f1c3601f540f5cd7bb8b8970c5bb42f544e0bfccce93d2` |
| 95 | `def` | [unitsEquivCoprime](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/unitsequivcoprime.md) | 737 | `declaration-track:c90c43767d7dbf9c5a2df7733d1e9cc8eb70ecb0eb7353ab7fd291257f326ab0` |
| 96 | `def` | [chineseRemainder](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/chineseremainder.md) | 751 | `declaration-track:961d56d29396b8dc2df2c37ee1c751625c0b7702622c9a2b790c15c7bbdece64` |
| 97 | `instance` | [subsingleton_units](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/subsingleton-units.md) | 795 | `declaration-track:834fa4612af004bd9a9b741c0969b8c889d4d79ee5e20986edcd8cc5eee1e9eb` |
| 98 | `theorem` | [add_self_eq_zero_iff_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/add-self-eq-zero-iff-eq-zero.md) | 800 | `result-track:dc4a519fd848afcda4b00c74674d9351de3282536366fd15b4958e382d5619ee` |
| 99 | `theorem` | [ne_neg_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ne-neg-self.md) | 805 | `result-track:58e0276aa3b6ab3673ce986f8a0f9c328b5b33bbbd3afc7c4a3c50edbe00bc79` |
| 100 | `theorem` | [neg_one_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/neg-one-ne-one.md) | 809 | `result-track:90004360b56bb7abf133027700bc80e3fba5e1514ad5c073677ddbc5b38638a5` |
| 101 | `theorem` | [neg_eq_self_mod_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/neg-eq-self-mod-two.md) | 813 | `result-track:303fa168525de9002280ad878aec0269b1210c516f133d4571ca0e6e112de26a` |
| 102 | `theorem` | [natAbs_mod_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/natabs-mod-two.md) | 818 | `result-track:d6d42745575bebb4f3778d55c8fbcf498af15e1a73b53b231b9dcfb79f0e5a32` |
| 103 | `theorem` | [val_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-eq-zero.md) | 825 | `result-track:2a7849a10b08e3041932fea6da8a660008e8e70183f66fd0aed056d5fcfd63dd` |
| 104 | `theorem` | [neg_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/neg-eq-self-iff.md) | 832 | `result-track:53fb7d53d27996174af7b66bbda101347a2d157af2a44e932c51b6bfe694efdc` |
| 105 | `theorem` | [val_cast_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-cast-of-lt.md) | 860 | `result-track:ce4094017fc2b3013a04b501da6bd64be9a1ddbdaa1fbe230346f1cade54d419` |
| 106 | `theorem` | [neg_val'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/neg-val-source-edition-2.md) | 864 | `result-track:8a36eeba306107b93d446c418c5d18b524c9e88e7d516cb83019070c9927f8ca` |
| 107 | `theorem` | [neg_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/neg-val.md) | 874 | `result-track:70e4032072029ef6c2ea2fd49dd0be65e6993d3f738657e8afb5ca54c1c89564` |
| 108 | `def` | [valMinAbs](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs.md) | 886 | `declaration-track:77044703bcff6733a018a7174fcc7ef96e668c2b0b77b3e229953ba0d5fb20f8` |
| 109 | `theorem` | [valMinAbs_def_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-def-zero.md) | 892 | `result-track:34729f1a5b7f2175c50c47f10eea813ebecabc98b35576c09655ef282fe425f7` |
| 110 | `theorem` | [valMinAbs_def_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-def-pos.md) | 896 | `result-track:2454d95ebd9de8fe3cd153714f0298ca8500063a806fa4b160af9c679a114f4d` |
| 111 | `theorem` | [coe_valMinAbs](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/coe-valminabs.md) | 904 | `result-track:b197a5b2dcb5d944530aeffd0d5f85048b6f2a801c7bba0fa7d24b6a99061d7e` |
| 112 | `theorem` | [injective_valMinAbs](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/injective-valminabs.md) | 913 | `result-track:be8b181dec31be25d14f22700a254b4c7932bf80c5a03a4e2e5cfbebb7403576` |
| 113 | `theorem` | [ZMod Basic Namespaced Val Nat Cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/le-div-two-iff-mul-two-le.md) | 917 | `result-track:d780e5fc435c52c61bee0fcdb0fbc78fd4c4ed890080ea7966a47152a1586c1f` |
| 114 | `theorem` | [valMinAbs_nonneg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-nonneg-iff.md) | 921 | `result-track:092260892dedb6bfc51d2a46aeacd47f3bf79b0ba25f9bdeb8a619017ec3444c` |
| 115 | `theorem` | [valMinAbs_mul_two_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-mul-two-eq-iff.md) | 927 | `result-track:5b91c351f5c5bc59adb16a02eca22cf9f49f66e46bf22b130bd612e4ab29ca4e` |
| 116 | `theorem` | [valMinAbs_mem_Ioc](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-mem-ioc.md) | 941 | `result-track:157ec7eb1a806cfa03b642757c9cb46dfa8437c6fe3b7b6d5afec3a1e5f09c89` |
| 117 | `theorem` | [valMinAbs_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-spec.md) | 952 | `result-track:bec55517cc2ccd0f456d879f4f5b858a2e89b8428868ec0f1d3a26eec588ec3a` |
| 118 | `theorem` | [natAbs_valMinAbs_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/natabs-valminabs-le.md) | 967 | `result-track:135130a392e007a51f583345b13890932d45aa17f89b444ee20ea50aef5c9ded` |
| 119 | `theorem` | [valMinAbs_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-zero.md) | 977 | `result-track:d4c765ac8a104382912f813839f8f492b079f5af28eaf8cb31c9ae45416adebf` |
| 120 | `theorem` | [valMinAbs_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-eq-zero.md) | 983 | `result-track:144936b19bc06127d33d251784f42b598ca593ea6544c8230b5194a431ea424a` |
| 121 | `theorem` | [nat_cast_natAbs_valMinAbs](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/nat-cast-natabs-valminabs.md) | 990 | `result-track:0e55bf23a13e3c609cb94be672c251c41696a9e78db1d645268733573cb2c2b4` |
| 122 | `theorem` | [valMinAbs_neg_of_ne_half](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-neg-of-ne-half.md) | 1002 | `result-track:9de1839c5ade5ecd6cbb3bd823e4c9a5e3cf80d847bbcd3208e83278e722176a` |
| 123 | `theorem` | [natAbs_valMinAbs_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/natabs-valminabs-neg.md) | 1015 | `result-track:4f242963534e754aaaa4f3675e985a5fcf0571e6c3866d82b081ecc082f4c317` |
| 124 | `theorem` | [val_eq_ite_valMinAbs](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/val-eq-ite-valminabs.md) | 1021 | `result-track:5156d3912cc9aefd98171058de8530e6a01bea463c9e5272d1a35ad02adbc3c6` |
| 125 | `theorem` | [prime_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/prime-ne-zero.md) | 1027 | `result-track:b5e0003ffe2a843c004c8b402c33e50bb6c9849c6329228d0f5a04c96b07131c` |
| 126 | `theorem` | [valMinAbs_natAbs_eq_min](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-natabs-eq-min.md) | 1035 | `result-track:7b9e92d9aaa7ebc144497cfb6287dd5a08c50f8a80894df19c1b1b7aed9fad59` |
| 127 | `theorem` | [valMinAbs_natCast_of_le_half](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-natcast-of-le-half.md) | 1054 | `result-track:fe9c69c7bf54d6accfb7cb01e78ed267df2504eebb6164358e45b288038c842d` |
| 128 | `theorem` | [valMinAbs_natCast_of_half_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-natcast-of-half-lt.md) | 1061 | `result-track:7c7d0dbdc928f45e6330434807c849b6c9b49122f2c0ca8c0d65681abe73da24` |
| 129 | `theorem` | [valMinAbs_natCast_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/valminabs-natcast-eq-self.md) | 1070 | `result-track:3058a033318c03f77129f4e24104a04184b1a752aa7d0ee375ee771b85ba7801` |
| 130 | `theorem` | [natAbs_min_of_le_div_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/natabs-min-of-le-div-two.md) | 1076 | `result-track:00cf544a9800b0602f0dcac5c96d42e905de9782acff077b0c29b40d7ae7851e` |
| 131 | `theorem` | [natAbs_valMinAbs_add_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/natabs-valminabs-add-le.md) | 1092 | `result-track:f77ce8270c97da1383595abfc8429e84ca3649ace8a8683d83d9aa487662d275` |
| 132 | `theorem` | [mul_inv_cancel_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/mul-inv-cancel-aux.md) | 1103 | `result-track:578d88bdab97f863ec971e0bf3b8b8e435140f5a7a3fb1c9bea44213f5c27720` |
| 133 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/instance-source-edition-2.md) | 1110 | `declaration-track:d4f06410b94d04ec189f371781301749e896ec3efc2c57388cb5a25edde4eae6` |
| 134 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/instance.md) | 1117 | `declaration-track:3a23284e46038348e8bf5c876950f6684b67ca9ba1adfd5601da57c2da729d90` |
| 135 | `theorem` | [RingHom.ext_zmod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ringhom-ext-zmod.md) | 1125 | `result-track:5681258517077f2b3c3ea0b15661863ee7cfe2b79b55d0d486f340fc3276e6df` |
| 136 | `instance` | [subsingleton_ringHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/subsingleton-ringhom.md) | 1138 | `declaration-track:fbf04fc44867fe2b9b102f794c9d770fe1d02109fd56ba44039829cb3ef300b1` |
| 137 | `instance` | [subsingleton_ringEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/subsingleton-ringequiv.md) | 1142 | `declaration-track:7f11cc523fc04fd2edb3b60a8b7b0cc1556289589c9ce3d06bf1ce3b0ffaa072` |
| 138 | `theorem` | [ringHom_map_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ringhom-map-cast.md) | 1149 | `result-track:0d845d35d7726b2b87a01dc07fb8e8b43f5bae278a9c15cb7d8a7fae785af48e` |
| 139 | `theorem` | [ringHom_rightInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ringhom-rightinverse.md) | 1156 | `result-track:52998f3219f0dcd98454098edc3839b39e3d6a9d9375cca38194e12e49e2e5a3` |
| 140 | `theorem` | [ringHom_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ringhom-surjective.md) | 1161 | `result-track:c30955859b968da3749df2f1e5ad0b39ae73abf2198407049bb17531842bc66d` |
| 141 | `theorem` | [ringHom_eq_of_ker_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/ringhom-eq-of-ker-eq.md) | 1165 | `result-track:a3444bc26643fb2da101926c53ac3930b25f92c00ade5fbb274b9752501f68f6` |
| 142 | `def` | [lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/lift.md) | 1178 | `declaration-track:41aabbb77b63c8d9f5e145ccea942137d1fb9b6770d4b0d5b32806a498b032d8` |
| 143 | `theorem` | [lift_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/lift-coe.md) | 1193 | `result-track:46f910d96a7f30c7bdbc08d452df0d00301d4753224ec639190d7f86f480cee4` |
| 144 | `theorem` | [lift_castAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/lift-castaddhom.md) | 1197 | `result-track:53d602aaaf0c3801cccf15491ca9e0b71439f7496d20a691150113148b310474` |
| 145 | `theorem` | [lift_comp_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/lift-comp-coe.md) | 1202 | `result-track:b5f63d136958e345980ef750ab570cfaa564965cc3bc11475a9fc902e9be1e7e` |
| 146 | `theorem` | [lift_comp_castAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModBasicNamespacedValNatCast.lean/declarations/lift-comp-castaddhom.md) | 1207 | `result-track:186f00d144107d06bd54597424e1b203ada413575bf6276c5f57b4f217793929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63d1d5a67492de5f0ba49e942c595a9396dfa90b70cd9d31356e392ed30166cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
