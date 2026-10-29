# Verification target: Interface Namespaced Datum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c570c47b7d708d8c3e27eef7b44f6a476ede7c4d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Interface/Variant5a786f94236542e28e20f9647034b325a7041e4833a9ff721ce1f9c6a5dd7ba7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c570c47b7d708d8c3e27eef7b44f6a476ede7c4d`.

Source path: `GRWTSK/Algebra/GroupTheory/Interface/Variant5a786f94236542e28e20f9647034b325a7041e4833a9ff721ce1f9c6a5dd7ba7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Interface/Variant5a786f94236542e28e20f9647034b325a7041e4833a9ff721ce1f9c6a5dd7ba7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Comparison.LogicalStatus` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Properties` — import line 8; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Scope` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Datum](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/datum.md) | 41 | `declaration-track:adebbbf97dde1ef7628dbd9d62dc2545f1bc71a25c0be0a61e3b592452437897` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/instance.md) | 52 | `declaration-track:d9249b526781f6ce350ed002ff6d474918b52e9205c5b9d2c0a352d619b2dbaa` |
| 3 | `def` | [comparison](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/comparison.md) | 56 | `declaration-track:490fdcaaabec83295beb68e19c2419a70bca017102a2b26c6f30e6e3621c2749` |
| 4 | `theorem` | [comparison_apply](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/comparison-apply.md) | 65 | `result-track:b8e8b0dc5022989264a0ef9eb4bebe794d2dd9fc3b25f3b7b6ab7f0ae88d8644` |
| 5 | `def` | [IsomorphismClaim](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/isomorphismclaim.md) | 73 | `declaration-track:34c1cd87ae8e78c7f4ac2584634091b2bf3dd8c3d4d0d2a57e6345e08760dfb5` |
| 6 | `def` | [isomorphismClaim](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/isomorphismclaim-source-edition-2.md) | 79 | `declaration-track:567bb6467c7809d8431a0f95086ce59fc7873e7ab6d82c4be98e19b5cb6b94ef` |
| 7 | `def` | [certified](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/certified.md) | 89 | `declaration-track:cc836777604a22b6351996e90fe026af1402880ebc111e672f1ec4583e2cad02` |
| 8 | `structure` | [FarrellJonesHypothesis](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/farrelljoneshypothesis.md) | 112 | `declaration-track:784b50dee70b8f9f9f4013c6f5424dcb419e59fa3edbeb5b5049c322750459f3` |
| 9 | `theorem` | [bijective](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/bijective.md) | 119 | `result-track:ce3ecceb9b003157ac5fcaabf1ff9e123d87a0c906a63ddea7adcb985cd436fe` |
| 10 | `theorem` | [certificate](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/certificate.md) | 127 | `result-track:ae9fb8ff154e8a448b8d21edf7ebf2a558b4a1f680ecdf86c43177b3d9e9cb8e` |
| 11 | `def` | [conditionalIsomorphismCertificate](../../../../GroupTheoryAndGeneralizations/InterfaceNamespacedDatum.lean/declarations/conditionalisomorphismcertificate.md) | 142 | `declaration-track:24e78ac401d7e351aaa22060031caad630a097bb93a206534d14b851f7fb88ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3161a911ff7800b3d5933c247ed22cddccd82ea345a40fcda66738ed23fd642 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Interface/Variant5a786f94236542e28e20f9647034b325a7041e4833a9ff721ce1f9c6a5dd7ba7.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Interface/Variant5a786f94236542e28e20f9647034b325a7041e4833a9ff721ce1f9c6a5dd7ba7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
