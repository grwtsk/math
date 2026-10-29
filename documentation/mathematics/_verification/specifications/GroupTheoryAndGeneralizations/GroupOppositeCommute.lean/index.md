# Verification target: Group Opposite Commute

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1ca2c46bce4acd3347e80df2e59c38526de1d55",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant353f2a28b5c910d53594265f3e1c2f7419209d2d9318479a2da2cea18c2b2503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1ca2c46bce4acd3347e80df2e59c38526de1d55`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant353f2a28b5c910d53594265f3e1c2f7419209d2d9318479a2da2cea18c2b2503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant353f2a28b5c910d53594265f3e1c2f7419209d2d9318479a2da2cea18c2b2503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [natCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/natcast.md) | 30 | `declaration-track:00c4b2cfa8173f50032ee2595e1ccff271ee7171c494a57cd58222c994a5910f` |
| 2 | `instance` | [intCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/intcast.md) | 34 | `declaration-track:3a93454273dd76e36fffa42cd61b8613af4079dc6040151618b2b40c77934ba1` |
| 3 | `instance` | [addSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addsemigroup.md) | 37 | `declaration-track:b767cff00116a5a19b0cbd5c9f19cda998be24859d0292b88d2d2058df0a5cde` |
| 4 | `instance` | [addLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addleftcancelsemigroup.md) | 40 | `declaration-track:5faf470abc06b20c6ef2779a9198daf6e482822fef22d6bf31abd3d8af33fac6` |
| 5 | `instance` | [addRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addrightcancelsemigroup.md) | 43 | `declaration-track:262e663e342e9bdf9a7fd027b19db6d55f6914c30e924e3fd9ce7fa724536a46` |
| 6 | `instance` | [addCommSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addcommsemigroup.md) | 46 | `declaration-track:b16a82f38a4c1798fcd81aa319671b9c720ba1fc59fc0b35aa3dd1413c469d45` |
| 7 | `instance` | [addZeroClass](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addzeroclass.md) | 49 | `declaration-track:b394e5ed46869765488ed042bd30898c5c50a65105f97bc165f7bc1138185ae6` |
| 8 | `instance` | [addMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addmonoid.md) | 52 | `declaration-track:9908f6e09dbf0263b20f59ffb551d9291ad2b350e06948b20885abc0f36e73a9` |
| 9 | `instance` | [addCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addcommmonoid.md) | 55 | `declaration-track:aed68d09433e40b6e4636ed2206681cbb22af1cde32e2aacfbe4e6d38dc6c850` |
| 10 | `instance` | [addMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addmonoidwithone.md) | 58 | `declaration-track:f39640084d8020f17fa70b47c4ac00f668f91338dd5b7f55e2415c04e8dd7ca7` |
| 11 | `instance` | [addCommMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addcommmonoidwithone.md) | 63 | `declaration-track:690ae0fc5454f854afd2bc4e450a36c89295b05e2591c62c6514f87d4e2379e7` |
| 12 | `instance` | [subNegMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/subnegmonoid.md) | 66 | `declaration-track:a3f67112090cab6e7cf8f7291971f1a5a609a9713456a74c9c9f482de20e5753` |
| 13 | `instance` | [addGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addgroup.md) | 70 | `declaration-track:d37b81af44185797524ba44ce6bf9b9107e124cbe55beb9195e004d1aa11781f` |
| 14 | `instance` | [addCommGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addcommgroup.md) | 74 | `declaration-track:f7ac3e5c228503c5f917814444b5e46f11f28abc3893673b071f2640f121c54f` |
| 15 | `instance` | [addGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addgroupwithone.md) | 78 | `declaration-track:9c10efd8ae4b572aa91da097a7d57cd6a874110f3592f2a169652c811ebaaec1` |
| 16 | `instance` | [addCommGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addcommgroupwithone-source-edition-2.md) | 85 | `declaration-track:86b9515e2c5d65bf866dd78a7c788f0a20f0867b182d2e29e15449907c2967a2` |
| 17 | `instance` | [isRightCancelMul](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/isrightcancelmul.md) | 96 | `declaration-track:91004308cdc41a48396dcfc507961a1586d207c0d60cd466d284e9769b57c0d0` |
| 18 | `instance` | [isLeftCancelMul](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/isleftcancelmul.md) | 100 | `declaration-track:17f0b5dcd5deddaedf1fd1f82e3ebaad5490c887008c099792adb16ba94baf57` |
| 19 | `instance` | [semigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/semigroup.md) | 104 | `declaration-track:0e6fdf06a082a9aa6a194ab0670b0fffee3994546f0674c5313322ab07631ef9` |
| 20 | `instance` | [leftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/leftcancelsemigroup-source-edition-2.md) | 108 | `declaration-track:e4efb2ca72c88eb04a2257bc8e9cd4bf4d668ab4b7a9c0ddd058a6365d811e7a` |
| 21 | `instance` | [rightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/rightcancelsemigroup.md) | 112 | `declaration-track:1cad85863393aa67f043c1207288c306cf65219f2b27cae1c12f41b505160785` |
| 22 | `instance` | [commSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/commsemigroup-source-edition-2.md) | 116 | `declaration-track:5be72d2e8e3b8c60015c0ba52ae93b9127dcdd3f2334948a11afd008f49d5500` |
| 23 | `instance` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/muloneclass-source-edition-2.md) | 120 | `declaration-track:b8db410ce4f97b0e5d5f2c3cc5292638b99660de4d2897e88633f5be9389467e` |
| 24 | `instance` | [monoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/monoid-source-edition-2.md) | 126 | `declaration-track:96142d7f9ac64c8df159eee14d90216e1859a1515bf67276d7ead94360375880` |
| 25 | `instance` | [leftCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/leftcancelmonoid.md) | 133 | `declaration-track:bf11a00a5b5771b70b493fd34da9a9b279c5c5442263ada7aa0661d452025bbd` |
| 26 | `instance` | [rightCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/rightcancelmonoid.md) | 137 | `declaration-track:79ead1861b69380637564abb8ce6966836b5e12c6fd4c46599df7e2b8a53a0b6` |
| 27 | `instance` | [cancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/cancelmonoid.md) | 141 | `declaration-track:7c90f57712d690c7619bb780d878ace0cf94c6efee5bc4526b0ed4fee4656a43` |
| 28 | `instance` | [commMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/commmonoid-source-edition-2.md) | 145 | `declaration-track:8a153a80894994c0c2517dbf9652b87ce48ba0955d973ecc8f01e2332730ba39` |
| 29 | `instance` | [cancelCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/cancelcommmonoid.md) | 149 | `declaration-track:d82b89174c509e12dedae7d173af442a4bc749f920043b8ae31f273384285fc4` |
| 30 | `instance` | [divInvMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/divinvmonoid-source-edition-2.md) | 153 | `declaration-track:445f6a2c60537f34b2bd9955b60c84af6bb86e8b7380e5effaa5c0912db2d676` |
| 31 | `instance` | [divisionMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/divisionmonoid.md) | 163 | `declaration-track:8f445d4ecea3c1c32c5e75c7053ae1caadf4431700e6f59dff6dd556ade6dcbc` |
| 32 | `instance` | [divisionCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/divisioncommmonoid.md) | 169 | `declaration-track:edb760c94a672886c846063ebf2633ae303c8d16662f2e8389b1d9ab0d087b89` |
| 33 | `instance` | [group](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/group.md) | 173 | `declaration-track:805983dc8ee78e4c1dfa245c29cc535de1519941131b34da1d8af2422fe8e866` |
| 34 | `instance` | [commGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/commgroup-source-edition-2.md) | 178 | `declaration-track:1e9d865d4ad805d530db840144e551c7b96272efa64a630154337a2a8db84dd6` |
| 35 | `theorem` | [op_natCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/op-natcast.md) | 183 | `result-track:69b2810b20b24057de1f4249c9cc8fed1e0c7066efb613dd081fb8aa802740f2` |
| 36 | `theorem` | [op_intCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/op-intcast.md) | 189 | `result-track:d28114b6a014b26d6b8013affce60f57fc26b9fab8edf3cf8ec76e4f7e981609` |
| 37 | `theorem` | [unop_natCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/unop-natcast.md) | 195 | `result-track:7a09d92323fb233459062729e2cc954c8711ed18662b7753e0ca853aceb54506` |
| 38 | `theorem` | [unop_intCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/unop-intcast.md) | 201 | `result-track:801a74d3782bbf34049011c3acdd32b56da3b8dacfee4fdfac48fe5c936a1fda` |
| 39 | `theorem` | [unop_div](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/unop-div.md) | 207 | `result-track:b5a8d0076d6ee073c7a8d141ce516f144bac44a458653f6301f88836d022cd8c` |
| 40 | `theorem` | [op_div](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/op-div.md) | 213 | `result-track:006efe9ef20f39ab7487f47744742afc3d4970f84ccdaa64a70f9ec2933ab9b6` |
| 41 | `theorem` | [semiconjBy_op](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/semiconjby-op.md) | 218 | `result-track:0f1cef1104ebd3d444c8ec4bb6f3baa0d432e66fde904093c5dd3c2b2c764c07` |
| 42 | `theorem` | [semiconjBy_unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/semiconjby-unop.md) | 224 | `result-track:f462b65ef8d3fef767c96a689c28e2ecc8a2019f0c47834d87368b4a1b3d59dc` |
| 43 | `theorem` | [_root_.SemiconjBy.op](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/root-semiconjby-op.md) | 233 | `result-track:35565efa028c9acffbea1559612017d9aa2efc0c5a8e1a14c2c702040b53950f` |
| 44 | `theorem` | [_root_.SemiconjBy.unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/root-semiconjby-unop.md) | 240 | `result-track:3c13bbbafd322d26cf1e2ef13e3a903bebde2d3f4d19ddb0ee0c6b43bdd7f32b` |
| 45 | `theorem` | [_root_.Commute.op](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/root-commute-op.md) | 247 | `result-track:1ca29d194402b8d628f7b15de70f0177b83acc6ba87e299017ae87c3efd10ccb` |
| 46 | `theorem` | [Commute.unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/commute-unop.md) | 253 | `result-track:3ee422a1ddb3373908674d6a411de95be571f7125bfd8bc6e7ceda5442cfde95` |
| 47 | `theorem` | [commute_op](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/commute-op.md) | 259 | `result-track:831156d397673af53f5462af1dd9c44566d6be1d6f45e3e1c53faf025790aacc` |
| 48 | `theorem` | [commute_unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/commute-unop-source-edition-2.md) | 265 | `result-track:64bc71a0d89d3a6242fafe2db8d52f63cada5018401ed931d0c450ba0f8e9734` |
| 49 | `def` | [opAddEquiv](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/opaddequiv.md) | 274 | `declaration-track:1b37ed0c75a376e788d85bdba8dcdc58266277693cbf9dc31652f7cbcc942ce0` |
| 50 | `theorem` | [opAddEquiv_toEquiv](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/opaddequiv-toequiv.md) | 281 | `result-track:42b1ef92af2d1ddc0b5f60d607312c989562955c78bec340fa1cf2520b7b23a0` |
| 51 | `instance` | [semigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/semigroup-source-edition-2.md) | 293 | `declaration-track:f7e857933f8ae24279b23ff984470a1c935b02b7c58d15599a963c786b1cc95f` |
| 52 | `instance` | [leftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/leftcancelsemigroup.md) | 296 | `declaration-track:a4589f4d85378ae4332b196e36e851fa92c78c14c3b7a5367342daa31ba86d5b` |
| 53 | `instance` | [rightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/rightcancelsemigroup-source-edition-2.md) | 299 | `declaration-track:34fe0aa93a259778966e31ad38f22d252334084a8c3068adf45b189fefa7692e` |
| 54 | `instance` | [commSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/commsemigroup.md) | 302 | `declaration-track:2bfb357585c7ecbabc0daf48d6492427b99bdbb456bd4aa0a1777ee2e3cf9ff2` |
| 55 | `instance` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/muloneclass.md) | 305 | `declaration-track:70017f6df0696e6cc755c745ca9f5985604b0ee3afc53f148e85e2ad2323b9d8` |
| 56 | `instance` | [pow](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/pow.md) | 308 | `declaration-track:4926314a74e1e6da31fb42e2bb8542e13d72f3e50967bc6d79ac1202052bdf82` |
| 57 | `theorem` | [op_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/op-pow.md) | 311 | `result-track:6869f136f465c4e0868b658eab34a2c1cfab92a8033cd9410d0f36470eb19e11` |
| 58 | `theorem` | [unop_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/unop-pow.md) | 316 | `result-track:75650b9b17438d98328fc6b7176a6d1e3608fd922593e8db8caa177631e6047d` |
| 59 | `instance` | [monoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/monoid.md) | 320 | `declaration-track:9347c38869a0773055a46db65a0688a90fa1737c91d67d13f432e3d03ab05fad` |
| 60 | `instance` | [commMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/commmonoid.md) | 323 | `declaration-track:6b48cdd665aa4e4eae48c22044584621dadfeca928f9b747d7e4ae17f9e1a8ca` |
| 61 | `instance` | [divInvMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/divinvmonoid.md) | 326 | `declaration-track:2b47c2e67177212c7c1325d691c80263dfe45e8b1770e2415ae896c72b3146c5` |
| 62 | `instance` | [group](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/group-source-edition-2.md) | 330 | `declaration-track:a8038aa83e7250456fd07bd4c59e5240da7c9efbc8d338a46c6332df87ce7072` |
| 63 | `instance` | [commGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/commgroup.md) | 334 | `declaration-track:1a87e0e7522b627fa54e20e374375e30c5287da6d891555cd5bbffe777c3856f` |
| 64 | `instance` | [addCommMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addcommmonoidwithone-source-edition-2.md) | 339 | `declaration-track:8c7a1f8c42380441927531a0bc143ae05f2bf288dd3d68de0f150ae3a96295a4` |
| 65 | `instance` | [addCommGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addcommgroupwithone.md) | 344 | `declaration-track:24bd412aee8e4a92b878e69184d16fd6d7587efdf85bd909955c570a0a7d0589` |
| 66 | `def` | [opMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/opmulequiv.md) | 353 | `declaration-track:3e54408969e5318e7f2782961b6cb1c7fe889f892055907c6b7d48e1f8608168` |
| 67 | `theorem` | [opMulEquiv_toEquiv](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/opmulequiv-toequiv.md) | 359 | `result-track:31b597136b06d936dcfd8fcf68c36f809137460fce7a73a07c03b9ab6bdf3f38` |
| 68 | `def` | [MulEquiv.inv'](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/mulequiv-inv.md) | 372 | `declaration-track:1f33ee8e883b10be071e4b111e1aaf1d9f0892a71c4e5a63fe1b6d7d50c84b51` |
| 69 | `def` | [MulHom.toOpposite](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/mulhom-toopposite.md) | 384 | `declaration-track:e3bcddad0530dfaa9cdef5ae6fc545e5edbf1e29b757310db15864e9e58e6525` |
| 70 | `def` | [MulHom.fromOpposite](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/mulhom-fromopposite.md) | 398 | `declaration-track:1560e662a6646509faf80d41840c731759d83250093f62b39a584507646e53ce` |
| 71 | `def` | [MonoidHom.toOpposite](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/monoidhom-toopposite.md) | 412 | `declaration-track:6337f495b73945c5393b64274182c95710eef7f3b6e42a2a97a4f489816b0a71` |
| 72 | `def` | [MonoidHom.fromOpposite](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/monoidhom-fromopposite.md) | 427 | `declaration-track:d7c83c7f03796dd4bc5643ddab1e5025dce04f6da7652847004c744cbdeb47f7` |
| 73 | `def` | [Units.opEquiv](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/units-opequiv.md) | 441 | `declaration-track:bc4d892dde7354044b6bffd01d5291568b9e1f2b71ae7ebbac685e20d9748ea6` |
| 74 | `theorem` | [Units.coe_unop_opEquiv](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/units-coe-unop-opequiv.md) | 451 | `result-track:07745c9c10659163d58446461e6f593f2d96108b46b0b14756010352007dbd43` |
| 75 | `theorem` | [Units.coe_opEquiv_symm](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/units-coe-opequiv-symm.md) | 458 | `result-track:0676d83580fe7a93d25f1eeed01e7cda6c1d7a73a15ea706c82109fd349cf9ae` |
| 76 | `theorem` | [IsUnit.op](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/isunit-op.md) | 465 | `result-track:a929fb643ecc5bbd033ba3caff36a6acda875a2dbb5540dc98f82407762848a3` |
| 77 | `theorem` | [IsUnit.unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/isunit-unop-source-edition-2.md) | 472 | `result-track:7835205d5e6ec6d8066915d9510d02c3d1b1bc97cc35d9b800119770545057c7` |
| 78 | `theorem` | [isUnit_op](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/isunit-op-source-edition-2.md) | 479 | `result-track:f6f2a51fa324000620e528449617bc813bb2c0ef78e3bb71a54ac95a38c6e606` |
| 79 | `theorem` | [isUnit_unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/isunit-unop.md) | 485 | `result-track:328eeed9c39e10e04e55bd481c9dd6a2894b56c2b12881d18168f69db7c4ee39` |
| 80 | `def` | [MulHom.op](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/mulhom-op.md) | 496 | `declaration-track:d152397364a73701ee0ec12c8799c1af903d332904383dd393beb0cd907ed035` |
| 81 | `def` | [MulHom.unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/mulhom-unop.md) | 516 | `declaration-track:2b07627fda47552354596f7cdf718fff95225653a283ba0f06744f62a1e065f8` |
| 82 | `def` | [AddHom.mulOp](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addhom-mulop.md) | 525 | `declaration-track:c5372a6fce8fcb195386feb1609d4be8b076b6b119522264ef0e1aa5d3ab2873` |
| 83 | `def` | [AddHom.mulUnop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addhom-mulunop.md) | 542 | `declaration-track:0b531ba95372fbd43f5c5438d3a623d48c6352c9960dc3372174dff9f2c740db` |
| 84 | `def` | [MonoidHom.op](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/monoidhom-op.md) | 552 | `declaration-track:cb8139b8359241ab2597a19aa661a04add1786fbb3f65cb79a2b5ef6adedc63c` |
| 85 | `def` | [MonoidHom.unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/monoidhom-unop.md) | 572 | `declaration-track:9e1b6507e2fe7eb0391f91377b90495342d0fa26f6ad456f30e055d8877a315d` |
| 86 | `def` | [MulEquiv.opOp](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/mulequiv-opop.md) | 580 | `declaration-track:5829c97228acc1d8b501d041a2bd1c140cbfe71abe6a396db7e5e5c7dcfd5bc2` |
| 87 | `def` | [AddMonoidHom.mulOp](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addmonoidhom-mulop.md) | 587 | `declaration-track:666537bd62fbd81a8d848e81a0afff44a65cc6c8a9baf495beaa703e4f72fa31` |
| 88 | `def` | [AddMonoidHom.mulUnop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addmonoidhom-mulunop.md) | 605 | `declaration-track:7084a860d4dd763e7c32f31a0ce937eca0580f17a5a580884898d21dc0848062` |
| 89 | `def` | [AddEquiv.mulOp](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addequiv-mulop.md) | 611 | `declaration-track:13e7a02cc8bf61d2417147a73cbe89cd380a6c9ecc50b79bef7af7e8349d9efc` |
| 90 | `def` | [AddEquiv.mulUnop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addequiv-mulunop.md) | 622 | `declaration-track:87866a74dd3ea8e3c50a7eebdd52f8330316384b7e28c6d75df0feea2c79c118` |
| 91 | `def` | [MulEquiv.op](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/mulequiv-op.md) | 629 | `declaration-track:cd60f277bb5b1725fb606a32e9cfa68c77c47054f470f63121615653d7bc570a` |
| 92 | `def` | [MulEquiv.unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/mulequiv-unop.md) | 656 | `declaration-track:d2fe9f9deceeed8330f08941c12f29a12e94eb68bcb865b71dbc1e41c2ec4c36` |
| 93 | `theorem` | [AddMonoidHom.mul_op_ext](../../../../GroupTheoryAndGeneralizations/GroupOppositeCommute.lean/declarations/addmonoidhom-mul-op-ext.md) | 667 | `result-track:32fac7a46424b9714f9b252d48cee47b93fe276b43f36992a7dba79f0cd09352` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc0f56162bfad14a85281837c69a2bb6729291310d90210a66fc7d6c952c9fb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variant353f2a28b5c910d53594265f3e1c2f7419209d2d9318479a2da2cea18c2b2503.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Opposite/Variant353f2a28b5c910d53594265f3e1c2f7419209d2d9318479a2da2cea18c2b2503.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
