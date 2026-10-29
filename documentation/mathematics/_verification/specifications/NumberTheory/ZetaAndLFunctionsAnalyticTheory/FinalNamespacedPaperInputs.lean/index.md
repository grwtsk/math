# Verification target: Final Namespaced Paper Inputs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75d717e44576b10c1d5e75ef55cb106b4e4c56d7",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant1edd0c9797ba4a4418c35c5fd2ff300ec7e8c1cbd9660d12c743cd1c43d2d4d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75d717e44576b10c1d5e75ef55cb106b4e4c56d7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant1edd0c9797ba4a4418c35c5fd2ff300ec7e8c1cbd9660d12c743cd1c43d2d4d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant1edd0c9797ba4a4418c35c5fd2ff300ec7e8c1cbd9660d12c743cd1c43d2d4d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Main` — import line 37; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Profile` — import line 38; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Final` — import line 39; external provider; requires a separately pinned dependency.
- `Zeta23.MV` — import line 40; external provider; requires a separately pinned dependency.
- `Zeta23.MV.Final` — import line 41; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 42; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Statement` — import line 43; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Main` — import line 44; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PaperInputs.of_literature](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/paperinputs-of-literature.md) | 58 | `result-track:3ac3ca5d6a81d58416e09479f7595d0443108d4b229ca08bde557f825471c1af` |
| 2 | `lemma` | [tracesStd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/tracesstd.md) | 67 | `result-track:e639fa11ca40fcb2ab17fd275cc9835e07428f450d8b8b3e36e80124ab8ed35b` |
| 3 | `theorem` | [thmA](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-source-edition-5.md) | 74 | `result-track:fc981c6805275a50a4c4d10469643f50986451a4428dd4a31b3cabcc6e32cf21` |
| 4 | `theorem` | [thmA_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-cumulative.md) | 80 | `result-track:1f95c02a4a52c1ee8e39becc2be472f809896b0a408c3510f30e851fd322adf7` |
| 5 | `theorem` | [thmA_lam](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-lam.md) | 87 | `result-track:804d1e46a912901197a2043827a2cbc6ba6e3d422f2eb49981e53153075abcc8` |
| 6 | `theorem` | [thmB](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-source-edition-4.md) | 95 | `result-track:9142166893a755b47d0248ba3bf669a35e1f622ad51daf17eb00911d604b5486` |
| 7 | `theorem` | [thmB_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-cumulative-source-edition-3.md) | 101 | `result-track:658248e6085f628dab2372220ef255c71c1b3992d31f4363e97a850edd269a83` |
| 8 | `theorem` | [thmB_lam](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-lam.md) | 107 | `result-track:d44c0d71c7f6b7937a57e944c63e198ff691c065746896ec74a6e6e4ea20ef74` |
| 9 | `theorem` | [thmC](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc.md) | 115 | `result-track:12c8df6ae31ab4f2d0a50a916fd3ea2358156d73954a23b274a095231712d14e` |
| 10 | `theorem` | [thmC_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-cumulative-source-edition-4.md) | 121 | `result-track:6bfea5ea35a45bbf29b8baeefaa48ef13c097713d1f2a235571c51d4111cab2b` |
| 11 | `theorem` | [thmC_lam](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-lam.md) | 127 | `result-track:6c5127dcc8128fe3575fb5d28b40d8b711e90c8f4d4c3659b2cfbad4e86ca3ca` |
| 12 | `theorem` | [PaperInputs.of_three](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/paperinputs-of-three.md) | 141 | `result-track:4be4414f158328571b0242753686917c0467d7a586d0bc4ac02cc278b2f4109f` |
| 13 | `theorem` | [thmA₃](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma.md) | 149 | `result-track:2da622aef9520bdc8a3e2b04b3a8f734310db171b8367c9a4ddf61a1f6b8001c` |
| 14 | `theorem` | [thmA₃_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-cumulative-source-edition-4.md) | 156 | `result-track:775df09bf72368973c6287ea4be5bb702690335fa3d4831a9a0690028880428a` |
| 15 | `theorem` | [thmB₃](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-source-edition-2.md) | 163 | `result-track:1854876a92b3e9be83e524ab7e3b79fe830dbbf177981c3fb837899a2bc31337` |
| 16 | `theorem` | [thmB₃_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-cumulative-source-edition-4.md) | 170 | `result-track:7ddd3795841746c8fc1b2a50333be66c363d9f42f855bfd7eb2ac1d6428bf862` |
| 17 | `theorem` | [thmC₃](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-source-edition-3.md) | 177 | `result-track:9f91646b0782a65d0701f1325b270206dc67b08ada6bea61400588e50b64b804` |
| 18 | `theorem` | [thmC₃_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-cumulative-source-edition-3.md) | 184 | `result-track:684db2078756cf1a74f452d9fe14f90f9f8d80bbc996a7c01a3c2d92789e576b` |
| 19 | `theorem` | [PaperInputs.of_two](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/paperinputs-of-two.md) | 198 | `result-track:6246ee40d640e61cce3ff07a43fe942b4572c47d5bb055ad096106e09610d646` |
| 20 | `theorem` | [thmA₂](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-source-edition-2.md) | 206 | `result-track:8b189134beea64e4539172d9e9836feb8627ea0ed83b79593e02030c4ff832cd` |
| 21 | `theorem` | [thmA₂_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-cumulative-source-edition-5.md) | 211 | `result-track:fd81ac58486c1686b06e1a9780a1d725121ad3042e469aefb51706f252a69ce3` |
| 22 | `theorem` | [thmB₂](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-source-edition-3.md) | 216 | `result-track:1b4ec0a6090136a3e0a23313dd45aa610abf58e7a6ee7e94276def3129156fc4` |
| 23 | `theorem` | [thmC₂](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-source-edition-2.md) | 221 | `result-track:611c1a9300c0f26da4b6d3d0f130ac8b4af69dcd7108e1a52c431d68c5150811` |
| 24 | `theorem` | [thmB₂_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-cumulative.md) | 226 | `result-track:0c0af5ac3ba34392ef0a9903cf4c8f1bf33b03f2176af830f6036779b76dddcf` |
| 25 | `theorem` | [thmC₂_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-cumulative.md) | 231 | `result-track:2ce482674d84590cdc4263696083d83a59d77322c9ddfb36a0497cfa7134bdd2` |
| 26 | `theorem` | [riemannVonMangoldt_zeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/riemannvonmangoldt-zeta.md) | 243 | `result-track:fa5796264ee8fc0253c05f5a398e43b4aa87ebd0d54723a30e1e86f42e12ce0b` |
| 27 | `theorem` | [PaperInputs.of_EF](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/paperinputs-of-ef.md) | 247 | `result-track:4341f658bc693154507227803f5f96e35c33c1f39859c86dd10e94a65be62cd1` |
| 28 | `theorem` | [thmA₁](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-source-edition-4.md) | 257 | `result-track:f6749e9d3dab775fc763aea81d5acbd1e9e8f9fd652fdcf85a68b7056874a878` |
| 29 | `theorem` | [thmA₁_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-cumulative-source-edition-2.md) | 262 | `result-track:25ea7bab99b278148970626e24f0ed54c555ccfdd010272255e07f66835f7447` |
| 30 | `theorem` | [thmB₁](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-source-edition-5.md) | 267 | `result-track:e532d449b1a72938a9704fed95be01d51cc5981af4a55cc6fd9937c7e2eaba3a` |
| 31 | `theorem` | [thmB₁_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-cumulative-source-edition-5.md) | 272 | `result-track:eae48f7381e06023a4e2ef3c1365de4a048f7ae4f5a75179653b556758427456` |
| 32 | `theorem` | [thmC₁](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-source-edition-5.md) | 277 | `result-track:b60acecb7d0894c7f5fca65fafa94a7a12c21cb97a0aef304baa083e28226065` |
| 33 | `theorem` | [thmC₁_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-cumulative-source-edition-5.md) | 282 | `result-track:ba5c831fb1873b7f49cf7d8b92bca1eaa74c7715a8418c3242169c683bb87762` |
| 34 | `theorem` | [zetaEF](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/zetaef.md) | 296 | `result-track:60d235b6afd8bf3e702eb805d6e3bac58e53fefc606127207027a60aeca40b88` |
| 35 | `theorem` | [paperInputs_zeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/paperinputs-zeta.md) | 299 | `result-track:147af350447646b2a956a83c4561516d5c0f2a04f43fc13889db79c7cfead124` |
| 36 | `theorem` | [thmA₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-source-edition-3.md) | 304 | `result-track:bdfd5da9fa18a75a8c66fd21ca7f803d28b9fcbe7d862b7ca4990c361d41013f` |
| 37 | `theorem` | [thmA₀_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-cumulative-source-edition-3.md) | 309 | `result-track:3a657ced596e73fcbaa80c2d22605df2521fb78501198500b94bc5d6f9239346` |
| 38 | `theorem` | [thmB₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb.md) | 314 | `result-track:1471916038d3ae705d718afbd1d0d473be2962f05619be815d3eebc37ff529aa` |
| 39 | `theorem` | [thmB₀_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-cumulative-source-edition-2.md) | 319 | `result-track:39d5c0c1fe2bccb52cd970ff5c9a99c322cd4f36e1b73ab4bdab93d64a7b2dc8` |
| 40 | `theorem` | [thmC₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-source-edition-4.md) | 324 | `result-track:a99660471df77b26aef32ef282ae864995e38ec9358b68cc7ba99fd7229e7d32` |
| 41 | `theorem` | [thmC₀_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmc-cumulative-source-edition-2.md) | 329 | `result-track:67511d6d7f2735a561983e50dc4374bcf73b1c6d1ac5d28b8d39732a1af26a95` |
| 42 | `theorem` | [thmA₃_N0](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-n0-source-edition-2.md) | 339 | `result-track:d561efc4401e0b8c2941017ec4ba05196a62c6e6c5d0b2e9d828e50db3529762` |
| 43 | `theorem` | [thmB₃_Nsimple](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-nsimple-source-edition-2.md) | 349 | `result-track:23b5de2b7fcdb9a73dd3eb08b52b85405132913f7cd1299f4b44cd1faeec62fa` |
| 44 | `theorem` | [thmA₀_N0](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-n0.md) | 364 | `result-track:322ab2c442eb6487af40765d9a6badee79723dd5df644c7c81fb49880a9b8662` |
| 45 | `theorem` | [thmB₀_Nsimple](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thmb-nsimple.md) | 369 | `result-track:2072918c941c992bcb74f03e2eaf2371035876217de0394156f3989caa606572` |
| 46 | `theorem` | [thmA_ofInputs](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalNamespacedPaperInputs.lean/declarations/thma-ofinputs.md) | 377 | `result-track:7d56c5b83036962a825245874c169e4a638bbcf9df703346c390cd6bb3e6256e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbfa104ffb71a244d5556aef4bdd3c7e56e1938d2fec0644bfbc7922ebb8c10c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant1edd0c9797ba4a4418c35c5fd2ff300ec7e8c1cbd9660d12c743cd1c43d2d4d5.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant1edd0c9797ba4a4418c35c5fd2ff300ec7e8c1cbd9660d12c743cd1c43d2d4d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
