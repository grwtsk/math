# Verification target: Le Cnstr Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64113a2b7a75b6958a994baa69871052d6f8e57a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64113a2b7a75b6958a994baa69871052d6f8e57a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Arith.Int` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Var` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Proof` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Norm` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.CommRing` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeCnstr.norm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/lecnstr-norm.md) | 27 | `declaration-track:7010da068e1ede264b58a7038554390a3966c913a4b9fda975361b6824fee0c9` |
| 2 | `def` | [LeCnstr.applyEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/lecnstr-applyeq.md) | 42 | `declaration-track:df531c249a1d3a604b6608cfa0faacebe7eddb3ee0e5676d5c60dc734336dadb` |
| 3 | `def` | [LeCnstr.applySubsts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/lecnstr-applysubsts.md) | 52 | `declaration-track:78e26d3c0d4cebbc45de4155fa229c0417922d0ab5725a53deb729328748ce9e` |
| 4 | `def` | [Le Cnstr Namespaced Public](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-lecns.md) | 58 | `declaration-track:9efce7f21fe8d6eea3743ad876319962ef493fcb142f13978a975e125d843db2` |
| 5 | `def` | [LeCnstr.erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/lecnstr-erase.md) | 64 | `declaration-track:c24c9bfb0179fa4cc473b706d3512099c44e847942f24883ec8b4055fc2e140a` |
| 6 | `def` | [findEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/findeq.md) | 76 | `declaration-track:b01e45b2b2250fc75e848e300fcfd6a294fd6ecb9bad1fc61e5e1ac6f8558d19` |
| 7 | `def` | [refineWithDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/refinewithdiseq.md) | 92 | `declaration-track:dab38b5f2a471b9bc97c86b158084df73797e79dc1e5ebe7d084ffbc5698be50` |
| 8 | `def` | [LeCnstr.assertImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/lecnstr-assertimpl.md) | 112 | `declaration-track:282c07ae55c4fbba3696a7ae4f17bf8d94bcee3ae0765f7eba4d14d8ed5e142e` |
| 9 | `def` | [reportNonNormalized](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/reportnonnormalized.md) | 136 | `declaration-track:6923784b1a45f4625f1ec19456d17d8bd6347927b94f841dce24323dee7fd8e2` |
| 10 | `def` | [toPolyLe?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/topolyle.md) | 139 | `declaration-track:26907813957bc35c55836726f2649123bf480168a043a46166a549c90484c5e8` |
| 11 | `def` | [LeCnstr.assertCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/lecnstr-assertcore.md) | 149 | `declaration-track:5cdd99e80cac4d25435afffed18962788c796b29b363ca78298dea92973f7126` |
| 12 | `def` | [propagateIntLe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/propagateintle.md) | 160 | `declaration-track:1c53f37e5ca4fec6194125134d360f723c1ce464907b70da381038329548f29a` |
| 13 | `def` | [propagateNatLe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/propagatenatle.md) | 168 | `declaration-track:1c07f4320377b5c1eb776d814ea18488e0364738855debf05c63b8579f8470ef` |
| 14 | `def` | [propagateToIntLe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/propagatetointle.md) | 182 | `declaration-track:6fca1a98583c6239f2a691ddef0d66163458f9713f1d8aa221939c9692b60c36` |
| 15 | `def` | [propagateLe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/propagatele.md) | 196 | `declaration-track:39e67a332b107d7c91339b512af34f8c12278aa2955c7a23d5e381458391b6d3` |
| 16 | `def` | [propagateLt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeCnstrNamespacedPublic.lean/declarations/propagatelt.md) | 206 | `declaration-track:6fb39368e13037ef1a1e57a684f24aada12a4ddd6c7391a3a642ebae83418151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60b19e61a855959772971767a2d9c137646800846cecfe44e4e1fa1d9e949eda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeCnstr/Varianted5d07272d617934c094e92a2f6289164f7db9424e25059b35506ca4395948fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
