# Verification target: Match Impl Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98a9e9a19a9524cfaa8133728e0f37ab0d83052d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Varianta981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98a9e9a19a9524cfaa8133728e0f37ab0d83052d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Varianta981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Varianta981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Syntax.stripPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/lean-syntax-strippos.md) | 8 | `declaration-track:09961418ac295b3bcc7b0ee70df3b945bda311540b269324abbc05fe70368bbb` |
| 2 | `structure` | [PatVarDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/patvardecl.md) | 21 | `declaration-track:52cb2bdf85ebfbe59a9f39582b357d8db78c2bf841338d6da720e2f8510d633c` |
| 3 | `def` | [PatVarDecl.fvarTy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/patvardecl-fvarty.md) | 26 | `declaration-track:fb521921e4c5f0786452be45283e604ffc578314be33ddff517dc87a8c779664` |
| 4 | `def` | [PatVarDecl.fvar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/patvardecl-fvar.md) | 30 | `declaration-track:79ce60725900abf3a2fd24d84f9782d79a2804c27322f086563e0383ad2e333b` |
| 5 | `def` | [mkIsDefEqType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/mkisdefeqtype.md) | 33 | `declaration-track:6757dfa0605d882c6ba378197b2f74af497caacbea69f4424947d190ba48a097` |
| 6 | `def` | [mkIsDefEqResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/mkisdefeqresult.md) | 37 | `declaration-track:a2479c46f8ae5dbae93112394761af8b8e6e1b98577046633f7246d4a27e2d05` |
| 7 | `def` | [mkIsDefEqResultVal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/mkisdefeqresultval.md) | 41 | `declaration-track:1fadf6c8d54ded9826e92e4f3e9ec99bcb184dbd0f7611a30b02f7d6008f3074` |
| 8 | `def` | [mkLambda'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/mklambda.md) | 45 | `declaration-track:32723dc1c90a460e70581853088d1342663588f1378712599307e714f0bf3579` |
| 9 | `def` | [mkLet'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/mklet.md) | 48 | `declaration-track:8559a383dbe59707d13fd3499fb94e62039887745608182264a0ee4fb25b1540` |
| 10 | `def` | [mkLambdaQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MatchImplPublic.lean/declarations/mklambdaq.md) | 51 | `declaration-track:573896d4c6acc0a575f908ad9d6ae7b0cfa01bce50d82bfd763e6569d2fbcbab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=159f5777e83577794ead702a054e922346d01b1164a2c743c884166f3061924a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Varianta981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Varianta981b70671a79a0d2272286b7c0e8c758e5f2e3ce6dcdab5f7312b6190296742.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
