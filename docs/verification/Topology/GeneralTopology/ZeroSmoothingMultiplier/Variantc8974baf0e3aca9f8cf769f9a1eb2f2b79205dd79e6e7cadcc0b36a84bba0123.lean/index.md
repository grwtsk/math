# Verification target: GRWTSK.Topology.GeneralTopology.ZeroSmoothingMultiplier.Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23c8828101129b914c14844478fb12b20888fecf",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23c8828101129b914c14844478fb12b20888fecf`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplier](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier--d83e01d19ad0063fbafae704.md) | 25 | `declaration-track:d83e01d19ad0063fbafae704158a5eeb3482b43608d6b2c66f60100e93420978` |
| 2 | `theorem` | [multiplier_integrand_continuous](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-integrand-continuous--ca5de7593a95e1a471fb1b5c.md) | 29 | `result-track:ca5de7593a95e1a471fb1b5c4a5b76635d27c7712815caa8edfeb847ed99fd86` |
| 3 | `theorem` | [multiplier_integrand_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-integrand-hascompactsupport--a1bf34527a5085e4f17d12e9.md) | 35 | `result-track:a1bf34527a5085e4f17d12e9777e5094454028f877b3ee5bbec473fe93868d05` |
| 4 | `theorem` | [multiplier_integrand_integrable](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-integrand-integrable--25ad767c478b9be295c65c8b.md) | 43 | `result-track:25ad767c478b9be295c65c8b5fb52259eba941c4ee444c9351c86a8bcfe86285` |
| 5 | `theorem` | [multiplier_integrand_norm_le](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-integrand-norm-le--6ab2ca99374623ca05ef8a6c.md) | 49 | `result-track:6ab2ca99374623ca05ef8a6ca95946c06df49a480023e9f271ecada7beaf415c` |
| 6 | `theorem` | [multiplier_norm_le](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-norm-le--1174d995248219a067a0897a.md) | 69 | `result-track:1174d995248219a067a0897a2827f7f420e0c55099aa100ff554cd299cc8dc4c` |
| 7 | `theorem` | [multiplier_norm_le_strip](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-norm-le-strip--3e6400c0216f428ae07a5ace.md) | 82 | `result-track:3e6400c0216f428ae07a5ace60da673c5780ff7f750b08eab53054d83327ebdc` |
| 8 | `theorem` | [multiplier_norm_le_zeroOccurrence](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-norm-le-zerooccurrence--01778c86787ac9f7cc04bc0a.md) | 90 | `result-track:01778c86787ac9f7cc04bc0a912937c2e9a37ab5fca659440dfad3130cfa09c7` |
| 9 | `theorem` | [multiplier_zero](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-zero--d39c141b5556e69edcb719e6.md) | 96 | `result-track:d39c141b5556e69edcb719e65e3daf0972de0f1ea1eaaf3fd6a7e81f31d79f08` |
| 10 | `theorem` | [multiplier_eq_convolution](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-eq-convolution--261c5e509a6a2b67e3a3f056.md) | 101 | `result-track:261c5e509a6a2b67e3a3f0565401ce1241b57ea944872b814c632c9a4ea75f9a` |
| 11 | `theorem` | [multiplier_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/declarations/multiplier-tendsto-one--e08242f765ffd8e91e79924e.md) | 113 | `result-track:e08242f765ffd8e91e79924e028f72ba641535915169dd0a4afda3c9cdc51705` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
