# Verification target: GRWTSK.Topology.GeneralTopology.Sheafify.Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26839b93e0b43442b64ce1538482c5d97294db92",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26839b93e0b43442b64ce1538482c5d97294db92`.

Source path: `GRWTSK/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isGerm](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/declarations/isgerm--c39f5bc183c9a04c37cfa194.md) | 57 | `declaration-track:c39f5bc183c9a04c37cfa1943583973750a76934f0ac0aed0688a905596acfda` |
| 2 | `def` | [isLocallyGerm](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/declarations/islocallygerm--d1170186b686e3e3d3559ef1.md) | 64 | `declaration-track:d1170186b686e3e3d3559ef104d0bef84f264617c0e2f16964260fe9694f6c31` |
| 3 | `def` | [sheafify](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/declarations/sheafify--761f73f6506f8c76f21f86ca.md) | 72 | `declaration-track:761f73f6506f8c76f21f86ca333855e0b85f5d1a752ac6d1d2d8db0a6e361c34` |
| 4 | `def` | [toSheafify](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/declarations/tosheafify--dd2c8d41388e09551cd7960d.md) | 80 | `declaration-track:dd2c8d41388e09551cd7960d5734dd24cfcd4e97abccba186805ecaceea811b7` |
| 5 | `def` | [stalkToFiber](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/declarations/stalktofiber--3d7ea445b4483bb866079176.md) | 91 | `declaration-track:3d7ea445b4483bb8660791763ce3cb3362f4150c0c7efce1e9fccbd71e949c1e` |
| 6 | `theorem` | [stalkToFiber_surjective](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/declarations/stalktofiber-surjective--427b391f540782f0388bb3b8.md) | 95 | `result-track:427b391f540782f0388bb3b8b7453f488e0fddcb1c1abf53782fb9a414b52738` |
| 7 | `theorem` | [stalkToFiber_injective](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/declarations/stalktofiber-injective--00c9718146495274509fd2bd.md) | 105 | `result-track:00c9718146495274509fd2bdd369886ad73c4bc00cc6e8cb1a5a88a83806ec31` |
| 8 | `def` | [sheafifyStalkIso](../../../../../mathematics/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/declarations/sheafifystalkiso--87f8c07c17031855a7b55d6d.md) | 130 | `declaration-track:87f8c07c17031855a7b55d6dd4b876fc326a26a481d803ba531c1871d24448c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
