# Verification target: Continuous Sqrt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68078455bea93d5eeffb169400653967689d6055",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousSqrt/Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousSqrt.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousSqrt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68078455bea93d5eeffb169400653967689d6055`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousSqrt/Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousSqrt/Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StarOrdered` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousSqrt.lean/declarations/instance-source-edition-4.md) | 21 | `declaration-track:c09216ad86537ffabb57eb7e28dfb40a5c136d8f18b299fc88eb60bec2006740` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousSqrt.lean/declarations/instance-source-edition-2.md) | 34 | `declaration-track:3b1e928395989122574a453758ea61fe22998e0adec284e6c852b44e32d6c5c8` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousSqrt.lean/declarations/instance-source-edition-3.md) | 37 | `declaration-track:711da640f55293afb31fe5b973ec3002c98dd154a3f1f47055922e0de6efdbf2` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousSqrt.lean/declarations/instance.md) | 39 | `declaration-track:0b7463853f61ef6d3339ecf89a4275153c3e7ef4dc9f0959831d2e9a68e8453a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5ed354f574a238ead325540d998d75cf4089213a7140014442818f22b9a3e8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousSqrt/Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContinuousSqrt/Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
