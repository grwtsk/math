# Verification target: Match Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01ea2be178d078aa6f9edf9a9bb699504b74e42a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variantd2d0c0336492b9af41d61a9b3d8db45eed645b229c10e2b50408fc2eb6902e23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01ea2be178d078aa6f9edf9a9bb699504b74e42a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variantd2d0c0336492b9af41d61a9b3d8db45eed645b229c10e2b50408fc2eb6902e23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variantd2d0c0336492b9af41d61a9b3d8db45eed645b229c10e2b50408fc2eb6902e23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Array.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrefixTable](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/prefixtable.md) | 24 | `declaration-track:3fce02dbfd462f62afa31093f4caef1d28dfa187854b809c0f75b9b800243d3b` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/instance.md) | 28 | `declaration-track:abf27f64fa1563923581365da0f23f5e0e14011b9c26b43d345d4da150ab92f7` |
| 3 | `abbrev` | [PrefixTable.size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/prefixtable-size.md) | 32 | `declaration-track:15bba19304b962b430c450326dcf9db9b2cd2bc3070f56d963a0445d6aab02e0` |
| 4 | `def` | [PrefixTable.step](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/prefixtable-step.md) | 41 | `declaration-track:e34ca2b490a8bf91f0c620346aa6b291041d9af3e356541a7e5074a6349ccaa0` |
| 5 | `def` | [PrefixTable.extend](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/prefixtable-extend.md) | 62 | `declaration-track:f4c6ab568b6c9f6a5561aa31478a7f357b42b2266bf21104985fdf007725cf73` |
| 6 | `def` | [mkPrefixTable](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/mkprefixtable.md) | 71 | `declaration-track:ea297c9bbf5a7110012152644a52a05c98cef8935e2c354b4653986be84e4b1a` |
| 7 | `def` | [mkPrefixTableOfStream](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/mkprefixtableofstream.md) | 74 | `declaration-track:6ce2b998f5b0f548eb13dcc3ce670bea06686e9f4a83ba038706423b63559004` |
| 8 | `structure` | [Matcher](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/matcher.md) | 84 | `declaration-track:143af69760341396087ed0a5ff3689957fa5c07c35ff027cfe8542a6f1a0ac9e` |
| 9 | `def` | [Matcher.ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/matcher-ofarray.md) | 91 | `declaration-track:080d8dc6d9697e74b1c70599344249dcbdf01d6cd6dedbce25f8d8f0547803b6` |
| 10 | `def` | [Matcher.ofStream](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/matcher-ofstream.md) | 95 | `declaration-track:3e8d7b024beabe1f0fb8fbc1a617cf29c793409b06f78390fc976699eb1c33b0` |
| 11 | `def` | [Matcher.next?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatchNamespaced.lean/declarations/matcher-next.md) | 103 | `declaration-track:081d458362c9c8b7524e5f29b0d88a8f2036eec54bac12affbda1d35c2f6d190` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea97c28f58e9b62777f5758e887ec173eabc6b4571f0bc28375333959c618765 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variantd2d0c0336492b9af41d61a9b3d8db45eed645b229c10e2b50408fc2eb6902e23.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variantd2d0c0336492b9af41d61a9b3d8db45eed645b229c10e2b50408fc2eb6902e23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
