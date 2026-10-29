# Verification target: Local Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d40af3c1fe472e2d9ebd5b8328795a4b85a17210",
  "lexical_observation_count": 153,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d40af3c1fe472e2d9ebd5b8328795a4b85a17210`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mfld_cfg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/mfld-cfg.md) | 80 | `declaration-track:e38a4fa4b7b18fad547195b1e8cc3f302873434821c7fcf0db5358aa38973803` |
| 2 | `elab` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/elab.md) | 89 | `declaration-track:80eb4f0cb13a26ea1de424e1dbc2bfed88953243e0ef2506c2d6256365457615` |
| 3 | `structure` | [LocalEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/localequiv.md) | 119 | `declaration-track:c6f3c61dfc432bfb79f9620886042e381c03bcae848bb5ea1c5856a8589e29df` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/instance-source-edition-2.md) | 145 | `declaration-track:c407346b5618375adcf54c03bc89741b2291fe9e4ff2a4985fc8b2f5ff4ab99d` |
| 5 | `def` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm.md) | 150 | `declaration-track:1231ed676a34db0423d3b22a64cea10ce815fee93e178ddb3c31f03aadcdc917` |
| 6 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/instance.md) | 161 | `declaration-track:949f46e3c0804c9d1f93245414c9a42d7d21a54d122a17cebbc67bf3eb664de0` |
| 7 | `def` | [Simps.symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/simps-symm-apply.md) | 165 | `declaration-track:deb59b9bd4e53b7daa925dbdaf48731182f75a2cb11577ef2e7def440b2cac7b` |
| 8 | `theorem` | [coe_symm_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/coe-symm-mk.md) | 179 | `result-track:a27d77bd3eac283cd4cc25198e4dcb649f5f3f210d4fec050db339e9c8913b73` |
| 9 | `theorem` | [invFun_as_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/invfun-as-coe.md) | 191 | `result-track:18404e34e034656e246da8970067f51f818f2670d1752e69bfa3e08381155f1b` |
| 10 | `theorem` | [map_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/map-source.md) | 196 | `result-track:c7b0fecf42d3109652737fcd35099ac1ebdbbd5642a7d3b51b6ce4a5e42aa59c` |
| 11 | `theorem` | [map_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/map-target.md) | 201 | `result-track:f0386e481452d91baf1e959f40a2b4f41b47adb04d489acd2d6933da80ffa113` |
| 12 | `theorem` | [left_inv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/left-inv.md) | 206 | `result-track:1a462de80cef66bfe927fea60acdc49ed463674601185354f01d77458051b16c` |
| 13 | `theorem` | [right_inv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/right-inv.md) | 211 | `result-track:61773da1f0e389d960adc8e7ba257eb5eb1884855d47d6d729d8909fefba3518` |
| 14 | `theorem` | [eq_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eq-symm-apply.md) | 215 | `result-track:9781e1ced9e4e6aa0e28d76a5caa715d46431c66623171cb68ba719732ca1422` |
| 15 | `theorem` | [mapsTo](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/mapsto-source-edition-2.md) | 220 | `result-track:9f8bce13d512ad137452f38857e30fc8adcf73cfe94c482b0e9e021629a99c57` |
| 16 | `theorem` | [symm_mapsTo](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-mapsto-source-edition-2.md) | 223 | `result-track:65ae7b4babed4c6096834f114ebdcf39cb764880dba91cf000e746a4e3a12b6e` |
| 17 | `theorem` | [leftInvOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/leftinvon.md) | 227 | `result-track:144f50d12c376c7169f07c352b6f68657379fc5af7c5f074445230f484b050d2` |
| 18 | `theorem` | [rightInvOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/rightinvon.md) | 230 | `result-track:e71265d9254acba6ed3ae05e0dcd1417ac34347ec85029958ffdfedb22bde123` |
| 19 | `theorem` | [invOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/invon.md) | 233 | `result-track:863804f11caeb077b6abda5fd9d14959bcf761f5b410a9656474d20d4d3f9175` |
| 20 | `theorem` | [injOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/injon.md) | 237 | `result-track:8c5b927b751bba7c0e97cdd37418118c2604f5a3c5ec75d320b6883a3f06f0ff` |
| 21 | `theorem` | [bijOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/bijon.md) | 241 | `result-track:bd876d355b010f5e1834a51f832e7b580ac8f7d7dac6647814e23597e80eed0d` |
| 22 | `theorem` | [surjOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/surjon.md) | 245 | `result-track:15a7d48a1ecf34de73d811dcc112fc99c4536965ec16839bd22320975314bba1` |
| 23 | `def` | [_root_.Equiv.toLocalEquivOfImageEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/root-equiv-tolocalequivofimageeq.md) | 252 | `declaration-track:3bc579390ad1b4bce38cc9eb15ba236df35f61b1562ebbf707b136ae28dca5a7` |
| 24 | `def` | [_root_.Equiv.toLocalEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/root-equiv-tolocalequiv.md) | 268 | `declaration-track:6bec0bc6b0034e4bfb587e8b418302665fad471665f4ba4045160d896cfdb002` |
| 25 | `instance` | [inhabitedOfEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/inhabitedofempty.md) | 276 | `declaration-track:08ae8ec40ef23f05df80d4abdfad50d1976a2cfe9998fdd68015862f5a5daa3e` |
| 26 | `def` | [copy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/copy.md) | 282 | `declaration-track:96195b2d98d8d7c038e0f6f1b1bba71add850e8b7ee19110ba85608cedbe4e8f` |
| 27 | `theorem` | [copy_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/copy-eq.md) | 299 | `result-track:f8c1fd8860e8e5fd31f457c0995b5e3a2e11963ae036afb0d88f947e8cbc8140` |
| 28 | `def` | [toEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/toequiv.md) | 308 | `declaration-track:356a152e316a043ac06519eec61edc5262ee66823c6b0dc322bdf640e69ef0e2` |
| 29 | `theorem` | [symm_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-source.md) | 316 | `result-track:bab58f4d03da8259034a52e168a3fe6304c69b62a959e6ffbdaade573f3fb21e` |
| 30 | `theorem` | [symm_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-target.md) | 321 | `result-track:01e25c0bee3d682d1f3aa552078c5b02761cd66ca2974da9fe6a0d7abc47ad07` |
| 31 | `theorem` | [symm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-symm.md) | 326 | `result-track:057fd4550efa2038d4515bb067e5dd8a8eb60ceba0ed8951d6cec03630c2c072` |
| 32 | `theorem` | [image_source_eq_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/image-source-eq-target.md) | 331 | `result-track:27d9bf0913519e3011bc375cc66a0101de78c6674d0d16bf5d8435e8a2322aad` |
| 33 | `theorem` | [forall_mem_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/forall-mem-target.md) | 335 | `result-track:fd4a82ac85032bb9128e16aeca31dd3447f7bc36089ae91c57e9c0dcc9d873b5` |
| 34 | `theorem` | [exists_mem_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/exists-mem-target.md) | 339 | `result-track:9719e1799124767826f99404a10b5fa376a4410ea0f643bfb72846c84b754c25` |
| 35 | `def` | [IsImage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/isimage.md) | 350 | `declaration-track:a6dbd75cb352498ec881ce43de826a3d4e5cdf6645d69ee22ebf8dbde8faf97f` |
| 36 | `theorem` | [apply_mem_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/apply-mem-iff.md) | 358 | `result-track:73fac37cdf49e31b45429b5e01af0d7936ca86067b28aa0519d02fc906b1b9eb` |
| 37 | `theorem` | [symm_apply_mem_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-apply-mem-iff.md) | 362 | `result-track:8b49275004b3020652bb4a56af780aefbcbc31acfaa3486de34ba1b93d17cd82` |
| 38 | `theorem` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-source-edition-2.md) | 366 | `result-track:d742adebb577d4b6e5db23b63fc8b27c9aa531ec3878a26e04efcdf1ab54715a` |
| 39 | `theorem` | [symm_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-iff.md) | 371 | `result-track:2f0f0f55d2060f950c8258ce0832ccf4a2560db2424dde0dfd3df112a3d14704` |
| 40 | `theorem` | [mapsTo](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/mapsto.md) | 375 | `result-track:69298546bda4a54139427f861a7725e847a2f0ccdc727dbdd738e6bf2e02829e` |
| 41 | `theorem` | [symm_mapsTo](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-mapsto.md) | 379 | `result-track:1699d72a5db01b296c7a99acde54834c3dafb78b9e20e67c7f38c0ef0c0751ca` |
| 42 | `def` | [restr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/restr.md) | 385 | `declaration-track:01d280fac2087930817dbc4accebebb54a1e769534f4135b620153032e65ef91` |
| 43 | `theorem` | [image_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/image-eq.md) | 400 | `result-track:29e8da617aa894f59e4fc5b26452347f1b26535e2e74bfe975ceaf17e9cf3b1d` |
| 44 | `theorem` | [symm_image_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-image-eq.md) | 404 | `result-track:6d825c2cc009799fd16fe27878bf64184e4dc037518da52c63261db8d77c46dd` |
| 45 | `theorem` | [iff_preimage_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/iff-preimage-eq.md) | 408 | `result-track:319744541bb7fb6a0689648a6b368e57bae9054a34f8b8189c5f99e272e4c59c` |
| 46 | `theorem` | [iff_symm_preimage_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/iff-symm-preimage-eq.md) | 416 | `result-track:c2def9bd44ebcd85055ca2b78033f19bb9e43768d1fafe70113a5669cd863e45` |
| 47 | `theorem` | [of_image_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/of-image-eq.md) | 424 | `result-track:693152fbeeca2f06d953c3ff0d5b4887671750c50566004d65d034570c0f00fc` |
| 48 | `theorem` | [of_symm_image_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/of-symm-image-eq.md) | 428 | `result-track:1bf13747096fc95d678c4714b24e7e02ea56b84acde5e4712f981056bf835b6b` |
| 49 | `theorem` | [compl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/compl.md) | 432 | `result-track:8dd57eec4962fdd8f95e51eea555eecdd3be84d18136ffae7dcc8f4ff252bac5` |
| 50 | `theorem` | [inter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/inter.md) | 435 | `result-track:372260b637b8080205740b3fe58feb994cb1ab11c346c5033d5aadda932eeef9` |
| 51 | `theorem` | [union](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/union.md) | 439 | `result-track:2b39076bc1f2e8907f90b205f66ad47cadc62f8af6f73b00961637090e632ce4` |
| 52 | `theorem` | [diff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/diff.md) | 443 | `result-track:b1003c7592f70e1cfaff1d0326048a7ebc7b234f068d7bc27f267bbecbccd1fe` |
| 53 | `theorem` | [leftInvOn_piecewise](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/leftinvon-piecewise.md) | 448 | `result-track:942d32b7d2ac7708dac8a1ce9e03f7f3537f281fc957a2b34ef131af49282e4c` |
| 54 | `theorem` | [inter_eq_of_inter_eq_of_eqOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/inter-eq-of-inter-eq-of-eqon.md) | 457 | `result-track:dd55dbae956dcc19ec86487a32de86a2023bcd10fa8114df69fc8c4908a8f9bd` |
| 55 | `theorem` | [symm_eq_on_of_inter_eq_of_eqOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-eq-on-of-inter-eq-of-eqon.md) | 462 | `result-track:a6b1a092c625d4f922fa0f19b330e65aeda78388b3ac838fd329087814819c07` |
| 56 | `theorem` | [isImage_source_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/isimage-source-target.md) | 473 | `result-track:9cea180418bcbe9982b8de551f9f5c2db12756930b9687f818335b3eea6a2943` |
| 57 | `theorem` | [isImage_source_target_of_disjoint](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/isimage-source-target-of-disjoint.md) | 476 | `result-track:05afd21d08969d79041aa9da956a81d6488de5e59dae6937c84bc096fc05c328` |
| 58 | `theorem` | [image_source_inter_eq'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/image-source-inter-eq.md) | 481 | `result-track:10d1638549883eff2c08c8694ce8565cd9897c5c50ac29c19a6a474cb1330330` |
| 59 | `theorem` | [image_source_inter_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/image-source-inter-eq-source-edition-2.md) | 485 | `result-track:97462aca3ac60e4efb856dc9b61ec395e076d2c067b44411aa80ef60182843ee` |
| 60 | `theorem` | [image_eq_target_inter_inv_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/image-eq-target-inter-inv-preimage.md) | 490 | `result-track:0383bbf98ebd513fc977876a2783f53920b87ac09e5e459875581805dc09fc4c` |
| 61 | `theorem` | [symm_image_eq_source_inter_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-image-eq-source-inter-preimage.md) | 495 | `result-track:581d802ab43df4fad453524697bde2992a7e31414e505fa49f34dc401827f4d8` |
| 62 | `theorem` | [symm_image_target_inter_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-image-target-inter-eq-source-edition-2.md) | 500 | `result-track:d8c57b82eda5cb01723ac10d19082cd66fec89f88260fa625d4d7c195d28ce67` |
| 63 | `theorem` | [symm_image_target_inter_eq'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-image-target-inter-eq.md) | 505 | `result-track:33bd16df9fe51fcd45ec4ef064bbef114e56f444f85f128e130bd807ab45904f` |
| 64 | `theorem` | [source_inter_preimage_inv_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/source-inter-preimage-inv-preimage.md) | 509 | `result-track:da98c0afdf4b006705f10c4bda9fe2004e0d1a845c70b69cfc326815439f9063` |
| 65 | `theorem` | [source_inter_preimage_target_inter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/source-inter-preimage-target-inter.md) | 515 | `result-track:12aad3f89bca93cb4bbb2fe71b71f35bc9c5b54f93989cf0d2a864e0cc32086a` |
| 66 | `theorem` | [target_inter_inv_preimage_preimage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/target-inter-inv-preimage-preimage.md) | 520 | `result-track:f94384b8b26fa899e4e897dc85b78be7aeb482ecf8d79001bd5d2d167d290c4e` |
| 67 | `theorem` | [symm_image_image_of_subset_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-image-image-of-subset-source.md) | 525 | `result-track:a76cdd3659f48f444d412d94f2e98c6599ed7ae562f768dab85c3e07d271d549` |
| 68 | `theorem` | [image_symm_image_of_subset_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/image-symm-image-of-subset-target.md) | 529 | `result-track:e06e8d5a1993981d9e4fb363f373a22be9e757ba606a346db482b3e3cdb370b6` |
| 69 | `theorem` | [source_subset_preimage_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/source-subset-preimage-target.md) | 533 | `result-track:02171ad6b6c102645ea1ce3f5db587b3724dee7c268350f90a198c22b37bfaa8` |
| 70 | `theorem` | [symm_image_target_eq_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-image-target-eq-source.md) | 537 | `result-track:635787f15c568eac16a3ea9018fa625d55d6a62d373b574f172928848bafbf31` |
| 71 | `theorem` | [target_subset_preimage_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/target-subset-preimage-source.md) | 541 | `result-track:60a902afc7f7c8bd0167aa0794c1fae9684aa560f2b06b54e67eb21ed08b6df1` |
| 72 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/ext.md) | 547 | `result-track:90d72f4469836595734d76318d0cc2c9221467e75a11e0f2e31f67537023a478` |
| 73 | `def` | [restr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/restr-source-edition-2.md) | 564 | `declaration-track:cb502bfaab36e6d4a6803aaa7a8bc0b451d413f8f8d89da2c94e3473311de0d9` |
| 74 | `theorem` | [restr_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/restr-coe.md) | 569 | `result-track:7a31ec109f5a893fa0ac6b40e2e7da3e829ce8a2842de2a3f8103687beedb8bd` |
| 75 | `theorem` | [restr_coe_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/restr-coe-symm.md) | 574 | `result-track:f04ae56ac09e08f19925bb72de4f63aaf925bdc35ddacab2c604658fd113437b` |
| 76 | `theorem` | [restr_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/restr-source.md) | 579 | `result-track:39ab5fdfbc49141956cf45951c11153d2da6ec1cdd71f4e429eb6820be552c7b` |
| 77 | `theorem` | [restr_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/restr-target.md) | 584 | `result-track:0bb745ca27363418ceab1a2cbf024713df32bd4928aa2d420fc49b58c9aabbeb` |
| 78 | `theorem` | [restr_eq_of_source_subset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/restr-eq-of-source-subset.md) | 588 | `result-track:010e208fac2e2defcff500361a07e4483398bfd23eac50bdc8e46d7730ccfe18` |
| 79 | `theorem` | [restr_univ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/restr-univ.md) | 594 | `result-track:23b8ba70ef5974c143d424b7a5b8eef030f537c7e05620d388c4cf1991eee2f2` |
| 80 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl.md) | 599 | `declaration-track:a834c77b2fd1de0378a8c517029e22eb608de9686d197989ae10b668c84bdf38` |
| 81 | `theorem` | [refl_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl-source.md) | 604 | `result-track:2f06e489aab8994a88ac6835676d59f0c591e0be2215b279ece2772e423e3e6a` |
| 82 | `theorem` | [refl_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl-target.md) | 609 | `result-track:b3dccefc0e2eb96b724f26b3bdbe11e9df84120301162a2f041de4a7335ccc04` |
| 83 | `theorem` | [refl_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl-coe.md) | 614 | `result-track:e5e1fe269f8f11df46a65c0c1135ed03daed8e469cdc1cb98b2f6463fd3349a9` |
| 84 | `theorem` | [refl_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl-symm.md) | 619 | `result-track:8af18f69258d15aa75e1db41b5f34638caffc047c0344a53e7d3f08f9ffecde1` |
| 85 | `theorem` | [refl_restr_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl-restr-source.md) | 625 | `result-track:0c9f6529666fbbb42e09d76806b3aa6437f24960c109aaccd7092c04f8478847` |
| 86 | `theorem` | [refl_restr_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl-restr-target.md) | 630 | `result-track:d15e857fb521511ce5c644c94dd77668bbd8139cca030b85badaed52f93241ae` |
| 87 | `def` | [ofSet](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/ofset.md) | 636 | `declaration-track:fe258a996fa9fa63ed3fc7b78ea653116b9da5f235be4b2590ac024a523eb77c` |
| 88 | `theorem` | [ofSet_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/ofset-source.md) | 648 | `result-track:740f76147257530eda07e16eaf661bcafc4cafff26abf7c8d8c1b4302f8eefd3` |
| 89 | `theorem` | [ofSet_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/ofset-target.md) | 653 | `result-track:c3b8ecb00e98e32f0ede15e4f6d2f66d17332c47c6813ee59d0dfd643b43de33` |
| 90 | `theorem` | [ofSet_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/ofset-coe.md) | 658 | `result-track:ad87d37bd836e7258d16fe161be39d08cd2b63125366a26832a45ae40bad1c50` |
| 91 | `theorem` | [ofSet_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/ofset-symm.md) | 663 | `result-track:6ad68fddabd9fb39f8fc447330b0e61df4160015235e46ef9d0dcbdfe19c3cb7` |
| 92 | `def` | [trans'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-source-edition-2.md) | 670 | `declaration-track:d96025fb54093d478883431e4165e86f3dd2ea5b2b152a46bd3bf6356d8d9597` |
| 93 | `def` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans.md) | 683 | `declaration-track:40d92828eed0b7302e9b4474185da062b82bff49e0f7c0d9815ae1648ffbfa63` |
| 94 | `theorem` | [coe_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/coe-trans.md) | 688 | `result-track:c8632fce964cea1a2ab4272ab9cc05a52dc6d8517517d37a0698713a7e38351d` |
| 95 | `theorem` | [coe_trans_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/coe-trans-symm.md) | 693 | `result-track:f6b11e7f480d99734823bb23c929aa54c8359795f22a352defb00bbe6a974d52` |
| 96 | `theorem` | [trans_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-apply.md) | 697 | `result-track:98dc1d509001e2a597c356c7d6ca46e9095b8cd59e7b5edb4ee3646ccf554283` |
| 97 | `theorem` | [trans_symm_eq_symm_trans_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-symm-eq-symm-trans-symm.md) | 701 | `result-track:1a0962822c637e3e8610182904bbe4072048747b0cd77020a52eb2e6e8b20af2` |
| 98 | `theorem` | [trans_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-source-source-edition-2.md) | 706 | `result-track:64ee1d612c7b69a5d5a6526353fc0d486c37a41c4f9a38bd8a906d4d8fdf4cee` |
| 99 | `theorem` | [trans_source'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-source.md) | 710 | `result-track:608cdb6aa4d0a2660b081af9307e0a2197e59c520243b6c1f4a907c8ad60c90b` |
| 100 | `theorem` | [trans_source''](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-source-source-edition-3.md) | 714 | `result-track:b83be31ee45527d4341ce5d956c71c2079eb033f563a43d09f68e3c23efa7fe0` |
| 101 | `theorem` | [image_trans_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/image-trans-source.md) | 718 | `result-track:c02567ed79d64ba0f287ca290a0ea509a27d393282b0b8b474c3c818a1dcfc76` |
| 102 | `theorem` | [trans_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-target.md) | 723 | `result-track:48cf2fe7330f376dbf41cfec249efb8035df6096cd38834301b1504cb8cfce48` |
| 103 | `theorem` | [trans_target'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-target-source-edition-2.md) | 727 | `result-track:606d265b53e15da4e06ad17e3521a04f249ad0ae66855d8ca22eef5472d00df1` |
| 104 | `theorem` | [trans_target''](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-target-source-edition-3.md) | 731 | `result-track:60937b3045f1fa2cc97751dbb3b106b7fc990ed0b0ffd3943207f7d92a1a3aec` |
| 105 | `theorem` | [inv_image_trans_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/inv-image-trans-target.md) | 735 | `result-track:272c7e273dc380caf699a5f0736be786769bde21b0a4f49b70c8ce663b23da57` |
| 106 | `theorem` | [trans_assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-assoc.md) | 739 | `result-track:7f60a4098f89da26322648163fc1cbb0cfc1498051117870b9d6dcb447881f44` |
| 107 | `theorem` | [trans_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-refl.md) | 745 | `result-track:8bfa2fb283f70974d28d24f51c0e0c854e3486af62aadf050d4b22e2fb4c6fb9` |
| 108 | `theorem` | [refl_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl-trans.md) | 750 | `result-track:341d54ff208c1bbe68581b20192668818dbbaf79aa9e455df86f059793734c21` |
| 109 | `theorem` | [trans_ofSet](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-ofset.md) | 754 | `result-track:1ab3a7d2bc7d6ed7e37f2037d7bcc526f13bf00b1da84fb9bfe8f9124b3e22a4` |
| 110 | `theorem` | [trans_refl_restr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-refl-restr.md) | 757 | `result-track:13b4095ea97dee9f275614263fc8951ad533051e61aeea6b246ed9029b524562` |
| 111 | `theorem` | [trans_refl_restr'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-refl-restr-source-edition-2.md) | 761 | `result-track:c84a8d481189bc036f87137a389c785f165b25fa520a1d1a576cf2a27fa8fc59` |
| 112 | `theorem` | [restr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/restr-trans.md) | 768 | `result-track:7549ae5f2aa9be75641775b0aaf4e5654f0e97737b3d933496af784ba1fa4c77` |
| 113 | `theorem` | [mem_symm_trans_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/mem-symm-trans-source.md) | 774 | `result-track:7e07dc31e615f6785234a92673d2f94f7fc4b6549d85254cbe1df49b2c41ffe6` |
| 114 | `def` | [transEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/transequiv.md) | 782 | `declaration-track:c2779991d75eaf4dffad727f35afc458ed60ebc5ea3fcc81c52f8160ff32121b` |
| 115 | `theorem` | [transEquiv_eq_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/transequiv-eq-trans.md) | 791 | `result-track:f6a7fb00367cbde18e6252cdc3842343b66c44c23c4ab6c3d8e0a588ae7cb989` |
| 116 | `def` | [_root_.Equiv.transLocalEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/root-equiv-translocalequiv.md) | 798 | `declaration-track:b2a7aed4ecad39bda4d996dddebd7f6867a91cb4f8404fa0a60192525e0de280` |
| 117 | `theorem` | [_root_.Equiv.transLocalEquiv_eq_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/root-equiv-translocalequiv-eq-trans.md) | 807 | `result-track:0b1300bd3f771630c05f2c88d66abd1910508547de3081d6d228b541810e0f25` |
| 118 | `def` | [EqOnSource](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource.md) | 814 | `declaration-track:c7f55e6a87ce2205a7b4699545355ccdc2c2a651aa7baabc6cc90fc6e7301f2b` |
| 119 | `instance` | [eqOnSourceSetoid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsourcesetoid.md) | 820 | `declaration-track:e7088609cc711d83050308f9d930aee87f22ce6f15a7315c1070c0ad093f37ac` |
| 120 | `theorem` | [eqOnSource_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource-refl.md) | 825 | `result-track:e4f94ca4e3aacccbe19966b1a272be924666e1a29ce1c9dd32fcbaa3acfcd748` |
| 121 | `theorem` | [EqOnSource.source_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource-source-eq.md) | 830 | `result-track:b6410e24457efabf996a272e3505b0233e8797b30b95d12db7ab2c280bc97904` |
| 122 | `theorem` | [EqOnSource.eqOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource-eqon.md) | 835 | `result-track:12e0c344217f05b70ef530c31272860c2a9ed14a2147cc0fcc60d794df9475cc` |
| 123 | `theorem` | [EqOnSource.target_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource-target-eq.md) | 842 | `result-track:1a3f9103f41427ee84d7fa5a95ba226b05b36594a9f5b725ab88b2244bd6eb2e` |
| 124 | `theorem` | [EqOnSource.symm'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource-symm.md) | 847 | `result-track:f4e794dcf021480b2ff6ad2fa96931c1bc148e4478ed512b0585453a03472180` |
| 125 | `theorem` | [EqOnSource.symm_eqOn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource-symm-eqon.md) | 854 | `result-track:fce34fe3eb92327a0c330ec70ffd846243c2971c7739911ec5ff25aa88f85079` |
| 126 | `theorem` | [EqOnSource.trans'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource-trans.md) | 861 | `result-track:2731a19cc95a6ee0527f360ea08feec54c626104b324eb3434a5ec704efd1418` |
| 127 | `theorem` | [EqOnSource.restr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource-restr.md) | 872 | `result-track:5efa2693276c9c10bfa8d68727d31120ab6c6227576c9abc87981918b32d8d40` |
| 128 | `theorem` | [EqOnSource.source_inter_preimage_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eqonsource-source-inter-preimage-eq.md) | 882 | `result-track:6c88bcfa69bfa140b5175d333c84bebe0df3b5008065057d9f26fae18a6d37f2` |
| 129 | `theorem` | [trans_self_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-self-symm.md) | 888 | `result-track:d9f9246d8cf5d0ef22c9d42fe3d2d00c700507488541bd2eeae3103dcebf290e` |
| 130 | `theorem` | [trans_symm_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-symm-self.md) | 897 | `result-track:ea31e64548f5062e17dc8e8fdd29bf719540a90c5f674481e07a6806956aa995` |
| 131 | `theorem` | [eq_of_eq_on_source_univ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/eq-of-eq-on-source-univ.md) | 902 | `result-track:9063cce8bd88448f8189b2e12a649cb3e842a2a574554b4996a1f22371b95812` |
| 132 | `def` | [prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/prod.md) | 916 | `declaration-track:54e6e80104f5f38c097dc7f1027ad66f420cd32d2dbc382091794091741797d4` |
| 133 | `theorem` | [prod_source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/prod-source.md) | 936 | `result-track:ff4980f56ae29624a37f874eab8b5eb299841979821f7f2c814557b9d353a254` |
| 134 | `theorem` | [prod_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/prod-target.md) | 942 | `result-track:b242501904269da4a535995c3ce1a24429961f05799fabbde2491b913a352804` |
| 135 | `theorem` | [prod_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/prod-coe.md) | 948 | `result-track:240457309e3f0081b32cf410182138022a536982748137d225f28caa2b25d3bd` |
| 136 | `theorem` | [prod_coe_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/prod-coe-symm.md) | 953 | `result-track:0662a9d13a4f66667cca94399f9a094806854e5591f30c74d1b611f2efb00f7f` |
| 137 | `theorem` | [prod_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/prod-symm.md) | 959 | `result-track:17a218433a40baeeca9f49f1368465c26f756a31ac8dfa6a68df69147478a7c5` |
| 138 | `theorem` | [refl_prod_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl-prod-refl.md) | 965 | `result-track:d75c76a1dd3e4c69e542897666166efd55cdaa0c11f78a465cdc6f0a163bf00e` |
| 139 | `theorem` | [prod_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/prod-trans.md) | 972 | `result-track:af8f78f8967640672816e206af0cadae20f2fe8edeedef47b1c8f6c7c7330514` |
| 140 | `def` | [piecewise](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/piecewise.md) | 986 | `declaration-track:fa8a05d30459afe9442046091e2d5d854e5c9d66ebef29dee3014531e21a0b58` |
| 141 | `theorem` | [symm_piecewise](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-piecewise.md) | 1003 | `result-track:1401ea3739ef62eedda0d18bcc1239824bd04d97a976a9f985d8f082690b84ba` |
| 142 | `def` | [disjointUnion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/disjointunion.md) | 1013 | `declaration-track:72f8c9e26932408b035056e3d8b69d48c9a64ba8058bd1b0e60941b584228cd9` |
| 143 | `theorem` | [disjointUnion_eq_piecewise](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/disjointunion-eq-piecewise.md) | 1025 | `result-track:6c409c013d636af0c7eba26e7e345662ad8991f21053951df3e306c1aca54b9e` |
| 144 | `def` | [pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/pi.md) | 1040 | `declaration-track:cf810ca66f428c5d69b76c746b945a34b778095e1528511a7d6fab4dd3784fe0` |
| 145 | `theorem` | [pi_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/pi-symm.md) | 1055 | `result-track:21b8811b6b7e73e3cdee5d36f362943d22ecf5f801ce7b308d78baddd8bbb9aa` |
| 146 | `theorem` | [pi_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/pi-symm-apply.md) | 1059 | `result-track:5e9d2bb42c3a2852fe8330d5d21579288ea9a96917061dcd5ce63e685f1ea63b` |
| 147 | `theorem` | [pi_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/pi-refl.md) | 1065 | `result-track:288c9b3174622cee0ef20bc974c98eafdf691c260ebb2ebdc0452f104eac9bb2` |
| 148 | `theorem` | [pi_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/pi-trans.md) | 1069 | `result-track:17e4a9303e8cdde437114e15bcfb23e6275b701c72cd5695a2debde805d1cb70` |
| 149 | `def` | [BijOn.toLocalEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/bijon-tolocalequiv.md) | 1083 | `declaration-track:01410ee59af8d64eb203f7c982e4cdbd4e05e663c2db7727178a8e9c767c5c3c` |
| 150 | `def` | [InjOn.toLocalEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/injon-tolocalequiv.md) | 1101 | `declaration-track:69b845fd69b66ba04bbb3079f4adaba8d3d0a9dd6b81f0fb492791383dd9546b` |
| 151 | `theorem` | [refl_toLocalEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/refl-tolocalequiv.md) | 1115 | `result-track:2e390f623a527e1602304bc1fd1b4b5f07936ee6d71b3f5b48d124d69be549e9` |
| 152 | `theorem` | [symm_toLocalEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/symm-tolocalequiv.md) | 1120 | `result-track:1eb882997936b9af91e6c8f42c95a3114b4f3c962ed73b7527b14d80ea9bd4eb` |
| 153 | `theorem` | [trans_toLocalEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalEquiv.lean/declarations/trans-tolocalequiv.md) | 1125 | `result-track:381e2f7422ba1a606c272bbf7b5286a07d6800dbde3278bbc5041155e3847c7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d6161782265436b115aface3209d6bd3928f71ca0e37b69e0b2eadaee208abe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/LocalEquiv/Variant5555c692121ad50d0fed6960ea3811e8b8d795cfa26fd4984c212a05cd408586.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
