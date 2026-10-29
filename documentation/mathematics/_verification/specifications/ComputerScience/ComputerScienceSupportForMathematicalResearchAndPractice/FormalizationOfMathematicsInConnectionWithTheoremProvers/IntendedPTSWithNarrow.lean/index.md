# Verification target: Intended PTSWith Narrow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbc159bd430e2ee4f9f43417d1952b3503e17b12",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbc159bd430e2ee4f9f43417d1952b3503e17b12`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `OriginalClosureNarrow` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monomorphicArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/monomorphicarrow.md) | 17 | `declaration-track:2b42c3ab6434221a742b7e36c1c92e4d9cace513c47c413746e73ea1c617e8c8` |
| 2 | `axioms` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/axioms.md) | 18 | `declaration-track:4ad7d61b1ef2bdef9e56f8194d9fe475ce1b5ccf0e06a33bd49427278a9ca709` |
| 3 | `def` | [WeakNormalizationGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/weaknormalizationgoal.md) | 22 | `declaration-track:61e08826281428e4f6d2f82cead5c9c11095a3c7c3383b1f32cd4e7fec4cf83b` |
| 4 | `theorem` | [base_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/base-has-type.md) | 25 | `result-track:c94cacddc88f35dd35faf0f84776eb2e8ef8915671e2fcc20adff77d4a8c99cb` |
| 5 | `theorem` | [base_context_valid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/base-context-valid.md) | 29 | `result-track:d27e1de0b8ab3174fd69d11838fcbfd9938da67c1df2236aad1f12c139e67be8` |
| 6 | `theorem` | [base_in_context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/base-in-context.md) | 32 | `result-track:1aea12c3406478b1b267ee8af01f4b7ab19eb89d772d41ac0e7ef5646bfac42b` |
| 7 | `theorem` | [variable_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/variable-has-type.md) | 37 | `result-track:e077d20f6b7dad6fe01f642a74f840b8cff683c56bc3247420ab8e3a0745812e` |
| 8 | `theorem` | [identity_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/identity-has-type.md) | 41 | `result-track:26cc998cd937e595b8543d4e9677c111ae0709cbe426632213214e22798ca3a7` |
| 9 | `theorem` | [identity_application_has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/identity-application-has-type.md) | 48 | `result-track:e332b639d6c3886b78deb4cdf6013f3e3b5bfe79353e1f0e7db680b379d1dcdd` |
| 10 | `theorem` | [identity_application_reduces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/identity-application-reduces.md) | 54 | `result-track:bda1f0cca42961b4efb3ec549d67533d609214eda5629597ab33c039919a651a` |
| 11 | `theorem` | [identity_application_weakly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/identity-application-weakly-normalizing.md) | 59 | `result-track:edf8001e63fa518e158502fb5602cd3a060f7e30a56773a68ddac468af727f91` |
| 12 | `inductive` | [BaseArrowType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/basearrowtype.md) | 64 | `declaration-track:f11e9ba0a5fe509f912badf054fce348c9a765e9ece791217bbee600e0aca027` |
| 13 | `theorem` | [rename_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/rename-eq.md) | 72 | `result-track:6a9660834bbfad255ee41daa90ffbe32bff028b3613b43e33a715b9887f72a5e` |
| 14 | `theorem` | [subst_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/subst-eq.md) | 80 | `result-track:26a7f53afdc65ff7d61ec8906a4c62e65d1e4d66962d389a263b94a9e1181fe1` |
| 15 | `theorem` | [normal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/normal.md) | 88 | `result-track:6e8edc0d92a8c2e484dd90d1c18cba4e6a27e0008998ae59c1a6caf4bd867db3` |
| 16 | `theorem` | [has_type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/has-type.md) | 98 | `result-track:a2b92ee1efe8093f7c302d665049f2acef955bea4b58b771e85ade7f2e9a9eb8` |
| 17 | `def` | [SortedTypeClassificationGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/sortedtypeclassificationgoal.md) | 111 | `declaration-track:1e86620c753adc048797a3b62fe58c3b2793d20804c33623cb3a38ef8f48e6b2` |
| 18 | `theorem` | [kind_not_typable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/kind-not-typable.md) | 115 | `result-track:4b6bd22c091ff8a38e1d8cdead65673f7e25177ec1ea438242ea29c1e5957fba` |
| 19 | `theorem` | [rename_sort_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/rename-sort-inv.md) | 121 | `result-track:2a63096a0fb2afbeeb2c1f689c3736fb0d4d6176569614fbcc1d78a3aca39f54` |
| 20 | `theorem` | [sorted_type_classification](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/sorted-type-classification.md) | 128 | `result-track:7400f0e51f129447a04fbb6987e401d08993d221b24c590de8cef2269be31c12` |
| 21 | `theorem` | [sorted_type_classification_goal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntendedPTSWithNarrow.lean/declarations/sorted-type-classification-goal.md) | 183 | `result-track:cea86393b893f1101d8158fe4738162a2bfa92610bd448116c3478ab2428404a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=105dd2e559463c3b3ecbade3c4a2b31678d029a13fa288384cee77eda9a9e672 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
