# Verification target: Constructions Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daa4cb2305a9743cb73d7d08cd1a65bcdc01be68",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Constructions/Varianteab238f7c983c418e17aa34fba26cf9afda959ea92ecf354f57fccaa19cf4469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daa4cb2305a9743cb73d7d08cd1a65bcdc01be68`.

Source path: `GRWTSK/Analysis/Constructions/Varianteab238f7c983c418e17aa34fba26cf9afda959ea92ecf354f57fccaa19cf4469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Constructions/Varianteab238f7c983c418e17aa34fba26cf9afda959ea92ecf354f57fccaa19cf4469.lean.json)

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
| 1 | `instance` | [normedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/normedaddcommgroup.md) | 37 | `declaration-track:3012c0f37147f7331fc212052ac4b02ffa133264ada49d60baaabf2c195a562f` |
| 2 | `lemma` | [norm_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-eq-zero.md) | 41 | `result-track:3a55e4e60e337aa6f2144b81da1e6401e60277dda234bf93cc2fe73410378556` |
| 3 | `instance` | [norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm.md) | 51 | `declaration-track:30a0944537eef91188ae660a9b3a7f35368f8da8c43785afe1d2c18166dffcdb` |
| 4 | `lemma` | [norm_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-def.md) | 53 | `result-track:f161eca016dd0ff499cd658d9ec07616fe357afe7d678f1c734c565c0bebd596` |
| 5 | `lemma` | [norm_up](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-up.md) | 55 | `result-track:7ea6aab581ec1b74bc3cbcb23969da65f7e70815c4c71ffd7c5e45ec7978738e` |
| 6 | `lemma` | [norm_down](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-down.md) | 57 | `result-track:4b4edd4c5b3e9d57729ad65ab5cd3eb29b3e942c280a40eb030e03222ba7fd57` |
| 7 | `instance` | [nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm.md) | 64 | `declaration-track:0521439c9a956a28a708cdf3cafd1750b49affa947c9b6f6ada4ae38bd014cf4` |
| 8 | `lemma` | [nnnorm_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-def.md) | 66 | `result-track:2289e3b01b046d3b2eeebf5c1c9cb4f9c20f0183aa824a8cce541bcb26ff0450` |
| 9 | `lemma` | [nnnorm_up](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-up.md) | 68 | `result-track:fc75f2485620b5ba7c919b48200b0c33ec62d03d1bcb3eacd305107408a0b56f` |
| 10 | `lemma` | [nnnorm_down](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-down.md) | 70 | `result-track:a1046160460122cf9e91b0151e5c660ad6cd5257a23b02560a17c44cb8021a4b` |
| 11 | `instance` | [seminormedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/seminormedgroup.md) | 75 | `declaration-track:e2c27b85ec198edf5e3949aef65429b1380d907d21f52ffb5544769d255536e9` |
| 12 | `instance` | [seminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/seminormedcommgroup-source-edition-2.md) | 82 | `declaration-track:782c1dbe206c9ae12a044c9c1b134be5ad0c3b057cf694e1ec297e97aefc48aa` |
| 13 | `instance` | [normedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/normedgroup.md) | 89 | `declaration-track:94911e0e3f981a74e201a37520f08bc2325a29c8536461ab8df3ec4683005ede` |
| 14 | `instance` | [normedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/normedcommgroup-source-edition-2.md) | 97 | `declaration-track:f32d5e710ea2a001c459795cfccb58c9170524c05c496531ad02f28e8f0320e5` |
| 15 | `instance` | [Additive.toNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/additive-tonorm.md) | 115 | `declaration-track:4ad34288e41c393542ced467ac01e2e5cf197a30269466cb89a6a0c5f03b7d22` |
| 16 | `instance` | [Multiplicative.toNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/multiplicative-tonorm.md) | 116 | `declaration-track:cf00bf0548229c21c04b8243921859c19d5351e6e34513d2f7dd72600e4eeaf8` |
| 17 | `lemma` | [norm_toMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-tomul.md) | 118 | `result-track:cdf990e277286c8f3d67bfbf6fabc27dafa1b977cb47eb432f1db453bef2ed44` |
| 18 | `lemma` | [norm_ofMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-ofmul.md) | 120 | `result-track:44ed5105702a49f306567e1868189c41a33d8bba450720b45e28d0109392aca0` |
| 19 | `lemma` | [norm_toAdd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-toadd.md) | 122 | `result-track:39223233fe9143b2a8e05c39aef396c84367b12e686eb7575d04bc8a99acc48a` |
| 20 | `lemma` | [norm_ofAdd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-ofadd.md) | 124 | `result-track:b4fcd4ed5c1c6fb00c850afc0fade9985b0e1d7e929b6c9f50f68bc0dd6f3422` |
| 21 | `instance` | [Additive.toNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/additive-tonnnorm.md) | 131 | `declaration-track:b1fdfc390f5aa5dd9a010eaad533836e429f54d627d659b7859abdbcff13a2d3` |
| 22 | `instance` | [Multiplicative.toNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/multiplicative-tonnnorm.md) | 133 | `declaration-track:36c2f01d9c3da7e27cc511085890b1724bf7a36b2abb99c722bf54543d09fcb3` |
| 23 | `lemma` | [nnnorm_toMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-tomul.md) | 135 | `result-track:a7443a85508e8e3ff522122148bbbca74586a63cecdcaa65ccbc8dc0d7eb0cc6` |
| 24 | `lemma` | [nnnorm_ofMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-ofmul.md) | 137 | `result-track:baa37aeb9a49570a8ea6012b4666b3a528c993ccb0fbe10e6cf4f9a5bc7cb4cc` |
| 25 | `lemma` | [nnnorm_toAdd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-toadd.md) | 139 | `result-track:ee6e3a9f9a968ee4801b824329655a3b01867d6fafddee68e9f54b0b2685e132` |
| 26 | `lemma` | [nnnorm_ofAdd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-ofadd.md) | 141 | `result-track:27b2235fa2b4222e31e4733a00de9752be6a6fe94624d63b4710d8e8f0d7219e` |
| 27 | `instance` | [Additive.seminormedAddGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/additive-seminormedaddgroup.md) | 145 | `declaration-track:b6efa59624be4fa456a18f7798209dbb0375d6199c70aeb6935e2cd63afea192` |
| 28 | `instance` | [Multiplicative.seminormedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/multiplicative-seminormedgroup.md) | 149 | `declaration-track:f86941d8ad34766f1b780fb3598c5c3b247de51773b17cd805a4875d3b307511` |
| 29 | `instance` | [Additive.seminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/additive-seminormedcommgroup.md) | 153 | `declaration-track:854ef030d9c3a73defd296e3669bdc5d458d50e50c287407c00980e76b9dffe4` |
| 30 | `instance` | [Multiplicative.seminormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/multiplicative-seminormedaddcommgroup.md) | 158 | `declaration-track:46b2e2ee24dc493813e969809596c0183e38cdf0bf0b33c4d69427b74b585938` |
| 31 | `instance` | [Additive.normedAddGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/additive-normedaddgroup.md) | 163 | `declaration-track:dce144ec1a26780c6ad80ede8253917489a1d9b91e70c7d653a7302dd33f5b6b` |
| 32 | `instance` | [Multiplicative.normedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/multiplicative-normedgroup.md) | 167 | `declaration-track:2be998483d5273c28f56c2fd00bd2a9092f808b9761ec4cc6f0fb125b6fed5ca` |
| 33 | `instance` | [Additive.normedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/additive-normedaddcommgroup.md) | 171 | `declaration-track:2e130b2135a0a2243b1b74e9a2bd7a7a405e175a030a30b6d45735b26310e933` |
| 34 | `instance` | [Multiplicative.normedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/multiplicative-normedcommgroup.md) | 176 | `declaration-track:40c4eebc60abd77b95976381a969f53a09277214fecf65605ebef9b4cc945ce9` |
| 35 | `instance` | [OrderDual.toNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/orderdual-tonorm.md) | 192 | `declaration-track:ce49983a823baa4392308c8ab7639f5ebd5554e9df8ae0ebdadeec74040b3db7` |
| 36 | `lemma` | [norm_toDual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-todual.md) | 195 | `result-track:10a4cb0044033e25b9d65d1db6c943d02bd954ab546635a3f057173c3389a5b0` |
| 37 | `lemma` | [norm_ofDual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-ofdual.md) | 197 | `result-track:b4269960a6db0d98c55d322cb930fbb43c743efae8acaa4a759492202b5a7b25` |
| 38 | `instance` | [OrderDual.toNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/orderdual-tonnnorm.md) | 204 | `declaration-track:2e5dc304b954d45477581dc95c5649175109a524fbb1d7d9c88f101fedfdc8de` |
| 39 | `lemma` | [nnnorm_toDual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-todual.md) | 207 | `result-track:14cc4abaeca7ebb721b667bf3bff2a8938470ef160272b58b6b33f8ed7068670` |
| 40 | `lemma` | [nnnorm_ofDual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-ofdual.md) | 209 | `result-track:65726857f265ea65a19d9a2136a14151e4c321f712156f3729288d932e48d579` |
| 41 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/instance.md) | 217 | `declaration-track:944ab61f2b37423295b5896a586aa9635d157b4ad9941a502afc74c95fa5aa25` |
| 42 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 222 | `declaration-track:f372c4926f13f2dd474da867433b5ebfcbd53864e0c74636061ad2c8b80f179f` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 227 | `declaration-track:c5b0787d186e23e2e8bc78952bc0caad705b5a16db3dc6848ecc9e3a460f2fa0` |
| 44 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 232 | `declaration-track:e321b826475e7200ebe83597e4546ded898879d5dff25d10a3945fa63533a83f` |
| 45 | `instance` | [Prod.toNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/prod-tonorm.md) | 243 | `declaration-track:1a280d04f18a85dc38e5add6e4c734cb00822cbe86b96f23b1144d724f958927` |
| 46 | `lemma` | [Prod.norm_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/prod-norm-def.md) | 245 | `result-track:d8f66180d0b1f6948d225a7570f832b3244f24c7d345afc858c95761ab075644` |
| 47 | `lemma` | [Prod.norm_mk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/prod-norm-mk.md) | 247 | `result-track:cfb13639a9a9b6aabd8b7faa73192334e07405d038a892e0abe90ba5439cedce` |
| 48 | `lemma` | [norm_fst_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-fst-le.md) | 249 | `result-track:50daff76e0e43a48770b2355561705aeb9eb621fba80728161c41d143a7c0b98` |
| 49 | `lemma` | [norm_snd_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-snd-le.md) | 251 | `result-track:45247e9c4a22011550e9135c6aa881d192add645066919de8b1558bdcc327263` |
| 50 | `lemma` | [norm_prod_le_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-prod-le-iff.md) | 253 | `result-track:51fc0d397414c05057b1d439863ddb0ece35923af6c8f91edbf711ed4121dcdd` |
| 51 | `instance` | [Prod.seminormedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/prod-seminormedgroup.md) | 262 | `declaration-track:d5865bb29501ec19665e55e817b3beacf80ca03dfce7d35dfe2d62b775296aad` |
| 52 | `lemma` | [Prod.nnnorm_def'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/prod-nnnorm-def.md) | 269 | `result-track:3bad64c3f39246419a6a32ae8d007cd62b288d6e5a38f019059a78a370ec9409` |
| 53 | `lemma` | [Prod.nnnorm_mk'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/prod-nnnorm-mk.md) | 273 | `result-track:f63e0e1d66508849d5df4c9018b67d73c43907defa7a4c781a15881543343223` |
| 54 | `instance` | [seminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/seminormedcommgroup.md) | 281 | `declaration-track:2f58be43fcb9b4daf535aa552637f889b2f8bdd71a961a9f8f14664d7f4094c5` |
| 55 | `instance` | [normedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/normedgroup-source-edition-2.md) | 288 | `declaration-track:dc9cc41ab6351b8240ae2153f8371cfafb81a7624042155a1c03860db4039b27` |
| 56 | `instance` | [normedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/normedcommgroup.md) | 294 | `declaration-track:2a89f670d539003c14f5380ce6aa715772395e28058950aa8e759d8fe0dc12ab` |
| 57 | `instance` | [Pi.seminormedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-seminormedgroup.md) | 311 | `declaration-track:f8e8c82eb409c8fdf5991b3f021fa1fcc01c36580b27c7d9c6117ddfb7b9dd54` |
| 58 | `lemma` | [Pi.norm_def'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-norm-def.md) | 319 | `result-track:c9403a660150d375b54a82fac75df9242677940b998429455296a9adf6b5a2e4` |
| 59 | `lemma` | [Pi.nnnorm_def'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-nnnorm-def.md) | 322 | `result-track:ceb314dd5ac46552b925bf1c71245a5d3d0cd095f0d278cd2a31331eb856f72a` |
| 60 | `lemma` | [pi_norm_le_iff_of_nonneg'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-norm-le-iff-of-nonneg.md) | 328 | `result-track:31674c1993853fe4f461d39d10c82d95291aecf77bc9fa9447273055e8aff765` |
| 61 | `lemma` | [pi_nnnorm_le_iff'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-nnnorm-le-iff.md) | 332 | `result-track:de832fb195cdba5ae463c1b48ecd0c1b2c56e939853ef197b29df889fe828d1b` |
| 62 | `lemma` | [pi_norm_le_iff_of_nonempty'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-norm-le-iff-of-nonempty.md) | 336 | `result-track:8131769fe05091196bcae0cde279941e52e624d814e16846cb96cddff32f2d3a` |
| 63 | `lemma` | [pi_norm_lt_iff'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-norm-lt-iff.md) | 347 | `result-track:d7f2e0fd5b75b90370507eb6e20d73b952252ef9eb632a0a23e4b62f0821ba77` |
| 64 | `lemma` | [pi_nnnorm_lt_iff'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-nnnorm-lt-iff.md) | 351 | `result-track:45cb283546ade0207044c15fea674de61f1d2f3b0880ecf65a805ca69db316a8` |
| 65 | `lemma` | [norm_le_pi_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-le-pi-norm.md) | 355 | `result-track:eeae6e57dfad0f0921922a9b11b6251dd2a3e2b358ebd637995447e3bf8bbb94` |
| 66 | `lemma` | [nnnorm_le_pi_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-le-pi-nnnorm.md) | 359 | `result-track:a3a218145dd5e0bbb1b2c60371e59457d45f22aa39613654f6ad8710273492b3` |
| 67 | `lemma` | [pi_norm_const_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-norm-const-le.md) | 363 | `result-track:bf78ec5d8492e21f4c1c86f846a902ad02184f883e5b408196c495c158f16f25` |
| 68 | `lemma` | [pi_nnnorm_const_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-nnnorm-const-le.md) | 367 | `result-track:6a6284e80548bc519e051416d05fe58fe8379379fcda39c6b3ccae2c48ea2717` |
| 69 | `lemma` | [pi_norm_const'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-norm-const.md) | 371 | `result-track:2d70b9c4940a3cabf1cdbf41dab6c57cd6643dad825c2deb256794722a1e2d31` |
| 70 | `lemma` | [pi_nnnorm_const'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-nnnorm-const.md) | 375 | `result-track:143aead1dadcb7db87848125c33f3694c9c347b89c0a54d785bcd6ecd4c28a48` |
| 71 | `lemma` | [pi_norm_comp_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-norm-comp-le.md) | 379 | `result-track:03cd209231dc2352502a685ee3a1939110e0e846df6a8531e56fe3cd9e0506de` |
| 72 | `lemma` | [IsGreatest.pi_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/isgreatest-pi-norm.md) | 384 | `result-track:15e721491e49e674e4fad0d47afc93f6924fea47cde8611c898ce6f830612f9c` |
| 73 | `lemma` | [Function.Surjective.pi_norm_comp'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/function-surjective-pi-norm-comp.md) | 393 | `result-track:976c5df8f462f76dba0df6b7064f033ff0241f9da531ada6b4ec59401c1021f4` |
| 74 | `lemma` | [Pi.sum_norm_apply_le_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-sum-norm-apply-le-norm.md) | 406 | `result-track:e480af37cda628c6eb1ddbe017c0e7994702447a612b53b7133b7e42c0f1daa6` |
| 75 | `lemma` | [Pi.sum_nnnorm_apply_le_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-sum-nnnorm-apply-le-nnnorm.md) | 412 | `result-track:8da48a8993dafc613f63832248f30ca39092b3f6f71651839f9256608f1ce12c` |
| 76 | `instance` | [Pi.seminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-seminormedcommgroup.md) | 419 | `declaration-track:52efa0c7cf289261aac456a2334c47212cc31465858f27c2329a6b94846dbb52` |
| 77 | `instance` | [Pi.normedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-normedgroup.md) | 425 | `declaration-track:cb0a2e3a6e4ea171c5bfe7b2d837e95ae555539ee4a7d2c631121e44ca7b3cb8` |
| 78 | `instance` | [Pi.normedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-normedcommgroup.md) | 431 | `declaration-track:d5b5efcfb556abc8631d3b661f19cd5cf30ebd9aee2326898f99be284f61b6ed` |
| 79 | `theorem` | [Pi.nnnorm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-nnnorm-single.md) | 436 | `result-track:80d16507efe49e9835850aa816b4c50e3ba63cdbe6bf798790f73f7225465573` |
| 80 | `lemma` | [Pi.enorm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-enorm-single.md) | 444 | `result-track:b56611a05c8f8b1015185a3006e88bdc20c9f636385d0dcc7035a50c29eb1e3c` |
| 81 | `theorem` | [Pi.norm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/pi-norm-single.md) | 447 | `result-track:8bcfd5d88a40a365463f4df12651fbc1dfe7f0edbb9925ce4f8c1f8ea1faeb19` |
| 82 | `instance` | [instSeminormedAddGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/instseminormedaddgroup.md) | 465 | `declaration-track:97b4d32131d66d65718647634c84fef5b79fa3f3e6905abfc01b3896caa22ae1` |
| 83 | `lemma` | [norm_op](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-op.md) | 470 | `result-track:51eaa5703a02d8051d36eab5ced08a641358236aef5bf0b410ef9cffdf861516` |
| 84 | `lemma` | [norm_unop](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/norm-unop.md) | 472 | `result-track:3f718c859848f06bd7a44be0a52d072491e5485334c0962f3ce20216ce44d761` |
| 85 | `lemma` | [nnnorm_op](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-op.md) | 474 | `result-track:c4a9483b76e284e8a0e1bc7f0071b98499b3fa49d4289cf3b13b02911513a6b5` |
| 86 | `lemma` | [nnnorm_unop](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/nnnorm-unop.md) | 476 | `result-track:a92b513b64addff8287567e65d22dec8b39c3a9d3245ae13760d0f8b809b9395` |
| 87 | `instance` | [instNormedAddGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/instnormedaddgroup.md) | 478 | `declaration-track:ef6c3dc7272cdccbd06deeb734b10a7a9c8146ea39d114d2ef1853447e0ff560` |
| 88 | `instance` | [instSeminormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/instseminormedaddcommgroup.md) | 482 | `declaration-track:555eae76e59f8e2afb24c3ac1bea60c8cbc20e4d8d28974ee8119632b2661f63` |
| 89 | `instance` | [instNormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespacedPublic.lean/declarations/instnormedaddcommgroup.md) | 485 | `declaration-track:75248d35f0ab493a4c69a2e4655b62d25770b9d4bcf34d5d7422483df48dda7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0db20df04339a89bf70b3d9132947a0535274ca90eda7410fe1fc44cb53628b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Constructions/Varianteab238f7c983c418e17aa34fba26cf9afda959ea92ecf354f57fccaa19cf4469.lean","GRWTSK/_verification/specifications/Analysis/Constructions/Varianteab238f7c983c418e17aa34fba26cf9afda959ea92ecf354f57fccaa19cf4469.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
