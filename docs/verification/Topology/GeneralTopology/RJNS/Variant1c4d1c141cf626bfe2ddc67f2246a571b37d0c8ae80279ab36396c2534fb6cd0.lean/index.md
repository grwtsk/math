# Verification target: GRWTSK.Topology.GeneralTopology.RJNS.Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "464a5017fb270baa62a28c085aada73adf5ffae7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `464a5017fb270baa62a28c085aada73adf5ffae7`.

Source path: `GRWTSK/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.Records` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/pullback--91eceedf4826e1e79ead8a60.md) | 27 | `declaration-track:91eceedf4826e1e79ead8a60e82cbdd5b0fb25730a91b0746b307ece3fc00ace` |
| 2 | `def` | [PreservesModelLocus](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/preservesmodellocus--659b4a99c2f430d6f27e0ae1.md) | 31 | `declaration-track:659b4a99c2f430d6f27e0ae11abfbb880b92d2236efb435ebd3a276f40d51cb0` |
| 3 | `def` | [PullbackStable](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/pullbackstable--62616011a5f3947b7c5c45a9.md) | 36 | `declaration-track:62616011a5f3947b7c5c45a919891832c4def0c5e9282f39419dfcef019af5a2` |
| 4 | `theorem` | [reflective_preservation_iff](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/reflective-preservation-iff--6c3775c697674dd1b9470d84.md) | 41 | `result-track:6c3775c697674dd1b9470d8479ba1ae91f0d213e57e3b192bc37a6a80670e8fd` |
| 5 | `def` | [classicalOperationalTopology](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/classicaloperationaltopology--d4d5f68ac60c6cf132fd7cab.md) | 60 | `declaration-track:d4d5f68ac60c6cf132fd7cab329b89a4831ae8bc629abdb22228e6198169a29a` |
| 6 | `theorem` | [closure_is_reachability](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/closure-is-reachability--8751866f9c4d2c0ee18d065e.md) | 63 | `result-track:8751866f9c4d2c0ee18d065eb13927f1e8c36a76dedc07899772b3cf0628b3da` |
| 7 | `theorem` | [boundary_formula](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/boundary-formula--0917f256d9d7c04da77c5f83.md) | 68 | `result-track:0917f256d9d7c04da77c5f83351f4f87c8548bd013a6b706eb7abaea6cf46858` |
| 8 | `theorem` | [finite_operational_space_compact](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/finite-operational-space-compact--c1979c314e0b3b000e643186.md) | 72 | `result-track:c1979c314e0b3b000e643186c0ad5b7e5afbce92febe06c1c12454338a04a467` |
| 9 | `theorem` | [operational_alexandrov](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/operational-alexandrov--d3b8e3126bb0a2e9994f6502.md) | 78 | `result-track:d3b8e3126bb0a2e9994f65022cb46568138d628f578e8897a488f2c6fc3bafcd` |
| 10 | `theorem` | [topological_theorem_readiness](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/topological-theorem-readiness--7459e1b9bf332198853d676e.md) | 86 | `result-track:7459e1b9bf332198853d676ead7c48066ac54fcd8281878d1d4857ca84187718` |
| 11 | `structure` | [RJNS3TheoremBundle](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/rjns3theorembundle--f0a0886f14d783d172bf2013.md) | 93 | `declaration-track:f0a0886f14d783d172bf2013b26d93096e19f203e6e003e075ce3b55cbed9f56` |
| 12 | `def` | [rjns3Bundle](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/rjns3bundle--5aa3f639ac916f45a09bebb4.md) | 109 | `declaration-track:5aa3f639ac916f45a09bebb45227acffdab0a0a725552c34e70bea57ee3b2ba2` |
| 13 | `theorem` | [rjns3_normative_le_extensional](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/rjns3-normative-le-extensional--dac7153505ea4e89eb5a2830.md) | 121 | `result-track:dac7153505ea4e89eb5a28306f4b709efa236c25032385c64b32586eae2520b2` |
| 14 | `theorem` | [rjns3_normative_le_evidence](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/rjns3-normative-le-evidence--0c461e0723b7e040341b2abe.md) | 127 | `result-track:0c461e0723b7e040341b2abe2091b77b48eb43ade3b45ffb3a193414712659e6` |
| 15 | `theorem` | [rjns3_positive_tension_iff_overprecision](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/rjns3-positive-tension-iff-overprecision--a87ccec480273bf613df9dbc.md) | 133 | `result-track:a87ccec480273bf613df9dbca7d4561ced648cf3be3a0eab99e19b2661335310` |
| 16 | `theorem` | [rjns3_change_classification](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/rjns3-change-classification--b46a25c18f2781e4f5213367.md) | 140 | `result-track:b46a25c18f2781e4f5213367786601f9f23e4810938f0a1741ab3d78bc281004` |
| 17 | `structure` | [ReflectiveJacobsonNullstellensatzCertificate](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/reflectivejacobsonnullstellensatzcertificate--82ed554f61a40ad05fc0ae6d.md) | 148 | `declaration-track:82ed554f61a40ad05fc0ae6d12beedc032032b01c2c4b6058c332ba42fa78831` |
| 18 | `theorem` | [rjns3Certificate](../../../../../mathematics/Topology/GeneralTopology/RJNS/Variant1c4d1c141cf626bfe2ddc67f2246a571b37d0c8ae80279ab36396c2534fb6cd0.lean/declarations/rjns3certificate--8eccbf78ff3015e8ab82512d.md) | 186 | `result-track:8eccbf78ff3015e8ab82512d789040bfbb73f87cb9debd4f07c0f5687f34a42a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
