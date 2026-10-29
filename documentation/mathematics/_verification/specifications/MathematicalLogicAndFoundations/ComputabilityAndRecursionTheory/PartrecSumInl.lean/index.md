# Verification target: Partrec Sum Inl

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ea4baff6673f5b1dea26fee4566ac47ec4cabc0",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantbd307c71bfb9f24c089832fa7c03aab08b0795b37db42a93d08956c9c002398f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ea4baff6673f5b1dea26fee4566ac47ec4cabc0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantbd307c71bfb9f24c089832fa7c03aab08b0795b37db42a93d08956c9c002398f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantbd307c71bfb9f24c089832fa7c03aab08b0795b37db42a93d08956c9c002398f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Primrec` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PSub` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lbp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/lbp.md) | 41 | `declaration-track:47a0013829398b7b388f19c7c1af78a2c5b6d755ee68051f277dff588417ec12` |
| 2 | `def` | [wf_lbp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/wf-lbp.md) | 44 | `declaration-track:96bd55059908a6062a42a0ec0f6aeeb2ca4ccff90360ab4f9a327b069d9c5ba7` |
| 3 | `def` | [rfindX](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfindx.md) | 57 | `declaration-track:afe25a84491b26d2cf03edfd6a95bce5d5d6ba756820d300bcbea05d6efc9898` |
| 4 | `def` | [rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfind-source-edition-2.md) | 83 | `declaration-track:488df12b15351e3b66bf1c94ef139158013171fe9351dd50c1cfd010e8844645` |
| 5 | `theorem` | [rfind_spec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfind-spec.md) | 86 | `result-track:dee7889c435b1c3f778a157a8090a4c1b04c61065f73551abdc5791fb93aa589` |
| 6 | `theorem` | [rfind_min](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfind-min.md) | 89 | `result-track:2cd8777012c1417392b37f998ca916843bbecbe0ec9a59becbf16c7131589bc9` |
| 7 | `theorem` | [rfind_dom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfind-dom.md) | 93 | `result-track:7ef1ba36e12ae8a3e31879ee98f90cc3ce40a220b859e0cace122304501c6911` |
| 8 | `theorem` | [rfind_dom'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfind-dom-source-edition-2.md) | 97 | `result-track:82ea6b87dfd63b124d0ef8292942b1a4cd48fc205b8dd7b06aa42579e9c40f87` |
| 9 | `theorem` | [mem_rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/mem-rfind.md) | 105 | `result-track:23cbc7c7279b3ede34d983ce96e3e92fcccf360f2336dd46a0d5205d68be998c` |
| 10 | `theorem` | [rfind_min'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfind-min-source-edition-2.md) | 114 | `result-track:56b9c08785afc4be1b8a578119f83ed3a2080a9b8e8aee69c41254c08a2551ff` |
| 11 | `theorem` | [rfind_zero_none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfind-zero-none.md) | 119 | `result-track:8ac4565965c9e8b1eb169b1da4f3f12c72e3a27b615e90a2ca660c64794124e9` |
| 12 | `def` | [rfindOpt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfindopt.md) | 126 | `declaration-track:ea9867ba3cbf4d003e4357870dd28b69a8ef69b7c9c16e55877267d38871bcb5` |
| 13 | `theorem` | [rfindOpt_spec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfindopt-spec.md) | 129 | `result-track:d62dec31ad2917b0145073ea449ae2d4707e2c48c0fb20bda692f4a96d612e5f` |
| 14 | `theorem` | [rfindOpt_dom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfindopt-dom.md) | 133 | `result-track:f62df0b378fb6629ee4e5fba6e05d55ce6b95b550a84944be4bc0e0cca5df497` |
| 15 | `theorem` | [rfindOpt_mono](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfindopt-mono.md) | 143 | `result-track:f9e88f4751bd1f9a53fc8d4fec98d038778421aff4358fb739110fbeace1c36e` |
| 16 | `inductive` | [Partrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/partrec-source-edition-3.md) | 152 | `declaration-track:e74744fd659e1cdde7c64cfc42e16a5265573988aca2c87619a7c19636fc751c` |
| 17 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/of-eq-source-edition-3.md) | 165 | `result-track:dbe9436e32c5cfbdcfd9a8392080314f4611c2fd965533f3fc8de2bf52c562cc` |
| 18 | `theorem` | [of_eq_tot](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/of-eq-tot.md) | 168 | `result-track:24d816f6a045dc32ad79ed4faa0801d8a7b138e43322e31697c812f6fb4b27ce` |
| 19 | `theorem` | [of_primrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/of-primrec.md) | 171 | `result-track:5e793d265005cddb4e2d1ac46a096d0e091f280a1f0912881d34a2429932638a` |
| 20 | `theorem` | [some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/some.md) | 191 | `result-track:27576dfcd2101090961fdcf8a46da3f27e660f1dcee63a879ec5f3b2f0f31b8b` |
| 21 | `theorem` | [none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/none-source-edition-2.md) | 194 | `result-track:60a622915531bf6ac056e8e803740bcc69764e5beb9f8fa713e926b9b5e5dece` |
| 22 | `theorem` | [prec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/prec.md) | 198 | `result-track:4ee52bea7209b1e0915962cf7a681a21409d49eb414ae0bf6fbb3321415a9ff8` |
| 23 | `theorem` | [ppred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/ppred.md) | 204 | `result-track:6d39f7ec635104283f6075de3881e11ad6b91b4235a263bed3c092024c9d74bd` |
| 24 | `def` | [Partrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/partrec-source-edition-2.md) | 226 | `declaration-track:cd3319a58216f1074b403e9ac6736f676acba7167ade0c7ac314d7e00dd081c8` |
| 25 | `def` | [Partrec₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/partrec.md) | 230 | `declaration-track:1243631fb7a74bdde41edb59b49a19d2fb3f3db8e84429e23c0e7128ea22b789` |
| 26 | `def` | [Computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/computable.md) | 235 | `declaration-track:aa4c97ef8753c7c81b07daafc41562154ed6b00e2d855007d6519facb514616b` |
| 27 | `def` | [Computable₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/computable-source-edition-2.md) | 239 | `declaration-track:c4afcc224bde8af469c953f6cd625155b5eb43b650458db5df120df2983cd8fa` |
| 28 | `theorem` | [Primrec.to_comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/primrec-to-comp.md) | 242 | `result-track:784fa750ab2e23a09ace00a911e873de8a2b27addb981d8e76dd2a6a9249a9a2` |
| 29 | `theorem` | [Primrec₂.to_comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/primrec-to-comp-source-edition-2.md) | 247 | `result-track:f233a4f0a51a2b7b12637d06d6bb90500cb2183428ccb880ad19d27b3dae9966` |
| 30 | `theorem` | [Computable.partrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/computable-partrec-source-edition-2.md) | 251 | `result-track:948409d3be7189b3ec71f63b1c26ab36630f2f935e5620b0523323ceea4ef15c` |
| 31 | `theorem` | [Computable₂.partrec₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/computable-partrec.md) | 255 | `result-track:887a9a2c6b8dc2ebf9227cd3e1f5264e6965e66c47e0ec6677fd2e5c477fa363` |
| 32 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/of-eq.md) | 264 | `result-track:1e7da6fccbc2b4fd8eedefef609e2280abed8e61880c282c67d117368e951921` |
| 33 | `theorem` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/const.md) | 267 | `result-track:bb064695935a4ba4c55c691a45fb65c53154c7265a6f7107ee6acd3fa5303f57` |
| 34 | `theorem` | [ofOption](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/ofoption.md) | 270 | `result-track:4cd7382e614ebdf1c562ab62d8ba696c2aedca99a1d09795992e1b772f2d1a10` |
| 35 | `theorem` | [to₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/to.md) | 275 | `result-track:2a3973028a4991bacba8bc90eaf6d0f581058de9de1b17b5e0f56244d7a7baef` |
| 36 | `theorem` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/id.md) | 278 | `result-track:535c5257754d06ee976b4abbf95a4d7a8d0e4b22099238528cb524a488108bd2` |
| 37 | `theorem` | [fst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/fst.md) | 281 | `result-track:e48d54175136c56e21e2b9cb15a464e8d30de18059e25ccfb61030e422618587` |
| 38 | `theorem` | [snd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/snd.md) | 284 | `result-track:e21ddc96e179048d2d8825c735e8a79f57764844b8a6b765d81d61107184487d` |
| 39 | `theorem` | [pair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/pair.md) | 287 | `result-track:c6ec9ae9693a34b1ffcdba1a6fa980dc4a757dfd18d6b16b5ae94e5c2030385d` |
| 40 | `theorem` | [unpair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/unpair.md) | 291 | `result-track:6282ea783bdee58132bc997fa5a7abb70ee3086ebaacefc5276e09d3ab9bd430` |
| 41 | `theorem` | [succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/succ.md) | 294 | `result-track:6b84462be8edd3fdc6a7dbdcd4f87efa96982cacb8b3be54f3aa715274bd2a26` |
| 42 | `theorem` | [pred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/pred.md) | 297 | `result-track:1cf171d7a1cf30775c8e63842c1fb32b7e08f98c4ab31feefc33148cc5068420` |
| 43 | `theorem` | [nat_bodd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/nat-bodd.md) | 300 | `result-track:50701c7ee7d8280dc66d8c0920f24387cf3403f8e32393096d34f9fdb89fb77e` |
| 44 | `theorem` | [nat_div2](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/nat-div2.md) | 303 | `result-track:2e971fb010e3f09915d58592d82f4b42d9c9a49f3ee7eb57899cc9e540ec53bd` |
| 45 | `theorem` | [sumInl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/suminl.md) | 306 | `result-track:cd4967c45fef7b2a1bbd94a9cf9e586b1c9a7526f15cf8a7d85311c0db8f40e9` |
| 46 | `theorem` | [sumInr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/suminr.md) | 309 | `result-track:5b4ff923bc5506a9d5e5485bb5d04137732c7eecb5652484cd507fa37eda50dd` |
| 47 | `theorem` | [list_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/list-cons.md) | 315 | `result-track:1e03e0b820ff3dc5efd55914e2170e0de8569c3bbce6c9a4a1fda01462793349` |
| 48 | `theorem` | [list_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/list-reverse.md) | 318 | `result-track:3836e6b66cb3b1dd95985c6e727a36ab86e7e3dec95342b6dbe31c07f8c411b1` |
| 49 | `theorem` | [list_getElem?](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/list-getelem.md) | 321 | `result-track:206939f0149790c2fec493b60488737cf9d55ce77e8baef90c8720e94cdcb61a` |
| 50 | `theorem` | [list_append](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/list-append.md) | 326 | `result-track:6d324dfc423b6ebb2f58383a7dc1a929a092bc8598e8e6c93a455b0389f7b671` |
| 51 | `theorem` | [list_concat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/list-concat.md) | 329 | `result-track:a5e5dc84ce0c0ef968096be3611d3535be5027623ce6b7648f5f434e77aa7185` |
| 52 | `theorem` | [list_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/list-length.md) | 332 | `result-track:ea3346fce1cd7f9e889f91439d23854fbeae3c0c6da580dddb425789faee509a` |
| 53 | `theorem` | [vector_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-cons.md) | 335 | `result-track:5f6c1772fb93a277ec7a54b3af645f169b546902e348e03561b5e07c2ce206be` |
| 54 | `theorem` | [vector_toList](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-tolist.md) | 338 | `result-track:18c912d0db445ba8890dfc7e5ead005843961b8511cb026ca8ffdf988d737e77` |
| 55 | `theorem` | [vector_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-length.md) | 341 | `result-track:6e1c1a2a214b5b8b5379e0455bd9fa421da99a7b38233a5372ef1882ca1d7cfc` |
| 56 | `theorem` | [vector_head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-head.md) | 344 | `result-track:0927e837ded3d3173a13fa0a092016019bfcd4ce56c4e94f7aa3ac590dd50932` |
| 57 | `theorem` | [vector_tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-tail.md) | 347 | `result-track:fe50c42319b14451e983747986cd004a989eb92b5f521956a780c74d7cbbe331` |
| 58 | `theorem` | [vector_get](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-get.md) | 350 | `result-track:37d6e503bd911444306a1a4e93f1dab195a3124e53d9908f96dd7881e5c0bfbd` |
| 59 | `theorem` | [vector_ofFn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-offn-source-edition-2.md) | 353 | `result-track:6c2785f0b43fe633e7f20cb99629813674dfc72446d1b51fb409a59ef1c150b9` |
| 60 | `theorem` | [fin_app](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/fin-app.md) | 356 | `result-track:d006569deb91d9f99d82f65908fb59fdfc84d0746a0171549b86dde1859a829b` |
| 61 | `theorem` | [encode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/encode.md) | 359 | `result-track:006ed1ef43e562698d3b126d6bb9e724dde34efa1c81de1f5d6d3d5a7dfe94f9` |
| 62 | `theorem` | [decode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/decode.md) | 362 | `result-track:641519c8ba3fd7e139eed043bcc005a82fe3b45614c7be3f417aba5edf00df52` |
| 63 | `theorem` | [ofNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/ofnat.md) | 365 | `result-track:528bee6f74254b08a61ca0bc2bb5e34f578109021c420d0d899e1904a7ba6243` |
| 64 | `theorem` | [encode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/encode-iff.md) | 368 | `result-track:6ddff252d1bb9600ffb7c03d33a97ab7134bcd4b065c52b8756c169e773a1758` |
| 65 | `theorem` | [option_some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/option-some.md) | 371 | `result-track:a0c3d7aab6a994db5e8c4b6a972072b3b6aa4811881740bf1c0abe9b106b9f0e` |
| 66 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/of-eq-source-edition-2.md) | 382 | `result-track:2d792b2fd980b6876391a1734ba2e74c6b2831bf01835ac1622fef28c806c851` |
| 67 | `theorem` | [of_eq_tot](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/of-eq-tot-source-edition-2.md) | 385 | `result-track:e8d429defa689e8d61fce404759d788dbb90c2c3cb37af7ae77087e444ee94fd` |
| 68 | `theorem` | [none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/none.md) | 388 | `result-track:588b16e8b7a34bbee4d0792cf1cccb6c37c2b4951cc9853e572407df259bdd2a` |
| 69 | `theorem` | [some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/some-source-edition-2.md) | 391 | `result-track:7f07dc454b3bc7a7b9b69956ed59f66b032281f2036eb2a355f8767072d7bcd1` |
| 70 | `theorem` | [_root_.Decidable.Partrec.const'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/root-decidable-partrec-const.md) | 394 | `result-track:6cfea495c16bbb8d3d5ea686828860b43272d724c2d6a123b7d0aeec3b700dde` |
| 71 | `theorem` | [const'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/const-source-edition-2.md) | 397 | `result-track:f45dd8b9a51f43c1c2855339ad9b4955eb72b3f670680c9b27d36d6aabbc4b08` |
| 72 | `theorem` | [bind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/bind.md) | 401 | `result-track:d5476105ac9f54f35e10d3f102a1e06c5caa7b6f3cd7d2ad15d2e14d236aa7d5` |
| 73 | `theorem` | [map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/map.md) | 406 | `result-track:f6504f705b31d5979e90c140514a8234f6a8f0d816b65cd4271e3ab1e5e912f6` |
| 74 | `theorem` | [to₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/to-source-edition-2.md) | 410 | `result-track:7f4b9597d73e6530e3211c51ccfec0693591d03e4ca07b0fac7967cbf333889e` |
| 75 | `theorem` | [nat_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/nat-rec.md) | 413 | `result-track:2f522e448ceeeaad9721849661a36deafc3382b8cec02d040b0a1f6cd7df8a8d` |
| 76 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/comp-source-edition-6.md) | 422 | `result-track:b63df10a853e35cf695cee56e83db312791a2cb6dd12c70546e69c9dce2ef32d` |
| 77 | `theorem` | [nat_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/nat-iff.md) | 426 | `result-track:b0f16d81e0353dca16b9d60b21d09f27ba2698798e0a70246b17032a576d3cea` |
| 78 | `theorem` | [map_encode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/map-encode-iff.md) | 428 | `result-track:9eb086a5a25a06ff18f48665c28ac5d4a6d0a70774d53259d369f4f440d4da0b` |
| 79 | `theorem` | [unpaired](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/unpaired.md) | 438 | `result-track:cc864c33d0fe521e2234973e85354322265fe0ab59fd7574f4ceafe8907be9b1` |
| 80 | `theorem` | [unpaired'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/unpaired-source-edition-2.md) | 442 | `result-track:ed0406626e78b508898cab599be2b311950cbf1950a3c073d7c3fa2feece8cee` |
| 81 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/comp-source-edition-3.md) | 445 | `result-track:3b2373ab583911182f9159a013c26937ab7a54a4848ac24677a46292c0b78835` |
| 82 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/comp-source-edition-7.md) | 449 | `result-track:ef49274efad22fe8f9d2dae8f2858d697103d00c0968e5a68f40dd65d6d02fd3` |
| 83 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/comp-source-edition-2.md) | 460 | `result-track:2335b266e8d1868c2816dd9d3f2626a4cbbf5ad68190c796670188fbfdf32264` |
| 84 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/comp-source-edition-4.md) | 464 | `result-track:47683cf8aef2c975ec1486fbe72f9f9008e285e9d16d5511ba67b88fb55d3980` |
| 85 | `theorem` | [mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/mk.md) | 475 | `result-track:e8b24acab2dc0f388b80bd45e7a409d4bebae7a593ec02861b1300ae9c3fa930` |
| 86 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/comp.md) | 477 | `result-track:1dd05f1daba770c93a620eec6fedc515ea600ea31758a8dd189c3ef7ca8c0824` |
| 87 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/comp-source-edition-5.md) | 481 | `result-track:48a46e391c17f58153a1bc0da7984ccc9c241cac881ae0c1fc941120a5c20064` |
| 88 | `theorem` | [rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfind.md) | 493 | `result-track:39681c58962894f1aee7a417b6218faee80e48138c1663fdb87b5a2246630918` |
| 89 | `theorem` | [rfindOpt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/rfindopt-source-edition-2.md) | 503 | `result-track:fcab66aef88cad304c8e4efe2f69b94d0949d652b3560647393abd3ed65f024f` |
| 90 | `theorem` | [nat_casesOn_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/nat-caseson-right.md) | 507 | `result-track:99834eff8674105ed3a37d053f65e96e8a5ef44c6c7154f3955d3e3b7d7bead2` |
| 91 | `theorem` | [bind_decode₂_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/bind-decode-iff.md) | 520 | `result-track:17f748f9f57a5e23b23c1d9877a8235093907cb0abe1521e0afccfcfd4dd6386` |
| 92 | `theorem` | [vector_mOfFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-moffn.md) | 529 | `result-track:885e5ea2f74d8cf04d391596fd1b118ac5a89d9cd3ed78a023d47e690d75fa67` |
| 93 | `theorem` | [Vector.mOfFn_part_some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-moffn-part-some.md) | 543 | `result-track:72f982935544835891f9c87f1652817d9fea9930ac9b7c37da95a2a0d2c81ac6` |
| 94 | `theorem` | [option_some_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/option-some-iff.md) | 553 | `result-track:9eebc739ce7881332e46dee13c94de7ad96f8bb30874aaf1c19795bd2d5b1571` |
| 95 | `theorem` | [bind_decode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/bind-decode-iff-source-edition-2.md) | 556 | `result-track:99f1ce765e735b7fb102aef555e6c13c918540629c794f9f4c493e5154df4d84` |
| 96 | `theorem` | [map_decode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/map-decode-iff.md) | 581 | `result-track:bdcaad065d5bb66b2afc9fb69f3176bd1a74ca5ec7975230d0d176020f198e6e` |
| 97 | `theorem` | [nat_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/nat-rec-source-edition-2.md) | 586 | `result-track:80693f4ec6f8862e6376b0b3ac20662c82b7073ac61fc64891b3f3289a6111e6` |
| 98 | `theorem` | [nat_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/nat-caseson.md) | 591 | `result-track:6a041917fa84688a249ca97c74235396cf93d46a3f5433ca015e960e40573929` |
| 99 | `theorem` | [cond](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/cond.md) | 596 | `result-track:cb4919f9abb2fd403f3897deb25ae2501508b77a097e4110afcfe87272936d79` |
| 100 | `theorem` | [option_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/option-caseson.md) | 600 | `result-track:29f1c9fff552a718217bedad15991cea05bd2e672efb9c45fcbe9b9639aaadae` |
| 101 | `theorem` | [option_bind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/option-bind.md) | 607 | `result-track:e1965cbeb99635e99336bef13add6d4ee9200533913c2e18f7c2f6c4b765720b` |
| 102 | `theorem` | [option_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/option-map.md) | 611 | `result-track:74c7d4a5000f0150c4e17510466e474040a5310607c8b971d6b2c236a337fb23` |
| 103 | `theorem` | [option_getD](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/option-getd.md) | 616 | `result-track:3818b3552327b072f57894975160c344c8b8c200d7139fb082352c4671e10c02` |
| 104 | `theorem` | [subtype_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/subtype-mk.md) | 621 | `result-track:28629e43c99fd8765620db7bb7d187b881654815b1441dcc0cef03a74c79c48d` |
| 105 | `theorem` | [sumCasesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/sumcaseson.md) | 626 | `result-track:402d4f78325955c77e37537639df18d6876d837cd1ca043c1219b25a17cea3d8` |
| 106 | `theorem` | [nat_strong_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/nat-strong-rec.md) | 638 | `result-track:d60b44a19ac2243603caf175bf06dcd67a5569653e1d6a7b7d9cd23c597ab847` |
| 107 | `theorem` | [list_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/list-offn.md) | 655 | `result-track:56c1913e3982a8f48cdf3610a14c878f3c84005a264c7a2c31331afdd45b8db2` |
| 108 | `theorem` | [vector_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/vector-offn.md) | 665 | `result-track:29bdfc373357d081aab448620ca02b58f3a912c56b0a7c6ee0997cdf89e32579` |
| 109 | `theorem` | [option_some_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/option-some-iff-source-edition-2.md) | 678 | `result-track:f33f01ec9f23bcd03024a2feec4e99779628449d77cb307bde0b0a3215a3d618` |
| 110 | `theorem` | [optionCasesOn_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/optioncaseson-right.md) | 682 | `result-track:9e8b7e40e74d312c0ed994c448f11627f4becaafc2bcec0d0a52e432c1213618` |
| 111 | `theorem` | [sumCasesOn_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/sumcaseson-right.md) | 695 | `result-track:d61a6734a4224d47da86b56daff6aac4dd55e97cc6d298aed77eac439524627e` |
| 112 | `theorem` | [sumCasesOn_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/sumcaseson-left.md) | 711 | `result-track:ecbd38ab8743737330b63c6fb8b051f2b41c29d67c8bf7241f18afb1cc882c71` |
| 113 | `theorem` | [fix_aux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/fix-aux.md) | 720 | `result-track:9da3c4162b1f64c5fb842c63eb3728a896c5659fcf23df460f88f2be1c27de3c` |
| 114 | `theorem` | [fix](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInl.lean/declarations/fix.md) | 757 | `result-track:d1faad009fe3b7a32a771aef51a14a4828663f45d870f0de688c09f5237bceec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9ed59d7e97e9b8771268c8fd8dc0d2e00fc70e1e502b14a9c6e7bcdf335b884 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantbd307c71bfb9f24c089832fa7c03aab08b0795b37db42a93d08956c9c002398f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/Partrec/Variantbd307c71bfb9f24c089832fa7c03aab08b0795b37db42a93d08956c9c002398f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
