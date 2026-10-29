# Verification target: Pattern Public Is Pattern

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d83241cf7debb27a969ca264b8b9e4efb4eeda38",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant70ea42654acf0923caaf259edd3eaf90a6299c401da3eafba927c28a1a9d8a87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d83241cf7debb27a969ca264b8b9e4efb4eeda38`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant70ea42654acf0923caaf259edd3eaf90a6299c401da3eafba927c28a1a9d8a87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant70ea42654acf0923caaf259edd3eaf90a6299c401da3eafba927c28a1a9d8a87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Name` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Coe` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/ispattern.md) | 24 | `declaration-track:4c3da5ee1fcb7cd8f9f0054f38b2b5887f7c7a0810d811343e09276c68ace7d5` |
| 2 | `structure` | [Pattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pattern.md) | 39 | `declaration-track:3bb3c0113e31a3d49995e05f628558fa7751959d0793723d4a7b5822c583d29e` |
| 3 | `inductive` | [PatternDescr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/patterndescr.md) | 52 | `declaration-track:f662199f66b3aeeafa57e9a05b4f5bf7c17acd2855103bb591cb4ec43bc9d650` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-4.md) | 66 | `declaration-track:32c68edc5988684ec0a3b5ca57941c63960ea7861d5bcafaf6db580b491e27ed` |
| 5 | `abbrev` | [Pattern.matches](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pattern-matches.md) | 69 | `declaration-track:c1ef32ef43ae2ab868fd912a2b2a041b4e8ff629eab7c822fe8f5caef53b69eb` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-5.md) | 72 | `declaration-track:5ab8d0632aa0ec190e49421e98d6ad72cbf1bac0785c741beef9a99c86fd0ea8` |
| 7 | `def` | [PatternDescr.matches](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/patterndescr-matches.md) | 75 | `declaration-track:f0f5666f0af8b49a0a297cd21ff720cb28d6c31f82579dd0b6434011c72f738e` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-10.md) | 84 | `declaration-track:ba0be42a702f7bca647c4296360e9c01a86d3c76eea2f7c00e06eb892c7105b2` |
| 9 | `def` | [Pattern.ofFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pattern-offn.md) | 90 | `declaration-track:ee1fc2266ed5e72f63bef5615720c371da0fa5fd58d948723f13a50f9de11c62` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-8.md) | 93 | `declaration-track:9b4f49ee06ca2df2e536b22a762ad275e9cb00f5f21d4517861e5de04e7ec3ab` |
| 11 | `def` | [Pattern.ofDescr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pattern-ofdescr.md) | 99 | `declaration-track:8d89ab6de9bae19e89e03d1845ce923373ac25ea237d81f135f38655bbd16e8a` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-6.md) | 102 | `declaration-track:5ffce5c479ad57e622b506904ea41c63f6d98ae3a50b181eddc9e22081d5b2a3` |
| 13 | `def` | [Pattern.not](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pattern-not.md) | 105 | `declaration-track:82bd1155ce2c9703b3d129278c4b24e409df4446eeed1eb0a5598d102d4f31aa` |
| 14 | `def` | [Pattern.all](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pattern-all.md) | 109 | `declaration-track:f2e0ec9b0429c2686f228ca6ce1ef677b79da94585a6b0fb5aaed8c3fb8f74e1` |
| 15 | `def` | [Pattern.any](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pattern-any.md) | 113 | `declaration-track:44a1427d032bee0c9f7a8948bf3ec4d9600afa4ef65536793a23d2e09b91642b` |
| 16 | `def` | [PatternDescr.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/patterndescr-empty.md) | 117 | `declaration-track:4a4651dee8aab495bcc29814c2d0489882f46f7c4dd051a39d4dc8c79118272e` |
| 17 | `def` | [Pattern.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pattern-empty.md) | 120 | `declaration-track:4bb660eef2cdbacfc1802014bbdcd824ab4399edb74d1e4f569049eaecbf1d15` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-7.md) | 123 | `declaration-track:71e3b1aaae3a7b877d587f0e8262d0ad0a5a9792102d08bbba4b834144caac45` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-11.md) | 124 | `declaration-track:bcd1d0fe3dfdcd92e40808173e3b27fbdc05f84e163bf134f7955f0069e59cec` |
| 20 | `def` | [PatternDescr.star](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/patterndescr-star.md) | 127 | `declaration-track:be09ed884f8e847793e2aa8387f50ee1c95dd4deabac76f5319e940e4e783890` |
| 21 | `def` | [Pattern.star](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pattern-star.md) | 130 | `declaration-track:85b5dae577156cda31b65d26159beb7343c936be4ec3226f9496dae07272f1f1` |
| 22 | `inductive` | [StrPatDescr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/strpatdescr.md) | 136 | `declaration-track:36924a5373ad31d37cb9ffd0f72f60efdc6ef3ee878e78a077fd8b16089efe72` |
| 23 | `def` | [StrPatDescr.matches](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/strpatdescr-matches.md) | 146 | `declaration-track:c9d847d024752ceec870b558fc4ff9b85d5eb2d7d38bea1bf8b083d83966b36e` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance.md) | 152 | `declaration-track:1a455c5e37294892745c27b434fd49dee2b394115f3639c021be1573ab83c399` |
| 25 | `abbrev` | [StrPat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/strpat.md) | 155 | `declaration-track:e17a44ced3756fdd48ca79759c72f000446429db2d46c8112882a80b1bb82d17` |
| 26 | `def` | [StrPat.mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/strpat-mem.md) | 158 | `declaration-track:86b69fbfbc78ed8be68d32cee909dc2ed17b0e8d0884796b8c9a7cfcaee780bf` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-3.md) | 161 | `declaration-track:301c2dc5f6db864a6a46ae35558893ce1666a4d3f658df6ff61d8a9cb55a7f14` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-13.md) | 162 | `declaration-track:fbf717c1385c1f4da6a070b1dab8fa3314d3f111493d627de0612125b3f642dd` |
| 29 | `def` | [StrPat.startsWith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/strpat-startswith.md) | 165 | `declaration-track:a14ea8b36f5b1d071e45689902841a46e1bdba64877849bf355200a17de1d03c` |
| 30 | `def` | [StrPat.endsWith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/strpat-endswith.md) | 169 | `declaration-track:74bdf2195116dc55c20dd9feb4c6e726878dcd0f3e09be2935f998d3cd718927` |
| 31 | `def` | [StrPatDescr.beq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/strpatdescr-beq.md) | 173 | `declaration-track:ae02782794d1981ea52bfc8ef1278c47d0ee90fcfa380f48d3da35aeccfb6df0` |
| 32 | `def` | [StrPat.beq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/strpat-beq.md) | 176 | `declaration-track:188c601ede0b91cbd4bb478e97318482c748e53937778901e2530098566d2630` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-9.md) | 179 | `declaration-track:9bdf5df72e05e27beb16ec6ab002cea7ee1f956a56511ddd605eb12387faf598` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-12.md) | 180 | `declaration-track:f3ee8dce9542748d8e4a5058ba51aaa6445537ed3b76cf4b517d2f00543ffe96` |
| 35 | `inductive` | [PathPatDescr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pathpatdescr.md) | 185 | `declaration-track:cb84efb53fff8c4d78ed9c7a096f7820599ef78e81e9c299f70a56719075b4f2` |
| 36 | `def` | [PathPatDescr.eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pathpatdescr-eq.md) | 195 | `declaration-track:de066af36851e12272bf298dd9b7348e3b2e6a637995287b4db943a900f60e07` |
| 37 | `def` | [PathPatDescr.matches](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pathpatdescr-matches.md) | 199 | `declaration-track:093482272d9e00828e948181b2f6eebb63bc5b6c9419ec3fdca2733539392cef` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/instance-source-edition-2.md) | 205 | `declaration-track:1bff913044a81841124dfb61e2f903aa2bab7ad6ea2baff5d83b3690c9cd6a18` |
| 39 | `abbrev` | [PathPat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pathpat.md) | 208 | `declaration-track:653e799e3d2cf921b4d5108718d41525589f896e784005a0a60e2d4ed7d5d7a1` |
| 40 | `def` | [PathPat.path](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pathpat-path.md) | 211 | `declaration-track:04031513b478999ce76e856bbe3e29283a979ed4e648d33f2841ba2fa8b486af` |
| 41 | `def` | [PathPat.extension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pathpat-extension.md) | 215 | `declaration-track:025c94879f9ae9bbe73d497faeddbe91c4e5b6b720c3fe6783ad5ce9cf0e7352` |
| 42 | `def` | [PathPat.fileName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/pathpat-filename.md) | 219 | `declaration-track:943f15ee5791f5e2468208d916ae6bf195635821a505a8578cfd231f51629897` |
| 43 | `def` | [isVerLike](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/isverlike.md) | 228 | `declaration-track:0ea201e8ad9bae72cdad1e396ac760497f1b689ea360610b3c1ac4cc265892f2` |
| 44 | `def` | [StrPat.verLike](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/strpat-verlike.md) | 236 | `declaration-track:71407a9837629022ae4648e41c10ea3439c0fe3af98436021ed0f524b208eb77` |
| 45 | `def` | [defaultVersionTags](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/defaultversiontags.md) | 239 | `declaration-track:4360ecd128fadb9b8a41cd42a723b80dccda9c4ece1581b2c2542e091b666e24` |
| 46 | `def` | [versionTagPresets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatternPublicIsPattern.lean/declarations/versiontagpresets.md) | 242 | `declaration-track:8b6ec3104fa169bb9187513f809880b71a7da67af94b5480127e2452aa4dcfc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ece8edcdc0ff08b9a627ffb41042807739f9fe8cbbd0807454cb1345ac930f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant70ea42654acf0923caaf259edd3eaf90a6299c401da3eafba927c28a1a9d8a87.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant70ea42654acf0923caaf259edd3eaf90a6299c401da3eafba927c28a1a9d8a87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
