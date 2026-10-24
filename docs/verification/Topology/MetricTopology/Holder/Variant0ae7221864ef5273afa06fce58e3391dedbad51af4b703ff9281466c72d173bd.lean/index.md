# Verification target: GRWTSK.Topology.MetricTopology.Holder.Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb723eb5a1c4b08ef8e786e30e34657a0a7476a0",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb723eb5a1c4b08ef8e786e30e34657a0a7476a0`.

Source path: `GRWTSK/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HolderWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderwith--faefa07343637230aa80e9c2.md) | 56 | `declaration-track:faefa07343637230aa80e9c226c65412ddee37fbd7ea85832eda0e86c0e47e5c` |
| 2 | `def` | [HolderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderonwith--9427a4bf005d5bdaffd1448e.md) | 62 | `declaration-track:9427a4bf005d5bdaffd1448e67cf540df0ecfbe1eeae64e533d5a1eea5f44c54` |
| 3 | `theorem` | [holderOnWith_empty](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderonwith-empty--bc5068b99c7eb48fb31f4b5d.md) | 66 | `result-track:bc5068b99c7eb48fb31f4b5dbaaa904cc3b11004d61c0a6cb0f30e9f34d3a0d1` |
| 4 | `theorem` | [holderOnWith_singleton](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderonwith-singleton--82dfffec1564493de2867847.md) | 69 | `result-track:82dfffec1564493de28678476d1ea20542980ad03a8a82ebce97e526b9e92e77` |
| 5 | `theorem` | [Set.Subsingleton.holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/set-subsingleton-holderonwith--4d53e4653fd736fe441775ce.md) | 74 | `result-track:4d53e4653fd736fe441775cec8df84890d93ce08a20387297b458f9b79c61340` |
| 6 | `theorem` | [holderOnWith_univ](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderonwith-univ--0effb6f09962d5ed841f48c6.md) | 78 | `result-track:0effb6f09962d5ed841f48c6047c02769d4e16583f356a1d3260ff2d2d1bf13e` |
| 7 | `theorem` | [holderOnWith_one](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderonwith-one--8be80f6a7de5aeca79df28ef.md) | 82 | `result-track:8be80f6a7de5aeca79df28ef2cf92572110a4bf1172be16cc3e1b89011346345` |
| 8 | `theorem` | [holderWith_one](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderwith-one--a8f9eeb1503dc15dabc66a62.md) | 89 | `result-track:a8f9eeb1503dc15dabc66a623e8e79ee09f496ae2679ca3bd3e1e71074421b1a` |
| 9 | `theorem` | [holderWith_id](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderwith-id--e9e0bc0a688f8bbcf591778d.md) | 94 | `result-track:e9e0bc0a688f8bbcf591778d7552098d52689bb42f3351a4bcdb586c55b9f49f` |
| 10 | `theorem` | [HolderWith.holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderwith-holderonwith--94b02f6d0b201185c6e65a0b.md) | 97 | `result-track:94b02f6d0b201185c6e65a0b85af59e1a8fcb8095ff97cc38ff86406a4c9499d` |
| 11 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/edist-le--ccafc93286194eb5a0c38614.md) | 104 | `result-track:ccafc93286194eb5a0c386149bca5021a8e79c4c950effab49b17cb9d87a79d7` |
| 12 | `theorem` | [edist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/edist-le-of-le--a79e8ff117ce023551259c53.md) | 108 | `result-track:a79e8ff117ce023551259c53924fe64ac7e58960d7444efff12f4db1ef337419` |
| 13 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/comp--667f5654590a55106490afea.md) | 112 | `result-track:667f5654590a55106490afea2c528f0f40a594a46bd299e1faaec61c0f7065bc` |
| 14 | `theorem` | [comp_holderWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/comp-holderwith--f955b7c21cd213a70ed7cedd.md) | 120 | `result-track:f955b7c21cd213a70ed7cedd0b3f36443a27a91efdb76367f1b9066356ebc72b` |
| 15 | `theorem` | [uniformContinuousOn](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/uniformcontinuouson--f1ed47efdff67e9f5dcd7cce.md) | 126 | `result-track:f1ed47efdff67e9f5dcd7cce7b345b3362b6b6c336dc9dc6ec2c0dc6ebe6d5c6` |
| 16 | `theorem` | [continuousOn](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/continuouson--ceac25fb14708e305508b081.md) | 134 | `result-track:ceac25fb14708e305508b0816445cba10d99ba9ebbfe6e3126d3d52b7d42fff8` |
| 17 | `theorem` | [mono](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/mono--1f808b4c19fdb5e4cbfc7609.md) | 137 | `result-track:1f808b4c19fdb5e4cbfc7609ed662dddc67c85e8c2109e9b2f37d7568ea3454d` |
| 18 | `theorem` | [ediam_image_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/ediam-image-le-of-le--f2fc1e2c513d0d2c7889235a.md) | 140 | `result-track:f2fc1e2c513d0d2c7889235a3db832f9c2de685966d82591ae09c4cded745da3` |
| 19 | `theorem` | [ediam_image_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/ediam-image-le--4ce334456301596afe1bc2cb.md) | 145 | `result-track:4ce334456301596afe1bc2cb3c29a84cace159e621e87733a7ef6b064fe7b607` |
| 20 | `theorem` | [ediam_image_le_of_subset](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/ediam-image-le-of-subset--527fdd07228ab2871731f10c.md) | 149 | `result-track:527fdd07228ab2871731f10c472bca16913d68fed859127f8099710355ed78fb` |
| 21 | `theorem` | [ediam_image_le_of_subset_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/ediam-image-le-of-subset-of-le--53381baada5121d9933f6cd3.md) | 153 | `result-track:53381baada5121d9933f6cd30e653a62328b7cb86556cd49f73360a915a4f305` |
| 22 | `theorem` | [ediam_image_inter_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/ediam-image-inter-le-of-le--c0dfaea367c953eec5c6f343.md) | 157 | `result-track:c0dfaea367c953eec5c6f343ff7adf3200da99e3991aa10fe7ddb175f455e3b6` |
| 23 | `theorem` | [ediam_image_inter_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/ediam-image-inter-le--2544fa74fb06aa4ee6dc97e4.md) | 162 | `result-track:2544fa74fb06aa4ee6dc97e4f1177c6b9ae7224223210c21d1a24a8ff5d81284` |
| 24 | `theorem` | [restrict_iff](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/restrict-iff--3984bec623db8210b3f82e8e.md) | 172 | `result-track:3984bec623db8210b3f82e8ea178d97973dff677fbba56a500a6f958eb793a3c` |
| 25 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/edist-le--0e99bb35899ef4276c71a13f.md) | 177 | `result-track:0e99bb35899ef4276c71a13f210b779768c13a0be66ff2315e2c6ded703c8192` |
| 26 | `theorem` | [edist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/edist-le-of-le--6cfad6e33f162968b33ba745.md) | 181 | `result-track:6cfad6e33f162968b33ba745b1a9a4a52823940ff31ea30e1cacc6511f5e1b90` |
| 27 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/comp--7ffb23555c852c025a5b06b2.md) | 185 | `result-track:7ffb23555c852c025a5b06b2d8f14d58b8ca2c5f23603a51a0239c154ccaf5b7` |
| 28 | `theorem` | [comp_holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/comp-holderonwith--b05ba3663b20e71d23ea3ee7.md) | 189 | `result-track:b05ba3663b20e71d23ea3ee74fc9828ca2fe21c79faba59b9ffb30add19b7b10` |
| 29 | `theorem` | [uniformContinuous](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/uniformcontinuous--0752a55df90e19d4da335fa5.md) | 195 | `result-track:0752a55df90e19d4da335fa55eae0afdb89ab80e9d6a04fafa86837c53d54945` |
| 30 | `theorem` | [continuous](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/continuous--16faf41d39d33ab499c84c6c.md) | 198 | `result-track:16faf41d39d33ab499c84c6cbafbe18f406d18deebfff60b950e74167b77e88a` |
| 31 | `theorem` | [ediam_image_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/ediam-image-le--eabb03f30660185ca2d20528.md) | 201 | `result-track:eabb03f30660185ca2d20528829bc3b0c6179de29d060bf8f0b493be203a5116` |
| 32 | `lemma` | [const](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/const--835b9e530058bf25b50b5223.md) | 206 | `result-track:835b9e530058bf25b50b5223dd75839637a62331b1a95fd2227e3afb18cf9d86` |
| 33 | `lemma` | [zero](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/zero--546176b5280f8eb473aff8a7.md) | 210 | `result-track:546176b5280f8eb473aff8a7e58fd08a006da99c1900316bdba78aab5e8b64cb` |
| 34 | `lemma` | [of_isEmpty](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/of-isempty--cfd9a527b5cb188f809d254b.md) | 212 | `result-track:cfd9a527b5cb188f809d254be514a3a285176a17a4233b8ab5a64f645e08af65` |
| 35 | `lemma` | [mono](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/mono--77fd1f748c29c94449507775.md) | 214 | `result-track:77fd1f748c29c9444950777577de09e01578dd9e63bb8aabc58a2cd56b70ace7` |
| 36 | `theorem` | [nndist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/nndist-le-of-le--4680cb1b57474c8cadb9aeb7.md) | 228 | `result-track:4680cb1b57474c8cadb9aeb79e631904a72b2d2c6b56b04e7bcca4ac538478ab` |
| 37 | `theorem` | [nndist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/nndist-le--dcf10f73101728d9c12375bc.md) | 235 | `result-track:dcf10f73101728d9c12375bce8c1bf81cb4ee579ea1dccc171e0cff815f0ac78` |
| 38 | `theorem` | [dist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/dist-le-of-le--01b14a8eeedb14ec650d7db1.md) | 239 | `result-track:01b14a8eeedb14ec650d7db19cc2a38520f37e45bec16b23683e6c59d380a9a3` |
| 39 | `theorem` | [dist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/dist-le--3d4d83d6bfc2cff9bdee74a4.md) | 246 | `result-track:3d4d83d6bfc2cff9bdee74a49848f658ca404075357d595ee16da384ede6e434` |
| 40 | `theorem` | [nndist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/nndist-le-of-le--423005ccd4521080e3b3527a.md) | 254 | `result-track:423005ccd4521080e3b3527ac838d5b388696223b367c24c14640be2a792ea4b` |
| 41 | `theorem` | [nndist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/nndist-le--af57f4e662c0e835b1131bf7.md) | 258 | `result-track:af57f4e662c0e835b1131bf71b720f8230d1a36f77179fda2dca4908089731bd` |
| 42 | `theorem` | [dist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/dist-le-of-le--cb0632f262f00de21070e4d0.md) | 262 | `result-track:cb0632f262f00de21070e4d0f453086c8965feaff877dcae6ef5b2f40250b96b` |
| 43 | `theorem` | [dist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/dist-le--b1732c23d14e59aceb86def6.md) | 266 | `result-track:b1732c23d14e59aceb86def6fff6ef39ccedd1db291bfe9f6348e433085c713a` |
| 44 | `lemma` | [holderWith_zero_iff](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/holderwith-zero-iff--149833f44c8cf9a657d8ff6c.md) | 278 | `result-track:149833f44c8cf9a657d8ff6c724ab14e5a2480dedc02f6765bb26ccbba4e8ec5` |
| 45 | `lemma` | [add](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/add--a200f9e1d08a246e57d04c06.md) | 293 | `result-track:a200f9e1d08a246e57d04c06ccb1e3b2f46a28c460fcdc99a76bf4df55791b74` |
| 46 | `lemma` | [smul](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/smul--0322f294aa77ba0c53b82f45.md) | 298 | `result-track:0322f294aa77ba0c53b82f4522eb442580c5e690e063453de4861fb170d5d40f` |
| 47 | `lemma` | [smul_iff](../../../../../mathematics/Topology/MetricTopology/Holder/Variant0ae7221864ef5273afa06fce58e3391dedbad51af4b703ff9281466c72d173bd.lean/declarations/smul-iff--f605fd6bf82ddf352b5e8cbf.md) | 305 | `result-track:f605fd6bf82ddf352b5e8cbf6be362f723def1d9ffb2bd919e00ca9685937719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
