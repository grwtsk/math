# Verification target: Saturation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "612b79bf82c53cdca456542ea14a94110ae45af1",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant3e73470cb59d0c8e1a37578663505fe738cb355592764a85e2969c463a48b107.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `612b79bf82c53cdca456542ea14a94110ae45af1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant3e73470cb59d0c8e1a37578663505fe738cb355592764a85e2969c463a48b107.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant3e73470cb59d0c8e1a37578663505fe738cb355592764a85e2969c463a48b107.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulSaturated](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/mulsaturated.md) | 48 | `declaration-track:e5d28f21a6cc6972cf4d724738e5e96245243af6df42a6ab7476e395b7a7aa59` |
| 2 | `theorem` | [mul_mem_iff](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/mul-mem-iff.md) | 57 | `result-track:92609899337d6411a6c35a7e0f8a01f0b866ca8d1aa92235dd9226ab648f6eba` |
| 3 | `theorem` | [top](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/top.md) | 61 | `result-track:aa4bfc9556cb57a7ebb1af659735e4f91d7f8f6a9cbca8bafac92668cb38b95a` |
| 4 | `theorem` | [inf](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/inf.md) | 65 | `result-track:d43fd87f73c00e3cb5aa04797d5befb2ff6a95c824ea630b7497f9be74cfee14` |
| 5 | `theorem` | [sInf](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/sinf.md) | 69 | `result-track:02f9eb6e115fca31fcdb043eb4871bd2b505f1e73c9b2c3fc5032e4a02ade1c4` |
| 6 | `theorem` | [iInf](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/iinf.md) | 75 | `result-track:a2c4c92af0194ab3fad137783982f9822ccbef3ef5d1ee820a26a36e35813d2b` |
| 7 | `theorem` | [of_left](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/of-left.md) | 81 | `result-track:37ddd08346229adbb823cea1001108ac039d3007ac9d16d0cc207e5759e0615a` |
| 8 | `theorem` | [of_right](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/of-right.md) | 87 | `result-track:ac15fd0787879577c3753e4f1fa617f1d8eda36ff0be7bdcde82084635811dd7` |
| 9 | `structure` | [SaturatedAddSubmonoid](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturatedaddsubmonoid.md) | 97 | `declaration-track:357e19c55c11d03fa5434d95cc4efffda8764fa6860497ed88e3437813cae628` |
| 10 | `structure` | [SaturatedSubmonoid](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturatedsubmonoid.md) | 101 | `declaration-track:867dcbbc71eff65e61d823e51384abcecc3bb0cce2d150639a081275dfb1eb7c` |
| 11 | `theorem` | [toSubmonoid_injective](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/tosubmonoid-injective.md) | 110 | `result-track:66f8d20e8d5d4acaa2ddab930ffe39bf091ac147ab9de3beab6b004d07bd2acb` |
| 12 | `lemma` | [ext](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/ext.md) | 114 | `result-track:921a231c44ce1c3566c81c4a35d523a544a859aeef4246447c55a8adb4e6d864` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/instance-source-edition-8.md) | 119 | `declaration-track:fd465a4f5a1b317f34b8541a8aae2d4640a93d70b8f51436dd681c9ee113c484` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/instance-source-edition-5.md) | 124 | `declaration-track:a4384addb5c665b1cb44280465272f3c84e09e02df4e3c3918cbfdc8936e89f9` |
| 15 | `lemma` | [ext'](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/ext-source-edition-2.md) | 127 | `result-track:b33b83490b0947567f1f7b91b481a0de2a4ed348799431c835ad01ada3920009` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/instance-source-edition-3.md) | 132 | `declaration-track:92b53f853de4a7c603005c80f1ad6b1d9fefb8d3331d410020bd0ed18cf23ebd` |
| 17 | `lemma` | [mem_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/mem-tosubmonoid.md) | 137 | `result-track:36fe74391d604fb14c69dcab45c370e3afd9b9e88b0b8031afb14a54a03df95f` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/instance-source-edition-7.md) | 141 | `declaration-track:f5c718ecf0731c188e36f162adc4efaa67fb79ba0a8f4735d6866c28177bf3f6` |
| 19 | `theorem` | [mem_top](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/mem-top.md) | 145 | `result-track:2d26cade9af7a221a3f8026be6d2b4ab71e18a0a334a6ff759c3488d8b799241` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/instance-source-edition-2.md) | 149 | `declaration-track:2182cf8ced90a7788b7c62cbd3245af8ed7f3237599970cf721a264b99591b98` |
| 21 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/instance-source-edition-4.md) | 154 | `declaration-track:9aa43b9ca270cc771b2d95b9ae1d4908c1fd270febfdbc8fe81dc9b7f80ff8da` |
| 22 | `theorem` | [mem_sInf](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/mem-sinf.md) | 164 | `result-track:c86bb791f761ffdb42435993fe1c0c8c78189a7abf3dab299b198f1061016416` |
| 23 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/instance.md) | 169 | `declaration-track:205ebf102ac1bd6ffc70deb9d66819edf2c916b1f0298402d3896a2f046b20e6` |
| 24 | `def` | [saturation](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturation.md) | 185 | `declaration-track:930ab60541069bab5266037bc9458cb27ae838e41b7dad15d7d309c3398e0834` |
| 25 | `theorem` | [gc_saturation](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/gc-saturation.md) | 195 | `result-track:f6bc9faad2e90fcd776fc51aa4b78d74944046857cac167f7244238275755342` |
| 26 | `def` | [giSaturation](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/gisaturation.md) | 205 | `declaration-track:12b4cbb3b48d896505f3304578d23ef2b8d5834746e8ff3c1dad0696639b24a8` |
| 27 | `theorem` | [saturation_le_iff_le](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturation-le-iff-le.md) | 214 | `result-track:e8318bf4986ba0068467b1300376aef28868da05663a4102d5b58485c42c97da` |
| 28 | `theorem` | [le_toSubmonoid_saturation](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/le-tosubmonoid-saturation.md) | 220 | `result-track:aa183a81c82b7603b29ec18cb52ef63b1eeaaab19d7fb3f125c60bbf387289c0` |
| 29 | `theorem` | [saturation_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturation-tosubmonoid.md) | 223 | `result-track:2c922ad576cfc24505eb7bdf8b6e7780a4f3498c43a09030144c42305ab67dfb` |
| 30 | `theorem` | [saturation_induction](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturation-induction.md) | 226 | `result-track:a51e50706bf004788e4395862b89961e9c0c8778b5b37eb5af05aefdf12bb85d` |
| 31 | `theorem` | [mem_saturation_iff](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/mem-saturation-iff.md) | 248 | `result-track:115cb60af54bac167e97c30a2e3e7f9ae4f16c370c50762659be72dd9cc82494` |
| 32 | `theorem` | [mem_saturation_iff'](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/mem-saturation-iff-source-edition-2.md) | 260 | `result-track:9eacfc31613229f47534af03be41e73dfd6c6a2546a76dc746ae9a753b6d39bf` |
| 33 | `theorem` | [mem_saturation_iff_exists_dvd](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/mem-saturation-iff-exists-dvd.md) | 263 | `result-track:e98db7592f7962830bb0ba8c0dd48132309598f3efa28e786fe180cbf0b4aadb` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/instance-source-edition-6.md) | 273 | `declaration-track:a9bea7e095313767049ca39ac5b4458930d3be7288a010f59f8fab810ea8e4ee` |
| 35 | `theorem` | [bot_def](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/bot-def.md) | 287 | `result-track:923bf03656a32cef4626d2123bc8d4691c445451a4be1d31226eed055bd4895f` |
| 36 | `theorem` | [sup_def](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/sup-def.md) | 290 | `result-track:7f0f2d9ee69429146b6b5030787e5f2ee79737bb3d6d7a75d47c2d6bb367a069` |
| 37 | `theorem` | [sSup_def](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/ssup-def.md) | 294 | `result-track:ded5688be69f4c010cf5450053c6282d10299ce6ba845c458b5a35814fbefee0` |
| 38 | `theorem` | [iSup_def](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/isup-def.md) | 298 | `result-track:b5e28d633cfd65eb1e7845acefb4e31ba80cb342fdf33d7f91ce9f67cfdc72ab` |
| 39 | `theorem` | [mem_bot_iff](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/mem-bot-iff.md) | 308 | `result-track:5b27a1a33d6c69dcdcde2ef2097e0188d6e3eb1b3c594e779f82a97a7260f989` |
| 40 | `theorem` | [saturation_bot](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturation-bot.md) | 319 | `result-track:373b8249b8c0558ccd8d15df0e8a3f4d79bcbb5b1913ca0579a610efc89ae0f2` |
| 41 | `theorem` | [saturation_top](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturation-top.md) | 322 | `result-track:1392b26f4008166c87c6bfb754da899bff148a88a0106882fbc30907571266fa` |
| 42 | `theorem` | [saturation_sup](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturation-sup.md) | 325 | `result-track:5fe9189930a8f6f9a5dfff2931fa41aede5cb84c0fc769f892b3aa023483ca72` |
| 43 | `theorem` | [saturation_sSup](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturation-ssup.md) | 334 | `result-track:0790925948b61daf0014bcab4b88332875da8628025762f53b315d682dfd7584` |
| 44 | `theorem` | [saturation_iSup](../../../../GroupTheoryAndGeneralizations/SaturationPublic.lean/declarations/saturation-isup.md) | 338 | `result-track:3af1840b7f674eb0e78790ad2d83019177ff769a27073254c139014ffd230c49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfecc422421d0d71ce1a9e56646d0f2bb14ce22720078be05ad2931026212318 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant3e73470cb59d0c8e1a37578663505fe738cb355592764a85e2969c463a48b107.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant3e73470cb59d0c8e1a37578663505fe738cb355592764a85e2969c463a48b107.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
