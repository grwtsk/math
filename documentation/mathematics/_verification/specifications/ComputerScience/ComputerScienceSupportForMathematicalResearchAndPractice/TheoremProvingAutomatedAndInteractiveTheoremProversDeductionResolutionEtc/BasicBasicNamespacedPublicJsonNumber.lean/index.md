# Verification target: Basic Basic Namespaced Public Json Number

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "824b720557e2086cea28adb1c6062223fa0302e5",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc87b4b30e6225578d25f41ada708fa35f04a397c69c5d8eb017482a0bfd56df6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `824b720557e2086cea28adb1c6062223fa0302e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc87b4b30e6225578d25f41ada708fa35f04a397c69c5d8eb017482a0bfd56df6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc87b4b30e6225578d25f41ada708fa35f04a397c69c5d8eb017482a0bfd56df6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Nat` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.String.Substring` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [JsonNumber](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/jsonnumber.md) | 33 | `declaration-track:7c9681bf97e41e5d335570c1fb13e58e70847adc725e5f0b9c52e9ad4858cdf8` |
| 2 | `def` | [fromNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/fromnat.md) | 40 | `declaration-track:5e1a2cfe4ab394736f4d7965322bdf8cc850eb446eada298e8505c5668667d7f` |
| 3 | `def` | [fromInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/fromint.md) | 41 | `declaration-track:4b6410feefd61bc251a1e7ce8d9b2c29a55296f4030a385cb8a94b67477f3974` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-12.md) | 43 | `declaration-track:77daee50d46e7bb26873a2e5a697d227e49b592d35a7d3e289721e3e58c02146` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-6.md) | 44 | `declaration-track:3e144c3d730a9966cdb1f5a73a7854f08f6a63bc4bf2ad91fe6fb9cd1cf99084` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-16.md) | 45 | `declaration-track:be5cd02f59d6fc82630f0db2099632d355f0a8e219b2e37c5e23c494810d4938` |
| 7 | `def` | [countDigits](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/countdigits.md) | 47 | `declaration-track:32002072c3114f707aae0617110c5fc46cd634fc0cc49692bf6bc25d9424743f` |
| 8 | `def` | [normalize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/normalize.md) | 56 | `declaration-track:15724c3d23fa7d75b116570ea1a6821383b4f48fc4a9a63b4c689eabd2a72a3f` |
| 9 | `def` | [lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/lt.md) | 72 | `declaration-track:f07fda1bf7b897528a38981a2f7ac4e0bcd85a8aed0a18ae4a1746fa219ac32e` |
| 10 | `instance` | [ltProp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/ltprop.md) | 96 | `declaration-track:2919db450411faab44211a3f6e674916a1d740604906da8e60e7aa244b79c67b` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-15.md) | 99 | `declaration-track:a990fea4a036297a47840edcbc986fbf6393f7aa7944547d6b5adcdb29c662be` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-10.md) | 102 | `declaration-track:680cec2c272a43ba1b19688f5e04a93187a7aa26beb95defb64ea5d243dd3af3` |
| 13 | `def` | [toString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/tostring.md) | 108 | `declaration-track:86cd0b2ae6085d36f82b52ccbe44688026c6906f91756b1ecd585f2c066d9dea` |
| 14 | `def` | [shiftl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/shiftl.md) | 133 | `declaration-track:d4531b41adb589ea1c9f1a449c09aefe52306ee1c275b7f73a082372ba927478` |
| 15 | `def` | [shiftr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/shiftr.md) | 140 | `declaration-track:80f1baa402566f20cdea64abaaebf51cb993f7432ce99fb61b4ef20b8220a0d7` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-2.md) | 143 | `declaration-track:0550be5077178ccbfa5ae1090ac13bc984ed3564a64eebe073cc8eb2250ffc6a` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-7.md) | 145 | `declaration-track:4dc4967c7214263ff56162a8506e6eb578eaa53dd4080d978b779d5e14b66abb` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-11.md) | 148 | `declaration-track:69bc9c80bab0440e970687d10cdcaca4b171d5f884eb8f37d89b8f848463533b` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-17.md) | 155 | `declaration-track:d7201fe41a2da1e8c608638cd14e747b27d8116c5c933909312f61f208414458` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-8.md) | 158 | `declaration-track:5542ce88a1b6406f2f1eb2bec6a91b6c09f4bd19bc0f89ae4631f84b6afb5796` |
| 21 | `def` | [toFloat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/tofloat.md) | 160 | `declaration-track:2b4931a9f0a93d7215d880f8d6c595de5ae43203e6b84e578e9b0a1b2d252c9e` |
| 22 | `def` | [fromPositiveFloat!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/frompositivefloat.md) | 166 | `declaration-track:8546a947eaf3495904655c2a7f5c3a6509ffbce10c23644962a3a07abd1f4678` |
| 23 | `def` | [fromFloat?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/fromfloat.md) | 173 | `declaration-track:8380b7c50de4b531495ebbfa63f947a7d500065d318bdfb001e0834441e98d72` |
| 24 | `def` | [strLt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/strlt.md) | 186 | `declaration-track:602c33ea5c630726c5d980bfd678690215a86d5b353954c9f3572e7b539659f3` |
| 25 | `inductive` | [Json](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/json.md) | 188 | `declaration-track:c94bf563d808ee2519e3ea5c201d6a6025169ac677b3c68cc7c8f45438660887` |
| 26 | `def` | [beq'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/beq.md) | 199 | `declaration-track:fa6f920b64728029d888efc75cfa7141ac659f2891a5811de64b0514f3ea6de0` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-5.md) | 217 | `declaration-track:37600f7ad64a872907e123deef5bd6b70c095637d58057154f1b928f1e6af1b9` |
| 28 | `def` | [hash'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/hash.md) | 220 | `declaration-track:0e720f59d406ef1d1b538294a4d7bc1c2a468ac0d7b756d865990cb0212e3883` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-9.md) | 230 | `declaration-track:57d5081cc32df2d16d805c92035df85dfb36e0b1bb0e7a43777999cdcd9287d0` |
| 30 | `def` | [mkObj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/mkobj.md) | 233 | `declaration-track:a734f3cfe78e471bcc0efe024f23040455fe6d3069e0c6efa92505edf119d43d` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-14.md) | 236 | `declaration-track:8589d86533e70be6d84487984f0d1968354213cc4f03a3407ee0f28c9887806b` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance.md) | 237 | `declaration-track:027929263929ddaa374b55c11f535edfeb45fef5b7618c38debb70c98225b2da` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-18.md) | 238 | `declaration-track:dd9b8e1d104a5ed9b88c9a161d993258e83908f2047436d9aecf3dbe2fa965e7` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-4.md) | 239 | `declaration-track:34fafdedf3bd973f2c62f3809257053827a1184234b3c6192196bb63253933f3` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-3.md) | 240 | `declaration-track:0c4c43545419e21fbd9bab0cd91cdfe0ef02f00f3e60e0eb94e4ebe04bf7f7b0` |
| 36 | `def` | [isNull](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/isnull.md) | 242 | `declaration-track:4f403f56925f380b04ed77ad7515afbcc1019aef944b3a7adf2a514aeccd1e5d` |
| 37 | `def` | [getObj?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getobj.md) | 246 | `declaration-track:172161925eb548260300cdebe2f39e738f6e8dca13962db4091187c3cc9a41d3` |
| 38 | `def` | [getArr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getarr.md) | 250 | `declaration-track:0034849d101c4dcd21ad612891ccc56d6e4288608b94956b8e886dcfef4ce124` |
| 39 | `def` | [getStr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getstr.md) | 254 | `declaration-track:04c0739d6dad999f34837179b35e86b2a39da8a57bfa5d188bba0bc152359664` |
| 40 | `def` | [getNat?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getnat.md) | 258 | `declaration-track:b96ebe9b5ba293dc0b019bb988b06708135e44550fb138a26de747a484d95786` |
| 41 | `def` | [getInt?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getint.md) | 262 | `declaration-track:9579cd8f429cb91a820a97397421963970c97e6d6d6b1562cde20175fecc61c8` |
| 42 | `def` | [getBool?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getbool.md) | 266 | `declaration-track:b66b102bf045f669acf4618f99fc4f16c4154a25a6361d1baf4335dbfe0c101f` |
| 43 | `def` | [getNum?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getnum.md) | 270 | `declaration-track:6c25db4c1fbc5162f5e3382ffeb3303e47b618e4b253ba81b18a74172887842a` |
| 44 | `def` | [getObjVal?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getobjval.md) | 274 | `declaration-track:80ddc4ebfc3af5b265e614e184588b597b45a23d83ec89443f30d63f9903d7a0` |
| 45 | `def` | [getArrVal?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getarrval.md) | 281 | `declaration-track:db368f7a847acb6c1588d3a682ca66b05030f3e885676afe4f7080c9cd2683ec` |
| 46 | `def` | [getObjValD](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/getobjvald.md) | 288 | `declaration-track:364e26c95dad99ad50a8519a8003f51c41f3d65af8df8332c13bafd49d9fc8ee` |
| 47 | `def` | [setObjVal!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/setobjval.md) | 291 | `declaration-track:53a34c9861bb0031a9dfc1cfc67feee6f026af6e8bde0fed8db180355855141f` |
| 48 | `def` | [mergeObj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/mergeobj.md) | 298 | `declaration-track:bf2835d4a53862076f8ff5a591dbda9ca57ec7833ba388dad4c86b82c9309e4d` |
| 49 | `inductive` | [Structured](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/structured.md) | 303 | `declaration-track:cd27a6dd6a968b65b5d1a7b6c173c98bc7af39311b5e5fffe3bca0dda3dbb56d` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-13.md) | 307 | `declaration-track:801255aebde211144fa27adf1265716bad44d2482407c72e073402f369344d92` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicJsonNumber.lean/declarations/instance-source-edition-19.md) | 308 | `declaration-track:fc91eebd2bbce9517b602e0574aa93c371cd5dd0a65d7d7f9dcfc0d4f4d53fdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3af6467c7553cab1b9eda4dc29243d6138491e6a0e6eba7cb42ed79ce46fd471 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc87b4b30e6225578d25f41ada708fa35f04a397c69c5d8eb017482a0bfd56df6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantc87b4b30e6225578d25f41ada708fa35f04a397c69c5d8eb017482a0bfd56df6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
