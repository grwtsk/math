# Verification target: Rational Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83be0fd853851132262d98d7926cfac92f5372f7",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83be0fd853851132262d98d7926cfac92f5372f7`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.SpreadingOut` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.FunctionField` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Separated` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap.md) | 51 | `declaration-track:91971e79cc51018ce987db6937d72cddd0aa389f70168bbe5ea75855316383a8` |
| 2 | `abbrev` | [PartialMap.IsOver](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap-isover.md) | 60 | `declaration-track:d56b2c3d4f22a3357dab78481fc8e2fd888f995a0982ed10411727806cb8812c` |
| 3 | `lemma` | [ext_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/ext-iff.md) | 65 | `result-track:b1e82802506e8087bd397cfc04231d5bad3e2ab9d017d228c8b62ac7346cc381` |
| 4 | `lemma` | [ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/ext.md) | 77 | `result-track:6625d9e0a8fd20115d736a3363c17cb4f1f926554cd3f11c0b4eed05c2cff111` |
| 5 | `def` | [restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/restrict.md) | 85 | `declaration-track:d52c5cf507288ee686fe4beed0cd088bf19469d5c7f6e23ec325c4166c8bba74` |
| 6 | `lemma` | [restrict_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/restrict-id.md) | 92 | `result-track:792b2867ca5104fd37b44175662d1a52a37ca4bb55a36978942c21a62fa09c6c` |
| 7 | `lemma` | [restrict_id_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/restrict-id-hom.md) | 95 | `result-track:f9efdac18295e2a92383af81bc531cd6f1fb71b3077d3bbf60e5826eb4dce572` |
| 8 | `lemma` | [restrict_restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/restrict-restrict.md) | 100 | `result-track:660fae80b08f1eac9ac6c6d76ef63bf669a1c300d4e3fea4122107c4332c5a1d` |
| 9 | `lemma` | [restrict_restrict_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/restrict-restrict-hom.md) | 106 | `result-track:a9e25966d3c1c99e4a384c935acfe55728c3e582a02370cf2d87a9da94e716d0` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/instance-source-edition-5.md) | 112 | `declaration-track:afb8066b4c1e9efab8a6e3f7c4842bcaa3ec9302fc382c0ec0de2b92883b8755` |
| 11 | `def` | [compHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/comphom.md) | 118 | `declaration-track:a01e4d7fcae04f917148bad6b204acf65f0346d22ad0dd2d0cf510f3fb180c96` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/instance-source-edition-8.md) | 123 | `declaration-track:da68b9568f508f89dfd31b7af75881b5fbed837596e1762b29cfdf6a41a7b1cb` |
| 13 | `def` | [Rational Map Namespaced](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/topartialmap.md) | 128 | `declaration-track:379e98ed7293046cea47c44d6bae73f1b673dc093ff4f98412faba1037327eb6` |
| 14 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/instance-source-edition-7.md) | 131 | `declaration-track:c95182667c206664185018bd84ae28d7ace466a40ed37987c506c2b37bcb27cf` |
| 15 | `lemma` | [isOver_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/isover-iff.md) | 133 | `result-track:b9469bf3ab890778741f4d6850ee859868f607a138834468d1e78a8812d2c2a0` |
| 16 | `lemma` | [isOver_iff_eq_restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/isover-iff-eq-restrict.md) | 137 | `result-track:5f847eac8197dbfdebb8fbb4d9d86c64b3a642383ca0654e40fc13cb927c3d63` |
| 17 | `def` | [fromSpecStalkOfMem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/fromspecstalkofmem.md) | 143 | `declaration-track:f74aeec6cec394a40dec1b37ed3b56cd69bdd9ceef2df911e4cd3078b0fb5584` |
| 18 | `abbrev` | [fromFunctionField](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/fromfunctionfield.md) | 149 | `declaration-track:a40e2639f4e2c9e5502109baf46e78e75cadd0bbe04a2f978b1797cdc3ed21ae` |
| 19 | `lemma` | [fromSpecStalkOfMem_restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/fromspecstalkofmem-restrict.md) | 154 | `result-track:c5ce4f0397e4191d6aba6d7e8cc1b14f9651e6834ef5db56c75c8098587801e4` |
| 20 | `lemma` | [fromFunctionField_restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/fromfunctionfield-restrict.md) | 171 | `result-track:0be8b88752f7c6beb46f12c006c48dc185f832e47d50f71cfd2284850f65d7d8` |
| 21 | `def` | [ofFromSpecStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/offromspecstalk.md) | 182 | `declaration-track:fb1a6ed9eb8189fa21f4f66693d1cb85a472edeab837ba22916eb124223c5a9c` |
| 22 | `lemma` | [ofFromSpecStalk_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/offromspecstalk-comp.md) | 189 | `result-track:820c4f2c319be0b22b71fa0d324c73cfe879978ae7ddcfa86eacc4f1560c1671` |
| 23 | `lemma` | [mem_domain_ofFromSpecStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/mem-domain-offromspecstalk.md) | 195 | `result-track:48831ab319d1f1fd88dc5dea751f7bd79eecdcbd8544f0fd3c745f00e32d1eb5` |
| 24 | `lemma` | [fromSpecStalkOfMem_ofFromSpecStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/fromspecstalkofmem-offromspecstalk.md) | 200 | `result-track:862c177c443b2ac7bbb5b6f61ceff15c3c5a26ff76f8ddd4457774c68f2dd468` |
| 25 | `lemma` | [fromSpecStalkOfMem_compHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/fromspecstalkofmem-comphom.md) | 207 | `result-track:b0f3b1ae37c1bebcf584e20f9ebac105522a7fa7048a515f13db4d1357158856` |
| 26 | `lemma` | [fromSpecStalkOfMem_toPartialMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/fromspecstalkofmem-topartialmap.md) | 212 | `result-track:b1284be4744e8ec6e32586aa8e368338b02568979bfe9c9aaa4bc22d0881bb73` |
| 27 | `def` | [equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/equiv.md) | 218 | `declaration-track:d02e51fcd96c19187d0870630fc7ba3c7d805940ead28f2958aa56924b2bfba6` |
| 28 | `lemma` | [equivalence_rel](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/equivalence-rel.md) | 222 | `result-track:1d4b5dc898913ee3120344ce08d63d799924ff1677118662e651ff8e8572ce1a` |
| 29 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/instance.md) | 237 | `declaration-track:0a5f1c3c8ffa8ef94b757c494a4f085990bbdec64b0aa88ef396a7fd442a50b7` |
| 30 | `lemma` | [restrict_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/restrict-equiv.md) | 239 | `result-track:8f04bbd31bed37769fc2c5c89139fd8a8208483fbac8186a189f911eb26bcd7a` |
| 31 | `lemma` | [equiv_of_fromSpecStalkOfMem_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/equiv-of-fromspecstalkofmem-eq.md) | 243 | `result-track:ad93a03c4455c8a1fd4e01c7b4953479611fe9106f40b84c278f9beeae6c6301` |
| 32 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/instance-source-edition-2.md) | 267 | `declaration-track:330725bb4c87c94947033df2b0046c8dc302510835780e03f1c866c155dfdf12` |
| 33 | `lemma` | [Opens.isDominant_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/opens-isdominant.md) | 269 | `result-track:19e2a66c3a12667ac2d4783998d2252408a0caa225aa7a66394096896483ede7` |
| 34 | `lemma` | [Opens.isDominant_homOfLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/opens-isdominant-homofle.md) | 272 | `result-track:2e31c77d58c77b57aa4e1b2a5672f92b8eabeb87585c6e174214942042a8e0d7` |
| 35 | `lemma` | [equiv_iff_of_isSeparated_of_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/equiv-iff-of-isseparated-of-le.md) | 279 | `result-track:ba516c406416337ffe75d33b020806f09feeb96c0f5ec31c9a1dc78cec93f902` |
| 36 | `lemma` | [equiv_iff_of_isSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/equiv-iff-of-isseparated.md) | 291 | `result-track:35f01b078e9bc7eeaeb4d631e007bd861516212e0b94329837c1fdb58221ffc6` |
| 37 | `lemma` | [equiv_iff_of_domain_eq_of_isSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/equiv-iff-of-domain-eq-of-isseparated.md) | 300 | `result-track:62efc2aa74ca85b07257a37a22cb99a1c523686588663a79b410e3119249b072` |
| 38 | `lemma` | [equiv_toPartialMap_iff_of_isSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/equiv-topartialmap-iff-of-isseparated.md) | 311 | `result-track:7c3ebaa3d5e6c354d9d170963b49eca258b2ec9190ae424c8a49d8fed7c5f4f6` |
| 39 | `def` | [RationalMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap.md) | 323 | `declaration-track:9ddd1b2f3644ef7bd90184e10a9118836905f71446c607e01bd9892c11952652` |
| 40 | `def` | [PartialMap.toRationalMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap-torationalmap.md) | 330 | `declaration-track:f85891a3c343f548f5d4c74c16312001d7c4848adc68d7ab185c5fe278e08679` |
| 41 | `abbrev` | [Hom.toRationalMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/hom-torationalmap.md) | 333 | `declaration-track:3d1aa8752a6d9c51c90416e72c48e14a1905d729aefe8fbb7efcf14dc1a6fcf6` |
| 42 | `class` | [RationalMap.IsOver](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-isover.md) | 337 | `declaration-track:84dd0f534ad72135ab046c3bd82366641ea7291462eace914b33ecddae7a014f` |
| 43 | `lemma` | [PartialMap.toRationalMap_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap-torationalmap-surjective.md) | 340 | `result-track:6efc8a9853624eba2231c226bab26730dff22139992fdafed16435b66dc01ceb` |
| 44 | `lemma` | [RationalMap.exists_rep](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-exists-rep.md) | 343 | `result-track:a99ded45172595b36903e46b446fbba576769d0ab622f5b2310c3f2f5a01574d` |
| 45 | `lemma` | [PartialMap.toRationalMap_eq_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap-torationalmap-eq-iff.md) | 346 | `result-track:73be4134c44ef135b348d717ec5bc55297fa9c94059334db81d470de71056fda` |
| 46 | `lemma` | [PartialMap.restrict_toRationalMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap-restrict-torationalmap.md) | 351 | `result-track:08637ec0b8204d6b91001e541ded233611c85a62d593123e9ccb508c2f9a899f` |
| 47 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/instance-source-edition-6.md) | 356 | `declaration-track:bd874ac5047ee5183a10cd1be6eb6be447316ee80fb434e6a856c59fcaf33433` |
| 48 | `lemma` | [RationalMap.exists_partialMap_over](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-exists-partialmap-over.md) | 360 | `result-track:affa36daa5f7d39b70df1b9e183f0f3dba1d293efc05d6005a8094b3f1ebc4d0` |
| 49 | `def` | [RationalMap.compHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-comphom.md) | 365 | `declaration-track:f68da00f24e3ddb9328e01e97e44421a382d64f3ec31b878767e2c73dd3001cc` |
| 50 | `lemma` | [RationalMap.compHom_toRationalMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-comphom-torationalmap.md) | 374 | `result-track:4e946072c398df83be306b85cdf941a7cee2ca20276b892cd1ed3a2c162b7051` |
| 51 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/instance-source-edition-3.md) | 377 | `declaration-track:6a4c351ed06e4be683f6a5a018944addf4ba098908d272f4867d12d10590bd9c` |
| 52 | `lemma` | [PartialMap.exists_restrict_isOver](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap-exists-restrict-isover.md) | 384 | `result-track:39f329f074ac8d2744f15f4d811ffffcd91b59b36a54209634751e9e3c12daa8` |
| 53 | `lemma` | [RationalMap.isOver_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-isover-iff.md) | 390 | `result-track:40d988705d28d7997d367f498f5fa5572420d8177471b259321ae0fb8de37e6c` |
| 54 | `lemma` | [PartialMap.isOver_toRationalMap_iff_of_isSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap-isover-torationalmap-iff-of-isseparated.md) | 402 | `result-track:8f5639f06cefe514a1c39be77a48c645a54849fd67976829ea13b0d1e2e3a40d` |
| 55 | `def` | [RationalMap.fromFunctionField](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-fromfunctionfield.md) | 415 | `declaration-track:761e1d13097f05eafa9f1f7d5877eaf5e24699e880961c38043445fc8eb92fa7` |
| 56 | `lemma` | [RationalMap.fromFunctionField_toRationalMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-fromfunctionfield-torationalmap.md) | 423 | `result-track:f19456c636a4030fea7fcb565354f581239a80a7ff027b8b6b508cea7dd56550` |
| 57 | `def` | [RationalMap.ofFunctionField](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-offunctionfield.md) | 431 | `declaration-track:c4254e3c1ad46c16ac52ddc8c485262b1cfee8f29cd0d6d4b67690a2e82c4f4b` |
| 58 | `lemma` | [RationalMap.fromFunctionField_ofFunctionField](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-fromfunctionfield-offunctionfield.md) | 435 | `result-track:a8d91d52cb253f9949da552b626c460d4c51ec38025534cfb12cbac810cd20c7` |
| 59 | `lemma` | [RationalMap.eq_of_fromFunctionField_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-eq-of-fromfunctionfield-eq.md) | 440 | `result-track:30d758345a43f6f5cca95659251e2e750ccf2e96dcbceef015961777883c6a21` |
| 60 | `def` | [RationalMap.equivFunctionField](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-equivfunctionfield.md) | 452 | `declaration-track:4ca74b1e4bbe3ef6e9fa6f693933ffa890e8ece451cbd34030947aeb2a9fe992` |
| 61 | `def` | [RationalMap.equivFunctionFieldOver](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-equivfunctionfieldover.md) | 471 | `declaration-track:c1dab991bd168e5df398ba80354bea6ffb8157e675179e7e515f3e071002ceac` |
| 62 | `def` | [RationalMap.domain](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-domain.md) | 483 | `declaration-track:226e791df83268c705740011d45b5b0491fd28b7ff890adb406961c9647875c1` |
| 63 | `lemma` | [PartialMap.le_domain_toRationalMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap-le-domain-torationalmap.md) | 486 | `result-track:90cb674aae94297b9f6a18c8d1221e0cf26a70ecc4be370cfc39f20dde13fcf9` |
| 64 | `lemma` | [RationalMap.mem_domain](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-mem-domain.md) | 490 | `result-track:1b06e7451b36bafe72a71cd4e9142c7b88a1009924327fd1881adbe4d16ef00c` |
| 65 | `lemma` | [RationalMap.dense_domain](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-dense-domain.md) | 494 | `result-track:734fd89dc8df757c35a68d18140b2db38f7f46e0496bdb7c040b29d70d05389a` |
| 66 | `def` | [RationalMap.openCoverDomain](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-opencoverdomain.md) | 500 | `declaration-track:7f685a71e9fec1e06ccbb29d1931ecd832685fb2a0f2e7c355ab769f3295c65c` |
| 67 | `def` | [RationalMap.toPartialMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-topartialmap.md) | 510 | `declaration-track:28d74c3b7a0bdffc681321b97f568c4dd01a0e2a7e80066030bc0ffe91730bd7` |
| 68 | `lemma` | [PartialMap.toPartialMap_toRationalMap_restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/partialmap-topartialmap-torationalmap-restrict.md) | 527 | `result-track:894fe5d9fbd2e31c1ec1b5b8b7e94998d03259ff31da82663149a311a1ae4b04` |
| 69 | `lemma` | [RationalMap.toRationalMap_toPartialMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/rationalmap-torationalmap-topartialmap.md) | 538 | `result-track:531ccf8a926d00e589c812a4cb2a0540b5d336ab2d887fc2a787e6cec614e3d4` |
| 70 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMapNamespaced.lean/declarations/instance-source-edition-4.md) | 547 | `declaration-track:7e5b1d01c9914aeb9bd9783f51b161e8aeb58a1c3c810f85873e629bb43363c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4bfd6f95385ad8c87865b15dfb90da57cbc32c70996bfaaf5aaae7be15a6afc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
