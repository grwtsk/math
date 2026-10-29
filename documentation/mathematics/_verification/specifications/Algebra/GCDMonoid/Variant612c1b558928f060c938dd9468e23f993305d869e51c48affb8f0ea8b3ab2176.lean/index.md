# Verification target: GRWTSK.Algebra.GCDMonoid.Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74940f8f2ed5feac63995b063151f700fc03c102",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean/index.md) · [Full source](../../../../../Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74940f8f2ed5feac63995b063151f700fc03c102`.

Source path: `GRWTSK/Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.UniqueFactorizationDomain.FactorSet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniqueFactorizationMonoid.toGCDMonoid](../../../../../Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean/declarations/uniquefactorizationmonoid-togcdmonoid--56dfc94b70567aa8991cbdc3.md) | 25 | `declaration-track:56dfc94b70567aa8991cbdc36e252631c6d3e47e11439deefb77a67d33e4a2fd` |
| 2 | `def` | [UniqueFactorizationMonoid.toNormalizedGCDMonoid](../../../../../Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean/declarations/uniquefactorizationmonoid-tonormalizedgcdmonoid--f0fd1d69f92108742ba54657.md) | 47 | `declaration-track:f0fd1d69f92108742ba54657903bbd91394e98527b50bcfcdfa9e1734e7a336f` |
| 3 | `instance` | [(anonymous)](../../../../../Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean/declarations/instance--d70b10c996d92e369effca87.md) | 68 | `declaration-track:d70b10c996d92e369effca871c836b88c5fc7012e17178a1b9426dddc4b93e09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=653d63a5fd07aa23cbf98d0657de04fdc8de8043c2dc8762c5943bb54ecf1a0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean","GRWTSK/_verification/specifications/Algebra/GCDMonoid/Variant612c1b558928f060c938dd9468e23f993305d869e51c48affb8f0ea8b3ab2176.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
