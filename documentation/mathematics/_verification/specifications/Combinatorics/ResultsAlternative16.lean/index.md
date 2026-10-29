# Verification target: Results Alternative16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9252499f1001ccb96d564ddd5bf611204c6b148",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AB22c202560071c6b/Variant8829e5f92023b6a376a32a74328a20defa8364abb7c0126835eff9b04d4fbf7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ResultsAlternative16.lean/index.md) · [Full source](../../../../Combinatorics/ResultsAlternative16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9252499f1001ccb96d564ddd5bf611204c6b148`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AB22c202560071c6b/Variant8829e5f92023b6a376a32a74328a20defa8364abb7c0126835eff9b04d4fbf7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AB22c202560071c6b/Variant8829e5f92023b6a376a32a74328a20defa8364abb7c0126835eff9b04d4fbf7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Taxonomy.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 2; external provider; requires a separately pinned dependency.
- `MathDiscovery.Core.IdAtoms.A_ac5db8f52326a0f1` — import line 4; external provider; requires a separately pinned dependency.
- `MathDiscovery.Taxonomy.DomainAtoms.A_5a95997c82204181` — import line 5; external provider; requires a separately pinned dependency.
- `MathDiscovery.Taxonomy.Role` — import line 6; external provider; requires a separately pinned dependency.
- `MathDiscovery.Taxonomy.Status` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [HomeCriterion](../../../../Combinatorics/ResultsAlternative16.lean/declarations/homecriterion.md) | 15 | `declaration-track:a0ba481f46f65e9a6fc79bea1c399a1c4b18350c6725864bdae43e215693907d` |
| 2 | `structure` | [RoleEvidence](../../../../Combinatorics/ResultsAlternative16.lean/declarations/roleevidence.md) | 22 | `declaration-track:296764449c39c2377bec8c0c68341af264268cc527cc67ecd609330f2679450c` |
| 3 | `structure` | [DomainEvidence](../../../../Combinatorics/ResultsAlternative16.lean/declarations/domainevidence.md) | 28 | `declaration-track:d232036c4153f50caa1214dda1768f5e17fa89f86c63ae6feeef37558a14d598` |
| 4 | `structure` | [FacetEvidence](../../../../Combinatorics/ResultsAlternative16.lean/declarations/facetevidence.md) | 35 | `declaration-track:200ae6ccb13c856a2e56746fa637dbe136deae91b1ac5af66f8d1c7877c12998` |
| 5 | `structure` | [StatusEvidence](../../../../Combinatorics/ResultsAlternative16.lean/declarations/statusevidence.md) | 41 | `declaration-track:c202552e6d75d002693576f94f7e03dd2121cbf5e30259a3cc6da4b5068142ff` |
| 6 | `structure` | [TaxonEvidence](../../../../Combinatorics/ResultsAlternative16.lean/declarations/taxonevidence.md) | 47 | `declaration-track:de87c70455a98b2259afa9a46a440b6b2ad31cd83db2ad16704aacc73b92a24b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff55b22f714f58dd8b7d7bfe800e1dd0b4c478c172133a1f6ab996ca64511a97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/AB22c202560071c6b/Variant8829e5f92023b6a376a32a74328a20defa8364abb7c0126835eff9b04d4fbf7d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/AB22c202560071c6b/Variant8829e5f92023b6a376a32a74328a20defa8364abb7c0126835eff9b04d4fbf7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
