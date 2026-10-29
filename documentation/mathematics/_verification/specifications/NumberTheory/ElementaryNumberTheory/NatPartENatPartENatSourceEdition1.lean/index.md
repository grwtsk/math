# Verification target: Nat Part ENat Part ENat Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f16c8db3ae10871f0198a555f5d6c1ef6cf2596",
  "lexical_observation_count": 150,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartENat/Variantba35efb5c8a8f7cb4730683c07520000b634498fe9dd05295cfe2dbb3699c936.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f16c8db3ae10871f0198a555f5d6c1ef6cf2596`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartENat/Variantba35efb5c8a8f7cb4730683c07520000b634498fe9dd05295cfe2dbb3699c936.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartENat/Variantba35efb5c8a8f7cb4730683c07520000b634498fe9dd05295cfe2dbb3699c936.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Part` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PartENat](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/partenat.md) | 56 | `declaration-track:c020248060dc8df455568ddb5a30724637c5d848ce5bb2fc22ac6674d4560f3e` |
| 2 | `def` | [some](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/some.md) | 65 | `declaration-track:24ab428f16bbfc367dba574db6af2101e75cc8c00c8be78944e3bef7d3a44842` |
| 3 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-8.md) | 68 | `declaration-track:766d95f706b2df1d6310d04dec05a077e307e6050624fee8b4dd61bc22c709be` |
| 4 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:0e7b62d1e85de8730783452edbea0c0c4b0010b8d2c6b7e22515ae4a2d3c2dad` |
| 5 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-12.md) | 74 | `declaration-track:a284c42e200155068b17bb674638e28ebb8c9616139cafbaf6ad36d0302edf5f` |
| 6 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-6.md) | 77 | `declaration-track:333abbe870f8a54029c32f0c67612f9ff3597fe35ef4a0341147d23282038d87` |
| 7 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-14.md) | 80 | `declaration-track:ad2f80ef5d133f81ee0c1c9f603d3c2dea1cec2101ff67b3b6890616f75faa49` |
| 8 | `theorem` | [dom_some](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/dom-some.md) | 84 | `result-track:f1c777e3e0decd53fbdcf518afca88257514186d643823f0d4113a6c4a4d0b5d` |
| 9 | `instance` | [addCommMonoid](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/addcommmonoid.md) | 87 | `declaration-track:accc139c86c2924f060b8ddff17e85bd9e227ee98eb5b1ab21bdc127f79fdfef` |
| 10 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-10.md) | 96 | `declaration-track:895349489b1d2f1ca611bd51208b573cf2499c2dbb13b2da1f0a2a543e35d183` |
| 11 | `theorem` | [some_eq_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/some-eq-natcast.md) | 103 | `result-track:abf8f47ccb8807c930375941f8364acb68258fe48f2d3e36dbe65b140f066903` |
| 12 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-5.md) | 106 | `declaration-track:26d300c6c78141d2031dc9783cad25afe9eb88026a6a6afc886c4c3bb1170f51` |
| 13 | `theorem` | [natCast_inj](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/natcast-inj.md) | 110 | `result-track:fa8e68e901c36f8d7d9ffdaf921e94653360e1e4b12c00a12994515d40fda535` |
| 14 | `theorem` | [dom_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/dom-natcast.md) | 114 | `result-track:b153bc1da36817fbfcb5bfe82679a22f9de46e50a3137917fc601f1944faa58f` |
| 15 | `theorem` | [dom_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/dom-ofnat.md) | 118 | `result-track:d73ac72737044492d5804b39a558e9fe101375a665eb152ded000a28552e7dde` |
| 16 | `theorem` | [dom_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/dom-zero.md) | 122 | `result-track:6518cfec46ee8086299dbf3d80d6019e79b2cf15bf912af45a6f1fb28a78f139` |
| 17 | `theorem` | [dom_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/dom-one.md) | 126 | `result-track:263524265b5642a7f42d45d1980cecdaf125d88183c8ba6025b382271d1d6357` |
| 18 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-18.md) | 129 | `declaration-track:e21a4d413b843447fda526e41d2b5122503113e214c8dfac118b4c594275bb4d` |
| 19 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-4.md) | 132 | `declaration-track:23360420271ab17b8dfa4a354eee09d2313a7d3c377df826c808a9ffe83278b0` |
| 20 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-9.md) | 135 | `declaration-track:86d504ccec9b39dec89510f8c855adcef44c47edcb967b75a1503b89551e7404` |
| 21 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-7.md) | 138 | `declaration-track:68c4d55344bd240810467b4c9947432e285fd242066102de0d52e44a405ee87a` |
| 22 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-13.md) | 141 | `declaration-track:a3e317a2f875359ead0fc1e81ccce99088d3d8aba75c70621de312df8fb083f7` |
| 23 | `theorem` | [le_def](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/le-def.md) | 144 | `result-track:0608335132d9514758346189a3f4c654ededfb1e3065e01c2191fbc52d42145b` |
| 24 | `theorem` | [casesOn'](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/caseson-source-edition-2.md) | 149 | `result-track:9b211ff1adcea9c3a60464a4193f0ea4a40815fbd7c10c6810eb4602fdaa616c` |
| 25 | `theorem` | [casesOn](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/caseson.md) | 154 | `result-track:518d31cde9b8da9ac951960db25a85d334a4a4b5e0ad81ba1e0d78f4a7c7d851` |
| 26 | `theorem` | [top_add](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/top-add.md) | 158 | `result-track:d6a5e6a353ae7be140d3142447561f99a00f49b721d324d9e4b33571ab7e3403` |
| 27 | `theorem` | [add_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/add-top.md) | 162 | `result-track:618b9bb8ad633ee28f577b1e1520db34eaa883d7850ed1680394594750f026d7` |
| 28 | `theorem` | [natCast_get](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/natcast-get.md) | 165 | `result-track:f5aa0d89eeecf553b0e34cae2af457ec221082fcaa4cf5ee3bc333c36a0478b6` |
| 29 | `theorem` | [get_natCast'](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/get-natcast-source-edition-2.md) | 169 | `result-track:a826645f5e6d13925ca46de4f3a8109ed8fa97006fa6c184afe510d062eb674d` |
| 30 | `theorem` | [get_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/get-natcast.md) | 172 | `result-track:75260946853ec8d17185a917ec71263f76697f1212eb2863c3d870a078e50772` |
| 31 | `theorem` | [coe_add_get](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/coe-add-get.md) | 175 | `result-track:2c37db741269775f745de2465878b13fbfe2276171f18759ad1be0eca42d0215` |
| 32 | `theorem` | [get_add](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/get-add.md) | 180 | `result-track:8952c30813074c4a305f7c109959cf5ab6f6847fcc99e97ee57584ae0e8550cb` |
| 33 | `theorem` | [get_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/get-zero.md) | 184 | `result-track:79230eb67b1d5ebcef5f716c321cad9378f3082fa9cb77f22d0a608e467b5032` |
| 34 | `theorem` | [get_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/get-one.md) | 188 | `result-track:24df10033a8203ff26dca762802db354c146f3ac399e74c6de8e6b1ee80f45c9` |
| 35 | `theorem` | [get_ofNat'](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/get-ofnat.md) | 192 | `result-track:ffd860ecf4f838ac5d75b2ae3ec5d3e839de16a762597bc30d45fea30756b2a9` |
| 36 | `theorem` | [get_eq_iff_eq_some](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/get-eq-iff-eq-some.md) | 196 | `result-track:a3e286cccf41056f8e259b05d29e1931e16464cc5064157f0540ace4314167df` |
| 37 | `theorem` | [get_eq_iff_eq_coe](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/get-eq-iff-eq-coe.md) | 199 | `result-track:0086e5fbf1ba1f3d312b820bb3afdfa9989a39804a97f17fc9c3005c124c3a5e` |
| 38 | `theorem` | [dom_of_le_of_dom](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/dom-of-le-of-dom.md) | 203 | `result-track:ddb004244d64bfaf9dfd9c0dd830d357425e2336c255d21d357674ee5e7d6d69` |
| 39 | `theorem` | [dom_of_le_some](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/dom-of-le-some.md) | 205 | `result-track:85828b8a54123bba0aebbac9d463efb6d3503dc8228870ae3e490ba34e2d7b84` |
| 40 | `theorem` | [dom_of_le_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/dom-of-le-natcast.md) | 208 | `result-track:40164f21b9e9d9e23e7a53b4088015285a239967170492866fcd69aac79d2cd4` |
| 41 | `instance` | [decidableLe](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/decidablele.md) | 211 | `declaration-track:97d255ee9daf53e29477f1b90005b0487cf9403466c721d1ecc30764187320c6` |
| 42 | `instance` | [partialOrder](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/partialorder.md) | 218 | `declaration-track:9697a313fc32ca075b21762df88a33a153ebd6c3877e3d52056e39e0dcab7458` |
| 43 | `theorem` | [lt_def](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lt-def.md) | 227 | `result-track:6fc3d1fa503cf4c7df0ab3f1fec37a8d3dec80af3ec7f13d375babb9661b1e55` |
| 44 | `instance` | [isOrderedAddMonoid](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/isorderedaddmonoid.md) | 247 | `declaration-track:0a32983997d3f00ae62f818fb76f79c244d215f1b7e0e9ec2ac09361e7cc9ae4` |
| 45 | `instance` | [semilatticeSup](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/semilatticesup.md) | 253 | `declaration-track:226225812140d07448d052f89c10645467abd4edf18f8ad5a9eefaf88b879354` |
| 46 | `instance` | [orderBot](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/orderbot.md) | 261 | `declaration-track:5f6577d34fe24e2bfc3d3211be572a467cd4322061a07d8be4b7bc3b719fd92d` |
| 47 | `instance` | [orderTop](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ordertop.md) | 265 | `declaration-track:71446dd6318651a5c5e6faf37123f0e28ea14620bbd664679a828ae8ccef28cf` |
| 48 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-3.md) | 269 | `declaration-track:123fa00695d2355f9797f6b2575afbd56bd06682b1701974001b664c5efb44e2` |
| 49 | `theorem` | [coe_le_coe](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/coe-le-coe.md) | 273 | `result-track:a9c2bfe61c25b3ac399aae7ad0b5fc8eb8ddc00261bcaf04c872ba650ab67916` |
| 50 | `theorem` | [coe_lt_coe](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/coe-lt-coe.md) | 276 | `result-track:2a4589a82e12614406406565181fba5d93ef622bd477b908abc90c500bd5e2a1` |
| 51 | `theorem` | [get_le_get](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/get-le-get.md) | 279 | `result-track:cfd6323b0c048ced8ad9d27093ac2c8dabe1bfae2a0b7693c6f569c1fb2b72ae` |
| 52 | `theorem` | [le_coe_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/le-coe-iff.md) | 284 | `result-track:e12ff77329419c57b6f0222cb3744a9feb287971c467210494463577bb065555` |
| 53 | `theorem` | [lt_coe_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lt-coe-iff.md) | 288 | `result-track:3257b7bb64cffef78940582df606ca2a74a43084bdaf07b25fe42b924bcc3d75` |
| 54 | `theorem` | [coe_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/coe-le-iff.md) | 291 | `result-track:c192f5b7af52e8cece4f098930da00c8de2f90b6a510a15ae9121ba822f2b3f0` |
| 55 | `theorem` | [coe_lt_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/coe-lt-iff.md) | 296 | `result-track:17986de3e46a0b246d8c8bd42a1d57f9ca4c1d75b7e32d04716b930f9054ef32` |
| 56 | `theorem` | [eq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/eq-zero-iff.md) | 301 | `result-track:d6ade2ecf9894f3b7567782c70d729c8ceca572385b305d21d946cddcbde2b7a` |
| 57 | `theorem` | [ne_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ne-zero-iff.md) | 304 | `result-track:519f61f6c69508600c2c3194225077dd02b978ec50887595a2fcfde2f4dc4111` |
| 58 | `theorem` | [dom_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/dom-of-lt.md) | 307 | `result-track:4054ae2b29ee946e4e46916cd5a1d914fd8f30fd2651378568a6c2cc0322a74f` |
| 59 | `theorem` | [top_eq_none](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/top-eq-none.md) | 310 | `result-track:90cee915a8f784dd823039860ad031725fc881210b4b8cdff24bf0402e5aa314` |
| 60 | `theorem` | [natCast_lt_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/natcast-lt-top.md) | 314 | `result-track:f4805a0ad19cc1fd482118f4b4b95105034f211438b52eea8ff597bc598799e2` |
| 61 | `theorem` | [zero_lt_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/zero-lt-top.md) | 318 | `result-track:b365edcb2da9921936210d1ce6a95927d713315ed38d9609ca01bd6b96ceafb1` |
| 62 | `theorem` | [one_lt_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/one-lt-top.md) | 322 | `result-track:2878ba26c57f25094bcc7fabe0b0bbb59a158e172fd3819f530dd255a23ebedb` |
| 63 | `theorem` | [ofNat_lt_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofnat-lt-top.md) | 326 | `result-track:cfa456096a7318fd34e8bc2e4cdf14eda0eb4cd63b461f9e2fc0dc1ee66facf4` |
| 64 | `theorem` | [natCast_ne_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/natcast-ne-top.md) | 330 | `result-track:a65bfa093dc26542670d5946a36ea8a3b2132855bf4e97599da593ae114a6c45` |
| 65 | `theorem` | [zero_ne_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/zero-ne-top.md) | 334 | `result-track:4af2dfc9ced0bccb5d89cf757716766a3a39a706043d58e4a0faee8851dc5ed5` |
| 66 | `theorem` | [one_ne_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/one-ne-top.md) | 338 | `result-track:712a9bd375521578b863de15d732bc27619f3421746e77816f5e24094a24b834` |
| 67 | `theorem` | [ofNat_ne_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofnat-ne-top.md) | 342 | `result-track:71d50ae9e780b532eecbd2c2b0c956e3e005dab3a14a810bbf4bf729c54e2a6c` |
| 68 | `theorem` | [not_isMax_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/not-ismax-natcast.md) | 345 | `result-track:fe567d241da18435e3b5cbfa7182dc1b2a91d580a8e68162a07811b9ec5de5c1` |
| 69 | `theorem` | [ne_top_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ne-top-iff.md) | 348 | `result-track:003665db1bf5f7dc7df0444ab0e100d4af9a428e98c1ff3e20062e08ab0aecc4` |
| 70 | `theorem` | [ne_top_iff_dom](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ne-top-iff-dom.md) | 351 | `result-track:f73f0d820e87d3e7e919c38fee97f80cb73a918a3e8bba1eff579ef362594578` |
| 71 | `theorem` | [not_dom_iff_eq_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/not-dom-iff-eq-top.md) | 354 | `result-track:ace21e376401ff200e235149d2fb214ca75067ce9db180d4bd83c081c1fb928c` |
| 72 | `theorem` | [ne_top_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ne-top-of-lt.md) | 357 | `result-track:a4449e3874946db38b3872d5807e09bda0fa40f70323e305477605355fb9c225` |
| 73 | `theorem` | [eq_top_iff_forall_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/eq-top-iff-forall-lt.md) | 360 | `result-track:6485ba28b31856d7f43f7af79dc9a244c017fba0ddfc30bb96312305c611e0d0` |
| 74 | `theorem` | [eq_top_iff_forall_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/eq-top-iff-forall-le.md) | 369 | `result-track:f71ce454546b6aa74f379ab4e105d8dc02898c3ac3098b401c5c4a5212feae35` |
| 75 | `theorem` | [pos_iff_one_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/pos-iff-one-le.md) | 373 | `result-track:6dd88869285c112c5f84fd0f21fab892238fb21ccc1655fd402b28f8d4f02202` |
| 76 | `instance` | [isTotal](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/istotal.md) | 380 | `declaration-track:ecfc1d86ae1059a90cb967380b24009da1d246fa1b3541d5f7991c15695253f8` |
| 77 | `instance` | [linearOrder](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/linearorder.md) | 386 | `declaration-track:08b2febf2dc8224743e68880cc2496d2eb5531e97b6a234c1e5509476ef98280` |
| 78 | `instance` | [boundedOrder](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/boundedorder.md) | 393 | `declaration-track:1967735475523a13b558f461b17b368ee76625cda57d0a04b19ff42eb22e1216` |
| 79 | `instance` | [lattice](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lattice.md) | 396 | `declaration-track:db07b697e9e2e5a234e3df7963d3efdaf1eccd23af3824ef947181bd73589f4c` |
| 80 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-11.md) | 403 | `declaration-track:9e2fd9433b24ca3c30fd1a491eebf30079cfe1638fa7cc16b34666efbd35480e` |
| 81 | `theorem` | [eq_natCast_sub_of_add_eq_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/eq-natcast-sub-of-add-eq-natcast.md) | 414 | `result-track:691e1e42c953034b6fac4a5a41e9a2bf54d019b190a2b0d8418968da8757974a` |
| 82 | `theorem` | [add_lt_add_right](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/add-lt-add-right.md) | 421 | `result-track:27eb1953742ae8fbd5fa6440c791b1ef9e381597cdd05f5ddba7211a59801c9f` |
| 83 | `theorem` | [add_lt_add_iff_right](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/add-lt-add-iff-right.md) | 430 | `result-track:6fc94315331dde49ccce5de78bf63efcee76e3870eada0dede377c919cbfbdd6` |
| 84 | `theorem` | [add_lt_add_iff_left](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/add-lt-add-iff-left.md) | 433 | `result-track:dae40cc2ca98c869b396d3f95ce96b5b9b02e3742dbeba169b5a7be3b4cc221f` |
| 85 | `theorem` | [lt_add_iff_pos_right](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lt-add-iff-pos-right.md) | 436 | `result-track:6f561217ad5f79ba3cf7b95bbfb8acc20f0a1ddf52f94bcc0094c36481e41bbf` |
| 86 | `theorem` | [lt_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lt-add-one.md) | 440 | `result-track:888688a2407c6af4d5b1d7bc6ae07a48b36f97ca095a949799c3fd1784672461` |
| 87 | `theorem` | [le_of_lt_add_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/le-of-lt-add-one.md) | 444 | `result-track:1db78308ab41373812c7f3bce1f644cd4d88062a878bd56d7db67d6c117a71ec` |
| 88 | `theorem` | [add_one_le_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/add-one-le-of-lt.md) | 450 | `result-track:480b52a6ee18c63de7e29db3687bff36ed103be649a42f9feadf275fffa1fa59` |
| 89 | `theorem` | [add_one_le_iff_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/add-one-le-iff-lt.md) | 456 | `result-track:d37596a7065c78681d38ed6d30c5eb3ec2a3d1f20f0d9a4c89096761120a764c` |
| 90 | `theorem` | [coe_succ_le_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/coe-succ-le-iff.md) | 463 | `result-track:fde202c6b3e58be35ab472ca02a3007482f04dc041400c759677379530a9dccf` |
| 91 | `theorem` | [lt_add_one_iff_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lt-add-one-iff-lt.md) | 466 | `result-track:ae9278333002150a94aa13c29a0c9e220d10a962d0167cf1da909bb0100e0c16` |
| 92 | `lemma` | [lt_coe_succ_iff_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lt-coe-succ-iff-le.md) | 474 | `result-track:68f1d01ddf2078ec1990efbfd2d5b662c3d1ef3648f8a0bc3c89499bbfb0f2c7` |
| 93 | `theorem` | [add_eq_top_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/add-eq-top-iff.md) | 477 | `result-track:4c611a2cce267df90dffa7fd41e7c6ccc622f5138a7a15b9f198d3bf8f5219be` |
| 94 | `theorem` | [add_right_cancel_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/add-right-cancel-iff.md) | 483 | `result-track:92a987014fc91321e49db3f4617cfb6ea32761a2a67c6696897730380c759e27` |
| 95 | `theorem` | [add_left_cancel_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/add-left-cancel-iff.md) | 490 | `result-track:cb7276b26bdf8a6cb6375a30754a7313e56ef40f858aafce8157b003c29f128e` |
| 96 | `def` | [toWithTop](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop.md) | 496 | `declaration-track:57f0fef08288486c90f2e748c59eae4ac684c29a5a23ae6b97401ec7898f813a` |
| 97 | `theorem` | [toWithTop_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-top-source-edition-2.md) | 499 | `result-track:f82fcba63aa43a0d1e1ec19eb0f6ac6ce747bdb0aef2996f6574114daa2ed1e8` |
| 98 | `theorem` | [toWithTop_top'](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-top.md) | 505 | `result-track:5191cb904dad50c76ae4b3960d7efb658f22bf1bcac04e80f0d4a8e0d98e5b79` |
| 99 | `theorem` | [toWithTop_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-zero-source-edition-2.md) | 508 | `result-track:74de954e752b7d5c3e43f7ed34422b048330da1e6560a5c0e5837c40fc9ffee4` |
| 100 | `theorem` | [toWithTop_zero'](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-zero.md) | 514 | `result-track:189ee7ab83001d3e9a91880db89720de1e2ff0a4f467dbc1e1ef52640bc69ff1` |
| 101 | `theorem` | [toWithTop_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-one.md) | 517 | `result-track:1209262acde94aa476d98efb5ab0a55e9811892fbbaa1c83ae340118efc5c733` |
| 102 | `theorem` | [toWithTop_one'](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-one-source-edition-2.md) | 523 | `result-track:1b4e507d5cf53f5dbebd07a0fe9d3399f49b3f8ca41c2c964e3189dacb7a4a49` |
| 103 | `theorem` | [toWithTop_some](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-some.md) | 526 | `result-track:d7dfd08bd14f9fce55da5dcedf6fb2068b837030fb0719c5a66c1f373835e405` |
| 104 | `theorem` | [toWithTop_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-natcast.md) | 529 | `result-track:b088a00317a7abd8ca1b29e52647e6c1a6d1ad0b5e861126fc104bece5b6cccf` |
| 105 | `theorem` | [toWithTop_natCast'](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-natcast-source-edition-2.md) | 534 | `result-track:d97911490aff9f9cc27302b964021aacd39c6f463a1e9123dfebece05d7bbf38` |
| 106 | `theorem` | [toWithTop_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-ofnat.md) | 539 | `result-track:91ea350261f0d18ad39ccee0973acc6ee44e696b5ca8bd0ab1a1a81be66995ae` |
| 107 | `theorem` | [toWithTop_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-le.md) | 543 | `result-track:fc2951ec127aaf79d565021ee9ff12d7dd81339d02f74f74063273a702a88ec1` |
| 108 | `theorem` | [toWithTop_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-lt.md) | 552 | `result-track:70c84b6282fc2aad440a45821399b05e10b3b67a9e254db19cb659f4fd4322be` |
| 109 | `def` | [ofENat](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofenat.md) | 560 | `declaration-track:d462bc7ddaf0a2c37733192717da9d6da7e455c7d1645de382de8ebf86ce1863` |
| 110 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-17.md) | 565 | `declaration-track:e07bfb3d50ff92837d1f2b130d97aefcb0d75d470baa8ab21fd6cc62b9cb4d25` |
| 111 | `example` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/example.md) | 567 | `declaration-track:a8afcf32011dde900756d554bb782f2f7959c5d8cc218255328bbbd9c9a5cc1c` |
| 112 | `lemma` | [ofENat_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofenat-top.md) | 570 | `result-track:ee58f260517d620561dbe7be2e2e343bd0162da04f896f0024396052ca6a0df0` |
| 113 | `lemma` | [ofENat_coe](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofenat-coe.md) | 573 | `result-track:b494bff8380eb54bd56b61d40d4e5e514370b5af752111015bd99dc9cc2aeb01` |
| 114 | `theorem` | [ofENat_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofenat-zero.md) | 576 | `result-track:d3707d2e0b0c3c457723bf7716bb350c91bc239719a12497316e81c2e2abfd96` |
| 115 | `theorem` | [ofENat_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofenat-one.md) | 579 | `result-track:26a29c88c17a599c829d34832e40957016fdd8d948866d48ef43a00abfc846f7` |
| 116 | `theorem` | [ofENat_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofenat-ofnat.md) | 582 | `result-track:1f9f1a8b6c72e5cb0c449e6cd51a6e0d91f69a52625adf400db2f91e6807fc15` |
| 117 | `theorem` | [toWithTop_ofENat](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-ofenat.md) | 586 | `result-track:34e8df9628f8529cb9b5c80a1c0b334dafbd0094116c7a0f20daab5c8a53fb24` |
| 118 | `theorem` | [ofENat_toWithTop](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofenat-towithtop.md) | 592 | `result-track:4d365979b59a9565f37d1162bc0d71aa01a109c81d4afa311b42557af4d3b460` |
| 119 | `theorem` | [ofENat_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofenat-le.md) | 596 | `result-track:c9b7a443dc6db3cc54a2b7c71de2e6db35db79945b2ae7cf4cd10168e9b4a188` |
| 120 | `theorem` | [ofENat_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/ofenat-lt.md) | 601 | `result-track:048be14e12b9f8b8ba0d65048c1d2cb45f7ff91cac660b529f2568444d0606c8` |
| 121 | `theorem` | [toWithTop_add](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/towithtop-add.md) | 609 | `result-track:61cf5bf5d486c67277890f6bb93879bb4149130688e812a2d0e3a78f70766c0c` |
| 122 | `def` | [withTopEquiv](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv.md) | 617 | `declaration-track:e94570476ad784c484472fd9a34da5e43eb33038a4d0e6ee9a2505d41f58ee90` |
| 123 | `theorem` | [withTopEquiv_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-top.md) | 623 | `result-track:c3054b208c64cb69b0139975bcb6221e24af997c7600bea8b142290e20ba9932` |
| 124 | `theorem` | [withTopEquiv_natCast](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-natcast.md) | 626 | `result-track:2a1aa286f59d01d52ce5fc77e885ef5d5e98c7525907368bd8710b7058e8bfd4` |
| 125 | `theorem` | [withTopEquiv_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-zero.md) | 629 | `result-track:e117064febebaa3c18986f06021eb4b10d4ac966ff2ffc1f5cfb1a934ad80739` |
| 126 | `theorem` | [withTopEquiv_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-one.md) | 632 | `result-track:2b47b5aa785b175ea0b44a23ccb597ab51bec29a314c14c0b85444be8b53e060` |
| 127 | `theorem` | [withTopEquiv_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-ofnat.md) | 635 | `result-track:e8a35ff6fac84404259ccd2e4d544cd71a4f07b879741a9dbdbcaf27a2433f43` |
| 128 | `theorem` | [withTopEquiv_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-le.md) | 639 | `result-track:115743850c5a94b2d0dafb27645c7e693f868657dea5c21d705f0cf3d571c329` |
| 129 | `theorem` | [withTopEquiv_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-lt.md) | 642 | `result-track:d82173505889fb54dfc0258c3890a84363481f542316fe45b9c1daf16e1612c8` |
| 130 | `theorem` | [withTopEquiv_symm_top](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-symm-top.md) | 645 | `result-track:1c95d6e5c432e3c19967859c682a85a772fea21c5771cc54a5a8eee864387760` |
| 131 | `theorem` | [withTopEquiv_symm_coe](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-symm-coe.md) | 648 | `result-track:07e03fd1abccd11254e2b0e0530a1c579419d449ccf40355ae0c52a198376d87` |
| 132 | `theorem` | [withTopEquiv_symm_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-symm-zero.md) | 651 | `result-track:4cf7f9e7f597d035b05dd4f4a959fa53d48741f92081a4497bd5c50386952d8b` |
| 133 | `theorem` | [withTopEquiv_symm_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-symm-one.md) | 654 | `result-track:0c5d90c4f9c8b4d94bd6e0d6f6684fd189874cb7b37c4f097f520101f4c45711` |
| 134 | `theorem` | [withTopEquiv_symm_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-symm-ofnat.md) | 657 | `result-track:2b7e8b4958c702429b8469fb6b7e7fcd7ef326646ead1c973a2c469bb648a5ff` |
| 135 | `theorem` | [withTopEquiv_symm_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-symm-le.md) | 661 | `result-track:1c7344069b2d92fedcce41977ffe703045c2f331e543ff840898b7453563c34d` |
| 136 | `theorem` | [withTopEquiv_symm_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopequiv-symm-lt.md) | 664 | `result-track:805c326e6ef90a8501a5a15f932bc640aae568e5a93f8a4d227c037f3b86e06f` |
| 137 | `def` | [withTopOrderIso](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtoporderiso.md) | 668 | `declaration-track:8431f2736f2b7ff0453f8ef505ad6bb10dd2a6572ca20593680a10091efd449d` |
| 138 | `def` | [withTopAddEquiv](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/withtopaddequiv.md) | 672 | `declaration-track:e8b7e8e6e639b99f0e6bb1ef8bfb5cb37d053c54af9e9a7a573b59f9908fa0aa` |
| 139 | `theorem` | [lt_wf](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lt-wf.md) | 680 | `result-track:b9e086f8e676c6112d13ff4115b67e5f8d68bb98691aa280ce7776a0a6f2dbb2` |
| 140 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance.md) | 686 | `declaration-track:0552b9f301d2870940283d3a5f0045d267db54d218a536212d26d77da9012a00` |
| 141 | `instance` | [wellFoundedRelation](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/wellfoundedrelation.md) | 689 | `declaration-track:d2132426522f8679abcb3c8d7b79e5f0d9b09ba19b1c69343527b0264c492281` |
| 142 | `def` | [find](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/find.md) | 697 | `declaration-track:cf6c9bb98c83f10e2def0df32827d3ee13602787384e8a7a6c969cda529a559f` |
| 143 | `theorem` | [find_get](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/find-get.md) | 701 | `result-track:797db2ceefc7dc88709e8aed4d3a776fa3ca98cbbda5fbbc1a1b1070a62eb2c6` |
| 144 | `theorem` | [find_dom](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/find-dom.md) | 704 | `result-track:d4d50a305085d12ae24874ebceb16366deb742bb6ac94c8cc5d3f678c0b5fb03` |
| 145 | `theorem` | [lt_find](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lt-find.md) | 707 | `result-track:8c5d2dd6c9e488fad9e396e1bfa6bb7a65b05acd8efb9433419b28e19f343dc0` |
| 146 | `theorem` | [lt_find_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/lt-find-iff.md) | 716 | `result-track:0151c1bb70281e6c2c0ab186f3019d54830446a716c02e622741dea5283d79fe` |
| 147 | `theorem` | [find_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/find-le.md) | 726 | `result-track:3f60ed9f2fefe99a79f3501b38541b322dfa4fc3ed35061ec1e66da21afc0288` |
| 148 | `theorem` | [find_eq_top_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/find-eq-top-iff.md) | 730 | `result-track:b900a7f50fe7a3915056e8f51fca06637b29391786ff96fab97099f5f31ac51d` |
| 149 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-15.md) | 736 | `declaration-track:d12b95288cdbf0d3162d9a470f0c49c334e504f11ba8d3b612307fb9b6b4f387` |
| 150 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPartENatPartENatSourceEdition1.lean/declarations/instance-source-edition-16.md) | 740 | `declaration-track:de0677bd781191ba5bf18b5ba5d2bf86625690f81b746fb2e39805ec1b6f2344` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ecc84c8e089d14aee9096264dc722a1b6e7b0b04c848deb6897ad23c5a9e2b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartENat/Variantba35efb5c8a8f7cb4730683c07520000b634498fe9dd05295cfe2dbb3699c936.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartENat/Variantba35efb5c8a8f7cb4730683c07520000b634498fe9dd05295cfe2dbb3699c936.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
