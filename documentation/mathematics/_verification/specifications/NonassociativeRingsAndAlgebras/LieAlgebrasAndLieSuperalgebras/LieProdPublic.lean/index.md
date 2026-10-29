# Verification target: Lie Prod Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f22c88dd31c18b32b71039cc4f718320dad3d20",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variante81e1fb909869d68ea9580dd5d7ec0f5a035f10fca5a4da87dddff16caecc0cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f22c88dd31c18b32b71039cc4f718320dad3d20`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variante81e1fb909869d68ea9580dd5d7ec0f5a035f10fca5a4da87dddff16caecc0cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variante81e1fb909869d68ea9580dd5d7ec0f5a035f10fca5a4da87dddff16caecc0cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/instliering.md) | 44 | `declaration-track:3ecbcdd5f906f66218715ffea6a2df84dfeb73a164144a3961b7b45a42558aae` |
| 2 | `theorem` | [bracket_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/bracket-apply.md) | 52 | `result-track:93aa01f1b7a5084b1db51a5ab69ee521a71b41a1fa1f6e09f5209c688b35f1b2` |
| 3 | `instance` | [instLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/instliealgebra.md) | 54 | `declaration-track:ef720056dcb0affdf9866cb2b8e9cf9c58fa1d6197ec81d7675f0ea9fc71384d` |
| 4 | `def` | [fst](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/fst.md) | 65 | `declaration-track:e4b5756931da8dca124e05de951ee0c94fc7ddfe79871889bcee9ced37b4e4ee` |
| 5 | `def` | [snd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/snd.md) | 70 | `declaration-track:973cea5d970384721dc8eda43b86243ccaf92e8e84009e0938d5976379fb4923` |
| 6 | `def` | [inl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/inl.md) | 75 | `declaration-track:74c5f3a5e0cbc4ea2f184e991fa4f8e8adb9bad2685b6f464a7001b78900ff5e` |
| 7 | `def` | [inr](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/inr.md) | 80 | `declaration-track:255dfbce1c0f62e39d70c35499db0f2c9a5bfd5eeb4cd1576af28aea8b48b584` |
| 8 | `theorem` | [fst_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/fst-apply.md) | 86 | `result-track:83a0cc18dd66716353857966a86b87238756ab33b0762a0ec4deabdc5d949e4f` |
| 9 | `theorem` | [snd_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/snd-apply.md) | 88 | `result-track:4caef638890f42e84ce1994f1b33a74a0d92f6b9a5d04823eb0f343d7e408e89` |
| 10 | `lemma` | [coe_fst](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/coe-fst.md) | 90 | `result-track:e6eec5496f0732e5d5d21d0b55e5c1281986ccebaba827e61af80db42a03ab8a` |
| 11 | `lemma` | [coe_snd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/coe-snd.md) | 92 | `result-track:1bdec3dcb21b7fac8745cbc37d01ecdcc9d91316f4818d5d3aff296a2652a308` |
| 12 | `theorem` | [fst_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/fst-surjective.md) | 94 | `result-track:3aa01eb5538aad7ed1e9274584db4a5fff171819791b7f952b2fca256643b9bf` |
| 13 | `theorem` | [snd_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/snd-surjective.md) | 96 | `result-track:23e8614b3154811e0ebdc653cbdde1934af95b1b026d8e892da3f431932d79cb` |
| 14 | `def` | [prod](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prod.md) | 100 | `declaration-track:577d3e53b13fc9dafd74b71cc8fb3d7e4c4a4f9c53d601929ad6c7817bb6dcbc` |
| 15 | `theorem` | [coe_prod](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/coe-prod.md) | 104 | `result-track:318b2bd5182f1eae49e3390fb88ae1b27cf839937260bd4d47f05c24d6191047` |
| 16 | `theorem` | [fst_prod](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/fst-prod.md) | 108 | `result-track:d93d8c7ef15b012761565384fdc8ba5aa84554115db37935dc1233bda8a9e011` |
| 17 | `theorem` | [snd_prod](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/snd-prod.md) | 111 | `result-track:8850b2f68eb89f935ea80d3ced0fdd0206b58f7d6afa3d82913d550fcd7cd38d` |
| 18 | `theorem` | [pair_fst_snd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/pair-fst-snd.md) | 114 | `result-track:1a9778f1e60d35970952aadecb3e56333c937082c9cb0e4df8b0bfa8981dfaff` |
| 19 | `theorem` | [prod_comp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prod-comp.md) | 116 | `result-track:b5e4890895998740bd54693d76c7f9887365756e7cf678ae8c5629afc31a84e2` |
| 20 | `theorem` | [inl_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/inl-apply.md) | 120 | `result-track:004134e2273aaa572b7c85259936e80594d6f65a59fc3971b28e1b101057e459` |
| 21 | `theorem` | [inr_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/inr-apply.md) | 122 | `result-track:edc411502434eff4ca7fc2929a6817f9f8cdae2294d37a5239a7f43617e1a98a` |
| 22 | `theorem` | [coe_inl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/coe-inl.md) | 124 | `result-track:c521db56bc2e7c02dd87bc678126a799b4936ef61e9b24259331ed29af07b878` |
| 23 | `theorem` | [coe_inr](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/coe-inr.md) | 126 | `result-track:eceb7f24dd45ab90de11d0fc44f34f88433b6078a18867c48ecd2020f44309e7` |
| 24 | `theorem` | [inl_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/inl-injective.md) | 128 | `result-track:a1b35d35f6a3834dd768edbc84fabc8b1999e3b9cedd14af267fa70cfa5c3808` |
| 25 | `theorem` | [inr_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/inr-injective.md) | 130 | `result-track:71c23c4137653c10722e46d7ee50cef6de331a38dda146ba27031ee377f578f5` |
| 26 | `theorem` | [range_inl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/range-inl.md) | 135 | `result-track:1c610a450340fe12c839880011d29a371825b66e9879a314521a2a0755fd10a8` |
| 27 | `theorem` | [ker_snd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/ker-snd.md) | 140 | `result-track:12852b4a036eba737f58a03701131c200c8867300978eaaeb18cd53c7a855ab7` |
| 28 | `theorem` | [range_inr](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/range-inr.md) | 143 | `result-track:569605732383157c084e42f490cb1138ed87dade37ca14a2eaf2a86f44bc2144` |
| 29 | `theorem` | [ker_fst](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/ker-fst.md) | 148 | `result-track:76e2dda61891dff3639de653fff189437a5132af67408511034c70e9382f6654` |
| 30 | `theorem` | [fst_comp_inl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/fst-comp-inl.md) | 151 | `result-track:2f483e1075a2f836b7c4289eceee05d7bef50cc04fc93c81a6b869e4e6ca508e` |
| 31 | `theorem` | [snd_comp_inl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/snd-comp-inl.md) | 153 | `result-track:76d113c6eb5f806fe90b1199a945125d6e7175328c80ff9520ac9b9adf084a6b` |
| 32 | `theorem` | [fst_comp_inr](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/fst-comp-inr.md) | 155 | `result-track:2bfe3c0f9f04f2c357687f5a25e55ffc79f003b6f896e1a42b709d164a58a364` |
| 33 | `theorem` | [snd_comp_inr](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/snd-comp-inr.md) | 157 | `result-track:0e9350b3c7b1ea64ef4f00177b39f3b4546510125c7bad3e0fc5d621a8ea1f94` |
| 34 | `theorem` | [inl_eq_prod](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/inl-eq-prod.md) | 159 | `result-track:2ea6894f3888e133a83eb5fdd51988e8cb8875f6b149c3e92c41760a7d4a9d30` |
| 35 | `theorem` | [inr_eq_prod](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/inr-eq-prod.md) | 162 | `result-track:779a17e8482f95c20dc19a0f50774a216bb0fa0a35b4153891bae4663a5e9cc5` |
| 36 | `theorem` | [prod_ext_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prod-ext-iff.md) | 165 | `result-track:c7d5160d23e114101fde1e247e115a1bf882a80d2791fb8009b45e189a3bc69b` |
| 37 | `theorem` | [prod_ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prod-ext.md) | 178 | `result-track:5df3fc7a065b1c77fb4cf57db074dc22527b95d52c617865f0177870bdb0c9d6` |
| 38 | `def` | [prodMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prodmap.md) | 185 | `declaration-track:75129f0acda01e72acc8669a44038f733a7ec3cfce3678f089a1b6b735c2c637` |
| 39 | `theorem` | [coe_prodMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/coe-prodmap.md) | 188 | `result-track:f0edb6a2ce144685fe5bc8f006e40c387be341658d94a8e6669d638cc34f5132` |
| 40 | `theorem` | [prodMap_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prodmap-apply.md) | 192 | `result-track:fbd9f8684f83844e2a487ad1418650ae1c86cb57b5a9ceb3bd9a592bfe8e39e0` |
| 41 | `theorem` | [prodMap_id](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prodmap-id.md) | 196 | `result-track:aaf3b4a153264d8671c1326b5b1050c7aff02f96fa79b528ac486b94df3cc36e` |
| 42 | `theorem` | [prodMap_one](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prodmap-one.md) | 200 | `result-track:ea7c0e752080f68f31c483b18544317eb0fe3771feafccc60cb0c0ba48987f3e` |
| 43 | `theorem` | [prodMap_comp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prodmap-comp.md) | 203 | `result-track:6734cc37770e293545c5f5ffa33c914255c4c3164ffbe2db1ef70db04d02b0a6` |
| 44 | `theorem` | [prodMap_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/prodmap-zero.md) | 209 | `result-track:529e0b874d289d7c8ccaad565a494713dcca5a2c12869eb6910c022dcf5ac163` |
| 45 | `def` | [LieEquiv.prodComm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/declarations/lieequiv-prodcomm.md) | 216 | `declaration-track:5651c9961ebc6698eb51b928b54a6cb7b6b7aa9bceda3184382b5f3d5f403c97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36913d3bd1f0db6cef93a22aaae1588f31931412d4dabcf3851f731ad12cbb1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variante81e1fb909869d68ea9580dd5d7ec0f5a035f10fca5a4da87dddff16caecc0cd.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Prod/Variante81e1fb909869d68ea9580dd5d7ec0f5a035f10fca5a4da87dddff16caecc0cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
