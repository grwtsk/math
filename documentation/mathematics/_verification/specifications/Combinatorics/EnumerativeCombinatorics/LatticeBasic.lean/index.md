# Verification target: Lattice Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb0a197af422ad45c018a5da24c6800cd99781cb",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant6b778f1a85876e381069484ad267f5e9309734e1fb9ffd59771bfd73076545ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb0a197af422ad45c018a5da24c6800cd99781cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant6b778f1a85876e381069484ad267f5e9309734e1fb9ffd59771bfd73076545ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant6b778f1a85876e381069484ad267f5e9309734e1fb9ffd59771bfd73076545ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.FinsetOps` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/instance-source-edition-6.md) | 62 | `declaration-track:d7371f7c2e3928e26d691caae1a9ca318cd2609a28158ecfc9ed305997fc78d3` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/instance-source-edition-3.md) | 66 | `declaration-track:8260c7d17424627fbbcf59357511e9d64c178b4e5e9ee95c9215630acfdc41e3` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/instance-source-edition-4.md) | 69 | `declaration-track:90f8357a2a27e72fcc36ade373ebb76da60bcf4e9c6c66e9e883c8b4a24329f0` |
| 4 | `theorem` | [sup_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/sup-eq-union.md) | 81 | `result-track:5713c8a66f2c16c1f78a4abb9155e7523d30ba38c81b25b488bdd420cd346831` |
| 5 | `theorem` | [inf_eq_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inf-eq-inter.md) | 85 | `result-track:e628f628caf19db9bf7b326a3ad4bdf357d53b0c87ad613626d7d184679c6dcb` |
| 6 | `theorem` | [union_val_nd](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-val-nd.md) | 90 | `result-track:949e8bbf630e59a96456061c28c09ed8f2e6787f42d8df1ebb1cd0014e97e16f` |
| 7 | `theorem` | [union_val](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-val.md) | 94 | `result-track:8e591e4d04fa7d2a7987134633a828279abfb4ce39ef161478f2c2b43fc1d491` |
| 8 | `theorem` | [mem_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/mem-union.md) | 98 | `result-track:e7d978c7aed8e7ad2a985f14bf6c564278a1ba9a6cfe400e2bf895aa85a54478` |
| 9 | `theorem` | [mem_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/mem-union-left.md) | 101 | `result-track:3fca6c570b7a589c3124cbbc0a45b22e5ff683fb4a7edbf81ce60b3f9d899a2c` |
| 10 | `theorem` | [mem_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/mem-union-right.md) | 104 | `result-track:d131d7238f11a5bafd96a66d58e1e19471e907ae43a3efa525a07e1aadf94db5` |
| 11 | `theorem` | [forall_mem_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/forall-mem-union.md) | 107 | `result-track:1ab2b234fad41d6525bba176815d2c4953e36a0d76156b5368fa773b0f08f979` |
| 12 | `theorem` | [notMem_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/notmem-union.md) | 111 | `result-track:cc539b72fd12120d19964bc2c5e1f056b8f99b6a7be5ca73516ec7d4dafe6887` |
| 13 | `theorem` | [coe_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/coe-union.md) | 116 | `result-track:aab613aeddd20364432cbc23f87f573f12c1ab64e9c6902a3b7198f219ddab7d` |
| 14 | `theorem` | [union_subset](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-subset.md) | 119 | `result-track:de5f74bd5565e26f68521316ce1e0bac4f8b9c4a2aff5ae38a0d4899eb064cd5` |
| 15 | `lemma` | [subset_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/subset-union-left.md) | 122 | `result-track:ae16266c2ecc0ecafae9bebaa93a2e97afb61d247640df3070193074b18cc4b6` |
| 16 | `lemma` | [subset_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/subset-union-right.md) | 123 | `result-track:56b75958c0da36a8c8fd5f9bdaf0f0ab276f0d4363babbc69370f9dc1bed9d32` |
| 17 | `theorem` | [union_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-subset-union.md) | 126 | `result-track:1832bc12046bd6021a259ac15ae9989d56f00ad79e24bf2ae1d83dc2965dfc7a` |
| 18 | `theorem` | [union_subset_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-subset-union-left.md) | 130 | `result-track:8af106ccbbfe724fe2acfaa979e4313d7d5d3bdd83d503eba413be933035a344` |
| 19 | `theorem` | [union_subset_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-subset-union-right.md) | 134 | `result-track:521071a1a5cad6819472c770ffd29160cfc9ae551185bcaf1ae609fb9f21059b` |
| 20 | `theorem` | [union_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-comm.md) | 137 | `result-track:e1fc56627a9c0f89cc849ccfa50d3b9d19518dbfdd075148c54388ae05974d32` |
| 21 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/instance-source-edition-2.md) | 139 | `declaration-track:734d012613f4f92c5b44a6b6ec6df185e12212148bc323fa12f6d0185f71f4a5` |
| 22 | `theorem` | [union_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-assoc.md) | 143 | `result-track:d71d6601e1aea3fac795204fd1eb47c4c7aa8443ad0bd2dc311e870d267f0d8a` |
| 23 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/instance.md) | 145 | `declaration-track:72fed5ab36e441cd91979de9d17500150decb79520facef9474e96ba40069876` |
| 24 | `theorem` | [union_idempotent](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-idempotent.md) | 149 | `result-track:fbb501152a8275da6ad4b34a62b6d6842f6f3e4ff41bc64b3d31e5f6d4197569` |
| 25 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/instance-source-edition-5.md) | 151 | `declaration-track:d11f60e4e55fd9700f79bd391d085d1bde287eaad03e1d60c2393dd5e1905bd1` |
| 26 | `theorem` | [union_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-subset-left.md) | 154 | `result-track:e0fbc5e6ae82f3f2f6f81cf890c9b7f7d93993b1ec481422f322c320bfbff255` |
| 27 | `theorem` | [union_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-subset-right.md) | 157 | `result-track:6b90dc39303702926f0aebd7daccf777e89cb943dcd501835056b866b4968cae` |
| 28 | `theorem` | [union_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-left-comm.md) | 160 | `result-track:17e270933dfe0d110a317824416846c6f264cdbcb513294d2a7059f07254b3b2` |
| 29 | `theorem` | [union_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-right-comm.md) | 163 | `result-track:773ea2f718af61ddbc842fc6068a8d32da0dd76259c075bb6a0fbf189a9e19dc` |
| 30 | `theorem` | [union_self](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-self.md) | 166 | `result-track:d7053a0818169e13c2f46e790704a1d3e0cea49a212e24064b89abd9d7d03a40` |
| 31 | `lemma` | [union_eq_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-eq-left.md) | 169 | `result-track:0c7373b598ae741f27a4cb2391054b67dfb171ce596c50217c8d53980e147f86` |
| 32 | `lemma` | [left_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/left-eq-union.md) | 171 | `result-track:f830f2ee8b46f4aa88d850e95c10f2b8ae8a426f19f72c896579629df0ec708a` |
| 33 | `lemma` | [union_eq_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-eq-right.md) | 173 | `result-track:246346d4821f243f9fbc7042f351f8aa96dc962572f1674efef706b384573750` |
| 34 | `lemma` | [right_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/right-eq-union.md) | 175 | `result-track:555e424f7cd653d776080b4c62f65f7a21ccd7549c3407e15f3e244c099a1e85` |
| 35 | `theorem` | [union_congr_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-congr-left.md) | 177 | `result-track:b2340636a17448b132bdea31a83313b5fe7f2f9e3bd06535d866e75f2bab290c` |
| 36 | `theorem` | [union_congr_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-congr-right.md) | 180 | `result-track:b547f5d0f7f564f4014cc9a654442c81029292de7c72928cab98f42b4f0b3093` |
| 37 | `theorem` | [union_eq_union_iff_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-eq-union-iff-left.md) | 183 | `result-track:049496caf5200e427163647e2b6e591a43e9b4d522dde5f67b66c5a4f0df5541` |
| 38 | `theorem` | [union_eq_union_iff_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-eq-union-iff-right.md) | 186 | `result-track:8f18d6e5faae9fdecaba99a203d57a60af2f14acb6c072229ec2c7ea6e419550` |
| 39 | `theorem` | [inter_val_nd](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-val-nd.md) | 189 | `result-track:78e53607263fd54802527d60fb48fe5e713b22955fccb186cebac219545e193a` |
| 40 | `theorem` | [inter_val](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-val.md) | 193 | `result-track:249a6a720c85c2249ee44e4eb96dc55bce4f5a089f1faa58565312b29a79cc55` |
| 41 | `theorem` | [mem_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/mem-inter.md) | 197 | `result-track:3e79ccfabcf65fe37192c3aaaab273f5adc13b9b63e2e36887411658ebc619a6` |
| 42 | `theorem` | [mem_of_mem_inter_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/mem-of-mem-inter-left.md) | 200 | `result-track:6147d2377027e506a7ede3ecb4b438f4715612c17f7e7e6f609f393d2d0b0e32` |
| 43 | `theorem` | [mem_of_mem_inter_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/mem-of-mem-inter-right.md) | 203 | `result-track:5642cfd2ddee3df4a2578287b9d012d35b7e7ae58cbd79bae0f6e572c880a7fe` |
| 44 | `theorem` | [mem_inter_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/mem-inter-of-mem.md) | 206 | `result-track:22c0e1ac7d5a63758d509bdba1688dd58cf4c3e75f80282c9349a3de3ebebe30` |
| 45 | `lemma` | [inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-subset-left.md) | 209 | `result-track:7623e5698befd41e82a4f7ae42a889da54be86d08445e99055c7c654b44c6a8a` |
| 46 | `lemma` | [inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-subset-right.md) | 210 | `result-track:189ab91f4765ad8e5949b728e976822d35b6c19b4950e5c9869378fd75d4518d` |
| 47 | `theorem` | [subset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/subset-inter.md) | 212 | `result-track:359edc34c7ebc7f8b8c9bd7cbe481a437bef35d5c6dc2575d2d6b2a4a52dc7f5` |
| 48 | `theorem` | [coe_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/coe-inter.md) | 216 | `result-track:81e915480e4b8dee682e45d4c216f6c4104ff434b99735a231e9d1a589725608` |
| 49 | `theorem` | [union_inter_cancel_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-inter-cancel-left.md) | 220 | `result-track:723b523f17b795906e9d90c5373c23257488d1089b0a0b4d5490def6a297eb2d` |
| 50 | `theorem` | [union_inter_cancel_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-inter-cancel-right.md) | 224 | `result-track:5036cece85c4f0caac808fd4ab55e5b7680779ed387114528041d88728dd0304` |
| 51 | `theorem` | [inter_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-comm.md) | 227 | `result-track:d31c261adb113c5a51f722aba4b285ba1a6880609fcdf972d70ed2be26628951` |
| 52 | `theorem` | [inter_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-assoc.md) | 231 | `result-track:8e5b76be997d5a16cf701dc79487714ef97bd52b878f8ef2fb52bb3c0a3b00f5` |
| 53 | `theorem` | [inter_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-left-comm.md) | 234 | `result-track:e7216283fd8c141c10a47ff1f533ef34fce8382e39cba80dd41cdb73d99fd77a` |
| 54 | `theorem` | [inter_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-right-comm.md) | 237 | `result-track:cbd7976b2e7296be36f138adecf33dcb972dec535bd10ef587315899aabf47ce` |
| 55 | `theorem` | [inter_self](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-self.md) | 241 | `result-track:7f2a16da8d26945545680e3046a2e55be89ef7b50abd3e4cba1e26e396036630` |
| 56 | `theorem` | [inter_union_self](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-union-self.md) | 245 | `result-track:87b18e73ffb82b33c65a60e2cf02b5ec89870c6fd9e81497238abb0dba2846f5` |
| 57 | `theorem` | [inter_subset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-subset-inter.md) | 249 | `result-track:d1baabd41c1f9ce6c41d59a46088964691d5544d31755d960b3e9a7d724955bc` |
| 58 | `theorem` | [inter_subset_inter_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-subset-inter-left.md) | 255 | `result-track:2e1bdaa0745a5467ae059bb543bda0ed7e968e161a80b5994be568ee96bc9625` |
| 59 | `theorem` | [inter_subset_inter_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-subset-inter-right.md) | 259 | `result-track:50327f0b4174c12252c7580c197140a69097570d5208ece64e2cb9f35564ff58` |
| 60 | `theorem` | [inter_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-subset-union.md) | 262 | `result-track:3ea1e4cef8d79839038cae24e91e54c77986a0f7973fe34a799e2c589159fd64` |
| 61 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/instance-source-edition-7.md) | 265 | `declaration-track:ddbe0c5940b7dc2b15b9e0986db30d94fe75b4f5b382b9d26d923879836cd0bd` |
| 62 | `theorem` | [union_left_idem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-left-idem.md) | 272 | `result-track:2374aab0be114588dfb57b1c5bed170428d527565465983d6227c0f9c7bb952d` |
| 63 | `theorem` | [union_right_idem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-right-idem.md) | 274 | `result-track:4eda3626d25ffc7c2d8acb86d08762708030a95555b865e9bc26fbd00324bf96` |
| 64 | `theorem` | [inter_left_idem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-left-idem.md) | 277 | `result-track:45fe247c12087fcb04cbc204bda68a58a30af778be2e907ebb5fe1e3dd751814` |
| 65 | `theorem` | [inter_right_idem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-right-idem.md) | 279 | `result-track:be3874832da952b152169614db30dcc30d2b90fe86f6552834115e9b9c18d557` |
| 66 | `theorem` | [inter_union_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-union-distrib-left.md) | 281 | `result-track:47d77c6f782ee1555ac9e901ffb6e2505f520bbd566d7565041f42cf46875e78` |
| 67 | `theorem` | [union_inter_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-inter-distrib-right.md) | 284 | `result-track:7e552aca80a46c2e22643d8abca26e7f2cdbfadf4dcaf4ee1249b7e3bb87e78b` |
| 68 | `theorem` | [union_inter_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-inter-distrib-left.md) | 287 | `result-track:5d0d92c09d3d36fe51630af7bb86e4e74400ce7df58ff08c424dabf701735007` |
| 69 | `theorem` | [inter_union_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-union-distrib-right.md) | 290 | `result-track:e33f56227b9c01ea1bed34b3022fc34a0f1db0aa5751ac8aade08f961802811a` |
| 70 | `theorem` | [union_union_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-union-distrib-left.md) | 294 | `result-track:5696c8f2e31c797e03813a5eafdd6a7d1c7b4af28dd70ad204cc7d8ab545da91` |
| 71 | `theorem` | [union_union_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-union-distrib-right.md) | 297 | `result-track:cba4ab3e42442cc93ec8894780145a2f8510754d7dfd379a794ed0afc615e112` |
| 72 | `theorem` | [inter_inter_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-inter-distrib-left.md) | 300 | `result-track:bd82618632f8060f233a30a5a28ba296abf57f6aefdc0575211882996d2b5c5f` |
| 73 | `theorem` | [inter_inter_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-inter-distrib-right.md) | 303 | `result-track:ac4a065ddc17142cb7a5756de3b72ca27b2469f3e6b43f6cc98ff0e9ced8e4bf` |
| 74 | `theorem` | [union_union_union_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-union-union-comm.md) | 306 | `result-track:b91d4b679256053bab19cf3ffba83ef449bd17de442659c1d6bf9f7a7a405b76` |
| 75 | `theorem` | [inter_inter_inter_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-inter-inter-comm.md) | 309 | `result-track:90a3e4ee356e4455e068866dc0a2c1a82338817957756a2a6f54cee074175b86` |
| 76 | `theorem` | [union_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/union-subset-iff.md) | 312 | `result-track:65e8576771070fa35f06cf32a8c80e98f88cce74357fbe153a3dea9034c56750` |
| 77 | `theorem` | [subset_inter_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/subset-inter-iff.md) | 315 | `result-track:942fd48c5a7ed4eb09f867ab7a90b916c8cebe151fa1f2b040024409633455f0` |
| 78 | `lemma` | [inter_eq_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-eq-left.md) | 318 | `result-track:af37fc4bc007e0b5c44c51f23c75a810e3b6d26031a94c59ca6df8c5c92eeb6a` |
| 79 | `lemma` | [inter_eq_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-eq-right.md) | 320 | `result-track:f756520c7ec586336cf28908e06729f7120b203d6e921252a10d6fe5a72b4af0` |
| 80 | `theorem` | [inter_congr_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-congr-left.md) | 322 | `result-track:543093d9a26894e3760bb202b1edd5c0db74111bde105d1654f827b8946da8da` |
| 81 | `theorem` | [inter_congr_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-congr-right.md) | 325 | `result-track:506342120f95d1fdf95ee3bc303bb2066f41ac73178a087dd9d74bbbc7b9e901` |
| 82 | `theorem` | [inter_eq_inter_iff_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-eq-inter-iff-left.md) | 328 | `result-track:964c1fff073e52ff08010876cc174187c990d9c04fc158b22ed50651c1423d38` |
| 83 | `theorem` | [inter_eq_inter_iff_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-eq-inter-iff-right.md) | 331 | `result-track:3ca4b7ca0f9d79ab318d7e646c3153561fe10f601aeee4438c6576e47bf8df8f` |
| 84 | `theorem` | [ite_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/ite-subset-union.md) | 334 | `result-track:b09fb3102b171e09eba52219f432608c84de4a287806a33dbaf30a10fb8342b3` |
| 85 | `theorem` | [inter_subset_ite](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeBasic.lean/declarations/inter-subset-ite.md) | 337 | `result-track:38ba52ab00405ae6e184dedbd136047bcedd9a789d25f39e2e80d7e114f14430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe46037edc1287ab8f76cf4d5c358e1507e6fd01801d9ebf2b02f1e3f2e8d773 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant6b778f1a85876e381069484ad267f5e9309734e1fb9ffd59771bfd73076545ca.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant6b778f1a85876e381069484ad267f5e9309734e1fb9ffd59771bfd73076545ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
