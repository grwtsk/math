# Verification target: Group Opposite Namespaced Op Of Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "307152ddbe9725a0b1269c239f6d84b7fa579cfc",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant0c59268cc55fa402ad3fa013e01484d898090b0ead019a004d036a9cfe3fc6b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `307152ddbe9725a0b1269c239f6d84b7fa579cfc`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant0c59268cc55fa402ad3fa013e01484d898090b0ead019a004d036a9cfe3fc6b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant0c59268cc55fa402ad3fa013e01484d898090b0ead019a004d036a9cfe3fc6b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNatCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instnatcast.md) | 33 | `declaration-track:7138c8f322d92aca38cfd90ab39b830a50bb06d4dca23a81fb5119d763c1104e` |
| 2 | `instance` | [instIntCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instintcast.md) | 34 | `declaration-track:8ddc8ed966633886153b103dbe0c78a0b8df2a427bd932d60f1998f90e465226` |
| 3 | `instance` | [instAddSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddsemigroup.md) | 36 | `declaration-track:3f0c12907c71870d54ac6372da401e3585f81cdb5c0a3e7bc9a6793bedfc3a3c` |
| 4 | `instance` | [instAddLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddleftcancelsemigroup.md) | 39 | `declaration-track:2de9ef2dc3d3af02a3e82a19659aadb33a80b73938a2701d620984e7b636503d` |
| 5 | `instance` | [instAddRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddrightcancelsemigroup.md) | 42 | `declaration-track:80f433ed911d9aea5b84ece69738e0d5a52bfe7b537afb8a756b3863334bf6e6` |
| 6 | `instance` | [instAddCommSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddcommsemigroup.md) | 45 | `declaration-track:992d1765c38b4277d07a2c69819c61b8297e9c17a22bf0d9decc03f5b53b4364` |
| 7 | `instance` | [instAddZeroClass](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddzeroclass.md) | 48 | `declaration-track:e526e5effe46cd3c98d5d79dca5a8a2a16084b4ec0c7a62f1dac53be448b5789` |
| 8 | `instance` | [instAddMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddmonoid.md) | 51 | `declaration-track:42e316868610744a7b5224722ce4064d2c8f5ae0928b5ed3a421685ca4ca251b` |
| 9 | `instance` | [instAddCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddcommmonoid.md) | 54 | `declaration-track:e6f80eaf7398ba8d4ab1ae7407a604be14a729d69f5efc3bb8654a78ee70f15e` |
| 10 | `instance` | [instAddMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddmonoidwithone.md) | 57 | `declaration-track:62e074c4a694d0db7a8c51b1f88d7908ea3cb64062120bbe1f06563ec39b65c8` |
| 11 | `instance` | [instAddCommMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddcommmonoidwithone-source-edition-2.md) | 64 | `declaration-track:c0a38dae4301ecada7080ca22cd0bb8f22efcd1fc11f5b2676747bc461415ae5` |
| 12 | `instance` | [instSubNegMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instsubnegmonoid.md) | 68 | `declaration-track:a2948c0e111b25e857df40e7745200660e87eb92959f6f5b85d9690f3554bd4f` |
| 13 | `instance` | [instAddGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddgroup.md) | 72 | `declaration-track:c13f3df929c5293533226be4d100d1428ff33aef8d2d3ab4b1150595c3110572` |
| 14 | `instance` | [instAddCommGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddcommgroup.md) | 76 | `declaration-track:c8fb7bbe94aac71329d62e427670b855afff9d3fdbe24e46bd51b649404187d8` |
| 15 | `instance` | [instAddGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddgroupwithone.md) | 80 | `declaration-track:2d86c8c9763cbc154f190001a9f0a74479013e3929c825fe7b62c0f5cac4d666` |
| 16 | `instance` | [instAddCommGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddcommgroupwithone.md) | 87 | `declaration-track:0daec48a43ee5147e24cad2676c1def85a5016a3c2bf2e8ec0d6db10d2838f58` |
| 17 | `instance` | [instIsRightCancelMul](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instisrightcancelmul.md) | 98 | `declaration-track:7ac3b1cb2c08947f1a7a90b1d52cc3a456449094bf9a1323b89586c24f93647c` |
| 18 | `instance` | [instIsLeftCancelMul](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instisleftcancelmul.md) | 102 | `declaration-track:1e1a15cb68a70f6c47e315b1e0466be39a037434a2f3b301bcf4ccf1e38856fc` |
| 19 | `instance` | [instSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instsemigroup-source-edition-2.md) | 106 | `declaration-track:fe01c33eb8ae0397a516f3c2d085675ad137e50bd1c7e10c9d6b37fa870c2403` |
| 20 | `instance` | [instLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instleftcancelsemigroup.md) | 110 | `declaration-track:754842d99eb1649e3e603c9f1826f77d65799e0bfb01a5ce2ca3c3f19c9036a8` |
| 21 | `instance` | [instRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instrightcancelsemigroup.md) | 114 | `declaration-track:61fb336632ccd487fb1d12fb5abba779abe03d882ce66afc2c03393724692f62` |
| 22 | `instance` | [instCommSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instcommsemigroup-source-edition-2.md) | 118 | `declaration-track:5a067b77f232ede418211579e9789dee05fd4c6d6042a9f586780b3b4f95af55` |
| 23 | `instance` | [instMulOneClass](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instmuloneclass-source-edition-2.md) | 122 | `declaration-track:94d17c121f8f15c0cc235e5cff4978c4489c10d1f7b9212981a618079a11e752` |
| 24 | `instance` | [instMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instmonoid-source-edition-2.md) | 129 | `declaration-track:49718660d54d9fdb02cca4c7f7db797034c501af684ce692db7c9dd40cb2c0e6` |
| 25 | `instance` | [instLeftCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instleftcancelmonoid.md) | 137 | `declaration-track:d7d807f365b779e6a2d396c0b6a0cf5e9920a5b348f5a2dbe7ff2ed97a38a37b` |
| 26 | `instance` | [instRightCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instrightcancelmonoid.md) | 142 | `declaration-track:dbd01924955a58ae63f974516c9aac9aede83ece6d793589f5cf12a88a5601aa` |
| 27 | `instance` | [instCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instcancelmonoid.md) | 147 | `declaration-track:2e3c883b58226f53d85d5204c8bf7e759ec8ce73761005adf68c029157776121` |
| 28 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instcommmonoid-source-edition-2.md) | 152 | `declaration-track:a965e8f81f049818bfc38707557cac3137c6f4d1752709886c5c07d17de78933` |
| 29 | `instance` | [instCancelCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instcancelcommmonoid.md) | 157 | `declaration-track:9132b7c6d022c27dfa6930f9a126af6ce4da59fad2f6b37b5f2700c004fc68fa` |
| 30 | `instance` | [instDivInvMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instdivinvmonoid-source-edition-2.md) | 162 | `declaration-track:6c34d0c62f9f4423e667de0d4aa45979bb1106fff0761d8b4adbcd0cd66ca789` |
| 31 | `instance` | [instDivisionMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instdivisionmonoid.md) | 172 | `declaration-track:2dc4c988910bd9fd2694c2961195534936d3e13f563fc695b0f718cec080aa09` |
| 32 | `instance` | [instDivisionCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instdivisioncommmonoid.md) | 179 | `declaration-track:5119b3e84724e811d57218bf47de29ef6f8b9bc9afd28c4460871cae83a89b05` |
| 33 | `instance` | [instGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instgroup-source-edition-2.md) | 184 | `declaration-track:fbaf53c926dd9a3b34ae5b395d3ff69d69bfc4f7e9a01965f9f53d1c5dd81b29` |
| 34 | `instance` | [instCommGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instcommgroup.md) | 189 | `declaration-track:8488cd7c2c40b4c8d966ce42d5744a7883998ce0db2a0d09038cf74f0e05f18e` |
| 35 | `lemma` | [op_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/op-pow-source-edition-2.md) | 196 | `result-track:c230e6e0c52d0b4d35b0dbadc27adb0fa1d042766b39b5f0138d7ff0067ae1de` |
| 36 | `lemma` | [unop_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/unop-pow-source-edition-2.md) | 198 | `result-track:5f525d94d0d3e6f783d63c5caa25fa9600a8259ca64476936f072f433b5de4dc` |
| 37 | `lemma` | [op_zpow](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/op-zpow.md) | 205 | `result-track:d616d88f54a009808ebb4c310345b0b3f028c5e89274237c9a8eee553d72fb61` |
| 38 | `lemma` | [unop_zpow](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/unop-zpow.md) | 207 | `result-track:6f303909aa59edfcb805c380305d11b825d1a2982ae18ebe6a5bb2de99bc7b7d` |
| 39 | `theorem` | [op_natCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/op-natcast.md) | 212 | `result-track:37316f0a4168258a3ba1b53eaa0459d1ac9ff6f29e8f83d5a10b6cb9b2c251cf` |
| 40 | `theorem` | [op_ofNat](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/op-ofnat.md) | 216 | `result-track:0038389c7de685504a9c94e1c120973d8de66773b7fc7aa4708d29a49e07339b` |
| 41 | `theorem` | [op_intCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/op-intcast.md) | 221 | `result-track:d37137a5c791da5fcc7b654528b7a76e9794b492749262a601edcce4e17822c9` |
| 42 | `theorem` | [unop_natCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/unop-natcast.md) | 225 | `result-track:a0c35ef06a2a0b7d93add56939b5832566f8aba92c90ed5dc55454303587773b` |
| 43 | `theorem` | [unop_ofNat](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/unop-ofnat.md) | 229 | `result-track:263832821e685e07c3f17e72c40577029b97a0fe9ca0bbe9af18984154705144` |
| 44 | `theorem` | [unop_intCast](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/unop-intcast.md) | 234 | `result-track:bb543f96290545d38e20298ba1963453cca0879758352269b97954c427cb4f17` |
| 45 | `theorem` | [unop_div](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/unop-div.md) | 238 | `result-track:2a5b5be9837787d11cc9b10a892edb2c15895e7dfadb3d3a77af3897b4598d7f` |
| 46 | `theorem` | [op_div](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/op-div.md) | 242 | `result-track:cf78926d0fae31a957303e6532317b85cf319c62e7dfcc2a7095a9ce869cbeae` |
| 47 | `theorem` | [semiconjBy_op](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/semiconjby-op.md) | 245 | `result-track:d21a11ce19137359018145f41bf9ed7b60f76772a2f220b62f54786e0b3e15de` |
| 48 | `theorem` | [semiconjBy_unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/semiconjby-unop.md) | 249 | `result-track:4c10dd4e196364e85cb42a9f661143f94cb7487f3667fbcf3c1fdbf0a67b4665` |
| 49 | `theorem` | [Group Opposite Namespaced Op Of Nat](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/op.md) | 256 | `result-track:2068bb5558e3f70de4836479ab1801c374f4aeb47a7009b9743fb05f7d72d499` |
| 50 | `theorem` | [Group Opposite Namespaced Op Of Nat](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/unop-source-line-261-occurrence-2.md) | 261 | `result-track:f206c1247bf647854ab8be7de7900d11874bc45990172471cd796375db47e4cd` |
| 51 | `theorem` | [Group Opposite Namespaced Op Of Nat](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/op-source-line-266-occurrence-2.md) | 266 | `result-track:2e677760c739b3f6a105f3ae007c7f7b27cdef57ab7f7a15e3f9480c956bcab9` |
| 52 | `theorem` | [Group Opposite Namespaced Op Of Nat](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/unop.md) | 270 | `result-track:3f482743bd4ccb155c540403c2df55eaf1d5206452793b54297d91247c023f9a` |
| 53 | `theorem` | [commute_op](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/commute-op.md) | 275 | `result-track:df3fb87359bbb2f1f5004ce9a1877f3f693482aaad82759a86116063af290144` |
| 54 | `theorem` | [commute_unop](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/commute-unop.md) | 279 | `result-track:5e277b83ea2d10d8fc64a996dff3f723663900dee2c305830fccd542c738add3` |
| 55 | `instance` | [instSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instsemigroup.md) | 293 | `declaration-track:e27f9809355d74aa980ce6cf57f5b4ad9b77b8d9587fac49098575d072bffbb4` |
| 56 | `instance` | [instLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instleftcancelsemigroup-source-edition-2.md) | 295 | `declaration-track:bc6f41a72c68e3f399e00d32ec324da7433bdf00dcad36ee286f362ba350c9e1` |
| 57 | `instance` | [instRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instrightcancelsemigroup-source-edition-2.md) | 298 | `declaration-track:65a32722c763765b083fa1060e38e52f7b6b24ee46ce149ee8b4f4393f0e98d7` |
| 58 | `instance` | [instCommSemigroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instcommsemigroup.md) | 301 | `declaration-track:16554cc7925e6a1c60652e70e3694fd63366af3ec81cd89a997efd846f3d49db` |
| 59 | `instance` | [instMulOneClass](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instmuloneclass.md) | 304 | `declaration-track:78c715e2094a0bea97c2dabc825e18251197e0ae01d582f57899587f08efaa80` |
| 60 | `instance` | [pow](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/pow.md) | 307 | `declaration-track:35420c6920c0ea6a7f421d577b3a2e243a91a7d4d41121c197eaeeb870d6a748` |
| 61 | `theorem` | [op_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/op-pow.md) | 310 | `result-track:a6f83c8f86e63af581813ac080eb2ebf4436ebfe38aa26ead4d644f5222bb6a2` |
| 62 | `theorem` | [unop_pow](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/unop-pow.md) | 314 | `result-track:54f4a1c205ab4cf48fbc3945301fe4e64acd58691f3a924300707c11416e3864` |
| 63 | `instance` | [instMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instmonoid.md) | 317 | `declaration-track:0f04863d75cff1c9c652b54d3b9dcd5262a28fa0b7a9a444931928451bf48498` |
| 64 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instcommmonoid.md) | 320 | `declaration-track:25c98e0d2372e842b6072f24dae3ada1d79321bca374449f4129e12df486088d` |
| 65 | `instance` | [instDivInvMonoid](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instdivinvmonoid.md) | 323 | `declaration-track:07a247e540c4b849ddf6322092cef8cb048d5b98cfed1f76f6d099809760765f` |
| 66 | `instance` | [instGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instgroup.md) | 327 | `declaration-track:c6e09152afb7196d4dafe1198d1bb6331bcd0fc06c44d50f8fecbdb401602916` |
| 67 | `instance` | [instCommGroup](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instcommgroup-source-edition-2.md) | 331 | `declaration-track:b0938374950269c250a14a36732190dc1713660a48504a4b8d667b20c42071aa` |
| 68 | `instance` | [instAddCommMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddcommmonoidwithone.md) | 336 | `declaration-track:629adb4c8c97a9b382c9e7871ef98c5f769c1fe326584f75b4b84b5bb4692af2` |
| 69 | `instance` | [instAddCommGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupOppositeNamespacedOpOfNat.lean/declarations/instaddcommgroupwithone-source-edition-2.md) | 343 | `declaration-track:7c3f736850a54184d57cc76c97d24dff643c4278b69c0104ccc151257387e170` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d88845ef93b273c19a3f4a0d2d5c5deedf89da1ed435a8d358270d8d276556d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variant0c59268cc55fa402ad3fa013e01484d898090b0ead019a004d036a9cfe3fc6b7.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Opposite/Variant0c59268cc55fa402ad3fa013e01484d898090b0ead019a004d036a9cfe3fc6b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
