# Verification target: Context Resolver Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "728a3f9e76477bfd82bd25ced65b62e818efe73b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variant97bd7241bbbb36bb292750d0af30ea0f6ff7e35bc2f96c15085705a7ffbb42db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ContextResolverNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ContextResolverNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `728a3f9e76477bfd82bd25ced65b62e818efe73b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variant97bd7241bbbb36bb292750d0af30ea0f6ff7e35bc2f96c15085705a7ffbb42db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variant97bd7241bbbb36bb292750d0af30ea0f6ff7e35bc2f96c15085705a7ffbb42db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Context` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Continuation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContextCutValidator](../../../../Combinatorics/ContextResolverNamespaced.lean/declarations/contextcutvalidator.md) | 23 | `declaration-track:cf56cd63f86651bd95f87800156e5183779fdadcb82c5cbad4361b1eddbeb441` |
| 2 | `structure` | [ContextResolverProfile](../../../../Combinatorics/ContextResolverNamespaced.lean/declarations/contextresolverprofile.md) | 37 | `declaration-track:67a2f327c071a5336f69a15377fdef95aa9a365337a68c8e2365db71fc1debff` |
| 3 | `inductive` | [ContextResolution](../../../../Combinatorics/ContextResolverNamespaced.lean/declarations/contextresolution.md) | 67 | `declaration-track:5194014fc17b55b40b3e3cfee1b2c820819e7086a4afc10f3ee83a9c20bcf274` |
| 4 | `def` | [ContextResolution.IsRejected](../../../../Combinatorics/ContextResolverNamespaced.lean/declarations/contextresolution-isrejected.md) | 95 | `declaration-track:d5d68d8ebca84c464f06c6d101c1b3ca2d6e28ee6d35a5c0de23474c4175c7bd` |
| 5 | `def` | [resolveCut](../../../../Combinatorics/ContextResolverNamespaced.lean/declarations/resolvecut.md) | 112 | `declaration-track:cbdca53dfe207a66fe6ae68d53cd89b982679eee7fe515cca29a8d26fcaa805d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f57ad5c5e7e796e202551bb2d898b1b7e454ab49a61da40c7f9a5cba2fc290d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variant97bd7241bbbb36bb292750d0af30ea0f6ff7e35bc2f96c15085705a7ffbb42db.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextResolver/Variant97bd7241bbbb36bb292750d0af30ea0f6ff7e35bc2f96c15085705a7ffbb42db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
