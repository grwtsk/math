# Verification target: Explicit RCNamespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fccd73159010e91632d3e5eb7c9381f8b9a829b3",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fccd73159010e91632d3e5eb7c9381f8b9a829b3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.PhaseExt` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PrettyPrinter` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DerivedValInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/derivedvalinfo.md) | 53 | `declaration-track:c6f8c26605871496cff1d1cf82eee9f18b643ae966d9bad65fbb68a6f6d21650` |
| 2 | `abbrev` | [DerivedValMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/derivedvalmap.md) | 65 | `declaration-track:35ea30e95712da4c9210515622727a831b878dc779f4ddf373f25a68f5a21349` |
| 3 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/state.md) | 69 | `declaration-track:de734ee6858503291d92a19e51fc7dd8daf0812f1353f20759599acd4978c2bf` |
| 4 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/m.md) | 81 | `declaration-track:4bd65278b8c5f27ccc5ef7b36ed1f49404fd274eb20b863575142d57ecff2088` |
| 5 | `def` | [addDerivedValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/addderivedvalue.md) | 84 | `declaration-track:922aada2bcf6a4a6414673fad80a70aac49ac18103fd3edef3f421dd1ba68b30` |
| 6 | `def` | [addBorrowedValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/addborrowedvalue.md) | 93 | `declaration-track:ddc205a61285f2079cde5e46c6b700b81be78e433825e521cb0bab551fbce97d` |
| 7 | `def` | [addDerivedLetValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/addderivedletvalue.md) | 96 | `declaration-track:9a9912d4425ed16cd242f5c8baae30e0a4c0761c5b0e99bc031fe2dfedff3b48` |
| 8 | `def` | [visitParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/visitparam.md) | 108 | `declaration-track:5042c14a2c212e7e9d2c8d6b0f6430d675ed1ad4bc0e9eece4cda7f55952ba1c` |
| 9 | `def` | [removeFromParents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/removefromparents.md) | 113 | `declaration-track:5cba273bbac3383c904e50ce9df8f51ae44776b848d5e8ab96fe3861da1c256e` |
| 10 | `def` | [collectCode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/collectcode.md) | 121 | `declaration-track:1a3613e7a7040aecb7006d63ad7e5a5a298e5ee8bad62ce24b345839972d10f8` |
| 11 | `def` | [collect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/collect.md) | 163 | `declaration-track:a634aa1591af954b065781242b6a0bedfddef2e539dc12ff370988f535e18a8a` |
| 12 | `structure` | [VarInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/varinfo.md) | 174 | `declaration-track:c66223bc1ddbb1cb4b4ba3520f926821c8870609cd429c3636aa905156defc3c` |
| 13 | `abbrev` | [VarMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/varmap.md) | 182 | `declaration-track:5f1936fa81fadf8cbb7fec5374029c00155e60ef0380813734a0e44f2cb535f6` |
| 14 | `structure` | [LiveVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/livevars.md) | 187 | `declaration-track:793ef2918380151b2795f74d8340d0b0c5805c1e7c56290756fbf542db90de70` |
| 15 | `def` | [LiveVars.union](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/livevars-union.md) | 200 | `declaration-track:f7cf34bf5c31c6ad1d64d8f2fb83c862d2dbd5c0d1ddfd85ad2a7ff2a141233a` |
| 16 | `def` | [LiveVars.erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/livevars-erase.md) | 206 | `declaration-track:4f6783c0fbc676e3a9a2648a961829b562067144fe5147586a28a4b71dc78e5d` |
| 17 | `def` | [LiveVars.insertBorrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/livevars-insertborrow.md) | 212 | `declaration-track:ef15c598a1eb99f39d8b2a9e24dc881783eacdb717344df8c9156ff15cee8329` |
| 18 | `def` | [LiveVars.insertLive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/livevars-insertlive.md) | 216 | `declaration-track:0e6c0fc406c9db7f95f7c07f160895fa9f8b1ff12001beac93bb36bad9b1c88c` |
| 19 | `abbrev` | [JPLiveVarMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/jplivevarmap.md) | 219 | `declaration-track:98643e6e4b294da1a747c644670ecfd1f0cade5f9256c951edb68311328e19e3` |
| 20 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/context.md) | 221 | `declaration-track:a8d49658feb81a9b8e2eb32ddf6872f3d3d46775115caa3ced8750d3afe785d0` |
| 21 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/state-source-edition-2.md) | 245 | `declaration-track:f3d883861688730a8930a5b53e988114e8e843f25c05cf86035657e40d2e29f0` |
| 22 | `abbrev` | [RcM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/rcm.md) | 252 | `declaration-track:5a2e2924f4c7ca47beca3fecd66d678e801bfa3b42834239cc1e90e771503fc2` |
| 23 | `def` | [getVarInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/getvarinfo.md) | 255 | `declaration-track:57a9c4da877ccf74340d94e51dbaa31ab28228c6e2b3863703a529baf833b496` |
| 24 | `def` | [getJpLiveVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/getjplivevars.md) | 258 | `declaration-track:5f1be422f3bc4ac255f77cbaa612c5be96fa8f08a6ef02921771c2885a9441cf` |
| 25 | `def` | [isLive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/islive.md) | 261 | `declaration-track:50f2795cdd35f59b6096f0d6bb67e29cd9e6e9e8b4e8227919405e5948345d56` |
| 26 | `def` | [isBorrowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/isborrowed.md) | 264 | `declaration-track:5af2f53a28bbddc17849fecf247e46ce0c5eb8b93996a9c0d95edb6b742fe6c5` |
| 27 | `def` | [modifyLive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/modifylive.md) | 267 | `declaration-track:dae82fda00d22785db3f4a82ddb49d42fb3b2677cf5fe7490be6f730595c8b7e` |
| 28 | `def` | [withParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/withparams.md) | 272 | `declaration-track:d69fe2a2a54785869b934d3576a2b15958414d31650db4265732512680761cbd` |
| 29 | `def` | [withLetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/withletdecl.md) | 286 | `declaration-track:cbbe55764094b940353088828802d9d5678a1bc915b9e9344008d354149f7577` |
| 30 | `def` | [withCtorAlt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/withctoralt.md) | 304 | `declaration-track:310a0f55b856ae74a6d799847296faabfca09b372128aec7c8c5031d3decea7a` |
| 31 | `def` | [withCollectLiveVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/withcollectlivevars.md) | 324 | `declaration-track:6a220f971eedeeebcfe95d54f0f999efdad945034ff955faff02ff975cdbc352` |
| 32 | `def` | [addDescendants](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/adddescendants.md) | 338 | `declaration-track:07ecfd55dbf958c7035d865622585e9ded5c6b4c6c43084ccfed65887d31dc3e` |
| 33 | `def` | [useVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/usevar.md) | 355 | `declaration-track:83c19b321e32e601a262b3ebdee761bc51a0a0cb6757eb9526d700bc85f5acad` |
| 34 | `def` | [useArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/useargs.md) | 363 | `declaration-track:72ef9ca62f7a7e8916dd64ad6a06324e4ce5d9d9d97cf62dd12a6ed9be94b839` |
| 35 | `def` | [useLetValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/useletvalue.md) | 379 | `declaration-track:a1d36bf535aac79795d38fd49c29677e9505bfeb97042342a164b49b6fa2c4f8` |
| 36 | `def` | [bindVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/bindvar.md) | 393 | `declaration-track:86b88ef4641ec350abeb4add0a07b62563f436b5738cc6d0828440c4be5c519b` |
| 37 | `def` | [setRetLiveVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/setretlivevars.md) | 397 | `declaration-track:84cb9fe02b94703a359ca0bd8977bbda7e7f1a82e4b7718aabfe61e16a8328ef` |
| 38 | `def` | [addInc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/addinc.md) | 406 | `declaration-track:d78ba69a17859791d2f39408ea9618dd086f4a2004c575b8dbefbd2ecfab4a61` |
| 39 | `def` | [addDec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/adddec.md) | 413 | `declaration-track:1567861b1d065624108fc6d56713d22da4ce3091423eed42a11375544190cce0` |
| 40 | `def` | [addPrologForAlt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/addprologforalt.md) | 429 | `declaration-track:3f61b71e849cf66904674520afbcd0bdeb4df4369a657504c4d92cecf11af9bd` |
| 41 | `def` | [isFirstOcc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/isfirstocc.md) | 455 | `declaration-track:bc98868bf6564dd31aed956e9e9ff228cc6c048c8091ed085cf0873ef5a4e3ef` |
| 42 | `def` | [isBorrowParamAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/isborrowparamaux.md) | 459 | `declaration-track:b8469c91b4d0e6e2149f5ac00813892b1f43fb3890dd2603c4d76583e652d786` |
| 43 | `def` | [isBorrowParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/isborrowparam.md) | 471 | `declaration-track:a746c16c48412f79bfec6c08c23d4eed8aff91f9b27f4fbcdb11952488440a9d` |
| 44 | `def` | [getNumConsumptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/getnumconsumptions.md) | 479 | `declaration-track:0fe57427e50466e220d78d7d371535b1aabd768bf90ab7b09c217cbb2e57f523` |
| 45 | `def` | [addIncBeforeAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/addincbeforeaux.md) | 489 | `declaration-track:3c9a3743e4a6526a1a160527b4957fc6ead177806480169e687a18c6eb597324` |
| 46 | `def` | [addIncBefore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/addincbefore.md) | 514 | `declaration-track:48a0d7dc774c9fe6c471ba5e79e14a8eb9b9b5912a9b88b11c7c18fc5c4f39c5` |
| 47 | `def` | [addIncBeforeConsumeAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/addincbeforeconsumeall.md) | 521 | `declaration-track:a7b6731ed2af6007cdd28750ffee28fe7ebe8e8d1a55a51493bdfde3df35a14c` |
| 48 | `def` | [addDecAfterFullApp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/adddecafterfullapp.md) | 529 | `declaration-track:84b801a637712081e2541639e0e1c47a8c084c74f39e85dcef00d7f7b8d08c81` |
| 49 | `def` | [addDecIfNeeded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/adddecifneeded.md) | 554 | `declaration-track:b4ec5310ac858de92ccabd4edc0650a863b865c021d6785add9d5bc9610467f9` |
| 50 | `def` | [addDecForDeadParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/adddecfordeadparams.md) | 565 | `declaration-track:8dc3ef58eb6cc4b41da67ad8530bd055e64da5e3b3b83f514353ec08d0a3f225` |
| 51 | `def` | [LetDecl.explicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/letdecl-explicitrc.md) | 571 | `declaration-track:3ce34f9ee05f3836b24a6143961c11cd3886096f43f1677bfdb8ac3fec2e0960` |
| 52 | `def` | [Code.explicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/code-explicitrc.md) | 615 | `declaration-track:171d08327030c5a648d7d8cb62cdabc185195e5d735a42f7903d2ac42df83fa3` |
| 53 | `def` | [Decl.explicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/decl-explicitrc.md) | 688 | `declaration-track:b99d2ace7c7b620eb5dc671d952bb756670663cd85f99c0d9cd925d359854df3` |
| 54 | `def` | [runExplicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/runexplicitrc.md) | 703 | `declaration-track:51ad06aa10c315ae8e86f30003308bcefc4d3b0a728a5905af5aceb84ccd57c0` |
| 55 | `def` | [explicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/explicitrc.md) | 706 | `declaration-track:9343b84bcac2391d1f6f1a01626d567ee5970efc019b88de8892fe31b198fe7b` |
| 56 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/declarations/builtin-initialize.md) | 709 | `declaration-track:a47626988181a4198784fa7cb810e4d971d7f8434f1c03283d997de8301c8c5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2305c9b4ebfb22784541da70514a145e032c1da6e6a4fb4cbb84f979b1345a97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
