# Verification target: Regular Sequence Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4`.

Source path: `GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Regular.IsSMulRegular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ofList](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/oflist.md) | 47 | `declaration-track:649b6571ec4100b6d61b787f58179181a02f30e1a8e10ffa67e34ef93073fbd1` |
| 2 | `lemma` | [ofList_nil](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/oflist-nil.md) | 49 | `result-track:a9f235a8ec47b0da24e9fef6471112c835a87ecfe333332db185c1e3c92a04ba` |
| 3 | `lemma` | [ofList_append](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/oflist-append.md) | 53 | `result-track:b761f0a58103fedbe0b1fb0098aee7944e0b206523f84f5c68eb173b53e26bdc` |
| 4 | `lemma` | [ofList_singleton](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/oflist-singleton.md) | 58 | `result-track:0ab4ce0ffafb54eb4fce153d7e68e869a28f0f6869702b71699b65db4b996070` |
| 5 | `lemma` | [ofList_cons](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/oflist-cons.md) | 61 | `result-track:136c90d05b338776effe0b9f30a14e64de4d2b825e99165e42517da8a2056524` |
| 6 | `lemma` | [map_ofList](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/map-oflist.md) | 65 | `result-track:28955f028a1f273979ba5dddf6867f50d6f4bddf4c873790704fd34b47feaff4` |
| 7 | `lemma` | [ofList_cons_smul](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/oflist-cons-smul.md) | 70 | `result-track:68850c6fa1b7e351ed699e016e3eeaa6605d0aade30894b1a6acd5a8abd524f6` |
| 8 | `lemma` | [smul_top_le_comap_smul_top](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/smul-top-le-comap-smul-top.md) | 79 | `result-track:c7e74c6cd2d89f80e5c6866fb92cad2bb863a143154c2bbefbc395b379e79a92` |
| 9 | `def` | [quotOfListConsSMulTopEquivQuotSMulTopInner](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/quotoflistconssmultopequivquotsmultopinner.md) | 89 | `declaration-track:413cf86e3c48aa125b59f508fae4200cb748a519faac02838509563948864094` |
| 10 | `def` | [quotOfListConsSMulTopEquivQuotSMulTopOuter](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/quotoflistconssmultopequivquotsmultopouter.md) | 97 | `declaration-track:e1d67378387af07e1bdc9ceb45026beb57d8e7c077b6f9697c84efd7edfaac0f` |
| 11 | `lemma` | [quotOfListConsSMulTopEquivQuotSMulTopInner_naturality](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/quotoflistconssmultopequivquotsmultopinner-naturality.md) | 106 | `result-track:d4c1cc9813c8d23a3d401b5a72c40edc9a348242d1ff1232b5916f88756262fb` |
| 12 | `lemma` | [top_eq_ofList_cons_smul_iff](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/top-eq-oflist-cons-smul-iff.md) | 113 | `result-track:6ba5da4ac46a8850dc62a984152702bd246963d763322177395e26159d2e75f1` |
| 13 | `structure` | [IsWeaklyRegular](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular.md) | 147 | `declaration-track:04d4e391329b82a1370ef6d6296dbb7e5ba632d39b1982cbee37c5e49625546e` |
| 14 | `lemma` | [isWeaklyRegular_iff_Fin](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-iff-fin.md) | 151 | `result-track:07e9e1e42204dca0d328791f5b8f1f105de60ab502b7dc2d6a81a91d85ed2095` |
| 15 | `structure` | [IsRegular](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular.md) | 158 | `declaration-track:d84bbd1199cc734c2da38de27bc50a9dd067413d97639020f72c4d593e56fe72` |
| 16 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/map-smul-top-toaddsubgroup-of-surjective.md) | 170 | `result-track:8dea57c54bcfd82664be3f434d80552c611c0716234fe556c2479c9904b7fd39` |
| 17 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-congr-source-line-188-occurrence-2.md) | 188 | `result-track:eeef6a9f0b10d475d788c85f830849005929be58c456c6804556e9fe4fb06634` |
| 18 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-congr.md) | 200 | `result-track:32ece46500039c5a677bf44c65242fbe4a1511343313d080f9e10158e6d54f46` |
| 19 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-congr-source-line-205-occurrence-2.md) | 205 | `result-track:ba96682fd5e72bfa0c8dc548ddf8591d442bf729607c161d356f90a5836ca95e` |
| 20 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular-congr-source-line-209-occurrence-2.md) | 209 | `result-track:94f7e57119d68f8baeb815d6ddd40800621248856d7b4b727a2c64ad38a179ff` |
| 21 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular-congr.md) | 218 | `result-track:1b7b2fda6e3d83ca0057a54445cf2da7accbf3cb0290d4f41eaab77099b1fb30` |
| 22 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular-congr-source-line-223-occurrence-2.md) | 223 | `result-track:325e0a48071cafc5822af94bfdb30a43c21462bf5a9915c6669ac3dbf68e4646` |
| 23 | `lemma` | [isWeaklyRegular_map_algebraMap_iff](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-map-algebramap-iff.md) | 229 | `result-track:90603140aafb453f68188282fd4f0f68253079d9176d78a285233917b3e0e57c` |
| 24 | `lemma` | [isWeaklyRegular_cons_iff](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-cons-iff.md) | 240 | `result-track:1c32527a72aba1471d556c8acaf6cf6c753a837d8a1245aa20c1220234d459e8` |
| 25 | `lemma` | [isWeaklyRegular_cons_iff'](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-cons-iff-source-edition-2.md) | 250 | `result-track:7a4f0843e1652db070c0344de2a92d0f05c7aacd3cf1eb32171d459719be0ef4` |
| 26 | `lemma` | [isRegular_cons_iff](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular-cons-iff-source-edition-2.md) | 259 | `result-track:80fe269cef54800b16f65b03b775c90e355d03509a18c3a4ee6c679c0cfe1086` |
| 27 | `lemma` | [isRegular_cons_iff'](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular-cons-iff.md) | 265 | `result-track:0129fc46d62b3ae85ec2a07075d12825db977e7988e29ab547259e65bf22cd16` |
| 28 | `lemma` | [nil](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/nil.md) | 279 | `result-track:056e918e3bdcc262d31ee12279481fbd620aec9f2c072343f4114ae86a81e083` |
| 29 | `lemma` | [cons](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/cons-source-edition-3.md) | 282 | `result-track:4daf2918cbc705d41920275042c045a3565decd745c09eb217a68a2d1087395e` |
| 30 | `lemma` | [cons'](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/cons-source-edition-2.md) | 286 | `result-track:4cce2ead6d797ae0b8d3277b80cedec30b2e1391adc6a6da292e77b2c0c79ed5` |
| 31 | `def` | [recIterModByRegular](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/recitermodbyregular.md) | 300 | `declaration-track:4c22c4b1bd634e684d482506d5d18ede5637f6e2086c0ecdfb1cedfa7cdd82f2` |
| 32 | `def` | [ndrecIterModByRegular](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/ndrecitermodbyregular.md) | 317 | `declaration-track:1ca066215b71ca1c763f5d40cfc5e81a8998c047832c30e420ef4618aaeca7a9` |
| 33 | `def` | [recIterModByRegularWithRing](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/recitermodbyregularwithring-source-edition-2.md) | 331 | `declaration-track:960ce2944bec274cab40e98d80d11320661ba0602da1a8c5567f62326806dce6` |
| 34 | `def` | [ndrecWithRing](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/ndrecwithring.md) | 353 | `declaration-track:d73234684eaae8d48cd579089f1f10ac5ceb166ae8a18c49a970142eee63b2d6` |
| 35 | `lemma` | [isWeaklyRegular_singleton_iff](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-singleton-iff.md) | 375 | `result-track:15d5fe2e0fe686b61d1131a56653de4cf35a9f71449467d1200d281c45f5b2a7` |
| 36 | `lemma` | [isWeaklyRegular_append_iff](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-append-iff-source-edition-2.md) | 379 | `result-track:ad5a8ca0cff22f23dffe1fad4a453044054ebc4275283cf0ca4650be99695d81` |
| 37 | `lemma` | [isWeaklyRegular_append_iff'](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-append-iff.md) | 393 | `result-track:03463e3cdee0dc3fe2c2513b75edb3826e636483b27003946ce0ae8ca158b124` |
| 38 | `lemma` | [nil](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/nil-source-edition-2.md) | 406 | `result-track:0c70c33ae36b837f7f5a32cb6600af39409acf10cb34d1d114d509974fe266a8` |
| 39 | `lemma` | [cons](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/cons.md) | 412 | `result-track:051e0e3301f77ec819d1a80d2f76ad502006d8fa1a6a747a128d4bde8e5f304a` |
| 40 | `lemma` | [cons'](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/cons-source-edition-4.md) | 416 | `result-track:853d9528792525368bfca78aa07a315aa9397b20a879578f79f0bdc41f28a261` |
| 41 | `def` | [recIterModByRegular](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/recitermodbyregular-source-edition-2.md) | 429 | `declaration-track:e88fdcdfabc7d4232418f1448b5780b44cf1129e077bcf8677edb4ebd75a866e` |
| 42 | `def` | [ndrecIterModByRegular](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/ndrecitermodbyregular-source-edition-2.md) | 449 | `declaration-track:347703909f819b6322f5eb6216175dae4bea96da927b0ce5b694c2039611296f` |
| 43 | `def` | [recIterModByRegularWithRing](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/recitermodbyregularwithring.md) | 462 | `declaration-track:69ddfb5d00e8712e1f83ba4b7bc44253359a50ad910b9d11c33b37406bd4acbe` |
| 44 | `def` | [ndrecIterModByRegularWithRing](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/ndrecitermodbyregularwithring.md) | 487 | `declaration-track:94f56b25cb0ff2993562d128a005791ded4168c29cfa65f2e8d9f422b2d0beed` |
| 45 | `lemma` | [quot_ofList_smul_nontrivial](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/quot-oflist-smul-nontrivial.md) | 505 | `result-track:e55074fe82c8fd39f5786bc2e2154b40a2948062542c3b04e55c0e9ce149bb1f` |
| 46 | `lemma` | [nontrivial](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/nontrivial.md) | 510 | `result-track:d440333fb0ee12125bb684f2d2a8bff52ac3f415b58d2d2e2256b4f31bb006f6` |
| 47 | `lemma` | [isRegular_iff_isWeaklyRegular_of_subset_jacobson_annihilator](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular-iff-isweaklyregular-of-subset-jacobson-annihilator.md) | 516 | `result-track:ffee83285b15209037a3cf35c83ec5ddaf76cae40c98b602d372fc378bb82c53` |
| 48 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular-iff-isweaklyregular-of-subset-maximalideal.md) | 523 | `result-track:3da9ac44af70d2df3cd216d9646b87b70a8c00521925cb0c2440a11680eb66d9` |
| 49 | `lemma` | [eq_nil_of_isRegular_on_artinian](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/eq-nil-of-isregular-on-artinian.md) | 533 | `result-track:736f6d8215e734a50fbd84a640fb564ecb32678e159d627b5a7c1798a9ce07b4` |
| 50 | `lemma` | [IsWeaklyRegular.isWeaklyRegular_lTensor](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-isweaklyregular-ltensor.md) | 543 | `result-track:e6058829344706e2f2ccd1122018fcda1defc7f13f3c95b83de453e8ec62b86a` |
| 51 | `lemma` | [IsWeaklyRegular.isWeaklyRegular_rTensor](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-isweaklyregular-rtensor.md) | 552 | `result-track:6e2262c5ade54aab90ed82299f2c1850b8e52fe72ca3d237ccc9998ca06ccd30` |
| 52 | `lemma` | [map_first_exact_on_four_term_right_exact_of_isSMulRegular_last](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/map-first-exact-on-four-term-right-exact-of-issmulregular-last.md) | 562 | `result-track:cb5d08bd7900751aefa8550668d4eb3b79762b9f90978babeb271e6829eedf2e` |
| 53 | `lemma` | [IsWeaklyRegular.swap](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-swap.md) | 587 | `result-track:beed4f961aa0b79b816c3ab5d5663e96309e7f74f803fe2de7b2f4794a3299ac` |
| 54 | `lemma` | [IsWeaklyRegular.prototype_perm](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-prototype-perm.md) | 607 | `result-track:0bc1eedefef2099488e4177e09ad8bb96db97ac70288499bb4eda58c4e8980a2` |
| 55 | `lemma` | [IsWeaklyRegular.of_perm_of_subset_jacobson_annihilator](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-of-perm-of-subset-jacobson-annihilator.md) | 641 | `result-track:94666de87a15c2048baef61fb8bec3ba97302074b24c86116789afa9c7613ced` |
| 56 | `lemma` | [IsRegular.of_perm_of_subset_jacobson_annihilator](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular-of-perm-of-subset-jacobson-annihilator.md) | 658 | `result-track:786054d9d0cc6dd3870c91ce99178742d6478ccb79349fdaad13259220fa5720` |
| 57 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isweaklyregular-of-perm-of-subset-maximalideal.md) | 666 | `result-track:4750271263db3adeaa4b16472d7fcbe58cac42f5147c17e8826b04616f706d39` |
| 58 | `lemma` | [Regular Sequence Namespaced](../../../../CommutativeAlgebra/RegularSequenceNamespaced.lean/declarations/isregular-of-perm.md) | 673 | `result-track:4e57f88637cba91b58a306fd99ba5f1b894180bca2f4c305bcb5c3f34d53a67c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98ae5edb0f325f18f4d344f20a14fbb4fc9d04e81aa10093201b41e8a0978dc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean","GRWTSK/_verification/specifications/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
