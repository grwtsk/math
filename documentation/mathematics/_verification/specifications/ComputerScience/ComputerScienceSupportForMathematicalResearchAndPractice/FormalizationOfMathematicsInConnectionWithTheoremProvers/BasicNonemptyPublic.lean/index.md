# Verification target: Basic Nonempty Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96a393668af05fa8b8d4b44ad39098494bb9e1cd",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant45f36d7aad119958464005a4b8c67d86b2f99a06e6dba5954a8b7f684b842eb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96a393668af05fa8b8d4b44ad39098494bb9e1cd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant45f36d7aad119958464005a4b8c67d86b2f99a06e6dba5954a8b7f684b842eb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant45f36d7aad119958464005a4b8c67d86b2f99a06e6dba5954a8b7f684b842eb5.lean.json)

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
| 1 | `theorem` | [Nonempty.forall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-forall.md) | 28 | `result-track:ca900c57bdc15b2b216fdcff020a2c704ea1dec482f8380d93a562ad8f945927` |
| 2 | `theorem` | [Nonempty.exists](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-exists.md) | 32 | `result-track:02f34e901f881fc24ac4e823ae3ae2a42f5b14187aa4b0046f3423d7b874f629` |
| 3 | `theorem` | [exists_const_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/exists-const-iff.md) | 38 | `result-track:c83e61ea8ff9883dbca3c9e87d25209525c738b90d08629e579499f1bde8bede` |
| 4 | `theorem` | [exists_true_iff_nonempty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/exists-true-iff-nonempty.md) | 41 | `result-track:b75e498c5da3819d1a19465de0ecdebf2a5fab2444af3602c685d9a2157f7d8e` |
| 5 | `theorem` | [Nonempty.imp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-imp.md) | 44 | `result-track:03ea0875f0045fb75dc2f8a67af16badb199f77e6cd825dedec1f85a67d689fb` |
| 6 | `theorem` | [not_nonempty_iff_imp_false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/not-nonempty-iff-imp-false.md) | 47 | `result-track:1140e856a589bbda581291f8c06f4bc40322496d6c5f4e63b119ea9e41c3c6b6` |
| 7 | `theorem` | [nonempty_psigma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-psigma.md) | 51 | `result-track:e1f41787fae1287c9e0c0ca28f0e82aceefbf600cf41a0e8715f6f674e6f0b9f` |
| 8 | `theorem` | [nonempty_subtype](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-subtype.md) | 55 | `result-track:9ec077de4ff2ef8ac3c83432dd5b8e3c80e85c8deec06de3c99b1ca23e9f8669` |
| 9 | `theorem` | [nonempty_pprod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-pprod.md) | 59 | `result-track:2a6a6e097e40494c25eabcf071ce5d1271294bc7c0ca12f7ff2cc591845ca4ba` |
| 10 | `theorem` | [nonempty_psum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-psum.md) | 63 | `result-track:429dc021a4a5102865b7bdfbd8ba0b1b073053166881460a12584d8ecccedac2` |
| 11 | `theorem` | [nonempty_plift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-plift.md) | 75 | `result-track:7781deed050e38ecea800507e1c8359f57061aa4660b8a09f18768513ef36143` |
| 12 | `def` | [Classical.inhabited_of_nonempty'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/classical-inhabited-of-nonempty.md) | 82 | `declaration-track:d38f151b7a34770360155579b67fd5e92d8e5d21a5c6526fe996090b7c8b9668` |
| 13 | `abbrev` | [Nonempty.some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-some.md) | 86 | `declaration-track:bc48f718bc7d2e703789312e4cfede05d2a03b1addba4633b647260bcd7667fc` |
| 14 | `abbrev` | [Classical.arbitrary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/classical-arbitrary.md) | 90 | `declaration-track:560def7a99319b3a2d4af4797fd7083c8e2207e8603fa4d02f1900509ba60eca` |
| 15 | `theorem` | [Nonempty.map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-map.md) | 95 | `result-track:fbb2b5c33bba1878f42b9e55baca3835d46c398f42937f39cb8dea4df6d67640` |
| 16 | `theorem` | [Nonempty.map2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-map2.md) | 98 | `result-track:34e5af6c686b396d5c36a1c1c2ac24532400b9abc83d5b522c1c6ffd4bf24eed` |
| 17 | `theorem` | [Nonempty.congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-congr.md) | 102 | `result-track:46871e83129866ee690aeea50edc58b8b950d45e3d383a47e8fe6c06e5f5bc13` |
| 18 | `theorem` | [Nonempty.elim_to_inhabited](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-elim-to-inhabited.md) | 105 | `result-track:8e963026f21e45975395edcbb591fdfb5dc2b37341b264f75acf2a360de1a979` |
| 19 | `theorem` | [Classical.nonempty_pi](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/classical-nonempty-pi.md) | 109 | `result-track:1a0ec6235048dd1932ba73ec423f4a0cc545d0156cc52c9ca904e9f8daa52e4d` |
| 20 | `theorem` | [subsingleton_of_not_nonempty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/subsingleton-of-not-nonempty.md) | 112 | `result-track:dd3a9ba520ae0a9f968dc73f81ad59a85ccd4a3413df0d345093ddb7eda41026` |
| 21 | `theorem` | [Function.Surjective.nonempty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/function-surjective-nonempty.md) | 115 | `result-track:9ae90124106a18b32aa98c2b8fdca24311d455f0fb0a91c86368ac488353c55a` |
| 22 | `theorem` | [nonempty_sigma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-sigma.md) | 127 | `result-track:32096fbac7b6c150f3fbb53668f4a7dbdb5692c3747214920cceed0a48e88509` |
| 23 | `theorem` | [nonempty_sum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-sum.md) | 131 | `result-track:6a9aae164be44f8a3b30a7b9a75edf1a072c36b7d633f5b5db5c7d49979ba6fe` |
| 24 | `theorem` | [nonempty_prod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-prod.md) | 143 | `result-track:d0d6af13b207f26ae872f655a76c037166158ca92501b20db45441a7ac52c0b3` |
| 25 | `theorem` | [nonempty_ulift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyPublic.lean/declarations/nonempty-ulift.md) | 147 | `result-track:a6bcfdd488eb746c5f070c563caf3dc8c1c0ba51ef8ea3e26bc1f5248a2c5b7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be04be726bd3c3372693d0ddddcf1d89d79b7f7ac64ae2a9afa80eda964a0dd0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant45f36d7aad119958464005a4b8c67d86b2f99a06e6dba5954a8b7f684b842eb5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variant45f36d7aad119958464005a4b8c67d86b2f99a06e6dba5954a8b7f684b842eb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
