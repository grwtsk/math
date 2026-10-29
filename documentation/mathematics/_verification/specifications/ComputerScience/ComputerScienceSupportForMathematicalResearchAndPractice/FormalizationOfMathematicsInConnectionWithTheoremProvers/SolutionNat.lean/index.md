# Verification target: Solution Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "675caa01f171d8981de4c2c74922bbd1464e684f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `675caa01f171d8981de4c2c74922bbd1464e684f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Prelude` — import line 2; external provider; requires a separately pinned dependency.
- `Init.Core` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.gcd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/declarations/nat-gcd.md) | 5 | `declaration-track:f52952769ce74654f682e5257d09e9fc99b102b206cf324cc1fa08407653fd9a` |
| 2 | `theorem` | [thm1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/declarations/thm1.md) | 7 | `result-track:46c6e6b2e629d15ce0d901f3982e743726d2e0ae643db379fc7acd2da28f3451` |
| 3 | `theorem` | [thm2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/declarations/thm2.md) | 11 | `result-track:ebce5849215b43aa3761b47c669a9b30d751d1bd96ce2c87e943a13dec0839ba` |
| 4 | `theorem` | [boom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/declarations/boom.md) | 13 | `result-track:ded62fb721ddf0d2ea74f20376bdf0a97cd1ac67d66e0bf9f098f35dbd6bb1cb` |
| 5 | `def` | [Nat.land](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/declarations/nat-land.md) | 17 | `declaration-track:6ae68f0819068df3e3493b3d271da8a7c10db2ae56cefc575dd7bdd2dfdcd85f` |
| 6 | `def` | [Nat.lor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/declarations/nat-lor.md) | 18 | `declaration-track:ff18198c13928823a6a8ca5cbba171639f5e787c5e11c6a9f1406d9ffdcd57b1` |
| 7 | `def` | [Nat.xor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/declarations/nat-xor.md) | 19 | `declaration-track:5c6a553597d8a003da8fbcb2f71b19229b4c445a556dcaf36a9b0bf1cece97df` |
| 8 | `def` | [Nat.shiftRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/declarations/nat-shiftright.md) | 20 | `declaration-track:184487e909f7c7d609aa9a48be50ced52ce39f5626b02d247239fe5169ec8a14` |
| 9 | `def` | [Nat.shiftLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SolutionNat.lean/declarations/nat-shiftleft.md) | 21 | `declaration-track:bfa4d0d703b87c53fd9cc0dc49f98edd10a698550300a212ee6ad939205e7a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa361ff85176d1115c70fb83e0da5d83e53e31635b74367055bfca9c2648cb9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
