# Verification target: GRWTSK.Topology.GeneralTopology.StoneWeierstrass.Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b73e58fe46e3815e64fd69235c49ca3e651237e",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b73e58fe46e3815e64fd69235c49ca3e651237e`.

Source path: `GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.StarSubalgebra` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousMapZero` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Lattice` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Weierstrass` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [attachBound](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/attachbound--feb98cf28c12141a4d8eb270.md) | 69 | `declaration-track:feb98cf28c12141a4d8eb2706bb1ab9a3d8bcb2d40d09faf8c8d2ce03398bf6d` |
| 2 | `theorem` | [attachBound_apply_coe](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/attachbound-apply-coe--18a8e0e7beb5e25abe0112f3.md) | 73 | `result-track:18a8e0e7beb5e25abe0112f30eba991ae62b3e9d23f917f8cc144fc263ffb1b9` |
| 3 | `theorem` | [polynomial_comp_attachBound](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/polynomial-comp-attachbound--c425914fcd015264ab526502.md) | 76 | `result-track:c425914fcd015264ab5265029b554b095a8f0987e76c81402b5adfeb5e9c7033` |
| 4 | `theorem` | [polynomial_comp_attachBound_mem](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/polynomial-comp-attachbound-mem--0ba21f7426f6d2d254ccda3a.md) | 91 | `result-track:0ba21f7426f6d2d254ccda3aa0315855931c3b8fef6b937dc48caf79368efbcd` |
| 5 | `theorem` | [comp_attachBound_mem_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/comp-attachbound-mem-closure--cf8b6e7400c044a56b351d52.md) | 96 | `result-track:cf8b6e7400c044a56b351d52c75f4862e92ac1af867800daaddc506be8e6c1a8` |
| 6 | `theorem` | [abs_mem_subalgebra_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/abs-mem-subalgebra-closure--ce45c3366f15c392987929a2.md) | 117 | `result-track:ce45c3366f15c392987929a2b55350d90280bd98c527eb1c744a26f844b24c9c` |
| 7 | `theorem` | [inf_mem_subalgebra_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/inf-mem-subalgebra-closure--4f7f1d2d1f7aa0dc23fdbcd1.md) | 124 | `result-track:4f7f1d2d1f7aa0dc23fdbcd12ce4f19292627d76f3b27e8087407b9bbdb9f1a5` |
| 8 | `theorem` | [inf_mem_closed_subalgebra](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/inf-mem-closed-subalgebra--7c34011bcb5e4b9ca0910034.md) | 136 | `result-track:7c34011bcb5e4b9ca09100346b346ded9f7646568d3f60c2d321551d373358f8` |
| 9 | `theorem` | [sup_mem_subalgebra_closure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/sup-mem-subalgebra-closure--71148c4926521ab67df2e06b.md) | 144 | `result-track:71148c4926521ab67df2e06b3e4c22ccc909bb162fb50b61e772d795c9ede4ac` |
| 10 | `theorem` | [sup_mem_closed_subalgebra](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/sup-mem-closed-subalgebra--93056bbe049b24093438be8f.md) | 156 | `result-track:93056bbe049b24093438be8f6cc4aaf2a7519069e3bcc91bdd468965f8a1ef27` |
| 11 | `theorem` | [sublattice_closure_eq_top](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/sublattice-closure-eq-top--cfaebaf4c3576bc596cd8223.md) | 168 | `result-track:cfaebaf4c3576bc596cd822385b60993f73210a79aaf141cb788f6a3d90b063a` |
| 12 | `theorem` | [subalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/subalgebra-topologicalclosure-eq-top-of-separatespoints--2707066e484605470b500377.md) | 269 | `result-track:2707066e484605470b500377bfa6610823bdc429348ba104def4d314bf911b5e` |
| 13 | `theorem` | [continuousMap_mem_subalgebra_closure_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmap-mem-subalgebra-closure-of-separatespoints--19d95f28ef35f6d2143b7313.md) | 290 | `result-track:19d95f28ef35f6d2143b731394c3c1c508b18241ae9b2489cc74823951fbc078` |
| 14 | `theorem` | [exists_mem_subalgebra_near_continuousMap_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/exists-mem-subalgebra-near-continuousmap-of-separatespoints--35c94fea5d92366cf4a4b00f.md) | 301 | `result-track:35c94fea5d92366cf4a4b00f87343e078c20d45758674276a2d6f01c5cd21419` |
| 15 | `theorem` | [exists_mem_subalgebra_near_continuous_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/exists-mem-subalgebra-near-continuous-of-separatespoints--74583d225c5627e415742b2d.md) | 317 | `result-track:74583d225c5627e415742b2d3feeed4cc5cb4ad282b23e2f8809478733f386fc` |
| 16 | `theorem` | [exists_mem_subalgebra_near_continuous_of_isCompact_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/exists-mem-subalgebra-near-continuous-of-iscompact-of-separatespoints--0eadf716fd8e1a90c878c4c4.md) | 327 | `result-track:0eadf716fd8e1a90c878c4c4d1d8d43272a6a75792c3153a2c59b5269165ac12` |
| 17 | `theorem` | [Subalgebra.SeparatesPoints.rclike_to_real](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/subalgebra-separatespoints-rclike-to-real--966151954898108c8512f63c.md) | 374 | `result-track:966151954898108c8512f63ccabeb69d5cb3a30e50809818e95f2c36db184bc5` |
| 18 | `theorem` | [ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmap-starsubalgebra-topologicalclosure-eq-top-of-separatespoint--d867fb0b2fb3f13103bf6b0d.md) | 403 | `result-track:d867fb0b2fb3f13103bf6b0d66c3d02bba286f15d8266025407ba3d98e342c15` |
| 19 | `theorem` | [polynomialFunctions.topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/polynomialfunctions-topologicalclosure--eee14da24fa40bd5fc16ec15.md) | 453 | `result-track:eee14da24fa40bd5fc16ec157ccea84b44a963f716cd7e5c4953e415bb1e26d9` |
| 20 | `theorem` | [polynomialFunctions.starClosure_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/polynomialfunctions-starclosure-topologicalclosure--d50992fbd34609ff6e74b6e2.md) | 460 | `result-track:d50992fbd34609ff6e74b6e24c33c0fda539052d81962304e9ab0d9c553f0e17` |
| 21 | `theorem` | [ContinuousMap.induction_on](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmap-induction-on--2cb2e780ca22b7e39e42bd42.md) | 467 | `result-track:2cb2e780ca22b7e39e42bd429f2cf4576e91831a69b5486db59f290bcee0b771` |
| 22 | `theorem` | [ContinuousMap.induction_on_of_compact](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmap-induction-on-of-compact--2c28a50c08f408833ca046a9.md) | 487 | `result-track:2c28a50c08f408833ca046a95ae2cbbb1d2a1c45a90bcecf4541d100eb13fb01` |
| 23 | `theorem` | [ContinuousMap.algHom_ext_map_X](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmap-alghom-ext-map-x--bd7bae214a38eed683eb1791.md) | 501 | `result-track:bd7bae214a38eed683eb17916e0c9502a04b0dfe6c3429aa182d049680ef98ce` |
| 24 | `theorem` | [ContinuousMap.starAlgHom_ext_map_X](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmap-staralghom-ext-map-x--3fc14ac337be145528a03f15.md) | 514 | `result-track:3fc14ac337be145528a03f154aeebf25acf65a0438e174349ecd5fea3ad53868` |
| 25 | `lemma` | [adjoin_id_eq_span_one_union](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/adjoin-id-eq-span-one-union--51c8ec89ec3a2cf506c1f6cf.md) | 535 | `result-track:51c8ec89ec3a2cf506c1f6cfa0763ac9718c61c08442493e71836204900fb4b6` |
| 26 | `lemma` | [adjoin_id_eq_span_one_add](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/adjoin-id-eq-span-one-add--28325c9d42588abd0f57801d.md) | 544 | `result-track:28325c9d42588abd0f57801d2a4ca62d0ed0647d05dcaf3079872a44d00a813d` |
| 27 | `lemma` | [nonUnitalStarAlgebraAdjoin_id_subset_ker_evalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/nonunitalstaralgebraadjoin-id-subset-ker-evalstaralghom--e9fb265abcd1c968412fac58.md) | 553 | `result-track:e9fb265abcd1c968412fac582e13f24bb257e9241be65abc80c94f2b0a8203bc` |
| 28 | `lemma` | [ker_evalStarAlgHom_inter_adjoin_id](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/ker-evalstaralghom-inter-adjoin-id--ddb02d9b7fa36135dddd0b71.md) | 571 | `result-track:ddb02d9b7fa36135dddd0b71e659258a9e59d8b61bc88fdfd7f3df5872450f70` |
| 29 | `theorem` | [AlgHom.closure_ker_inter](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/alghom-closure-ker-inter--f66d6b58c1a379472657ebe9.md) | 590 | `result-track:f66d6b58c1a379472657ebe97fdf87388e552d6b060799ca0977a0e9c1a41c09` |
| 30 | `lemma` | [ker_evalStarAlgHom_eq_closure_adjoin_id](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/ker-evalstaralghom-eq-closure-adjoin-id--c2d4a6411b948073a25dec1d.md) | 607 | `result-track:c2d4a6411b948073a25dec1dfa47753ac6dcbcf1985e0975b5472ecd71f36e83` |
| 31 | `lemma` | [ContinuousMapZero.adjoin_id_dense](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmapzero-adjoin-id-dense--7b4d843360a9698ad6c76dd6.md) | 624 | `result-track:7b4d843360a9698ad6c76dd607124fc5849032dc93530f12e16b5174c4eebe29` |
| 32 | `lemma` | [ContinuousMapZero.induction_on](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmapzero-induction-on--fff261930a57b7be74a5db58.md) | 640 | `result-track:fff261930a57b7be74a5db58cc8302e1706000427d2ee52cb3fa6b6560e7394d` |
| 33 | `theorem` | [ContinuousMapZero.induction_on_of_compact](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmapzero-induction-on-of-compact--4aa06d178754a0faf89dbc9e.md) | 660 | `result-track:4aa06d178754a0faf89dbc9e159792a4ff2b5df1de07b10c01ac6f637459c59e` |
| 34 | `lemma` | [ContinuousMapZero.nonUnitalStarAlgHom_apply_mul_eq_zero](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmapzero-nonunitalstaralghom-apply-mul-eq-zero--c8885539a22a7e40dff8b3ba.md) | 670 | `result-track:c8885539a22a7e40dff8b3baf1138cfc56f8b74a09b92258e5355a2c3c3487de` |
| 35 | `lemma` | [ContinuousMapZero.mul_nonUnitalStarAlgHom_apply_eq_zero](../../../../../mathematics/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/declarations/continuousmapzero-mul-nonunitalstaralghom-apply-eq-zero--172563dc0e043126c73ce018.md) | 685 | `result-track:172563dc0e043126c73ce01820184e4be6f1ec3297426f07d12290db501133e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
