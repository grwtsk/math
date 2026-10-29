# Verification target: Power Series Pi Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c1dc084571eb9e41ec578ba59a2baec0f7d6e8e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variant7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c1dc084571eb9e41ec578ba59a2baec0f7d6e8e`.

Source path: `GRWTSK/Topology/GeneralTopology/PiTopology/Variant7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PiTopology/Variant7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.PiTopology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Trunc` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Pi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:db2d3e406e64e3d4cccff783193fc1990847868e419f3f8a72b419495586818e` |
| 2 | `theorem` | [instT0Space](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/instt0space.md) | 70 | `result-track:2146d935353584ec5d3f1159e464f168a7f03b2f85b35a0febde646b0140106a` |
| 3 | `theorem` | [instT2Space](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/instt2space.md) | 75 | `result-track:7e1143557b7ea44d116325fff6fa822732d3cae63f38409adc61e2731d75bdec` |
| 4 | `theorem` | [continuous_coeff](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/continuous-coeff.md) | 79 | `result-track:2cbeb508840417048c0f177130540ebaea1420306ca390b16acd6836ee9cb6a2` |
| 5 | `theorem` | [continuous_constantCoeff](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/continuous-constantcoeff.md) | 83 | `result-track:7205601b5b55f3bdaedc9e556b2e2f7b5786f4a885f56b32f22538c8c416f0f7` |
| 6 | `theorem` | [tendsto_iff_coeff_tendsto](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/tendsto-iff-coeff-tendsto.md) | 87 | `result-track:686b2224dd3a75601b752d0b1350b42a0bfd0c2c6a42e2d3f45e4967aeeba764` |
| 7 | `theorem` | [tendsto_trunc_atTop](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/tendsto-trunc-attop.md) | 101 | `result-track:28a25a08d9aa0c5196d4ea2027a44630c0b6cfc524029421f83018e658d3b186` |
| 8 | `theorem` | [denseRange_toPowerSeries](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/denserange-topowerseries.md) | 108 | `result-track:0eb77e710ff7baec3b8450a7d012ca58ad49e9afe55d30f60a72ffebc18b23d8` |
| 9 | `theorem` | [instIsTopologicalSemiring](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/instistopologicalsemiring.md) | 114 | `result-track:2d19c1d4e911a7790c50f72bf7a23ded3b1d0d171f17f9a3c84da333adaabcf2` |
| 10 | `theorem` | [instIsTopologicalRing](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/instistopologicalring.md) | 120 | `result-track:a6ad0f005c52e380b7108a861fa122acaa277b3f0209336900fba61dfb538965` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/instance.md) | 135 | `declaration-track:cb3747f19606fd731993fe328beeb61919619323331c2d47eadc9a57ed8dfe4b` |
| 12 | `theorem` | [uniformContinuous_coeff](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/uniformcontinuous-coeff.md) | 139 | `result-track:dff2d0d9355c48d3107e68d280e9de5abdffebbb778266bff5933df461a24fe8` |
| 13 | `theorem` | [instCompleteSpace](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/instcompletespace.md) | 145 | `result-track:d47bcb06b2e1bf8f50b0a0caf42919e4eeaf37bd4f4b02921fc489e6211beb67` |
| 14 | `theorem` | [instIsUniformAddGroup](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/instisuniformaddgroup.md) | 151 | `result-track:33be43bd00248aab4a010e28fba8c4771d741af106931b450e7ef75b15341878` |
| 15 | `theorem` | [continuous_C](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/continuous-c.md) | 171 | `result-track:deaa6d3c2139eb4c6f1b4f50bd1b0ee8ec7f645b68ca86c5a3b4bcdb55e6c9b4` |
| 16 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_isNilpotent](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/istopologicallynilpotent-of-constantcoeff-isnilpotent.md) | 174 | `result-track:d42a00a34b3cd11c7858eed1cfba9cbaaf9e4cb7d0810f349208d91c828eddce` |
| 17 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_zero](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/istopologicallynilpotent-of-constantcoeff-zero.md) | 179 | `result-track:d972e63f40fe4bfb36ea9ce294a8136434b69d90a81fedd9348b3621c24a4a6f` |
| 18 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff_isNilpotent](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/istopologicallynilpotent-iff-constantcoeff-isnilpotent.md) | 187 | `result-track:17b1e9eff1b0e349aafe1cc587aa8413cc2f25077d246cbc7191cb975ec5a66e` |
| 19 | `theorem` | [hasSum_of_monomials_self](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/hassum-of-monomials-self.md) | 207 | `result-track:c4e7698c91c65c96992896c68a07ee7fc0c1b9a0789ec4794dbd455628706581` |
| 20 | `theorem` | [as_tsum](../../../../CommutativeAlgebra/PowerSeriesPiTopology.lean/declarations/as-tsum.md) | 217 | `result-track:1374f283931b5570104d2b249bf8e7d92c272f0d924eeb4e5de285a34733d942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd7da10184a2cb64c2f3e15e9ab1edc941912d620ad98400e0eb019ec269a8dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PiTopology/Variant7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PiTopology/Variant7fb2763b2cfd4b60ed0fc7b005a23693879a21ee6ec7155bff7586e4eb809c87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
