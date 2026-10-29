# Verification target: Uniform Embedding Uniform Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5173ca961be529ab41ac00a752f31b33d76b27eb",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variant2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/index.md) · [Full source](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5173ca961be529ab41ac00a752f31b33d76b27eb`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variant2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variant2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Cauchy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Separation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DenseEmbedding` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniformInducing](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing.md) | 34 | `declaration-track:a7d0c35d5d2083ce450546ae425a45fbed0895bf2ab0a2df8476b5e5b0dbb3af` |
| 2 | `lemma` | [UniformInducing.comap_uniformSpace](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-comap-uniformspace.md) | 41 | `result-track:40a3c2343170db5186b9cb99e83ab43f408d3ca293bae5a6b6ab4880d073f535` |
| 3 | `lemma` | [uniformInducing_iff'](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-iff.md) | 46 | `result-track:3a959882648b53bcfc3672bc24759590e6a6f57d46d2f84aceb6360d3a49b177` |
| 4 | `lemma` | [Filter.HasBasis.uniformInducing_iff](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/filter-hasbasis-uniforminducing-iff.md) | 51 | `result-track:e7639f9e933db0965b338ac51f2ab5bba2ed6fe1574f426ddde157bc3d5a193f` |
| 5 | `theorem` | [UniformInducing.mk'](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-mk.md) | 59 | `result-track:ea6cffb386dc67437c0520a3a96828e320fa121605a4031bc8b1af39aac9619c` |
| 6 | `theorem` | [uniformInducing_id](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-id.md) | 64 | `result-track:36c7f8b4e6006d6460d02093b47917ac6cf5d765cabbbcd736b0b25184936f9d` |
| 7 | `theorem` | [UniformInducing.comp](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-comp.md) | 68 | `result-track:acd681e6c09e01d352e623874be6767e615de82e6c403a096cc302c840fdfc95` |
| 8 | `theorem` | [UniformInducing.basis_uniformity](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-basis-uniformity.md) | 73 | `result-track:991aa5c91cd4ecdd06ed09ea439ea6e9af2a88d2fc5e48f308d3013909058b30` |
| 9 | `theorem` | [UniformInducing.cauchy_map_iff](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-cauchy-map-iff.md) | 79 | `result-track:60230361ffbde33412254ba8eadfd1fb2c748ef56607442a03af34fdb67dff25` |
| 10 | `theorem` | [uniformInducing_of_compose](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-of-compose.md) | 84 | `result-track:ec72181d6cf6a05628362096b002de6845ddec0bbd8b06e96d6152f668131015` |
| 11 | `theorem` | [UniformInducing.uniformContinuous](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-uniformcontinuous.md) | 91 | `result-track:875f549a51c4a5a297f4101686452aa14df9ba30dca6ca839f4c149dde4f9dbb` |
| 12 | `theorem` | [UniformInducing.uniformContinuous_iff](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-uniformcontinuous-iff.md) | 95 | `result-track:3dc7449855b09133c3982e13b2cd886cd7848f6736aed311bb442afc6f7bb475` |
| 13 | `theorem` | [UniformInducing.inducing](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-inducing.md) | 101 | `result-track:0e3c31ed643f796abdc2eb761782c65084c19929c43792d20dc17fd22d48b7f2` |
| 14 | `theorem` | [UniformInducing.prod](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-prod.md) | 106 | `result-track:4acf964fa57779881fa2d9a3dfff4e678d4f4130085c841b6895108b63052bd4` |
| 15 | `theorem` | [UniformInducing.denseInducing](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-denseinducing.md) | 112 | `result-track:af834a9007d8f7590f41250a6ee0b3204c2ab704052c5dcf570008b60a5e1674` |
| 16 | `theorem` | [UniformInducing.injective](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-injective.md) | 118 | `result-track:2ad82f8efb600571c3aced808784fb517eb6a0dc01b42c3fcda15787757c700f` |
| 17 | `structure` | [UniformEmbedding](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding.md) | 129 | `declaration-track:b7c80d264c992a1949e23e2f84df9d0f35e99d74dc6fc708746a868372b6c77a` |
| 18 | `theorem` | [uniformEmbedding_iff'](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-iff.md) | 135 | `result-track:b8a0fff2dfbb281b4d082ea861f0a5126506d4760b69f9f0be17e1a4b20036cb` |
| 19 | `theorem` | [Filter.HasBasis.uniformEmbedding_iff'](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/filter-hasbasis-uniformembedding-iff.md) | 140 | `result-track:46f718d6783fb76c460f4b03e96a58bb823a8efd67cc103a72e5613ad6f4f1c5` |
| 20 | `theorem` | [Filter.HasBasis.uniformEmbedding_iff](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/filter-hasbasis-uniformembedding-iff-source-edition-2.md) | 148 | `result-track:fbfa00bd2394991885c7726589c809d933a16d94a95f0c8be5e4a2d6d7f02378` |
| 21 | `theorem` | [uniformEmbedding_subtype_val](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-subtype-val.md) | 155 | `result-track:2245db1ea49cae90ef41625d06bf8db374f4d3947e8ff77b4ff1371e19c48e2c` |
| 22 | `theorem` | [uniformEmbedding_set_inclusion](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-set-inclusion.md) | 162 | `result-track:6365b7e5b1b5c8c1c80995442373af063e327d0306e1804024a4688818dfa9e3` |
| 23 | `theorem` | [UniformEmbedding.comp](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-comp.md) | 168 | `result-track:38160d97db77cc09408769676de6735530e6598372a6b0cfb1eaa9e6e6c926b0` |
| 24 | `theorem` | [Equiv.uniformEmbedding](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/equiv-uniformembedding.md) | 173 | `result-track:237472572514c2686079487bc5cc03a380d3375418a243907aa0c7f6eafaf0ac` |
| 25 | `theorem` | [uniformEmbedding_inl](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-inl.md) | 178 | `result-track:3a8ae8c24c94ad5a5b53cbf8e9071e8ecfe31eb45ec2c9d2801d9edc86e58aa1` |
| 26 | `theorem` | [uniformEmbedding_inr](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-inr.md) | 184 | `result-track:6990f084a9d82cfb25d5b68eac085f0b15f417f1d7d931cef521c3e9e3225d6d` |
| 27 | `theorem` | [UniformInducing.uniformEmbedding](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-uniformembedding.md) | 192 | `result-track:bbad31a1cca0f4ab724c6281f784e36e98dfaa313d87ff2e507c5ff9301d25bd` |
| 28 | `theorem` | [uniformEmbedding_iff_uniformInducing](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-iff-uniforminducing.md) | 197 | `result-track:522b6d2168f0935fc46c15a1a97c304cb128f7aa26a50baf091d9f533383b333` |
| 29 | `theorem` | [comap_uniformity_of_spaced_out](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/comap-uniformity-of-spaced-out.md) | 206 | `result-track:b8038a04f5812bd1e6fbbc42257736a94254e0ebb8e61f06111e61244003afd5` |
| 30 | `theorem` | [uniformEmbedding_of_spaced_out](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-of-spaced-out.md) | 218 | `result-track:90731f87175d87f3eb8def8993b8288da6ae279e7a8ab22199fdf4e34a4f5882` |
| 31 | `theorem` | [UniformEmbedding.embedding](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-embedding.md) | 224 | `result-track:6318eea57181dca13ce3466499cd45c3a508a09c43b465235cfefa68801c0e0f` |
| 32 | `theorem` | [UniformEmbedding.denseEmbedding](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-denseembedding.md) | 229 | `result-track:ab30e1b74cbc45c4638f2d7f793cb72572389f9c8d2217ed2dcefcdeb4a4c525` |
| 33 | `theorem` | [closedEmbedding_of_spaced_out](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/closedembedding-of-spaced-out.md) | 234 | `result-track:c2a11de3197c680f749b8c4d0f87e96c11f3f98bc9501caa6a0bf781cec05360` |
| 34 | `theorem` | [closure_image_mem_nhds_of_uniformInducing](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/closure-image-mem-nhds-of-uniforminducing.md) | 243 | `result-track:bbde3ddac9abecb0eefc058bc744c03010c218f1d75b1de8e0d347d8f20e2f5c` |
| 35 | `theorem` | [uniformEmbedding_subtypeEmb](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-subtypeemb.md) | 258 | `result-track:79fc6a58e68b408e9795eb4fe952976cb025431f57bdb5b71c4bf62a6531a050` |
| 36 | `theorem` | [UniformEmbedding.prod](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-prod.md) | 266 | `result-track:d24a1453e2615f6cb29983418b02be92d819490a15ca2498ccb823625d728ed9` |
| 37 | `theorem` | [isComplete_of_complete_image](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/iscomplete-of-complete-image.md) | 272 | `result-track:e5f2971a3434cde651f3070279dce47b88d78c58f717074a8d6e079c525273c8` |
| 38 | `theorem` | [IsComplete.completeSpace_coe](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/iscomplete-completespace-coe.md) | 282 | `result-track:8bc62c75612cbb258d45c9066879a777227082b3e998ba00943dcf8be95edf84` |
| 39 | `theorem` | [isComplete_image_iff](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/iscomplete-image-iff.md) | 288 | `result-track:a7c978d5c5c1f44818c219a231cfa80efed13754b830119babba9a69a19c198f` |
| 40 | `theorem` | [completeSpace_iff_isComplete_range](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/completespace-iff-iscomplete-range.md) | 304 | `result-track:e6fea709b6c159aee461ce0eb2f1224c7a6112524d91ab133e73fa309d4f0f1e` |
| 41 | `theorem` | [UniformInducing.isComplete_range](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniforminducing-iscomplete-range.md) | 309 | `result-track:c856515f182f6963741a52001917d65d6b2aad864cb8d330d4218b797e995e26` |
| 42 | `theorem` | [completeSpace_congr](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/completespace-congr.md) | 314 | `result-track:8243f362539e4fc5801a4820f6fc4222423450e883527387c3ce838c95c51ee1` |
| 43 | `theorem` | [completeSpace_coe_iff_isComplete](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/completespace-coe-iff-iscomplete.md) | 320 | `result-track:46c5b7b80af9f8413bc505f66a7ecfb9d32e2b03bdfa1c13280470ad2a520260` |
| 44 | `theorem` | [IsClosed.completeSpace_coe](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/isclosed-completespace-coe.md) | 325 | `result-track:9a2fdbc0c148ee71b0dae03c3e50294071950e096461cf34fc047550dd8927d7` |
| 45 | `instance` | [ULift.completeSpace](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/ulift-completespace.md) | 331 | `declaration-track:9bf0c80de13db6ec8f8c2bdc6ee0ea61c2b88a4e45e52e4317d738890cccbe08` |
| 46 | `theorem` | [completeSpace_extension](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/completespace-extension.md) | 336 | `result-track:3a977f20d9537704ebe113fea73528288a7c036e0c1a717b4a748665d6668a73` |
| 47 | `theorem` | [totallyBounded_preimage](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/totallybounded-preimage.md) | 383 | `result-track:5405e2e8f107dd3f3e6fbfbd8542f38d959dd13daaaaab98450a4c021d7379a1` |
| 48 | `instance` | [CompleteSpace.sum](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/completespace-sum.md) | 396 | `declaration-track:3ee27ceb57b2b27f18d248dd4c38cb9f5d381bb2917e7f8f4e89c728982c29f3` |
| 49 | `theorem` | [uniformEmbedding_comap](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformembedding-comap.md) | 404 | `result-track:21c49f4e491ee942f98771631ada7aa3e4b2e2699b230aa98ad5e40d6f0a7f17` |
| 50 | `def` | [Embedding.comapUniformSpace](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/embedding-comapuniformspace.md) | 412 | `declaration-track:7f5b0e31beddfc981c17398776087a1ed0ae038cf3e9fbb2bc6134ce17f43c1e` |
| 51 | `theorem` | [Embedding.to_uniformEmbedding](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/embedding-to-uniformembedding.md) | 417 | `result-track:5db850f0c14b6ce7a5627f6c20e43427c337a00e0e64c24a83651b0e1146ef3e` |
| 52 | `theorem` | [uniformly_extend_exists](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformly-extend-exists.md) | 432 | `result-track:c67a6b873331b067ec140a73c2e8e720b515479a981dac4fa47784cfb4f459a6` |
| 53 | `theorem` | [uniform_extend_subtype](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniform-extend-subtype.md) | 441 | `result-track:af8c5e4a6f35f5d3653acd26180f26c69bf2a4f8ee0222aad3a6ae8ce6fedf93` |
| 54 | `theorem` | [uniformly_extend_spec](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformly-extend-spec.md) | 458 | `result-track:6b615ae746b86c20cce92b5c2b3cdd4254e54d9d37b0e93151326df5dfb25f38` |
| 55 | `theorem` | [uniformContinuous_uniformly_extend](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformcontinuous-uniformly-extend.md) | 463 | `result-track:1bb4f74061a881d6e8819cb589f54057abd4f7ea745a3f41b2aec8d3125f3708` |
| 56 | `theorem` | [uniformly_extend_of_ind](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformly-extend-of-ind.md) | 492 | `result-track:d5485e54dbc60571a1d0fe32a32ce36d9292a587f314dc2a04b46899b9c6858d` |
| 57 | `theorem` | [uniformly_extend_unique](../../../../GeneralTopology/UniformEmbeddingUniformInducing.lean/declarations/uniformly-extend-unique.md) | 496 | `result-track:c7993f8eb54568da5f7cf92e942368a5d2f72b95e1a487e6f8c30e5fb0aa268d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bfbaba431f1d4efe4e56ecd871f7da8e598e51fd8b33b62dabd7f438ca4257d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variant2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variant2e5d7e831e6b45a7e714e869b9f9b63d22d3878d0fd2c8a640477e04b34409c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
