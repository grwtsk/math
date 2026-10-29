# Verification target: Partrec Code Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdc1d168e35228d2f5e4abdc6ace1f06abe839b8",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdc1d168e35228d2f5e4abdc6ace1f06abe839b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean.json)

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
| 1 | `theorem` | [rfind'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/rfind.md) | 59 | `result-track:c28b3156d3112f745fc664915da72ef78db0fd3ee0595048ef1586540748b4f4` |
| 2 | `inductive` | [Code](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/code.md) | 84 | `declaration-track:e2d31f4cfc6cb7d422af8bd72065889b486c19df33a39bfbf11c1a3863e18c95` |
| 3 | `instance` | [instInhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/instinhabited.md) | 100 | `declaration-track:dfa8e9e3ae18bf25c697553a2847512c928d97675120c003647cc9a52ce45294` |
| 4 | `def` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/const.md) | 104 | `declaration-track:15048f22c3828a43583cd616b6e1bc5538600a50e7ee11bbd3cde31b5edf9000` |
| 5 | `theorem` | [const_inj](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/const-inj.md) | 108 | `result-track:999a3268079699f3f3371583a4db4f65439cfbc3b05f368362b418843f6eee10` |
| 6 | `def` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/id.md) | 116 | `declaration-track:89208f382a6fbbdb9e6320187d6bb385d3cfa0c596db9de4b5a439d7fdccbfa6` |
| 7 | `def` | [curry](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/curry.md) | 121 | `declaration-track:41c788661e44ba9dac9841eb7f1ba9fe59b631936b9d749b864c1ed88bfaeb05` |
| 8 | `def` | [encodeCode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/encodecode.md) | 125 | `declaration-track:780541c221fc456a28d3b5e3068578a0816d6dc4aff024eefe1cccc3a242ea98` |
| 9 | `def` | [ofNatCode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/ofnatcode.md) | 138 | `declaration-track:f4d567a09c5a5d7e51aa3ad5933a2aa7b80e8de5e19da07d1c7cc31481f11340` |
| 10 | `theorem` | [encode_ofNatCode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/encode-ofnatcode.md) | 160 | `result-track:0e8c4ce4994a7b52e88ba34eb6b6228f24756b5cbdbe1bc778c64b87e0aa2f7b` |
| 11 | `instance` | [instDenumerable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/instdenumerable.md) | 184 | `declaration-track:86d7f6b28e18e3a6ea4bd2bc5b33a3e8a34f50ea137ca4b7241885109ac41978` |
| 12 | `theorem` | [encodeCode_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/encodecode-eq.md) | 190 | `result-track:e023e3cc44c48c16460e952121078b4f3cdda5e10cc047b2ce4fd7a03bf05315` |
| 13 | `theorem` | [ofNatCode_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/ofnatcode-eq.md) | 193 | `result-track:c0a624ab0668d894b10628d89973eeb521b8777cda08d57e4bf81f10e52411ce` |
| 14 | `theorem` | [encode_lt_pair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/encode-lt-pair.md) | 196 | `result-track:21a607d38299fa29f86ee2019007c27cda547a0a81356b0129ad21b47b2597c5` |
| 15 | `theorem` | [encode_lt_comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/encode-lt-comp.md) | 204 | `result-track:0f1bae19a44db1e6c5c2a65699f90640202e2b50d9a60348af243ff7d883221e` |
| 16 | `theorem` | [encode_lt_prec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/encode-lt-prec.md) | 209 | `result-track:f2951e3c5c31150e23f466984558f41b13876c216715ac37b73bbfe9aac8c670` |
| 17 | `theorem` | [encode_lt_rfind'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/encode-lt-rfind.md) | 214 | `result-track:dc91eef96f5e05d2774d267bab922a0613d8ceb20c2fb78c0fa366e2f942198b` |
| 18 | `theorem` | [primrec₂_pair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/primrec-pair.md) | 224 | `result-track:5cfdaa0db3a2a21b6187df46ad519008a86ed63ecf0174beb042a617f79258b2` |
| 19 | `theorem` | [primrec₂_comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/primrec-comp.md) | 234 | `result-track:cea5d75a0d1f6fb4e4d588c3195fbe08239e60dc35845949e55d9cdd07bebe39` |
| 20 | `theorem` | [primrec₂_prec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/primrec-prec.md) | 244 | `result-track:900345a5ad09595e4bc90f86321be6845e06cbd0b6631d26deebd4921d32e5b4` |
| 21 | `theorem` | [primrec_rfind'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/primrec-rfind.md) | 254 | `result-track:a3675414d6d4bb89085fd255139c73a3ed4a3cf448f6b2daf38e344d7700b828` |
| 22 | `theorem` | [primrec_recOn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/primrec-recon.md) | 262 | `result-track:03fd3abc0b8b1bb74a758fc16e70ec2db8c881da4526ef6296c64ad6d9129c57` |
| 23 | `theorem` | [primrec_recOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/primrec-recon-source-edition-2.md) | 344 | `result-track:c32dfa190b6a6429d0452c86f232b9752745385821d3b144baa011b842b98eb4` |
| 24 | `theorem` | [computable_recOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/computable-recon.md) | 372 | `result-track:fba986eeccc26e6e1671733b4c24feb2b5b78785c9a3103875b0ad55542db457` |
| 25 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/eval.md) | 470 | `declaration-track:64edfa9c1dc82d6cd63b948cfd2c94fa03f0a13d1063e05030d301db20128086` |
| 26 | `theorem` | [eval_prec_zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/eval-prec-zero.md) | 488 | `result-track:f6f6260fa58cd4b80e66488532ffa3bb5c36b4b2c1ad6c26f23d302ee9549bc6` |
| 27 | `theorem` | [eval_prec_succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/eval-prec-succ.md) | 493 | `result-track:cfd1e2eab097c429d8e3825583169bcbe3eb7a093763ccd3bbef44dd2558dc75` |
| 28 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 499 | `declaration-track:f177d26909896090a40b9bbdd943e1d06d39e24c1514a4b09985e78fe3dd93f8` |
| 29 | `theorem` | [eval_const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/eval-const.md) | 504 | `result-track:d17a6403238d07102dfbd26b047cfd1e0dda0f33cacee9088ee7afc45b3a6396` |
| 30 | `theorem` | [eval_id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/eval-id.md) | 509 | `result-track:13642ade40e4b69392b5428a2af375993ea5b235977c1259cd7504cddcd3f106` |
| 31 | `theorem` | [eval_curry](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/eval-curry.md) | 513 | `result-track:73371b96e8317fedf737635efd144565239b73fe29575f8d6094ee8c15f840df` |
| 32 | `theorem` | [primrec_const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/primrec-const.md) | 515 | `result-track:ed75a93ff13a43ea913a6b2c551813ddb92f20be402ae4c038779196e3fa99d7` |
| 33 | `theorem` | [primrec₂_curry](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/primrec-curry.md) | 521 | `result-track:8922db2539170589cd779516d455697f9765f1bcc0ed1cf16481b1bc89961894` |
| 34 | `theorem` | [curry_inj](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/curry-inj.md) | 525 | `result-track:3915c8cbdafa510edd0c6f6eda84204eb03ef4850ef0e78daf4439b24439f1f7` |
| 35 | `theorem` | [smn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/smn.md) | 535 | `result-track:2ead30059e1261c00386e4b5eb5ff31aa1525276ca3aa850565bfe0ad67611f3` |
| 36 | `theorem` | [exists_code](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/exists-code.md) | 542 | `result-track:00687119199b98c739fde278793d2c1a9067ce33ea7c5742bf1c0c233688d481` |
| 37 | `def` | [evaln](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/evaln.md) | 577 | `declaration-track:65d71096c02c32ec17776ba185cd313bdf9d77d11dc5cc4fbf73643137eef24f` |
| 38 | `theorem` | [evaln_bound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/evaln-bound.md) | 613 | `result-track:4411a21ef9be512078f1deb7a126138702344c1e19fd253bf3e5f10974c6bba8` |
| 39 | `theorem` | [evaln_mono](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/evaln-mono.md) | 620 | `result-track:5604ef372c78bbbc6b87028fad4ff4634f4338a4863fb37ca47d939e1b1d646b` |
| 40 | `theorem` | [evaln_sound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/evaln-sound.md) | 661 | `result-track:43e91edf5d5acd8a6851b03b4e2efcae8eb3b1dc4457ede06d1c8b9a3475b460` |
| 41 | `theorem` | [evaln_complete](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/evaln-complete.md) | 714 | `result-track:ea0e94b2fc0a7bed43e6853a130368b79ef8a9f0e97bd9569c6ce13df1c7ed52` |
| 42 | `def` | [lup](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/lup.md) | 795 | `declaration-track:7fe529cc6deecfaecf6313795027ca909fd379a79f440edf7a19c136aefbd3d1` |
| 43 | `theorem` | [hlup](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/hlup.md) | 800 | `result-track:c8217eac11d8144dc30f463339ab69134ca270af6661f1db3ef843d7c6c4d239` |
| 44 | `def` | [G](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/g.md) | 806 | `declaration-track:426e73f41efae2c51aafa9b435d6cac1467b98f1a5a9980027541f754e4cac51` |
| 45 | `theorem` | [hG](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/hg.md) | 837 | `result-track:fcae4c4bba8cc2c54594d155728937aeed36aa23bd1beece9df0354ddd182ff9` |
| 46 | `theorem` | [evaln_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/evaln-map.md) | 939 | `result-track:4d907c35f83edc75312fa10e03df8403992f8a640b820c649787d5c4328116e9` |
| 47 | `theorem` | [primrec_evaln](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/primrec-evaln.md) | 950 | `result-track:770cd2e6fcb614909e41becfa50e5b39236a57cf9058ec76b3827f5bb72f2880` |
| 48 | `theorem` | [eval_eq_rfindOpt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/eval-eq-rfindopt.md) | 1018 | `result-track:2b13ba9021386b6ace19fe11f511eb012b3ee097aaeee72543a3e7e44789c641` |
| 49 | `theorem` | [eval_part](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/eval-part.md) | 1023 | `result-track:c5550636d421ee49721b2bcd0c0ccf001aa49ebfc92ddd73e0f265472f7bf163` |
| 50 | `theorem` | [fixed_point](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/fixed-point-source-edition-2.md) | 1033 | `result-track:a8085aded077d3591b1685043b904283e18c81773b6b44110d2b61994c44816f` |
| 51 | `theorem` | [fixed_point₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/fixed-point.md) | 1051 | `result-track:2cc2b760bbdea222169379f0d33d83a89d6df23f93efad03c2e4245b8ffc55c0` |
| 52 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/instance.md) | 1059 | `declaration-track:355dfe63176615ce4230e96d2ed8780458c548e117c20218fe8af94ecfc51967` |
| 53 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 1065 | `declaration-track:e80ecb7590b9f9bc860be7d00306481724ad9e60ef5d31250559edbc4d1e6c4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=642ff5bce82b59def39c1592e4383135d451159fb91e2667858757a1fb3df4ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
