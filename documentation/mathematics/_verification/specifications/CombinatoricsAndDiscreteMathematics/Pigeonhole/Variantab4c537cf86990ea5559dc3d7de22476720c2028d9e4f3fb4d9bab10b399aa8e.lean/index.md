# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pigeonhole.Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2e2aae3ba533b557431a6f407b70a1db7c10b43",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2e2aae3ba533b557431a6f407b70a1db7c10b43`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Union` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_ne_map_eq_of_card_lt](../../../../../CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean/declarations/exists-ne-map-eq-of-card-lt--e6c0021f37f083f59a3b89fa.md) | 50 | `result-track:e6c0021f37f083f59a3b89fac8d3db5429b7a54f941a194668543ba60960a51a` |
| 2 | `theorem` | [isEmpty_of_card_lt](../../../../../CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean/declarations/isempty-of-card-lt--a06bd76c0add080b76289fcb.md) | 64 | `result-track:a06bd76c0add080b76289fcbf5e58274e4d6eceddb0a64dca3c6f6f20c43bc83` |
| 3 | `theorem` | [Finite.exists_ne_map_eq_of_infinite](../../../../../CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean/declarations/finite-exists-ne-map-eq-of-infinite--c41a12ead1d19596c7ad90e9.md) | 78 | `result-track:c41a12ead1d19596c7ad90e9fd0b09ec69a11cb8fc75724258efc01dcee46ca4` |
| 4 | `theorem` | [Finite.exists_infinite_fiber](../../../../../CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean/declarations/finite-exists-infinite-fiber--06c03a27ee6b41e857e02a05.md) | 89 | `result-track:06c03a27ee6b41e857e02a05a161fe30d7d588908ec5b6f30992eec79d3251e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e042cb20acf208556565ab06e980937c4446228657fbcc8e012a894af7859f3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variantab4c537cf86990ea5559dc3d7de22476720c2028d9e4f3fb4d9bab10b399aa8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
