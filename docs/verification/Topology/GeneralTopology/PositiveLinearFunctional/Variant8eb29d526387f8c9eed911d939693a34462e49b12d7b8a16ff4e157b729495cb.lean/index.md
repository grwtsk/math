# Verification target: GRWTSK.Topology.GeneralTopology.PositiveLinearFunctional.Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4886ea1cb08ce1395590531ce7d8455c25cfb15d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4886ea1cb08ce1395590531ce7d8455c25cfb15d`.

Source path: `GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.GelfandNaimarkSegal` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_map_le_sqrt_opNorm_mul](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/declarations/norm-map-le-sqrt-opnorm-mul--cc26ca3375153ee9c6c6cd39.md) | 35 | `result-track:cc26ca3375153ee9c6c6cd39e9312ddc6a66acd7cda045e50bea05620bb1f3d4` |
| 2 | `theorem` | [nnnorm_map_le_sqrt_opNNNorm_mul](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/declarations/nnnorm-map-le-sqrt-opnnnorm-mul--36fc54a998eb3fa48724ef65.md) | 44 | `result-track:36fc54a998eb3fa48724ef65c8f4e57a81d4390678eff6cdf352bea23847fb01` |
| 3 | `theorem` | [norm_map_sq_le_opNorm_mul](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/declarations/norm-map-sq-le-opnorm-mul--c25dc4f92e6b9d3eb28f4f0e.md) | 48 | `result-track:c25dc4f92e6b9d3eb28f4f0edbe3a3615fe5ac8096872464dec5de6d081f75d0` |
| 4 | `theorem` | [nnnorm_map_sq_le_opNNNorm_mul](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/declarations/nnnorm-map-sq-le-opnnnorm-mul--36d798467929e1fdb74bc749.md) | 52 | `result-track:36d798467929e1fdb74bc749c248a3de3c275845756a975e9174d730a306c98c` |
| 5 | `theorem` | [tendsto_nhds_opNorm](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/declarations/tendsto-nhds-opnorm--181c5ed6426240f4f65e98c9.md) | 56 | `result-track:181c5ed6426240f4f65e98c91285ddbadca9de0713fc234c6e9dea62facb4ac7` |
| 6 | `theorem` | [ofReal_opNorm_eq_map_one](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/declarations/ofreal-opnorm-eq-map-one--38ef14101e665991ddfa8d52.md) | 82 | `result-track:38ef14101e665991ddfa8d528679238e474d2841b60914ab1fe13611bf1cf62b` |
| 7 | `lemma` | [im_apply_eq_zero_of_tendsto_nhds_opNorm](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/declarations/im-apply-eq-zero-of-tendsto-nhds-opnorm--b0158db7f0b67910ada795ca.md) | 95 | `result-track:b0158db7f0b67910ada795ca33e7cfa7e499799d88451bac54372d2baa1e2768` |
| 8 | `theorem` | [monotone_iff_tendsto_nhds_opNorm](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/declarations/monotone-iff-tendsto-nhds-opnorm--162aa6ebadeec1e679200dba.md) | 123 | `result-track:162aa6ebadeec1e679200dba01fe69b07984e70bd5dc8434f7f759c2ae0b79c6` |
| 9 | `theorem` | [monotone_iff_opNorm_eq_map_one](../../../../../mathematics/Topology/GeneralTopology/PositiveLinearFunctional/Variant8eb29d526387f8c9eed911d939693a34462e49b12d7b8a16ff4e157b729495cb.lean/declarations/monotone-iff-opnorm-eq-map-one--dcf1337f0d40a6f7db48a028.md) | 138 | `result-track:dcf1337f0d40a6f7db48a0283c1ca600947d330ddb678957cfb451c0741346ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
