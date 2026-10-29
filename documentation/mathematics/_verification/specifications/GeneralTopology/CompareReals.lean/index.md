# Verification target: Compare Reals

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

[Module and every result](../../../../GeneralTopology/CompareReals.lean/index.md) · [Full source](../../../../GeneralTopology/CompareReals.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.uniformSpace_eq](../../../../GeneralTopology/CompareReals.lean/declarations/rat-uniformspace-eq.md) | 57 | `result-track:425bd22edbc8562f70ad467cebb4f18d9c56b2d9643940c2c3b89c5565b5aa9c` |
| 2 | `def` | [rationalCauSeqPkg](../../../../GeneralTopology/CompareReals.lean/declarations/rationalcauseqpkg.md) | 65 | `declaration-track:37ff3f9e5746c3549b7028e3045958443c73c3d16aa1f0c1f4dadfeca2265265` |
| 3 | `def` | [Q](../../../../GeneralTopology/CompareReals.lean/declarations/q.md) | 83 | `declaration-track:2db56032054523d9ff5123eae6ca696cd702f3e115d64b23dcb90bcba3d301a4` |
| 4 | `instance` | [uniformSpace](../../../../GeneralTopology/CompareReals.lean/declarations/uniformspace.md) | 86 | `declaration-track:5aee8c48a9509456431bf0a65aee739d88166fc98b775e4ef90a059c6f2ccbb4` |
| 5 | `def` | [Bourbakiℝ](../../../../GeneralTopology/CompareReals.lean/declarations/bourbaki.md) | 90 | `declaration-track:df7b67c59465416fadfefc1befcb4c187be67f754f090941a9bc745502a3ae25` |
| 6 | `instance` | [Bourbaki.uniformSpace](../../../../GeneralTopology/CompareReals.lean/declarations/bourbaki-uniformspace.md) | 93 | `declaration-track:4abc5d0c3414397d6f9a9981b24e6faf291eecd28517da3d651f73e9308fb574` |
| 7 | `def` | [bourbakiPkg](../../../../GeneralTopology/CompareReals.lean/declarations/bourbakipkg.md) | 97 | `declaration-track:f504c34ae39a97d2ed069d7680be8e2eb219d39dc599668c30ac6862b852d5a6` |
| 8 | `def` | [compareEquiv](../../../../GeneralTopology/CompareReals.lean/declarations/compareequiv.md) | 101 | `declaration-track:593f7f462094e9f50823ef9c93e0fd7a663518f9ab87c5289f87642cb2767224` |
| 9 | `theorem` | [compare_uc](../../../../GeneralTopology/CompareReals.lean/declarations/compare-uc.md) | 104 | `result-track:b4bd104fdd57ee20280eebc5dbf08e9a022b94057ffc4e034bc44eb3f1a51b09` |
| 10 | `theorem` | [compare_uc_symm](../../../../GeneralTopology/CompareReals.lean/declarations/compare-uc-symm.md) | 107 | `result-track:0903c0d451e2bda625c5b256e9bf52b7acdd8009eec4925dde79f6919799125e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=318171d47b0674fd5fc15da9bbd8eba619dae484d4e3c074a2c29df2408d6b3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/CompareReals/Variantbc41599af6f7167ac92b9b5a6b6791c660d3eebfef27cb2db96b45cadc38f391.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
