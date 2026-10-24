# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f00629c9cd1c121644dafe22c8d088fe1e68c14d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f00629c9cd1c121644dafe22c8d088fe1e68c14d`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [starL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/starl--3352a4b220e62f17e7b4da3d.md) | 43 | `declaration-track:3352a4b220e62f17e7b4da3dab8f90c2fbdb4b194faf9f37b4e95515146acb91` |
| 2 | `theorem` | [toLinearEquiv_starL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/tolinearequiv-starl--98eac02603b0cd16e9589e67.md) | 47 | `result-track:98eac02603b0cd16e9589e67b89aeb095960fa55f54bb1bfd0bc7c715a7fc291` |
| 3 | `theorem` | [symm_starL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/symm-starl--d86a9ac8208ef003d07f82ed.md) | 51 | `result-track:d86a9ac8208ef003d07f82ed85af9b45c20bebbee1dd902c5b39a9cb5e13314f` |
| 4 | `theorem` | [starL_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/starl-symm-apply--0f8cf3e8936f65c236675c56.md) | 55 | `result-track:0f8cf3e8936f65c236675c56d980dda6ba1955dc0f80ed1937d8058cfa3dd72c` |
| 5 | `def` | [starL'](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/starl--53289a6f31705299be5b166b.md) | 69 | `declaration-track:53289a6f31705299be5b166b7ef38886e5a6b3665846cb3c3cf1f23363ce719f` |
| 6 | `theorem` | [symm_starL'](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/symm-starl--c69fd67cd770bb69e70a3c77.md) | 78 | `result-track:c69fd67cd770bb69e70a3c77e21e08f832d85e91e694ab025d9e864709c45ef5` |
| 7 | `theorem` | [starL'_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/starl-symm-apply--483c5e2e83c501794b6dd1a9.md) | 82 | `result-track:483c5e2e83c501794b6dd1a9b915ded18e936fd6306bcead4506e436ee875772` |
| 8 | `theorem` | [continuous_selfAdjointPart](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/continuous-selfadjointpart--b8b00e8f432358904bc7f518.md) | 91 | `result-track:b8b00e8f432358904bc7f5184bdb1d97ed770f612b4676c276aa1bfde21809b4` |
| 9 | `theorem` | [continuous_skewAdjointPart](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/continuous-skewadjointpart--9307391bd95dbcb2ae7ef8b7.md) | 96 | `result-track:9307391bd95dbcb2ae7ef8b703713761c2ea8001b9a493d452a023ba65206cc0` |
| 10 | `theorem` | [continuous_decomposeProdAdjoint](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/continuous-decomposeprodadjoint--f9b968b602b9244a17221588.md) | 101 | `result-track:f9b968b602b9244a17221588e7caf12abd47a9d8000bee7c8cbb8c47c055fe42` |
| 11 | `theorem` | [continuous_decomposeProdAdjoint_symm](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/continuous-decomposeprodadjoint-symm--333dbf0a3a96eab450ce13fd.md) | 106 | `result-track:333dbf0a3a96eab450ce13fd83a3ab40b813b7fb3b88f33b13dc58baf5c874ac` |
| 12 | `def` | [selfAdjointPartL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/selfadjointpartl--72495464186c4ca339c4d4e1.md) | 112 | `declaration-track:72495464186c4ca339c4d4e19af20640da72723fcf6f3b38b8d452bacd61d091` |
| 13 | `def` | [skewAdjointPartL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/skewadjointpartl--461bb8b6b26824f3b747da5b.md) | 118 | `declaration-track:461bb8b6b26824f3b747da5b5777190b6e725f1c6104b917f012b92925406be4` |
| 14 | `def` | [StarModule.decomposeProdAdjointL](../../../../../mathematics/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/declarations/starmodule-decomposeprodadjointl--25229398510b2d759434b498.md) | 128 | `declaration-track:25229398510b2d759434b49832ff383214b0cd122fc3b16f5557d68b9ae32502` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
