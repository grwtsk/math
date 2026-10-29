# Verification target: Derive To Expr Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69a372ffc3da025323ca60bb6f2ef4ca8f5cc8bf",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a226db371377ee990bb108f9c469b25aedf47147d16223934240568a30b0c52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69a372ffc3da025323ca60bb6f2ef4ca8f5cc8bf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a226db371377ee990bb108f9c469b25aedf47147d16223934240568a30b0c52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a226db371377ee990bb108f9c469b25aedf47147d16223934240568a30b0c52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MyMaybe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/mymaybe.md) | 16 | `declaration-track:50be4401e396f824cce37eb224ee870306f5b0a2c45727fda7e3864cef9262e4` |
| 2 | `inductive` | [Foo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/foo.md) | 41 | `declaration-track:685265c1624a7dcfd73b024f987f965f28df646e984d11aee0143f98462faee3` |
| 3 | `inductive` | [Bar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/bar.md) | 55 | `declaration-track:9f213116dbae9cd49e387dde0b43a9f6bf7e9fdd141386e4e504664f7e836fa5` |
| 4 | `def` | [boolFunHelper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/boolfunhelper.md) | 59 | `declaration-track:b18d375a1795faf078530e3542dadab7332cd6bec5688e5c3800a08d301a2486` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/instance-source-edition-2.md) | 61 | `declaration-track:6f1c1d6086e229829c39ac86f984cc9d9614125783aad97083fe147969172e0f` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/example.md) | 69 | `declaration-track:ad5693ff8329afb489565d37bf23015711580da2ec0d8d70cea22c83367c3e5f` |
| 7 | `inductive` | [A](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/a.md) | 78 | `declaration-track:481f15a1ba1de3a64d645170c91d5fd48e3ad5c0d4bdc8156103dacad6ffcce9` |
| 8 | `inductive` | [B](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/b.md) | 81 | `declaration-track:140d14641d7859f98709c7bcf6e745e00e117297a34fd70a8ed1d51c3afc6ced` |
| 9 | `inductive` | [C](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/c.md) | 91 | `declaration-track:02604baace22c3a2ff21738c4a354ef0dd947fb18f82083b6a5a955c958feeab` |
| 10 | `inductive` | [D](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/d.md) | 94 | `declaration-track:25551f1b08269344dec43fee99d26279141699f4a920db60514c6c6eec5381de` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveToExprNamespacedEdition2.lean/declarations/instance.md) | 100 | `declaration-track:2dbcd7106e5ea6a0eb17f7d0d44bd693a38ba7e701c5e5812afeadfa65dbe67e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e166463578e9063262a8380d9694136e214237d19d512f9c8c5ac7e3fc4733f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a226db371377ee990bb108f9c469b25aedf47147d16223934240568a30b0c52.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant0a226db371377ee990bb108f9c469b25aedf47147d16223934240568a30b0c52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
