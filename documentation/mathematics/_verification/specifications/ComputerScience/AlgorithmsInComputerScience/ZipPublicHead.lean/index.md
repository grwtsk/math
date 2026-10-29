# Verification target: Zip Public Head

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75787595ff749134e9e675604c82a9e41bc041ef",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantdeebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75787595ff749134e9e675604c82a9e41bc041ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantdeebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantdeebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zipWith_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-comm.md) | 33 | `result-track:8498cf9bed1577799ce2f8c019098db1536e0a9b2aa49d09dea166e4d0aadcfc` |
| 2 | `theorem` | [zipWith_comm_of_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-comm-of-comm.md) | 39 | `result-track:1a5b40297f6ebb805112b9e25d2a9871dd12b3a18c71e3be3a47ae84c0185524` |
| 3 | `theorem` | [zipWith_self](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-self.md) | 45 | `result-track:3bbe3307e343fcd979e3582ce9574479990c0874ba24ff19af96f74c8421f895` |
| 4 | `theorem` | [getElem?_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/getelem-zipwith-source-edition-2.md) | 56 | `result-track:8b58303c998dceba6b892977e508a5662af887a6848d4c358ec58f01800bd1b1` |
| 5 | `theorem` | [getElem?_zipWith'](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/getelem-zipwith.md) | 68 | `result-track:3a74b436257b81f9f3b8335396e3329297eeee7779c8a310d310cbe180b87013` |
| 6 | `theorem` | [getElem?_zipWith_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/getelem-zipwith-eq-some.md) | 77 | `result-track:4975492b120d9104ebe775f4b46280467a270ee2e0ff87c7dacd31b4656ba7ba` |
| 7 | `theorem` | [getElem?_zip_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/getelem-zip-eq-some.md) | 84 | `result-track:a1c65140fe237dcc0410c2e2b99b439e1573243a59c00d24ffe0750e87261d73` |
| 8 | `theorem` | [head?_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/head-zipwith.md) | 94 | `result-track:051ae8a646a5a4f16a89c454f5832a50365df292b8016e05a2a36ab92d30bb7f` |
| 9 | `theorem` | [head_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/head-zipwith-source-edition-2.md) | 100 | `result-track:ff25e359300f5a2b9091592dbcecbb90002d533e7009616fa07ddbc371d2e1fc` |
| 10 | `theorem` | [zipWith_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-map.md) | 106 | `result-track:ee86071f4bd475aded30158d0a763df933e847ccea7c1473f9310511b0dd80be` |
| 11 | `theorem` | [zipWith_map_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-map-left.md) | 111 | `result-track:ef4cdba5283000b9c8aa9209e24b2910af1d8ec9a348d758d4fda220cc7032a1` |
| 12 | `theorem` | [zipWith_map_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-map-right.md) | 116 | `result-track:2426fb0bcb279b5c9f50c6aad0b00bfb0e5cebcc9d7f903b9fef4d25b6042463` |
| 13 | `theorem` | [zipWith_foldr_eq_zip_foldr](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-foldr-eq-zip-foldr.md) | 121 | `result-track:1a15ea46abcdd3222ca8cd257392eba467bfaea72b4bd649171c4405b1ab804c` |
| 14 | `theorem` | [zipWith_foldl_eq_zip_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-foldl-eq-zip-foldl.md) | 126 | `result-track:eab4e23aeb61a2570b5e3bda8757dd41142a22b520ee597285d08ce47ea1fc05` |
| 15 | `theorem` | [zipWith_eq_nil_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-eq-nil-iff.md) | 131 | `result-track:8ed194b2018c87fcc2ac4b5ddbe819ad0986eb2cfd47e605cfb1851ee6d09d73` |
| 16 | `theorem` | [map_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/map-zipwith.md) | 135 | `result-track:03e3468433d29fb2da86564705916d6392a9840bcdad3aab64250216a8355a1f` |
| 17 | `theorem` | [take_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/take-zipwith.md) | 145 | `result-track:447d8c6b28c9e9dd809987d85ea8fd9b90077f0d9b209ca7b070708798f59b6e` |
| 18 | `theorem` | [drop_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/drop-zipwith.md) | 156 | `result-track:6f3daeefd4c30b4a560e98cb579c2ff06e089f1f9ea4d2f555d81754900b4891` |
| 19 | `theorem` | [tail_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/tail-zipwith.md) | 167 | `result-track:ac4d7ad034424957168eeadb53f495b9bb9c15037f0173e6657d88efb4d280c2` |
| 20 | `theorem` | [zipWith_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-append.md) | 171 | `result-track:008cd6172f061d77c18de6b681436240f6fecaa58b8503aafd48b2fd6fb20e5f` |
| 21 | `theorem` | [zipWith_eq_cons_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-eq-cons-iff.md) | 185 | `result-track:fa7c8d83133d482ab5ea8398b3b4a2ad090560a5d456ae7b8357fec5c3a4a0f8` |
| 22 | `theorem` | [zipWith_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-eq-append-iff.md) | 200 | `result-track:9677a6ad56fb5367b46c7cc798f7220e9c19c46906eef34f959ae288c634046c` |
| 23 | `theorem` | [zipWith_replicate'](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwith-replicate.md) | 245 | `result-track:04c334c2ab88630573e7a3caa15221b5e44708388172ae7a5c6b53ab8e983d11` |
| 24 | `theorem` | [map_uncurry_zip_eq_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/map-uncurry-zip-eq-zipwith.md) | 251 | `result-track:5d187043fac5bdd461c9ce7563902c1afc46d196aba20be024f92ec6e2b2938b` |
| 25 | `theorem` | [map_zip_eq_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/map-zip-eq-zipwith.md) | 259 | `result-track:ef4e603f6df35e92ad6fc829832e9dd1dd0522359301c631678dca38e560a340` |
| 26 | `theorem` | [zip_eq_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-eq-zipwith.md) | 269 | `result-track:356bdf6b711cc4a7f414f12a5fb31665b3ad43955558504b2794360948524300` |
| 27 | `theorem` | [zip_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-map.md) | 275 | `result-track:16ba0cb67c71425886a235005e58424eea61d96e544b38f79315a2633fe5f1fd` |
| 28 | `theorem` | [zip_map_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-map-left.md) | 281 | `result-track:725b5f3728d1869a9d424b8b169dfa421f1d4b46c61540ef0fa48cb49f2032da` |
| 29 | `theorem` | [zip_map_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-map-right.md) | 284 | `result-track:32c27588de79e9a55f81fab9b60b89bf6c99dd6436b3176bf62dc2d2e69c34e7` |
| 30 | `theorem` | [tail_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/tail-zip.md) | 287 | `result-track:fc4d719d28450371f4b9cedba38b5d2d61be451686265fe9d56292eb7f3f012d` |
| 31 | `theorem` | [zip_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-append.md) | 292 | `result-track:9bdfed221a6b5d35c367e0b3ab309185a1ed4b1c4db6d9274bd5d3c207678cef` |
| 32 | `theorem` | [zip_map'](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-map-source-edition-2.md) | 301 | `result-track:dea7646f3f1e6252123d5f63e10cdaa63752f046512228f78beeaf6238a6ed9b` |
| 33 | `theorem` | [of_mem_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/of-mem-zip.md) | 306 | `result-track:a91159822890993b034e2e22ca01c4c0cc39f573f6f8c25dd1a76963a3e9111b` |
| 34 | `theorem` | [map_fst_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/map-fst-zip.md) | 314 | `result-track:f8d14900256a77196b7bc8a2855d9c56786b66f2cd9d8cc55fe49a2159507ffa` |
| 35 | `theorem` | [map_snd_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/map-snd-zip.md) | 323 | `result-track:1c83b6cae4623a9a713563215604db8809bec54eb9c26e5ac98f3e4a22c36907` |
| 36 | `theorem` | [map_prod_left_eq_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/map-prod-left-eq-zip.md) | 334 | `result-track:ce111d65447abcb74ff280388ffb2456774b7336e3e919a4b62701f1723da5ff` |
| 37 | `theorem` | [map_prod_right_eq_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/map-prod-right-eq-zip.md) | 340 | `result-track:05fbb7bec6f86eaed15f49440173b4e8ca5bfaa47ef0d155445528e1986b3164` |
| 38 | `theorem` | [zip_eq_nil_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-eq-nil-iff.md) | 346 | `result-track:2b8a840962f71227077db626b9f86d8286c5cd12cbf141f3725df9528a964b9f` |
| 39 | `theorem` | [zip_eq_cons_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-eq-cons-iff.md) | 350 | `result-track:f54a7f39ee0fe3b81d176fd9e53e8543d63b6bd656dfb5b50394d034127cfa36` |
| 40 | `theorem` | [zip_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-eq-append-iff.md) | 362 | `result-track:34f22f029529d6c4fd90f58ba25a137a8848d70ac582a1d543745e8e55268db7` |
| 41 | `theorem` | [zip_replicate'](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-replicate.md) | 368 | `result-track:b370a3a4e57f2673d6a48eb4790070f09e6837ab8d3707db1d8d993dc096a98b` |
| 42 | `theorem` | [getElem?_zipWithAll](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/getelem-zipwithall.md) | 377 | `result-track:21e4119b9904a66324cb6ecc9845874b198b14b9a84aa3352425dc2c09c3edc3` |
| 43 | `theorem` | [head?_zipWithAll](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/head-zipwithall.md) | 391 | `result-track:3554a63e74bb7e2922bae71f04c62465188786d629375391ebb42841ba949ea8` |
| 44 | `theorem` | [head_zipWithAll](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/head-zipwithall-source-edition-2.md) | 396 | `result-track:3785820617673cdd6f74a03610e597b3750c9daeb930428d5b4442ea6cff6112` |
| 45 | `theorem` | [tail_zipWithAll](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/tail-zipwithall.md) | 402 | `result-track:bdcc614e06b10c775048561f23e189297e47dcab235d90328efd75bbba2d2fd9` |
| 46 | `theorem` | [zipWithAll_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwithall-map.md) | 407 | `result-track:23e8b908d8140a6e2beef3c668af864e78d1892f8926be2cc4499f89e2e2389d` |
| 47 | `theorem` | [zipWithAll_map_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwithall-map-left.md) | 412 | `result-track:6d158dbfd4f9d674f0359b36035e6e7d413110d0260c5395a38853d812fabb76` |
| 48 | `theorem` | [zipWithAll_map_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwithall-map-right.md) | 417 | `result-track:c31d1e60c06d2ee4b60b268565c8645070ddbd2171e991fe96fac2df9ca40106` |
| 49 | `theorem` | [map_zipWithAll](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/map-zipwithall.md) | 422 | `result-track:b0ea7a2dded69899b57d30426b06e5e6c6efc482cf2b9351da5aef882445150c` |
| 50 | `theorem` | [zipWithAll_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zipwithall-replicate.md) | 429 | `result-track:47a87557aa7487cc24ce4c5ecd657804359c9c8c69e7aba1074ca96028b3eef1` |
| 51 | `theorem` | [unzip_fst](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/unzip-fst.md) | 437 | `result-track:d7401f763f15a195a9c1966e52e8ec853021b918e3df219fc2feb347e8621ed7` |
| 52 | `theorem` | [unzip_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/unzip-snd.md) | 440 | `result-track:4743cf2422427cc09374b5fd66fa6b0ed4226a4f4625a44967fe76cabdc016db` |
| 53 | `theorem` | [unzip_eq_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/unzip-eq-map.md) | 444 | `result-track:a0d3537377adf3675ff49cb02c21ec8d412ec66de2f5fad354023d2259f9d3e3` |
| 54 | `theorem` | [zip_unzip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-unzip.md) | 449 | `result-track:7e8fd0b7cdaa67d4b8a687019b8675ad97908a5e4acd25aba131d11b82d67400` |
| 55 | `theorem` | [unzip_zip_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/unzip-zip-left.md) | 453 | `result-track:0a748c5260697d27e8cc484cb9ae143f7154df01dd4aa2fbb744b433175ec22d` |
| 56 | `theorem` | [unzip_zip_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/unzip-zip-right.md) | 460 | `result-track:5d075826de1bd012fd913f784091078d56514582a280e20f2ce76c324b1176fd` |
| 57 | `theorem` | [unzip_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/unzip-zip.md) | 467 | `result-track:126d0a7c99d3d54bd02382aaf0c81706966d912767d3e15512d273c4384fa7a4` |
| 58 | `theorem` | [zip_of_prod](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/zip-of-prod.md) | 473 | `result-track:21798cf578ac0f3bc952f70358be9ccbffd908e770a2c09e3503d83db9829f2f` |
| 59 | `theorem` | [tail_zip_fst](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/tail-zip-fst.md) | 477 | `result-track:df5ef894b9ccb106b0a6df40b62e27ece170d5803c97d921a216557824f72303` |
| 60 | `theorem` | [tail_zip_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/tail-zip-snd.md) | 480 | `result-track:b0e58650c937d43444c401d552df26ef04df4a2500331de2cc867a6a38d50f97` |
| 61 | `theorem` | [unzip_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ZipPublicHead.lean/declarations/unzip-replicate.md) | 483 | `result-track:bda04ec0b62a1bbabbb04f6309d7f9ad192d193a98b72cfbdbf6c481f7cacd6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6db677ced987cdc8e579df32f85de3d06460a73699da913c6822245949e74ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantdeebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantdeebfdff24cbe457820ce00e56bd86625566b3b2b31056ce3bad8c91879a091a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
