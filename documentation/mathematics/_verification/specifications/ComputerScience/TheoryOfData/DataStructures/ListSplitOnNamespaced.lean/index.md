# Verification target: List Split On Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4c019f693ca37f42aabe12edb058711814f142c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4c019f693ca37f42aabe12edb058711814f142c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [splitOn_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/spliton-nil.md) | 25 | `result-track:3973f1fdf49955e6d88b553b3976d10ffe44b29a99371742cbead0d590fc64a0` |
| 2 | `theorem` | [splitOnP_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/splitonp-nil.md) | 29 | `result-track:004ca9db2a9bd5567d8828640413309520edf708cd4869ebfa156cf7cebedc4c` |
| 3 | `theorem` | [splitOnP.go_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/splitonp-go-ne-nil.md) | 32 | `result-track:950753c5ee6a55008a75261342e2b427b7a118182a7b99851e835f628e210866` |
| 4 | `theorem` | [splitOnP.go_acc](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/splitonp-go-acc.md) | 35 | `result-track:d353387f98c32a7a74120da17727faf7c9f38480b37f3637c6544a00c93d5027` |
| 5 | `theorem` | [splitOnP_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/splitonp-ne-nil.md) | 45 | `result-track:e9ff3ddfe698ce287eb3bd5943e5169ff10c5b4cf1adc44cbc0f75b0e0915323` |
| 6 | `theorem` | [splitOnP_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/splitonp-cons.md) | 48 | `result-track:af10a978b5bac220b524e84a157ff207fe8387e644bf1d7ee3e07ce49865f8d2` |
| 7 | `theorem` | [splitOnP_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/splitonp-spec.md) | 55 | `result-track:84b43a09e2785ce3a863721d2bdd93009013bc84eddf7327560820e47886c05d` |
| 8 | `theorem` | [splitOnP_eq_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/splitonp-eq-single.md) | 75 | `result-track:f595696839eaf144bfe481dc44356b3689353619d98f198b2892923e39c94055` |
| 9 | `theorem` | [splitOnP_first](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/splitonp-first.md) | 84 | `result-track:3b926e8ec2cdcad05e1c62dafdb75c2ab56d4a216c35f980e91371b579ffeffc` |
| 10 | `theorem` | [intercalate_splitOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/intercalate-spliton.md) | 91 | `result-track:5d0fb2f016447ecbb09a7ccd89597a1ab57c1e12a30c5f5f324df521006c6f36` |
| 11 | `theorem` | [splitOn_intercalate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSplitOnNamespaced.lean/declarations/spliton-intercalate.md) | 105 | `result-track:5dd60e48da92eaebe6b4bdaeb8bc090d4ecbfabb6588f67de5fbddb4fe4d7187` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a883fe17d4fcdfc98111a913630575638698699a3372808b44cc9cb8e1fcebf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SplitOn/Variantbbeb0b82fca56a35febffcf71a8185de6d14b69372cddd557dd77813c70dc4e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
