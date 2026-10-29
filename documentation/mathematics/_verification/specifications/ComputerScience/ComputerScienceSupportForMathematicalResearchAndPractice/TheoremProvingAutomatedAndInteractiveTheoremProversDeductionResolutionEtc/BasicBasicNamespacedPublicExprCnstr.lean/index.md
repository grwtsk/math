# Verification target: Basic Basic Namespaced Public Expr Cnstr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7d36b08e59f503a22716ba632c7d4dad6d4ba2a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7d36b08e59f503a22716ba632c7d4dad6d4ba2a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.RArray` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Offset` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.applyPerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/expr-applyperm.md) | 26 | `declaration-track:ee23f0b13a80657a1386cedee05775b68c78597f66faf88ac8cadfd75cee187a` |
| 2 | `def` | [ExprCnstr.applyPerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/exprcnstr-applyperm.md) | 37 | `declaration-track:7ff5efd9c66a5a0bb59f433647036c9651093fcbb67fd9970a116e6f25340f59` |
| 3 | `abbrev` | [LinearExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/linearexpr.md) | 48 | `declaration-track:ac3a998f1fd6b72d6989e4a1a9413bef115bf1d8e4286c67ec5177b807d3e446` |
| 4 | `abbrev` | [LinearCnstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/linearcnstr.md) | 49 | `declaration-track:dfaa971bbfdfe0002667dd9cebeb12186fb04a3823f106b91cc11a5d59f309f0` |
| 5 | `abbrev` | [PolyExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/polyexpr.md) | 50 | `declaration-track:1b110c436ed36a4e21f5f41d44596a19e5e98f745bf3fd3b378dc3da4c9172da` |
| 6 | `def` | [LinearExpr.toExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/linearexpr-toexpr.md) | 52 | `declaration-track:1ddc6f94cbd075785e2446b4dfc4a49065b196cda217c980753851191a324e48` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/instance.md) | 61 | `declaration-track:5cdc21b389e5faeb60d4e65aac7afc2abf73213147b9772ff7c7ef921c572ab8` |
| 8 | `def` | [LinearCnstr.toExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/linearcnstr-toexpr.md) | 65 | `declaration-track:4e1d76d7b99225b35ce8c554843b2da93c51a064eae90cb717d22e5fa35e5d7f` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:97873e2292be41790745059a15d416a7d5799625889aec12a7d5041eb83e18a6` |
| 10 | `def` | [LinearExpr.toArith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/linearexpr-toarith.md) | 73 | `declaration-track:27aed893fdc49c7d9c6ff55a987803932c7a743b129d239f5b2052521e86ef04` |
| 11 | `def` | [LinearCnstr.toArith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/linearcnstr-toarith.md) | 81 | `declaration-track:b82073837570ce22375b5b3bc899d98000fbe8efc39dec6ea4d936be467ce43e` |
| 12 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/state.md) | 89 | `declaration-track:1448ffc4cec87691afa8c818240b7ac79bbd5d176479576a64dd0a3e98c3cb11` |
| 13 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/m.md) | 93 | `declaration-track:504671141b690a6b8cb2f1d20ceb49b0402b79a6886fc0a7892e2f742cd77b6c` |
| 14 | `def` | [addAsVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/addasvar.md) | 97 | `declaration-track:33b3974c4993cdb1f14ab12da28e2ebbc0fcfd870f8e59d9a273e82153fe831a` |
| 15 | `def` | [toLinearExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/tolinearexpr-source-edition-2.md) | 106 | `declaration-track:ace66c6f7e76c44e70dc2ed083ca0d634e8975e991f2de81b747fd8e9b0ac863` |
| 16 | `def` | [toLinearCnstr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/tolinearcnstr-source-edition-2.md) | 146 | `declaration-track:fc2317a1ec27b5d34f0561aebb22063fea02c5bb5f566596ee73635a69058263` |
| 17 | `def` | [run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/run.md) | 169 | `declaration-track:a097ccf06cbc4e54985717ac264f9744caca15db6be215fef094ff792660da37` |
| 18 | `def` | [toLinearExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/tolinearexpr.md) | 175 | `declaration-track:7440eb808b098af57ea5b46ad1305dcca529e4a33e5d6d3601e4280d9b167ebc` |
| 19 | `def` | [toLinearCnstr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/tolinearcnstr.md) | 184 | `declaration-track:6dd9c22f6f9beddd0038d82be3ef6f8f10fb4423c251817a6cb56a1b1b53e609` |
| 20 | `def` | [toContextExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExprCnstr.lean/declarations/tocontextexpr.md) | 194 | `declaration-track:edb26b537784c15ac49e5d2ab29067a84f77b26082610ac5a402fb8475647293` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21e37cd03a7cfc5c54d4ae267338e7fb73c504e0268764928a4ad5200f91d342 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
