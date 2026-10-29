# Verification target: Array Extract

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36272f553ea38b418905b167d9dd791c4fabc71f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantfdcea1f9bf4267d7e0cda0f9c41ba16cc0291d1b7275117396fb27a27ae4a15f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ArrayExtract.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ArrayExtract.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36272f553ea38b418905b167d9dd791c4fabc71f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantfdcea1f9bf4267d7e0cda0f9c41ba16cc0291d1b7275117396fb27a27ae4a15f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantfdcea1f9bf4267d7e0cda0f9c41ba16cc0291d1b7275117396fb27a27ae4a15f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [extract_eq_nil_of_start_eq_end](../../../../../../ComputerScience/TheoryOfData/DataStructures/ArrayExtract.lean/declarations/extract-eq-nil-of-start-eq-end.md) | 19 | `result-track:488267f7294e9751c69854550307080705c92f04385f62390d540398df67cbb1` |
| 2 | `theorem` | [extract_append_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ArrayExtract.lean/declarations/extract-append-left.md) | 28 | `result-track:fb1eca63be8647d11494f81bba3accf8828f9f0c5960154a602aef73ccb65a3e` |
| 3 | `theorem` | [extract_append_right'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ArrayExtract.lean/declarations/extract-append-right.md) | 40 | `result-track:f5a92b5ad64f8821b129c0898a47c3f1060c8022d37fdf056e05da8a83ac2c71` |
| 4 | `theorem` | [extract_eq_of_size_le_end](../../../../../../ComputerScience/TheoryOfData/DataStructures/ArrayExtract.lean/declarations/extract-eq-of-size-le-end.md) | 51 | `result-track:53a99dc6453005bc553183ff540cff1880a7ebc352e70ce0468a3e1a9b3cd2dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c38cbbf1092df0c2cb8a443ab9b7971bee1a2c085f02da5e2613d5dd819352c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantfdcea1f9bf4267d7e0cda0f9c41ba16cc0291d1b7275117396fb27a27ae4a15f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantfdcea1f9bf4267d7e0cda0f9c41ba16cc0291d1b7275117396fb27a27ae4a15f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
