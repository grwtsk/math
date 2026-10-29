# Verification target: List Count Count PLt Length Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df2f02113e15e4d9f3119b688fb605dff12430b5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCountCountPLtLengthIff.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCountCountPLtLengthIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df2f02113e15e4d9f3119b688fb605dff12430b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Perm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_lt_length_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCountCountPLtLengthIff.lean/declarations/countp-lt-length-iff.md) | 25 | `result-track:06837441f374aba3dd8b48b6f7d955916b0c5dcda649eac2c9942c16fdd8a7f0` |
| 2 | `theorem` | [count_lt_length_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCountCountPLtLengthIff.lean/declarations/count-lt-length-iff.md) | 32 | `result-track:c1c272383c6ce80940ae52432d2e7654bc307b387176b1732ba1d170f52bcb4b` |
| 3 | `lemma` | [countP_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCountCountPLtLengthIff.lean/declarations/countp-erase.md) | 34 | `result-track:4d6a3d6d9b357b1b2f5c5cefa659acb81c9dcc651168bfcec890ad9b051a1e3a` |
| 4 | `lemma` | [count_diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCountCountPLtLengthIff.lean/declarations/count-diff.md) | 39 | `result-track:7106f70d04055b443360579a479784bfa3a297cc7c8069512ee900df1a2b2e27` |
| 5 | `lemma` | [countP_diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCountCountPLtLengthIff.lean/declarations/countp-diff.md) | 46 | `result-track:430d8957ba4c9e8336181e84654d838f99eaa794c99c9edd98e63f9dcdfa507b` |
| 6 | `theorem` | [count_map_of_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListCountCountPLtLengthIff.lean/declarations/count-map-of-injective.md) | 54 | `result-track:a5d2da729403f478bd9ddadcbe37ae6294e2b61fa8edc4e6ae35c2d31d6c32a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29025fc37750ef149bcfbb5aebd82d4cbd67deb258d47385d016327cd095c670 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
