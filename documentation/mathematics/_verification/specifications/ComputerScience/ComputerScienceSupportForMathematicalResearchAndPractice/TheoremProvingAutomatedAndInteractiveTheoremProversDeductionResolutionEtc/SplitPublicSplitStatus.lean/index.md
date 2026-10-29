# Verification target: Split Public Split Status

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b43ce3f054bf56f72211b5d290ec1e7fce59a9bc",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b43ce3f054bf56f72211b5d290ec1e7fce59a9bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Intro` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Util` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.CasesMatch` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Internalize` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.MapIdx` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Grind.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/splitstatus.md) | 20 | `declaration-track:04e14765ce1688209a2aa1acdc8ec4e8d052ff5b6daf0e3e81dc8e6df2af2eba` |
| 2 | `def` | [checkIteCondStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/checkitecondstatus.md) | 27 | `declaration-track:8d080c1b1a142679590d927f3606927323f353bd34506807ca5e82ab6702d015` |
| 3 | `def` | [checkDisjunctStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/checkdisjunctstatus.md) | 37 | `declaration-track:cf1eb4d43d95c15be7fbe4dff08dcc6a53f5282c563056f0533d9f8e125f6fba` |
| 4 | `def` | [checkConjunctStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/checkconjunctstatus.md) | 52 | `declaration-track:3e84d1824fe15d8e7ac89e708d7fe2442dd3475d96d25a7935d20fef019fd848` |
| 5 | `def` | [checkIffStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/checkiffstatus.md) | 69 | `declaration-track:72df65bacc6a88056f82565d1ae37cfb78ed2026a87d1694d5935780228ef100` |
| 6 | `def` | [isCongrToPrevSplit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/iscongrtoprevsplit.md) | 84 | `declaration-track:ae071dc0614e84d2318e2b33eccf0d7b5d12bf1ef521e2ba8b8adba3e77b7277` |
| 7 | `def` | [checkDefaultSplitStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/checkdefaultsplitstatus.md) | 92 | `declaration-track:44bec85fd375a41eebb84273620430c25f363868a3b619697b99a01a50d39336` |
| 8 | `def` | [checkSplitInfoArgStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/checksplitinfoargstatus.md) | 124 | `declaration-track:6d4ca1966891c4d55398a065e8c81f23ce0399e69d692bc351b0826be68f88fa` |
| 9 | `def` | [checkForallStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/checkforallstatus.md) | 147 | `declaration-track:515dd805ddcf5edd6b4453470bc6d8fc0a1451de11a401a1b94f8a9efed393ec` |
| 10 | `def` | [checkSplitStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/checksplitstatus.md) | 162 | `declaration-track:356fb0889d70b40de3ffb765feace2f7d5ec30d413b079baf09c93e088523641` |
| 11 | `inductive` | [SplitCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/splitcandidate.md) | 168 | `declaration-track:d243235f056fdeb8b03836b61f314795714fc50e4adb3a5d22ecf89e54721bc4` |
| 12 | `def` | [checkAnchorRefs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/checkanchorrefs.md) | 176 | `declaration-track:57f77c112e81e643b95ccf439d311e48c683174477c67b257d0cad23148eaaf7` |
| 13 | `def` | [selectNextSplit?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/selectnextsplit.md) | 182 | `declaration-track:e1bca53be683e739fa4b1ccfe56434dbfe0399541a52477b33cf8e3b9f6ba4fd` |
| 14 | `def` | [mkGrindEM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/mkgrindem.md) | 234 | `declaration-track:5d4e81cf28f68513b26cbdd7c13190d06e20e32a9e814b24644641a68857276e` |
| 15 | `def` | [mkCasesMajor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/mkcasesmajor.md) | 238 | `declaration-track:4499c88bcda5d3c36adb849f2b4bf0200e2f87c9b10709988a72bb6789eb77cf` |
| 16 | `def` | [casesWithTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/caseswithtrace.md) | 259 | `declaration-track:153715fcc5d35988fd06d3dfcee7eed702411e56999e416d3389fe4481470ee7` |
| 17 | `structure` | [SplitCandidateWithAnchor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/splitcandidatewithanchor.md) | 265 | `declaration-track:448754bdb4164155525fe053baac9bc2e0274985e9017606fa060202d741f242` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/instance.md) | 272 | `declaration-track:1b009aef7f611a0749a193682cbab8fe594960fccbef1d759686c404ca263496` |
| 19 | `structure` | [SplitCandidateAnchors](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/splitcandidateanchors.md) | 275 | `declaration-track:a2ead9e04e25f17a540e88e4e5384bfd8659f40d8e13c31b12efb358d98e24c9` |
| 20 | `def` | [getSplitCandidateAnchors](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/getsplitcandidateanchors.md) | 286 | `declaration-track:f415a16aec124f325152d7f0f7ddcc7a4ea121324ec07e2f6841762539dc06da` |
| 21 | `structure` | [SplitAnchorRefInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/splitanchorrefinfo.md) | 316 | `declaration-track:01c5d3d403ff20d3075eeddec4b0befeb26c47bec6d4e7daf22bda884bb7a516` |
| 22 | `def` | [mkSplitAnchorRefInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/mksplitanchorrefinfo.md) | 327 | `declaration-track:5b7b8acdb9ff1def76dc30047e0bdaf57fbf2b956d47767bf76fd0ed26fef58f` |
| 23 | `def` | [SplitAnchorRefInfo.toSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/splitanchorrefinfo-tosyntax.md) | 343 | `declaration-track:8b9def99c8e2f36b2674238543b5b2382f6c7baf0ee3ffa73ca88b7657a5c24c` |
| 24 | `def` | [getFalseProof?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/getfalseproof.md) | 360 | `declaration-track:95c3a5bf589899910cc6c6318e93038e0ee940ab7723743c8f647bd1e0500eb2` |
| 25 | `def` | [isCompressibleSeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/iscompressibleseq.md) | 387 | `declaration-track:024a2e89dc3d3bf98c13687535377ad30f9135114750bccd437c8cd73b75e268` |
| 26 | `def` | [mkAndThenSeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/mkandthenseq.md) | 396 | `declaration-track:25c920bcc6ec6b28584cf63e1ed8070e5c70aa288deb8b30e894b96f84596854` |
| 27 | `def` | [mkCasesAndThen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/mkcasesandthen.md) | 404 | `declaration-track:b3986737d73f7f16e5eaf26bead8e78831b5819c44c2479e3b902591c96d5408` |
| 28 | `def` | [isCompressibleAlts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/iscompressiblealts.md) | 411 | `declaration-track:d3b684c79355397229a9b4e519ccfad99209ccae3506c2077fb84c8ed7b32053` |
| 29 | `def` | [isSorryAlt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/issorryalt.md) | 418 | `declaration-track:d20ac446915123b5fb57813f0ce60beaf36aaac5b0bbc77ceda2acf270f9888a` |
| 30 | `def` | [mkCasesResultSeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/mkcasesresultseq.md) | 425 | `declaration-track:5bdbd0ee474b53fcb302713913bcd18c5b132fa21c7871adcf8c9aba6d436c97` |
| 31 | `def` | [splitCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/splitcore.md) | 450 | `declaration-track:06498fbbd3af5a0febe9a7e40a30964503728213b155acf92a79536773baf51b` |
| 32 | `def` | [splitNext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/declarations/splitnext.md) | 551 | `declaration-track:5f136c8041a2c49ea4c4578604fbfb82e81c76eec99bfed0f7ec692626df3c20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c350e51daad45beae82c9a9313107ab3455c93bed83c6d40c2c8488e31e0ce02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
