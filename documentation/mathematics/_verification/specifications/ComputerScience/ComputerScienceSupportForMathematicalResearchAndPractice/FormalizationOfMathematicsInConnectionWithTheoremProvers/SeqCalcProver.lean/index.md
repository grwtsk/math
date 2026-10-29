# Verification target: Seq Calc Prover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b22ba5bd4f9ff9e61ba11eb2e4c8b21875bd1940",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b22ba5bd4f9ff9e61ba11eb2e4c8b21875bd1940`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Mem.map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/mem-map.md) | 24 | `result-track:75a9abd41018a9ba00f91b0e68ec7a22bf0c95491efd8a3624ed2d078de758e9` |
| 2 | `theorem` | [Mem.split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/mem-split.md) | 27 | `result-track:f4a56733f0ceac4108e6a98fde2926ed1343baaf7ac39cd23200f8da3827cd43` |
| 3 | `inductive` | [All](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/all-source-edition-3.md) | 47 | `declaration-track:723a3a86bb73bded24f7cdd0773edf000108339a768cde07174c94032f54451e` |
| 4 | `theorem` | [split_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/split-cons.md) | 54 | `result-track:4e2daa751a7fc071a6b71f74837a73275767f1d792133619da63a9bde60e7c17` |
| 5 | `theorem` | [mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/mem.md) | 58 | `result-track:8714a6b222fb491b1da3faa58685fb4ce38e4cae4a1310c250a2c56655b446fc` |
| 6 | `theorem` | [weaken](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/weaken.md) | 62 | `result-track:200ff4fb90ae05de9b0ad54199a61ae0118fb247e43f93b3b92bea69f3b80619` |
| 7 | `theorem` | [in_self](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/in-self.md) | 67 | `result-track:2ceb028429f2267143a12df7c05b8e7d58c5ffdbcd9c7a689cb73827990933b3` |
| 8 | `theorem` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/map.md) | 70 | `result-track:59efbc5885bfd4a099f38955b862b458715a5d0367ddd89d97343da2c4bf7d19` |
| 9 | `inductive` | [Any](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/any-source-edition-3.md) | 81 | `declaration-track:e7dca4f5f0588d559e413f25c2cded37420322f3e7f031c34175c53115da573d` |
| 10 | `theorem` | [cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/cons.md) | 88 | `result-track:be7eb7778568ea5f3947fc5be89807c0153a136456707586999dc63bea0733a3` |
| 11 | `theorem` | [mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/mem-source-edition-3.md) | 92 | `result-track:c3ecd793bcec18a9487c9943ced33d2354d4eed2f0ad9ed7a4ff2f00f29af314` |
| 12 | `theorem` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/map-source-edition-3.md) | 102 | `result-track:cd731607dc43fd747673366d5cc6028c59aa7251f1462e352fc2076dce541f9a` |
| 13 | `instance` | [instDecidablePred](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/instdecidablepred.md) | 106 | `declaration-track:bdb6dd5dbedd8cac20bbb058ab685dc8b8bbea8cf67c2fd5da0f4671ba0ee70d` |
| 14 | `def` | [Common](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/common.md) | 121 | `declaration-track:d7ea8e4c3dd47ad0e606b23421129525b8ed2141fd20b22dd068763078d932fe` |
| 15 | `theorem` | [mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/mem-source-edition-2.md) | 126 | `result-track:99255c5d5a720248ea94afd03d1e2c1aff365997c886bf251080caac566f6024` |
| 16 | `theorem` | [sym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/sym-source-edition-2.md) | 130 | `result-track:c4bde693c017bcb3552287cf3e632ab8ad3d48d48935384c3a76956b2dc761af` |
| 17 | `instance` | [instDecidable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/instdecidable.md) | 136 | `declaration-track:fdefa6a5f986a65e08ed613747e09af52e288cf72279f68ee7c3ab95add9746d` |
| 18 | `inductive` | [Perm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/perm.md) | 147 | `declaration-track:1149dd9c695ed2160cae28a664d65a92d04d6dcddc43e69d88ba99350a4c11ba` |
| 19 | `def` | [sym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/sym.md) | 159 | `declaration-track:004ded4359a9d7f3931cb2c7ad1cede8b51fb302526b503e56149e012a4eb6e8` |
| 20 | `def` | [shift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/shift.md) | 163 | `declaration-track:463be22f593e9cc1b50f4a008199a4c7775f359e83ed5400c29e96115b45571a` |
| 21 | `def` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/map-source-edition-2.md) | 167 | `declaration-track:bbbe36d131ea827418cd45cc2809c657d588ab325fecd76c14bfca4d29e0d513` |
| 22 | `theorem` | [all](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/all.md) | 171 | `result-track:43763448cfbfbee6e4f7a2b208ced6ba3d191ba2f78db49bf91432cf3f50f80a` |
| 23 | `theorem` | [any](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/any-source-edition-2.md) | 175 | `result-track:b05bc554fb77721480fcb59fed68ee1bbf9eea1acbd820a065b44c53f7a02955` |
| 24 | `inductive` | [Form](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/form.md) | 186 | `declaration-track:56a1a0c1d16704c541985349ac9363f2ca1a8d9728dc570e4aca0e48157b09d8` |
| 25 | `def` | [Val](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/val.md) | 199 | `declaration-track:9f7b7ec8c6214ad6bb4f96c2e7d0977c3c68f9b1f23b5697deac530f72401189` |
| 26 | `instance` | [Val.instDecidable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/val-instdecidable.md) | 204 | `declaration-track:ce138c186f1ff69903499d8b35ee76ea1fc6f0c2da90e7bb1922bbeb7fdd69d4` |
| 27 | `abbrev` | [Valid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/valid.md) | 214 | `declaration-track:6ec3baea0c76de1a869bf63809890ec0e0030f9c36b54a9c4882f79a2c229c62` |
| 28 | `def` | [SC](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/sc.md) | 217 | `declaration-track:3f3aedb1a6e45145639b1d420c4f1e53baff3a03d790b1f3661b663db630842a` |
| 29 | `theorem` | [all](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/all-source-edition-2.md) | 222 | `result-track:5de04f0a78a652377443a3d09e0159c9c016a35b3bed5f16ba9f8cf2accb8230` |
| 30 | `theorem` | [any](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/any.md) | 225 | `result-track:6c22dbff2a1629af89a8b2d25c9c6150fd87d0725a6677a021539f56296c8bd1` |
| 31 | `def` | [sum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/sum.md) | 234 | `declaration-track:bd80dc1fa9b2665585dff0bf83c243811166bb0957f1e81f9e16ebbc7f45c64f` |
| 32 | `def` | [Cal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/cal.md) | 239 | `declaration-track:f184028fbb6b76e84edc4992870fed9edd3122d4abf5f3aadab49d6d4e198354` |
| 33 | `def` | [Cal.instDecidable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/cal-instdecidable.md) | 249 | `declaration-track:0187866a601f217fdb6893642f5532b1e69ec8233ca0b91c899afed077fdbd49` |
| 34 | `abbrev` | [Prove](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/prove.md) | 273 | `declaration-track:07aee2be3d6a58680f8a4f74e4b948cd94529707c6cc60843c6be10ee4675a91` |
| 35 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/example.md) | 275 | `declaration-track:14e1e80872177188a699a612b9809840a790135400d4b7a56e89d31b0f08724d` |
| 36 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/example-source-edition-2.md) | 276 | `declaration-track:75c0c1da21f1e76344ec02b952b0d96be78a6b8e1cb46c70c87a0740910f2e6d` |
| 37 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/example-source-edition-4.md) | 277 | `declaration-track:9fd05cdac952b5ff6ee216c0ec3d1478f0469dc6a0465a759c16cabd5d880ed0` |
| 38 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/example-source-edition-3.md) | 278 | `declaration-track:9a9a22125a8f475d2af9aa4e068bb30ff3a73d4b0d8367a5af861b2c8dc487ec` |
| 39 | `def` | [SC'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/sc-source-edition-2.md) | 284 | `declaration-track:70fbb91a0b888a0b78b33a92b9e50b27e1773f6f4ae3463a3ff3fcae68a57eed` |
| 40 | `theorem` | [Cal_sound_complete](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/cal-sound-complete.md) | 287 | `result-track:79bfa0b1758de15821ff427b687e05e879eb816cacd7664f0ab747f5ca28c0ec` |
| 41 | `theorem` | [Prove_sound_complete](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/prove-sound-complete.md) | 398 | `result-track:5d26991453e254074475b7908eac0f8f9769611359cc2c8747c7420ad0d0e3a3` |
| 42 | `inductive` | [Proof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/proof-source-edition-2.md) | 413 | `declaration-track:5fc06be4dc2e88611fe66bacd7a3bd518f2c74645f6f62a06f9c2640cd7413d9` |
| 43 | `theorem` | [weaken](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/weaken-source-edition-2.md) | 427 | `result-track:682780f7e6f70bf9d433d515223c351f8034291c09064e4e10d7dd547e7ecbd6` |
| 44 | `theorem` | [sound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/sound.md) | 438 | `result-track:705719603dc7fa97c47b1af5e475cd2266c01ff5d29ffb1d294ebb6a43341d31` |
| 45 | `def` | [Proof'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/proof.md) | 448 | `declaration-track:04230d5c4e6f2d506d223b454c20e62f822d01df7e7e32c94072c1ff01be54ef` |
| 46 | `theorem` | [Cal_Proof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/cal-proof.md) | 451 | `result-track:891ba4751cb0688ed16eb4346ed9cfa3443573e275976ee1200da4fa740388fc` |
| 47 | `theorem` | [Proof_sound_complete](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SeqCalcProver.lean/declarations/proof-sound-complete.md) | 493 | `result-track:a28272e0759f117c33b2289cada35b0b01ceace0dad49a0bc6306d192e2b1e4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07e119c3030c122f06463a32cc4ab6fb890a46408fbf7a3c6f0eb8de50c7d253 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variantc3afa0f42f41eb441f36abd9bd92d28623f25ba53150aabf4a131325478a0d64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
