# Verification target: GRWTSK.Topology.GeneralTopology.PreorderRestrict.Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5457809000b93d6fea6c07981b54561bad1103e7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PreorderRestrict/Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5457809000b93d6fea6c07981b54561bad1103e7`.

Source path: `GRWTSK/Topology/GeneralTopology/PreorderRestrict/Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PreorderRestrict/Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Restriction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_restrictLe](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580.lean/declarations/continuous-restrictle--54790e074b57233a2d9f2a1f.md) | 29 | `result-track:54790e074b57233a2d9f2a1f79ccb53c60a5c69cc6e409f14869a1e366fee060` |
| 2 | `theorem` | [continuous_restrictLe₂](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580.lean/declarations/continuous-restrictle--1d3ce86e07eb0f6f17fa5de0.md) | 33 | `result-track:1d3ce86e07eb0f6f17fa5de011eb807bc854d3ace81cda95ecfbb495ca9d02d0` |
| 3 | `theorem` | [continuous_frestrictLe](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580.lean/declarations/continuous-frestrictle--f234446a89faa90221a350b8.md) | 39 | `result-track:f234446a89faa90221a350b8b143b0fa5c402074156b94ff0a0f335078ae9596` |
| 4 | `theorem` | [continuous_frestrictLe₂](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variante7114e7a74e17ac032b7dba2ab27f509abefe7b699bc8219bd31a59c75e4d580.lean/declarations/continuous-frestrictle--5871764d21fc235377b307be.md) | 43 | `result-track:5871764d21fc235377b307be57c8f5b7b8a8da4797fe5ab6890cc3c2100ce8ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
