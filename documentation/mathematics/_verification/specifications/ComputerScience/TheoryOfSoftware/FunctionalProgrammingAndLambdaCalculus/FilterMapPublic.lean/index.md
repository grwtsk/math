# Verification target: Filter Map Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cb54f7be75c066edf6792cf9df0d9ebdc7cb651",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variantf787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cb54f7be75c066edf6792cf9df0d9ebdc7cb651`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variantf787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variantf787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean.json)

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
| 1 | `theorem` | [IterM.stepAsHetT_filterMapWithPostcondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-stepashett-filtermapwithpostcondition.md) | 17 | `result-track:1ec7c7cc2c7b9e72096eb132f47ec13b52ff5761bfaa36838e1329b4a5be98e2` |
| 2 | `theorem` | [IterM.Equiv.filterMapWithPostcondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-equiv-filtermapwithpostcondition.md) | 79 | `result-track:ca7d970041b33821bcbe34bcfdf77fee6492d291abe490b8b88c49dc5c2e751c` |
| 3 | `theorem` | [IterM.Equiv.filterWithPostcondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-equiv-filterwithpostcondition.md) | 134 | `result-track:3a48eef71c282de54a124503d2bd72ef6f8c9fdac4be1a80039f0d53592cd110` |
| 4 | `theorem` | [IterM.Equiv.mapWithPostcondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-equiv-mapwithpostcondition.md) | 143 | `result-track:8f1d75de7cf0abac338baf4d2cb9a9dee296b013d3b80838053c173629d72f4b` |
| 5 | `theorem` | [IterM.Equiv.filterMapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-equiv-filtermapm.md) | 152 | `result-track:f63eeafa3d797f27ca5a2ea68ad53dd61fec1503c1b5ad38ae7629773321422d` |
| 6 | `theorem` | [IterM.Equiv.filterM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-equiv-filterm.md) | 161 | `result-track:379d78d89f827f9d936f7c75065ca972d2f355846b15d341dcab3e95310676a5` |
| 7 | `theorem` | [IterM.Equiv.mapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-equiv-mapm.md) | 170 | `result-track:d4884a01f779da39fd71971b6aff9ee1fe4584f38e0e109b3388474e8e9e5e10` |
| 8 | `theorem` | [IterM.Equiv.filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-equiv-filtermap.md) | 179 | `result-track:09c05ba9fa0d98e901b881de38b8788afbcb8060d8a78d7f749583533808455d` |
| 9 | `theorem` | [IterM.Equiv.filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-equiv-filter.md) | 187 | `result-track:d6bacddb8c71280b7896537549e2e1b422ff94430edc4910152a31a9666ee935` |
| 10 | `theorem` | [IterM.Equiv.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FilterMapPublic.lean/declarations/iterm-equiv-map.md) | 195 | `result-track:223b9ac8ec5e0e24bc95de5d2344895e8c1c6d37b89a3d815ad34a01216375b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce479d5727e8051375120751d55358ba629720bd80107e690d82890a97523d87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variantf787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FilterMap/Variantf787906eec1cd7576592f3c0b20af84818da54b29a19bc313641cdfa0b2ec55c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
