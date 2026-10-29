# Verification target: Pow Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d79ae3eaeeba51ac94b41306024659a1996cd95",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PowEdition2.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PowEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d79ae3eaeeba51ac94b41306024659a1996cd95`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PowEdition2.lean/declarations/macro-rules.md) | 30 | `declaration-track:c322cedba8011de1539dbfe7fb85cdb76d5db6fe4fe2e88170c7c64d3df95cf4` |
| 2 | `lemma` | [strictConcaveOn_rpow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PowEdition2.lean/declarations/strictconcaveon-rpow.md) | 36 | `result-track:dc16ec3c99033f6d03c10d674cd09a1e1686e2da89e5bf48ca43267f82c38270` |
| 3 | `lemma` | [concaveOn_rpow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PowEdition2.lean/declarations/concaveon-rpow.md) | 50 | `result-track:e087b2de8107c300a84a33bdec9c3e43cd8661ef3842fee10b2a05dbd7d7328d` |
| 4 | `lemma` | [strictConcaveOn_sqrt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PowEdition2.lean/declarations/strictconcaveon-sqrt-source-edition-2.md) | 62 | `result-track:a4ad67978bb860377e3836584ae9efaa969f8022249811a6c73d9b3ee79f96ca` |
| 5 | `lemma` | [strictConcaveOn_rpow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PowEdition2.lean/declarations/strictconcaveon-rpow-source-edition-2.md) | 74 | `result-track:eb9e693a62476f19975a070d2c06457fe9163de329632cd9c6436bbd8c7a0545` |
| 6 | `lemma` | [concaveOn_rpow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PowEdition2.lean/declarations/concaveon-rpow-source-edition-2.md) | 89 | `result-track:f791a4e9f67d7a95738729c0d697095f84189e603bcaf19ec9b79de2ac037225` |
| 7 | `lemma` | [strictConcaveOn_sqrt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PowEdition2.lean/declarations/strictconcaveon-sqrt.md) | 101 | `result-track:82914bf74086e2bec3c4f0f4e5671f5303b8a986874b3649778731770ee7131f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e5ae5a35665e801d905b548e5a63ff74d7ac21f8491adefc0caec40bdbdd299 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Pow/Variantfd5800b6d9b08d03647626afc5ed566576553d8e5fbdb58e31c1ef0a7507b0b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
