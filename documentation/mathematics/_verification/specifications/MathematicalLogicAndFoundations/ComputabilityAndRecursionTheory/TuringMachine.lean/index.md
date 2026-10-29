# Verification target: Turing Machine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8107e333e24b47c8510d969a2fa9c22e4528d5ab",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8107e333e24b47c8510d969a2fa9c22e4528d5ab`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Tape` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.PostTuringMachine` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Stmt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmt.md) | 123 | `declaration-track:6c36b99a5b7860135804140ce2f5906a8767b978f1f0b51d19fca32349e129c6` |
| 2 | `instance` | [Stmt.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmt-inhabited.md) | 134 | `declaration-track:98fdcaf0f7174d8b6131a08b74b73f1b12b8e46cc18c75749bad0b3377066df8` |
| 3 | `structure` | [Cfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/cfg.md) | 140 | `declaration-track:94d6f1f58953c67f44fcbe8c09742b0b4c6058d5a9615657b2874b3c106ec1df` |
| 4 | `instance` | [Cfg.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/cfg-inhabited.md) | 148 | `declaration-track:ee1389b750475479e1dc4f068149ab716527ec91fbeeef90e07f9b42a018b6dd` |
| 5 | `def` | [stepAux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stepaux.md) | 157 | `declaration-track:fbccf4b01153831c17f76db36c84194adf6752f3648cd3af22d3d5c906da5703` |
| 6 | `def` | [step](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/step.md) | 167 | `declaration-track:d05e094e28d9c3caa2f65b21c91a299a756d209571060c90ae2ca6b4bc882e6f` |
| 7 | `def` | [Reaches](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/reaches.md) | 175 | `declaration-track:9df3a1e421a847a1e339cb00e9adfff1da2896f820e1fa0faa3a8a3d8367abca` |
| 8 | `def` | [SupportsStmt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/supportsstmt.md) | 181 | `declaration-track:d0733d15ea55031c90ea4319da68da5072d629e5fe6dee563bef98facfe683ce` |
| 9 | `def` | [stmts₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmts.md) | 194 | `declaration-track:8b23feda5b8cf33258740fb909205af9fa8e4f38468a767602a552e323a55f7f` |
| 10 | `theorem` | [stmts₁_self](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmts-self.md) | 203 | `result-track:c9aaae3eb6c985f011c87ecf30a02436b04470ffc9f5527c042fea1c04482760` |
| 11 | `theorem` | [stmts₁_trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmts-trans-source-edition-2.md) | 206 | `result-track:60515fef409eebe6a8440f56dda09ee57b6d50e4a1718d5e94f8bb343cb64c45` |
| 12 | `theorem` | [stmts₁_supportsStmt_mono](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmts-supportsstmt-mono.md) | 226 | `result-track:683a54b5c216a355b6d4f07feaf7dd003cae51f782ba26159d9819838c4f12c1` |
| 13 | `def` | [stmts](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmts-source-edition-2.md) | 238 | `declaration-track:e24dcebaccfe694d2909b773609a5efa06aa9ac19ffb61adcc60f4d2a111cf1e` |
| 14 | `theorem` | [stmts_trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmts-trans.md) | 241 | `result-track:311464d1fc20c55e63b406cbbe5ff1f9a9454e3e7e61134d2144a5f5b8ac0a67` |
| 15 | `def` | [Supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/supports.md) | 253 | `declaration-track:8d0c0a03af0777aab52562d691c82f07cc8e9017b76c5eae3b40bf4c86d0b82a` |
| 16 | `theorem` | [stmts_supportsStmt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmts-supportsstmt.md) | 256 | `result-track:8af4a7c764669d13306b257497d550fb34650b7b2f3101cab63ae7663dfd40a0` |
| 17 | `theorem` | [step_supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/step-supports.md) | 264 | `result-track:512f6c494eb6d35e419c4118223fe478ad480715153ac1c15adc40df3b29f211` |
| 18 | `def` | [init](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/init.md) | 281 | `declaration-track:3e20db91e601a3f0cb15f8eb2c1b94110e2b90d4a170dfdfb8dc59348a6b531e` |
| 19 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/eval.md) | 285 | `declaration-track:a50a12a701bb0a7273d3a5bd64f021457ec1d9b8d545efb50644aa7c08849ad0` |
| 20 | `theorem` | [stk_nth_val](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stk-nth-val.md) | 332 | `result-track:c3f034781fba1c74e94a42dd4fad34cb29d2f174808ab6aad40db796e9f8be4c` |
| 21 | `def` | [Γ'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/anonymous.md) | 345 | `declaration-track:6982de2bb721699a2bb3cdf7f3cb6bc40e408ef152e354ee34c01203077f7958` |
| 22 | `instance` | [Γ'.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/inhabited.md) | 350 | `declaration-track:895d2746dc899428ac7df1421015837a727256cae0c5a629c29c02713be17ffe` |
| 23 | `instance` | [Γ'.fintype](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/fintype.md) | 353 | `declaration-track:96e53ba6a59ae26e2935a99bbc62c6a4ceaa210e603de044e2c1252c9057a7f2` |
| 24 | `def` | [addBottom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/addbottom.md) | 358 | `declaration-track:b825efcd8a31bb48ab096eb64b1ea77a50c57695e3ccac5d77cda4a15de7a2af` |
| 25 | `theorem` | [addBottom_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/addbottom-map.md) | 361 | `result-track:67b1b5e02daaaad1d3377b7bf9fd029ec5ec0a39bc52219bc5573aa0d4c42bf4` |
| 26 | `theorem` | [addBottom_modifyNth](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/addbottom-modifynth.md) | 368 | `result-track:da357bdd1bb917f38a7e1ae59adc31d66aed2e775c9d6a53dd13d8e2712c4b49` |
| 27 | `theorem` | [addBottom_nth_snd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/addbottom-nth-snd.md) | 375 | `result-track:6e4b786472131af729e83e6142fd615057b181faebc3e2143b1852958202e312` |
| 28 | `theorem` | [addBottom_nth_succ_fst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/addbottom-nth-succ-fst.md) | 379 | `result-track:93d5283b5162350795b0b2380c1fb5c8918bf2e940b3e59b8cdd5e2ceb382d09` |
| 29 | `theorem` | [addBottom_head_fst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/addbottom-head-fst.md) | 383 | `result-track:0881fab9dec947c6085b7a963013fe7d00de716b1314ccf29e8e46efa30bcaf9` |
| 30 | `inductive` | [StAct](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stact.md) | 390 | `declaration-track:4f83929ce8474c4d7c49ece25c1fb40f42baec155e6cf6a2a8faaa5d8b26e484` |
| 31 | `instance` | [StAct.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stact-inhabited.md) | 395 | `declaration-track:2931c6d410a2e495ccfb329338c5179c3e434d050191d4173f33ce56f1cd4862` |
| 32 | `def` | [stRun](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/strun.md) | 403 | `declaration-track:39782873964727b9e051e9c01dfc098f4f1505476099126a38829d16959931c3` |
| 33 | `def` | [stVar](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stvar.md) | 409 | `declaration-track:1ce86fe02118853245abefbc88c4df62a13f367d2dc7d87146e29d8eb861f462` |
| 34 | `def` | [stWrite](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stwrite.md) | 415 | `declaration-track:3bf44385ba9eccb300bba036450b2e2210be357f25e070d02116a8a46926c622` |
| 35 | `def` | [stmtStRec.](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/stmtstrec.md) | 424 | `declaration-track:5d6785ab8397828100d4b90350fa39c6fe7770f3aadef43f32441a66d9e218ce` |
| 36 | `theorem` | [supports_run](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/supports-run.md) | 438 | `result-track:602014a0179b70ce32ecfabdbdbc1c4b963dbc7e62e80b768c2a91873d7d86b4` |
| 37 | `inductive` | [Λ'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/anonymous-source-edition-2.md) | 449 | `declaration-track:de6fad7bb9676dd0136b40ec04f946ca88b2696094cce6e1632e25045c9a3e57` |
| 38 | `instance` | [Λ'.inhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/inhabited-source-edition-2.md) | 458 | `declaration-track:d8e235a5522e6d4a46fdbf8a4fc5e19ef10f52e2497847b9767f6b8ce96394da` |
| 39 | `def` | [trStAct](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/trstact.md) | 468 | `declaration-track:75d4042b00b95f8e978bd19cabf4e9f167d8e979b1b050a712d6d2392fb456d8` |
| 40 | `def` | [trInit](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/trinit.md) | 479 | `declaration-track:1315fb100a6084d8ac2b4446c5827a8efec604a869ee2abcc1f22626bd71837c` |
| 41 | `theorem` | [step_run](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/step-run.md) | 483 | `result-track:d63fe26d02c039c36c5dc49d349de93fdf7029fcc6f6c13089ae213e8a13badc` |
| 42 | `def` | [trNormal](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/trnormal.md) | 494 | `declaration-track:22b076c02ce7d85052d3a2767993e0a0598ab1c1d6fa1c09513681230a030f97` |
| 43 | `theorem` | [trNormal_run](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/trnormal-run.md) | 503 | `result-track:3459b852320dfc2e5d499c115edfed977e87dc5fbac1ca89d5ca9f43d8443942` |
| 44 | `def` | [trStmts₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/trstmts.md) | 511 | `declaration-track:619bfe74649cdc647e92d7dda9d7a96851c0dd3e67169b82551a9e352e5d2065` |
| 45 | `theorem` | [trStmts₁_run](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/trstmts-run.md) | 519 | `result-track:3e6932a61ea800fc568266feef9d48fbc564322185731b1c6d3a2eb69111727b` |
| 46 | `theorem` | [tr_respects_aux₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/tr-respects-aux-source-edition-4.md) | 524 | `result-track:d17a4dc211cf481fcd45022a6cff18fd40fdd64957304a5a3fd8fb59a7563f41` |
| 47 | `def` | [tr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/tr.md) | 616 | `declaration-track:93c40a603537105e507c64af9399ea9c0939fb9ce00741e1181a5478e9159634` |
| 48 | `inductive` | [TrCfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/trcfg.md) | 624 | `declaration-track:90cfb1e55dbc3fa9898b89afffaffa824052817aba1298302128cbef8379aeb2` |
| 49 | `theorem` | [tr_respects_aux₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/tr-respects-aux-source-edition-3.md) | 629 | `result-track:4d694e87c4437ce93ea32bfccadb339f17e41ba0022aac2648fe436d87d623fa` |
| 50 | `theorem` | [tr_respects_aux₃](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/tr-respects-aux-source-edition-2.md) | 642 | `result-track:3e1a62a49ec648ec42c1b1653f6f7c39421c1653c5c19f57a8d2a966bad6310b` |
| 51 | `theorem` | [tr_respects_aux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/tr-respects-aux.md) | 652 | `result-track:1355eb2ddff9a9737e465c9950e3f30e338c31903d3ba4efd259acdd6b893ec6` |
| 52 | `theorem` | [tr_respects](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/tr-respects.md) | 675 | `result-track:70792ab155040b00ac784d6fed7f2b262d5777a71663ea9704fc9fa7233c570a` |
| 53 | `theorem` | [trCfg_init](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/trcfg-init.md) | 696 | `result-track:2f37ba3cb6ce8673646e56cd55e58b14ef141cd78651a00aaaaef6a0270ee02d` |
| 54 | `theorem` | [tr_eval_dom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/tr-eval-dom.md) | 718 | `result-track:3124d29f2329098f55218226a435de994c0bcb9acc7e1755ae78de11055a6fb2` |
| 55 | `theorem` | [tr_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/tr-eval.md) | 722 | `result-track:bc107970622281ff1b968a7861239186ab2fd9938f9b931b522bf9cde558c762` |
| 56 | `def` | [trSupp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/trsupp.md) | 741 | `declaration-track:f4705f26977c562f3170af28d46cbe42dd7ec7b6273003c93d9a2a8454041600` |
| 57 | `theorem` | [tr_supports](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachine.lean/declarations/tr-supports.md) | 745 | `result-track:8a97899192df1db16c169c98895c1f31c797ee42d532c216b4220da411a5b53f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c840d8d7c52a016443b1b4a2417624336efe7a104d992e521247dfb51d8eed62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
