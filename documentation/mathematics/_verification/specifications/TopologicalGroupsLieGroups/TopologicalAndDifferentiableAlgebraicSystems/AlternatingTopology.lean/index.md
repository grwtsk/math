# Verification target: Alternating Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed7a784918444b6dfd9515da2fb8f8680dc2bf3d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed7a784918444b6dfd9515da2fb8f8680dc2bf3d`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Multilinear.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Alternating.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/insttopologicalspace.md) | 31 | `declaration-track:144016586399ef327ceff12a21b774a1078e0fc8b5b7e9b21bb71928cd5a2609` |
| 2 | `lemma` | [isClosed_range_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/isclosed-range-tocontinuousmultilinearmap.md) | 34 | `result-track:ee05eb945c1a139da9b999737b774c5f278572380c0a451ac3078331bdeea583` |
| 3 | `instance` | [instUniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instuniformspace.md) | 47 | `declaration-track:f51c0a245234d7c3b866eb2200585edd8145de102acc22e814982b72a4169c92` |
| 4 | `lemma` | [isUniformEmbedding_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/isuniformembedding-tocontinuousmultilinearmap.md) | 50 | `result-track:008e79d85cd62c6a02cc706dfe96ae341ed53edc6902bd55234c645b2de57b63` |
| 5 | `lemma` | [uniformContinuous_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/uniformcontinuous-tocontinuousmultilinearmap.md) | 55 | `result-track:f8381df226cd6919888fbe6a47e82d7681c5f9e6f06bd67f7267f06462b91877` |
| 6 | `theorem` | [uniformContinuous_coe_fun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/uniformcontinuous-coe-fun.md) | 59 | `result-track:921ae6992a5798b5540280d5e89ce22caa73603cdf729d041a36372268ae1863` |
| 7 | `theorem` | [uniformContinuous_eval_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/uniformcontinuous-eval-const.md) | 64 | `result-track:5389f8431c14405bbce2b238264082f4b1afee4649ee499f04e909a14558872d` |
| 8 | `instance` | [instIsUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instisuniformaddgroup.md) | 68 | `declaration-track:575aa725b185b181feae0d18548bddde8b5923b73e283d565bdc680b14207c05` |
| 9 | `instance` | [instUniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instuniformcontinuousconstsmul.md) | 72 | `declaration-track:1c9bd78d4cae4caa1f58b5b23374e57c87d4461ed1b100fae2613bb1b3156778` |
| 10 | `theorem` | [isUniformInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/isuniforminducing-postcomp.md) | 77 | `result-track:77126b6e9d6571805c0dfcb00f285bf746ddd49b1e3829c814a654792d6f5168` |
| 11 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/completespace.md) | 89 | `result-track:be571e8e8052f2743204ad25790dd3abad62f25d1197885af9e80fa10dbf0809` |
| 12 | `instance` | [instCompleteSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instcompletespace.md) | 104 | `declaration-track:37502a366399d68be3f8cb7972856de2b9fc59a7ce6e465865e20a8e74e60a26` |
| 13 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/isuniformembedding-restrictscalars.md) | 115 | `result-track:763c6230e84a33299f3e11c0c99c49fcfd40ae441a5c7bf814b1aad40e637340` |
| 14 | `theorem` | [uniformContinuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/uniformcontinuous-restrictscalars.md) | 121 | `result-track:3b996dee3bf7e9fbd3fd57e19773a6ae000638ed438c55f020ec7a33a40aef4c` |
| 15 | `lemma` | [isEmbedding_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/isembedding-tocontinuousmultilinearmap.md) | 131 | `result-track:76b060ea4f80fef8135f49f2afc3226112a043c69d7b1e15b07947e4472f9af2` |
| 16 | `instance` | [instIsTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instistopologicaladdgroup.md) | 140 | `declaration-track:6bb2fc62016896d33e71192272d1d5ae6aeb7c96e0d42305b1bacceb1b3ecb89` |
| 17 | `lemma` | [continuous_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/continuous-tocontinuousmultilinearmap.md) | 145 | `result-track:d5f34ffbb1636290c2f3655faf2e50f0528f1afb9fc0332cc777789bb0397cb9` |
| 18 | `instance` | [instContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instcontinuousconstsmul.md) | 149 | `declaration-track:b7ede812c0289cd352206bd9df7e3f3863855d8770368df812bb5673ef1aee92` |
| 19 | `instance` | [instContinuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instcontinuoussmul.md) | 154 | `declaration-track:2aa653558647d0c9cbc09d5aba8897e7dba93f7eec92169a58b147b4ef9c3943` |
| 20 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 157 | `result-track:2784cb1633259f49526e03e228cae7913f65a01d303ae5208dfb33e8fa6f21fe` |
| 21 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/hasbasis-nhds-zero.md) | 165 | `result-track:d9136704ae42f7f6d976d83e86ec2552990607f254d39c8a33b25bb8b5453fb2` |
| 22 | `lemma` | [isClosedEmbedding_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/isclosedembedding-tocontinuousmultilinearmap.md) | 173 | `result-track:85961f1befcb38cce1a6308b27ef882d4249d497df6bfd751791458956c409d9` |
| 23 | `instance` | [instContinuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instcontinuousevalconst.md) | 178 | `declaration-track:9c76174088cbf3ea2b61aba6acbafc16271e9b9a08eb718d4dbaef6aa3052bf1` |
| 24 | `instance` | [instT2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instt2space.md) | 181 | `declaration-track:1252bd28e05b9dd7cf8e51fb64b8ae2f1c34f87b8257095989b1a5987af252e8` |
| 25 | `instance` | [instT3Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/instt3space.md) | 184 | `declaration-track:ec6a6c404cd2ea8b13452ee95dbb90c894ebcc2b576c5d779db1a47df5cd07df` |
| 26 | `def` | [toContinuousMultilinearMapCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/tocontinuousmultilinearmapclm.md) | 190 | `declaration-track:be7dd67dc1c15793653dcf90868d5ec388879c3dea70ebebbc627be3819e385e` |
| 27 | `theorem` | [isEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/isembedding-restrictscalars.md) | 200 | `result-track:6c0c2af57af9ee46570cb925b5e2f2426e607cc74fc9060c68c2b722ff02a236` |
| 28 | `theorem` | [continuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/continuous-restrictscalars.md) | 210 | `result-track:8237ebcdffea88ce333bb4dd546ae708dbfd5d8a128272343af0b0dda1540fee` |
| 29 | `def` | [restrictScalarsCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/restrictscalarsclm.md) | 217 | `declaration-track:508329d504e0543b8b7ac2a6858551e2effbd77371141de0328ad94b0fb6afcd` |
| 30 | `def` | [apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/apply.md) | 228 | `declaration-track:71e91d9e6774e1c1f727faf03bf33f21d1dcfa97482843d63a48cb8b2d5b5210` |
| 31 | `lemma` | [apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/apply-apply.md) | 237 | `result-track:ad87c9b584ed20fed0c213e3e89e95c08b92d4b5080649bb9a9c0f1b7a741058` |
| 32 | `theorem` | [hasSum_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/hassum-eval.md) | 240 | `result-track:a01ac639566533dcf5039bae511fffe7e3a31156702f7a2d84e761c209ab95ca` |
| 33 | `theorem` | [tsum_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopology.lean/declarations/tsum-eval.md) | 245 | `result-track:b3cbb0ce66374cf5c6abf006bf0a35ff0348efcc70f35759246a38270f8d3f26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70d05be0ae859a68c386ea3f843c457cbb99424d1c06f6e982ca346546f6e651 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variant5a6d53ffa44384fcede658dbc91e3777e51cbbeaae472ec15af4978132c9c0d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
