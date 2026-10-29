# Verification target: Apply Fun Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80d69e19acaa54b11f39cb8359525dd95eebd454",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant4cb070e7b5f8f63adcd2d9a38b27ef8edb196abb4cba9123babcccf7c6e3cc8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80d69e19acaa54b11f39cb8359525dd95eebd454`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant4cb070e7b5f8f63adcd2d9a38b27ef8edb196abb4cba9123babcccf7c6e3cc8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant4cb070e7b5f8f63adcd2d9a38b27ef8edb196abb4cba9123babcccf7c6e3cc8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunNamespacedEdition1.lean/declarations/initialize.md) | 30 | `declaration-track:86e660f1c46ffe4234b2b63d2813f1619f45ce3ccbfb5e219b27b9b5faf205c5` |
| 2 | `def` | [applyFunHyp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunNamespacedEdition1.lean/declarations/applyfunhyp.md) | 33 | `declaration-track:04fdda5775d5110928daf7cd13c50097c81ef9c220ea9c5c3ce928342d2d7be0` |
| 3 | `def` | [applyFunTargetFailure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunNamespacedEdition1.lean/declarations/applyfuntargetfailure.md) | 72 | `declaration-track:c5e9f9b954be1ebc804534cde54873339bf2d8c2c4ed6cc22c0cabda0bb575f1` |
| 4 | `def` | [maybeProveInjective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunNamespacedEdition1.lean/declarations/maybeproveinjective.md) | 77 | `declaration-track:4b1f3d031cd32d40685df58c1521e2657b7bf05f21fa9b70df889f80988af851` |
| 5 | `def` | [applyFunTarget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunNamespacedEdition1.lean/declarations/applyfuntarget.md) | 103 | `declaration-track:0588e0a9b83c72666cebbc39b708672a06add5d69e6ae37875f62b4cf133da60` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunNamespacedEdition1.lean/declarations/syntax.md) | 183 | `declaration-track:6013f353f6271544b2d1d1e6a160395d6f0a1391f113f7fb43a1d551cf889336` |
| 7 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyFunNamespacedEdition1.lean/declarations/elab-rules.md) | 185 | `declaration-track:23cf3480114e0af9afa125a3b7e047cf7cbe48da803290572fe0170831bd6fec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebfa50e5df06f557bb5a75112c54887c36b0518971f8f9c485a7db56c7745834 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant4cb070e7b5f8f63adcd2d9a38b27ef8edb196abb4cba9123babcccf7c6e3cc8d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ApplyFun/Variant4cb070e7b5f8f63adcd2d9a38b27ef8edb196abb4cba9123babcccf7c6e3cc8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
