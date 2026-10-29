# Verification target: Derivation Semantics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b08a4465e706e692df0cdc89450745055189a2a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b08a4465e706e692df0cdc89450745055189a2a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Term.variableSupport](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/term-variablesupport.md) | 30 | `declaration-track:12c6386822599e6adc933bf038ba28cd77e79b8058e3ca1f14176fc9500f1c23` |
| 2 | `theorem` | [termValid_restrict](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/termvalid-restrict.md) | 36 | `result-track:83f06c0458af0249e2a8111407f9d66a00f3c215bd2d5c2ecc45cc9732f14548` |
| 3 | `theorem` | [termValid_substitute](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/termvalid-substitute.md) | 48 | `result-track:3a2870737af5482b778e97e63bbc9870d1509b07a71ca5597e86cbdbe58b206e` |
| 4 | `def` | [evaluatePartial](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/evaluatepartial.md) | 63 | `declaration-track:3f1cd850d83fccc98b7d04260514362372b2a4fb55c24e2ced06544d741c0c2e` |
| 5 | `theorem` | [evaluateTerm_eq_partial](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/evaluateterm-eq-partial.md) | 70 | `result-track:69ea94ded7c47d255a3d8b89b6396b3d195ba59e1cb7746ff437366b0b3b4549` |
| 6 | `theorem` | [evaluatePartial_support](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/evaluatepartial-support.md) | 79 | `result-track:46cfc41508a9077a646182a3a405258d062ef490049e3676af7621084270550e` |
| 7 | `def` | [substitutionAssignment](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/substitutionassignment.md) | 89 | `declaration-track:32c1606cc3ce7e77b1938323f9529fc40cad3235dde7fce70a28a19ce7eab6a9` |
| 8 | `theorem` | [evaluatePartial_substitute](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/evaluatepartial-substitute.md) | 95 | `result-track:201795bd7d6a18c8e218048e5fc3beccd19454d82be44bbd257c601e9b09677d` |
| 9 | `def` | [PartialAssignmentBounded](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/partialassignmentbounded.md) | 108 | `declaration-track:eab8a7e504f47050b0f0453ea93922d410508918763d297ceb82b89914721d94` |
| 10 | `def` | [TableOutputBounded](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/tableoutputbounded.md) | 112 | `declaration-track:89461f8a4b7674736ce717731e894404d30b49115237efbf16057297cdf41b43` |
| 11 | `theorem` | [tableOutput_bounded_of_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/tableoutput-bounded-of-valid.md) | 116 | `result-track:c58f2812ac6c6b1bc34804ec10db1c5c36a7ccdbdb8abfe05a80f29804ae2ba3` |
| 12 | `theorem` | [evaluatePartial_bounded](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/evaluatepartial-bounded.md) | 123 | `result-track:d635043fd9aa0f485941b6557777875811eb74ae8fde16ebea974e0b9a3b0f8c` |
| 13 | `theorem` | [substitutionAssignment_bounded](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/substitutionassignment-bounded.md) | 137 | `result-track:d9ab375e582bc8f1cce31a203c49a756af697566d21c6d7b9fc77107357ccf05` |
| 14 | `def` | [GeneratorsPartiallyInterpreted](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/generatorspartiallyinterpreted.md) | 150 | `declaration-track:84993ed17dee07d4667b3ce22f71230ce685c513512c4b714b42bdf6c705daa0` |
| 15 | `theorem` | [representationDerivable_evaluatePartial](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/representationderivable-evaluatepartial.md) | 158 | `result-track:856247f6922c89e34da96627f3a00e3af5fe2bec1638465305ed5eecab1314ae` |
| 16 | `theorem` | [representationDerivable_evaluateTerm](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/representationderivable-evaluateterm.md) | 180 | `result-track:9366d24d750a89d9873bbe826a30964e1bc20f17a31eea902a766b51660bc85e` |
| 17 | `theorem` | [checkedEquation_evaluateTerm](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/checkedequation-evaluateterm.md) | 193 | `result-track:6f0abb056483b905f1568ccbeb342dd56169d5cdaffd4a3f9186817d8fcb8747` |
| 18 | `theorem` | [interpreter_outputs_bounded](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/interpreter-outputs-bounded.md) | 206 | `result-track:2839c527de6e3a8b4ebc58fb77a33b60af80e66ae811c47c43b9afbdffd9201d` |
| 19 | `theorem` | [actual_generators_partially_interpreted](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/actual-generators-partially-interpreted.md) | 210 | `result-track:5ee6387c809d7077e3b11163499c8a485ab57c772c8a6a1f371f0865cabee0d7` |
| 20 | `theorem` | [actual_substituted_derivation_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/actual-substituted-derivation-sound.md) | 226 | `result-track:9fb0d8db15b744489f58213c4cb77674b9ea6c7ad4488aa97387677d1900cfbf` |
| 21 | `def` | [actualCheckedEquation](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/actualcheckedequation.md) | 237 | `declaration-track:0910111d4aae46da9347c634bb63bad15d1c689b771b71edb9f5dad4cdf80254` |
| 22 | `theorem` | [actual_verified_equation_semantics](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/actual-verified-equation-semantics.md) | 241 | `result-track:b9233fa42b761ebd720f2e158277df2cf76d9e3a6860aac4407dd0a14d620d7c` |
| 23 | `theorem` | [actual_ground_restriction](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/actual-ground-restriction.md) | 253 | `result-track:4336438c3f5c8e660e49014821337b05aef3c908100f75e701e21a5ec3710ba6` |
| 24 | `theorem` | [missing_dependency_invalid](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/missing-dependency-invalid.md) | 267 | `result-track:1c484fc59bbd3b2123bfed20090616c058efd83497f74bd194750a235d2dfaa7` |
| 25 | `theorem` | [actual_substitution_typed](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/actual-substitution-typed.md) | 271 | `result-track:45b4e41149142102e4c52894c3ba2534319b7599063e4409a237f653d71bf870` |
| 26 | `def` | [singletonTable](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/singletontable.md) | 283 | `declaration-track:866d9e81f0bfacbb8e9e71a85a0c90907263ddb4e5b0e61d0e9cbfe05a2b9a50` |
| 27 | `def` | [erasingGenerator](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/erasinggenerator.md) | 286 | `declaration-track:6126ddcb6df06f96a8c1badf44e3ae56d7a88f614f9ecd08cf6325d0d38ef3b6` |
| 28 | `def` | [erasingDeclaration](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/erasingdeclaration.md) | 291 | `declaration-track:a5e706c4b907c18f8ddb4ee6a662ad9a29bcbbdd3ffe22b44dac00e25b8ebe53` |
| 29 | `theorem` | [erasing_generator_valid_on_all_total_assignments](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/erasing-generator-valid-on-all-total-assignments.md) | 294 | `result-track:634349e0e8fbebb5e06514e9c5f13e81bb028cd8f6955d7e706cfd548ef1847d` |
| 30 | `theorem` | [untyped_substitution_can_break_semantics](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/untyped-substitution-can-break-semantics.md) | 304 | `result-track:844ea03c9850c30ab271238bfa0641ca7fb70cc9a393722c1721f1de0bac875b` |
| 31 | `theorem` | [untyped_substitution_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/DerivationSemantics.lean/declarations/untyped-substitution-rejected.md) | 315 | `result-track:118688376f7cf96eee8bc5f8bb1368af87c07f05b0d84adef51db74a12b2ca05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80c4e22bb93bf6b3d780088adc46929687579270b54b0a56db87bf0162b390bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
