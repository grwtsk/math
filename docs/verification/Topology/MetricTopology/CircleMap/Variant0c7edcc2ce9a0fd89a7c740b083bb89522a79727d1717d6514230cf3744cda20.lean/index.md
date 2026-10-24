# Verification target: GRWTSK.Topology.MetricTopology.CircleMap.Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c93ea0cb4dcd0664c2722afb5e6a555b4f1ba30",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c93ea0cb4dcd0664c2722afb5e6a555b4f1ba30`.

Source path: `GRWTSK/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean.json)

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
| 1 | `def` | [circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap--6816c9dc1f2af2c491c1448a.md) | 41 | `declaration-track:6816c9dc1f2af2c491c1448a500a8db29baad8cf775d942b1037e08d3e1b6b60` |
| 2 | `theorem` | [circleMap_sub_center](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-sub-center--b02423f77ab374081f25a00a.md) | 44 | `result-track:b02423f77ab374081f25a00a6efddbadd9d9b733c289d3060c7786e22005b5f7` |
| 3 | `theorem` | [circleMap_zero](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-zero--fe5478ae3bc0dba3f8a09d59.md) | 47 | `result-track:fe5478ae3bc0dba3f8a09d595cf64275e5b097a58985f3dc7b4bc63558878037` |
| 4 | `theorem` | [norm_circleMap_zero](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/norm-circlemap-zero--15699189dcef478558e08afa.md) | 50 | `result-track:15699189dcef478558e08afa234eab39cd97d6bff653c518da354aa29bb732d9` |
| 5 | `theorem` | [circleMap_notMem_ball](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-notmem-ball--23f9d1bf53dad63f7e22c50d.md) | 52 | `result-track:23f9d1bf53dad63f7e22c50d73cae35018b0e028a26edeabb022046581890b66` |
| 6 | `theorem` | [circleMap_ne_mem_ball](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-ne-mem-ball--b6974b061c81a098791d6b5b.md) | 55 | `result-track:b6974b061c81a098791d6b5b0f225dd3948f7c5da018a19033294ec6c2e1b3d4` |
| 7 | `theorem` | [circleMap_mem_sphere'](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-mem-sphere--3a335a16a724a8111cd4894c.md) | 59 | `result-track:3a335a16a724a8111cd4894c4c5afb5098b83695e3295c75f4be1cb4cde06aeb` |
| 8 | `theorem` | [circleMap_mem_sphere](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-mem-sphere--4f6d05f626e945a7292bd699.md) | 61 | `result-track:4f6d05f626e945a7292bd699a9850e9572961f021ec095c79d553e142deca34e` |
| 9 | `theorem` | [circleMap_mem_closedBall](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-mem-closedball--8a92304c583aac290c07714e.md) | 65 | `result-track:8a92304c583aac290c07714e395308659c2796f06e0fa16856ce30cab94363b2` |
| 10 | `theorem` | [norm_circleMap_sub_le](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/norm-circlemap-sub-le--d57173a90851b597c511cc08.md) | 69 | `result-track:d57173a90851b597c511cc0847eb7020dce0848855001427e5054216ac3f3eef` |
| 11 | `theorem` | [exists_ball_forall_le_norm_circleMap_sub](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/exists-ball-forall-le-norm-circlemap-sub--98eff7f578bd0e20134b72d4.md) | 76 | `result-track:98eff7f578bd0e20134b72d4e0ba32816ad4fb4f8cd36fb4f72c7e61a80be59a` |
| 12 | `theorem` | [circleMap_eq_center_iff](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-eq-center-iff--4615f1cdd2046f404ca1190c.md) | 91 | `result-track:4615f1cdd2046f404ca1190c4c2c0dbdb995e56ae15b58289b02565bf3ce4952` |
| 13 | `theorem` | [circleMap_zero_radius](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-zero-radius--3758af3d73c546e0e85d5015.md) | 95 | `result-track:3758af3d73c546e0e85d5015d0295356af68908be0bc58bf487205b811fb738c` |
| 14 | `theorem` | [circleMap_ne_center](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-ne-center--152d1949ba15db0114277df4.md) | 98 | `result-track:152d1949ba15db0114277df42cb313b4673edae4a5f810ae6ff84bb62103b21b` |
| 15 | `lemma` | [circleMap_zero_mul](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-zero-mul--a6e36c863fc7c623cca3107d.md) | 101 | `result-track:a6e36c863fc7c623cca3107d4b93beb9a9ea4295add7698cf13f22b0787d766d` |
| 16 | `lemma` | [circleMap_zero_div](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-zero-div--0565447fdd0b828e720efd8f.md) | 106 | `result-track:0565447fdd0b828e720efd8f3c1ada578e027bd4c3b53abc06f1268cf79c0a67` |
| 17 | `lemma` | [circleMap_zero_inv](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-zero-inv--3fc5a7ca302a2c1b03e09d3e.md) | 111 | `result-track:3fc5a7ca302a2c1b03e09d3ebdfada578eff60abf322e91e4154ad3701518319` |
| 18 | `lemma` | [circleMap_zero_pow](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-zero-pow--16a40a4c6104209d19fd358e.md) | 114 | `result-track:16a40a4c6104209d19fd358e8986e4bb58b41a39030b4d962007d1e4e5c3ae67` |
| 19 | `lemma` | [circleMap_zero_zpow](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-zero-zpow--f44d11f112ad45189ad9280d.md) | 118 | `result-track:f44d11f112ad45189ad9280d4e22b432214c6eae5c4309b8b90826e5ddb55dd8` |
| 20 | `lemma` | [conj_circleMap_zero](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/conj-circlemap-zero--f31df1310649f33a25d2116e.md) | 122 | `result-track:f31df1310649f33a25d2116ea3ca3668459d0d75dd89b4786513e7635f7c0e4c` |
| 21 | `lemma` | [conj_circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/conj-circlemap--cdb8ba1d694156720df26e30.md) | 126 | `result-track:cdb8ba1d694156720df26e305e3d05656976fafafbbd35670fa28962b07d7d15` |
| 22 | `lemma` | [circleMap_zero_re](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-zero-re--2336fcabd7c171704abbcf09.md) | 130 | `result-track:2336fcabd7c171704abbcf09d3ffa5cf79689b4a8a21fbe651926a597278562d` |
| 23 | `lemma` | [circleMap_zero_im](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-zero-im--28fa420780e744d063ceddfa.md) | 133 | `result-track:28fa420780e744d063ceddfab807084b6a48f3bddee5869d050bd257708d46f8` |
| 24 | `lemma` | [circleMap_pi_div_two](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-pi-div-two--b426bb9721bcbe8dd12097a4.md) | 136 | `result-track:b426bb9721bcbe8dd12097a43d0529d79bca3ee2aae8165bd16699983be93da1` |
| 25 | `lemma` | [circleMap_neg_pi_div_two](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-neg-pi-div-two--da4b5e862f9a45a1f8cefac6.md) | 139 | `result-track:da4b5e862f9a45a1f8cefac68ee513b52f217228ea67263858c1b468e03ee0a3` |
| 26 | `theorem` | [periodic_circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/periodic-circlemap--44b060cd55b1210ac2afb69e.md) | 144 | `result-track:44b060cd55b1210ac2afb69ed41e6cecb3d4868b58824a3d067781223baa50a3` |
| 27 | `theorem` | [Set.Countable.preimage_circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/set-countable-preimage-circlemap--9dd6eb9f77c7c06bfc76bbca.md) | 147 | `result-track:9dd6eb9f77c7c06bfc76bbca1127269215b8d77c4b6d34ed554f57945958e26d` |
| 28 | `lemma` | [circleMap_eq_circleMap_iff](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/circlemap-eq-circlemap-iff--f56c959b3e5b6866b6ba9119.md) | 155 | `result-track:f56c959b3e5b6866b6ba91196ffb610bf8b39abd8dc562c3ca7e3b9583f2c6c7` |
| 29 | `lemma` | [eq_of_circleMap_eq](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/eq-of-circlemap-eq--134eee22aaa586b75c977e19.md) | 161 | `result-track:134eee22aaa586b75c977e195f6e6ed49d2f13f8d95574bda4aa7b958eb99158` |
| 30 | `theorem` | [injOn_circleMap_of_abs_sub_le](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/injon-circlemap-of-abs-sub-le--d217c8e8b89324fea72b0ae3.md) | 176 | `result-track:d217c8e8b89324fea72b0ae34c101a026a87e0d2580c5cf17413d65331da1f93` |
| 31 | `theorem` | [injOn_circleMap_of_abs_sub_le'](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant0c7edcc2ce9a0fd89a7c740b083bb89522a79727d1717d6514230cf3744cda20.lean/declarations/injon-circlemap-of-abs-sub-le--2ab609b7c255c36c5dc039c5.md) | 184 | `result-track:2ab609b7c255c36c5dc039c53e36e4a778afe846dd4a2f6b0741cd841a403585` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
