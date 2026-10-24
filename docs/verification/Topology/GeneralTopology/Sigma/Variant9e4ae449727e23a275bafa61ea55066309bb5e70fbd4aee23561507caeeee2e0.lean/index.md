# Verification target: GRWTSK.Topology.GeneralTopology.Sigma.Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77dfede767bde51c67f24f0c1e4d3ee493dc6446",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77dfede767bde51c67f24f0c1e4d3ee493dc6446`.

Source path: `GRWTSK/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [embedding_sigmaMk_comp](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean/declarations/embedding-sigmamk-comp--cfd594ce0aeab5b1557bef9b.md) | 45 | `result-track:cfd594ce0aeab5b1557bef9b1b59c0ce12c2d43930b77e358ace9452c5df6dd5` |
| 2 | `theorem` | [exists_lift_sigma](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean/declarations/exists-lift-sigma--aaa33e086247930484b0107a.md) | 66 | `result-track:aaa33e086247930484b0107a62e146f92c15c8a97bb312c3c703d7857642f1e2` |
| 3 | `def` | [sigmaCodHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0.lean/declarations/sigmacodhomeomorph--e879f2fcfc0285e6d32fae0b.md) | 78 | `declaration-track:e879f2fcfc0285e6d32fae0b04ea9351387a2f57fbe9eca7d5b048e4a4d1da79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
