# Verification target: Concept Namespaced Concept Domain

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "285db7e53f186e95e16c77205413ce0b68a508d7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concept/Variantf2f9665f865ee3c43bdfa029f6e7f958145eebb6ae92e468d49d713736b9257d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `285db7e53f186e95e16c77205413ce0b68a508d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concept/Variantf2f9665f865ee3c43bdfa029f6e7f958145eebb6ae92e468d49d713736b9257d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concept/Variantf2f9665f865ee3c43bdfa029f6e7f958145eebb6ae92e468d49d713736b9257d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.EvidenceCut` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConceptDomain](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/conceptdomain.md) | 17 | `declaration-track:efa627294c9953001a719095469cc16ef010c3fcbf6a588cee926fbe1edf1647` |
| 2 | `structure` | [ConceptDefinitionRef](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/conceptdefinitionref.md) | 23 | `declaration-track:a441b97cd902f3a281e875758cfa44ae0ca2444eba896d60acafaa2da44fd583` |
| 3 | `structure` | [Concept](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/concept.md) | 29 | `declaration-track:0697e8bcc696905e4aac58be9cfa962983127ddfea55ace568bec68b7a8cfdcc` |
| 4 | `structure` | [ConceptOntology](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/conceptontology.md) | 37 | `declaration-track:460ecd238bedf56c424671526732891669db8eea34a5bf39c4a6428f0389451d` |
| 5 | `inductive` | [ProfileField](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/profilefield.md) | 45 | `declaration-track:18e313653c6ca99ca7974921a6173ad0662bdbd9a357008ccd64b5632ca9f8c9` |
| 6 | `def` | [ProfileValue](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/profilevalue.md) | 60 | `declaration-track:44b594be04f9f8fef46edecbbb5f590956e877515ba8f4d1a0b54554d1da6ff8` |
| 7 | `structure` | [ProfileEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/profileentry.md) | 74 | `declaration-track:76ef11d4a0d04b074f79f842066b0f018a4cd691eb3579b4f7e85c159d955be6` |
| 8 | `structure` | [ConceptProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/conceptprofile.md) | 80 | `declaration-track:6ebb2170e400f985cd245a18f49330a20dbd78c2c261ac6767dcdfe3ec028606` |
| 9 | `def` | [lookupEntries](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/lookupentries.md) | 94 | `declaration-track:e988831813279d4ee66cf1e3986cd1dd68176c30b695a9421cd5ca05dbf3d85a` |
| 10 | `def` | [ConceptProfile.lookup](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/conceptprofile-lookup.md) | 106 | `declaration-track:8db7a102b2df56843880a366857cf9a74050ebc39ced0a5180a25c14d9c5ea4b` |
| 11 | `theorem` | [concept_labels_do_not_define_identity](../../../../../ComputerScience/AlgorithmsInComputerScience/ConceptNamespacedConceptDomain.lean/declarations/concept-labels-do-not-define-identity.md) | 113 | `result-track:a8d143e3c48e427ecfb8a40ed2bf1554eca32c6c3a4e4acc86153fac48032558` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9547987ed46e95e7e099a4076177d77bf67a4298dec8801d5b996f35b9d9e93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concept/Variantf2f9665f865ee3c43bdfa029f6e7f958145eebb6ae92e468d49d713736b9257d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concept/Variantf2f9665f865ee3c43bdfa029f6e7f958145eebb6ae92e468d49d713736b9257d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
