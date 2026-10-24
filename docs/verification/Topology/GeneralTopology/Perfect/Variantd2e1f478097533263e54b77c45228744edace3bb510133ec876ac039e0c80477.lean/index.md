# Verification target: GRWTSK.Topology.GeneralTopology.Perfect.Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf2191ec8dcca4ee9d086d594ffbbc28bc578870",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf2191ec8dcca4ee9d086d594ffbbc28bc578870`.

Source path: `GRWTSK/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean.json)

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
| 1 | `theorem` | [AccPt.nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/accpt-nhds-inter--53f62228274fd10580ba592c.md) | 75 | `result-track:53f62228274fd10580ba592ca772834046237f0af007e761915db903ec05b8e4` |
| 2 | `def` | [Preperfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/preperfect--dac8e9f093fd3a207c7d9a12.md) | 86 | `declaration-track:dac8e9f093fd3a207c7d9a12e61dfd3f32d3470a315445ba7f31e8fc8ec91ae3` |
| 3 | `structure` | [Perfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/perfect--a2779a454f3bd9a61a8ae744.md) | 93 | `declaration-track:a2779a454f3bd9a61a8ae744b03e2678c5b67711ae71abb4a2beb4845e875384` |
| 4 | `theorem` | [preperfect_iff_nhds](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/preperfect-iff-nhds--f7c364cdf45d38c38f123207.md) | 97 | `result-track:f7c364cdf45d38c38f1232077e98a07f6b08c22945d3e14e72df85b08d2be41f` |
| 5 | `class` | [PerfectSpace](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/perfectspace--ee9c414013dfcca3d16a9f39.md) | 109 | `declaration-track:ee9c414013dfcca3d16a9f3935540d5fbac205db9f43db9fc5ab10dbddc9b20d` |
| 6 | `theorem` | [PerfectSpace.univ_perfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/perfectspace-univ-perfect--da443627683fde16bbdfcda2.md) | 112 | `result-track:da443627683fde16bbdfcda2af31993bfbf33c97a2e8cc61bde80150a08d1a3a` |
| 7 | `theorem` | [Preperfect.open_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/preperfect-open-inter--496c0674495b11db122e82fa.md) | 120 | `result-track:496c0674495b11db122e82fa1a6540e298a4701efcdc7db237bc5ade34a787c1` |
| 8 | `theorem` | [Preperfect.perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/preperfect-perfect-closure--894668de58554a9e548238ae.md) | 128 | `result-track:894668de58554a9e548238ae0d8606e2d55e9ea96db3d5434097aff7cfe53c98` |
| 9 | `theorem` | [IsOpen.preperfect](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/isopen-preperfect--5e636378e23aadb79e7fd3cc.md) | 141 | `result-track:5e636378e23aadb79e7fd3cca159f1ce5b1a6ca933a6003bde95d88f3bdbad9d` |
| 10 | `theorem` | [IsOpen.perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/isopen-perfect-closure--54bb8baca819def3e96fb93a.md) | 148 | `result-track:54bb8baca819def3e96fb93a7193cf895d8a77841820df31074fa63a89cbe854` |
| 11 | `theorem` | [preperfect_iff_perfect_closure](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/preperfect-iff-perfect-closure--04f1d4518c3d90127dd65b17.md) | 153 | `result-track:04f1d4518c3d90127dd65b173c899c0ca217acb69e47f030038d916f11e6b2cc` |
| 12 | `theorem` | [Perfect.closure_nhds_inter](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/perfect-closure-nhds-inter--6b0e03ce562c260f111016f3.md) | 167 | `result-track:6b0e03ce562c260f111016f3e1c6ae8c3b3a79d346b4f94137a4499cc29339e7` |
| 13 | `theorem` | [Perfect.splitting](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/perfect-splitting--d0dcdccc56ca9abcfddb2474.md) | 177 | `result-track:d0dcdccc56ca9abcfddb24740932ff73404319e40dc635f6449bf0a3a5ab3d0b` |
| 14 | `lemma` | [IsPreconnected.preperfect_of_nontrivial](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/ispreconnected-preperfect-of-nontrivial--933f2626b89a74a7e91c0713.md) | 198 | `result-track:933f2626b89a74a7e91c0713a00b9b037ac61362cee05f5e1ee63a61734148ac` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/instance--8c096518bab9ea5753bf8fb4.md) | 218 | `declaration-track:8c096518bab9ea5753bf8fb465739bab2736f90797587b8380d18b60617ae4a4` |
| 16 | `theorem` | [exists_countable_union_perfect_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/exists-countable-union-perfect-of-isclosed--bc9f2f7d764f5179c4ac4f32.md) | 230 | `result-track:bc9f2f7d764f5179c4ac4f328c1d765485b6b72faba0223cafeee6ab19286a92` |
| 17 | `theorem` | [exists_perfect_nonempty_of_isClosed_of_not_countable](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/exists-perfect-nonempty-of-isclosed-of-not-countable--cc348711bf46c0ada43fa980.md) | 265 | `result-track:cc348711bf46c0ada43fa9804aba8915d9a7c751d1b29c7202e8affdf738409b` |
| 18 | `theorem` | [perfectSpace_iff_forall_not_isolated](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/perfectspace-iff-forall-not-isolated--eaeff60451b1cca4d7a45600.md) | 286 | `result-track:eaeff60451b1cca4d7a456003534f290678fbd17468b6cc048662c9e8ffc3777` |
| 19 | `instance` | [PerfectSpace.not_isolated](../../../../../mathematics/Topology/GeneralTopology/Perfect/Variantd2e1f478097533263e54b77c45228744edace3bb510133ec876ac039e0c80477.lean/declarations/perfectspace-not-isolated--72c3709a5c751d556ab9aae3.md) | 289 | `declaration-track:72c3709a5c751d556ab9aae321034861b9ef096899615f489798674ee594b686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
