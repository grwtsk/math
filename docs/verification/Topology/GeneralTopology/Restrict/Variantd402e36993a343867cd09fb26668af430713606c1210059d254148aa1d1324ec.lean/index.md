# Verification target: GRWTSK.Topology.GeneralTopology.Restrict.Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2c64f4e34fc652470fac9ca6b9e468838066640",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2c64f4e34fc652470fac9ca6b9e468838066640`.

Source path: `GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.NonUnital` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/homeomorph--29ae842cdfbc963efa40806e.md) | 31 | `declaration-track:29ae842cdfbc963efa40806e28dc4f5185e9f201503bd2d75d1a80d06059f0ea` |
| 2 | `lemma` | [compactSpace](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/compactspace--957726d15ae0d79742051e43.md) | 43 | `result-track:957726d15ae0d79742051e43a18ee0d6bbf4bc17d9e1100d48850e031961f159` |
| 3 | `def` | [starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/staralghom--71d569fefadf400222830a99.md) | 55 | `declaration-track:71d569fefadf400222830a9937a32cf2d5617493e03c07d7f4c7576bee0368c0` |
| 4 | `lemma` | [starAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/staralghom-id--7f15a624891229982080fa19.md) | 74 | `result-track:7f15a624891229982080fa196a2d7cf38ca803369d46a36f9ec79a65832b0071` |
| 5 | `lemma` | [isClosedEmbedding_starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/isclosedembedding-staralghom--fa256844eef282849404aa2b.md) | 85 | `result-track:fa256844eef282849404aa2bd4424273f0d4af0f90a27a81b9fcc965b47fb4e4` |
| 6 | `theorem` | [cfc](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/cfc--2e879af93b4a021418841dc0.md) | 97 | `result-track:2e879af93b4a021418841dc0198677945ac9b2432bc1252579e1d416e3629cbb` |
| 7 | `lemma` | [cfcHom_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/cfchom-eq-restrict--2fa90dcf69cb1d3be1cac9e3.md) | 142 | `result-track:2fa90dcf69cb1d3be1cac9e31158649bb1b982b93c4030bec48754ea984344fd` |
| 8 | `lemma` | [cfc_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/cfc-eq-restrict--bda99d45b899e0108f8ec124.md) | 149 | `result-track:bda99d45b899e0108f8ec1240830b25e9a1c501d4fcb0973606f0d324d15455c` |
| 9 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/homeomorph--04510598524006fc0cc42630.md) | 175 | `declaration-track:04510598524006fc0cc42630cd42aceaab04ba8219f1777147ade3bb02d5e1d3` |
| 10 | `def` | [nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/nonunitalstaralghom--435c0318a265f4d0b7b1a287.md) | 194 | `declaration-track:435c0318a265f4d0b7b1a287d2c877637f4d3190a2e88e52b5f056979e081ffd` |
| 11 | `lemma` | [nonUnitalStarAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/nonunitalstaralghom-id--ac0813fed98e6e69cc1bd3c6.md) | 214 | `result-track:ac0813fed98e6e69cc1bd3c62b706bc73f797ea979b56847db00676cac1343fc` |
| 12 | `lemma` | [isClosedEmbedding_nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/isclosedembedding-nonunitalstaralghom--b126a2a1f88c7190e17ace93.md) | 225 | `result-track:b126a2a1f88c7190e17ace935d6fb40736e5a5be9638b6eabf055da7f0020585` |
| 13 | `theorem` | [cfc](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/cfc--0f7f4c7cbcb485d85d14ebc4.md) | 240 | `result-track:0f7f4c7cbcb485d85d14ebc479e9985b3607b03cbaba121b12ec452bc8814af3` |
| 14 | `lemma` | [cfcₙHom_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/cfc-hom-eq-restrict--caf30f641e853c808e0ff4ad.md) | 288 | `result-track:caf30f641e853c808e0ff4ad5b193705dd83a0e9175ef554476ea4f660cffaf5` |
| 15 | `lemma` | [cfcₙ_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/declarations/cfc-eq-restrict--51ff4fcedfdcbcc345d5f71a.md) | 295 | `result-track:51ff4fcedfdcbcc345d5f71a6645b93f0f8037c987fbcc5bf33948fb45e7da51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
