# Verification target: Partrec Namespaced Sum Inl

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17ef398f40bce1b452ba73d183802bad9aeae17e",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17ef398f40bce1b452ba73d183802bad9aeae17e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Primrec` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PSub` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lbp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/lbp.md) | 49 | `declaration-track:6c303f38e99a5fe18cc1553ee8ce92f020df0052ebb67862cb2b2e422a6704fb` |
| 2 | `def` | [wf_lbp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/wf-lbp.md) | 52 | `declaration-track:a9d23ff84fcb9e09ac2b9b94ba1bcbd95095ea76a95d680311d306644e3b49c3` |
| 3 | `def` | [rfindX](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfindx.md) | 65 | `declaration-track:b0287f4b9dbd9734e6d3a663a9f6ae3802c61e6d6823130a77c0b10bf917c71d` |
| 4 | `def` | [rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfind.md) | 91 | `declaration-track:1a4062838b12f57c36f826a206db19a91fbfee8ee8ac17d2cfa17349445e6b56` |
| 5 | `theorem` | [rfind_spec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfind-spec.md) | 94 | `result-track:46928bb9643e3d3cff34c2b9646d020caaf8a340223e981bc0f31b2b3924a8c5` |
| 6 | `theorem` | [rfind_min](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfind-min.md) | 97 | `result-track:09b5dcd3f9f7e9f69e03d7174ba5e87e40bae0417d4852382676220a70024370` |
| 7 | `theorem` | [rfind_dom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfind-dom.md) | 101 | `result-track:578eedd6fa0aec99753a1b9b0ef48cb0ef194b8e4b15c20c6f7fb6de23adac21` |
| 8 | `theorem` | [rfind_dom'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfind-dom-source-edition-2.md) | 105 | `result-track:9f176e1387117cd46ff0b5d54b431a694af60de2f66742a50e13f804150e8764` |
| 9 | `theorem` | [mem_rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/mem-rfind.md) | 113 | `result-track:878b37748c936a338d5a157bac211009f8d789930900ed700afc107dbd58476e` |
| 10 | `theorem` | [rfind_min'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfind-min-source-edition-2.md) | 122 | `result-track:0ba13a227cbe35682575fa8e444643e20fdefca92e56ae8e72b11dc14f58152c` |
| 11 | `theorem` | [rfind_zero_none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfind-zero-none.md) | 127 | `result-track:860cfbfb5a121f19f71b25539692203ecc2181dec1236568d9f0a8b81f4bc1aa` |
| 12 | `def` | [rfindOpt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfindopt.md) | 134 | `declaration-track:7d4f014f1ba38be3d0804e3d0545445ce2048e5eb1184c6dc2c2776adbfe863b` |
| 13 | `theorem` | [rfindOpt_spec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfindopt-spec.md) | 137 | `result-track:8d853dddb7b61fb89e1fc949021cf68154e42c2c1b1d2c18b51545243b89d116` |
| 14 | `theorem` | [rfindOpt_dom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfindopt-dom.md) | 141 | `result-track:1415e421a3e56d63fa15a620e62162558e37872aab82ed71a60bd550d911b808` |
| 15 | `theorem` | [rfindOpt_mono](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfindopt-mono.md) | 151 | `result-track:5ddcd7fa995910d48e4acc15cb63b31b8e5f1ddf2c336219d6431b60764d8a05` |
| 16 | `inductive` | [Partrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/partrec-source-edition-3.md) | 160 | `declaration-track:ef9922f6c0d706881b1a55c1f071f78798e363401dcec25165183353e0518cbe` |
| 17 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/of-eq-source-edition-3.md) | 173 | `result-track:adcd09eda613222e6a4522b354b8aef6037c14f997404f1facb1e32170d42c56` |
| 18 | `theorem` | [of_eq_tot](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/of-eq-tot-source-edition-2.md) | 176 | `result-track:1e946d0771ab29c07974bd433900c411f626c63243a01b88a89171b0bf8454c8` |
| 19 | `theorem` | [of_primrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/of-primrec.md) | 179 | `result-track:df45cb39c6af8659e7bda3c113524aece497396d86f8991c8f8bc3c1d10e24f5` |
| 20 | `theorem` | [some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/some-source-edition-2.md) | 199 | `result-track:bbc92024e7e22b53b8f74948bd6616f6e9d8b89984535e3a30c81754cfa6f0e9` |
| 21 | `theorem` | [none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/none.md) | 202 | `result-track:5337a6a573a87128c3c1c3bcd36b1b14aa70ffdc3f9aaed776dcbb73db3c0a77` |
| 22 | `theorem` | [prec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/prec.md) | 206 | `result-track:35e915e88a3089d39e79c47ebca64aee53f2582439a6fb0a023a8884632b480b` |
| 23 | `theorem` | [ppred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/ppred.md) | 212 | `result-track:cb1100bdc2086f5bac95bc947e129fb37d27cfe113e9384f7d5491b9aa7c5af1` |
| 24 | `def` | [Partrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/partrec-source-edition-2.md) | 234 | `declaration-track:b3a0dc67fe1f57741fb5b7a8b4f7b425a436712b5605e5573409223a48d0b909` |
| 25 | `def` | [Partrec₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/partrec.md) | 238 | `declaration-track:68b11c6de327b3ef2aa0338698c238b8566f1ef343393c8bd4d67c553f6c3e52` |
| 26 | `def` | [Computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/computable-source-edition-2.md) | 243 | `declaration-track:b8adcd2dde6b3ba1815bcea4808bf94abdfda74c1725afba6efeee93a7c2f36d` |
| 27 | `def` | [Computable₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/computable.md) | 247 | `declaration-track:26cb0d517a8551a8b5c2699f2a9eb33aa6a4c453690543b6df6a8089c4d2e637` |
| 28 | `theorem` | [Primrec.to_comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/primrec-to-comp.md) | 250 | `result-track:007ca28b25244af52bac1727bf2d06cdf67a7c93eaaf24b4c1044e214d1d2b60` |
| 29 | `theorem` | [Primrec₂.to_comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/primrec-to-comp-source-edition-2.md) | 255 | `result-track:ce66bd976a3058db4d8e2f849cab5a3402b711444ab1457007133256900394ca` |
| 30 | `theorem` | [Computable.partrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/computable-partrec.md) | 259 | `result-track:6de969291a22533ecac7909432a049cdca367b4ff952bd79ef297732652cf4da` |
| 31 | `theorem` | [Computable₂.partrec₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/computable-partrec-source-edition-2.md) | 263 | `result-track:ae6878c80b9c94979b98348fae2902551b2c46222f5bb0c34cd4a6090b2b57fd` |
| 32 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/of-eq-source-edition-2.md) | 272 | `result-track:70c379a6873c86b6a7ce8e8af289e7200d9c44778a48084e1b1f837bc858bf1b` |
| 33 | `theorem` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/const.md) | 275 | `result-track:8ef12b55c4b1131283bb2cf6c7f188bdcea8b3277678640750e869810234e82d` |
| 34 | `theorem` | [ofOption](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/ofoption.md) | 278 | `result-track:19787aae570f7cbb76d6ead11e4db732f60366c039b3b09164e730e79ac365c2` |
| 35 | `theorem` | [to₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/to-source-edition-2.md) | 283 | `result-track:87d0820e54c8df1fcbf59764f4ec54f117c7f4e11de42f3efae27cc81c098d26` |
| 36 | `theorem` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/id.md) | 286 | `result-track:9c9fc9a7890f83ffcb4e1eef1359755d9ff2786ef4ce0a5815d46ec4f7de7a7d` |
| 37 | `theorem` | [fst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/fst.md) | 289 | `result-track:b1adc262c06ad8d02b1b2f61a2f45e70447ae3a238007500ab0dc48566e4c009` |
| 38 | `theorem` | [snd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/snd.md) | 292 | `result-track:07890536e9ef364bbaca5a362ac5853c9c70c3d694290a9045442b457f60418e` |
| 39 | `theorem` | [pair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/pair.md) | 295 | `result-track:ab09360253d86087063b4672f1f643b1ef9c435de8405e8cbe4b345a8350e80f` |
| 40 | `theorem` | [unpair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/unpair.md) | 299 | `result-track:34b1fd8196aa26f0a51f1c55c063176558f5a8409d4fc1b8afadf68c362cbebb` |
| 41 | `theorem` | [succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/succ.md) | 302 | `result-track:f9ef569900b23e69481c7286eb0e2b679b5c3bb59d95691e2b1cd069424c30a9` |
| 42 | `theorem` | [pred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/pred.md) | 305 | `result-track:5e418b98ed8f468f6132d124732fe28ce80519e489bae42202918b64a4ccb5d7` |
| 43 | `theorem` | [nat_bodd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/nat-bodd.md) | 308 | `result-track:43e014a02d76c9902fe5a6863085e24a07a0a2889808e4c71b0de77fdcd250a6` |
| 44 | `theorem` | [nat_div2](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/nat-div2.md) | 311 | `result-track:6d59141a74dee1c79610d3200b38eb23664c4935e293c141b1ad072369d1a1c6` |
| 45 | `theorem` | [sumInl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/suminl.md) | 314 | `result-track:77af4992aa2836a78dbc8a6f36e0bd6b9e0e8d47f997aba30b0cd8b510d75a3b` |
| 46 | `theorem` | [sumInr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/suminr.md) | 317 | `result-track:a935ee28520893da41683e480f1dfef6521cc29fc9669b9c678edcc77542b16d` |
| 47 | `theorem` | [list_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/list-cons.md) | 323 | `result-track:c3fef7e77baf167866b54ada6bdaeb2ed9b7ef851a79ada2e41604eeff4e977b` |
| 48 | `theorem` | [list_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/list-reverse.md) | 326 | `result-track:a5bedaaef55ec9004ee004ed3f3a0bcde00c82be5f36f51dccea25f249812b37` |
| 49 | `theorem` | [list_getElem?](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/list-getelem.md) | 329 | `result-track:75868b7a2c0d2e5c5192f61e3e58cb8c6eb6196d1e5a42ec6fe26863b1415c8f` |
| 50 | `theorem` | [list_append](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/list-append.md) | 334 | `result-track:6f01cb8a67745a3e49c232c9352109623b3be1aa6722fbe6a39751504d5c49ce` |
| 51 | `theorem` | [list_concat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/list-concat.md) | 337 | `result-track:235acafb6f96b082656b33c1aa7b44af5db3696efea8f656cecfca490fd8b695` |
| 52 | `theorem` | [list_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/list-length.md) | 340 | `result-track:f33804ff3b7ecaeec6cbc86788a7354500d0204da94f716dbb3e9cde696fb4f3` |
| 53 | `theorem` | [vector_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-cons.md) | 343 | `result-track:afc2ebea097b96671624521651701356378882037130d598502e80c0e8a51f35` |
| 54 | `theorem` | [vector_toList](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-tolist.md) | 346 | `result-track:f56adad14abe5b5c7f8e4b38c0a08cbe02f950b8afe2dc71393ff7534d86dc67` |
| 55 | `theorem` | [vector_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-length.md) | 349 | `result-track:96a33b7756b5b920dea414ebbb3f6ed4bdd83334423c1d0f6d33cf02539a11d0` |
| 56 | `theorem` | [vector_head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-head.md) | 352 | `result-track:dd391668c9070d0352bd37c2dfd50e75e15872957bc4f974d085c7f7aa90daa3` |
| 57 | `theorem` | [vector_tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-tail.md) | 355 | `result-track:9c7e3434ff5937189d87a6a28a542c2b6a49c4071f0d770b2b9dac1b95dc3a0f` |
| 58 | `theorem` | [vector_get](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-get.md) | 358 | `result-track:63a4f216a9fd32b12fe418f8997bf777032e5403c4700d77e24c978153440a08` |
| 59 | `theorem` | [vector_ofFn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-offn.md) | 361 | `result-track:6b2d856814431e2a4b7cb1667adbdcac96174deb9860634aab006b6126ee8488` |
| 60 | `theorem` | [fin_app](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/fin-app.md) | 364 | `result-track:2c515d072bd72393fa5ff436b671e8d583f54f033abfb8805f52e1b48ab37b4a` |
| 61 | `theorem` | [encode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/encode.md) | 367 | `result-track:0e91dd932697b962fa35ca6bec0b9af4212ab13dd01424f962483a359ea27aa2` |
| 62 | `theorem` | [decode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/decode.md) | 370 | `result-track:68a9075ef1495b0e483b75903e3f57700d56cb0973bd450aa6dac8d8573ef4d8` |
| 63 | `theorem` | [ofNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/ofnat.md) | 373 | `result-track:c68bde4eb9e81ca07fc9902b79397fba0a09842c93378cc5ac268958b2aeb2df` |
| 64 | `theorem` | [encode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/encode-iff.md) | 376 | `result-track:518e14957417aa0babfa8ae5282b7afe7cdf79545de82c9b235e52b815680f94` |
| 65 | `theorem` | [option_some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/option-some.md) | 379 | `result-track:a17e63c059abc55c3d914e6006f77f06b7c50447699f9721bf5f83df370f65b1` |
| 66 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/of-eq.md) | 390 | `result-track:2f36c4e51baff6685b54433d13610ba67a19a7018652f5c89fb1cdee71777db0` |
| 67 | `theorem` | [of_eq_tot](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/of-eq-tot.md) | 393 | `result-track:054acd0c0f86f7149ec6788ce7bde932073e9a2d4efce9e6a798cc53ebd7664d` |
| 68 | `theorem` | [none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/none-source-edition-2.md) | 396 | `result-track:eddec13bb6e1eef2c7691d4afb75dbb312e5b6cdedaa08c72918ce97cb4baaf2` |
| 69 | `theorem` | [some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/some.md) | 399 | `result-track:81c9f6beb461710dc89a1350e06f4005618f5ae8efb298bc7b39a9aaaad695d8` |
| 70 | `theorem` | [Partrec Namespaced Sum Inl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/const-source-line-402-occurrence-2.md) | 402 | `result-track:c79ce095596830e4de7e352b8427f610291475db57a24f49994ef22a0c945026` |
| 71 | `theorem` | [const'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/const-source-edition-2.md) | 405 | `result-track:a4c8bfcd4b9a8880e994b3a68c479f127456210f036fea74f04c076b7caad745` |
| 72 | `theorem` | [bind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/bind.md) | 409 | `result-track:2c33c5a841822a566fc7bd8d60347f98169b4ccade693d65b95f11cccaf78af1` |
| 73 | `theorem` | [map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/map.md) | 414 | `result-track:a282ecd0a7b55e9546214759f426eed9c5e07541b24c3ac0b8bc933833ecc030` |
| 74 | `theorem` | [to₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/to.md) | 418 | `result-track:2c27db60a8b5e8916cdc587e5e7d76f68a11648a6c6e0754102fd891a98b99e8` |
| 75 | `theorem` | [nat_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/nat-rec-source-edition-2.md) | 421 | `result-track:62457cc523a72703e7188a474eb3e42a628ef60c3f8dd6b82a0c7c0e88fa681e` |
| 76 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/comp-source-edition-7.md) | 430 | `result-track:f477e04a5e952945315874413d703de55595361d445f686dd7ce52e0af1f331f` |
| 77 | `theorem` | [nat_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/nat-iff.md) | 434 | `result-track:070f46b8564d37a8beb7151d023629f6335da31e89dea2cbc0bd14ed934ed07c` |
| 78 | `theorem` | [map_encode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/map-encode-iff.md) | 436 | `result-track:a05bad5f92eb2cd59e54b701afc449c04a22e71d915cd5c8ae71d96e8e96c356` |
| 79 | `theorem` | [unpaired](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/unpaired-source-edition-2.md) | 446 | `result-track:9e3006510670086d8d43abacd1323186cc2b328988c15ee72197217cd5a29cb5` |
| 80 | `theorem` | [unpaired'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/unpaired.md) | 450 | `result-track:28a0846d704e25b521885f4df56f5fc793521b0bbfa0893e4f7ab04565412a01` |
| 81 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/comp-source-edition-5.md) | 453 | `result-track:83b7376999cceca290ee67d9bde434200f52447179442bd822a1d02bc11968f9` |
| 82 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/comp.md) | 457 | `result-track:2139bcd6ce616a120ed0b00046e0765a321b0ec6a38a2f03cb642ec88e13f368` |
| 83 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/comp-source-edition-4.md) | 468 | `result-track:6e84e3ef01d559cc88cc4dbd44e968820a93efe4d331e3f15fab105569c6a497` |
| 84 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/comp-source-edition-6.md) | 472 | `result-track:e9b0db7ff616b8f17e0ca6307b7465a0848dba8497f331fbed5cf2ce508e4848` |
| 85 | `theorem` | [mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/mk.md) | 483 | `result-track:f9413be36e2ee854e979b9dc52dfa6c556cbb872612408105957ae84b29b9af7` |
| 86 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/comp-source-edition-3.md) | 485 | `result-track:65113783d55c910169a7dc5fa9bf56c75a2226ecd35011b5093cdccafafcc442` |
| 87 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/comp-source-edition-2.md) | 489 | `result-track:4734569148492c1f098a19dd25617a0b3dec3329bc305e7e6c68aba072d2f537` |
| 88 | `theorem` | [rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfind-source-edition-2.md) | 501 | `result-track:8d1ee53b28860db26fc561b660b409ed8b388f82ded6558bd618283e242fc92f` |
| 89 | `theorem` | [rfindOpt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/rfindopt-source-edition-2.md) | 511 | `result-track:afefae804813c686f09921b61689471c943400f88b4f048a489a185be8c4f64e` |
| 90 | `theorem` | [nat_casesOn_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/nat-caseson-right.md) | 515 | `result-track:d2c70ec708ee2ed773bac6dcc575e38ffda925ff00e24096fc2d99f5f7ab54f8` |
| 91 | `theorem` | [bind_decode₂_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/bind-decode-iff.md) | 528 | `result-track:52c2215b6c80a43ff442d31ca16e379c58bcff6acec4a6f0ca21d4f32b7fa241` |
| 92 | `theorem` | [vector_mOfFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-moffn.md) | 537 | `result-track:a29371b8f0d2d2235f99cc9a7bba7f64e3a2002d1cdf46de69f8d778bab924f2` |
| 93 | `theorem` | [Vector.mOfFn_part_some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-moffn-part-some.md) | 551 | `result-track:763ae13fd9784737ae10d19e104e5e52c2f5b65ff2434e71686c0fbc600faeaa` |
| 94 | `theorem` | [option_some_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/option-some-iff-source-edition-2.md) | 561 | `result-track:ea10b070dfc507b6f454a50b31db29819a855d74a322079282e3d66612349042` |
| 95 | `theorem` | [bind_decode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/bind-decode-iff-source-edition-2.md) | 564 | `result-track:56ff2c3847bd996257cc436c63997780061e6cd4a87659131456b49f238a4717` |
| 96 | `theorem` | [map_decode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/map-decode-iff.md) | 589 | `result-track:0d9c57ac6f5beb5eb0547aad70b9d4599103606639c6e52f7bb16cb1cac262e5` |
| 97 | `theorem` | [nat_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/nat-rec.md) | 594 | `result-track:5b51875d533ac2dcf9aa51a9f20856a7e36af15ab3ac123e0df6d72f05b85f3b` |
| 98 | `theorem` | [nat_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/nat-caseson.md) | 599 | `result-track:bb2f4d46ba34d60b0a968d7ac6bc18dfab900d07b6ee5ac0ab26c536483d0385` |
| 99 | `theorem` | [cond](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/cond.md) | 604 | `result-track:9fca5d682c33778d0ecacf87a33ac3d3cd4ea1c0f6f4f34ada2f7eacb233773a` |
| 100 | `theorem` | [option_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/option-caseson.md) | 608 | `result-track:354820f858c83da8288ea8d95dd0c3ee2fca7ea5dc7f30f55633cf069d3d874c` |
| 101 | `theorem` | [option_bind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/option-bind.md) | 615 | `result-track:2f410d5a287085a62f7c97cfe0835473922d6b04b999189c41fdbb0ced1aa977` |
| 102 | `theorem` | [option_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/option-map.md) | 619 | `result-track:4a1380c0079d071c383d9d444f8370ca15662fa6d6a7f781a83da6767a610f2a` |
| 103 | `theorem` | [option_getD](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/option-getd.md) | 624 | `result-track:3139b6f7e512ab1600de01b709cae3ca8764ad1ef4cdefdb0e328124c392bacf` |
| 104 | `theorem` | [subtype_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/subtype-mk.md) | 629 | `result-track:48ff21ade91ee6c951a4b43a85f4d6768eab00ceb7d1d2c2e2b8f865027dd63e` |
| 105 | `theorem` | [sumCasesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/sumcaseson.md) | 634 | `result-track:eface2adb97acc261d211bab4f0c0ff9ed67347960b8bb789b11de321e4969e9` |
| 106 | `theorem` | [nat_strong_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/nat-strong-rec.md) | 646 | `result-track:bbfb7e95a74e6bfa3f22af3f7032b0c6e4a60576f3d5b716b38b89b36503c80c` |
| 107 | `theorem` | [list_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/list-offn.md) | 663 | `result-track:7ea6d93b7905bb6130d1a60a88ed51bc2cf5ddbba8a72c8db648bb9006ae4001` |
| 108 | `theorem` | [vector_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/vector-offn-source-edition-2.md) | 673 | `result-track:8ac36b7618d5eea172eb1539de5c0aa885c7ad5092e5816addb8421371d6bd05` |
| 109 | `theorem` | [option_some_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/option-some-iff.md) | 686 | `result-track:6e36880eee2825651b6f8a581b195caf010d401435e831061df8d9738e4e5b80` |
| 110 | `theorem` | [optionCasesOn_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/optioncaseson-right.md) | 690 | `result-track:633cdbedecbc379b0065bf0c458a38f236a5c8f700055509b22aa45b989f67f8` |
| 111 | `theorem` | [sumCasesOn_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/sumcaseson-right.md) | 703 | `result-track:4b58a0fcc146e6bf6ff42a2a1eb23d360d443e32e0461e106e4a45acfd731d80` |
| 112 | `theorem` | [sumCasesOn_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/sumcaseson-left.md) | 719 | `result-track:fdfbfbf366aca02ac24b780e2d7488afa69b674354150cf4134e1d7b9376d816` |
| 113 | `theorem` | [fix_aux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/fix-aux.md) | 728 | `result-track:4f0c6df23d03e7dfd8882cb31d39bbce525c241a5363f16f46bce923760c3824` |
| 114 | `theorem` | [fix](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecNamespacedSumInl.lean/declarations/fix.md) | 765 | `result-track:b8e39e584ea8bf2ad5ac60640001d88bd76fe1b4e587459aad2f90ef44d0dbe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10222f2bed9b93a8567e0e91c75c65edadbef02cfa09f010185865a2e1386ab7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
