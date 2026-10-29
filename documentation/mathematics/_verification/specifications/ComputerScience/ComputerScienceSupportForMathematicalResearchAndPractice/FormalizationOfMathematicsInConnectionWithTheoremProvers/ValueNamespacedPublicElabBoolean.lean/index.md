# Verification target: Value Namespaced Public Elab Boolean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2daf27bfd9d4d50be0ba4c1296da95a3432da45",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2daf27bfd9d4d50be0ba4c1296da95a3432da45`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabLit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elablit.md) | 31 | `declaration-track:61c6209c6e0363a08ac08e8ec5407fbfde19839810de1a62f809e9a49bb83170` |
| 2 | `def` | [elabBoolean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabboolean.md) | 36 | `declaration-track:c335c0964b2fa8a6ada19477e58559a927b88cf3d45cea2c474b5bf235fb023c` |
| 3 | `def` | [decodeDecNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/decodedecnum.md) | 46 | `declaration-track:4561bde8b24acf91ce57bbc9e430cdff870403dbefad26d0a8cea0e4d75cb9d2` |
| 4 | `def` | [decodeSign](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/decodesign.md) | 50 | `declaration-track:6358584cdba1d34032f505a9d951e77e7825c845b3722723ed3e47d10ad982cf` |
| 5 | `def` | [decodeDecInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/decodedecint.md) | 58 | `declaration-track:ff8a349496d2f7bb9949e4bab054e12a32b0e27ec4e4ed96f9f268caa5a50a71` |
| 6 | `def` | [elabDecInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabdecint.md) | 65 | `declaration-track:808c88919dadd5602cfd404ccde35085d7b84dc9ce16294b7025db11bb0c7c32` |
| 7 | `def` | [decodeMantissa](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/decodemantissa.md) | 68 | `declaration-track:70732ab6760f3dcea8eab0d8adf681b201f70db97132468be5d178774a5da42c` |
| 8 | `def` | [decodeFrExp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/decodefrexp.md) | 76 | `declaration-track:31233048b30ed918a2c2d545ae28185d4d2a89f8753399f4232e86080af356e8` |
| 9 | `def` | [decodeFloat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/decodefloat.md) | 87 | `declaration-track:8f011953eae04bd17cf72b077758f83dea1324b89cab65cef9543b20dc8c00a4` |
| 10 | `def` | [elabFloat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabfloat.md) | 98 | `declaration-track:1eb3fb7a78bdea0786ee58f4ccdd796beb3a698f825565b7ee713395f87e236a` |
| 11 | `def` | [elabBinNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabbinnum.md) | 101 | `declaration-track:1196aa7459eae8826025d4ec87fc31607890d8f1948283150584a83f164a4c59` |
| 12 | `def` | [elabOctNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elaboctnum.md) | 106 | `declaration-track:1acc546b992ce1662493648abf234187de645623b2ead9944a5a2fcdd86f20aa` |
| 13 | `def` | [decodeHexDigit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/decodehexdigit.md) | 111 | `declaration-track:c0d29b9db8dc69748752571a412beeee086e3ffc11904a8a71d04589f23f7ce0` |
| 14 | `def` | [elabHexNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabhexnum.md) | 116 | `declaration-track:9e8f41322be153f41cadd904675191ded4683b8e0534c9c2634faf0667e4a0bf` |
| 15 | `def` | [elabDateTime](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabdatetime.md) | 121 | `declaration-track:7d8ac681f2cd1ec0071fb6ce583b6478b56f7fc4db7b9492673cf9f92abd3aa3` |
| 16 | `def` | [elabLiteralString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabliteralstring.md) | 131 | `declaration-track:8457c697fa6a1482e53da7d9550a0e2b6b802deb13a5ba813066b0fa84de4308` |
| 17 | `def` | [decodeHexDigits](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/decodehexdigits.md) | 134 | `declaration-track:75c6a285ca2068cc5688f2e907478ef2551b35901daa879591cb4830bed8c22c` |
| 18 | `def` | [elabBasicStringCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabbasicstringcore.md) | 137 | `declaration-track:7d5a32873977b6cb8f9a5418f36571583981bb39e072344e9bf8baae45c3de1e` |
| 19 | `def` | [elabBasicString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabbasicstring.md) | 172 | `declaration-track:b6cdb1eb2f9618e0dc5c35552a6f8d9e6035cb7a5fecf7dc9bcc3856554c2dce` |
| 20 | `def` | [dropInitialNewline](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/dropinitialnewline.md) | 176 | `declaration-track:12d57d7544711aae8768267d462e45ba975bbb9a179b492800b7dd01b822038d` |
| 21 | `def` | [elabMlLiteralString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabmlliteralstring.md) | 184 | `declaration-track:35271313df5fb022dfc3570afb05f063598e3729c04ab75605a37d047db12df2` |
| 22 | `def` | [elabMlBasicString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabmlbasicstring.md) | 188 | `declaration-track:6bfef16851aec1d445fba1fde182cf39fd8e93a6001a19b7cdd07e5dd451710d` |
| 23 | `def` | [elabString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabstring.md) | 192 | `declaration-track:acd73b02395ee988d7a8e2d83e445a8afc5e1a5c72be4b4ea82dfd725b9bc0b6` |
| 24 | `def` | [elabUnquotedKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabunquotedkey.md) | 200 | `declaration-track:b5bdf6bd4f3be0fdcb7e5ab3c408056a76eff289cde25b7545953f00cac6726b` |
| 25 | `def` | [elabSimpleKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabsimplekey.md) | 203 | `declaration-track:222fe7b580e1d6d651bb3584c37b1f6b7d2d749e9d5cce1d6f5282a3d6a80c86` |
| 26 | `def` | [elabArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabarray.md) | 214 | `declaration-track:b7bd8f11f626f61f22eb9665602cf622ee618521c202f348f3f46c0cf74d5d31` |
| 27 | `def` | [elabInlineTable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabinlinetable.md) | 219 | `declaration-track:9cca094be1b546488f889475d4a470fa35e8b0c7938125e94dbadcb5007a7214` |
| 28 | `def` | [elabVal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValueNamespacedPublicElabBoolean.lean/declarations/elabval.md) | 243 | `declaration-track:f6ce4fa7e17e5174125300980cce95167c74f772efea7d008a40d946fa52e6aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df5637bda376e82f8409014804e3eb63e9ea9f2109ec95b0bf9d83f5b3f172cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant2dc11965953b18be959996b5a755f4df817974097578ad15a9453e7478eb9771.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
