# Verification target: Asymptotics Defs Defs Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72efa0b21efda005b9e1aae2e9dd6babe22768c0",
  "lexical_observation_count": 254,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variantcb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72efa0b21efda005b9e1aae2e9dd6babe22768c0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variantcb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Defs/Variantcb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigOWith_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-iff.md) | 81 | `result-track:4008fd5ed46644e7474899bdba079cba636f407e70b67674fbb2ee04573aeaf0` |
| 2 | `theorem` | [isBigO_iff_isBigOWith](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-iff-isbigowith.md) | 97 | `result-track:4f34f888b1ebec6c2e1c0775fe29b8fb1891ee519300cf6ed401f22771502981` |
| 3 | `theorem` | [isBigO_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-iff-source-edition-3.md) | 100 | `result-track:99b52409c1ca6a7377dea0d39d9f56634b9369ce1e77228ccc1b9cf6b0233f28` |
| 4 | `theorem` | [isBigO_iff'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-iff-source-edition-2.md) | 104 | `result-track:2509db19ceeb86bf1693d8a5abed28c8a990ef3d026223f5e465f1e2f4afceed` |
| 5 | `theorem` | [isBigO_iff''](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-iff.md) | 121 | `result-track:0404d10dd4a7db35429174e3a5df40010188100a9a9f0d75126628e0b0e6c359` |
| 6 | `theorem` | [IsBigO.of_bound](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-of-bound.md) | 137 | `result-track:006e368745c6b11f9fb7dd2e6b9a2d0b767374f0accd0fcef5b7c2239bdccae4` |
| 7 | `theorem` | [IsBigO.of_bound'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-of-bound-source-edition-2.md) | 140 | `result-track:577c33b54834a90096e2db2b72bffb3f5f96b4252ecb425012d538aef51fb155` |
| 8 | `theorem` | [IsBigO.bound](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-bound.md) | 143 | `result-track:860a49852e4ba7f9f51867b8148cd93c1cfcd3284ab92cee02af7a8980d4b7d4` |
| 9 | `theorem` | [IsBigO.of_norm_eventuallyLE](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-of-norm-eventuallyle.md) | 148 | `result-track:10aa61a7660e8aa1a8aacd41db51d4be356a6940797e75b7d468f5f4edcda7b1` |
| 10 | `theorem` | [IsBigO.of_norm_le](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-of-norm-le.md) | 151 | `result-track:7f411e74fc2084ca97b842371fa2fbc84fa615308cc81d1ff4f4af3bc0178efb` |
| 11 | `theorem` | [isLittleO_iff_forall_isBigOWith](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-iff-forall-isbigowith.md) | 165 | `result-track:147c297e285000b952ef963ccf6379228389db291cc34fc2f5dfa4affa85e6db` |
| 12 | `theorem` | [isLittleO_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-iff.md) | 171 | `result-track:771b3ed9c22f5baf9732379d7a5d06ce2839bf141a79ce1f5b82313dcccc10c9` |
| 13 | `theorem` | [IsLittleO.def](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-def-source-edition-2.md) | 176 | `result-track:4ace001a513d1ef544adbbcd75a4c2799aadf1d4a4c01efbef8fd2772c3af485` |
| 14 | `theorem` | [IsLittleO.def'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-def.md) | 179 | `result-track:43c619daf6b20138edfb073157b7b241b07968c82039af9d9aa8dcaa2a88d846` |
| 15 | `theorem` | [IsLittleO.eventuallyLE](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-eventuallyle.md) | 182 | `result-track:dbe963b5b37fd4471932218ccf8c8d2373df9ad395018b1e16b910af1d1037d5` |
| 16 | `theorem` | [IsBigOWith.isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-isbigo.md) | 190 | `result-track:1be436ebde8579a65562bb1fb8e901268ed50b1d836d1803adfbb433fbc0700b` |
| 17 | `theorem` | [IsLittleO.isBigOWith](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-isbigowith.md) | 192 | `result-track:354e1ceee3a10591ed9c9c0f5e3faa3a3c427cd31bee61f56ef98d0b68d8bfce` |
| 18 | `theorem` | [IsLittleO.isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-isbigo.md) | 195 | `result-track:5311063107c9f9b63ad63bb3cf29a2751c990ee23ffe6661c98a23743f0e904e` |
| 19 | `theorem` | [IsBigO.isBigOWith](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-isbigowith.md) | 198 | `result-track:4fcebf85472e263c1ac1301f9cc60871ab80b74c4b6bbeb26131451c840e0315` |
| 20 | `theorem` | [IsBigOWith.weaken](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-weaken.md) | 201 | `result-track:e1a67a78abd104381aaa33ee213f8caa3bdf6aad3045767df31158802b93301d` |
| 21 | `theorem` | [IsBigOWith.exists_pos](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-exists-pos.md) | 208 | `result-track:1c3691487827abb6b0c298fd60145383be103012aaf03b5e90168139616b3b0f` |
| 22 | `theorem` | [IsBigO.exists_pos](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-exists-pos.md) | 212 | `result-track:a990c0f77b5a110bbaf406aaf84806f4f75bbabd3a1c9d8395e83df59b9d478a` |
| 23 | `theorem` | [IsBigOWith.exists_nonneg](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-exists-nonneg.md) | 216 | `result-track:a6aa36e6ece3837ebb15e1a572715a89a01939e053f930afc5c85a377a985393` |
| 24 | `theorem` | [IsBigO.exists_nonneg](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-exists-nonneg.md) | 221 | `result-track:8e4a024503a9c365cc80617f78346f5548fd50085f947223c69a73e33727e2dd` |
| 25 | `theorem` | [isBigO_iff_eventually_isBigOWith](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-iff-eventually-isbigowith.md) | 226 | `result-track:4676a5cf97a43de87bcb052f34e3f2d9aef20f10c016b61a93c40de5c6079b28` |
| 26 | `theorem` | [isBigO_iff_eventually](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-iff-eventually.md) | 231 | `result-track:64f4aab06e4611cbfed8d17510489e1592fc199de8a1b99fb2ffb48b967a2320` |
| 27 | `theorem` | [IsBigO.exists_mem_basis](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-exists-mem-basis.md) | 234 | `result-track:04424891c6365cc641355d474a73926de25e01252ae780ca11ccc5e4486d33f0` |
| 28 | `theorem` | [isBigOWith_inv](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-inv.md) | 240 | `result-track:3b511cf3a784f1071c5bc0af285aea9819f1565bc1431d05a1286dd5da422a83` |
| 29 | `theorem` | [isLittleO_iff_nat_mul_le_aux](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-iff-nat-mul-le-aux.md) | 244 | `result-track:c6876676c63efcfe20dfec28b256055bc34454249ec693d8517407115f1ba134` |
| 30 | `theorem` | [isLittleO_iff_nat_mul_le](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-iff-nat-mul-le.md) | 262 | `result-track:098d63811e16dca110b626337d2be995d3b9a5c61ca2132f3db7684719069629` |
| 31 | `theorem` | [isLittleO_iff_nat_mul_le'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-iff-nat-mul-le-source-edition-2.md) | 265 | `result-track:5c929dd7f74845ed7037e8ce3fc55dab384030726eba385915d991b345e6ec13` |
| 32 | `theorem` | [isLittleO_of_subsingleton](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-of-subsingleton.md) | 272 | `result-track:b7124333bf7dd8e9b16ddfe2f1b20053ba8c43418c764430e85cdbcec9642ef5` |
| 33 | `theorem` | [isBigO_of_subsingleton](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-of-subsingleton.md) | 276 | `result-track:d61d814df775dc72f39455312fa67d21d16a14327edb5d47893a07de70e019d0` |
| 34 | `theorem` | [isBigOWith_congr](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-congr-source-edition-3.md) | 286 | `result-track:97429f494a5da8f2bbdfe587e498ccec5f701488dac42204d680611f76ca39b6` |
| 35 | `theorem` | [IsBigOWith.congr'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-congr.md) | 294 | `result-track:659c973c7734c7b186bbed3bc1b5a03387ec46d129bc8e9cd1c37051a84818dd` |
| 36 | `theorem` | [IsBigOWith.congr](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-congr-source-edition-2.md) | 298 | `result-track:8210d056781822a0eedc466ac40d79b8837b7bcbe8e1639d3ee66c7345169697` |
| 37 | `theorem` | [IsBigOWith.congr_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-congr-left.md) | 302 | `result-track:14ccfc5ee2990a288bddf66619bcc235c7df48f7d0e072f6b4fe8386613e4ac5` |
| 38 | `theorem` | [IsBigOWith.congr_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-congr-right.md) | 306 | `result-track:77a6841550f1b0501e8f56636813a4d82d5d4cedd9f45b775f6f644b5cb87967` |
| 39 | `theorem` | [IsBigOWith.congr_const](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-congr-const.md) | 310 | `result-track:79467970e78127f7b74ab7cae91ea34805297365fba2ea42382fed00731f4455` |
| 40 | `theorem` | [isBigO_congr](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-congr-source-edition-2.md) | 313 | `result-track:6334956ffec88c3c1c67b09453723d73695d2340670c5f663aa1e2601f68c6c6` |
| 41 | `theorem` | [IsBigO.congr'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-congr.md) | 317 | `result-track:4e13542d1d50c1c1e4384f6829c6127d1ef1d499521ffdecc50490ecbe2b4a0a` |
| 42 | `theorem` | [IsBigO.congr](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-congr-source-edition-3.md) | 320 | `result-track:ddb9d5fab9cef322866c853a7089fe18028c469ecf0e9fcc984f08c3ce111285` |
| 43 | `theorem` | [IsBigO.congr_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-congr-left.md) | 324 | `result-track:38d10872da13f8226f5b0826669fd1090411a35b22d5da65cb3d53964ab35bb5` |
| 44 | `theorem` | [IsBigO.congr_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-congr-right.md) | 327 | `result-track:9c7af10ffd185eab77c4f6088a6c5884d00f9c9b1908a4c39f417eb04610206f` |
| 45 | `theorem` | [isLittleO_congr](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-congr-source-edition-3.md) | 330 | `result-track:60a5c6cd1e9a6be412830a17d46bd0fcb748e2c4fb2e5fa9ea16aafa2f67ce01` |
| 46 | `theorem` | [IsLittleO.congr'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-congr.md) | 334 | `result-track:112672dd936437c1d42f7643a6f1c949df23c4f4cd980dbcf9a154a338cdfa74` |
| 47 | `theorem` | [IsLittleO.congr](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-congr-source-edition-2.md) | 337 | `result-track:1ac5b87b1c47e6c1169cc9bf310150b19871915108f07176290f83764103e078` |
| 48 | `theorem` | [IsLittleO.congr_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-congr-left.md) | 341 | `result-track:eadd1b0f4062601663c7e590d9a4f53143405079daec95db8571b5325a38b58d` |
| 49 | `theorem` | [IsLittleO.congr_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-congr-right.md) | 344 | `result-track:8ce996b8a6dee9b410dcac86860baeb4ccc9f79cb5600c7ff8ee0fc7ae95bf09` |
| 50 | `theorem` | [_root_.Filter.EventuallyEq.trans_isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/root-filter-eventuallyeq-trans-isbigo.md) | 348 | `result-track:5953b2dc491ff09af0adc98ec5618c80b7a593a7e07c61091a36824862abb4c1` |
| 51 | `instance` | [transEventuallyEqIsBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/transeventuallyeqisbigo.md) | 352 | `declaration-track:7c7eb6cf79071979e6cd3002e2756a76e4182edea917fdd456a5fcb9a0a9de5d` |
| 52 | `theorem` | [_root_.Filter.EventuallyEq.trans_isLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/root-filter-eventuallyeq-trans-islittleo.md) | 357 | `result-track:4c82612173c11d804782b42aa4f3650f935c12202fd25c059131ed85390dd2bd` |
| 53 | `instance` | [transEventuallyEqIsLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/transeventuallyeqislittleo.md) | 361 | `declaration-track:8caabe7eb48b34f1ff5a06cbdde7ffadfc5b7e8a15f05c8020db9c8fd767a994` |
| 54 | `theorem` | [IsBigO.trans_eventuallyEq](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-trans-eventuallyeq.md) | 366 | `result-track:f9dc543bc6251ea0bc5a58876cbcdef29799984957f71dfb51feb5aec61c6ff0` |
| 55 | `instance` | [transIsBigOEventuallyEq](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/transisbigoeventuallyeq.md) | 370 | `declaration-track:39abc8f91d286bee6f083be9f9598c80add559bec12637050435fe72d0c223ba` |
| 56 | `theorem` | [IsLittleO.trans_eventuallyEq](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-trans-eventuallyeq.md) | 375 | `result-track:101c8e33c96d86a928adb17214aa5d5ac0f616b9cdb92c9397f60ca82a53ca21` |
| 57 | `instance` | [transIsLittleOEventuallyEq](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/transislittleoeventuallyeq.md) | 379 | `declaration-track:250c51c032516502e1e0c9ced8a95eebc6c2663f1f06069c7e6bbfb204649c12` |
| 58 | `theorem` | [IsBigOWith.comp_tendsto](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-comp-tendsto.md) | 388 | `result-track:ee98827ad9610383b1c7da4fc060170f514c70446dfca6ead8dd139079d5016d` |
| 59 | `theorem` | [IsBigO.comp_tendsto](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-comp-tendsto.md) | 392 | `result-track:1023ca1980fe0d79e845a4668bf5bb6b019305acff9bcdcd3226ebb2f71b2229` |
| 60 | `theorem` | [IsLittleO.comp_tendsto](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-comp-tendsto.md) | 396 | `result-track:0f46c2472fa5b9f2048b94ae5bbdd8e155767325975fb6aa42b8d27f2ab1269c` |
| 61 | `theorem` | [isBigOWith_map](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-map.md) | 401 | `result-track:d81c3284f45c4d5d622f4086c1a3909a77bfedf4cf0fd8502fc4707255139ed3` |
| 62 | `theorem` | [isBigO_map](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-map.md) | 407 | `result-track:f3d4c07f3955e182a7a45ffe4cab95835d96abb7133ad43f861e13f5bdf2cd55` |
| 63 | `theorem` | [isLittleO_map](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-map.md) | 411 | `result-track:abc75abf930f4105196b9e7c9f3c5f7ae7bee338f75a81cc66b1910dec3f1e19` |
| 64 | `theorem` | [IsBigOWith.mono](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-mono.md) | 414 | `result-track:6308188bcb2bb664ac92c60ecd025034f7c516edb312e5b189fd6850ebd2265f` |
| 65 | `theorem` | [IsBigO.mono](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-mono.md) | 417 | `result-track:b6e3473788d801c806d28119419fa861b3187824d8610cf0ea624867202f1275` |
| 66 | `theorem` | [IsLittleO.mono](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-mono.md) | 420 | `result-track:93f0e814f3c2ec95b2bb3276371ce837b310e36964a48f7a255c3e889479de37` |
| 67 | `theorem` | [IsBigOWith.trans](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-trans.md) | 423 | `result-track:dbae3ed16c519ec456146f1af9d544706bf07014cf8d7934c0391464000e6423` |
| 68 | `theorem` | [IsBigO.trans](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-trans.md) | 433 | `result-track:187e3e75f5925fa63ef5abcfdd8cb4407aee298681feda2ee13d29e9b4bcfe25` |
| 69 | `instance` | [transIsBigOIsBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/transisbigoisbigo.md) | 439 | `declaration-track:76472ea1d4cae195e4b04bc22d15d367ed61d94ef6833defe47a2af5c8184c0c` |
| 70 | `theorem` | [IsLittleO.trans_isBigOWith](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-trans-isbigowith.md) | 443 | `result-track:8c1cf70754c5ce434c373b344912947cdac2951007eb4ac0cb02cfc3b3c6d40b` |
| 71 | `theorem` | [IsLittleO.trans_isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-trans-isbigo.md) | 451 | `result-track:9c2c9b55f64fcb4175e38435430f898c5d137df78159e10f49f67977a55df030` |
| 72 | `instance` | [transIsLittleOIsBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/transislittleoisbigo.md) | 456 | `declaration-track:31e22bd03ede2ba605a2ddf6746448ce4f1c5cec3b513a8a7c05334dce28a806` |
| 73 | `theorem` | [IsBigOWith.trans_isLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-trans-islittleo.md) | 460 | `result-track:01801efb717877b15ebfd9355c8a555f8c4a655b26debd496fa1b99e59f0b376` |
| 74 | `theorem` | [IsBigO.trans_isLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-trans-islittleo.md) | 468 | `result-track:16de33150f408ff97afd00d9d3108249f12f07393a6c0e05696d28b25bd511bf` |
| 75 | `instance` | [transIsBigOIsLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/transisbigoislittleo.md) | 473 | `declaration-track:f27d5f1149456aa9206e2f7bbd16737cb83b7e985e1c21e0f3a4312186afb689` |
| 76 | `theorem` | [IsLittleO.trans](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-trans.md) | 478 | `result-track:3688281395d1d2228cd02fb8950b88d145f4bc0782f2121218863eb83152d587` |
| 77 | `instance` | [transIsLittleOIsLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/transislittleoislittleo.md) | 482 | `declaration-track:8a8e38d8750ea607fd01d47a9a9a32f0726dff94edfffa25b41d622e56dcf485` |
| 78 | `theorem` | [_root_.Filter.Eventually.trans_isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/root-filter-eventually-trans-isbigo.md) | 486 | `result-track:76545cb9fc969d8ef28601c61dfa2da22ade3b1ecd43b2b65988b8d858114e12` |
| 79 | `theorem` | [_root_.Filter.Eventually.isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/root-filter-eventually-isbigo.md) | 492 | `result-track:5011d2ea8ab1620a9b68d4c81c494fe33a07453650aa8bce4ac8cc0538b95c48` |
| 80 | `theorem` | [isBigOWith_of_le'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-of-le-source-edition-2.md) | 500 | `result-track:f1898fc20d40df0ddb54e3dfe80a1f98007ee700f194faf9d01969720bb83986` |
| 81 | `theorem` | [isBigOWith_of_le](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-of-le.md) | 503 | `result-track:72b8884761253b79df203e0c6d64ff9ec6fcb82556e9a3a211d3c5196f21e26f` |
| 82 | `theorem` | [isBigO_of_le'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-of-le.md) | 508 | `result-track:0beba26a79a8c404809ead05b1397aad49af4604948a8991a01fb6b8e5f12467` |
| 83 | `theorem` | [isBigO_of_le](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-of-le-source-edition-2.md) | 511 | `result-track:8be168a627c2357b6cfbae6c030df429c59c481e67d7c8b1cabb13f5e829ebc8` |
| 84 | `theorem` | [isBigOWith_refl](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-refl.md) | 516 | `result-track:2b3e9a588955ab916c3719218c0e09bfe8e226063b0bdf9e311578fc858cbdf9` |
| 85 | `theorem` | [isBigO_refl](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-refl.md) | 519 | `result-track:890812e54b39b3dc76bce8eb8d85f1afc16f152222011648b5fbe579305f0678` |
| 86 | `theorem` | [_root_.Filter.EventuallyEq.isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/root-filter-eventuallyeq-isbigo.md) | 522 | `result-track:8fb89a9bdd9f8275ad9fe6343a196fb69703342da85cc93854c13cd90d8f802e` |
| 87 | `theorem` | [IsBigOWith.trans_le](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-trans-le.md) | 525 | `result-track:01f4494704ae6fd38f8d5d4fda23a5c409ecaa7c31c13b98035893034a65588e` |
| 88 | `theorem` | [IsBigO.trans_le](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-trans-le.md) | 529 | `result-track:9ddff5e0c93d9223c519988a2d8fbfd72bc90286b8f10bbfbaef09094ccedfed` |
| 89 | `theorem` | [IsLittleO.trans_le](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-trans-le.md) | 532 | `result-track:e5ba0b575cf276a40a948d0c54c6fed1a77cb159d3c71366f42cf4ba99bd8091` |
| 90 | `theorem` | [isLittleO_irrefl'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-irrefl-source-edition-2.md) | 535 | `result-track:dd2385abbe7330b4ccd8e9b464a243d8b7482f68020038dcf1281aa30d26b63f` |
| 91 | `theorem` | [isLittleO_irrefl](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-irrefl.md) | 541 | `result-track:a4fd73ebc250ce40a7fc300ec32b610b48d332753ea0a6e63fa5acc7aba0b283` |
| 92 | `theorem` | [IsBigO.not_isLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-not-islittleo.md) | 544 | `result-track:bb02fa3d628357f91fd6e114a110b51fc967a95e66b6aed0472fc3bdba181232` |
| 93 | `theorem` | [IsLittleO.not_isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-not-isbigo.md) | 548 | `result-track:01b4ef7a4e2578b0cfafe25c46d77d8513bb5e6be5059e50e68fa30a2bf37869` |
| 94 | `theorem` | [isBigOWith_bot](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-bot.md) | 557 | `result-track:56a928951c912ac75d47ad43182893a7d51d661b5f50c44d208770e855e28f60` |
| 95 | `theorem` | [isBigO_bot](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-bot.md) | 561 | `result-track:f101e0e27614ee9cc9a4fd84baa1b911232c20dce53cdd02c3881e7110f014c5` |
| 96 | `theorem` | [isLittleO_bot](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-bot.md) | 565 | `result-track:ace94cd7f823f5d78e61f0ebad421151d29ce49f40323521c436529b3a02784f` |
| 97 | `theorem` | [isBigOWith_pure](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-pure.md) | 571 | `result-track:0fe341138aa378349082f0e27e54c223c2b758c38cf524d9b65d0cc9154f4fad` |
| 98 | `theorem` | [IsBigOWith.sup](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-sup-source-edition-2.md) | 574 | `result-track:eb6b3734bcf621ce49c9ea310bf1b4ed7e7da29ebd4ea7c87895f49a6181c8a0` |
| 99 | `theorem` | [IsBigOWith.sup'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-sup.md) | 578 | `result-track:621c5ee4e5e7d17aac3f3e5713a78ffbe5d5bdd3119621ada53822de4654edcb` |
| 100 | `theorem` | [IsBigO.sup](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-sup.md) | 583 | `result-track:aa80e7745cf40b627f4d518d2b058ca78a24ca3ad655a9e993b2e223b2a43612` |
| 101 | `theorem` | [IsLittleO.sup](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-sup-source-edition-2.md) | 588 | `result-track:73e68cfd58bf8a5c692018f79dc7b0f33a18259df23faeaee72f90496865b850` |
| 102 | `theorem` | [isBigO_sup](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-sup-source-edition-2.md) | 592 | `result-track:b3e09daf1dd32f8d8ef9d4a197f6198574f13e34069101311800a0e980284d9f` |
| 103 | `theorem` | [isLittleO_sup](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-sup.md) | 596 | `result-track:4165bf1f01c0a9cd2e10eb937537bbbcc4a907466878d1711753ec88f472110c` |
| 104 | `theorem` | [isBigOWith_insert](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-insert.md) | 599 | `result-track:3c88d432a6a03609b2670a6933a14aec15022d145bfcf78f20075ec8b5d86e43` |
| 105 | `theorem` | [IsBigOWith.insert](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-insert-source-edition-2.md) | 604 | `result-track:f677ca0bf0231c7cf0bc955be32313a8628a02b908ebd0facede62b864dd80dc` |
| 106 | `theorem` | [isLittleO_insert](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-insert-source-edition-2.md) | 609 | `result-track:2e61a15a33a212eaf3d25bc585614511949c2b8aa75b4cc5ea4e85ceddc3d3aa` |
| 107 | `theorem` | [IsLittleO.insert](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-insert.md) | 617 | `result-track:1b7f7fb0047834ca1dcb3aa6341c9c3f2f60856984d5e92c7dc5f72ba98ce22d` |
| 108 | `theorem` | [isBigOWith_norm_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-norm-right.md) | 629 | `result-track:a8d1950875805e6f3ee864842f5ec8d7a9e20981e2761ba690392412d6eb16c4` |
| 109 | `theorem` | [isBigOWith_abs_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-abs-right.md) | 633 | `result-track:1fd938a048f703ba9fb80346b715e23e06ef434407ca116b74ab285c95b03817` |
| 110 | `theorem` | [isBigO_norm_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-norm-right.md) | 641 | `result-track:6775d7bd9cc656ece9f6df1f5c0eff4ef6876fde76947bb12c99a0a1d8eee373` |
| 111 | `theorem` | [isBigO_abs_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-abs-right.md) | 646 | `result-track:5a6060ded79ef3ef94187567ae226091f1e71f748a008c7a69fcb079756d2dac` |
| 112 | `theorem` | [isLittleO_norm_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-norm-right.md) | 654 | `result-track:d843cc81e7d7a5cb83b95e4a86a41be21472a8bc2dd361002f0776e2aa912930` |
| 113 | `theorem` | [isLittleO_abs_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-abs-right.md) | 659 | `result-track:1b2d17bb080c85df1c1b592963edd874f3f3bbba50815886c657bf6de1e1b797` |
| 114 | `theorem` | [isBigOWith_norm_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-norm-left.md) | 667 | `result-track:c7b8e68ae2e1f073490fbf4adee88bf24fd668ccd2815a13e0950cc6540306e2` |
| 115 | `theorem` | [isBigOWith_abs_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-abs-left.md) | 671 | `result-track:b4eb75456b69618bb894cf587f9027f4ff23903be5172c743965748e0a7eafab` |
| 116 | `theorem` | [isBigO_norm_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-norm-left.md) | 679 | `result-track:45a8335fbd173f156dbac50fe6e0094621f270c8bbe48f9a020f6456f7cb1b78` |
| 117 | `theorem` | [isBigO_abs_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-abs-left.md) | 684 | `result-track:2bb63ab69b47a888e68ab1cb1029830f35e15ca2aa8b7cd500c56052233afc62` |
| 118 | `theorem` | [isLittleO_norm_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-norm-left.md) | 692 | `result-track:641f8dab20abb6a46569dbc5243b0867cd4d74fb005cb150cce99318793c7bef` |
| 119 | `theorem` | [isLittleO_abs_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-abs-left.md) | 697 | `result-track:e936c306bc93d1af80db600e35372180488f87c2abe83c4ab5f204df88eb112a` |
| 120 | `theorem` | [isBigOWith_norm_norm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-norm-norm.md) | 704 | `result-track:f5376b6452161493828d2ca4104fc14d83e55cba3fd08945375e335d4d3a0cf9` |
| 121 | `theorem` | [isBigOWith_abs_abs](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-abs-abs.md) | 708 | `result-track:ef54aa704fb259d367eb0e6e52d17603fa176e3b4aa0483b0088e8b506471ee6` |
| 122 | `theorem` | [isBigO_norm_norm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-norm-norm.md) | 716 | `result-track:ede2bede4665daea4f4e393116b5269a5ed956cd0022e0a496bed703e1a15447` |
| 123 | `theorem` | [isBigO_abs_abs](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-abs-abs.md) | 719 | `result-track:121a9bb1346a4574d081e39c1e25dcbddca3add8f0cd2ea1af14173256ea4c6d` |
| 124 | `theorem` | [isLittleO_norm_norm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-norm-norm.md) | 726 | `result-track:3ceeadb1a15e60398d28a71aef1e93ab3f4f947f8efe094797f6fdaea39877ec` |
| 125 | `theorem` | [isLittleO_abs_abs](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-abs-abs.md) | 729 | `result-track:430d9304717ccc7dfe9d79c8faf55d5fd59ef99b3d204ac330a5025dcaf1cf8f` |
| 126 | `theorem` | [isBigOWith_neg_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-neg-right.md) | 742 | `result-track:7e9e188fce3a0aca511c39ff9cec61273b2ee28e5a6bb30520fab13c7dce2ff7` |
| 127 | `theorem` | [isBigO_neg_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-neg-right.md) | 748 | `result-track:518ca8ea31a54d3c95fde3bb2c61982f622265acd2416847e6239a7a1245f952` |
| 128 | `theorem` | [isLittleO_neg_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-neg-right.md) | 755 | `result-track:32c34af419964bf5fde1f1fc4ed1cd508863c77001e8ce0b2d1ae5704aafdbaf` |
| 129 | `theorem` | [isBigOWith_neg_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-neg-left.md) | 762 | `result-track:43efc447babb900a391872f041d388014938a3f6eb1415eb1e5736460031f341` |
| 130 | `theorem` | [isBigO_neg_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-neg-left.md) | 768 | `result-track:fda038e1323fc96e42e7ae1c1650e995ba7cc704fa4a6cfb5158f3875eac149f` |
| 131 | `theorem` | [isLittleO_neg_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-neg-left.md) | 775 | `result-track:7e235fc393c05790e4055a2c0046207dc97cc86af8da0796ac53d12648b31179` |
| 132 | `theorem` | [isBigOWith_fst_prod](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-fst-prod.md) | 784 | `result-track:2112ba8455446e0a8a3d45843746102b0db5641d203f7b57743bb57ebae2b32f` |
| 133 | `theorem` | [isBigOWith_snd_prod](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-snd-prod.md) | 787 | `result-track:179718af72bcc0e1064375ed5d051905520bab4209bdf60de4769bf6766c6b24` |
| 134 | `theorem` | [isBigO_fst_prod](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-fst-prod.md) | 790 | `result-track:0b86ca8baaf84a2218f9b8b8ec73cfc8e271eaf204bea39abf794d40a8c0b55f` |
| 135 | `theorem` | [isBigO_snd_prod](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-snd-prod.md) | 793 | `result-track:e52aa372feb7ae5ccb985c66477d6982f1310c7264f3282279ed9e8aec3f9394` |
| 136 | `theorem` | [isBigO_fst_prod'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-fst-prod-source-edition-2.md) | 796 | `result-track:c0e2553eda7313a21a60132697f85f5dfe880e3d15be63ec7f670d3ef442d839` |
| 137 | `theorem` | [isBigO_snd_prod'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-snd-prod-source-edition-2.md) | 799 | `result-track:e5699baed9f9e1b75069609a42e2f468b04cdc145d7391bea2e97db6df744347` |
| 138 | `theorem` | [IsBigOWith.prod_rightl](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-prod-rightl.md) | 806 | `result-track:aab0549e2a916b1401bb2ede794cdd181a97b9dcebe70bca33c169e40963bbfe` |
| 139 | `theorem` | [IsBigO.prod_rightl](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-prod-rightl.md) | 810 | `result-track:cd7bd68c65294d2986e44f5e93b34f215d302881549a4fa3aefcad49ea81e024` |
| 140 | `theorem` | [IsLittleO.prod_rightl](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-prod-rightl.md) | 814 | `result-track:1686220898d0d91f08b0ea0a51c35f031889a4d8951b8653531c98b94784c276` |
| 141 | `theorem` | [IsBigOWith.prod_rightr](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-prod-rightr.md) | 817 | `result-track:626c7bd393087b53a836c0f985f5ce541e69e772922505450e7e062d175ebd72` |
| 142 | `theorem` | [IsBigO.prod_rightr](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-prod-rightr.md) | 821 | `result-track:f3b0494726a5299608006827639e5418fe05ff9c728ba221835ad8de70cfa9d4` |
| 143 | `theorem` | [IsLittleO.prod_rightr](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-prod-rightr.md) | 825 | `result-track:9dd17c3ffe8a4ed0ea6f375d94e7935300a5c3215385f211f83f32003cc12838` |
| 144 | `theorem` | [IsBigO.fiberwise_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-fiberwise-right.md) | 834 | `result-track:c0881d35906e09c608b9645d97a90df9451b9b54ad774cec5165c414756b2a17` |
| 145 | `theorem` | [IsBigO.fiberwise_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-fiberwise-left.md) | 840 | `result-track:066da975ca9fe3173ab358b126aed2d2a6de48da7b3ba98ef134974907d32075` |
| 146 | `theorem` | [IsBigO.comp_fst](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-comp-fst.md) | 852 | `result-track:0028b1db7cdbb81ad447dafc5f9379821fcc258331a987bafcc2a04487d2d2ed` |
| 147 | `theorem` | [IsBigO.comp_snd](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-comp-snd.md) | 856 | `result-track:294c708f888c1e9665e65fc33ca64c1badbdba4f6a4969513eeaf92875e4b114` |
| 148 | `theorem` | [IsLittleO.comp_fst](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-comp-fst.md) | 860 | `result-track:1d37c66db3083d4ba2972bdc0a2a75a4352558ac98271d7854e5b6564621081f` |
| 149 | `theorem` | [IsLittleO.comp_snd](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-comp-snd.md) | 864 | `result-track:c86832c5b092e2002cd9283df7624ad5d0e97a7c025a3eb67b5c1d78f62599c6` |
| 150 | `theorem` | [IsBigOWith.prod_left_same](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-prod-left-same.md) | 870 | `result-track:2ff438d24b87ebf3658ecf891acf3a5c731c4cbebfdd49744deed3077333f038` |
| 151 | `theorem` | [IsBigOWith.prod_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-prod-left.md) | 874 | `result-track:124736aff3447320101db054cc1b9d20c79eb45b06743a600bdad6d877042868` |
| 152 | `theorem` | [IsBigOWith.prod_left_fst](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-prod-left-fst.md) | 878 | `result-track:9aca6f03fb272b20ba1bb2b7781834c969602fce9797c3654bab94913b4fa316` |
| 153 | `theorem` | [IsBigOWith.prod_left_snd](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-prod-left-snd.md) | 882 | `result-track:040e64db75388b312fdbd59a09ef10fe2f2a4f5bc8296a1a5471ae958de9a344` |
| 154 | `theorem` | [isBigOWith_prod_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-prod-left-source-edition-2.md) | 886 | `result-track:f1c63f404c92dc029e930958ff5e62e2bef5e89a4631fe0f549654b005cd0bcf` |
| 155 | `theorem` | [IsBigO.prod_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-prod-left-source-edition-2.md) | 890 | `result-track:e51d44f006648ddb12f838dcb4ea6c079155295d4acf41539857ac14fc628304` |
| 156 | `theorem` | [IsBigO.prod_left_fst](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-prod-left-fst.md) | 895 | `result-track:d5a9666ccdc06490f78bd2550386c276d35ed2c89998295d75b1426c3d16ff4b` |
| 157 | `theorem` | [IsBigO.prod_left_snd](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-prod-left-snd.md) | 898 | `result-track:d7ecc6a39e73e945d46e76b1177066daaff3feeef92a5d1ec665f9f60d5c04dd` |
| 158 | `theorem` | [isBigO_prod_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-prod-left.md) | 902 | `result-track:654affe749780d23716c458194e2c76543a2cefa7604548a627ada33831a9a4b` |
| 159 | `theorem` | [IsLittleO.prod_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-prod-left.md) | 905 | `result-track:816e36dafe3b319b1af294722f430df73a2ea8aadb18d6591c8a00372447d0de` |
| 160 | `theorem` | [IsLittleO.prod_left_fst](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-prod-left-fst.md) | 910 | `result-track:32bc353addf2a41612efd7c417d7b5083b920c035384f5c4f700694a10cc9a8f` |
| 161 | `theorem` | [IsLittleO.prod_left_snd](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-prod-left-snd.md) | 913 | `result-track:9b06a445977c36464689bf19559cbdf0b064c034412a24b94d0aa41956c9fa26` |
| 162 | `theorem` | [isLittleO_prod_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-prod-left-source-edition-2.md) | 917 | `result-track:8981e014016f336fe667ab8ad1b1e34911d7fc266071ee96e3866569ca659b3a` |
| 163 | `theorem` | [IsBigOWith.eq_zero_imp](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-eq-zero-imp.md) | 920 | `result-track:4605f56d99abbe8c0d0d2433b03097b3e61e7818b9b5ab6eb3b8920aa1cc884a` |
| 164 | `theorem` | [IsBigO.eq_zero_imp](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-eq-zero-imp.md) | 923 | `result-track:9a2ad4806177d0c8901b4972ce1e21fd5726ae2418b61cd1f2344fc53117833e` |
| 165 | `theorem` | [IsBigOWith.add](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-add.md) | 934 | `result-track:fe9ce15da52526f4d659f7a1b91ac3a720dbc5a8a03939b39657745637103131` |
| 166 | `theorem` | [IsBigO.add](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-add.md) | 942 | `result-track:ef9f18fe669b39d0659ed60e64b12a8acf3e0e7aa33556e9638cf7c1ef34af33` |
| 167 | `theorem` | [IsLittleO.add](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-add.md) | 947 | `result-track:15a862b7fbec25c13e3a394cc56b5b2c24b642933db0bc33acfa53c30bd39997` |
| 168 | `theorem` | [IsLittleO.add_add](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-add-add.md) | 952 | `result-track:2ef76169b522d79da245d0db3cc3829bfdc13c1e2f314774d65a8415779d8446` |
| 169 | `theorem` | [IsBigO.add_isLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-add-islittleo.md) | 956 | `result-track:38822b34b2133b2e8fdb5ed8cc0310b3a35c1cf357b5fe27c69bf3f97083133c` |
| 170 | `theorem` | [IsLittleO.add_isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-add-isbigo.md) | 959 | `result-track:02a58c7a1c3a80ea5599559ba4a14d29a71e99889742f0ca161968f46d1db889` |
| 171 | `theorem` | [IsBigOWith.add_isLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-add-islittleo.md) | 962 | `result-track:b52b34165263809988d2d47ad7716175423348f367c0444005a4750ddbfdee22` |
| 172 | `theorem` | [IsLittleO.add_isBigOWith](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-add-isbigowith.md) | 966 | `result-track:0f63757f82b738efcdc5a42744c4d092beb899e6818746576b4f209975155ea5` |
| 173 | `theorem` | [IsBigOWith.sub](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-sub.md) | 970 | `result-track:857519879414fe31c61ec5e469254dc33aad85c9b47af61d1627e99f8f146f8c` |
| 174 | `theorem` | [IsBigOWith.sub_isLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-sub-islittleo.md) | 974 | `result-track:e4394dd7b73bdebf04e7bfca8d84860d32d9f58653203e05fba43d039715da80` |
| 175 | `theorem` | [IsBigO.sub](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-sub.md) | 978 | `result-track:eade9838c964f41bc56c1ba1c90cc02ab015a422da839c24e8946173cc1aba4b` |
| 176 | `theorem` | [IsLittleO.sub](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-sub.md) | 981 | `result-track:904cc01abcd90b8b9f5c07b373a526a5a20f379d5fc8012aef81d2e369f74d84` |
| 177 | `theorem` | [IsBigO.add_iff_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-add-iff-left.md) | 984 | `result-track:ee6e6fcd232fde2314b58b7b787b8fc679f67f13e408e6fc6770e699151b23a3` |
| 178 | `theorem` | [IsBigO.add_iff_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-add-iff-right.md) | 987 | `result-track:025b910caa37e7eecfc02654c9ae8488621b0651f1c244098ac3e4f35d788156` |
| 179 | `theorem` | [IsLittleO.add_iff_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-add-iff-left.md) | 990 | `result-track:eb910943f4b4b3ec8d68d66fcd2c13d64d635f052737226db8e20f8717baeb0e` |
| 180 | `theorem` | [IsLittleO.add_iff_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-add-iff-right.md) | 993 | `result-track:cf202c800e47ca76c390c8356bf62813337ec683314dcb4aec9b483702d4a402` |
| 181 | `theorem` | [IsBigO.sub_iff_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-sub-iff-left.md) | 996 | `result-track:49ccd85dc956fe2976ce661aee9284c9f1aa19a0911bf3bf8945142965a499a3` |
| 182 | `theorem` | [IsBigO.sub_iff_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-sub-iff-right.md) | 999 | `result-track:a81b8c1ac80818f7bf1e8962ced7f550956894bfb52e6b56cb2c1aaa9f8e8288` |
| 183 | `theorem` | [IsLittleO.sub_iff_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-sub-iff-left.md) | 1002 | `result-track:192b7fe143cbdb6284049c87c33da2870ccc990365489f6f97b53ec71b78ad27` |
| 184 | `theorem` | [IsLittleO.sub_iff_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-sub-iff-right.md) | 1005 | `result-track:4940a697aab70d86d20a3f24ac2ccd07676909dc77a47234f00a6a99064e9b73` |
| 185 | `theorem` | [IsBigOWith.symm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-symm.md) | 1019 | `result-track:e154194a458bdee98334c530799647900391e0254141c458823d3c15d0e5b1cb` |
| 186 | `theorem` | [isBigOWith_comm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-comm.md) | 1023 | `result-track:c247c01195e86e659bac53c3f196c1c1746d9c208d0f6babd06296accd5da54d` |
| 187 | `theorem` | [IsBigO.symm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-symm.md) | 1027 | `result-track:43e52b8c8d152ce4dba9839b4bdbd549bc1742600444ef63864cebf693c64734` |
| 188 | `theorem` | [isBigO_comm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-comm.md) | 1030 | `result-track:fc8994fdc6f43336d5adebe74753223d43bce881b03a286ecf75abea38e9c631` |
| 189 | `theorem` | [IsLittleO.symm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-symm.md) | 1033 | `result-track:d736f8b101add282f95de6509d21bb4648165d4c00af2179af722fda737cae34` |
| 190 | `theorem` | [isLittleO_comm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-comm.md) | 1036 | `result-track:fd49352378246c53b31f651cb5cc8486623e70eebd3fc601ff0dd15bd0b50d26` |
| 191 | `theorem` | [IsBigOWith.triangle](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-triangle.md) | 1039 | `result-track:d31b99e8a33bdc63740dbf9b77c933eb8aa794092c154d4d2a4acd078b05e173` |
| 192 | `theorem` | [IsBigO.triangle](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-triangle.md) | 1044 | `result-track:486b450fb1ca4413d7475a2a3313869928dfd27822f35a1f649f689213d85e7c` |
| 193 | `theorem` | [IsLittleO.triangle](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-triangle.md) | 1048 | `result-track:3237e57f920cce7f32573ac7957f3b3a6e9acd98cba9c7d3beb24ee46225282d` |
| 194 | `theorem` | [IsBigO.congr_of_sub](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-congr-of-sub.md) | 1052 | `result-track:195f9dc21b0f76b4869ad935a994bc5f54e57a2dfbac47ceb20062f6fb914c90` |
| 195 | `theorem` | [IsLittleO.congr_of_sub](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-congr-of-sub.md) | 1056 | `result-track:017866f570604bf7e38ceb86d0eaf1a8a0f48b8672988351aacc497c86abc3e1` |
| 196 | `theorem` | [isLittleO_zero](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-zero.md) | 1069 | `result-track:9989b6f5b577a019c61bcbdaa3e64142aa6c1952a52f5aff25ef6f62c780668d` |
| 197 | `theorem` | [isBigOWith_zero](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-zero.md) | 1073 | `result-track:566b5c5ec0638a9ce682a65d225ec1a4744a729fa29f145169943708436920b2` |
| 198 | `theorem` | [isBigOWith_zero'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-zero-source-edition-2.md) | 1076 | `result-track:bc99ec5807d651b552df45c2f31c66bb0e92c9a23ac88093b82486a76a4da522` |
| 199 | `theorem` | [isBigO_zero](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-zero.md) | 1079 | `result-track:6c3fa172e2a1cef9e26ec44959deef09c3810e8851bcdf8c1a36f5bff22ac48c` |
| 200 | `theorem` | [isBigO_refl_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-refl-left.md) | 1082 | `result-track:4c79e3b1d77b75ffe388474760d3ffbae74b6a5fe0cf20eb700c9ca67b9956b7` |
| 201 | `theorem` | [isLittleO_refl_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-refl-left.md) | 1085 | `result-track:3caece030551293b872ef04225940059afee244848e7e5fcc8be3670bc774523` |
| 202 | `theorem` | [isBigOWith_zero_right_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-zero-right-iff.md) | 1091 | `result-track:e009537b03a719fbe39808f851976dd9204377dc668e266943fc414f17c7a6fc` |
| 203 | `theorem` | [isBigO_zero_right_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-zero-right-iff.md) | 1096 | `result-track:1c766c24bac3ed4fadf03073b8f145d39b0731d6fc4157358f1b30ee8a397a89` |
| 204 | `theorem` | [isLittleO_zero_right_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-zero-right-iff.md) | 1103 | `result-track:2321994708ecaf4002d5623688678b59a550e38806abc63c99ee07d461504160` |
| 205 | `theorem` | [isBigOWith_const_const](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-const-const.md) | 1107 | `result-track:0882a7e83a9973232bbf46b66f35c7016f87c16467798effd9824f62c407af9c` |
| 206 | `theorem` | [isBigO_const_const](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-const.md) | 1114 | `result-track:f84011267a9eced1146b5795a3c623fd9f99eebdbc4978dc5cbafcd15adb449a` |
| 207 | `theorem` | [isBigO_const_const_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-const-iff.md) | 1119 | `result-track:5f83d1a059a2fd8d86242e69c7a397b4f8ec655c09c26db5d8706016751ec8ac` |
| 208 | `theorem` | [isBigO_pure](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-pure.md) | 1126 | `result-track:eb4891eaa54661e9f8246a852103d381763b2e1f97df68e27f2f1f9d4f05da50` |
| 209 | `theorem` | [isBigOWith_const_mul_self](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-const-mul-self.md) | 1135 | `result-track:707a6c641bb170da87b1e5d42b57a297518e2842101662e7c478328a25a9c840` |
| 210 | `theorem` | [isBigO_const_mul_self](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-mul-self.md) | 1139 | `result-track:9e3c136efe8b79c78af62fc8cb62ffcb055b4368ecc642a242542d5d4df40bdd` |
| 211 | `theorem` | [IsBigOWith.const_mul_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-const-mul-left.md) | 1142 | `result-track:0cf5c7669fdbda62fc93f16836c1fa3412204926e488ba2cad4ae44fcb0ef846` |
| 212 | `theorem` | [IsBigO.const_mul_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-mul-left.md) | 1146 | `result-track:de1dce00161fbfa83a14e2a4820c65acdb004802fac9522f4e6561ed78cfbd81` |
| 213 | `theorem` | [isBigOWith_self_const_mul'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-self-const-mul.md) | 1150 | `result-track:8c752aa30e287b8c51c19db4469fa1a3fdc0684568dc66dbc2202b8107b06023` |
| 214 | `theorem` | [isBigOWith_self_const_mul](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-self-const-mul-source-edition-2.md) | 1155 | `result-track:c7e82aea208546de695619cd79f33c60b1a009b3d188e887c673f161c4d819bb` |
| 215 | `theorem` | [isBigO_self_const_mul'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-self-const-mul.md) | 1159 | `result-track:74bd24d770cb5cadfa213ebf5d78975f63186df966b29ce215dc6aa8137a6e64` |
| 216 | `theorem` | [isBigO_self_const_mul](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-self-const-mul-source-edition-2.md) | 1164 | `result-track:c430a28734ceec3ff6560bc652e638be91648ea887a73ce2bf46dc85cdd4e6e1` |
| 217 | `theorem` | [isBigO_const_mul_left_iff'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-mul-left-iff.md) | 1168 | `result-track:853855460920149600ff8ec23518861cca51117d899c09977fd801e7a0b1a833` |
| 218 | `theorem` | [isBigO_const_mul_left_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-mul-left-iff-source-edition-2.md) | 1172 | `result-track:a5bf64ef78427f71b6bf3f7357313f7b0865b8245e104eaf4ceb66a179b5e3d4` |
| 219 | `theorem` | [IsLittleO.const_mul_left](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-const-mul-left.md) | 1176 | `result-track:8bf3fd58c122a1247a48ea9301a5c15a6352f716c86ff2e7bd97b051b9233f53` |
| 220 | `theorem` | [isLittleO_const_mul_left_iff'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-const-mul-left-iff.md) | 1179 | `result-track:2b70a9809459505df7197de68e3269662e1067ddf9d50ef7f2e5744454d42a38` |
| 221 | `theorem` | [isLittleO_const_mul_left_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-const-mul-left-iff-source-edition-2.md) | 1183 | `result-track:3fe5a2eeb59520166f9fc60a74cd357c598d4b896c3e1932d8ab08fec760656a` |
| 222 | `theorem` | [IsBigOWith.of_const_mul_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-of-const-mul-right.md) | 1187 | `result-track:f4a527deec4e199b890e6aae8a58aef4df0d92c2613f55f66747e7550b21e782` |
| 223 | `theorem` | [IsBigO.of_const_mul_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-of-const-mul-right.md) | 1191 | `result-track:fef486e61bd48374fa8b30305007914cde688ebfe55b6cdb4b77b0add1a0ec08` |
| 224 | `theorem` | [IsBigOWith.const_mul_right'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-const-mul-right-source-edition-2.md) | 1195 | `result-track:f6fa7de5b8bed774c8ccf50d08a090cd25a7973f166e61ebc6245a4ad44d264e` |
| 225 | `theorem` | [IsBigOWith.const_mul_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-const-mul-right.md) | 1199 | `result-track:1127a43257e2cee6917c46b369fa3bc3b9ae2753ea7068762987141b436e5578` |
| 226 | `theorem` | [IsBigO.const_mul_right'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-mul-right-source-edition-2.md) | 1203 | `result-track:7c2122dbf872b225b6e2d0e7e4a32d0992246c6405a17ccb8e841528b49dd5bf` |
| 227 | `theorem` | [IsBigO.const_mul_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-mul-right.md) | 1207 | `result-track:0d5c64f424ddd98bb6d28592c7868f02ab785edba5066a52baae8bb5d0a31d95` |
| 228 | `theorem` | [isBigO_const_mul_right_iff'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-mul-right-iff-source-edition-2.md) | 1212 | `result-track:9b70764b94d2f43f09b081286334bcb7f76c2dad4c49c1934565605756e58e7c` |
| 229 | `theorem` | [isBigO_const_mul_right_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-const-mul-right-iff.md) | 1216 | `result-track:6e5f89639aef84f1fc4c54823c36fc6965c2b55f5e72126a7ed019d4abe7a67c` |
| 230 | `theorem` | [IsLittleO.of_const_mul_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-of-const-mul-right.md) | 1220 | `result-track:c7db348407db854f4f843c582dd36d7334e3b23837106649e306898333216cad` |
| 231 | `theorem` | [IsLittleO.const_mul_right'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-const-mul-right.md) | 1224 | `result-track:7b9b16a3ac6fdf65f02f790076db7fd37a1f725a67dfc26fbc663c7771f3feb1` |
| 232 | `theorem` | [IsLittleO.const_mul_right](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-const-mul-right-source-edition-2.md) | 1228 | `result-track:8a252199d59e6f7aec3b9f16f88a5ea8050cb4130054fe9829e162fd72b10e36` |
| 233 | `theorem` | [isLittleO_const_mul_right_iff'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-const-mul-right-iff.md) | 1232 | `result-track:16d232f2fab5cb8836c86912d744bc58b8fbe68ee0e6178cd778fc7d6e2ddf08` |
| 234 | `theorem` | [isLittleO_const_mul_right_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-const-mul-right-iff-source-edition-2.md) | 1236 | `result-track:a7a575e5af8b43afbd2ebd9531de01a85ea172fcc5ae9702aa592c960880e3d4` |
| 235 | `theorem` | [IsBigOWith.mul](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-mul.md) | 1242 | `result-track:5fc55ed6454cb9daafeaae29d5139bcf06469366c4d806b1dc924e2a9cc202d9` |
| 236 | `theorem` | [IsBigO.mul](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-mul.md) | 1251 | `result-track:47d5f44647300971bcaf19de43206ba7ab949ed30dfc664705a24644f8a9531a` |
| 237 | `theorem` | [IsBigO.mul_isLittleO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-mul-islittleo.md) | 1257 | `result-track:c3f63feeae11a73f16bbb63d5263650d74b5018dfb92c5b813f4607b0df77b6f` |
| 238 | `theorem` | [IsLittleO.mul_isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-mul-isbigo.md) | 1264 | `result-track:b15772f41224feadf5820f0a0a6a227aa33b30696e8fbcf2553d26d29078b4a3` |
| 239 | `theorem` | [IsLittleO.mul](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-mul.md) | 1271 | `result-track:93287afd3678145bd7c16973f410358d82c27b14b9b1ed9d4e8953d75a654929` |
| 240 | `theorem` | [IsBigOWith.pow'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-pow-source-edition-2.md) | 1275 | `result-track:1e2d6ebdfa5661d650bd2b55b8b1f1feaf3438af460a87fb607927ea8d758be2` |
| 241 | `theorem` | [IsBigOWith.pow](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-pow.md) | 1284 | `result-track:09bed5c209000c8ef59b4701dc60d8fceb2b5a64b07273727122c4fdcaf76faf` |
| 242 | `theorem` | [IsBigOWith.of_pow](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-of-pow.md) | 1290 | `result-track:d760663c04f6a0755eb9193eb686b59b2c8a62c078726bb4fa222530c9bc6c8a` |
| 243 | `theorem` | [IsBigO.pow](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-pow.md) | 1301 | `result-track:10a30a481eb460be5643a6b94272c0163b13be17680ab10edb6d3037e7ba5937` |
| 244 | `theorem` | [IsLittleO.pow](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-pow.md) | 1306 | `result-track:c6ac097504cf145d5beae766172c8e455ec3e2370c265180ef5d73039ea78a5d` |
| 245 | `theorem` | [IsLittleO.of_pow](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-of-pow.md) | 1313 | `result-track:cc2e23e97a0d2a07e947b2fdc99de78ba58049922bd100deaf88cfa3f4597d78` |
| 246 | `theorem` | [IsBigOWith.inv_rev](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-inv-rev.md) | 1319 | `result-track:c53fc2fddc5ff4e404cc47a775dc0edbaecccb3c91b2cd761da37604b1b58d57` |
| 247 | `theorem` | [IsBigO.inv_rev](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-inv-rev.md) | 1328 | `result-track:ee91caa1885554e072e8917eef814da713d5f2661788fe7156ca2a5d3065dea0` |
| 248 | `theorem` | [IsLittleO.inv_rev](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-inv-rev.md) | 1333 | `result-track:91a8bc0fa0d8404ad255b3ec2bc54a28d29de10fd049e4cc68a28fbb135ef209` |
| 249 | `theorem` | [IsBigOWith.sum](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-sum.md) | 1343 | `result-track:caf1460bac44ca4aab2e1d7671d4c27bf791e7b68220eb43d6d0f268cdd2ddf3` |
| 250 | `theorem` | [IsBigO.sum](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-sum.md) | 1351 | `result-track:4c689b0616e157f8965d67a07ff53f97794dcace3627f163c05e484dc920a7fd` |
| 251 | `theorem` | [IsLittleO.sum](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-sum.md) | 1356 | `result-track:b5d3c0ec963bcdae8d85bdd82cdb633a1a2fe5957b2efb0e7c5b27a25519cae7` |
| 252 | `theorem` | [IsBigOWith.eventually_mul_div_cancel](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigowith-eventually-mul-div-cancel.md) | 1374 | `result-track:a1ada5fe500cabe5d0fa48812dcd220f047c5e2f353aa3c30cc189dfd0082803` |
| 253 | `theorem` | [IsBigO.eventually_mul_div_cancel](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/isbigo-eventually-mul-div-cancel.md) | 1378 | `result-track:84eb845382c1c5ed32091c3438e936f4409782014c14fa4c7351f72e2cf81cd6` |
| 254 | `theorem` | [IsLittleO.eventually_mul_div_cancel](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefs.lean/declarations/islittleo-eventually-mul-div-cancel.md) | 1383 | `result-track:b971b150db9c641889ba7a81941526762b0ef503af5263b0fb0035ec9e07fcb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d39dfd0b23c72a0035cfc094ded86e2e3c4768b2fd933566048bcbd96e8f4756 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variantcb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Defs/Variantcb033f4581bc0bb2731f18c310d99363acefda092db32e80afa6c8cc63825ab0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
