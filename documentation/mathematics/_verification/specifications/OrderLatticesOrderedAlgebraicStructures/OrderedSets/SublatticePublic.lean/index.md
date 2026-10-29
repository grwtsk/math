# Verification target: Sublattice Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6dfe49336d4765a3ae45d81e526126dc9c1437c",
  "lexical_observation_count": 118,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant5afde769402865e8efee7b764845a54d8373c6d373517dd7d1a2cbd5c5c9d5bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6dfe49336d4765a3ae45d81e526126dc9c1437c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant5afde769402865e8efee7b764845a54d8373c6d373517dd7d1a2cbd5c5c9d5bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant5afde769402865e8efee7b764845a54d8373c6d373517dd7d1a2cbd5c5c9d5bd.lean.json)

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
| 1 | `structure` | [Sublattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/sublattice.md) | 31 | `declaration-track:8280045e3cbad70d43c1c0aad29b03ff0253822a32cf1581cb9f74820e8e4117` |
| 2 | `instance` | [instSetLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instsetlike.md) | 43 | `declaration-track:d9725b841a120115a43fe06a3dfd71ab8b8a945139997f06ac585df34c80fc90` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instance.md) | 47 | `declaration-track:1084cae1294f536a7f0344acf6cf1a86de6a42d9db9b0bfc5521848f8f13ddc6` |
| 4 | `def` | [Simps.coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/simps-coe.md) | 50 | `declaration-track:0d2dafcfd05b751dadd6f6d0a77fe4c16c4be3e02414a0ca47b7f230429d40c6` |
| 5 | `abbrev` | [ofIsSublattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/ofissublattice.md) | 55 | `declaration-track:c1494fc107d64a589d0d0c86fdb868478e0210e6bbd6d1687e46686a087e785c` |
| 6 | `lemma` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-inj.md) | 57 | `result-track:20134b6874d35258583071342d3ec887897aa0ae1fbb0282e8eba24ca47af37c` |
| 7 | `lemma` | [supClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/supclosed.md) | 59 | `result-track:b22f878fd279587a369571905b201155ffa42e31aa0553df5d36d62e4b5d250c` |
| 8 | `lemma` | [infClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/infclosed.md) | 60 | `result-track:aa2e3b3f7a6202b6c5e705e47d0de97d0ca442054cb0d8c8b9d15486fe31db54` |
| 9 | `lemma` | [sup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/sup-mem.md) | 61 | `result-track:1d58c31f76aa367368d42c6f322d2c89c91c80aad833f4a86580dc7a3a818586` |
| 10 | `lemma` | [inf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/inf-mem.md) | 62 | `result-track:259aa66fff0fa53c74a7273befe74bc4795e125758f8aca776e677f45f47cf02` |
| 11 | `lemma` | [isSublattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/issublattice.md) | 63 | `result-track:15e6de96a2c9868529cd19ad008dbd7d5fe49d5331dc868e290486bb3e743899` |
| 12 | `lemma` | [mem_carrier](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-carrier.md) | 66 | `result-track:bb567ea341568f5ee649dfb808c10eccc43d5b942ee08581c87acbc358ef534b` |
| 13 | `lemma` | [mem_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-mk.md) | 67 | `result-track:99db6798587f8ba76f287e5a544230066edd02c98f0a8ea06b08762264254dac` |
| 14 | `lemma` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-mk.md) | 68 | `result-track:044ed38cb653b415118ea9a26f4754f7b53ec7b967f8f36956d9ddf059f96a61` |
| 15 | `lemma` | [mk_le_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mk-le-mk.md) | 69 | `result-track:2e20c633014600d5a546a5207601e66e8feaf029dfabb2d7abc93e8ee24f16a2` |
| 16 | `lemma` | [mk_lt_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mk-lt-mk.md) | 71 | `result-track:ac45c7164954b3aaa7f09260dc358893c35344ce42dd7486a06e1cfef00ea6bf` |
| 17 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/copy.md) | 76 | `declaration-track:23b39b80337ff8b24617b96f51431ceb1169d9d48889153fca1af7d5ea034f88` |
| 18 | `lemma` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-copy.md) | 81 | `result-track:14846e9b919ae52e9b04eb0bdba3b5603b2c07714337aa084dda7542bbb9b115` |
| 19 | `lemma` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/copy-eq.md) | 83 | `result-track:3e7b506a69d51760f132a0444aaf677a8223d40f795b2a16e2c1ee6bd2c84e86` |
| 20 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/ext.md) | 86 | `result-track:ced98d52942e1f0c04b58bb705e56e4ec333a7bd25785b303262369bc7810f03` |
| 21 | `instance` | [instSupCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instsupcoe.md) | 89 | `declaration-track:d773969424f61d461d5ed9fa3750de3f6e019e4f2d91e3ab77ecc335ed3c7b4a` |
| 22 | `instance` | [instInfCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instinfcoe.md) | 93 | `declaration-track:fddcf8c5d4c226b68239481679cd72f3baf675ee48f6697b19dd6a28db626044` |
| 23 | `lemma` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-sup.md) | 96 | `result-track:c07fa99fea4230d5c017a0aa41393ca602bbceff5ccd11727656335991151906` |
| 24 | `lemma` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-inf-source-edition-2.md) | 97 | `result-track:f5546afd1554471bbcaa4d9d00efa164acb8190ec5b163d9fcba710b3022a36b` |
| 25 | `lemma` | [mk_sup_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mk-sup-mk.md) | 98 | `result-track:fed5e8240cb9d01f4c150eccb68de42a4c0e2014eba621ccee7169b28a5e8b11` |
| 26 | `lemma` | [mk_inf_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mk-inf-mk.md) | 100 | `result-track:46bd3029723a5e5503b208cd79565801f7020240825f01a8645618468726d308` |
| 27 | `instance` | [instLatticeCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instlatticecoe.md) | 104 | `declaration-track:ce2ead879163a65e30222aa30241ed538583c248b52d85571ba6a6c4f95b11ab` |
| 28 | `instance` | [instDistribLatticeCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instdistriblatticecoe.md) | 108 | `declaration-track:5d119ead6051a2bd31eb9560704e43018f2ca34560c961d45e4e50b196524f4a` |
| 29 | `def` | [subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/subtype.md) | 113 | `declaration-track:ec19c2e051dfbe4a93acd7f5e2dc848532a158b85f976b18f51763482555e4f4` |
| 30 | `lemma` | [coe_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-subtype.md) | 118 | `result-track:65f98c15a4a626c30d30d33ac926a7c63c2fa5d4203fcbe21be894fbf4267fb8` |
| 31 | `lemma` | [subtype_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/subtype-apply.md) | 119 | `result-track:c8c2103d65d794d991737dd03d3383516aa78362e9e79d637cedae9d6d141e48` |
| 32 | `lemma` | [subtype_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/subtype-injective.md) | 121 | `result-track:663d489c41788dec6c4c150045c743f0e5adc9f07ec67e6e20b6b8cc4feff0f8` |
| 33 | `def` | [inclusion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/inclusion.md) | 124 | `declaration-track:b3b40efda16eb034bba9ffe8cd04331231b16ebbc2314fb3be11d813fd44eec6` |
| 34 | `lemma` | [coe_inclusion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-inclusion.md) | 129 | `result-track:14f284ac475bd90b67001f8fe32e5df9df910e84a51d1969bf9532ac5a0323a7` |
| 35 | `lemma` | [inclusion_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/inclusion-apply.md) | 130 | `result-track:c495b2d93f4b33dd48ba610d5c44e33d02ccf94a307614af798566b38f7eb763` |
| 36 | `lemma` | [inclusion_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/inclusion-injective.md) | 132 | `result-track:a8f20928641f5815e28552158c5cdaa65182aaf1729c832b2a6c2f0bc04efea2` |
| 37 | `lemma` | [inclusion_rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/inclusion-rfl.md) | 134 | `result-track:55dabacd62b79aaa353264acfa175e3c355fda3a8779a5a032e7887d85286a3a` |
| 38 | `lemma` | [subtype_comp_inclusion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/subtype-comp-inclusion.md) | 135 | `result-track:3d94f96574c54a77a8173543a883011a0c5821af34e9aa7149fc82a612be0b3d` |
| 39 | `instance` | [instTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/insttop.md) | 138 | `declaration-track:b3f983cebe5cce3270bbcbc3946cd8e5d484fcbd560f7289808772a9988fba56` |
| 40 | `instance` | [instBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instbot.md) | 144 | `declaration-track:0c00daf1e88ce09f0182538856a54553565fa2b20a43743f42f5d87f9c163dbd` |
| 41 | `instance` | [instInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instinf.md) | 150 | `declaration-track:4c9b05e815aaeaec5f16f470c610c6a82e6bc6d34d14d5b0d1731c9db0f6e5dd` |
| 42 | `instance` | [instInfSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instinfset.md) | 156 | `declaration-track:76437827b4df737efd7ea1bd42a7e7536832b33442a99259ab293fa56f28ae6d` |
| 43 | `instance` | [instInhabited](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instinhabited.md) | 163 | `declaration-track:519def189e245cd010fa70d130fa8e908b3a78525aac0550188a61d0b79e55c4` |
| 44 | `def` | [topEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/topequiv.md) | 168 | `declaration-track:77e1df667b7f0b9a56e96840bd08876bf498064e60dbdc9cc55087b4cd88c0ae` |
| 45 | `lemma` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-top.md) | 172 | `result-track:1d19ed0cc6637f0a6ad54d6e437d64d3191f8bdfaebac3ed7a6171b083910759` |
| 46 | `lemma` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-bot.md) | 173 | `result-track:276e207a8f2d9a4fa00a7f74f497b85c48caf6e159092901dee0bbee1557bf2c` |
| 47 | `lemma` | [coe_inf'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-inf.md) | 174 | `result-track:981ec5aa599a9f9c2a52c2679e2652e65f39d124dd1b131beaf1702a834823e5` |
| 48 | `lemma` | [coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-sinf.md) | 175 | `result-track:01e960cd3e189e693770ec0f4743d148bd5a228def81d71598bd2e8c796dccd1` |
| 49 | `lemma` | [coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-iinf.md) | 176 | `result-track:22a0366560fde426a8f278844ebaf17772c976621a7f3d5643410a3e46a9fd29` |
| 50 | `lemma` | [coe_eq_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-eq-univ.md) | 179 | `result-track:d637286159d74eaebd7100f796e842d78e0d5cc13d621e9a70fef3b7194d6bf8` |
| 51 | `lemma` | [coe_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-eq-empty.md) | 180 | `result-track:cb9ace686c30f750cea1098e4edc8530f692216091ac4b2a57a39b6bbef06862` |
| 52 | `lemma` | [notMem_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/notmem-bot.md) | 182 | `result-track:8114027aaab89b635893c7c1b4397bc8e0b91c3015ff2f9599ca66390cb25f2c` |
| 53 | `lemma` | [mem_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-top.md) | 183 | `result-track:f09f40f3a48e85f248cc4e2873be95d744aec048fac9a87fe80bd8cfa0ac3861` |
| 54 | `lemma` | [mem_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-inf.md) | 184 | `result-track:5f6781078057d7f3958fac44bfb8f2e8979bed49631b5b11b684912bab20e0c3` |
| 55 | `lemma` | [mem_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-sinf.md) | 185 | `result-track:eceec94018091493a7a65fe35bc8e166d234557f00ec7096ade05739fcea893b` |
| 56 | `lemma` | [mem_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-iinf.md) | 187 | `result-track:49a89b7ca6ffae364dde2b96188a6581966ce0e72e9a7609fb08a97451db1ad5` |
| 57 | `instance` | [instCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instcompletelattice.md) | 191 | `declaration-track:517dc3fc8e0470902bad623be51c1bad184f5e07e77880913e607e0acc0d0585` |
| 58 | `lemma` | [subsingleton_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/subsingleton-iff.md) | 203 | `result-track:b21eefe1ff8eb1c78962a6ed0b4fcb477d73bcca8acdccf429bc8ae1d420a175` |
| 59 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/instance-source-edition-2.md) | 207 | `declaration-track:ec919a485c32b0b98e7e835a20063c5682722c6ce9cb5ef849ba97aef73c1988` |
| 60 | `def` | [comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/comap.md) | 211 | `declaration-track:1b4711fff469139fbd1b462450a1e78222ae49ba7a1326dfea6019d9994e42f4` |
| 61 | `lemma` | [coe_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-comap.md) | 216 | `result-track:93ef4c1cae4d99ffca7a479c901881df9843123be344b7d9b598a87e546e8e44` |
| 62 | `lemma` | [mem_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-comap.md) | 219 | `result-track:3875a5608009a41a0b23961fdd2128e029924bdd29f569830664d9cebdf286da` |
| 63 | `lemma` | [comap_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/comap-mono.md) | 221 | `result-track:a527c48ff117a29a1092ccc112e0138226001cff6fbe9ceb1555c930bf9e3d9f` |
| 64 | `lemma` | [comap_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/comap-id.md) | 223 | `result-track:7a236d9a7ab8e1bea9b33cd887f67d281d4a975d310416b741786a0132fcc734` |
| 65 | `lemma` | [comap_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/comap-comap.md) | 225 | `result-track:627058ab59949fbafd0652369eca00901edc2bba8c71b1436565adba5cc6ede7` |
| 66 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map.md) | 229 | `declaration-track:ea45cfe705797d38657fdbb179d24ddafe27b84ad54db3bb241d9d678e6a36ee` |
| 67 | `lemma` | [coe_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/coe-map.md) | 234 | `result-track:02fbc33314bde449722dcd1840ec6a56653e002565e8b7a77076411d857bd9f3` |
| 68 | `lemma` | [mem_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-map.md) | 235 | `result-track:f07abea645c7c1a8fd0c9595f1039edaeb278dccd2dc099ab7ebd4fa523419ca` |
| 69 | `lemma` | [mem_map_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-map-of-mem.md) | 237 | `result-track:06eba9c0069eaf63d814dc8ef7bda25b2c15270126d77b68d4bcf224dd68cc0c` |
| 70 | `lemma` | [apply_coe_mem_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/apply-coe-mem-map.md) | 238 | `result-track:d747d85f2716ba23bc33400601270f094abb6a2ab9b9e680a14a72aa439b3010` |
| 71 | `lemma` | [map_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-mono.md) | 240 | `result-track:fd99ecd4489d407719d4ec9fd6169344c5aa45e083e4240cccd41c3a284fcb61` |
| 72 | `lemma` | [map_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-id.md) | 242 | `result-track:7f3d4a1d6d8a56399beb25bf4bd012309315a3dd994e818c31aac4132fa56dc5` |
| 73 | `lemma` | [map_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-map.md) | 244 | `result-track:8c987814357fe1afa3fd7a031ddeda5cb3320b5f984f35f7ca17d6c98850a70b` |
| 74 | `lemma` | [mem_map_equiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-map-equiv.md) | 247 | `result-track:676026f74a79ad96c02758f42ada528cfe74577e236aa437a43bec1a56170d8a` |
| 75 | `lemma` | [apply_mem_map_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/apply-mem-map-iff.md) | 249 | `result-track:6f6f1322549316ab7ef3649a06861f44aa8297926377489dfed13ac21f34fe70` |
| 76 | `lemma` | [map_equiv_eq_comap_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-equiv-eq-comap-symm.md) | 251 | `result-track:4238c1b73e7b1a55db867a5e48da50c2a9ac77ed02d7cec939f6466abdd582d5` |
| 77 | `lemma` | [comap_equiv_eq_map_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/comap-equiv-eq-map-symm.md) | 255 | `result-track:5516de943a6b5cb72661b407cd8fa41b605023cd61ce4b48b065c5a2e05b4edf` |
| 78 | `lemma` | [map_symm_eq_iff_eq_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-symm-eq-iff-eq-map.md) | 258 | `result-track:bf99823aa432364c46fd04716a9f539eb05e3a57561f4b27bd274864d92bea1c` |
| 79 | `lemma` | [map_le_iff_le_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-le-iff-le-comap.md) | 262 | `result-track:2c3d02acf337a900d7ebb28ba67250d37ecdaac61477015f929bf5d2d0fd2a37` |
| 80 | `lemma` | [gc_map_comap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/gc-map-comap.md) | 265 | `result-track:5c8ce879a661ce7f58932dd11e82d2095453dd10a5a36bd66751edce489eac74` |
| 81 | `lemma` | [map_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-bot.md) | 268 | `result-track:fd5b33fce51ab1a813cc433d6f806803b5c8a87690933b21622a1a9916303ef9` |
| 82 | `lemma` | [map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-sup.md) | 270 | `result-track:f916d9561c1776d1d91dd7b957d6f48b2386ef2b10b2ff5db8daaacf7a60419c` |
| 83 | `lemma` | [map_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-isup.md) | 273 | `result-track:4f08299aa59ddbbb2e3b82998414e6eef043cadc765eacbbfb68558718f7acd9` |
| 84 | `lemma` | [comap_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/comap-top.md) | 276 | `result-track:7c2f3065595885589b416a6aeb8529aab87d244f9d73e54c0108b6cec47d331a` |
| 85 | `lemma` | [comap_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/comap-inf.md) | 279 | `result-track:b490112907894b4ede4c05fb64f853d7af31a3818a57650126e193767015c321` |
| 86 | `lemma` | [comap_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/comap-iinf.md) | 282 | `result-track:0e14a9d5045226568d719fc1d56c85f0348cff289caf1b59ae1c80039a92cbae` |
| 87 | `lemma` | [map_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-inf-le.md) | 285 | `result-track:64ada7ad0d31a568213b066a8687358d851467d861db8fcbd8b46c9c2b9663c4` |
| 88 | `lemma` | [le_comap_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/le-comap-sup.md) | 288 | `result-track:7827526f8b9c9775c8d0a41b57f44a4f67a20234c1943140a98decb23fe59a32` |
| 89 | `lemma` | [le_comap_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/le-comap-isup.md) | 291 | `result-track:892701c0b84429037dc757fa9c9a2caa3c428e938722761cb617b3e99efa7586` |
| 90 | `lemma` | [map_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-inf.md) | 294 | `result-track:c857f0f6bc8257db10b0c54610018a2ac4dfc51fe69b18c22b778bdcaca7a67e` |
| 91 | `lemma` | [map_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/map-top.md) | 299 | `result-track:0c06d84ed69f3a55ba7f5c53e4071d16d9b8222ebc2b8739cd9cc888a5409f75` |
| 92 | `def` | [prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod.md) | 309 | `declaration-track:cbca7b6f15f881b562d96ba9ea0cecb1d2900bb9d2b21533c9e1daae764c74ae` |
| 93 | `lemma` | [mem_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-prod.md) | 316 | `result-track:2259782c73526b0e1b6c253bff6a997dc26eae1e79b25657df349b9516382ac2` |
| 94 | `lemma` | [prod_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod-mono.md) | 319 | `result-track:d3814b4a5064d26925aefaa8a108e86f7d297e1b0cc67fd1b4c13655ea93ecae` |
| 95 | `lemma` | [prod_mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod-mono-left.md) | 322 | `result-track:3321c0374301a7225e05374f3b3c706fa96026823aa480c5b43f4489e30cafce` |
| 96 | `lemma` | [prod_mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod-mono-right.md) | 325 | `result-track:d9d173a6f78cd057af2cf004936d13250be7e51e3b96fd3f61952345d8334ca5` |
| 97 | `lemma` | [prod_left_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod-left-mono.md) | 328 | `result-track:8d0fad6027094d96dadbbf58cc05bb71de464be4a93330fb9d0075558dadef6e` |
| 98 | `lemma` | [prod_right_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod-right-mono.md) | 329 | `result-track:80a3b27d5b67bb270ee4557b3078188b9d42f45b78051efb0297eebdfba0bdd4` |
| 99 | `lemma` | [prod_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod-top.md) | 331 | `result-track:627fc140da71d85b48437431e99ad06282423c69d33bef508a91e266397d70aa` |
| 100 | `lemma` | [top_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/top-prod.md) | 334 | `result-track:6b782f4c72f9629b4366580f62ef3da49353d0fc700c31d5a3ce956416d226a0` |
| 101 | `lemma` | [top_prod_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/top-prod-top.md) | 337 | `result-track:128aff7c4052fedc49da503012eceb15c0c4b36487a243ac385d60d978b80f7f` |
| 102 | `lemma` | [prod_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod-bot.md) | 340 | `result-track:8da1d31b5f0d799a490ec9cbd2553ca495740838336fe9d5d24277d89a17a2b0` |
| 103 | `lemma` | [bot_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/bot-prod.md) | 343 | `result-track:c76dba6331f924d9d529df01481024399a70336a466a234559c44d1206ed879f` |
| 104 | `lemma` | [le_prod_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/le-prod-iff.md) | 346 | `result-track:f8a4e53c9805e7942778887f68e8f1e991ef666b4f6a61ead66c96620826173f` |
| 105 | `lemma` | [prod_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod-eq-bot.md) | 350 | `result-track:74fa00b1ebbde1fb73a58e924eb56ef4217f7e85202563a58550e0caafd6a05b` |
| 106 | `lemma` | [prod_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prod-eq-top.md) | 353 | `result-track:2787e29b58bcaddc613139eedede410146fb46fe863473344a2ea1a011350afa` |
| 107 | `def` | [prodEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/prodequiv.md) | 358 | `declaration-track:6ace7dc768fc554fb697d4f4b2a1e84427ebc4ca93c1f52b2ff2659702b85a1a` |
| 108 | `def` | [pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/pi.md) | 369 | `declaration-track:7b5baf485c23357efc52961ecb08f689658b3c174c5d27afa2d64bdc7b60674f` |
| 109 | `lemma` | [mem_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/mem-pi.md) | 376 | `result-track:892383d44e6cd09efedcf7758374dee70c86d0a3deb270a3cd8819702f787c09` |
| 110 | `lemma` | [pi_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/pi-empty.md) | 379 | `result-track:21b1d5f9c79912bfbd18719b7383e12b655bce5e7227bbb2db0e59c569aba461` |
| 111 | `lemma` | [pi_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/pi-top.md) | 381 | `result-track:0afc4a8a121162b29031783da6a7afc12477d1706f3a84c7bc7d86d164978101` |
| 112 | `lemma` | [pi_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/pi-bot.md) | 384 | `result-track:1339aac58b82968a4a1b8ccaacc5f23abac9305b9d11e8f9f987a4845e79c19e` |
| 113 | `lemma` | [pi_univ_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/pi-univ-bot.md) | 387 | `result-track:0566aa6f6ec72e5ae8a1eb8e51d859e058219c264abaf2ae93507929b03e7079` |
| 114 | `lemma` | [le_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/le-pi.md) | 389 | `result-track:6182d0f5ad8fa5648248819bba1eadd11963aed0604a759e6f52ba3979e373e3` |
| 115 | `lemma` | [pi_univ_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/pi-univ-eq-bot-iff.md) | 392 | `result-track:d3252776832d0ae97a7e304ec3967922d8709957f13e907b1a7ac110b805c64b` |
| 116 | `lemma` | [pi_univ_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/pi-univ-eq-bot.md) | 395 | `result-track:83d9f928f5b8c4b44f9ec1050dc024fc9f5f093b7b762da9a7ec61598199c732` |
| 117 | `def` | [range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/range.md) | 405 | `declaration-track:f862fc965c80f7ede1085faa6db46d4cd9af75eb1285c42c01c43313b4ec9f08` |
| 118 | `lemma` | [range_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SublatticePublic.lean/declarations/range-coe.md) | 407 | `result-track:620666c2eacc4b9bc238c66aea5e5e3ed6e8296815ebb776c18fc63707b6b7f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11c7655be1ec943fe5a8302cd60418a394fc810832dfd27f2359c4e8bfc569ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant5afde769402865e8efee7b764845a54d8373c6d373517dd7d1a2cbd5c5c9d5bd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant5afde769402865e8efee7b764845a54d8373c6d373517dd7d1a2cbd5c5c9d5bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
