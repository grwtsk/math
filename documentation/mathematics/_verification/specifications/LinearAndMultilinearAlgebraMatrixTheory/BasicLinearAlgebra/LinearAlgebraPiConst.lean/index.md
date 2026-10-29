# Verification target: Linear Algebra Pi Const

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e60bf5fb2621cad6e6988bde409a14016462c3b9",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e60bf5fb2621cad6e6988bde409a14016462c3b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Tuple` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Ker` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Range` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-source-edition-2.md) | 52 | `declaration-track:e82df155723a17203065d3d7aa5255dc05b9fcb6e008ebc599319fa414945ecf` |
| 2 | `theorem` | [pi_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-apply.md) | 58 | `result-track:5ff6fbb443439302dcd7bd0eb2ab21ca60066b8b4543338a131cd29faf806a96` |
| 3 | `theorem` | [ker_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/ker-pi.md) | 61 | `result-track:8ed0350321582a8a9a6d3ebb346490198c1cf62105b8f0bc8aa5f8f83b3758cd` |
| 4 | `theorem` | [pi_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-eq-zero.md) | 64 | `result-track:dcb3897e911f1521e07156cb52f9be6b7a38b0ab18da6d6f98c9638b86f83b93` |
| 5 | `theorem` | [pi_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-zero.md) | 68 | `result-track:1ef29b9e9ab8cc7c52beffc3b4aeda2cee40e779ab3bd5e22d6cd8a8dec1c2b2` |
| 6 | `theorem` | [pi_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-comp.md) | 70 | `result-track:f9d8605c54ce156c8215cb5fd2807f0b8335494ad3181122691f63bb1fe9881a` |
| 7 | `def` | [const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/const.md) | 75 | `declaration-track:2b6d77d81c1e00f1050024c4a7edba349b6da0bdc8cbd653f9661737c4be0fdd` |
| 8 | `lemma` | [const_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/const-apply.md) | 77 | `result-track:459adab392b001099e7212893da576491ca307d2e6cc369a0bdd0fad6cc799af` |
| 9 | `def` | [proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/proj.md) | 83 | `declaration-track:e73e081314a286e504adf60610f48b1da0a03b71dfc06eba010b9b3d91dfb595` |
| 10 | `theorem` | [coe_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/coe-proj.md) | 89 | `result-track:6e01e7920c2c0db9e045516f750bd1bfdd16b1277da0ecf8f06c4c077b6d6ec5` |
| 11 | `theorem` | [proj_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/proj-apply.md) | 92 | `result-track:cdf9caaf6398675904f544939eba8272fd9e22574846b05ecaaa598a3157005b` |
| 12 | `theorem` | [proj_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/proj-pi.md) | 96 | `result-track:7b0a03f2587cc67fef9604961d0ab63a459e48baa29f92afc79844e4ea3b9fcb` |
| 13 | `theorem` | [pi_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-proj.md) | 99 | `result-track:eaa0f88b316455e01e1e2d12fb429e062f3e12127eb30ecb89547752c9d18e68` |
| 14 | `theorem` | [pi_proj_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-proj-comp.md) | 102 | `result-track:a6c42a288c35d5f9ffd6538dc63bf0d60f88972008ba7289a0d2ae66db335b85` |
| 15 | `theorem` | [proj_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/proj-surjective.md) | 104 | `result-track:e946a8d62e6decef75917a223a6ff3b9c7c1157cd4b6f76af91389badaf7d183` |
| 16 | `theorem` | [iInf_ker_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/iinf-ker-proj.md) | 107 | `result-track:f973db2b0fd6e7811c8e626ffddd3a778c5913dc6797e2676c728474423052da` |
| 17 | `instance` | [CompatibleSMul.pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/compatiblesmul-pi.md) | 114 | `declaration-track:62a9895f7f81b957fc86a08209badd69569b612736a35b00d441fc6b7a8e30b4` |
| 18 | `def` | [compLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/compleft.md) | 122 | `declaration-track:7a375f9aec53581ee6d0e9c35bfb4da64d0bae786b015428bb2d6bdf35078503` |
| 19 | `theorem` | [apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/apply-single.md) | 129 | `result-track:74d7f0829e9a603de6c082d4df5b7140de6e4b1115736b9b496e319065138185` |
| 20 | `def` | [single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/single.md) | 136 | `declaration-track:28bf0ab6236b7f5fc313ad6d98f81435ab29e542184d403721b6261f47d36b9e` |
| 21 | `lemma` | [single_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/single-apply.md) | 141 | `result-track:898a0040d52bfdae74f21ddf1d04a50c5b18574fa9632dc8eec3ba8337b3d9aa` |
| 22 | `theorem` | [coe_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/coe-single.md) | 146 | `result-track:64f51f3314e4574a92a796ca149b870a3b7c35f9e5abf877fc2f4ac657f658a4` |
| 23 | `theorem` | [proj_comp_single_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/proj-comp-single-same.md) | 152 | `result-track:355b15983b049a0527b60c456f6367352b76c3ceb3dc7fd52df4f2cf4f4636bb` |
| 24 | `theorem` | [proj_comp_single_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/proj-comp-single-ne.md) | 155 | `result-track:8e62973d5f26376fd01d2af006c6dd546552d7614d067a387b5859e6601ef4e5` |
| 25 | `theorem` | [iSup_range_single_le_iInf_ker_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/isup-range-single-le-iinf-ker-proj.md) | 158 | `result-track:ce1d7944cf7a0cd6aceeaaf267de20124e9cb42571e4f0b626d0b170551c1ae0` |
| 26 | `theorem` | [iInf_ker_proj_le_iSup_range_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/iinf-ker-proj-le-isup-range-single.md) | 167 | `result-track:09edf834a13e4437599b8b85960138761242fa42177d30f52881d95f925a8ef5` |
| 27 | `theorem` | [iSup_range_single_eq_iInf_ker_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/isup-range-single-eq-iinf-ker-proj.md) | 183 | `result-track:f9695b341183b3e9cc9d4708a17dd53e1b64b12a57f701c70a916a6a64807a18` |
| 28 | `theorem` | [iSup_range_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/isup-range-single.md) | 191 | `result-track:083ee3e725a7edb093f6920f30da3cbb869e3bc260dd8df4b7557aeeb67a5e38` |
| 29 | `theorem` | [disjoint_single_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/disjoint-single-single.md) | 198 | `result-track:466418cba5514947203b35dbba47395c53cffa85f17e988910df546dd095d58d` |
| 30 | `def` | [lsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/lsum.md) | 216 | `declaration-track:47974a15f8d21f357a7a68a8108b84fd2179ae067637ef75ec7166f61446e351` |
| 31 | `theorem` | [lsum_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/lsum-apply.md) | 231 | `result-track:afe47117efe792c8c485a3d0439ab3486651ae595df90c17e678d7157d0cd478` |
| 32 | `theorem` | [lsum_piSingle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/lsum-pisingle.md) | 235 | `result-track:77c7166e58cdfef85c8927c5d62c215a2675b71a2f612aa6a265eb5316036e2c` |
| 33 | `theorem` | [lsum_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/lsum-single.md) | 241 | `result-track:f22730956f97d5fc1d8fd6e1ebcd40439b0680f7be96f6328ac6ad69721fc337` |
| 34 | `theorem` | [pi_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-ext-source-edition-2.md) | 252 | `result-track:a7becaeb1c3ae5b3c0dd6c411cb4464740cdfd913782725c32caa7b468baf4fe` |
| 35 | `theorem` | [pi_ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-ext-iff.md) | 255 | `result-track:9d17d1d8009ec1ad0fedea3c574900686cae52a7266829355ccea63fb2a2eb4a` |
| 36 | `theorem` | [pi_ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-ext.md) | 261 | `result-track:692f40368c295eb503d7049db27d6b71ddcf7c2df8446326571882a5dfe92f74` |
| 37 | `def` | [iInfKerProjEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/iinfkerprojequiv.md) | 273 | `declaration-track:5c75cd6fcebdc1f1012bb9f0bf3574cbe2c21e566d1ff3089dbd6d247f44cf22` |
| 38 | `def` | [diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/diag.md) | 306 | `declaration-track:4734b16444d08ab62632210f121a01abb0662f9a96547302b072d7424953fc9c` |
| 39 | `theorem` | [update_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/update-apply.md) | 309 | `result-track:47ce1808279058288077f39f3dd62e8a15a6a186c2b90ac5a940707e9ddbd537` |
| 40 | `theorem` | [single_eq_pi_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/single-eq-pi-diag.md) | 317 | `result-track:285aa9e5a514ec5b5f0d6ff2ed025995f175a52f0d5665d4eb54ca36c714c6cb` |
| 41 | `theorem` | [ker_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/ker-single.md) | 322 | `result-track:d1009f634b4861fe78a31fd8e9c975e850d447cf08d41e8268a5b011b1f0b387` |
| 42 | `theorem` | [proj_comp_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/proj-comp-single.md) | 325 | `result-track:16c9f30af9e9545f45a1b616a08759ce99d69bed5bef16d5aa28f41a1158e145` |
| 43 | `theorem` | [pi_apply_eq_sum_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-apply-eq-sum-univ.md) | 332 | `result-track:2dd004a4e647742c7bea3b97fe842dab76544a7712e674a4a9ee06425b62c1b5` |
| 44 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi.md) | 350 | `declaration-track:9c96ac12936f2da28e67f28e89ae62452f04bfaafecf7eae4233206af725b1df` |
| 45 | `theorem` | [mem_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/mem-pi.md) | 361 | `result-track:be40c20a87427091871e3f59581fe38fd9f89158d8df691524e4bc5e7fed1001` |
| 46 | `theorem` | [pi_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-empty.md) | 365 | `result-track:37deaf2221f71ee0ba89401fd374757e25fc727da93518d2441ad72c6b8c0893` |
| 47 | `theorem` | [pi_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-top.md) | 369 | `result-track:9afb72df05b8300047d6e9962e003c208af6bcac66e8160eef003f6da55ce446` |
| 48 | `theorem` | [pi_univ_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-univ-bot.md) | 373 | `result-track:4d49df9428df89561971c7c97697e322e512a37037944c24201557e18ab2d10d` |
| 49 | `theorem` | [pi_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pi-mono.md) | 377 | `result-track:bb01e9c083995fff2a4db4ef7c4e2035c34bf34a4f7e9c96b1ba7d2fbb0ee4e8` |
| 50 | `theorem` | [biInf_comap_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/biinf-comap-proj.md) | 380 | `result-track:511958ba23034b8913d11e8c349446d37b110acc495d51c420cdf832585040c3` |
| 51 | `theorem` | [iInf_comap_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/iinf-comap-proj.md) | 385 | `result-track:e7e79b357b655d64e901ebf090ceea495d59bed6f944e4bcaf7ac6322cf06707` |
| 52 | `theorem` | [le_comap_single_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/le-comap-single-pi.md) | 390 | `result-track:1a79fb5de0f5e2fd1a7e8dc2556ba236e5c12586d728f7de386c64384913b450` |
| 53 | `theorem` | [iSup_map_single_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/isup-map-single-le.md) | 397 | `result-track:4d03280828b3df9250fd47cc2f1b4b6c54e69e43269545b4e4bce8dbfe9095a3` |
| 54 | `theorem` | [iSup_map_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/isup-map-single.md) | 401 | `result-track:e38b0c32d8c4898c789ff9d4c8e3e06f662d4450d825dc4667a5ff4a35f96ee8` |
| 55 | `def` | [piCongrRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picongrright.md) | 420 | `declaration-track:8e204f1801a7f5caa4b747aa75cc620bf11c025567cb41d7f95349403f02133d` |
| 56 | `theorem` | [piCongrRight_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picongrright-apply.md) | 427 | `result-track:54ea90aa6fc8419fecfade47f92cfb1cf3e081d5e882693b8e01bfb738110ad6` |
| 57 | `theorem` | [piCongrRight_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picongrright-refl.md) | 431 | `result-track:c30a0ef04198ad60e80f05f9f77b1361544edb7f88f6323185fcb359a32e6436` |
| 58 | `theorem` | [piCongrRight_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picongrright-symm.md) | 435 | `result-track:879160ecbd2ec023ace54bc4b6eecbc4b1efddc91a7926a776e40a3fdf38663a` |
| 59 | `theorem` | [piCongrRight_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picongrright-trans.md) | 440 | `result-track:00526507cce2f32a43b85524fb6f22745ff0849bdbafd9630f22d0cfc3598831` |
| 60 | `def` | [piCongrLeft'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picongrleft.md) | 450 | `declaration-track:5d88388a9af901a22a0cb4486176b03bf12b2439a97db757f6c614d4a69e3baa` |
| 61 | `def` | [piCongrLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picongrleft-source-edition-2.md) | 459 | `declaration-track:bfe8901102e016a8cb5a46b1ef393dc665b02d022d1635e10597b02229ad9286` |
| 62 | `def` | [piCurry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picurry.md) | 463 | `declaration-track:6fce52be8315428979556a62e76f429d401ac9b1dad3a9fbf920b6e552221103` |
| 63 | `theorem` | [piCurry_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picurry-apply.md) | 470 | `result-track:60d1bb0ae53e88dee122d71cac03886afa194479ca1a86f269463ba2bfc98335` |
| 64 | `theorem` | [piCurry_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/picurry-symm-apply.md) | 476 | `result-track:6bd0c4bf4ea8c059e1f0ea6f5832271adc2bc81b2affe4961724391f696cf8d8` |
| 65 | `def` | [piOptionEquivProd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pioptionequivprod.md) | 483 | `declaration-track:b263498c10a15e27b0fe65a07104fe5e963170c8419e8af45761014190bf33eb` |
| 66 | `def` | [piRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/piring.md) | 500 | `declaration-track:f624aebf252e005ba387fb92a65482b23853ad2d937a67baf26e15c1af190fc2` |
| 67 | `theorem` | [piRing_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/piring-apply.md) | 507 | `result-track:9cea6047cdcb5c1c9e47205ca8ac02d00ddde7a610dcfff90278aca0328d1cd3` |
| 68 | `theorem` | [piRing_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/piring-symm-apply.md) | 511 | `result-track:7b840eef6c5f3553f7180fd58ddad1d67e502b12ec9905f8fc8d2d0378d9e399` |
| 69 | `def` | [sumArrowLequivProdArrow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/sumarrowlequivprodarrow.md) | 517 | `declaration-track:f35de8ef638ee9d56719bb898aa506fc189dcdb409e5d62ea67cce92b254f0c5` |
| 70 | `theorem` | [sumArrowLequivProdArrow_apply_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/sumarrowlequivprodarrow-apply-fst.md) | 529 | `result-track:b38de54f8776dc76bffc08fa7295ccd5e01801d3b6642b33f5dcc9c4778b5dc2` |
| 71 | `theorem` | [sumArrowLequivProdArrow_apply_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/sumarrowlequivprodarrow-apply-snd.md) | 534 | `result-track:ff4abe16a2518d076f39633420d750858c75a5fbfe29e43f19d6cf1f49fdcae6` |
| 72 | `theorem` | [sumArrowLequivProdArrow_symm_apply_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/sumarrowlequivprodarrow-symm-apply-inl.md) | 539 | `result-track:080d837262f3d5fbcc0cdd2affc617effca9ca3284ccd367716243ae54363d3d` |
| 73 | `theorem` | [sumArrowLequivProdArrow_symm_apply_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/sumarrowlequivprodarrow-symm-apply-inr.md) | 544 | `result-track:39f3be5440f3f18dde258551cd14b2b5f8952716ebbbde186d71ce7edb0da179` |
| 74 | `def` | [funUnique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/fununique.md) | 550 | `declaration-track:4bd6efaa59aef6f57dffa8ee8ec7ec7a4a9a9185a8ffe6867ba4403fe1368f52` |
| 75 | `theorem` | [funUnique_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/fununique-apply.md) | 557 | `result-track:01c845122655aa35f801a5624efb5fa8b0a427a03fd54ba771fe5303686fd898` |
| 76 | `def` | [piFinTwo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pifintwo.md) | 564 | `declaration-track:59dedd05e68ff1ebac7206a22735bd90a363d1f13a9529bc7ec5807ebf037d1a` |
| 77 | `theorem` | [piFinTwo_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/pifintwo-apply.md) | 572 | `result-track:e406ba7bdcc999fa4a36bc7ccae667e42fed54b97f5af688b12035da284f3586` |
| 78 | `def` | [finTwoArrow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/fintwoarrow.md) | 578 | `declaration-track:34226ae8837a11d16a40b42d746be72d492336757b36dd52a57dd6a159e588cc` |
| 79 | `def` | [Function.ExtendByZero.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/function-extendbyzero-linearmap.md) | 589 | `declaration-track:cb41a940ccf732d230eea9102b15417d2f487b16f987365a65abdc7ed099a3e4` |
| 80 | `def` | [Fin.consLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/fin-conslinearequiv.md) | 599 | `declaration-track:20567289c4b1fcb3252e2ee59652887742a33d49f280dc9f135d5ff0341041e6` |
| 81 | `def` | [LinearMap.vecEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/linearmap-vecempty.md) | 629 | `declaration-track:5a73327acd6e1183b5ba46b312f1e16c46639bc5c994900e37f2d5055aa6d808` |
| 82 | `theorem` | [LinearMap.vecEmpty_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/linearmap-vecempty-apply.md) | 635 | `result-track:46425818da186e0afd061698fce1e8d074b6c4a2f896d9c8093df234935f2ba9` |
| 83 | `def` | [LinearMap.vecCons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/linearmap-veccons-source-edition-2.md) | 640 | `declaration-track:6f20e04f98dca0a9afda555ee354a9e17c59a8093975bc2180c6335c447ae54c` |
| 84 | `theorem` | [LinearMap.vecCons_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/linearmap-veccons-apply.md) | 644 | `result-track:bff94fda9a330e9bb140a8dc3312f820d012cea439afd6e7dd9f3d56e453dd06` |
| 85 | `lemma` | [Module.pi_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/module-pi-induction.md) | 662 | `result-track:92fa42fa3b451d6737100ba7f300dda504151619af681bfcc39c1af55ef95409` |
| 86 | `def` | [LinearMap.vecEmpty₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/linearmap-vecempty-source-edition-2.md) | 690 | `declaration-track:c4c4534858e90b8cf37e99e1819101529f020175050b35325cb43a237bd4c17e` |
| 87 | `def` | [LinearMap.vecCons₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/linearmap-veccons.md) | 698 | `declaration-track:34537edbb2ac82fda307ea7a842bd9cd48091ee1414f02cb3b57b4f0bf4fdce4` |
| 88 | `lemma` | [Module.pi_induction'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiConst.lean/declarations/module-pi-induction-source-edition-2.md) | 711 | `result-track:d980c02fb8d892960c872ca287d5773c6805676d8eb25ea1a0a3a05aaa6fada2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09104fdaf3493062d1beab4f1780692cff1fead678a03cab233c6767399b127e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Pi/Variant01a09e66f1aeb757912a1d135b6608ded4b64511444fdf8ab88a563bd010df63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
