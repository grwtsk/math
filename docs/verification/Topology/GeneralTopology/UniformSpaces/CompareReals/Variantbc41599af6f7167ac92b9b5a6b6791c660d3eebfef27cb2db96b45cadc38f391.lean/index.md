# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.CompareReals.Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b88d04c4df37f3624e40256720553313d4e0a792",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b88d04c4df37f3624e40256720553313d4e0a792`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.AbsoluteValue` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.uniformSpace_eq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/rat-uniformspace-eq--425bd22edbc8562f70ad467c.md) | 57 | `result-track:425bd22edbc8562f70ad467cebb4f18d9c56b2d9643940c2c3b89c5565b5aa9c` |
| 2 | `def` | [rationalCauSeqPkg](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/rationalcauseqpkg--37ff3f9e5746c3549b7028e3.md) | 65 | `declaration-track:37ff3f9e5746c3549b7028e3045958443c73c3d16aa1f0c1f4dadfeca2265265` |
| 3 | `def` | [Q](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/q--2db56032054523d9ff5123ea.md) | 83 | `declaration-track:2db56032054523d9ff5123eae6ca696cd702f3e115d64b23dcb90bcba3d301a4` |
| 4 | `instance` | [uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/uniformspace--5aee8c48a9509456431bf0a6.md) | 86 | `declaration-track:5aee8c48a9509456431bf0a65aee739d88166fc98b775e4ef90a059c6f2ccbb4` |
| 5 | `def` | [Bourbakiℝ](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/bourbaki--df7b67c59465416fadfefc1b.md) | 90 | `declaration-track:df7b67c59465416fadfefc1befcb4c187be67f754f090941a9bc745502a3ae25` |
| 6 | `instance` | [Bourbaki.uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/bourbaki-uniformspace--4abc5d0c3414397d6f9a9981.md) | 93 | `declaration-track:4abc5d0c3414397d6f9a9981b24e6faf291eecd28517da3d651f73e9308fb574` |
| 7 | `def` | [bourbakiPkg](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/bourbakipkg--f504c34ae39a97d2ed069d76.md) | 97 | `declaration-track:f504c34ae39a97d2ed069d7680be8e2eb219d39dc599668c30ac6862b852d5a6` |
| 8 | `def` | [compareEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/compareequiv--593f7f462094e9f50823ef9c.md) | 101 | `declaration-track:593f7f462094e9f50823ef9c93e0fd7a663518f9ab87c5289f87642cb2767224` |
| 9 | `theorem` | [compare_uc](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/compare-uc--b4bd104fdd57ee20280eebc5.md) | 104 | `result-track:b4bd104fdd57ee20280eebc5dbf08e9a022b94057ffc4e034bc44eb3f1a51b09` |
| 10 | `theorem` | [compare_uc_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean/declarations/compare-uc-symm--0903c0d451e2bda625c5b256.md) | 107 | `result-track:0903c0d451e2bda625c5b256e9bf52b7acdd8009eec4925dde79f6919799125e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
