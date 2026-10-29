# Verification target: Character Twist

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03c64f4082ae916c32dd3ea7c345a2d2e0afdebf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CharacterTwist.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CharacterTwist.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03c64f4082ae916c32dd3ea7c345a2d2e0afdebf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.CharacterProjector` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.DifferentialComplex` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CharacterTwist](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CharacterTwist.lean/declarations/charactertwist.md) | 26 | `declaration-track:fcf346b1500cd1139887ce9e31c75aec7d75f2777e22783ea41e5ec06a124c42` |
| 2 | `def` | [twistedDifferential](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CharacterTwist.lean/declarations/twisteddifferential.md) | 40 | `declaration-track:3aa057f1155dd7cc5800e495376cf70a129371ab1e2fc9486b8e12dc3d2e7d5a` |
| 3 | `theorem` | [twistedDifferential_sq_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CharacterTwist.lean/declarations/twisteddifferential-sq-zero.md) | 45 | `result-track:cfbd606fc107bb685115372e915ca49f022ab023914c258af75e020127de80e3` |
| 4 | `def` | [twistedComplex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CharacterTwist.lean/declarations/twistedcomplex.md) | 64 | `declaration-track:87d23f3863160f60dd665b03afccd971f1bd919590f3a310acb0f55434116966` |
| 5 | `def` | [identity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CharacterTwist.lean/declarations/identity.md) | 71 | `declaration-track:f800bcda9d95b2143ca1439ab64e53f4e65b6c2f17b641bfb9b106550c640208` |
| 6 | `theorem` | [identity_twistedDifferential](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CharacterTwist.lean/declarations/identity-twisteddifferential.md) | 80 | `result-track:f08b036d3cf11033289582fa0bf9eefa4bd02c91ae858b5b7cec1fd5e8d849d1` |
| 7 | `theorem` | [characterTwist_flat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CharacterTwist.lean/declarations/charactertwist-flat.md) | 87 | `result-track:0942c50a3b4230c959ba495b7819af08c8c56e84bd2ee739681dcdeeeed99fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=138f847f7a4ba7bdd14b146af8764e2ed9c543fdc283b329adda11bdc42bca1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
