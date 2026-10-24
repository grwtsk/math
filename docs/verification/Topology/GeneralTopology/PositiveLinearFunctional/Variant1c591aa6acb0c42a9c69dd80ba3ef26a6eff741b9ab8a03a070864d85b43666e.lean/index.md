# Verification target: GRWTSK.Topology.GeneralTopology.PositiveLinearFunctional.Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c59927f16d4b962da2748cc8403cf9333d5b892",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c59927f16d4b962da2748cc8403cf9333d5b892`.

Source path: `GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.GelfandNaimarkSegal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_map_le_sqrt_opNorm_mul](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/declarations/norm-map-le-sqrt-opnorm-mul--fff34b6f7e9bcf8dd283241d.md) | 27 | `result-track:fff34b6f7e9bcf8dd283241d6f819111160d876c51c36281929f83756a79f8fc` |
| 2 | `theorem` | [nnnorm_map_le_sqrt_opNNNorm_mul](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/declarations/nnnorm-map-le-sqrt-opnnnorm-mul--3a93fe672753dae4d6160cf9.md) | 36 | `result-track:3a93fe672753dae4d6160cf952006d90c395eb79dad514e05718abe1b0e72791` |
| 3 | `theorem` | [norm_map_sq_le_opNorm_mul](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/declarations/norm-map-sq-le-opnorm-mul--5cbca1d169c05def58e1e7ca.md) | 40 | `result-track:5cbca1d169c05def58e1e7cae77b644277af6e6dc7f9f356f959359cb3f2dfe0` |
| 4 | `theorem` | [nnnorm_map_sq_le_opNNNorm_mul](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/declarations/nnnorm-map-sq-le-opnnnorm-mul--71d086e75db2b3cbc64c7f16.md) | 44 | `result-track:71d086e75db2b3cbc64c7f16084b6f06d4164b402915abc567c4c08408ef449e` |
| 5 | `theorem` | [tendsto_nhds_opNorm](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/declarations/tendsto-nhds-opnorm--df05fcf727328a445ee85d7e.md) | 48 | `result-track:df05fcf727328a445ee85d7e9bdf6645583611d9047443b1703b71b5786afc1f` |
| 6 | `theorem` | [ofReal_opNorm_eq_map_one](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/declarations/ofreal-opnorm-eq-map-one--82645ce3f56e3975c3704704.md) | 74 | `result-track:82645ce3f56e3975c370470494f8083e39c42a13e89a8318f0e135bf21b985f3` |
| 7 | `lemma` | [im_apply_eq_zero_of_tendsto_nhds_opNorm](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/declarations/im-apply-eq-zero-of-tendsto-nhds-opnorm--ef9484697ea4da3ca6b0758f.md) | 87 | `result-track:ef9484697ea4da3ca6b0758fc74c11566d6bd2a865f0149b7d3c7bbd98c1e3b8` |
| 8 | `theorem` | [monotone_iff_tendsto_nhds_opNorm](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/declarations/monotone-iff-tendsto-nhds-opnorm--9a6af1553eb7c06da88f8196.md) | 115 | `result-track:9a6af1553eb7c06da88f81964d318aa96b4fe64a89a02519961173223db5c899` |
| 9 | `theorem` | [monotone_iff_opNorm_eq_map_one](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/declarations/monotone-iff-opnorm-eq-map-one--4306505c22845d0acabb79cc.md) | 130 | `result-track:4306505c22845d0acabb79cc943ab699dcfd4ac2d439c931b5493f841f6a7d1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
