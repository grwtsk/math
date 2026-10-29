# Verification target: Spaces

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9938e61330ec24ac09118600ca0510ec25a8749e",
  "lexical_observation_count": 128,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant40eb30ab0a7d04fd0c11ff7a698d7882099f3cff31ce22b04a11bdb70dedfb49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9938e61330ec24ac09118600ca0510ec25a8749e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant40eb30ab0a7d04fd0c11ff7a698d7882099f3cff31ce22b04a11bdb70dedfb49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant40eb30ab0a7d04fd0c11ff7a698d7882099f3cff31ce22b04a11bdb70dedfb49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Payload](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/payload.md) | 28 | `declaration-track:66a9dd6cb4ac83d0be52eff0d5aa6941855030e2f0276e1ef13c1ad7ad1d0d6a` |
| 2 | `abbrev` | [Frame](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/frame.md) | 33 | `declaration-track:ca11977ca4e5d2d359a66344de6daa6d6368fe9582c1189007844daed3e63178` |
| 3 | `abbrev` | [ContinueStack](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/continuestack.md) | 34 | `declaration-track:f0e78a6126aa77519ef218a29243208fa107144cb138260a9d0656cc132edaf1` |
| 4 | `abbrev` | [ExitStack](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/exitstack.md) | 35 | `declaration-track:c477ef5781044e7c95f3e7312bff23512f160d3a827300fcb1629cbb3b2a533a` |
| 5 | `structure` | [Table](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/table.md) | 37 | `declaration-track:c6cc38e113f0f4db5e4299e6e85a3cfee15b0a0d04cebea4201a4eac5b0744bb` |
| 6 | `def` | [map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/map.md) | 45 | `declaration-track:2870cb97e89a29f008715e709e9212a0cbf3a7839fce67468bc4686545507e65` |
| 7 | `theorem` | [map_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/map-id.md) | 50 | `result-track:c8e73c58d754bc4a94b8ea83b342b70473a73ba884e4a5e3e2989c21c2717013` |
| 8 | `theorem` | [map_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/map-comp.md) | 51 | `result-track:cefda6f7a603c09eb30fdba3ec515d6715033058d89721241149fe2e5e459d9c` |
| 9 | `theorem` | [map_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/map-injective.md) | 54 | `result-track:e3e899bea986768a7951087993ac0e11019951782b424f3b2f340ce25fcf5f3c` |
| 10 | `theorem` | [map_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/map-surjective.md) | 59 | `result-track:a616d84de7ea2fd328007950e9244e296bcf3c631df70b2830e617d20f18b33d` |
| 11 | `def` | [mapFrame](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapframe.md) | 71 | `declaration-track:64ced1d76fa2662e0ab96f5d14d4f8b38b18afa4fd2db046baca98ca6fe18f1f` |
| 12 | `def` | [mapContinue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapcontinue.md) | 74 | `declaration-track:a82c8b09d1ea0fa67b67aaaaaf4d5751439c3a965e63208cce806a84fcf6226a` |
| 13 | `def` | [mapExit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapexit.md) | 77 | `declaration-track:cbd4e5a98f7d641eaa058d9cfb90aed286b6d10579f35e602c60c70f87e01800` |
| 14 | `theorem` | [mapFrame_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapframe-id.md) | 80 | `result-track:9cd101175e1358b1a2fee97b5296457f904c03c307d6cc07882a7d237d771c3a` |
| 15 | `theorem` | [mapFrame_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapframe-comp.md) | 83 | `result-track:b707e67431df1bba0daacf0dbd1b7dafce5114fe898edae408c64800c1ce42cc` |
| 16 | `theorem` | [mapContinue_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapcontinue-id.md) | 87 | `result-track:a0a1d67f123378e8832551dd758529f31531fb33c886559c7ed5de6d0e682f22` |
| 17 | `theorem` | [mapContinue_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapcontinue-comp.md) | 93 | `result-track:4f048a8a20ad5adeba08e9877275c5f7f5d1730769528964af1e93ec2e5cf088` |
| 18 | `theorem` | [mapExit_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapexit-id.md) | 100 | `result-track:d4b096c12cb3c7b041aaf109da34fd22b717761af5e787270a9dbcc4e3a60dde` |
| 19 | `theorem` | [mapExit_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapexit-comp.md) | 103 | `result-track:41cfa5466390436b2baf7aeb0cd7128fd5161ceaec4c95f204518238c3a4b0cd` |
| 20 | `theorem` | [mapFrame_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapframe-injective.md) | 107 | `result-track:a12cbffd22eeed48e5a70ee5617344c63767a6af2c186362e5b94b6dabb0ef67` |
| 21 | `theorem` | [mapFrame_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapframe-surjective.md) | 114 | `result-track:abf16d92f6ac299191fc98725311f6ff17ec57cf9ad59dab5e792106181b7bcf` |
| 22 | `theorem` | [mapContinue_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapcontinue-injective.md) | 120 | `result-track:38fc510558453f51d4d60242b21b9a87f1c65542fdf2421a0452a0fde85a74c3` |
| 23 | `theorem` | [mapContinue_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapcontinue-surjective.md) | 124 | `result-track:8a2d94597477bc57500b29de315dbfe678b24776ae41cd6a0dd696c4461dde19` |
| 24 | `theorem` | [mapExit_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapexit-injective.md) | 128 | `result-track:39af9982ba85dca75188c383581df3a54cccc9645c68fdb5872989ff960a554a` |
| 25 | `theorem` | [mapExit_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mapexit-surjective.md) | 134 | `result-track:db032c09f59d7f459e6b3ba4996f8569ab62a7071b0cffc67aebef1e76aeda15` |
| 26 | `def` | [relabel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/relabel.md) | 143 | `declaration-track:75c5161da71320ed78fd38ce803aedb8a6e4afac88b09d4d0fe4aa5f98c878f1` |
| 27 | `theorem` | [relabel_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/relabel-id.md) | 147 | `result-track:91c87bdba9df7342f64f26b158a104a0b463f9c50cc773dfd0d33dc31fb2f9f2` |
| 28 | `theorem` | [relabel_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/relabel-comp.md) | 150 | `result-track:07fe7d91fc0d256c0fcc3e4528e839ae12433a953101c033fcda8f8fe321023d` |
| 29 | `def` | [default](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/default.md) | 154 | `declaration-track:a62b0c0e33dc16216c51885708e41479829738a23571416c54088236cb6fc498` |
| 30 | `theorem` | [relabel_default](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/relabel-default.md) | 158 | `result-track:1b24d2a1f8f518dd22cc35abdce76bfdbf454359d0a3b2815819aee5ed6cba99` |
| 31 | `theorem` | [relabel_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/relabel-injective.md) | 161 | `result-track:af804607aa73e5ae148601e270ebba73ff99f6e3f7a4a5bfd4d71ca81fba12d1` |
| 32 | `theorem` | [relabel_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/relabel-surjective.md) | 172 | `result-track:20ec606fda626b0339c1348f931f6b3c7f81a0a3e2dea463e68c2ed41232e97b` |
| 33 | `theorem` | [relabel_range_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/relabel-range-iff.md) | 181 | `result-track:aefe320555f8a45dad33a5323d549e424eddcb5d558297a6b7930eba70aa628d` |
| 34 | `def` | [slice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/slice-source-edition-2.md) | 203 | `declaration-track:fbd3851fd96994a39db4a2a9e223f2fab657db07bede2bffa2d1730fcf01e37b` |
| 35 | `theorem` | [slice_relabel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/slice-relabel.md) | 207 | `result-track:63b986adf58a7fbb6defa63042b40d2b8ee964981cec07b1f5174a844cacd02e` |
| 36 | `def` | [Stage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/stage.md) | 213 | `declaration-track:cf7bf4c5b30f40545884d594a4ee2aa51af8c3ca9e4135edb65c5613a78d58d9` |
| 37 | `def` | [step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/step.md) | 218 | `declaration-track:102352028356fd3d3e649cec6cfc0abb18a9a2ac209273a4568de8dd8e33e727` |
| 38 | `theorem` | [step_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/step-injective.md) | 225 | `result-track:e2f40bfdaa588cd967c0661ea8b7b7ef416bb2f18127feee45e88fe3d7a308f9` |
| 39 | `def` | [inclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/inclusion.md) | 231 | `declaration-track:3a4b1d5c431e7fe1b43ecafe4cac612ed506b6a23443178d90414395271220b0` |
| 40 | `theorem` | [inclusion_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/inclusion-self.md) | 234 | `result-track:f49ba2e585d5d36f5a4541d46c85da85bc3b55985c22e40ea19cb0aef49815db` |
| 41 | `theorem` | [inclusion_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/inclusion-succ.md) | 237 | `result-track:e741edacd4e3804dc330935e91c38830ce76054f976a19c55c906d07e26765de` |
| 42 | `theorem` | [inclusion_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/inclusion-trans.md) | 241 | `result-track:f5cbac581241f017f88fa2872acaf11b787f5a5eb1d1f44ff7648d71b3eb50ca` |
| 43 | `instance` | [stageDirectedSystem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/stagedirectedsystem.md) | 245 | `declaration-track:198d1bce7882be63303ba9fa3afd22acbe8c73fbcb2252a522a8575b7efb8a5d` |
| 44 | `theorem` | [inclusion_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/inclusion-injective.md) | 250 | `result-track:cac713a17a1566929a2924ea52c78e81539597e348cb583bf3e2f5a32a0619e8` |
| 45 | `instance` | [functionFunLike](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/functionfunlike.md) | 259 | `declaration-track:64795305683bc9ba67ddfdaccd3cda76dea4a3dc6a77d187cdabdc5bb050407b` |
| 46 | `instance` | [stageCoeDirectedSystem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/stagecoedirectedsystem.md) | 263 | `declaration-track:a795b3e2bedb42fc08af30657b1a472e9d179318300d21c9c6d14fb8ec36c74b` |
| 47 | `abbrev` | [Minus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/minus.md) | 268 | `declaration-track:d6ab7830934b4106c301ed3e7a153134ec49fb96271b549f7f92adcb867a200b` |
| 48 | `abbrev` | [Plus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/plus.md) | 270 | `declaration-track:d450d1d6c0c467b15c82f8dff0b52aabf7b1ea11895c018288931b7dfd6b1f1a` |
| 49 | `def` | [embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/embed-source-edition-3.md) | 273 | `declaration-track:7499d2ad392fd71aff6f36554efcb5abaf3555733e2e23b1344ad6801d18994f` |
| 50 | `theorem` | [embed_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/embed-injective.md) | 276 | `result-track:4f4ac318b48d1191b4eb70ebd0f175497ee5296c07a85ca5fcc84cbf909feb61` |
| 51 | `theorem` | [embed_inclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/embed-inclusion.md) | 279 | `result-track:08d12ebef97f1cb1afd77a776fd819f2d2cfdf59a0c0c86c9dcaad8a5771ba57` |
| 52 | `theorem` | [embed_step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/embed-step.md) | 283 | `result-track:d319071e91b2a484ca371dfde50a7fbf9eafc0ed3c26ee9d4c08cd293da9d69d` |
| 53 | `theorem` | [exists_embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/exists-embed.md) | 287 | `result-track:88697e0f58c280404a4e77ca5e5af856aa2f0b956ce0854360ba200ea2c4b033` |
| 54 | `theorem` | [exists_embed_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/exists-embed-succ.md) | 291 | `result-track:1793787e8a5504b79707b5434904ec6de48bd3e512880af8018453c0165a1135` |
| 55 | `def` | [restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/restrict.md) | 296 | `declaration-track:ab1dfab1bcb48df2fc5762de38da9bcde092469921b930d88821972000adc666` |
| 56 | `theorem` | [restrict_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/restrict-surjective.md) | 300 | `result-track:54f590e24af84d0025f25aaff5c06b14883858fc88745b768de081defc95f7d9` |
| 57 | `theorem` | [restrict_compat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/restrict-compat.md) | 303 | `result-track:2de7fdbb0b17f806754ade27c953e27455f80f1829f848ea82808e7a5dde05fd` |
| 58 | `theorem` | [restrict_inclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/restrict-inclusion.md) | 310 | `result-track:80ed7308da18f11ba9a851e73227a993f3ca17d4143bcce39aad0c66c45c6239` |
| 59 | `def` | [stageBehavior](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/stagebehavior.md) | 318 | `declaration-track:07f077005d54e6fe387478b4174ffc434adce24ebd53ed9947b964d57e2ad625` |
| 60 | `theorem` | [stageBehavior_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/stagebehavior-injective.md) | 323 | `result-track:19e0a8e643f2ecf604a38f56aa419abaf63870ee028664543ee46e97680028a8` |
| 61 | `theorem` | [stageBehavior_step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/stagebehavior-step.md) | 328 | `result-track:49eac3ce0e269bffd7a4212b5467ce18ffa9e2a46d05cf91270d0681135aa7af` |
| 62 | `theorem` | [stageBehavior_inclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/stagebehavior-inclusion.md) | 339 | `result-track:5020306d59fc9258b9e940995ff5763fdb5a00656061a08264fac85169a37961` |
| 63 | `def` | [behavior](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/behavior.md) | 348 | `declaration-track:f0d4d3f8fd5a7b68e89db63394ebb0a089d910716c3ee07a6534464b04f3f280` |
| 64 | `theorem` | [behavior_embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/behavior-embed.md) | 352 | `result-track:e7185e41d88be36f13b9b184b8b0b8124a4c699af1959f4fa22f7b3b6aa34b11` |
| 65 | `theorem` | [behavior_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/behavior-injective.md) | 356 | `result-track:979542684ede2b8c3572cfd8967a2f696d047393f0a9787e877863d519fefa67` |
| 66 | `def` | [plusDefault](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/plusdefault.md) | 360 | `declaration-track:e010ab7118f68c54d42c70d95f33d1f43c08de85547faf0604ea7d2198a35ab7` |
| 67 | `def` | [minusDefault](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/minusdefault.md) | 362 | `declaration-track:ada32da022c88b0286a40e6d99077e44b707be94a4716d22fe9d90a4504335fc` |
| 68 | `theorem` | [behavior_default](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/behavior-default.md) | 365 | `result-track:961c69c20a77ce76ef63b536ef8a8a2cdb8348013fec5849856710b8fe0c6e42` |
| 69 | `theorem` | [behavior_range_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/behavior-range-iff.md) | 370 | `result-track:93cafa1481f64e4a2981c76164efa22eeaa75a7da23d9612be3297dff2bb8098` |
| 70 | `theorem` | [slice_range](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/slice-range.md) | 385 | `result-track:9fa26dc4d82541ccb28c580efe35f508a2ba843903004dc782cafc2bbefe7f80` |
| 71 | `def` | [minusSlice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/minusslice.md) | 391 | `declaration-track:95b5974fff281dc8b1c6a4466c3f2e30faece8a46083639d3b4126a0459ac597` |
| 72 | `theorem` | [behavior_minusSlice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/behavior-minusslice.md) | 394 | `result-track:e69d5737f97c347d089c29fda198f0a0f0514599b5e56212e408dbefd88d0825` |
| 73 | `structure` | [Schema](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/schema.md) | 411 | `declaration-track:39d27861774f200958aed7b2842a898d11070d4e9a7c56e5c920d06ebe10acf4` |
| 74 | `inductive` | [Path](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/path.md) | 419 | `declaration-track:a6fb7583b6e830b91076d71b1ccc9df5bf3ae8dd412fe6ecdcf7d464612c7db4` |
| 75 | `inductive` | [Slot](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/slot.md) | 425 | `declaration-track:80429000c1c74b2a7c65b73779f92e2ad0c69bc1a9ea592ee2218e37a13a545a` |
| 76 | `inductive` | [Dependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/dependency.md) | 432 | `declaration-track:1ec71b4b93bcb53a0923e8e03bdbe24544d726155c09e3c6effeafbcedf3c620` |
| 77 | `theorem` | [dependency](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/dependency-source-edition-2.md) | 438 | `result-track:ece2cd09ea78e2de8afa29a0438ba9145788296e95c2ceecc8c1fa41c509fcea` |
| 78 | `abbrev` | [Parameters](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/parameters.md) | 444 | `declaration-track:5c02570bf642e25974a1f5e171441237ccb583b0d405a097724182a7268d73ea` |
| 79 | `abbrev` | [FrameParameters](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/frameparameters.md) | 447 | `declaration-track:d7c282cea1897308d7d67cf271576724f50f9d814151c5da8c1ca5c313724135` |
| 80 | `abbrev` | [Table](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/table-source-edition-2.md) | 450 | `declaration-track:e0b3a75eec5d06194028cbb18e39cdfdecc34757f4872cbcdc049627015722c9` |
| 81 | `def` | [Space](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/space.md) | 453 | `declaration-track:57541e5997c29cddf3ec64b0dda367c7b7c95df05f3b153c6d1fbaa9ae3c6c7b` |
| 82 | `theorem` | [space_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/space-eq.md) | 456 | `result-track:976a9f1da21d92b3fbdcd8ca2a8e4b4e51a21c3fa97e10c71d9c30e3bc9ab796` |
| 83 | `def` | [unfold](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/unfold.md) | 460 | `declaration-track:c985e0a9e2f4d974aa6529f73293a7ba9fcc4407049d2a0819113f35e48532ad` |
| 84 | `def` | [nil](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/nil.md) | 466 | `declaration-track:fe5fa01dbd9ade639e1e6af81f5ca95fd1666ad6466f41c9e2c3a8b8898da600` |
| 85 | `def` | [head](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/head.md) | 468 | `declaration-track:8a55e203a39a5a07979ace977c90c52a41f02b90431d35bfff1cddb64358bbad` |
| 86 | `def` | [tail](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/tail.md) | 472 | `declaration-track:c94d301d913589715003ebaff98aceeb451b2267f358c46cb17971674919f357` |
| 87 | `def` | [cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/cons-source-edition-2.md) | 476 | `declaration-track:a54106c0f82cc467fbf2cb91098910f046bf7f2d8fc3838de1aa593326dd120c` |
| 88 | `theorem` | [head_cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/head-cons.md) | 481 | `result-track:41d470664ecd575ef49fe93f405009584384359cc8f4b781cb296a81038d22b2` |
| 89 | `theorem` | [tail_cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/tail-cons.md) | 483 | `result-track:bfe400c24242211fcba5ac75cb41125f491eaf3f0a98980f03a31e79eeee83f5` |
| 90 | `theorem` | [cons_head_tail](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/cons-head-tail.md) | 485 | `result-track:94fd3f7d3bffacc1a1e4561825484d37d925f65d4eae7da1c391a57913ee7f71` |
| 91 | `theorem` | [nil_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/nil-unique.md) | 490 | `result-track:a60daa042c0c6a9aefc07ff2bf27d4e60c4f5185db0493f6d824afea6540ab3d` |
| 92 | `def` | [prefixEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/prefixequiv.md) | 496 | `declaration-track:e299fdaf32e26ad7627ffa91f6b8693072c7cf569bbcfc25f39ebce58e958f7e` |
| 93 | `def` | [distinguished](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/distinguished.md) | 524 | `declaration-track:92ceb3fdebefde316313c2ee005a66736cbc1a4596027e63ad9b7de29e93e436` |
| 94 | `theorem` | [distinguished_base](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/distinguished-base.md) | 527 | `result-track:729a1f598862b412a69425cdcd80581b92b830da2a5ba4002ebeb1d69c48e323` |
| 95 | `theorem` | [distinguished_next](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/distinguished-next.md) | 531 | `result-track:68d6656b44a056ff0caae8675f668eeab4e62d482c4b206716c92ffb2caa46bf` |
| 96 | `def` | [InStage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/instage.md) | 545 | `declaration-track:d919f8f063d2966d26608295367175f1636028ec41a41eb5ee83f16b64084ac9` |
| 97 | `def` | [Agree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/agree.md) | 549 | `declaration-track:1807960e6cba1e0bd5624761e1dec23fca08b7177e6ac64f08e268374906805c` |
| 98 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mono-source-edition-2.md) | 554 | `result-track:2d23ff0e0edc218b6f74af83d5b51b181797e88f3377f53c253a0ee3cf02ba69` |
| 99 | `theorem` | [not_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/not-zero.md) | 559 | `result-track:e1560545c0198caf16083216705c8a9cddce08f28f8f4c44d17e6a161f1576e3` |
| 100 | `theorem` | [exists_stage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/exists-stage.md) | 563 | `result-track:63103edf2db9540fe48657ac23f4f5bde098d019b0474a98400142868793741b` |
| 101 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mono-source-edition-3.md) | 570 | `result-track:6623fc92cd726177da022231501d63a84a75f488cecb7b04f1f027ff9fcbbd56` |
| 102 | `theorem` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/refl.md) | 575 | `result-track:95e2178a305662709fd5df6f9e766cf35c13e8f2665f1d06b962d298f32cd54a` |
| 103 | `theorem` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/symm.md) | 577 | `result-track:2d9b5263680942e82cefe31195e4766e4b9f07b6341ff41c6995d3217b6224cd` |
| 104 | `theorem` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/trans.md) | 579 | `result-track:8492f5c26140f39c96f9ffd66eed567caffe7f01243270a38ce3de19e94abf8c` |
| 105 | `theorem` | [inStage_succ_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/instage-succ-iff.md) | 586 | `result-track:320686482f09db19f6ca45e3d0bb3de8b730e1498163300c056d4b95c3349cd0` |
| 106 | `theorem` | [exists_inStage_behavior](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/exists-instage-behavior.md) | 601 | `result-track:e4359b11a44f528508fb966791257319b80169cec9ead1aff46e3bafd56d2edf` |
| 107 | `theorem` | [inStage_minusSlice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/instage-minusslice.md) | 612 | `result-track:5b9a06682228de21c906bb4f0f8f6ab35c820357db99388e8f2f3fc2393c51ea` |
| 108 | `def` | [lambdaTable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/lambdatable.md) | 626 | `declaration-track:1c7e191f43d001939138bc03bec8d3acc34ba8cdb919ef0665819fae361f54be` |
| 109 | `theorem` | [lambdaTable_representable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/lambdatable-representable.md) | 638 | `result-track:0ef0596dd88c790981dcc241923966b84a0624814a58f2d24ce11a124e624b3c` |
| 110 | `def` | [FrameBound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/framebound.md) | 681 | `declaration-track:166f4adc802e9dd36f7859011df8d361d4d3c082bdcaf2100272a1354bf30be8` |
| 111 | `def` | [ContinueBound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/continuebound.md) | 684 | `declaration-track:4f349f0762c9b4c399e81211f86b1567cc06a353036a2ef6b2059198988abb43` |
| 112 | `def` | [ExitBound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/exitbound.md) | 687 | `declaration-track:522a1c7fabc3e20e016f7d02fd46b4e26b2a60569c920d49147d8a4ee96d69ba` |
| 113 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mono.md) | 692 | `result-track:264d00fc6cb264a3bd81790849cbbc39a50f5b9136b459205d64b20962b30ed4` |
| 114 | `theorem` | [exists_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/exists-preimage.md) | 695 | `result-track:a36e292149cd68303ee560826b6749f37f84e3255b4334da96e2a6cec9095438` |
| 115 | `theorem` | [embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/embed-source-edition-2.md) | 705 | `result-track:1323b9f3c75f335f1e7234a70ac824dd9ad75af1f21daaa01f03ad48f2709bca` |
| 116 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/mono-source-edition-4.md) | 719 | `result-track:73dae04dd019a82d5219a0057a6543a46598e39fdf793131823f4ae42071c198` |
| 117 | `theorem` | [exists_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/exists-preimage-source-edition-2.md) | 722 | `result-track:a8f931c55afcfaaac09a7e98fda80a018e38d6a43b122856ba57df4c62d45da5` |
| 118 | `theorem` | [embed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/embed.md) | 731 | `result-track:0b61be29e1dbeb7ed83c00cd0a42271dbbdc330240ca85fd08a02fb2e4ad77b1` |
| 119 | `theorem` | [cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/cons.md) | 737 | `result-track:6f0f51881db2f344939b12a414c1ee0d2baea038fa62ebdd9e0f9278ceeea857` |
| 120 | `theorem` | [continuing](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/continuing.md) | 747 | `result-track:385e8f24a6b114a20ec1c5f07ccc0c91bea407c5f4a82b9e22ad436a27ea3566` |
| 121 | `theorem` | [exiting](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/exiting.md) | 752 | `result-track:a23df832c9c95c03755ef2a286c65240e9d4f04327b0e97d79e5764e7cfe9f46` |
| 122 | `theorem` | [of_observations](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/of-observations.md) | 761 | `result-track:fc35487378deb584191eebf9080901d8e91bf28a82c5c215008515df3fdaa2a5` |
| 123 | `theorem` | [slice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/slice.md) | 770 | `result-track:76d877b4a119a3a389968ca3efc4256b2520808ab819777b2f246d088285e0ee` |
| 124 | `theorem` | [all_levels_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/all-levels-eq.md) | 778 | `result-track:705ce0593f604033b9cd9c3c7468c91e26d7269246668635a81194cc66349f19` |
| 125 | `theorem` | [minusSlice_eq_of_restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/minusslice-eq-of-restrict.md) | 808 | `result-track:44ebf74ca9d619b9b3d63ba5d0ad2f58b06df8910831d88391543e6820c216a2` |
| 126 | `theorem` | [minusExit_eq_of_restrict](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/minusexit-eq-of-restrict.md) | 822 | `result-track:acfa76772919b21e744fc38ee5e5e7644580a1357225df2cf527e83e03252f81` |
| 127 | `def` | [plusLambdaTable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/pluslambdatable.md) | 832 | `declaration-track:99dca67a6e3094b32fb3c8429b3d0cc954a7179ed8edef8968b54ebab26a901e` |
| 128 | `theorem` | [plusLambdaTable_agree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Spaces.lean/declarations/pluslambdatable-agree.md) | 841 | `result-track:b3dfbe8a3aaee633bf9658fa7f009e84d690e230297ed784f15f81b5bf66c7d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6536af516c2938132496fb7a879e5e3abbc40a96f3b0010c8a53cafb1ca1b36d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant40eb30ab0a7d04fd0c11ff7a698d7882099f3cff31ce22b04a11bdb70dedfb49.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variant40eb30ab0a7d04fd0c11ff7a698d7882099f3cff31ce22b04a11bdb70dedfb49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
