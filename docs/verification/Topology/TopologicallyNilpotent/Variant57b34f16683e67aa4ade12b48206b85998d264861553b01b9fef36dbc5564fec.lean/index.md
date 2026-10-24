# Verification target: GRWTSK.Topology.TopologicallyNilpotent.Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f8299dab6a70a136804a4f509ac4043f81756f1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/index.md) · [Full source](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f8299dab6a70a136804a4f509ac4043f81756f1`.

Source path: `GRWTSK/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.LinearTopology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTopologicallyNilpotent](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/istopologicallynilpotent--0d9d667959b8deb7998bd88e.md) | 43 | `declaration-track:0d9d667959b8deb7998bd88e98577e6007fd259d66f1e36450de9dbfa49ca100` |
| 2 | `theorem` | [map](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/map--a84c127ff904b5a54d60d72c.md) | 56 | `result-track:a84c127ff904b5a54d60d72c06a1ed05bdffcb6d0f844d4c53c01ab1992ffb80` |
| 3 | `theorem` | [zero](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/zero--7fad71d263b8ef815bd03e46.md) | 64 | `result-track:7fad71d263b8ef815bd03e4639826bff1be9f07321a94032c47947aff5a17309` |
| 4 | `theorem` | [_root_.IsNilpotent.isTopologicallyNilpotent](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/root-isnilpotent-istopologicallynilpotent--eb384d21058ac92d67cde928.md) | 68 | `result-track:eb384d21058ac92d67cde9289b00090d0b2fa0e31801f68d81c9d402e1191601` |
| 5 | `theorem` | [exists_pow_mem_of_mem_nhds](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/exists-pow-mem-of-mem-nhds--eba099b3ed0b11b7fa851345.md) | 75 | `result-track:eba099b3ed0b11b7fa8513458afab211ad3da1e8f1ffc63d84eaf8e7373a019a` |
| 6 | `theorem` | [mul_right_of_commute](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/mul-right-of-commute--08dbbf4d1f79f2d422a2888a.md) | 88 | `result-track:08dbbf4d1f79f2d422a2888ad5112cb54ad8c06c4bbedc5c9558971f716fc165` |
| 7 | `theorem` | [mul_left_of_commute](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/mul-left-of-commute--f482fafed49a5b21adc70cc3.md) | 96 | `result-track:f482fafed49a5b21adc70cc3569631a2b2031c134028726b8754cec9f42c6d76` |
| 8 | `theorem` | [add_of_commute](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/add-of-commute--32983be224096b0767276571.md) | 104 | `result-track:32983be224096b0767276571b76bbdb06a6cfc961b55d3024b47d7a6fbce295a` |
| 9 | `theorem` | [mul_right](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/mul-right--e58c36a546f0b0846d5b6f47.md) | 122 | `result-track:e58c36a546f0b0846d5b6f4769490753d182d0e470aa5b9aa6dd5313f2c3e65c` |
| 10 | `theorem` | [mul_left](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/mul-left--c8d14eb9b9ebc4c32e28a14e.md) | 127 | `result-track:c8d14eb9b9ebc4c32e28a14ef3680a04efd5d8bee645ef12870611cc28ee4108` |
| 11 | `theorem` | [add](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/add--3a1aa3a7d3528e9acc0c0020.md) | 132 | `result-track:3a1aa3a7d3528e9acc0c002073b662e2829759fa1690f73f0536a499757d64d2` |
| 12 | `def` | [_root_.topologicalNilradical](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/root-topologicalnilradical--38db0bc49cb1acce96a179b8.md) | 139 | `declaration-track:38db0bc49cb1acce96a179b8184c262f73b2d3b5562871ae5dcd2f93fea0734e` |
| 13 | `theorem` | [mem_topologicalNilradical_iff](../../../../mathematics/Topology/TopologicallyNilpotent/Variant57b34f16683e67aa4ade12b48206b85998d264861553b01b9fef36dbc5564fec.lean/declarations/mem-topologicalnilradical-iff--521ca2a65746cff723691369.md) | 145 | `result-track:521ca2a65746cff723691369e0d00458dee5cfefc5ecea52c93ad5fed76666f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
