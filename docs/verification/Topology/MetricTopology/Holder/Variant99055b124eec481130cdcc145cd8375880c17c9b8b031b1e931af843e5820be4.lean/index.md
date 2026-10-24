# Verification target: GRWTSK.Topology.MetricTopology.Holder.Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a1aab01c714e25f89bd5964f93eea0d80f95511",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a1aab01c714e25f89bd5964f93eea0d80f95511`.

Source path: `GRWTSK/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HolderWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderwith--377aa43fe754af585a265a22.md) | 48 | `declaration-track:377aa43fe754af585a265a22dd55fdc1e18c81075443f638af60a571cd01402d` |
| 2 | `def` | [HolderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderonwith--6483684f9ff7018027f0d207.md) | 54 | `declaration-track:6483684f9ff7018027f0d2078ec048fcf75fff7850acd8935de437e841d11b44` |
| 3 | `theorem` | [holderOnWith_empty](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderonwith-empty--d75dedb00d6e4862c422c7ca.md) | 58 | `result-track:d75dedb00d6e4862c422c7ca91def5831ecdf94044f7690630040118bb0da347` |
| 4 | `theorem` | [holderOnWith_singleton](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderonwith-singleton--e52da9bc9706c0d7d63e6760.md) | 61 | `result-track:e52da9bc9706c0d7d63e67602d761edcec7b8c0744e19227a3b90e1223b6ef46` |
| 5 | `theorem` | [Set.Subsingleton.holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/set-subsingleton-holderonwith--9307a39f6f71233b2f1d37e2.md) | 66 | `result-track:9307a39f6f71233b2f1d37e2cbf23919a6c59332c0e33943c514f94f3a636d48` |
| 6 | `theorem` | [holderOnWith_univ](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderonwith-univ--ddf3e72363ec56c5205392f4.md) | 70 | `result-track:ddf3e72363ec56c5205392f43e0b3a1722e5eba66f2fc8c4da943b1edaa158e8` |
| 7 | `theorem` | [holderOnWith_one](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderonwith-one--48d9df903401239e1861a95f.md) | 74 | `result-track:48d9df903401239e1861a95fa172bf62fffdec5a6c65a61d823bbe720a5e2cc5` |
| 8 | `theorem` | [holderWith_one](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderwith-one--9221556f0c71e5e679b1d12f.md) | 81 | `result-track:9221556f0c71e5e679b1d12f9218ca5f4c9ace46aae5ce007e5a22a12349ac24` |
| 9 | `theorem` | [holderWith_id](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderwith-id--0314717b95a1cc61380dd8d3.md) | 86 | `result-track:0314717b95a1cc61380dd8d3da34989708cd6b190b94ff461579431d5193940c` |
| 10 | `theorem` | [HolderWith.holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderwith-holderonwith--5d82cf3dfa63816bca20faec.md) | 89 | `result-track:5d82cf3dfa63816bca20faec0f728512f42acc3458e8590ae8597d8fe1834343` |
| 11 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/edist-le--048317ff448958d56b78445b.md) | 96 | `result-track:048317ff448958d56b78445b83154b838ddeb7e706443aa4ef0045cef816886f` |
| 12 | `theorem` | [edist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/edist-le-of-le--1db51ad718354ca45c2f981c.md) | 100 | `result-track:1db51ad718354ca45c2f981c9f3716b4f8d9303d12a1bedd2eca6d4972fd366c` |
| 13 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/comp--3cfdf5b0bca419475d0295b8.md) | 104 | `result-track:3cfdf5b0bca419475d0295b8274ebda56c04b488d085b15475f711d4be8ef787` |
| 14 | `theorem` | [comp_holderWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/comp-holderwith--741a2c5941992b7cecf9adbf.md) | 112 | `result-track:741a2c5941992b7cecf9adbfc4795cf677fd91b0ff5888b06417c974374bbdcd` |
| 15 | `theorem` | [uniformContinuousOn](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/uniformcontinuouson--5ca3a65006487a24d2f2be4c.md) | 118 | `result-track:5ca3a65006487a24d2f2be4c9edcf699e39dffdb7725a399e7c52fd6710f3dcd` |
| 16 | `theorem` | [continuousOn](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/continuouson--9b851753f29dd4d3347a6439.md) | 126 | `result-track:9b851753f29dd4d3347a643989ef4b9893edd698f76fd65b5c214205a57cd322` |
| 17 | `theorem` | [mono](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/mono--92f6b3f8a32399e634f36df4.md) | 129 | `result-track:92f6b3f8a32399e634f36df4f50d67309d37e44040b750bb3b318103c53a28a8` |
| 18 | `theorem` | [ediam_image_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/ediam-image-le-of-le--f1973fa831533bb0e2bf01db.md) | 132 | `result-track:f1973fa831533bb0e2bf01db6abb42ef75f6fdeb9e09e49422301a7eefce9995` |
| 19 | `theorem` | [ediam_image_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/ediam-image-le--f72761f843a1c2a4f59ff813.md) | 137 | `result-track:f72761f843a1c2a4f59ff81348df365aac0591ee5af18a9acbe8197f935ca5ac` |
| 20 | `theorem` | [ediam_image_le_of_subset](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/ediam-image-le-of-subset--b18993c69bd59f96cad0aad4.md) | 141 | `result-track:b18993c69bd59f96cad0aad4144889e92ddfa257677474c40491e6fe7723e7e4` |
| 21 | `theorem` | [ediam_image_le_of_subset_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/ediam-image-le-of-subset-of-le--fccd43e4c93876ec5219bc54.md) | 145 | `result-track:fccd43e4c93876ec5219bc54f063e586393a9c19431b1d7cb8a4636b5e9dca7d` |
| 22 | `theorem` | [ediam_image_inter_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/ediam-image-inter-le-of-le--45ba7a95582ae5a64d34ac27.md) | 149 | `result-track:45ba7a95582ae5a64d34ac2710360b808ec4060489ab32ee9b20b0f4b8db2e5d` |
| 23 | `theorem` | [ediam_image_inter_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/ediam-image-inter-le--823d133b05bd725ca69a8469.md) | 154 | `result-track:823d133b05bd725ca69a84696c8fc15848935b4db306c98e304d1140461ef2da` |
| 24 | `theorem` | [restrict_iff](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/restrict-iff--46066fef600eb363f467c14a.md) | 164 | `result-track:46066fef600eb363f467c14ac23ae14f49cd9e59011a0be753fc35be05657551` |
| 25 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/edist-le--bc0808e53427ea3e659de910.md) | 169 | `result-track:bc0808e53427ea3e659de9108c1bbddabe96af10b09179dc02e49317d9fc6aa9` |
| 26 | `theorem` | [edist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/edist-le-of-le--59932063dc1e34f50c3c2b68.md) | 173 | `result-track:59932063dc1e34f50c3c2b68e99cb4a6d9a8c4e4b29baefb17ee80d8115bbed5` |
| 27 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/comp--e63a0af59331c6b3df160bec.md) | 177 | `result-track:e63a0af59331c6b3df160becf1905e785c44e2cff0413818db108c186e2d5b3c` |
| 28 | `theorem` | [comp_holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/comp-holderonwith--75ae23df85720b16ad4f98db.md) | 181 | `result-track:75ae23df85720b16ad4f98dba3ddf4b75f0e4836805e607da5491d68656e378c` |
| 29 | `theorem` | [uniformContinuous](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/uniformcontinuous--531e56161f15228ded295375.md) | 187 | `result-track:531e56161f15228ded295375bc068281ab38eab2a5dbb4f3bcdd8c877edd4aca` |
| 30 | `theorem` | [continuous](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/continuous--0671fa7d2f4bcc9dee75d681.md) | 190 | `result-track:0671fa7d2f4bcc9dee75d681621f404c35a64aa9ede9d5ba99b965082e64af57` |
| 31 | `theorem` | [ediam_image_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/ediam-image-le--fdd1aa812e97580f162dc770.md) | 193 | `result-track:fdd1aa812e97580f162dc77017998655e15d40541b0f1fb4ceb20f5e96eb5ced` |
| 32 | `lemma` | [const](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/const--51b9ae0eb046e284acc9748b.md) | 198 | `result-track:51b9ae0eb046e284acc9748bdfa6619bb1061fda47b09b04f881734b0940924c` |
| 33 | `lemma` | [zero](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/zero--0a23461a34e9ead608433f4b.md) | 202 | `result-track:0a23461a34e9ead608433f4b37dfc14d3f50d8904cc13156299235d6098c3e96` |
| 34 | `lemma` | [of_isEmpty](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/of-isempty--a4031fee8c1609e30c2bc074.md) | 204 | `result-track:a4031fee8c1609e30c2bc074d03b464eef21e7b4de33001775e61161c3af0a58` |
| 35 | `lemma` | [mono](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/mono--5de86449006ccdea08da27a3.md) | 206 | `result-track:5de86449006ccdea08da27a3469b55b2d88ebe21c99fff37da6db6eca4217f9c` |
| 36 | `theorem` | [nndist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/nndist-le-of-le--0d4a4f9b4b3635d1b487f80e.md) | 220 | `result-track:0d4a4f9b4b3635d1b487f80e2dd47ccae5584c7c304cfde96613ad4374100b93` |
| 37 | `theorem` | [nndist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/nndist-le--79133feaa358a674e22ab83d.md) | 227 | `result-track:79133feaa358a674e22ab83d66e61a05ac050337ba17bc5c3f42d4d62bbfd434` |
| 38 | `theorem` | [dist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/dist-le-of-le--19cc013c99fb3362d3ee9c18.md) | 231 | `result-track:19cc013c99fb3362d3ee9c18ec86a72c45ab1a41dd77be68f6a43ac62c9d7d1c` |
| 39 | `theorem` | [dist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/dist-le--8e80e20f521fba7cff49432a.md) | 238 | `result-track:8e80e20f521fba7cff49432a1f3b4ab59bd6971dee11d3991e2790dc60eaa675` |
| 40 | `theorem` | [nndist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/nndist-le-of-le--74766c878090d8fbfe725621.md) | 246 | `result-track:74766c878090d8fbfe725621aaf321da3de1f4c9e59f4d2cada7eb0f6c43afe8` |
| 41 | `theorem` | [nndist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/nndist-le--38e091929dc1233054378797.md) | 250 | `result-track:38e091929dc1233054378797c6a148bb0ab7b0e110dd3517ba350e1449b0b587` |
| 42 | `theorem` | [dist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/dist-le-of-le--5a7f0ad471953c267b86955f.md) | 254 | `result-track:5a7f0ad471953c267b86955ffb47f6a1856fcf62e1d79aa45bb4225cb48c5527` |
| 43 | `theorem` | [dist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/dist-le--1b3049d675e288b870f92db5.md) | 258 | `result-track:1b3049d675e288b870f92db5c73a371c71c0841cb2dd0643c9914c1a804454b5` |
| 44 | `lemma` | [holderWith_zero_iff](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/holderwith-zero-iff--b53572b9f9587e678a20f143.md) | 270 | `result-track:b53572b9f9587e678a20f1438f19fbce33b1efbb63153c70d6364292ee887125` |
| 45 | `lemma` | [add](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/add--a64e46580fd6e1b0f3480210.md) | 285 | `result-track:a64e46580fd6e1b0f3480210840da9f28c8d3633c40c716780f8ae57b1bd4627` |
| 46 | `lemma` | [smul](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/smul--f8139fa10d1273142653c4f0.md) | 290 | `result-track:f8139fa10d1273142653c4f065baa59479676a97829eaea949dd668b3f173cea` |
| 47 | `lemma` | [smul_iff](../../../../../mathematics/Topology/MetricTopology/Holder/Variant99055b124eec481130cdcc145cd8375880c17c9b8b031b1e931af843e5820be4.lean/declarations/smul-iff--9a64d9a335042f4eee198825.md) | 297 | `result-track:9a64d9a335042f4eee19882539e6ac1aede86b145de21fea379e0db1daa5622a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
