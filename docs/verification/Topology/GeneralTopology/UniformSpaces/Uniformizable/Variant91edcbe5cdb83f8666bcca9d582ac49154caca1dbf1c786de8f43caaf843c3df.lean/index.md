# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Uniformizable.Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db4a4a0b079f41b94312e9be2d40974a2fa0b80a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db4a4a0b079f41b94312e9be2d40974a2fa0b80a`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.OfCompactT2` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsThickening](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean/declarations/isthickening--8d8fb18b931ca3d38df25ab2.md) | 50 | `declaration-track:8d8fb18b931ca3d38df25ab28cdb2bd5ef0a5ee2bf04b60a0db37e63ce02166b` |
| 2 | `theorem` | [urysohns_main](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean/declarations/urysohns-main--5216dda96196b38ee6603723.md) | 59 | `result-track:5216dda96196b38ee6603723fa3fa8ed9da67d802efa9929dee17edfe4b13fb7` |
| 3 | `instance` | [UniformSpace.toCompletelyRegularSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean/declarations/uniformspace-tocompletelyregularspace--ffe132edfe9bb93a6ef87910.md) | 78 | `declaration-track:ffe132edfe9bb93a6ef879101caba8760dca27301b63225eadc35814ad6b284d` |
| 4 | `theorem` | [CompletelyRegularSpace.of_exists_uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean/declarations/completelyregularspace-of-exists-uniformspace--1da78fef956fe67872ce1bb8.md) | 103 | `result-track:1da78fef956fe67872ce1bb8245df79d39d50c5e6bcb4b848e64ea851cc7fd2b` |
| 5 | `theorem` | [CompletelyRegularSpace.exists_uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean/declarations/completelyregularspace-exists-uniformspace--aeef3f7596c56bb0928175d4.md) | 109 | `result-track:aeef3f7596c56bb0928175d46d5b427c6212d1a67e37c8dad8133a0ab3adf3c0` |
| 6 | `theorem` | [completelyRegularSpace_iff_exists_uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformizable/Variant91edcbe5cdb83f8666bcca9d582ac49154caca1dbf1c786de8f43caaf843c3df.lean/declarations/completelyregularspace-iff-exists-uniformspace--46cbd4d870058848cf9353e9.md) | 113 | `result-track:46cbd4d870058848cf9353e9b3d383bde3718cb96d977f7866c6c64493dcaaec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
