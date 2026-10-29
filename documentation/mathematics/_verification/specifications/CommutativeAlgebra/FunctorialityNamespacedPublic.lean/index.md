# Verification target: Functoriality Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce8fac5c6b7cd95f65f979d9b8a24d43094f1d24",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce8fac5c6b7cd95f65f979d9b8a24d43094f1d24`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduceModIdeal](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/reducemodideal.md) | 51 | `declaration-track:506e2e7b0c898c8804c15707454c2e85e525db513fe5a119f65be9160cd4c2c9` |
| 2 | `theorem` | [reduceModIdeal_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/reducemodideal-apply.md) | 67 | `result-track:77b189b5be32b67d55a3c77bf82ae7ce1eb8ddaf8761da10ef9d59bbc9dca41f` |
| 3 | `theorem` | [transitionMap_comp_reduceModIdeal](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/transitionmap-comp-reducemodideal.md) | 78 | `result-track:368cce7390b4609efaea2b59df1aa2366d70a9ced40c82186e982d6e365f3317` |
| 4 | `def` | [map](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-source-edition-2.md) | 89 | `declaration-track:7a6c0ada1e9475c443c58f46605699e0e0dd5979b38183b3975ed878e52244a8` |
| 5 | `theorem` | [map_id](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-id-source-edition-2.md) | 101 | `result-track:6e2f1581aab71beb77922b772897e29f72376cfd4b0033e9ae6ddf2408dcf7a6` |
| 6 | `theorem` | [map_comp](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-comp-source-edition-2.md) | 104 | `result-track:f48920507ecefba384fa17b9867120f904fb1ad073341303de76f1e74c6e0c2a` |
| 7 | `theorem` | [map_comp_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-comp-apply-source-edition-2.md) | 108 | `result-track:e0d736d2109f5a605ead7b331b0db4026dbcb62b8e75bf27c1798c18434e37db` |
| 8 | `theorem` | [map_zero](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-zero.md) | 113 | `result-track:0fb717260b3557f5253fd1e593df84ff2a52e2051eba39e3c6b5c61cc49ff4cc` |
| 9 | `def` | [map](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map.md) | 119 | `declaration-track:044d61951c427e9c2b11dd764b4d337de26da56d8219caca18973ea2e7a63540` |
| 10 | `theorem` | [map_val_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-val-apply.md) | 137 | `result-track:44b8a06174d14774a02a15b28fb0303c2e2c6c573449bffbfd62bc6751d11ff2` |
| 11 | `theorem` | [map_ext](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-ext.md) | 142 | `result-track:00ae68fa0b7633e67d16dee4ed1f6d7d14a9e0c528c515e145a50a227e1f44e7` |
| 12 | `theorem` | [map_ext'](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-ext-source-edition-3.md) | 151 | `result-track:c4eaae9e3725668d473b720cccc72c553ae4567e806f7c5b191fe497951167f8` |
| 13 | `theorem` | [map_ext''](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-ext-source-edition-2.md) | 160 | `result-track:3617035b08b8d7a1b228b00855b3b8f8299fd5164224eb48980c2036dc269933` |
| 14 | `theorem` | [map_id](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-id.md) | 168 | `result-track:158849e3e13f7758d92ce4f0aa16d96c94f605d113b95f0daebdaa0b2a351b5e` |
| 15 | `theorem` | [map_comp](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-comp.md) | 174 | `result-track:168cf4b276e938f84c1414753d81098cf516ec646445710e07ff39fcc86a8ec0` |
| 16 | `theorem` | [map_comp_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-comp-apply.md) | 179 | `result-track:c127088e677693f054d82d19cbaf511a98f87fae919ba8ad8bb2d0fdb255f7fc` |
| 17 | `theorem` | [map_mk](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-mk.md) | 185 | `result-track:52d1d228dc17880edb6db4dea214275328abb4a8e5ae2d572a5459f504e9d52c` |
| 18 | `theorem` | [map_zero](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-zero-source-edition-2.md) | 191 | `result-track:df4b2f5729ddd7d59dd16a224a27757b73e641143ab7a8365cdf37d040fe5472` |
| 19 | `theorem` | [map_of](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-of.md) | 195 | `result-track:ab7c94e40b0c3ecbeb636f1bba81ad6f7294b56cf523c17332cc35d58c599406` |
| 20 | `def` | [congr](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/congr.md) | 199 | `declaration-track:4f3194b9fcc6c5d7fc6d545668dda4e0fdbacd20f40b4ffb52279e1ad21edd67` |
| 21 | `theorem` | [congr_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/congr-apply.md) | 205 | `result-track:104c999836dbe953e69106a1aef589f88c9c69995a484eee97e52018a8293032` |
| 22 | `theorem` | [congr_symm_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/congr-symm-apply.md) | 210 | `result-track:f9ef5ceb10df918dc0f60ad8935157342b3e4dc372886a263ef1778ad09c183d` |
| 23 | `def` | [pi](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/pi.md) | 238 | `declaration-track:a514572d85e090e55ae95d47a98414152eeabe1a126aaee7f9a8f8021db801b7` |
| 24 | `def` | [sum](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/sum.md) | 249 | `declaration-track:8b11b8a0956183ec1200e410a2cc92ca6757dccb4cac1d36075bfcbd467de7a9` |
| 25 | `theorem` | [sum_lof](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/sum-lof.md) | 255 | `result-track:d211cd73dc89e019e68394f0e2853d70093c016aa4032f225a55cc030c2152d5` |
| 26 | `theorem` | [sum_of](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/sum-of.md) | 261 | `result-track:3810dfd724a4033dc7535d7803e4e12188e61b543cdd53fd2cdbe84ec0ed0348` |
| 27 | `def` | [sumInv](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/suminv.md) | 271 | `declaration-track:46f29e7bc9e688e761036df05b5ff5a9e5d272b5c5cf3365ac2cdcc5b5f87173` |
| 28 | `theorem` | [component_sumInv](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/component-suminv.md) | 277 | `result-track:6abd80560a18da6e26e561466b2e04b730f304ddac5189a32cc5c6fd30584462` |
| 29 | `theorem` | [sumInv_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/suminv-apply.md) | 284 | `result-track:b28d968a1f20902127eca3e7fd8c0537d0162b05978555aaaaf3fdbe0aa45133` |
| 30 | `theorem` | [sumInv_comp_sum](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/suminv-comp-sum.md) | 291 | `result-track:810b1666277ddf68d8a4df93a75018c5c813bbcd6bb22e3655d16343de8e681f` |
| 31 | `theorem` | [sum_comp_sumInv](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/sum-comp-suminv.md) | 302 | `result-track:73d3bb8b700c31903d7c9542837d48b5d06d2bc847e2d20dd091975827082654` |
| 32 | `def` | [sumEquivOfFintype](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/sumequivoffintype.md) | 313 | `declaration-track:1f71fc88845f577d34df1af3f59d062e5414b042ce40960676ad08a48d322e9b` |
| 33 | `theorem` | [sumEquivOfFintype_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/sumequivoffintype-apply.md) | 318 | `result-track:2cd89cd5ab8110c2815be221d262bf235fe560c5816188632dd235dde725c2ba` |
| 34 | `theorem` | [sumEquivOfFintype_symm_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/sumequivoffintype-symm-apply.md) | 323 | `result-track:370c5bb69c3aaceb03894c6dedc43a53924b6ce8bd7daf145f576beeeab5eafa` |
| 35 | `def` | [piEquivOfFintype](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/piequivoffintype.md) | 336 | `declaration-track:43a51ce800e50fe4e0a6bb732d9c08fc9df48f6de5d6ceb13511ea4e73676f3c` |
| 36 | `theorem` | [piEquivOfFintype_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/piequivoffintype-apply.md) | 343 | `result-track:5d9f9da01326fe3da31e158f66356383d6e4c54379b41fc5e4bc978213692910` |
| 37 | `def` | [piEquivFin](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/piequivfin.md) | 348 | `declaration-track:3adca8101d285b60707f7aad327155163ec46ad2c524e8d0d3321e540a95e0f0` |
| 38 | `theorem` | [piEquivFin_apply](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/piequivfin-apply.md) | 370 | `result-track:5d103e885117ed0e52dd9522edb26bc40a677c7e4108948669c2a79cb8db6f73` |
| 39 | `theorem` | [exists_smodEq_pow_add_one_smul](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/exists-smodeq-pow-add-one-smul.md) | 382 | `result-track:9741d19288cf4f498d0ed0fba6d80ac06016757b708bcc5cc8adaf88a3550f80` |
| 40 | `theorem` | [exists_smodEq_pow_smul_top_and_smodEq_pow_add_one_smul_top](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/exists-smodeq-pow-smul-top-and-smodeq-pow-add-one-smul-top.md) | 400 | `result-track:2328231d42aa4d1eacdbe575aeb1bb8eb5bf3671616c0aa1ae471b557355638c` |
| 41 | `theorem` | [exists_smodEq_pow_smul_top_and_mkQ_eq](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/exists-smodeq-pow-smul-top-and-mkq-eq.md) | 412 | `result-track:4420ca13d36c76670057405db4274db3f6a34b59f9587be6e123a03a35e492b3` |
| 42 | `theorem` | [map_surjective_of_mkQ_comp_surjective](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/map-surjective-of-mkq-comp-surjective.md) | 427 | `result-track:0a11527ad4904f8e69e6f29d0e574444bffd347d2481ad3a3e4a6fd6c82fd89c` |
| 43 | `theorem` | [surjective_of_mkQ_comp_surjective](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/surjective-of-mkq-comp-surjective.md) | 456 | `result-track:dd2775cba184b0b5b87357648a8a266eb6a67c21049bc47e5d58e58fdca433aa` |
| 44 | `theorem` | [surjective_of_mk_map_comp_surjective](../../../../CommutativeAlgebra/FunctorialityNamespacedPublic.lean/declarations/surjective-of-mk-map-comp-surjective.md) | 466 | `result-track:289037d49381e68a2b3a6e334927c171068b3c3669bf675568996f51cce080cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe72f2359d99044bbba9f8a089a0a5db649405b7da389898970a9726a99933fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Functoriality/Variantc8bda715bdef32c2a58e72ca61cfad80425c5d870482f13668884893df55ff70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
