# Verification target: Apply Fun Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "480e1918deb65eec433c30edbc74b75fabec0b66",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant3127ce8c92c36ebe33ffa3d1b35b7ce46184dbac93313c55a4ae6907d59ddfbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `480e1918deb65eec433c30edbc74b75fabec0b66`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant3127ce8c92c36ebe33ffa3d1b35b7ce46184dbac93313c55a4ae6907d59ddfbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant3127ce8c92c36ebe33ffa3d1b35b7ce46184dbac93313c55a4ae6907d59ddfbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunEdition1.lean/declarations/initialize.md) | 22 | `declaration-track:06b2f07329130a815e328b4c21e9b2afdb0b457e9c1427392f23d2c9f98e2b55` |
| 2 | `def` | [applyFunHyp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunEdition1.lean/declarations/applyfunhyp.md) | 25 | `declaration-track:5cbe94a9f9fe4490a8eeb025f338879581528a18721d4a9f5ba21ee396e37d10` |
| 3 | `def` | [applyFunTargetFailure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunEdition1.lean/declarations/applyfuntargetfailure.md) | 64 | `declaration-track:5d53049ed5cccb60d44df6eddb571b8d8484580e29551e2baffa5ea787f2de4a` |
| 4 | `def` | [maybeProveInjective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunEdition1.lean/declarations/maybeproveinjective.md) | 69 | `declaration-track:a23963892a3cc4a5d5df802d3699ebc046ef3d774157681d15211ff82d5b51d7` |
| 5 | `def` | [applyFunTarget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunEdition1.lean/declarations/applyfuntarget.md) | 95 | `declaration-track:af8600e47558d609fb403f6e96dc9847a1dfa4ee70334c8ee5fc2068eec90e3f` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunEdition1.lean/declarations/syntax.md) | 175 | `declaration-track:250185c62fb088b87076546465ff0fe715712d5713aaa314e63b846ca5656e2a` |
| 7 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunEdition1.lean/declarations/elab-rules.md) | 177 | `declaration-track:6cb61ea9cd8762e34220d910e07ce3343593487e0a8d748ee7544fbe532740a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90638f70bc21c17603fa0bffd55deff4571831623e8cd9210c03810e4a35670d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant3127ce8c92c36ebe33ffa3d1b35b7ce46184dbac93313c55a4ae6907d59ddfbd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant3127ce8c92c36ebe33ffa3d1b35b7ce46184dbac93313c55a4ae6907d59ddfbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
