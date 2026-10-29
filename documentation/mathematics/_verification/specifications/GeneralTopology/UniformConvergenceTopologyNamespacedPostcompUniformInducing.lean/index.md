# Verification target: Uniform Convergence Topology Namespaced Postcomp Uniform Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61908578d325fa0d2be8fbb6bc9f2676913a8b6d",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/index.md) · [Full source](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61908578d325fa0d2be8fbb6bc9f2676913a8b6d`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformFun](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformfun.md) | 154 | `declaration-track:3c56efd768b94f512289d83e7a52f069ef754b8f2854ef5bd89eee02f9c6ebae` |
| 2 | `def` | [UniformOnFun](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformonfun.md) | 161 | `declaration-track:e35ed3bd462964f81fefb419cbe9cb9b5391667db773a457be710ccfba8649b9` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/instance.md) | 176 | `declaration-track:4f5457070fe04d229c04122e1bbf14753e90187183a878935ae9f0e34844e43d` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/instance-source-edition-3.md) | 179 | `declaration-track:9da6af4636b3edb497280903b76dcfc02d03f0536d5ee43599d9b52a768c291c` |
| 5 | `def` | [UniformFun.ofFun](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformfun-offun.md) | 183 | `declaration-track:bad64b3b64a6ab30302d605348ea406186681d2d40db7f12b77ad16159be5cd7` |
| 6 | `def` | [UniformOnFun.ofFun](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformonfun-offun.md) | 188 | `declaration-track:e6fbe849a29b3919b5aef53d31c9b2fd9da3c433c9a44f7fe7f5118eab2b88e5` |
| 7 | `def` | [UniformFun.toFun](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformfun-tofun.md) | 193 | `declaration-track:494b743cc723700e0e184d6d4782a2ab4ce7f83f73782d5898ae0c3a0b456eb0` |
| 8 | `def` | [UniformOnFun.toFun](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformonfun-tofun.md) | 198 | `declaration-track:8ca06acdb60040f6f9e2bc8fa7ee993f32d3281636455452bec398ba7dc3f274` |
| 9 | `def` | [gen](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/gen-source-edition-2.md) | 216 | `declaration-track:469f1a3a4c433100a8657c6389881c220bb969950237b97c23b50ee7b8b47036` |
| 10 | `theorem` | [isBasis_gen](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/isbasis-gen-source-edition-2.md) | 224 | `result-track:f58e508d74a4cd7d5a1974b3a0e42712179154a246329df9f3927ef95a5c1761` |
| 11 | `def` | [basis](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/basis.md) | 235 | `declaration-track:cd12985a6722525707737181540881fd4c8907cd64cf7ac45ddb54e1c954f999` |
| 12 | `def` | [filter](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/filter.md) | 242 | `declaration-track:57209374d15d84ce3758c7a04027ea77073fbf85fc5940ae99f304573966de22` |
| 13 | `def` | [phi](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/phi.md) | 250 | `declaration-track:d89940691dc5737e0a79685394717632c1283d068da3a6028a60cedb62bec289` |
| 14 | `theorem` | [gc](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/gc.md) | 267 | `result-track:baba70c6098364ca27841500c4a17a3d4d68cb453c48a8778917914a2d51f2e6` |
| 15 | `def` | [uniformCore](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformcore.md) | 288 | `declaration-track:de94841a81977fe6c37a52e7425cb45b1e3ecf1da425d293f9f9c3329cd52918` |
| 16 | `instance` | [uniformSpace](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformspace-source-edition-2.md) | 303 | `declaration-track:f7fdc8e5fef67f6389383d37581414a214b5595a833ce4d40a40bca7c81cf99a` |
| 17 | `instance` | [topologicalSpace](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/topologicalspace-source-edition-2.md) | 307 | `declaration-track:1db7d0701e342aabd25af2d32dd5f53ad0053e8121e808b57d8fde2db7d76969` |
| 18 | `theorem` | [hasBasis_uniformity](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-uniformity-source-edition-2.md) | 315 | `result-track:b5fec8eae03670fb1711e53cb869062fbccedf740ab453512ab757973a357010` |
| 19 | `theorem` | [hasBasis_uniformity_of_basis](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-uniformity-of-basis.md) | 323 | `result-track:0cd3c8eb8d0503ee843724f525517735bb0fd5a288ec3c4cc69d3badfc6bda32` |
| 20 | `theorem` | [hasBasis_nhds_of_basis](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-nhds-of-basis.md) | 334 | `result-track:a5a572ae44dd73d6e8f889a5c887b1d83b7448b0dc053b7cca63b1d38dd95114` |
| 21 | `theorem` | [hasBasis_nhds](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-nhds.md) | 342 | `result-track:44efa61f13d53175940f9335e5d1f735671d26f7333f41f121f1581537ec4d36` |
| 22 | `theorem` | [uniformContinuous_eval](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformcontinuous-eval.md) | 350 | `result-track:47645b7a2016628a736d38f94aeea52e7f6a2d2d356bd952b77147ed68e63bc7` |
| 23 | `theorem` | [mono](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/mono.md) | 362 | `result-track:0349b16506acfc64fe6a2717d69cd74f529c8d66571427a5965ec5aa081c8aff` |
| 24 | `theorem` | [iInf_eq](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/iinf-eq.md) | 368 | `result-track:a991d99a7195448e06513182d20a3c7eba0362ab7424f1dbccedd7d03985fc52` |
| 25 | `theorem` | [inf_eq](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/inf-eq-source-edition-2.md) | 379 | `result-track:fd53d74fbac6c5b1a79e6b7585e444a3e0e302c1e5354d8473a8b88971fadb06` |
| 26 | `theorem` | [comap_eq](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/comap-eq-source-edition-2.md) | 391 | `result-track:b84cf4384042259fb444ce78686ff074346f25c25a26cdc99ff6d0a924276933` |
| 27 | `theorem` | [postcomp_uniformContinuous](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/postcomp-uniformcontinuous.md) | 417 | `result-track:8908a29f7dd6a4b1461f1f7080907243080aa717302357fef30adb1055d85d5a` |
| 28 | `theorem` | [postcomp_uniformInducing](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/postcomp-uniforminducing-source-edition-2.md) | 435 | `result-track:81a31e35b1ec61bb950e3808e8aeb644f6abc5866941d49fc9f70f684aab0fc5` |
| 29 | `def` | [congrRight](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/congrright-source-edition-2.md) | 449 | `declaration-track:c5be1ee8dd7d31c1a547ec8a22aaa01660777d2e3d6fc9b2fc86a6038f4e57a4` |
| 30 | `theorem` | [precomp_uniformContinuous](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/precomp-uniformcontinuous.md) | 461 | `result-track:2e7f01d23345ee3c6378c638905c7734d2ccfc93e049f2f8e1fd893d6b71b897` |
| 31 | `def` | [congrLeft](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/congrleft.md) | 474 | `declaration-track:7525f1d871db9b99efdb09a35b9a9574bef9cc3f25679969226927178701cb90` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/instance-source-edition-2.md) | 483 | `declaration-track:759ee9431361823f594dc65b129100e582a4e7519f40e532798771f2bc53025d` |
| 33 | `theorem` | [uniformContinuous_toFun](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformcontinuous-tofun-source-edition-2.md) | 493 | `result-track:6e83d2aa325030dee9e2ace6aa37bf40025cb8453a6dc65c4330fd9d5e3f4d55` |
| 34 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/tendsto-iff-tendstouniformly.md) | 502 | `result-track:4f18555e90aae8f13c09fc1d43cb46d2061bc975bac4f2a2ec5da054fcab9304` |
| 35 | `def` | [uniformEquivProdArrow](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformequivprodarrow-source-edition-2.md) | 510 | `declaration-track:4fbf8aa8da0eac0768ffa5d9672a5a9ad6f3113890dad5393997157bfb81f87b` |
| 36 | `def` | [uniformEquivPiComm](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformequivpicomm-source-edition-2.md) | 536 | `declaration-track:dd4e93ff0b23357c396677f3c805426711050f925bcacda03deb489bb2e92b77` |
| 37 | `def` | [gen](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/gen.md) | 573 | `declaration-track:3ea4ac5328a7cffb1fb28b245e2fbd1d03e77c81cd6a32f6c08235193a21825a` |
| 38 | `theorem` | [gen_eq_preimage_restrict](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/gen-eq-preimage-restrict.md) | 582 | `result-track:5c4ef9329ba07eeac6df5f4cbdd625a3c1efe46ec867aecd5dbeb84261efba1b` |
| 39 | `theorem` | [gen_mono](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/gen-mono.md) | 591 | `result-track:64da4beb61d773ef1507fb37424bf4d208a79054578e7b21fa5ee6a0c6ff3182` |
| 40 | `theorem` | [isBasis_gen](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/isbasis-gen.md) | 600 | `result-track:226c5fcd83656516d77da0d21f9f05057319ecac64bc7597bc39a06ad8dc1684` |
| 41 | `instance` | [uniformSpace](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformspace.md) | 618 | `declaration-track:ea43b3ac540820786a0a90a874147dab5dd737fe4be3529985e5ae0213d803a6` |
| 42 | `instance` | [topologicalSpace](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/topologicalspace.md) | 625 | `declaration-track:1ca7d11a349c515a3027917e7732869f45f24b46de92ae8b263809a169ce10ff` |
| 43 | `theorem` | [topologicalSpace_eq](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/topologicalspace-eq.md) | 631 | `result-track:7df7cae188469221cb7820c77d013e9ef9ba5b3eccff08f152e8150f9ca7311c` |
| 44 | `theorem` | [hasBasis_uniformity_of_basis_aux₁](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-uniformity-of-basis-aux.md) | 640 | `result-track:b769418c8fe8e6c73a959ae7818c35386dc2440f3fdb280bf596ed066c798a46` |
| 45 | `theorem` | [hasBasis_uniformity_of_basis_aux₂](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-uniformity-of-basis-aux-source-edition-2.md) | 648 | `result-track:c190ce2e530bf1daf40f15c85d0dfc615690daa77537665b935b1c9ae0107e65` |
| 46 | `theorem` | [hasBasis_uniformity_of_basis](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-uniformity-of-basis-source-edition-2.md) | 663 | `result-track:4e7137acb5251015ef3bb0fc260436c89f0e1b30bb991a5dd9cfe1e56804bad4` |
| 47 | `theorem` | [hasBasis_uniformity](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-uniformity.md) | 676 | `result-track:59d73dd9ceda2f366511b636bbae73051763fbc766e453a3c8fcfb1a0ca4df4b` |
| 48 | `theorem` | [hasBasis_nhds_of_basis](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-nhds-of-basis-source-edition-2.md) | 685 | `result-track:c058f30fe5f70ae0479b5ca41ff538a5ede9f1770f9211c6f7208676d76f8d45` |
| 49 | `theorem` | [hasBasis_nhds](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/hasbasis-nhds-source-edition-2.md) | 695 | `result-track:4989cb9e9907a3eed1f6d5183f3073c3ea888443a38f9db8b40c652837569a83` |
| 50 | `theorem` | [uniformContinuous_restrict](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformcontinuous-restrict.md) | 703 | `result-track:afd25dfb6ec4b279ca7d0bb989f5f1c24b96755ca0afb252756dce5dec321162` |
| 51 | `theorem` | [mono](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/mono-source-edition-2.md) | 714 | `result-track:a33f0b1d094b100d64b951fb66691f0c9503724f568748a24fc5cb976defa767` |
| 52 | `theorem` | [uniformContinuous_eval_of_mem](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformcontinuous-eval-of-mem.md) | 723 | `result-track:13d1a6b656bd97c0b22c2663f4785fcf5fcd651c52cdd1b163feae9ad652c8cc` |
| 53 | `theorem` | [iInf_eq](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/iinf-eq-source-edition-2.md) | 733 | `result-track:c5ea703815529e406622053c9e764b4d69b72a274cdc3756710196191d04c5b3` |
| 54 | `theorem` | [inf_eq](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/inf-eq.md) | 742 | `result-track:e5df243f76e2e87fa4c0bc5a70713b32197c89187adfcb45cc15d8b2563787a3` |
| 55 | `theorem` | [comap_eq](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/comap-eq.md) | 751 | `result-track:1d8769a4ebc14eaaad9fc22ee0b7f9b66ce56b6848a9e22eb5dda259a885cfe5` |
| 56 | `theorem` | [postcomp_uniformContinuous](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/postcomp-uniformcontinuous-source-edition-2.md) | 766 | `result-track:ff4964441e2a37a45a53b1709e26e37277ae8a2d0bf32f2f17f011212b0af921` |
| 57 | `theorem` | [postcomp_uniformInducing](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/postcomp-uniforminducing.md) | 778 | `result-track:49ad64a06acaad17402a5cfc83b84b8d55878c4929034c728f81174e6ca7b2ab` |
| 58 | `def` | [congrRight](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/congrright.md) | 792 | `declaration-track:5e928a6e298c990c92434159276fddf2d9a8deaa4bbbee3b5302e0956357bda4` |
| 59 | `theorem` | [precomp_uniformContinuous](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/precomp-uniformcontinuous-source-edition-2.md) | 806 | `result-track:986330a3259bc32f242ed02b9b240464528dfe85b7df235d7a9d1d0851a2e015` |
| 60 | `def` | [congrLeft](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/congrleft-source-edition-2.md) | 835 | `declaration-track:85a516d36fa8924d132e6673e42ccbfe5ad0be5cfd01e550f527c5b48dd5fac8` |
| 61 | `theorem` | [t2Space_of_covering](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/t2space-of-covering.md) | 851 | `result-track:4692bc756c26b30ee10d02e5aa9e00ebc346342c121dc23a1f9060a1376a9e8b` |
| 62 | `theorem` | [uniformContinuous_toFun](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformcontinuous-tofun.md) | 865 | `result-track:15ceacfd356973e667b448fa21f3169b263ab79c0103701f293ae6209d47bc38` |
| 63 | `theorem` | [tendsto_iff_tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/tendsto-iff-tendstouniformlyon.md) | 875 | `result-track:6fc3c3f0da5cbf33f0fd2f25f3e1f14622d7aaa9d7dc50b04f539ea63971a01d` |
| 64 | `def` | [uniformEquivProdArrow](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformequivprodarrow.md) | 888 | `declaration-track:2ea7cda2cbbe6f03a4298884bc1c45b05962628cc8f181f80ba09ed7781cf6b4` |
| 65 | `def` | [uniformEquivPiComm](../../../../GeneralTopology/UniformConvergenceTopologyNamespacedPostcompUniformInducing.lean/declarations/uniformequivpicomm.md) | 917 | `declaration-track:7af7ffdf64f654ffa1a183db7b60657e9c4bae64ecaac0d6a06d72db8f34b1f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=957691de67374e539e3bde8757d84e3e906d4d07a6cf163b715d36a6269805f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
