# Verification target: Superscript Mapping

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bad3fa02a0a12d08c5b251021c5cf6c58482e9c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Varianteb1d23ba7d2d00acef3fee6d49800e02e2d9e16d753a98c397be63470bfaf5b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bad3fa02a0a12d08c5b251021c5cf6c58482e9c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Varianteb1d23ba7d2d00acef3fee6d49800e02e2d9e16d753a98c397be63470bfaf5b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Varianteb1d23ba7d2d00acef3fee6d49800e02e2d9e16d753a98c397be63470bfaf5b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/instance.md) | 36 | `declaration-track:242a8170605c370e702bdb6482fbe3ebcf93f01329f351f4e56d924b976ee888` |
| 2 | `structure` | [Mapping](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/mapping.md) | 39 | `declaration-track:57c9bd4b63018cf5aea5ff29fffeacc38947f36f7e118cd3d6aff3277ac64344` |
| 3 | `def` | [mkMapping](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/mkmapping.md) | 47 | `declaration-track:5fb3ba0d6f73d2b013bdd55d3f6549d7c39a3a1dcffbc3c37a82a7c5dabc4daa` |
| 4 | `def` | [Mapping.superscript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/mapping-superscript.md) | 59 | `declaration-track:dc3395cecec0ceda552167dd760596a6548ea875351009866aae7e15a1771bd3` |
| 5 | `def` | [Mapping.subscript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/mapping-subscript.md) | 64 | `declaration-track:f163d4548c1f578e448f6a05a37b46902825501e906cdae0e16bfada77cadab5` |
| 6 | `def` | [satisfyTokensFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/satisfytokensfn.md) | 73 | `declaration-track:e62d67685cb4b57e4a875f6aa9b0cac560b39207bc305bde054e41f962d7a471` |
| 7 | `def` | [partitionPoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/partitionpoint.md) | 99 | `declaration-track:7c06e869579066f350b64dbfa637f29fbdf4130930305667ee3f858d73e90f7b` |
| 8 | `def` | [scriptFnNoAntiquot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/scriptfnnoantiquot.md) | 120 | `declaration-track:d468553a202707a5ea0d3383c1d48a88402b6bafd1d25229072b3e3a80033f52` |
| 9 | `def` | [scriptParser](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/scriptparser.md) | 187 | `declaration-track:71467a64b2b821c9b8190891f1cb6d15e6f70463bf0eea8aca7419981842c0f5` |
| 10 | `def` | [scriptParser.parenthesizer](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/scriptparser-parenthesizer.md) | 199 | `declaration-track:040cf29883de205cd9651f57f0588fd9db477802f721761811c14b4cbb680f59` |
| 11 | `def` | [_root_.Std.Format.mapStringsM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/root-std-format-mapstringsm.md) | 203 | `declaration-track:c70260741c06d871d83fac51b1e636a7185d551c27a6df40845b938e3ed48d05` |
| 12 | `def` | [scriptParser.formatter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/scriptparser-formatter.md) | 213 | `declaration-track:0de36a603623890ed67b207dc10197f0d98f8c54eaaaabf9eb334d06ed75960d` |
| 13 | `def` | [superscript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/superscript.md) | 245 | `declaration-track:cdbcb15f0f77421b3c28536b47f2bd25ed3a5f6eb1bbabf05a4ae8b3dae4e829` |
| 14 | `def` | [superscript.parenthesizer](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/superscript-parenthesizer.md) | 249 | `declaration-track:59148071d56e7fc98200bf221880cda04ba07f14167fc37ba32e00df13bf2169` |
| 15 | `def` | [superscript.formatter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/superscript-formatter.md) | 252 | `declaration-track:fb4936b4f993ec213a351b5b9ccff8dca0ebbcc61f2c7b369c7039dcb3a3845d` |
| 16 | `def` | [superscriptTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/superscriptterm.md) | 263 | `declaration-track:5adfc29721bd56ad1d4e651f261d772a207613aab1d8bd5353c30b776f722fb6` |
| 17 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/initialize.md) | 265 | `declaration-track:73444bff466041d7b5de3fe112d06624709ecdbd082c0025318e3cee09ffdde5` |
| 18 | `def` | [subscript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/subscript.md) | 282 | `declaration-track:325644ebc8309dd5182a88a16410277a148214fe97e45f2c1b538557917e0b5e` |
| 19 | `def` | [subscript.parenthesizer](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/subscript-parenthesizer.md) | 286 | `declaration-track:0ba69b25dd1d8af1e1817d44d75b5649917ffdd6aaff43e2714cd142881db788` |
| 20 | `def` | [subscript.formatter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/subscript-formatter.md) | 289 | `declaration-track:fe1583a3faa0f7816bbcbb6bb06138d3e872184cf3794e7dcc68a0ba81101f14` |
| 21 | `def` | [subscriptTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/subscriptterm.md) | 299 | `declaration-track:5c5317ecc67ee9c8128d614ef03019349835487c8a70c8ef1a44998dc9c3a088` |
| 22 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/initialize-source-edition-2.md) | 301 | `declaration-track:b7ac9aac10bceb8b60a059659fe775e96fb63385ec686686cb031370acd27d5a` |
| 23 | `def` | [Superscript.isValid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/superscript-isvalid.md) | 305 | `declaration-track:68a7c97e4bba190239d6cc4388164fd7c37f614c3e2fa8ee79564af22bdde3fd` |
| 24 | `def` | [delabSuperscript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/delabsuperscript.md) | 319 | `declaration-track:57847dd59c366239feac078ae4693d790a22cb6c71947c56eb845e4b36686b69` |
| 25 | `def` | [delabSubscript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/SuperscriptMapping.lean/declarations/delabsubscript.md) | 326 | `declaration-track:d9129ad4e66d869a56628b7482138fe50d04e2e27e990922928b12817550112b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=157d03e3c2f67fbb271e83eb894c3e169a623393be8de2b4f096435af0b8290a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Varianteb1d23ba7d2d00acef3fee6d49800e02e2d9e16d753a98c397be63470bfaf5b1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Varianteb1d23ba7d2d00acef3fee6d49800e02e2d9e16d753a98c397be63470bfaf5b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
