# Verification target: Derive Traversable Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2590560cc65d18f50e9ee47dd1f177b7f4c62318",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2590560cc65d18f50e9ee47dd1f177b7f4c62318`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nestedMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/nestedmap.md) | 36 | `declaration-track:008e8562f6866180775e4bc79dfcf650d7a5267ac6581a7485fd55aea0465ab1` |
| 2 | `def` | [mapField](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/mapfield.md) | 48 | `declaration-track:b74b6c3602b5e965c675381a8e8c83af3df5e5773db1bd1792582a05b159ff68` |
| 3 | `def` | [getAuxDefOfDeclName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/getauxdefofdeclname.md) | 67 | `declaration-track:e82272a4b9642c9cc7d95ccd862522421a963442fe75fc640a2daf8995082286` |
| 4 | `def` | [mapConstructor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/mapconstructor.md) | 78 | `declaration-track:8c1abc367805c733ef7ec00ce3b02d761c1e608e7fb4131c9e6348c2cafd43ea` |
| 5 | `def` | [mkCasesOnMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/mkcasesonmatch.md) | 94 | `declaration-track:9af87b7fd15956a70fd4f301526bf1408a96b8e07f31dd6f4dce2bc2db703498` |
| 6 | `def` | [getFVarIdsNotImplementationDetails](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/getfvaridsnotimplementationdetails.md) | 129 | `declaration-track:abe2740b4f5d9953cca1074e9757fb7e3ae39a81a517290c2103c51286a66451` |
| 7 | `def` | [getFVarsNotImplementationDetails](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/getfvarsnotimplementationdetails.md) | 136 | `declaration-track:5b133dd4754a78b1be11ba7e917b65fdeae150f886e83e66df3fd6d64d8acbea` |
| 8 | `def` | [mkMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/mkmap.md) | 140 | `declaration-track:3362b9c01d72f6a3fdd7d4719fdd1c4f671f063b7a91b3964c896a3c8809901f` |
| 9 | `def` | [deriveFunctor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/derivefunctor.md) | 162 | `declaration-track:3967c10ef038ed0cda3a44e0addd705b749e7468eb70b79dc81bf46e06bba703` |
| 10 | `def` | [mkInstanceNameForTypeExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/mkinstancenamefortypeexpr.md) | 194 | `declaration-track:99852f1933f1c5fb434c3d50e5ffa7b4c6e473cffed09a69e429553e078d41f1` |
| 11 | `def` | [mkOneInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/mkoneinstance.md) | 214 | `declaration-track:ecddc40958d0084666daea9545ae3a00e34b0d3973c1fe633c103674bbcdbbaf` |
| 12 | `def` | [higherOrderDeriveHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/higherorderderivehandler.md) | 258 | `declaration-track:6ea98541169036d23878382f6a0eb9ab43902e975ba9ff39b113ff568dd9fa13` |
| 13 | `def` | [functorDeriveHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/functorderivehandler.md) | 269 | `declaration-track:2d31a7599e564b563849484b4b61f35800a273713bb4c8f97f98379ed470f7dc` |
| 14 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/initialize-source-edition-4.md) | 272 | `declaration-track:de1e3bc09cd45265964fea4dbd886e4225df789e50f3875246c2cb187f481736` |
| 15 | `def` | [deriveLawfulFunctor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/derivelawfulfunctor.md) | 275 | `declaration-track:7c6b7bfb933680076bcaea36c7e36b6d5c8f1696a96081c67368bd9fed2df753` |
| 16 | `def` | [lawfulFunctorDeriveHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/lawfulfunctorderivehandler.md) | 307 | `declaration-track:8a48eebb2d317398d422946afdd4be05964e9d3e270c381212f61c1e1a29db5b` |
| 17 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/initialize-source-edition-2.md) | 311 | `declaration-track:315b06a4ecd0447717913c40081bdebf0963af840536d13977aa6f2fcfd4ed80` |
| 18 | `def` | [nestedTraverse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/nestedtraverse.md) | 316 | `declaration-track:b5ca6d808105e5a9a15f5879712984e79397419aa066f1e77fa2c7e02d88ff61` |
| 19 | `def` | [traverseField](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/traversefield.md) | 331 | `declaration-track:7d401b6f621c27a73c43b7e8a9909c7adfb390a1cf89fe3cb99381821985f1b3` |
| 20 | `def` | [traverseConstructor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/traverseconstructor.md) | 350 | `declaration-track:e8dc8a5b14c2c9771486135d12367dfd049731b019a33fc8eacd47df0af2f95a` |
| 21 | `def` | [mkTraverse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/mktraverse.md) | 378 | `declaration-track:09b02ff6b0206e4f57473ebcfe9ca16c2190740bea9bacc91593049adaac80c1` |
| 22 | `def` | [deriveTraversable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/derivetraversable.md) | 401 | `declaration-track:23d900bf4a983c6c8e5f0ad74c27503fb28c43ea07f342d129c565e9ed8ee78b` |
| 23 | `def` | [traversableDeriveHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/traversablederivehandler.md) | 430 | `declaration-track:4f8e24d0c953531840d42340a8868f5d0d89c8407ab1ac374e25d4910071869e` |
| 24 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/initialize-source-edition-3.md) | 433 | `declaration-track:4fb1da223b8bc2fce3a79b4542714ddafee1f3529686c823f5e12a4941a23f91` |
| 25 | `def` | [simpFunctorGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/simpfunctorgoal.md) | 436 | `declaration-track:bb873d8e471b7c3a3f2938447c766223bfff0db8455dd1f53fac1f03dfd4e567` |
| 26 | `def` | [traversableLawStarter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/traversablelawstarter.md) | 452 | `declaration-track:dfe5ba6980c95d98bd74876c9671b474022c7018dfa8b1c56384d52a288211d0` |
| 27 | `def` | [deriveLawfulTraversable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/derivelawfultraversable.md) | 466 | `declaration-track:102fae7f844b2be604c3214bb9b2ac094d23fbebe9076b96388c0d3d095b142f` |
| 28 | `def` | [lawfulTraversableDeriveHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/lawfultraversablederivehandler.md) | 494 | `declaration-track:237dbd9e30607e6480d174465785fb418276b9d93204b4b97c98742420b2d8be` |
| 29 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveTraversableNamespacedAligned.lean/declarations/initialize.md) | 498 | `declaration-track:2ef3721880f112b82aecad3f3f4ee4aac1e82a05b6afb73d98ac6f17f6e68381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99f8b0d86168f435c8926dc5e6f7ee5ce9b107a85f5ca0a760121b19cead748c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
