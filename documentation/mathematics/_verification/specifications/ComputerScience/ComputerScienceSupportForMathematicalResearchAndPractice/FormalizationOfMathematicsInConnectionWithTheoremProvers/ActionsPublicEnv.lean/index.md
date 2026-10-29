# Verification target: Actions Public Env

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb277d827816a66c0183491d3956818a61b6ccb0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb277d827816a66c0183491d3956818a61b6ccb0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Build.Run` — import line 10; external provider; requires a separately pinned dependency.
- `Lake.Build.Actions` — import line 11; external provider; requires a separately pinned dependency.
- `Lake.Build.Targets` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Build.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Lake.Util.Proc` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [env](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/declarations/env.md) | 20 | `declaration-track:12c64c535099c0e07a31755cc20141b10131af68a9e8be2342a8ce586679bb8d` |
| 2 | `def` | [exe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/declarations/exe.md) | 23 | `declaration-track:db28f9986575994ced348053b1eeb67fbd5e8b8a44b01a70af402f39f886b371` |
| 3 | `def` | [Package.pack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/declarations/package-pack.md) | 32 | `declaration-track:635109d687b18b38a6e413a1be3beb94dbed19935af9a723880e1ec0c023abcb` |
| 4 | `def` | [Package.unpack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/declarations/package-unpack.md) | 38 | `declaration-track:5dbba590e928283b97b24b426432f6868c4503f2af109e31c765878625c34669` |
| 5 | `def` | [Package.uploadRelease](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/declarations/package-uploadrelease.md) | 44 | `declaration-track:54a34c98cd15e9ec8cde773bcffe90389a3546464e1ee9a2ba66d3f8647f2e07` |
| 6 | `def` | [Package.resolveDriver](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/declarations/package-resolvedriver.md) | 55 | `declaration-track:1bf890fb5f2711ee9db1388e31aeb1fb46e872a4c23d2d69c01cba0c95b019eb` |
| 7 | `def` | [Package.test](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/declarations/package-test.md) | 71 | `declaration-track:bd2203a30bf19c6389b60ba670871da05b372354481c6a84cadaa7eb42c623ef` |
| 8 | `def` | [Package.lint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/declarations/package-lint.md) | 89 | `declaration-track:e43e262ed1618a74089655d014849a7b08d54e6d58bea211bfa2568631ea417b` |
| 9 | `def` | [Workspace.evalLeanFile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ActionsPublicEnv.lean/declarations/workspace-evalleanfile.md) | 108 | `declaration-track:503f2726f4cc62fe151a6f49c83b6c475a5b546f73060f670c05c9ca2b3c41d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5144736de1bf27f7d7208410cbaacd7382bf8435ce1967be3e619b7d45da236 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Actions/Variant6bf40d09e59f84f1a213065e8e65794ed4735001e2d07d1656e8096914b2269b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
