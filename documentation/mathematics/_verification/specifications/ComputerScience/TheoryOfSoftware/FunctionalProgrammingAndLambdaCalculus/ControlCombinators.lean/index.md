# Verification target: Control Combinators

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49c582b2f0fff1a79946d4af72d6cdbc4fd3cfaf",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant2b495e22f30b628ec2ab92082f80ff8f16c8c5167138978b4b43eb0d89ec4bdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49c582b2f0fff1a79946d4af72d6cdbc4fd3cfaf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant2b495e22f30b628ec2ab92082f80ff8f16c8c5167138978b4b43eb0d89ec4bdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant2b495e22f30b628ec2ab92082f80ff8f16c8c5167138978b4b43eb0d89ec4bdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [joinM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/joinm.md) | 16 | `declaration-track:37394fcb5a2423f1bb17c7f9a09ccad942ea482d4f453277bd145ca7e03e36f7` |
| 2 | `def` | [when](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/when.md) | 21 | `declaration-track:9b512a91110eacc2eb106c5cac4951f9f702d05a1710d67687750c5b846d33b6` |
| 3 | `def` | [condM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/condm.md) | 26 | `declaration-track:7db283775c0238cf46e2b2b3d39cd1bd7db32fe269b18079fcf23712dabd27d6` |
| 4 | `def` | [whenM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/whenm.md) | 33 | `declaration-track:ab6f68e73df430618787966a148d9554207c979464d3d6913fcbd3fdfed29a16` |
| 5 | `def` | [mapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/mapm.md) | 39 | `declaration-track:1f217abc1e857ff1f6a7f7bad07b327f4a0f34ae54381a02c9f292d338c853a3` |
| 6 | `def` | [mapM'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/mapm-source-edition-2.md) | 43 | `declaration-track:e06c3ee451554c3e6ce10ae886ec8a21c0fda231207a1503f6e1480b3235a914` |
| 7 | `def` | [join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/join.md) | 47 | `declaration-track:0a715d966a8ba4c4df09fb09bed99cbff1d8abf6b0a8e9d45d4b182d5b84406a` |
| 8 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/filter.md) | 51 | `declaration-track:f6f9d22c8474677c76d8bfae9cf47c02f7de2c9c8ad7fa15f18a9055c07eb855` |
| 9 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/foldl.md) | 55 | `declaration-track:d8552d5772b8f4b7edda47a8519bdd3ec33e409ba9013a56a4f2914196cdd113` |
| 10 | `def` | [cond](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/cond.md) | 59 | `declaration-track:066b5746fb8c5f9423bcdcbe2a7a48534932478ed2d202af4e6ee4b7e99b0eb2` |
| 11 | `def` | [sequence](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/sequence-source-edition-2.md) | 64 | `declaration-track:c602dfc84f7bc27e3158baf40372270a49846a1807f02b6bf9d7cae5574d286e` |
| 12 | `def` | [sequence'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/sequence.md) | 73 | `declaration-track:3adbf94b926e9a75a8301367fa691a347748b7498d7dfc24c303860fc8760721` |
| 13 | `def` | [whenb](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/whenb.md) | 81 | `declaration-track:c3475bcc76c23261dfee1fa7740b5273d90751d92de0bcbbca57caf395e20570` |
| 14 | `def` | [unlessb](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlCombinators.lean/declarations/unlessb.md) | 86 | `declaration-track:ba0622da2f7010cc7114e71349a08406e5105ea3d1ce3ea2b0375fd29836c23d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1c3694c8165d470b59b2c897532c84dc7d9c77542f99ab8a0ceec2d0b4c3db8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant2b495e22f30b628ec2ab92082f80ff8f16c8c5167138978b4b43eb0d89ec4bdb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Combinators/Variant2b495e22f30b628ec2ab92082f80ff8f16c8c5167138978b4b43eb0d89ec4bdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
