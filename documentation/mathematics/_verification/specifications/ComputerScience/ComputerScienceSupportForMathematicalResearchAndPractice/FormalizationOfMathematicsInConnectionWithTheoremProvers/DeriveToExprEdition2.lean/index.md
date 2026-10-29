# Verification target: Derive To Expr Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6aaf16d61bd7525192b1d23a1ce94085d3d5757",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6aaf16d61bd7525192b1d23a1ce94085d3d5757`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MyMaybe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/mymaybe.md) | 8 | `declaration-track:a808878bbd72920181d25305e8faefefde300fcb1c995adea8f050bdb6e6fecf` |
| 2 | `inductive` | [Foo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/foo.md) | 33 | `declaration-track:2870aea0c6274fac9cc4cafc4b13a78cf7b95c38dd964530a346ca94d7545d13` |
| 3 | `inductive` | [Bar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/bar.md) | 47 | `declaration-track:4deab07e6e9344f9c3a0f1d748b97caec4cf14213a50984c5f70009e9ce5167a` |
| 4 | `def` | [boolFunHelper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/boolfunhelper.md) | 51 | `declaration-track:db494f4ee526d4d375490c0ea1901454568f1a88a6336e9fcc9b9ec2e16eee78` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:a470e8af4b4c8c707d5b4f191710c2c6a85bbc9c2a12f36e413409a9f0652253` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/example.md) | 61 | `declaration-track:d6a23388505f52f072851f5464d61b8340d56cbdee2c484fe0e8ef3af6384116` |
| 7 | `inductive` | [A](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/a.md) | 70 | `declaration-track:13124150a9fddc939936a3671ae78b132868c1018757c43ce311bf53545a9aa1` |
| 8 | `inductive` | [B](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/b.md) | 73 | `declaration-track:ffa449392452228454ca4d2702636ed2236f2ed8a9985d9b12c29ffdcfcbc93f` |
| 9 | `inductive` | [C](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/c.md) | 83 | `declaration-track:b775cd56a7ffb4b33b825a461770547048b10469b6bd413937ce7306011dd4c1` |
| 10 | `inductive` | [D](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/d.md) | 86 | `declaration-track:4118731ba8924d19e9cf6ec3c42cd55048f3e5d6911da345b16b356faded8b3c` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprEdition2.lean/declarations/instance.md) | 92 | `declaration-track:5f7cc0981d8ab8fedf614b717e0fd1198921686ac4d9d94d9d87d116950e1a2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2791444acfd2d754944ecd9a02945d7824018b777eb4cbc0f26f510245588822 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant67af2e3569edc40e31854e7374c799ee7f37863fd0d5e9ecbed13ecb036bc524.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
