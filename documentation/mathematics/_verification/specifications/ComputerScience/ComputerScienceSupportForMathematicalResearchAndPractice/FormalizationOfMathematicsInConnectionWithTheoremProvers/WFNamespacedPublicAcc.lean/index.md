# Verification target: WFNamespaced Public Acc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a263cd6bb0985f16d7c1d4d94a2bbb4deb654dea",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant93514f29b3686a8fe8e8181ed5f20d1f86fd51ae7eb6df93bb08d717d231bb43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a263cd6bb0985f16d7c1d4d94a2bbb4deb654dea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant93514f29b3686a8fe8e8181ed5f20d1f86fd51ae7eb6df93bb08d717d231bb43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant93514f29b3686a8fe8e8181ed5f20d1f86fd51ae7eb6df93bb08d717d231bb43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Acc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/acc.md) | 33 | `declaration-track:49dfbf534044d0e2165bc87574bf072a54677d678ffdbb783831c2bf2df23631` |
| 2 | `abbrev` | [Acc.ndrec.](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/acc-ndrec.md) | 41 | `declaration-track:db4251c2b534ed635a4a8244f0c2104aa253df2da1c158506c2d44b051543a74` |
| 3 | `abbrev` | [Acc.ndrecOn.](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/acc-ndrecon.md) | 46 | `declaration-track:7f494dbb4b51daa58020cc67315c41a89961153fc8c578b52e5339648c8ca078` |
| 4 | `theorem` | [inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/inv.md) | 55 | `result-track:49b13d086ee3142908479e2d9336a8eca77703b0ed854a7ef65397060961447b` |
| 5 | `inductive` | [WellFounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/wellfounded.md) | 68 | `declaration-track:17194dcbfb15787e430c626a94714d4f812cc550d1295e9ee53978df9da35875` |
| 6 | `class` | [WellFoundedRelation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/wellfoundedrelation.md) | 81 | `declaration-track:5e0700ea60f3613b933456441935a21c89b15d120a7327e19291afb8f674422f` |
| 7 | `theorem` | [apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/apply.md) | 89 | `result-track:1f12813cbe86bdce50d607cecca3348c1dc7f97cb08c33fc534566d512c9212e` |
| 8 | `def` | [recursion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/recursion.md) | 95 | `declaration-track:435d31dec92a969bd84a56d3ba342fb2b166a8135e33ae395a9570d856c7df02` |
| 9 | `theorem` | [induction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/induction.md) | 100 | `result-track:4b75e08b2b51350bc29940daf4c929c04ae51818aaf74cc0f910eb6002ff71ff` |
| 10 | `def` | [fixF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/fixf.md) | 106 | `declaration-track:ba8a8a216fcc7e2cfc1a8cd151f4e8b30d338cd1ad77562dca22073b69e9f0ae` |
| 11 | `theorem` | [fixF_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/fixf-eq.md) | 110 | `result-track:2db12ba808a501369cdcc55916b6c9433b2b98f6a81207a0e1e28e32c3c4ae69` |
| 12 | `def` | [wrap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/wrap.md) | 124 | `declaration-track:e9578ef4bda5a1de586ee3cd6e19086e0de443cfae567046a3131d6c22ce5fdb` |
| 13 | `theorem` | [val_wrap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/val-wrap.md) | 128 | `result-track:6f3e9e3ec40f51ddab585d7c5137660dd2897c11d2f0adc8a3b20c3a3d48452c` |
| 14 | `def` | [fix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/fix.md) | 143 | `declaration-track:d33968387cf10fd626059d4770c1cb6f3421ff40349d52fd133054169759c187` |
| 15 | `theorem` | [fix_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/fix-eq.md) | 147 | `result-track:e7836f7d1fdde08e0b00a3e471a206ac8c81e6a703f170af0549413432162be1` |
| 16 | `def` | [emptyWf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/emptywf.md) | 156 | `declaration-track:153e109741911ee0bd5763cd143f38d73a01d315b79bfe9c086a9dd001b2f828` |
| 17 | `theorem` | [accessible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/accessible-source-edition-2.md) | 169 | `result-track:7726897fd4c9eb20dfb4c08ce852a81a83d822c303966c5a68b9c3d851d46bb2` |
| 18 | `theorem` | [wf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/wf.md) | 176 | `result-track:3f865d9c176ae1d07745962469b0b20106042a7bfeb1eea547ec15b8518403d8` |
| 19 | `theorem` | [accAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/accaux.md) | 184 | `result-track:b29a1f0ebdfcb3a856a1255c9bfc1a7bd35ddd63b2ef23077d266eb6b639fe20` |
| 20 | `theorem` | [accessible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/accessible.md) | 187 | `result-track:2cef51f63b10cfbea2b96c41af008cb1d871535c9751cc3be38fdd6478febc3e` |
| 21 | `theorem` | [wf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/wf-source-edition-2.md) | 190 | `result-track:cfd232c3f199d7e22e122f83774d96f3e353b58b1f7ca9aa877fcc872a2b7f4f` |
| 22 | `def` | [invImage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/invimage.md) | 197 | `declaration-track:9b441aa37f948331c7bec71cfba469bc5d659b4b52de72364b7dd930ce6586a3` |
| 23 | `theorem` | [Acc.transGen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/acc-transgen.md) | 204 | `result-track:30562f90743d4d402197abf6f1111597d346f2362acc7e28b6358238758783c2` |
| 24 | `theorem` | [acc_transGen_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/acc-transgen-iff.md) | 214 | `result-track:d7cadd47d2e72149e01f1884087cb740d326d2c38ac3fa0b65cba6054315595b` |
| 25 | `theorem` | [Acc.inv_of_transGen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/acc-inv-of-transgen.md) | 220 | `result-track:7ae4cf72fc2701fbd0089d3763f7cb68c06e389c92641307a7f0309da99cfa9d` |
| 26 | `theorem` | [WellFounded.transGen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/wellfounded-transgen.md) | 223 | `result-track:23eb515d6276629641b6aa6a3c6190c859d99f50ce5842838c7c20244529b22b` |
| 27 | `def` | [lt_wfRel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lt-wfrel.md) | 230 | `declaration-track:9ed495fecba889701fe1a98c7873bd956fd72fdfaf4323024a2358c1f01972b9` |
| 28 | `def` | [strongRecOn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/strongrecon.md) | 254 | `declaration-track:c704ef5589d9d3afacc7c3c82eb16036204a5b1a86d6fb87998c5f2906764efd` |
| 29 | `def` | [caseStrongRecOn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/casestrongrecon.md) | 263 | `declaration-track:dcf9099798c2bfae2ff2a194450a1ad52f1eb26a54313e44d7acd7f87c566977` |
| 30 | `abbrev` | [measure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/measure.md) | 275 | `declaration-track:9c15c92f9943d4fc757b373c61c53f5b3a9e87016e0d5a7920fcc21e1eb2ff8b` |
| 31 | `abbrev` | [sizeOfWFRel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/sizeofwfrel.md) | 278 | `declaration-track:4db74cd45ac83d8688a4a795b2e4437fa4f2537aaf7bff4ae90f430543c4b3c9` |
| 32 | `inductive` | [Lex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lex-source-edition-3.md) | 294 | `declaration-track:7b6b092596c31444d4ec40fbd2c2fb623b913ef2465e7a871337cfe1dd1f053c` |
| 33 | `theorem` | [lex_def](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lex-def.md) | 306 | `result-track:1bf1961795432b3082c5a78de91323245d8b1ffffd3d9fa7a8dd2a1cf0571b6c` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/instance-source-edition-3.md) | 315 | `declaration-track:fdb6be3dd7ee35f9332d4733cfdac48285ebf65722c5fac6b666b87896d1b87a` |
| 35 | `theorem` | [right'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/right.md) | 332 | `result-track:6e0694c9c77323bfa21de871826209d975ae2f4731da640e6b40a368e1a96351` |
| 36 | `inductive` | [RProd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/rprod.md) | 340 | `declaration-track:310cd7e3df2a11f1c51faa606fde71a858680bc57574a78deadc115cdda11ca8` |
| 37 | `theorem` | [lexAccessible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lexaccessible.md) | 349 | `result-track:7d6d4ea3dfebee50d38d47ff088fef27424dfa466ff3451fce8a97a18b40b0c3` |
| 38 | `def` | [lex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lex-source-edition-2.md) | 361 | `declaration-track:568a7813a1edd9b84ade1483394d82477e85a0d65d20ab64942d2b9c3ed5a8f2` |
| 39 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/instance.md) | 365 | `declaration-track:65e2543da409925dc89412c08e70f9fdf0ee8563f1bf807b8c8a77baba1d8456` |
| 40 | `theorem` | [RProdSubLex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/rprodsublex.md) | 369 | `result-track:d51c2d10214d1ca0ddfb958afd3cb32b92796040a65738e5fb34848e158d5861` |
| 41 | `def` | [rprod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/rprod-source-edition-2.md) | 375 | `declaration-track:c5074a4cd03c706ccdeb8c8e91ccd1da69437b5d85a89e395ee6a29fddcf344c` |
| 42 | `inductive` | [Lex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lex.md) | 393 | `declaration-track:09e04759e4887cda227752535031b1a672b5fd942d0f513df57acf03937cc80f` |
| 43 | `theorem` | [lexAccessible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lexaccessible-source-edition-2.md) | 402 | `result-track:c1e64d2f32facd71b06978d0c932b2923b63865187e5261f7d6fabf6b0f98c0d` |
| 44 | `def` | [lex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lex-source-edition-4.md) | 414 | `declaration-track:a7c255e556f1202b1cb0a199ac76044badef05aee062d3744ff1adf050c62ac5` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/instance-source-edition-2.md) | 418 | `declaration-track:8150ee67e65a184bed52b344274e201301b39914a25f0d37a658d458641e47e4` |
| 46 | `def` | [lexNdep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lexndep.md) | 426 | `declaration-track:4df8a27e0ce505524d8c33b4147b1d9325023139312236ae83e654d48633aa53` |
| 47 | `theorem` | [lexNdepWf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/lexndepwf.md) | 429 | `result-track:37a3263ac514b22a2a41369e86cd420da59ed1ac8a93780046d594a2052619f1` |
| 48 | `inductive` | [RevLex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/revlex.md) | 437 | `declaration-track:7b4b2f7d55d1bc4bb741c69d1557dea808367e0bb8ffa8a9b88c90b5f61b847c` |
| 49 | `theorem` | [revLexAccessible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/revlexaccessible.md) | 447 | `result-track:5f85f38fc27b20a8856641cfddf894c49ff052ee4f5b789ca1a4bd4072e0b020` |
| 50 | `theorem` | [revLex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/revlex-source-edition-2.md) | 459 | `result-track:abc6f781d2ae638fb0456285687b748a9f3e59c271ceeb15966b1d37b03cc5e2` |
| 51 | `def` | [SkipLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/skipleft-source-edition-2.md) | 464 | `declaration-track:9d38cf5a4f6b71c996119b34755a722b883e413d8f2649b31229e618d1b43383` |
| 52 | `def` | [skipLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/skipleft.md) | 468 | `declaration-track:6c67b5b8ed5b091f824952537e068fa44118e36344248db9a5191ba899af0e7a` |
| 53 | `theorem` | [mkSkipLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/mkskipleft.md) | 472 | `result-track:42164651edfc396163cc03ae9f9b7d2b9451a0eb71ee37a0e3793204914a8112` |
| 54 | `def` | [Nat.eager](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/nat-eager.md) | 487 | `declaration-track:906135204d88367a591684e2a462c7a75dc5f57ec21fdf5e2a37f45ffca84c2c` |
| 55 | `theorem` | [Nat.eager_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/nat-eager-eq.md) | 490 | `result-track:9d577e973be029b5132acef365438eeb0c1e9c0ef941e27d7af8ebb955ab763a` |
| 56 | `def` | [Nat.fix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/nat-fix.md) | 502 | `declaration-track:64291e09ad0d858f27167a52e775dc796211f5922ad4d4c2ef634567ea3be442` |
| 57 | `theorem` | [Nat.fix.go_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/nat-fix-go-congr.md) | 511 | `result-track:6a72e68569fe3cfabb1f64e455622ac0b70cded8173c5019a72b24212047eedb` |
| 58 | `theorem` | [Nat.fix_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/nat-fix-eq.md) | 521 | `result-track:14e4a6bec6d2124c180d5da6b902433bf851a3f43fe68ae35561650883ed905b` |
| 59 | `def` | [wfParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/wfparam.md) | 534 | `declaration-track:edd72fad06720a03889a3b64cdb213bb2fcc7d2883cf4c634b3409c2f8c87f8f` |
| 60 | `theorem` | [ite_eq_dite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WFNamespacedPublicAcc.lean/declarations/ite-eq-dite.md) | 540 | `result-track:275df0f1993651407553a05626f9a1424d0eb17fd31d0f4eadad48317245ed87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c8fea5decac82e56fcf8998cce80f307e81fe5031ecd8ac88e53e1ff6ac42e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant93514f29b3686a8fe8e8181ed5f20d1f86fd51ae7eb6df93bb08d717d231bb43.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant93514f29b3686a8fe8e8181ed5f20d1f86fd51ae7eb6df93bb08d717d231bb43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
