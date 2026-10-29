# Verification target: Matcher Public Substring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e427d9e689457e21a0aec16bb763f6fa8ca14462",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e427d9e689457e21a0aec16bb763f6fa8ca14462`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378.lean.json)

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
| 1 | `structure` | [Matcher](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/matcher.md) | 34 | `declaration-track:4cc98b454baa7d96dbbdbd13af979cee7296233ebd4feae9bfe84c8853861d53` |
| 2 | `def` | [Matcher.ofSubstring](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/matcher-ofsubstring.md) | 39 | `declaration-track:4dbd98f4fe7fe0a6db00c0cb6d56bf88daa442770d98a5fe16b807e3a0d4b575` |
| 3 | `def` | [Matcher.ofString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/matcher-ofstring.md) | 44 | `declaration-track:9c2751ec8c8f7a8119860865aff55445cbdfdc0af234ae4a3d9b4760c782a4a5` |
| 4 | `abbrev` | [Matcher.patternSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/matcher-patternsize.md) | 48 | `declaration-track:40e2b4eae564aa1b5d04178369b7f182089a92a57604c3dc5d2d4cacf3b04be2` |
| 5 | `def` | [Matcher.findAll](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/matcher-findall.md) | 51 | `declaration-track:26e4ab8de9fd8305eda3a018ade855d88169dcaa1095fe6b6ec6055cce810122` |
| 6 | `def` | [Matcher.find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/matcher-find.md) | 65 | `declaration-track:bb57079c474cb0b9277068d327ae7ba55fd3e46a631020909c101e134d0933da` |
| 7 | `def` | [findAllSubstr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/findallsubstr-source-edition-2.md) | 80 | `declaration-track:b37b4be476ac0450e0c53ab943bb2c588a93262a632a9c9f4f59abf4974bd8d6` |
| 8 | `def` | [findSubstr?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/findsubstr.md) | 87 | `declaration-track:af4dd8c2ac2a2faaa2ac15172fa4dad190c4c293390781e2fe8ba5fb63296847` |
| 9 | `def` | [containsSubstr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/containssubstr-source-edition-2.md) | 93 | `declaration-track:4ff41b5e68adb5c46096b7499b899d02010af86c3b5dc42b6008dbff39b7529d` |
| 10 | `abbrev` | [Substring.findAllSubstr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/substring-findallsubstr.md) | 102 | `declaration-track:aa911c0655f8002e907e3310db2b0008b6248a54e0872bcf4b67a9d6485b1bc1` |
| 11 | `abbrev` | [Substring.findSubstr?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/substring-findsubstr.md) | 106 | `declaration-track:04130bd5f31cdb959585b6bc1c7e0bdb7bb58cc152d8096559700720731b10e2` |
| 12 | `abbrev` | [Substring.containsSubstr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/substring-containssubstr.md) | 110 | `declaration-track:6d6684c57cce5b38ac1c77ce66ef3ad3ca8ae6f59646174adff1d16923ee54dc` |
| 13 | `abbrev` | [findAllSubstr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/findallsubstr.md) | 117 | `declaration-track:a8695501ef3ef5cdbf3a379392b4824986f3cd4be8c0929df794c56d74d06238` |
| 14 | `abbrev` | [findSubstr?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/findsubstr-source-edition-2.md) | 121 | `declaration-track:af8de5ef91f5ac2be6f06a33a6ba285d92feb2a00b0acf2f3881374d31b770e9` |
| 15 | `abbrev` | [containsSubstr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherPublicSubstring.lean/declarations/containssubstr.md) | 125 | `declaration-track:1bfc561d70a51aa1b53cf36f4e5781eb369de0ea7343ee15bd4b09ad7289c5cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58a54bddf389d2f9f544e5c0be77e161a1047b91bd03c6027161b921fd515835 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variant12108a439c78d56a4290f9d15f8435f90547e03dffc9cadbeafe1a148ad9f378.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
