# Verification target: Linarith Datatypes Namespaced Ineq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5670b5a4b79e66cb3d429c37b6b9bad5219c8ab",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5670b5a4b79e66cb3d429c37b6b9bad5219c8ab`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Util.SynthesizeUsing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/initialize-source-edition-2.md) | 29 | `declaration-track:fbf1ae823f2825ee76b6df2606f26910966330b5d3bd95b51beeaa27ea6aa0a5` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/initialize.md) | 30 | `declaration-track:3949d73835e5105ff8eaeb723aeb3703eceea37d82d335d7f6b66d949a53a8b2` |
| 3 | `def` | [linarithTraceProofs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/linarithtraceproofs.md) | 38 | `declaration-track:7aa9fda5c779c3924f553b0b525d0d4d0ef28946e8f161c3d5970bf3f6151c05` |
| 4 | `def` | [Linexp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/linexp.md) | 53 | `declaration-track:bae18e6405cd48161d232f033db880f5db14168045d638de0937fd7d26f707fa` |
| 5 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/add.md) | 60 | `declaration-track:0beb41578363853d672b42ada058a9da6bef54dec47ab546101400e503fc99c1` |
| 6 | `def` | [scale](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/scale.md) | 71 | `declaration-track:29f59bb4509a28f6f2f7d8fa6888bb62608a7b2a87f0a452d17cae48058ac0c5` |
| 7 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/get.md) | 81 | `declaration-track:0b9bd2039ede6bb0e6a6419ec045cc60ebaddc78c6aac172100c2438c9a95be7` |
| 8 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/contains.md) | 91 | `declaration-track:35e4cee4e7b12225a02a76f188b6e6a4daaa5bfd4a977d6f184bfc18a893dde4` |
| 9 | `def` | [zfind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/zfind.md) | 96 | `declaration-track:0cf20557dfa2994b7c799b6379302956609dd0c507feffa2fc1f03519f467fef` |
| 10 | `def` | [vars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/vars.md) | 102 | `declaration-track:2a240f71f82ae180365584575836b0beba5fa088356104fd165e05765799cb51` |
| 11 | `def` | [cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/cmp-source-edition-2.md) | 108 | `declaration-track:710ac36d8b054a894f88c0052fa52ebb889b1173cbcf6e43bcf9fac030e106c3` |
| 12 | `inductive` | [Ineq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/ineq.md) | 125 | `declaration-track:05c0c7d3dcacff5f964e84ac3d044e96bf9f835a61f71f229158a5b386b20e72` |
| 13 | `def` | [max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/max.md) | 135 | `declaration-track:41ffae072885979327c6ede4917f763678a234201bb44ca83e0c95e14f9bae7e` |
| 14 | `def` | [cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/cmp.md) | 143 | `declaration-track:11d802ee4a2a1e171c69dbbc7e885b93391cc728bef12a6f9f200c48fb53280d` |
| 15 | `def` | [toString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/tostring.md) | 152 | `declaration-track:8a2c5353e950066545a6847d3900bdaed804a1e8fab528f853f2cd851aeb58d1` |
| 16 | `def` | [toConstMulName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/toconstmulname.md) | 158 | `declaration-track:fb6f7255f11f859cdb51f025b324d0a8a565f7007c93b1554778f1fd4de6ed31` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/instance-source-edition-2.md) | 163 | `declaration-track:b9ee9de900409e42b979c2218bf8ae1e70bcd9ccd1be4a616752e20a1159f16a` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/instance.md) | 165 | `declaration-track:7db92c3cef18599b3563ff4ab726678a13b086ce63f1bbce076dadde70da81c8` |
| 19 | `structure` | [Comp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/comp.md) | 178 | `declaration-track:e1105595c2cd061a81c9e000b56a8edd4856a24c0d82c387d3e418ac00109a5e` |
| 20 | `def` | [Comp.vars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/comp-vars.md) | 187 | `declaration-track:fbff8b51abb6b35071fc2edac2ecbe9777105f1d0e9238a2174e15cdfd07e9d5` |
| 21 | `def` | [Comp.coeffOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/comp-coeffof.md) | 190 | `declaration-track:7b48cb26b0c6f21e0cad5add6dd157373f7947ca2ba68f7a8894d935aad6abbb` |
| 22 | `def` | [Comp.scale](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/comp-scale.md) | 194 | `declaration-track:191d7a03c9719ecbad910fa452948ede57b70671feaa74f5b53f3f0c490d3657` |
| 23 | `def` | [Comp.add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/comp-add.md) | 202 | `declaration-track:91e61d272e9f13081e7e5ef8dc72635c06bb5aa743db503cc4bd5baae12d6afe` |
| 24 | `def` | [Comp.cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/comp-cmp.md) | 206 | `declaration-track:4e350c94bb3d7292cedb7270ebf59625414a0a8fd3ba30e5acd7e5d5e40f7787` |
| 25 | `def` | [Comp.isContr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/comp-iscontr.md) | 217 | `declaration-track:9966c04e9419e5bb4ea81b484bb6b2d143879a699e453d9f91f0edd9c6f19a35` |
| 26 | `instance` | [Comp.ToFormat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/comp-toformat.md) | 219 | `declaration-track:e597c4f7d93a7f87596450b0312d49720c8baa689fc3998732040aaac9d9a53c` |
| 27 | `structure` | [Preprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/preprocessor.md) | 233 | `declaration-track:f673a6ff831c26a56c1e04475ab5cf39341e55761e68e298b5223fea0db46357` |
| 28 | `structure` | [GlobalPreprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/globalpreprocessor.md) | 244 | `declaration-track:79b0d6267f5d868b8b2ccb88801c0b21de29e594c7d11e0b68fe33553570c657` |
| 29 | `def` | [Branch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/branch.md) | 257 | `declaration-track:7fc5004c8dbb49e399a1e40568a575f848fb798d4396759591459f16d979b054` |
| 30 | `structure` | [GlobalBranchingPreprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/globalbranchingpreprocessor.md) | 266 | `declaration-track:97da044661946e4e4e7afc8a90dba10f67057d76cf598d3541b4fda712aa4788` |
| 31 | `def` | [Preprocessor.globalize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/preprocessor-globalize.md) | 276 | `declaration-track:9eff5802f7d91a2848f6fe5eec6e52c8700ec3d71eb7cdda3cbcbc043b6bc84f` |
| 32 | `def` | [GlobalPreprocessor.branching](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/globalpreprocessor-branching.md) | 283 | `declaration-track:c01bda4278082685c7d1a249a4403f968498c35d47704aeaba8e200bc02922e3` |
| 33 | `def` | [GlobalBranchingPreprocessor.process](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/globalbranchingpreprocessor-process.md) | 291 | `declaration-track:ed42e77d90f414c8a0b2e548826156691fdb6b80b251aef82a79ded1d6d5fe4c` |
| 34 | `instance` | [PreprocessorToGlobalBranchingPreprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/preprocessortoglobalbranchingpreprocessor.md) | 301 | `declaration-track:81807ec2cc48dd00050be1a72b7f3e3fb21d07864192f0a32907434de3602ebe` |
| 35 | `instance` | [GlobalPreprocessorToGlobalBranchingPreprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/globalpreprocessortoglobalbranchingpreprocessor.md) | 305 | `declaration-track:8b42f31eb5cee5d06dde655fdc14b9dcb81e58a6b10d9086d5c28372c5e5de64` |
| 36 | `def` | [CertificateOracle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/certificateoracle.md) | 320 | `declaration-track:fa966daacfa37fcca809d257418467d5e4e0360aea3f4a2b63f612d71f688c42` |
| 37 | `structure` | [LinarithConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/linarithconfig.md) | 326 | `declaration-track:c90c8ca01902b6fa807aae07b336548f3256810bfc3756ab56e9cf6c62de1702` |
| 38 | `def` | [LinarithConfig.updateReducibility](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/linarithconfig-updatereducibility.md) | 354 | `declaration-track:b16ff06f90cee9970751e4a00045c8283891b2620c700e175a929cc4ea6d5148` |
| 39 | `def` | [getRelSides](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/getrelsides.md) | 372 | `declaration-track:0ae514750a776d4cea09918a84cc7ee29d0981cfe742d1d492b4961d41ecb1a0` |
| 40 | `def` | [parseCompAndExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/parsecompandexpr.md) | 386 | `declaration-track:daaad9ca5bfca0774ca69f279c9433261d1f32cdb80824901859904dca321fb1` |
| 41 | `def` | [mkSingleCompZeroOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesNamespacedIneq.lean/declarations/mksinglecompzeroof.md) | 402 | `declaration-track:b429dbad4e22b08406016bcc80fd364a814a3cead20e9e5dcd0f1d2b4206ef10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31e839d05d76a7f464b90e3ae84b2c1992b39702b7c2da7155b909940e9fc408 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
