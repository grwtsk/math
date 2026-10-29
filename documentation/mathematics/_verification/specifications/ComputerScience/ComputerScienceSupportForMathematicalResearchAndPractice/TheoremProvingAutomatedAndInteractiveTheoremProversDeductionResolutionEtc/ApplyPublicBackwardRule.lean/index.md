# Verification target: Apply Public Backward Rule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39e7d57810b3b8d923cd17d6be76c9a3b25165e5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39e7d57810b3b8d923cd17d6be76c9a3b25165e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.CollectFVars` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Iterators` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BackwardRule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/declarations/backwardrule.md) | 20 | `declaration-track:e4410af9025d5c4360a9ecd312fa8c12894b0927f9328907fbdf26e394fb1c0c` |
| 2 | `def` | [mkResultPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/declarations/mkresultpos.md) | 45 | `declaration-track:77a1a5a87d6fc86800ad228c72ed55c6ac936c2eef6c4b3150acc81fff272041` |
| 3 | `def` | [mkBackwardRuleFromDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/declarations/mkbackwardrulefromdecl.md) | 86 | `declaration-track:615178d5b17c9cb29ed5abaf6b0b38defbec07c170b538ba379e79bfb713b19b` |
| 4 | `def` | [mkBackwardRuleFromExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/declarations/mkbackwardrulefromexpr.md) | 100 | `declaration-track:f06e6fef0bcf492921b2aed77cd8ea3e570893f1a00fba1c848069c6bcf4f87c` |
| 5 | `def` | [mkValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/declarations/mkvalue.md) | 112 | `declaration-track:187849b63917a6d8d6be23c0fd059823c669c8f03c69bac935e66fd7e56634f7` |
| 6 | `inductive` | [ApplyResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/declarations/applyresult.md) | 118 | `declaration-track:d32f4b35db5412e71b72aff8a4facb7a800313d5a7f21c0325f19feff9844f64` |
| 7 | `def` | [BackwardRule.apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/declarations/backwardrule-apply-source-edition-2.md) | 131 | `declaration-track:cb26292ca3281286a8d1b8d4b4a26cc12701592767474ea40a4d41db0405516a` |
| 8 | `def` | [BackwardRule.apply'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyPublicBackwardRule.lean/declarations/backwardrule-apply.md) | 148 | `declaration-track:6281fe279948fe9eff2d54b39867eafd6643a0ba61610bba782a99ce5bc974f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c58c21a54ec5e034d113b0148c14a8dfe5f962b62116586e13295ece77dd82dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
