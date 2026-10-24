# Verification target: GRWTSK.Topology.GeneralTopology.Sign.Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b27179d12e524ca90a365a6a3c8c28ce055b918",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b27179d12e524ca90a365a6a3c8c28ce055b918`.

Source path: `GRWTSK/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sign` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean/declarations/instance--6ed41ad24c15d890e182ea1c.md) | 18 | `declaration-track:6ed41ad24c15d890e182ea1cde24f410d06933aacc0ed9b25fd536efe24f6e48` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean/declarations/instance--cd2450be201906083181e94c.md) | 21 | `declaration-track:cd2450be201906083181e94c6dedd84e2e76be5560edb4aae5ec2b396e16ccb6` |
| 3 | `theorem` | [continuousAt_sign_of_pos](../../../../../mathematics/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean/declarations/continuousat-sign-of-pos--d7a89b5f64491e4980c84cb8.md) | 30 | `result-track:d7a89b5f64491e4980c84cb8a5945a5369072bf757a3f049d0f432dbd904c558` |
| 4 | `theorem` | [continuousAt_sign_of_neg](../../../../../mathematics/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean/declarations/continuousat-sign-of-neg--ddd42885d55220e290a67c40.md) | 35 | `result-track:ddd42885d55220e290a67c40fb9e7d40d939a1791a5ee3fac2725ecf27cc91be` |
| 5 | `theorem` | [continuousAt_sign_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Sign/Variantf19cad3422a37288ec3eaaaf3ecc2d992355370493e1cc429e5a533e5fc7561e.lean/declarations/continuousat-sign-of-ne-zero--ded0c3c145058edc3ac3d961.md) | 46 | `result-track:ded0c3c145058edc3ac3d961b8e4edb25eedf5983aa3a193b1d01e1030028a9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
