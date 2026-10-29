# Verification target: Connectivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c9710dc5db875997571fa39db2777af8844ca7e",
  "lexical_observation_count": 378,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/Connectivity.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/Connectivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c9710dc5db875997571fa39db2777af8844ca7e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Subgraph` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Rotate` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Walk](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/walk.md) | 91 | `declaration-track:27f9f57b463a9238e52619e2562f945eabfaf07ee6987342defc9e619c8e20bf` |
| 2 | `instance` | [Walk.instInhabited](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/walk-instinhabited.md) | 100 | `declaration-track:2aafce7a8500f51bac31c83de80130db6cdac2c8829eaeca76e57f8acf86f013` |
| 3 | `def` | [Adj.toWalk](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/adj-towalk.md) | 105 | `declaration-track:82644f1c64d686a1a08d37814184f766b544891399ed483c76143fe3e4905ace` |
| 4 | `abbrev` | [nil'](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nil-source-edition-3.md) | 115 | `declaration-track:f52b8ee16efb8a2a7219b7d0e3b92b1218761c71794ee2daa01b6e356f515484` |
| 5 | `abbrev` | [cons'](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons.md) | 120 | `declaration-track:2299a46f7b4246948b72374ce35c38a4c35079de7c72deb021cc6ebf83888cd0` |
| 6 | `def` | [copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/copy.md) | 129 | `declaration-track:b6b21bf1dc899a02906bd3779f7d40cfc2b3ab2ab17a910c1b21de463d6177f6` |
| 7 | `theorem` | [copy_rfl_rfl](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/copy-rfl-rfl.md) | 134 | `result-track:1e18ca3c9ea3abaf818e55fef20388b342b35e61226c8cb489f94b733e2036f8` |
| 8 | `theorem` | [copy_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/copy-copy.md) | 138 | `result-track:f3d919df35c91648ede8088a27564642439b684d7fe4dd02458c78a6a412216a` |
| 9 | `theorem` | [copy_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/copy-nil.md) | 146 | `result-track:9644172ae8be6e08d1fd055cb7761444beef294f1f881338a4f2916ee47216b4` |
| 10 | `theorem` | [copy_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/copy-cons.md) | 151 | `result-track:61615e3c28da3e56de295d1c348a908d527a02c54ede89ea6b19183e8fef7013` |
| 11 | `theorem` | [cons_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-copy.md) | 158 | `result-track:481ea527c05ff81d8acc306c3eacf0baaf14450a32a0f06c74ad97fdb4521b89` |
| 12 | `theorem` | [exists_eq_cons_of_ne](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/exists-eq-cons-of-ne.md) | 164 | `result-track:53a922ea7d9635ee73ea1a668193d11e395f8a14fcb1821a83200500cf51b6b2` |
| 13 | `def` | [length](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length.md) | 171 | `declaration-track:fb9819b1b2bb27fd750d9874f641f970e53f58f63f6b4dc13e8c2278a0f26453` |
| 14 | `def` | [append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/append.md) | 178 | `declaration-track:05984e4b0c174acfddf72ad0f74202b9c4d682a181f49fdf6f5f408fee29f937` |
| 15 | `def` | [concat](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concat.md) | 185 | `declaration-track:fd3ffce9fbf17f0b317b3708883221eda18d095f63865b5cc11dd94688de3340` |
| 16 | `theorem` | [concat_eq_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concat-eq-append.md) | 188 | `result-track:a810484e67e66d7d480dc2f1a879d7bf688709d09d19282d1cf6bde3e1b97515` |
| 17 | `def` | [reverseAux](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverseaux.md) | 193 | `declaration-track:f2b5b064a9c56a689adaddfb5d6657061ebd51c2b5902bcd1564e0bc60a555cb` |
| 18 | `def` | [reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse.md) | 200 | `declaration-track:4946c12809517121303fd49d038cdf25038c26a300a64f0a3fba4d0c79d0b60c` |
| 19 | `def` | [getVert](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/getvert.md) | 206 | `declaration-track:904a9c06694d400391b0815eea24e528b0b42969d3d9f3e3732e208ece134010` |
| 20 | `theorem` | [getVert_zero](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/getvert-zero.md) | 213 | `result-track:29b0f7a9052c2d3ad587a83e87de30a1ea01451c37e8e9042d0126308f243643` |
| 21 | `theorem` | [getVert_of_length_le](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/getvert-of-length-le.md) | 216 | `result-track:c3de98655026a7ef182f1e4784fa980f45a47b6f93d73e206302be98b905a7fb` |
| 22 | `theorem` | [getVert_length](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/getvert-length.md) | 227 | `result-track:d021104db50664d2951bee761abf1be774db04a9eca88c7d1917410b214fa8cc` |
| 23 | `theorem` | [adj_getVert_succ](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/adj-getvert-succ.md) | 231 | `result-track:ccede1dcabaf7159d6c4c70d67e7ed28e253cf1234778df64b81fe98b1e23f4c` |
| 24 | `theorem` | [cons_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-append.md) | 242 | `result-track:88e0651aacc52daac73e22e50ee5e3f74cade199e6e50060e89e1acc45dade73` |
| 25 | `theorem` | [cons_nil_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-nil-append.md) | 247 | `result-track:bbb1a841fa8ad16ccc9cc5da44d8074820291115365d10fa955569b0bcdec706` |
| 26 | `theorem` | [append_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/append-nil.md) | 252 | `result-track:3d2e6611bcc0119a5355d7ff555f89c8c0e044f902becc4ff7e21d86d61802e0` |
| 27 | `theorem` | [nil_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nil-append.md) | 259 | `result-track:be9c899fbaf7729128262b247ee3b9b8d2a598717b99ed1e36831b9fefae7a6e` |
| 28 | `theorem` | [append_assoc](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/append-assoc.md) | 263 | `result-track:f04ac30a996d91ebed601d6cb2fae950c6e050882909d4a14d1060e843c9156d` |
| 29 | `theorem` | [append_copy_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/append-copy-copy.md) | 273 | `result-track:2edfe4ee01ff18cbacdf56c9de9debee24f67defb3dcff95f7e0b7bd61474652` |
| 30 | `theorem` | [concat_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concat-nil.md) | 280 | `result-track:b4193c772fed543bc327c915a1a988d1e87d3f8591951ff1cd985c5061f46d07` |
| 31 | `theorem` | [concat_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concat-cons.md) | 284 | `result-track:e04d5bcac2f9fb724388a72d9795542e7ac322f588ceb3f1ca8497fdac215b5c` |
| 32 | `theorem` | [append_concat](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/append-concat.md) | 288 | `result-track:7a024cb95db825c9cf2c70a8134fd09e0634b3e3b4595385410b2f7949767a79` |
| 33 | `theorem` | [concat_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concat-append.md) | 292 | `result-track:5e15a282cf87d2c885d047739c1439eaa54e68b4f5aedf48630eeb99fcd74d72` |
| 34 | `theorem` | [exists_cons_eq_concat](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/exists-cons-eq-concat.md) | 298 | `result-track:36a8f2db0e1fc5ca49e36b424592e0e877cac59f4aa2b82728035cf4f60c48fb` |
| 35 | `theorem` | [exists_concat_eq_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/exists-concat-eq-cons.md) | 309 | `result-track:acca449cb13113ceaf8ae6adafc10c973433da3b37c007e29a898babb6e76020` |
| 36 | `theorem` | [reverse_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-nil.md) | 317 | `result-track:1595a1dbfa9f813032f883d451cf8c51719d3608104ae84a0bf0dcb1285bc5d7` |
| 37 | `theorem` | [reverse_singleton](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-singleton.md) | 320 | `result-track:96b0252944f198bacfccfcb65ea9f7a9677c52d57bb0de869163bcc3fc9ab4a7` |
| 38 | `theorem` | [cons_reverseAux](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-reverseaux.md) | 325 | `result-track:99db4045ae29387ee0cb3d0f436f628d17cbe3ff449281bc6702f7fa93e5baf1` |
| 39 | `theorem` | [append_reverseAux](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/append-reverseaux.md) | 330 | `result-track:92ac3b6f26576669b312c716d11e956a1281f76a48f89c41e840c65c9c2ec976` |
| 40 | `theorem` | [reverseAux_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverseaux-append.md) | 339 | `result-track:9216c7cf05850c13857a3c6559501d179b6d45a73634d51bc96db06e685f062a` |
| 41 | `theorem` | [reverseAux_eq_reverse_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverseaux-eq-reverse-append.md) | 347 | `result-track:f5ffbb9f580cc5af031fd943bd34595dbae1f46d6c2f10ec0786e3278c7a999e` |
| 42 | `theorem` | [reverse_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-cons.md) | 352 | `result-track:84c919584a9059735123c3b6d8b55cb1aa961ce5204c81a2a8a899adf7b6ddff` |
| 43 | `theorem` | [reverse_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-copy.md) | 357 | `result-track:26112822ffe3cee2a2089d71f796fa8863c773bd301e2ede4bc47d8d55721ba7` |
| 44 | `theorem` | [reverse_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-append.md) | 364 | `result-track:ce928f19d3db5bb256d018c568794e78cd9b068c885b6dc7873ee412a4496326` |
| 45 | `theorem` | [reverse_concat](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-concat.md) | 369 | `result-track:1c880054d92b54daf74666180b3fd4476b413b9b7ea1b6043fa82abe0c5c72b6` |
| 46 | `theorem` | [reverse_reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-reverse.md) | 374 | `result-track:fd40a2aad895712aa799a6cde19e031a35c93547176d981419750c21f5a89560` |
| 47 | `theorem` | [length_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-nil.md) | 381 | `result-track:1b2d2fea3e34be005462b50978b7219c7ef961f3f6a13aba32c99fc017d22c68` |
| 48 | `theorem` | [length_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-cons.md) | 385 | `result-track:d340139c0a5d80486d8ed2e507cc9437f7abf7f7410f09ed5cfabac9a92c5b08` |
| 49 | `theorem` | [length_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-copy.md) | 390 | `result-track:d5aa8d947e4430c119715fbdd570077aa9105cb42fdd43f6929401f20d972dd2` |
| 50 | `theorem` | [length_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-append.md) | 397 | `result-track:065713a4fd8726ab60667d75f1972f1d9dfc63a686c478e865fcbb0084995340` |
| 51 | `theorem` | [length_concat](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-concat.md) | 405 | `result-track:05a7f3d1d7c9ebb741b0a4dc6dcafa924e69a167effb018df32a5bcfcf361ba3` |
| 52 | `theorem` | [length_reverseAux](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-reverseaux.md) | 410 | `result-track:9cbcdf20edb0bf11699980f4cb4c6895a835e9adbab0ca9f05bbbafc2c8dc5ee` |
| 53 | `theorem` | [length_reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-reverse.md) | 418 | `result-track:a894e15007d95215aa4c7e07db05952099331bc7f2ea823cc3ddffd7ad37b0c6` |
| 54 | `theorem` | [eq_of_length_eq_zero](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/eq-of-length-eq-zero.md) | 421 | `result-track:1309782f86fcd1321fcc80981a539c620bf2515cb181c38f80e9d4d8eadbdbbc` |
| 55 | `theorem` | [exists_length_eq_zero_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/exists-length-eq-zero-iff.md) | 426 | `result-track:a552a54c40910a5c9c18de7add277b68c9339613ad56e91873ad998a0d556a09` |
| 56 | `theorem` | [length_eq_zero_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-eq-zero-iff.md) | 435 | `result-track:0b10d6a141cf9625a4030a1bc9a2aba20a749da0373e735e6880ad70c1e0b8aa` |
| 57 | `def` | [concatRecAux](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concatrecaux.md) | 444 | `declaration-track:354223c48c01cd4533848f479cb29030c5aa208336c80f62abb21a344df44e9f` |
| 58 | `def` | [concatRec](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concatrec.md) | 454 | `declaration-track:cbd8ce39db3e30c27a6f5270111f7e96b7e3317791509dd10be66c31088fe6a3` |
| 59 | `theorem` | [concatRec_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concatrec-nil.md) | 459 | `result-track:a57af90c210c252cc12cf77d552c8b02ebee5262021b9b083a6816a0914eeef4` |
| 60 | `theorem` | [concatRec_concat](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concatrec-concat.md) | 464 | `result-track:753bf55c172ffd9d47b82e3748c8d493eeb2ec4a96e280c99c1489988d7e402f` |
| 61 | `theorem` | [concat_ne_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concat-ne-nil.md) | 479 | `result-track:8f3752ca3dae5d671d51bc1be9f093d16bdbe57f6b99147c87b7122401199647` |
| 62 | `theorem` | [concat_inj](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/concat-inj.md) | 483 | `result-track:44751b58b513bfc32a7c918b80b997c80fd8b77d5e63fc5f1b08bf2cb96d2075` |
| 63 | `def` | [support](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support.md) | 510 | `declaration-track:5cee5523388875a0838f1b6ee58f4c00d01762fe0f49517e4509adf6ba82b031` |
| 64 | `def` | [darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts.md) | 516 | `declaration-track:0529f0bcf676867b95ca58674d4847a90d410fb9a4e05dc7ec3bd8ab5664d36a` |
| 65 | `def` | [edges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges.md) | 523 | `declaration-track:2b2096dab3487039ae585f0ece88858a6ecf2e7165c3dce7c00788196b94762c` |
| 66 | `theorem` | [support_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-nil.md) | 527 | `result-track:e1853f2cada6c874b8641f4924dd033b3b425d23128f9246b6e8af4d52682b54` |
| 67 | `theorem` | [support_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-cons.md) | 531 | `result-track:b6f0baa2fdb63c2db772b26c4fb4549e91082fad08f311d35a735c5f315c9b0c` |
| 68 | `theorem` | [support_concat](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-concat.md) | 536 | `result-track:a836c8165cb9f95558ac81fca754b835810df6a9053bc9d58f8aea128dd1ab16` |
| 69 | `theorem` | [support_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-copy.md) | 542 | `result-track:fe1f3cae297a614cd9b82c58ea35d29b9b8feda3c0fc9b5013db6be21714c336` |
| 70 | `theorem` | [support_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-append.md) | 548 | `result-track:d7e6ebb2df6134f9727aed24969b51fc46de2109e1eda9932a2ac2263102cc62` |
| 71 | `theorem` | [support_reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-reverse.md) | 554 | `result-track:69151906b19e07a801bfd8909b9d709ad2edcd3e40d5b565de436b31ae07353a` |
| 72 | `theorem` | [support_ne_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-ne-nil.md) | 559 | `result-track:0c7c8b5102d6eb57cf2583f11563bddd54a2452738d4dce168cf1c8d23bc3749` |
| 73 | `theorem` | [tail_support_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/tail-support-append.md) | 562 | `result-track:914286d6684383f6e80bc6cb792f5ce02c53439fb4d74615535370b6f2a5b8e5` |
| 74 | `theorem` | [support_eq_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-eq-cons.md) | 567 | `result-track:cf8489f713eb3b8bbd71862108da27a3d312b3a1d6a86f47a949005f43e924e5` |
| 75 | `theorem` | [start_mem_support](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/start-mem-support.md) | 572 | `result-track:daacd1c33f36f57628fd5eab22198f07c0931c7323a0d17ca671acf22303f3e6` |
| 76 | `theorem` | [end_mem_support](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/end-mem-support.md) | 576 | `result-track:c36df4538495e22c39b6a94beda25fd44a2aa0c8b09a08341e02cf653b1fd7f6` |
| 77 | `theorem` | [support_nonempty](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-nonempty.md) | 580 | `result-track:b3d7fb2e3a48b02926cb4ba0f5e9b95045cea6dd5f66d72082fbd6564be4ed88` |
| 78 | `theorem` | [mem_support_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mem-support-iff.md) | 584 | `result-track:1768f53342dad3c7761d14ff43ad34fe17dc85740c4ebaab001539c43855f689` |
| 79 | `theorem` | [mem_support_nil_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mem-support-nil-iff.md) | 588 | `result-track:c50f183691a93d605218dd7846e46cea96db9cd67a0fdacea0b13237125b503c` |
| 80 | `theorem` | [mem_tail_support_append_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mem-tail-support-append-iff.md) | 592 | `result-track:2206cb6d6b837f3870282e4fd5b88ed804bc74d7da5e18acc9f22e794ba86dcd` |
| 81 | `theorem` | [end_mem_tail_support_of_ne](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/end-mem-tail-support-of-ne.md) | 598 | `result-track:504453812b30234a092873fc6e1774f0742319e667adf15212e4719b8c9975d5` |
| 82 | `theorem` | [mem_support_append_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mem-support-append-iff.md) | 604 | `result-track:b6343483be7d689d0da347a686ac2112495d8fbfb460816e6073999a100d3816` |
| 83 | `theorem` | [subset_support_append_left](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/subset-support-append-left.md) | 613 | `result-track:90e96cd91f675db03fd5082a3ab9726e78c33f9d36763f2522f1241e2075ccde` |
| 84 | `theorem` | [subset_support_append_right](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/subset-support-append-right.md) | 619 | `result-track:c887b1314383f5b0b379f6920fbbbba06fef63217c7b74fabc7b7c5a81c743e8` |
| 85 | `theorem` | [coe_support](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/coe-support.md) | 625 | `result-track:a3d426bbfd0d860cd21415c30e2718f5f7f64a478add1e273987880504f5d14c` |
| 86 | `theorem` | [coe_support_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/coe-support-append.md) | 629 | `result-track:0fd8f3377eff0737b601fd03e624459ce3a81c8dfea72421b373124c568519a2` |
| 87 | `theorem` | [coe_support_append'](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/coe-support-append-source-edition-2.md) | 634 | `result-track:e60c3b3b1e168876846d86eaffe2c88a8ee9f2d9dcb7ff5008e98c51cd848e4d` |
| 88 | `theorem` | [chain_adj_support](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/chain-adj-support-source-edition-2.md) | 642 | `result-track:468fb267fda65e963554b88907a8736776866cbe7f46a6b3775e966fbf9606fb` |
| 89 | `theorem` | [chain'_adj_support](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/chain-adj-support.md) | 648 | `result-track:335d890bc1d99ecdd6f92e5c4a8c147d480fef527c6addbba2072ba6e0ff6b92` |
| 90 | `theorem` | [chain_dartAdj_darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/chain-dartadj-darts.md) | 653 | `result-track:361fe2dd526376b1e3f4dca696458a4966ae625efb7831813ff2c5301b2bad32` |
| 91 | `theorem` | [chain'_dartAdj_darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/chain-dartadj-darts-source-edition-2.md) | 661 | `result-track:fa7add87b9f0aed63da6a989e84fc84750a4392fc577d51c1ba657072fb2ee7d` |
| 92 | `theorem` | [edges_subset_edgeSet](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-subset-edgeset.md) | 669 | `result-track:0b03b631cd2295300caa7929f8ad2f619b24ee1da0a592b00931be579f4cff2b` |
| 93 | `theorem` | [adj_of_mem_edges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/adj-of-mem-edges.md) | 677 | `result-track:9b56e09c7e9b7c0710bafe10fdbc2d2d508b64216e7ee84d3a76c959f2c31e84` |
| 94 | `theorem` | [darts_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-nil.md) | 682 | `result-track:de6ede632b1e807add7d5bda406f2d5b451bce9997730cbe1a5a973df8587539` |
| 95 | `theorem` | [darts_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-cons.md) | 686 | `result-track:f86735d8a5e6b39cd23ed5c67cb0b072aba531891f53d7985b43be9a52f27bd1` |
| 96 | `theorem` | [darts_concat](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-concat.md) | 691 | `result-track:5787627cb655a8ca116f23a7ed71df07c3e219546b6f310253f9d2ab9cfa4973` |
| 97 | `theorem` | [darts_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-copy.md) | 697 | `result-track:042fe6f5644cb94882789378725763ff981d2fdfd524b1379deab7ea408e9264` |
| 98 | `theorem` | [darts_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-append.md) | 704 | `result-track:fef8e9d702d7caef433a895d2b360318b7384c6e65aa6cf718e8487fcc319b6c` |
| 99 | `theorem` | [darts_reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-reverse.md) | 710 | `result-track:50c6cc726cedc35d3de6acbfe509ed083c630c669141c0b6d0d5c7e0b0b6e865` |
| 100 | `theorem` | [mem_darts_reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mem-darts-reverse.md) | 715 | `result-track:78fc3c390ba26df1938016676609a0f8b33cd5f98d0c4a72e8092a90d3f23a0a` |
| 101 | `theorem` | [cons_map_snd_darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-map-snd-darts.md) | 719 | `result-track:56d869fd92f081510ecd0ccd718b982f6f10f723a35c78be39157682c4790f67` |
| 102 | `theorem` | [map_snd_darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-snd-darts.md) | 723 | `result-track:4be789ef148cd624561e2910d971d7ce54559934be765f1628cf86e6725cf5c7` |
| 103 | `theorem` | [map_fst_darts_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-fst-darts-append.md) | 727 | `result-track:1ec3c6f91b9b567c0b9a88145c98448bfc4d26672339f7e956894c0bda1c2500` |
| 104 | `theorem` | [map_fst_darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-fst-darts.md) | 732 | `result-track:ee1f71f262c60813ebf5e95bfc316863c68faa8e25bd2d566cf77f2f9da27cac` |
| 105 | `theorem` | [edges_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-nil.md) | 737 | `result-track:c8fd98777fea76bc6d1010988f168b013aceedc7ec4e0f284458744ed0feb0f0` |
| 106 | `theorem` | [edges_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-cons.md) | 741 | `result-track:68a9033477fc3ed0fd54dd0fdcd7a21f3628feb76b5f42a367b4eb8be022cc32` |
| 107 | `theorem` | [edges_concat](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-concat.md) | 746 | `result-track:4378a8b8cb437e22342735b9bcf2dbd5c0b8083ba9cfd5fb7a2d073a340956cf` |
| 108 | `theorem` | [edges_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-copy.md) | 751 | `result-track:395976d6b3e13a3a45262275b9933120955095be9525fbd855cb91f4a41df24a` |
| 109 | `theorem` | [edges_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-append.md) | 758 | `result-track:037b9b5f9f0371f391ad4332efcd11ab452a2427e723b30a6d5372b893c06eb2` |
| 110 | `theorem` | [edges_reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-reverse.md) | 763 | `result-track:d5e22a98e6c8f0cd5541b3316a6d3808f0d1a4ea6b1c8075772838a55a4fdbc3` |
| 111 | `theorem` | [length_support](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-support.md) | 768 | `result-track:eb81935608d7c3d0e0aa5a311aeeb452e8e0c938bf74dffbb45bcdd4e37bf44a` |
| 112 | `theorem` | [length_darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-darts.md) | 773 | `result-track:bc83bbe182ca48d8c839d5bbbd745fdba763f1f51b7ee65921f26ca2250d4b2b` |
| 113 | `theorem` | [length_edges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-edges.md) | 778 | `result-track:ee5846e5b08b5840b2d0da361f36553602c02ae6929503879657233eada0dcdf` |
| 114 | `theorem` | [dart_fst_mem_support_of_mem_darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/dart-fst-mem-support-of-mem-darts.md) | 781 | `result-track:f1cd10a0ec84576bcfe497d26ddc8dbf07559242c3694d5a9dcec4b002147149` |
| 115 | `theorem` | [dart_snd_mem_support_of_mem_darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/dart-snd-mem-support-of-mem-darts.md) | 790 | `result-track:046bfec8bf047494e1d18b240b30025ed70404948ba794731f5f5c16ca7c78a3` |
| 116 | `theorem` | [fst_mem_support_of_mem_edges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/fst-mem-support-of-mem-edges.md) | 795 | `result-track:a0a0d6c6ee7ba796ccf3a44b35d98e4b43b6556c4ea1c51d1755481e183446b8` |
| 117 | `theorem` | [snd_mem_support_of_mem_edges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/snd-mem-support-of-mem-edges.md) | 804 | `result-track:bbfa336a80fe8f1b5751e397ac6938ba5b9ac48976957be8b3bc93f64b54fa15` |
| 118 | `theorem` | [darts_nodup_of_support_nodup](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-nodup-of-support-nodup.md) | 810 | `result-track:99e7dac58e9bc3d60f81142fca90f4244598901bbffb453f98e6bfa6248c3a0f` |
| 119 | `theorem` | [edges_nodup_of_support_nodup](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-nodup-of-support-nodup.md) | 819 | `result-track:c7aeb8d33a707fadb307226d07054ab30cd576b8d8242343c24d18713e1a3dfa` |
| 120 | `inductive` | [Nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nil.md) | 832 | `declaration-track:8a4c66da7433d71fafa3b3b65c61adcec61081a317b2fb1ae47d82450b8fba08` |
| 121 | `lemma` | [nil_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nil-nil.md) | 835 | `result-track:1633dd315e45af83ba971e491402bc1011738dbff4ba183f77716edd20c3a602` |
| 122 | `lemma` | [not_nil_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/not-nil-cons.md) | 837 | `result-track:d1de3ace1adb9a6d0feb11e06bb50d1004a17fa3b152b9130c5fdc770c201486` |
| 123 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/instance-source-edition-7.md) | 839 | `declaration-track:e05f5db9fc0763673b49e5ee89493f05df7e8de2930d9148bff15b4158890551` |
| 124 | `lemma` | [Nil.eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nil-eq.md) | 844 | `result-track:cfa222d273f2fb3909fb88d64eb8d54bae5cf99dd45904652ad122f361fddec3` |
| 125 | `lemma` | [not_nil_of_ne](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/not-nil-of-ne.md) | 846 | `result-track:d540cd2a9483208a22c7677e7414d414599748b417fbcf8bc4dc353ccf343a55` |
| 126 | `lemma` | [nil_iff_support_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nil-iff-support-eq.md) | 848 | `result-track:c16499b19a8aaba322cb8d0807fc0af07ee2e65e01d093dce5650f81e2a8bd52` |
| 127 | `lemma` | [nil_iff_length_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nil-iff-length-eq.md) | 851 | `result-track:da6f5bcfa547bdddfc75a1e8ac64d2218aab211581bb5327bedf1f08c6b718c4` |
| 128 | `lemma` | [not_nil_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/not-nil-iff.md) | 854 | `result-track:fb1915e9887c73919c03b92fdd96caece603424d172c9e505114cfc47ebfb292` |
| 129 | `def` | [notNilRec](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/notnilrec.md) | 859 | `declaration-track:b15cbeb70a0881028993b69d2b34eaa3423b808dbf1cffd314a21c83c00d9e9f` |
| 130 | `def` | [sndOfNotNil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/sndofnotnil.md) | 867 | `declaration-track:30ee396c8a41c7608a61a8d2a41734990efadf6bfdd83f88698612ccffb67694` |
| 131 | `lemma` | [adj_sndOfNotNil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/adj-sndofnotnil.md) | 870 | `result-track:0870fb4c74276441df72a4aa664dbe483aa9a43dfaf662177735a613bdc0cc6b` |
| 132 | `def` | [tail](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/tail.md) | 875 | `declaration-track:aa0bafdf1154cf01b437c6fb09417ee0f1401cd3f07556531126843c320f816d` |
| 133 | `def` | [firstDart](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/firstdart.md) | 880 | `declaration-track:e73dde8bac1b68dbf9e2aab9004dd7438f8678f21b9a1a57478c2de5e9a60b60` |
| 134 | `lemma` | [edge_firstDart](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edge-firstdart.md) | 885 | `result-track:6f2e2c77805cc864dda2b801b5211fdbf75e925e30b46534790ec19aeaae2c8b` |
| 135 | `lemma` | [cons_tail_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-tail-eq.md) | 888 | `result-track:0c439984c71600eec5c1056e78de7605dac5f3907bc1deca2972982a2e5ce57b` |
| 136 | `lemma` | [cons_support_tail](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-support-tail.md) | 892 | `result-track:66df8fe627ccb3945ee27ddb7b11253d3f890e17735e48ffacbf77fec0ba6615` |
| 137 | `lemma` | [length_tail_add_one](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-tail-add-one.md) | 896 | `result-track:fa5a413c6fceb2bce4bd9d1babdd89ac248797f0f5cc8276ffee46e1a102aee9` |
| 138 | `lemma` | [nil_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nil-copy.md) | 900 | `result-track:d5656577d17cbffe6211afdef12e9353dcca60f45eec4b6aef45a8bb680b1b88` |
| 139 | `structure` | [IsTrail](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail.md) | 907 | `declaration-track:d883586d717b19042d83629ebb9b9ccc19c118e8732523798cd1ca368a19b080` |
| 140 | `structure` | [IsPath](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath.md) | 913 | `declaration-track:3fb1be8516115648f953a8db8df9a6ccb3da1b13e3730a63c6cce6a416795d6f` |
| 141 | `lemma` | [IsPath.isTrail](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-istrail.md) | 918 | `result-track:5e0666fd0bc43797a105da6a7a368ffc5ee78ac19caf790eebac8987e025935b` |
| 142 | `structure` | [IsCircuit](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscircuit.md) | 922 | `declaration-track:2930d577fe90af7d59c7bdd298e6b804c2c1e3c7cd45353f74165d3fba3fdb3d` |
| 143 | `lemma` | [IsCircuit.isTrail](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscircuit-istrail.md) | 927 | `result-track:da35bc8853244db83a4889d0b89242cc509da1e44161ff823aeccf728199f99d` |
| 144 | `structure` | [IsCycle](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscycle.md) | 932 | `declaration-track:8f4292454700de7d71dae6124cf0b4bf223c1a43e3005a3fad5f0defe5222854` |
| 145 | `lemma` | [IsCycle.isCircuit](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscycle-iscircuit.md) | 937 | `result-track:299d9846ae535109b78c285bf322d66955153bde7bf2fe8ec1634785987e201d` |
| 146 | `theorem` | [isTrail_def](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-def.md) | 940 | `result-track:ccc8385d8a1d57e2a45c2a9cb8e5d410828fd35522f4107ed0959161f355d381` |
| 147 | `theorem` | [isTrail_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-copy.md) | 945 | `result-track:2c0d69906b5137148eb7587fed2ab421fab3aae7a317f4b5b196f4a69500cedb` |
| 148 | `theorem` | [IsPath.mk'](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-mk.md) | 951 | `result-track:27ba812f8b863724572f7e28ec3553587bcf66f26ddb473ea244d2632dadb64f` |
| 149 | `theorem` | [isPath_def](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-def.md) | 955 | `result-track:a5356be1adc078d44d3b102475bb4b46e782a8e922121261cefc85908d950689` |
| 150 | `theorem` | [isPath_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-copy.md) | 960 | `result-track:9071dcaae40f0985482f8191b209819620c96f18dc5d483a5cccbfc10b0e3d90` |
| 151 | `theorem` | [isCircuit_def](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscircuit-def.md) | 966 | `result-track:3738914c18480e3705490ea05c400090ee78f8b7a2dfbeebe0af89dee1ad7910` |
| 152 | `theorem` | [isCircuit_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscircuit-copy.md) | 971 | `result-track:de103f4171e349578ea67c738b0fedd93ebacf38c47aed98cf221efd3a74af80` |
| 153 | `theorem` | [isCycle_def](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscycle-def.md) | 977 | `result-track:f46f71d0795fcd882b2d8a04917a3cd76930fc943a49728ef6f1b893ee5ad526` |
| 154 | `theorem` | [isCycle_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscycle-copy.md) | 983 | `result-track:b438f2e3e67fe31b571dfd189de1c202d22715e6e5491b1d5245976fa34fb805` |
| 155 | `theorem` | [IsTrail.nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-nil.md) | 990 | `result-track:fa84ea081ab3047d7c9c1f2463883c302c03be3f04013c9cfe0a3d80410682fb` |
| 156 | `theorem` | [IsTrail.of_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-of-cons.md) | 994 | `result-track:b53563a2f9c867d255113729672b348452f41974e74ac1d3a2437d8330c8d568` |
| 157 | `theorem` | [cons_isTrail_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-istrail-iff.md) | 999 | `result-track:09f4ae401ed5c4ceed8dbc074675564ed30f7fe08cba853fe79dff73e590d906` |
| 158 | `theorem` | [IsTrail.reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-reverse.md) | 1003 | `result-track:92556c2d0c2e2c1d8c05f1ad8b85279bb658ccc6318a525ec38d01bd0e2f65fd` |
| 159 | `theorem` | [reverse_isTrail_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-istrail-iff.md) | 1008 | `result-track:ef31eb576d7947f4372ce4a92c09f58a87df60c17c46cd8cffea8d0c8cf9e383` |
| 160 | `theorem` | [IsTrail.of_append_left](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-of-append-left.md) | 1015 | `result-track:4babe06e889cd37bf8510b13068c4418eb32064abdc837a90de3a7988c56f29c` |
| 161 | `theorem` | [IsTrail.of_append_right](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-of-append-right.md) | 1021 | `result-track:22d4ac03910d413341d92579245f3db9de69f0d53482cebd930bd07cf8af68cd` |
| 162 | `theorem` | [IsTrail.count_edges_le_one](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-count-edges-le-one.md) | 1027 | `result-track:498034224678c3166e9014f5248507a8f8078957f0bf18be9e586a893581b448` |
| 163 | `theorem` | [IsTrail.count_edges_eq_one](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-count-edges-eq-one.md) | 1032 | `result-track:69f637d12b79caca6c2710ef55b10304440fc1fd04b51c349b149af1d644ae57` |
| 164 | `theorem` | [IsPath.nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-nil.md) | 1037 | `result-track:52a4970f3540c59ec9c83534253f1dd6a8b5423d4b4e6ef60e3b34956a9d6457` |
| 165 | `theorem` | [IsPath.of_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-of-cons.md) | 1040 | `result-track:c8d984e0bd3ab6160410983e117fd0766f083c745a9dcdd59197a49cec044a0e` |
| 166 | `theorem` | [cons_isPath_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-ispath-iff.md) | 1045 | `result-track:31fb5c5c90fe391140ef0f2fc2af8712d800cc37a4b63eccf1a0eaa5c99758bc` |
| 167 | `lemma` | [IsPath.cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-cons.md) | 1050 | `result-track:554b16208b944a8020cb4573faf07f91ce8f7c2b7b51fa2c201e924ca7c1fb2f` |
| 168 | `theorem` | [isPath_iff_eq_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-iff-eq-nil.md) | 1055 | `result-track:b12c02b1935f5bd6c9fe0f8dd62088b9900029e3fc777bcc68f8f045c72f442d` |
| 169 | `theorem` | [IsPath.reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-reverse.md) | 1059 | `result-track:60adaef64ab760e19a2f0b31a533382234cfb1d5ae4061b106de68301154cb04` |
| 170 | `theorem` | [isPath_reverse_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-reverse-iff.md) | 1064 | `result-track:7ac251d65e56520f0b95dd6bbc1c3c7741e4e47ffc027ac3c07a09e4844ad816` |
| 171 | `theorem` | [IsPath.of_append_left](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-of-append-left.md) | 1068 | `result-track:4a57e2290443cbe8b2afc6f37eb5cd41bdb80d04e5c239a59ccf84f3586e9b5b` |
| 172 | `theorem` | [IsPath.of_append_right](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-of-append-right.md) | 1074 | `result-track:85d2994f46708a64e248ac85c04ede3537e241bb4cf61fac6b95d568f79f26ef` |
| 173 | `theorem` | [IsCycle.not_of_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscycle-not-of-nil.md) | 1082 | `result-track:887f258c7409bd277377801c3418a752b2bfd3c1060cf68430bc25a3a676c8f4` |
| 174 | `theorem` | [cons_isCycle_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-iscycle-iff.md) | 1085 | `result-track:327e0b8f9804d68edaaac32a8ebbc1ba7525df28021c244d5ea8c07b065c20aa` |
| 175 | `lemma` | [IsPath.tail](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-tail.md) | 1093 | `result-track:075c0d665a39747ef03f4e91d7b32d66c095087ca76a1c4498a1360203278840` |
| 176 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/instance-source-edition-8.md) | 1100 | `declaration-track:eb05b7455ad8da844446bd2127444a4a983b343b5fff07c432bcdd734c22a6e4` |
| 177 | `theorem` | [IsPath.length_lt](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-length-lt.md) | 1104 | `result-track:33e5a86b68093af15628516df6cfd0febd0e385fd1d851af6e97d1d9b44785b8` |
| 178 | `def` | [takeUntil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/takeuntil.md) | 1118 | `declaration-track:98f175620959c99f8fd9c9ae0f1d81d8bb08ed2116eaed3a3576b6f3c42df2c3` |
| 179 | `def` | [dropUntil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/dropuntil.md) | 1130 | `declaration-track:1c1ed5e992da4fc6c729e9cd264f8ab5a65c4aecad370615d7bd45c758346fe9` |
| 180 | `theorem` | [take_spec](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/take-spec.md) | 1142 | `result-track:e8a77900c4a8d07b1a9e65bc9a4fb81e7286f611eadcc919b93beadfaff913f4` |
| 181 | `theorem` | [mem_support_iff_exists_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mem-support-iff-exists-append.md) | 1154 | `result-track:ab8183971d9780fb92469edbf5441a6b7b0fe84bd2c540a59ac2a77525c5dae7` |
| 182 | `theorem` | [count_support_takeUntil_eq_one](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/count-support-takeuntil-eq-one.md) | 1164 | `result-track:acc82e898b25a91241f2c3bb35d74796574659f4aae794f1d8a987e3dc565221` |
| 183 | `theorem` | [count_edges_takeUntil_le_one](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/count-edges-takeuntil-le-one.md) | 1176 | `result-track:39f719d6627127da17028da64cf102322bc92ec1a8c29547cb84e8d37585530d` |
| 184 | `theorem` | [takeUntil_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/takeuntil-copy.md) | 1198 | `result-track:6b2eb7c0136cbe629ec1b47c0a3ce9517221b037ea07387b29f4c67b0757c499` |
| 185 | `theorem` | [dropUntil_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/dropuntil-copy.md) | 1206 | `result-track:d536a218ac3708e34b53c2b218aa77a1e416b5e4ff7304818c2233fa6256a6a3` |
| 186 | `theorem` | [support_takeUntil_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-takeuntil-subset.md) | 1213 | `result-track:c98f39718a01adac8811bdfc7e5e5c7e23514cac03fe126f762acdcfdc72a7ae` |
| 187 | `theorem` | [support_dropUntil_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-dropuntil-subset.md) | 1219 | `result-track:d8283f63ed2eb78ffdfa18df0cd4772958f82eb5a14b81aa15bb87272eb5596e` |
| 188 | `theorem` | [darts_takeUntil_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-takeuntil-subset.md) | 1225 | `result-track:d0d1d1b5bc50df07b140233834b52eb807af9c4996fe2143db30ab71fa6a73c5` |
| 189 | `theorem` | [darts_dropUntil_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-dropuntil-subset.md) | 1231 | `result-track:bfb566cde8064961f61e6b318d59e06215db83c17ef9853adcfb3485f85405bc` |
| 190 | `theorem` | [edges_takeUntil_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-takeuntil-subset.md) | 1237 | `result-track:8a93144220084fc6a783250b132f54c149546d8e70fd94d1dde88ab8c8726cd4` |
| 191 | `theorem` | [edges_dropUntil_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-dropuntil-subset.md) | 1242 | `result-track:93f7b1b6241dbd4d1332f1e2e49dea1bb4ce18585049cded096f78b07013eaba` |
| 192 | `theorem` | [length_takeUntil_le](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-takeuntil-le.md) | 1247 | `result-track:493b7ea6b00144f136f485136dc17d947f0bcc52013aa7112ce6093e3a410c76` |
| 193 | `theorem` | [length_dropUntil_le](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-dropuntil-le.md) | 1254 | `result-track:1fff80704091e3ed85ac0136c7014137687f141f7a591a32490601f906e0b7df` |
| 194 | `theorem` | [IsTrail.takeUntil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-takeuntil.md) | 1261 | `result-track:670f7b488324526ed13ad98ef107207799786a1de4d09c96e78f6e71ca28cd84` |
| 195 | `theorem` | [IsTrail.dropUntil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-dropuntil.md) | 1266 | `result-track:fea8fe176f0f1443925248b1fb082401175c06617e53e2e6b42031eedbe7f1c3` |
| 196 | `theorem` | [IsPath.takeUntil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-takeuntil.md) | 1271 | `result-track:1f7a8778d252108e223b07a4281c00cfed090d571b51c501724b5e45aa4848a6` |
| 197 | `theorem` | [IsPath.dropUntil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-dropuntil.md) | 1277 | `result-track:65b860352833bce6775ac7d545aed5ccde361135f04f4ec59ee2ed29815db763` |
| 198 | `def` | [rotate](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/rotate.md) | 1283 | `declaration-track:f781cca9a736ab3c2626b2869f620dd9e77b7e669faeaa95bc1e6d4cdaf41dd4` |
| 199 | `theorem` | [support_rotate](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-rotate.md) | 1288 | `result-track:2c21506714b6fa2d03f1753b4002e043fd69389010f7a8a7c1aae28b9ca6a5ec` |
| 200 | `theorem` | [rotate_darts](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/rotate-darts.md) | 1295 | `result-track:d0a7bd57d1cd26fdf8dad0b073d018d283b2577ac60b8989817b2c7f30c5b9f1` |
| 201 | `theorem` | [rotate_edges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/rotate-edges.md) | 1302 | `result-track:837b883eec8e9b2784d727f851b66aa95eedd22a3819467e6ed3f0afc62d9a42` |
| 202 | `theorem` | [IsTrail.rotate](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-rotate.md) | 1307 | `result-track:63d55c272ce9d0757491bc1416004b5d6f5e2eb35dd77381e05ad01d5196660e` |
| 203 | `theorem` | [IsCircuit.rotate](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscircuit-rotate.md) | 1313 | `result-track:48e8f532b6588a29a1b28666ce9f039cb770b78155d9a318296957d8bb6061a5` |
| 204 | `theorem` | [IsCycle.rotate](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscycle-rotate.md) | 1324 | `result-track:c4c9f2e4254d675879f3a8015c474193b7b8d28d2d78a1c2b8f2918bb2e97ae8` |
| 205 | `theorem` | [exists_boundary_dart](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/exists-boundary-dart.md) | 1335 | `result-track:f3af4fcae428c41b2b087b59927f3d3ffb0992a68a7783e3f04c4787ec123817` |
| 206 | `abbrev` | [Path](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/path.md) | 1351 | `declaration-track:155f78efe89f77d82b660fb5f2c70ba5cc7e66bbabd910c9b276dcbbb465a8f5` |
| 207 | `theorem` | [isPath](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-source-edition-2.md) | 1359 | `result-track:4f8f0abbf7e0b0262f7d9b14c0f84e6847777998f86983a0997b873c68c97823` |
| 208 | `theorem` | [isTrail](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/istrail-source-edition-2.md) | 1363 | `result-track:e4778130b8e003a92557fc8fa223ec1ff42d1ad3c15ddc46fcc9fb8f097cb886` |
| 209 | `def` | [nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nil-source-edition-2.md) | 1369 | `declaration-track:e61fb3e5395d65ba0e7e91d47929ce6bc8333557477f5ef3f7afbdfc2bbcc0d6` |
| 210 | `def` | [singleton](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/singleton.md) | 1375 | `declaration-track:1b8f3154d16e45a155da31869e96b4f4812fff8d69153233a9f01cd131772d81` |
| 211 | `theorem` | [mk'_mem_edges_singleton](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mk-mem-edges-singleton.md) | 1379 | `result-track:7f0114a709ca05b330ea0b4c8993a64046f0470b60e665d36b49dbcb51d64d37` |
| 212 | `def` | [reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-source-edition-2.md) | 1385 | `declaration-track:4a21adc51cf4ae8fe86239adc40e8ec5829118b38ac23fd6fb322cad03e61ba1` |
| 213 | `theorem` | [count_support_eq_one](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/count-support-eq-one.md) | 1389 | `result-track:2375f642509e36c118670e5cd33e4d8c881296b25cdf5c0c6de50f8e50650b53` |
| 214 | `theorem` | [count_edges_eq_one](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/count-edges-eq-one.md) | 1394 | `result-track:f1444b5eef51ec47dfb6300e57a5c32381fb548b1e3a90ea8000ff3150d6a10b` |
| 215 | `theorem` | [nodup_support](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/nodup-support.md) | 1400 | `result-track:3ed27041678703128d7dcb9f14628b09c50e2d2395a5f68361ffc3b29fa1b191` |
| 216 | `theorem` | [loop_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/loop-eq.md) | 1404 | `result-track:0bd97e7dd83923a9047479be405292239f1e95cbd0a3562a4c097822ed81f174` |
| 217 | `theorem` | [not_mem_edges_of_loop](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/not-mem-edges-of-loop.md) | 1410 | `result-track:ed2c014d6e505f54757d8fe674e27240eef84abf80b8987055d045fa1624c90d` |
| 218 | `theorem` | [cons_isCycle](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/cons-iscycle.md) | 1414 | `result-track:4de192a1d7a6490e79a13325274a465daa42ba2b845753faf6fbbd2d371900dd` |
| 219 | `def` | [bypass](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/bypass.md) | 1431 | `declaration-track:b3a83b3cf074e1da9d50db2ee08ff12e4e00097eac7f8be7c2a5bdd933977886` |
| 220 | `theorem` | [bypass_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/bypass-copy.md) | 1442 | `result-track:442e7873e305242b1e6154e9b82bf7852364665da04f34c03c741e53c6cc35eb` |
| 221 | `theorem` | [bypass_isPath](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/bypass-ispath.md) | 1448 | `result-track:514069168ac1ab771396a63a725c7feb65562a3e62ac1c0d6a9d7b536d12fdec` |
| 222 | `theorem` | [length_bypass_le](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-bypass-le.md) | 1458 | `result-track:0fa28c6f61f83e0852dbb887ffc1fc049e6c7c44afa79164c417037254014ba4` |
| 223 | `def` | [toPath](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/topath.md) | 1473 | `declaration-track:79d4ac7958cb7ddd985d1012c1daf7aa00ac20a570f9ed34bea383999832416b` |
| 224 | `theorem` | [support_bypass_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-bypass-subset.md) | 1477 | `result-track:7f1f137faff8b51e2b8fd320f8e51fa61b42aa08a362c19f07643086b7d64fbe` |
| 225 | `theorem` | [support_toPath_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-topath-subset.md) | 1491 | `result-track:1cb6ad46359e9cc574d0a0b2e2a2de70a2f42ba4c4d2e39c23d79cc80734b2ce` |
| 226 | `theorem` | [darts_bypass_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-bypass-subset.md) | 1496 | `result-track:297de11737f979ced6d7b84863d3a3739c7e48d0070a595d7ac403618b7bbae1` |
| 227 | `theorem` | [edges_bypass_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-bypass-subset.md) | 1508 | `result-track:19df56d60ae3da9909bc6af0a239c5e4f16b863360142520b7ac63e554e5c5d4` |
| 228 | `theorem` | [darts_toPath_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-topath-subset.md) | 1512 | `result-track:e5ed7065e035196050a627aa82561027af759aa7b945c2c5813aec1c0c72f5fa` |
| 229 | `theorem` | [edges_toPath_subset](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-topath-subset.md) | 1516 | `result-track:8c41537ad1872215b9b5df2d207d98c4113333084da75cb34afe4a9e70091d59` |
| 230 | `def` | [map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-source-edition-2.md) | 1530 | `declaration-track:e0634ac4316f9ff715b9bc3fbf75e7788a3e5b96daa0044d43f51d54a726e55f` |
| 231 | `theorem` | [map_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-nil.md) | 1538 | `result-track:facb3710613c8687c8ca976b15dfc33fdf7931637106cbe71a699c270275b7dc` |
| 232 | `theorem` | [map_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-cons.md) | 1542 | `result-track:e051c7e952603c0d117baa9cb390d9633dff4d1d417347a486f5f7979d238d10` |
| 233 | `theorem` | [map_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-copy.md) | 1546 | `result-track:5273347135ddb6e91a2e578804c423db363f4698736e846beb736f2ace2c4f1e` |
| 234 | `theorem` | [map_id](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-id.md) | 1553 | `result-track:5568f1d678d9010bb3b79b9b910992fe99c46c77d532989ee929950830d567b1` |
| 235 | `theorem` | [map_map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-map.md) | 1560 | `result-track:c3d0ac64bd18cb873691ebe1c77ef69df440cc2ef9b0232d2a6aa0e67467ee5b` |
| 236 | `theorem` | [map_eq_of_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-eq-of-eq.md) | 1568 | `result-track:b7ae5976f97aa1485b1520a3f1194bb16bbce0d09de7b817c82de953d619554a` |
| 237 | `theorem` | [map_eq_nil_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-eq-nil-iff.md) | 1575 | `result-track:416e2e2cc0345306883c33a8e4f8e290005e01d566f688323c12faa427ab72d5` |
| 238 | `theorem` | [length_map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-map.md) | 1579 | `result-track:d32e9d202dc8574bded8cb1c4db7e053c1407cc1c051df9fa0ecd1eef383235b` |
| 239 | `theorem` | [map_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-append.md) | 1582 | `result-track:11567ef089147738599a42c1e074e95810683596d8e17b7382e45580a944a9fb` |
| 240 | `theorem` | [reverse_map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-map.md) | 1587 | `result-track:e0677e53f931ead00e87b5f1dde5e8dfb1d1a8e9da8fc15741091038dabbf128` |
| 241 | `theorem` | [support_map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-map.md) | 1591 | `result-track:e397b122bc14fb1d838df92e1fdc6f29463919d0da4c46f94636264f7443f4f9` |
| 242 | `theorem` | [darts_map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/darts-map.md) | 1595 | `result-track:8c6b3650a40600b7ef22670a3e1c7d3ff1ead8600c39b236c9eebce7963bc679` |
| 243 | `theorem` | [edges_map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-map.md) | 1599 | `result-track:abeb0d69efd48bcd74fb61766cee46840254573438ccb035d144f2835d8007e6` |
| 244 | `theorem` | [map_isPath_of_injective](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-ispath-of-injective.md) | 1609 | `result-track:b83f0aecf1abb91cf9f01d179ba86bf84643d85688b5e59b19e0b1bbdb43f337` |
| 245 | `theorem` | [IsPath.of_map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-of-map.md) | 1621 | `result-track:3691167d9a8d655f99f5c36a4e035a74ada667342164997fbfcf80996abeb19e` |
| 246 | `theorem` | [map_isPath_iff_of_injective](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-ispath-iff-of-injective.md) | 1633 | `result-track:c707278e5f9b328007eec5b2b70b431bc626744fcb89d721eb9604535a32382b` |
| 247 | `theorem` | [map_isTrail_iff_of_injective](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-istrail-iff-of-injective.md) | 1637 | `result-track:4d3edd6bf5248a2f950822932b3160e65b1376cc3e952f59adbe1d3a444459b0` |
| 248 | `theorem` | [map_isCycle_iff_of_injective](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-iscycle-iff-of-injective.md) | 1650 | `result-track:bb966095a2aaa2bd6de970e9da169eb5314326a3dcf52fecc594768b78987adc` |
| 249 | `theorem` | [map_injective_of_injective](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-injective-of-injective.md) | 1661 | `result-track:0ed99f581bd001cfefc1deef1b7c54dcfe8dfab0b122a799b883a0e423e74bc6` |
| 250 | `def` | [mapLe](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/maple.md) | 1682 | `declaration-track:c3d9b6b05fe1100f247a4341d4923658eb4e30db4c22e632dedfe26ea34be176` |
| 251 | `theorem` | [mapLe_isTrail](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/maple-istrail.md) | 1687 | `result-track:1c185ccf4de755048f9e2c7c8be95368245af620ad849e819dbc3989e098580f` |
| 252 | `theorem` | [mapLe_isPath](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/maple-ispath.md) | 1697 | `result-track:f5f1c6b9b81a997a3900ef6e8c0231f1b0af5d4bc8001117f389aa699fb940ec` |
| 253 | `theorem` | [mapLe_isCycle](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/maple-iscycle.md) | 1707 | `result-track:68f7d629b94d6ced225ead4d13bf9ca920b41d5874b2678011e4b69143e6c99a` |
| 254 | `def` | [map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map.md) | 1724 | `declaration-track:a4c61f8f07bbe4b3258cb81ea84921106f81469e8ae8ed181092756bf6e2219a` |
| 255 | `theorem` | [map_injective](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-injective.md) | 1729 | `result-track:2671db375795aa61b9dc9d6f47cc196497bfd3dd1339844d8bf2964049613ff0` |
| 256 | `def` | [mapEmbedding](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mapembedding.md) | 1738 | `declaration-track:150b61c9781ab7d3a16306b473afd51ad259ff1ee82f88136e2d69e3e003abfe` |
| 257 | `theorem` | [mapEmbedding_injective](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mapembedding-injective.md) | 1742 | `result-track:e75b6fac94e30800a8078daacbea39b9c61ed53d5aecb038e9c090f78518e1d2` |
| 258 | `def` | [transfer](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/transfer.md) | 1757 | `declaration-track:d6920d28ccb8ad709b3ac2a65384bb42eb2d2e2dcdec8e495cb20f0c0558a0da` |
| 259 | `theorem` | [transfer_self](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/transfer-self.md) | 1767 | `result-track:cb335bd05ead9bee2da0d9c339b618e0bc456cfed329f877c60e014612618d6c` |
| 260 | `theorem` | [transfer_eq_map_of_le](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/transfer-eq-map-of-le.md) | 1771 | `result-track:cf2d4134f8b65c0af600933875fc8d122576c624a3ccb62485dab876fb25c168` |
| 261 | `theorem` | [edges_transfer](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edges-transfer.md) | 1777 | `result-track:8432f7ecde20bddbdba64c5cc63b9792cac8fa4a674d0e8cf56b8a74637201db` |
| 262 | `theorem` | [support_transfer](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/support-transfer.md) | 1782 | `result-track:4ac445b351b61ba3db6925242358f6170d1e328a461f34871692eeab17dce08b` |
| 263 | `theorem` | [length_transfer](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/length-transfer.md) | 1787 | `result-track:b88c294a700382908d7f6bfc037c335886c764b60f654e1fe85cf0af7e712aff` |
| 264 | `theorem` | [IsPath.transfer](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-transfer.md) | 1793 | `result-track:15ad56dcce84536e766c7e145224dc2e6c1f1e32a7902183475cbe61e74e4c19` |
| 265 | `theorem` | [IsCycle.transfer](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscycle-transfer.md) | 1802 | `result-track:565c720af2b136834d34aad50dbe5b3fd84bc70777dfae9812e0cc8c79428d8e` |
| 266 | `theorem` | [transfer_transfer](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/transfer-transfer.md) | 1818 | `result-track:d00687c55b09b8a305ee47d0cdeec2fc94642c5d7104d4077b687f795ee242ff` |
| 267 | `theorem` | [transfer_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/transfer-append.md) | 1828 | `result-track:e614c68814dbac7837f907ba09af4633e209681b7b807aaf585519b0ed238cbb` |
| 268 | `theorem` | [reverse_transfer](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reverse-transfer.md) | 1838 | `result-track:266b903ecc9ad197448f9719631d5386153ccce965a82ac3fb0797d05def5116` |
| 269 | `def` | [toDeleteEdges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/todeleteedges.md) | 1858 | `declaration-track:ae9b400eb76ccbf39de2a09273cdd0f67afda4e459b9d68cfc9641cd8bfef259` |
| 270 | `theorem` | [toDeleteEdges_nil](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/todeleteedges-nil.md) | 1866 | `result-track:b5070d2a0eae8c45576f89dd6263ec61fe176d6fc743ed8e3c15b0bf948784ca` |
| 271 | `theorem` | [toDeleteEdges_cons](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/todeleteedges-cons.md) | 1871 | `result-track:8ec099ea5b6a64f652fb76fd09b475a57f8efcfe709b7a4fc4fbf07bb0106f24` |
| 272 | `abbrev` | [toDeleteEdge](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/todeleteedge.md) | 1880 | `declaration-track:94923f1d0d510577ec7e7608b051f578e4bf3fec98463ae2d2566317c7cf8b1e` |
| 273 | `theorem` | [map_toDeleteEdges_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-todeleteedges-eq.md) | 1886 | `result-track:25287b8212f2f17af22900ea745a2912e705d67ccd7b397275f88ab70a4b244b` |
| 274 | `theorem` | [IsPath.toDeleteEdges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ispath-todeleteedges.md) | 1894 | `result-track:570c2313b0f6fac23de1af18d0c03fe358795956414f3aa791dde76e74624ab8` |
| 275 | `theorem` | [IsCycle.toDeleteEdges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iscycle-todeleteedges.md) | 1899 | `result-track:396bfaed7864bdd7d3d8afc9e40066ee76c1e6a64a37000f6d107311ab588eec` |
| 276 | `theorem` | [toDeleteEdges_copy](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/todeleteedges-copy.md) | 1905 | `result-track:33b106c2215975adf57f80d0d02defd3910342e313a68cb4c47a0a99d5f8ecc0` |
| 277 | `def` | [Reachable](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable.md) | 1921 | `declaration-track:8316242f11a5dd642ac307e0d249dd2532621949bea6bd5e9abe8ee43b97cf13` |
| 278 | `theorem` | [reachable_iff_nonempty_univ](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-iff-nonempty-univ.md) | 1926 | `result-track:1ed661b9398ddc662311ab4c6a1bda3ec090155af051e9f48f06eb3033105259` |
| 279 | `theorem` | [Reachable.elim](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-elim.md) | 1931 | `result-track:ee41dd08d64dc91175a05a32136a68312be799df8c1cebc1233c366316bd13dd` |
| 280 | `theorem` | [Reachable.elim_path](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-elim-path.md) | 1936 | `result-track:d47a2d49c60b10ab1d36b8566d7f280441d319e74dc24df32b4ad43f92deb58e` |
| 281 | `theorem` | [Walk.reachable](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/walk-reachable.md) | 1940 | `result-track:079a2e965680f3bef81b5d2af54f4ed1de3fbe8b1c02286f558a29a16e39a201` |
| 282 | `theorem` | [Adj.reachable](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/adj-reachable.md) | 1944 | `result-track:4b48fb0fe5af09eff5fc7e29bc1e2e238888bcbd7cc282915ded79afebbf62fb` |
| 283 | `theorem` | [Reachable.refl](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-refl.md) | 1949 | `result-track:1a192ba7b71793fb8c32b28a768c8a4a50c5d67bda13e266da1b2ffb47eed5da` |
| 284 | `theorem` | [Reachable.rfl](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-rfl.md) | 1952 | `result-track:87936508e6054f6c648b499cc7f4a5bc92dc48629b446c00d89183b4d0febc07` |
| 285 | `theorem` | [Reachable.symm](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-symm.md) | 1956 | `result-track:d3f3d050ea86327d5bd37ff7b9905289410056e118cccdc9616250a26233bc84` |
| 286 | `theorem` | [reachable_comm](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-comm.md) | 1960 | `result-track:225b7c855b35c6aba05d9b7f3b597e19c8f23a1c8b5f1bf7b2dcb4477905c66c` |
| 287 | `theorem` | [Reachable.trans](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-trans.md) | 1965 | `result-track:c41c3b67d66f58bf75acb127add6aa9a4af24770ba9b196ab2da92df5a342d7a` |
| 288 | `theorem` | [reachable_iff_reflTransGen](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-iff-refltransgen.md) | 1970 | `result-track:1f3625e373fddabbdcab13844e21900c4b72e2b51adad2530a550d84cf88c65d` |
| 289 | `theorem` | [Reachable.map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-map.md) | 1983 | `result-track:db2515ab3a20fba92a427908ae9447a2413387ec5aad7b0ccb11fe9f16005443` |
| 290 | `lemma` | [Reachable.mono](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-mono.md) | 1989 | `result-track:215fd6692338a555278372b5b16917e07f7daa8f94ee13c0e27702d3806f32b7` |
| 291 | `theorem` | [Iso.reachable_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iso-reachable-iff.md) | 1992 | `result-track:7245398e30033deb80926581f210ab1919d8bc3e11c1a83fa3f60a8685f73546` |
| 292 | `theorem` | [Iso.symm_apply_reachable](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iso-symm-apply-reachable.md) | 1997 | `result-track:17078cfb4daa153e472800a291811950914af9c337a7d3a15a0bb12d61aa4de8` |
| 293 | `theorem` | [reachable_is_equivalence](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-is-equivalence.md) | 2004 | `result-track:ef9fea12052720e4a3a3b177ae354bbd9360037cc7704f91d6a8e539d15c572a` |
| 294 | `def` | [reachableSetoid](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachablesetoid.md) | 2009 | `declaration-track:f3712acdf2179392fe43cdddfeee317efe19c1e5d3b7833210c3fdf9f2bcf153` |
| 295 | `def` | [Preconnected](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/preconnected.md) | 2013 | `declaration-track:d14384439ea6fe03247db611ff87b56a49bc54388217a9a3fe0a8c7ffc28971c` |
| 296 | `theorem` | [Preconnected.map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/preconnected-map.md) | 2016 | `result-track:edb204ac0851165f819026e0aaddd60e73b79ca3f0ed303c1e869866e9bcc697` |
| 297 | `lemma` | [Preconnected.mono](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/preconnected-mono.md) | 2022 | `result-track:e17d2023032cbe2726eff231f1b5da0c45ee170d8ae1f0192330785f228cb4d1` |
| 298 | `lemma` | [top_preconnected](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/top-preconnected.md) | 2025 | `result-track:0701b37084fa066a2e17f2d5152ddaed2c8ac068c221fb4e89a5b08c595e21be` |
| 299 | `theorem` | [Iso.preconnected_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iso-preconnected-iff.md) | 2028 | `result-track:6c0e206970f257b7fd46366f37948f18172e27b020bfb5afe75eb8ca66345b0a` |
| 300 | `structure` | [Connected](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connected.md) | 2040 | `declaration-track:1047f998c80b00160ef54335ebe38e3be04f32bef9f70fde1aabd21ee999f007` |
| 301 | `lemma` | [connected_iff_exists_forall_reachable](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connected-iff-exists-forall-reachable.md) | 2045 | `result-track:2e0d3a167b1a246c72206fb41e3fc0f2c93b83ef59c4cfc12c364712ec430818` |
| 302 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/instance-source-edition-5.md) | 2053 | `declaration-track:d5b8a030a5202b15bcd868dac630653909231af487daeb34f0fed9a34b8546a3` |
| 303 | `theorem` | [Connected.map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connected-map.md) | 2055 | `result-track:80965f89deab810929a17409be5b6566136af2ae2529d67ed42c29a354dabe6b` |
| 304 | `lemma` | [Connected.mono](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connected-mono.md) | 2062 | `result-track:4b45da48f316d9e421a0290a357dd0ed250d9dde03fce12a5edac0669a96b166` |
| 305 | `lemma` | [top_connected](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/top-connected.md) | 2067 | `result-track:aafeafa6d3478f63e81025f191020a41beafdb55150496f6edfc33bca8932e5f` |
| 306 | `theorem` | [Iso.connected_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iso-connected-iff.md) | 2070 | `result-track:a3a34515c01f3fe2f7c3a957a00da800244ea336de7c9b1a6025f51f330b1326` |
| 307 | `def` | [ConnectedComponent](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connectedcomponent.md) | 2077 | `declaration-track:ab2f914c22f6bb3b16731b2bc04b698e797b76fb071cb44efd25f058d3ad012f` |
| 308 | `def` | [connectedComponentMk](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connectedcomponentmk.md) | 2081 | `declaration-track:549dded06412e94ae9cfea064933160d6b3bd9d208fbc47e92f7a604624def72` |
| 309 | `instance` | [inhabited](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/inhabited.md) | 2089 | `declaration-track:76839960252c35e36a8910b8b19270e174f2a35a72f68886fa63723fdf4f6ed3` |
| 310 | `theorem` | [ind](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ind.md) | 2094 | `result-track:d6a79ae74c6150419096faf4db07e4a0423aa376562c98cc9229db064e06a065` |
| 311 | `theorem` | [ind₂](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/ind-source-edition-2.md) | 2100 | `result-track:e9b78fc66fe2794483443dcb7fd404ac5117149be95590e315f2bc2e2af9f544` |
| 312 | `theorem` | [sound](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/sound.md) | 2106 | `result-track:d961fdf3b8dd6a2680509766dc04ed472cfb9f685ed224f3163c01abbeef8d5f` |
| 313 | `theorem` | [exact](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/exact.md) | 2111 | `result-track:ac32397957404d882f9660506436d288f6c8624e98a987eae07a7563508c2d6e` |
| 314 | `theorem` | [eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/eq.md) | 2117 | `result-track:dae4274b558f68485f6488f1014059576457e5b959b2a8c14f9b5e6999a922a2` |
| 315 | `theorem` | [connectedComponentMk_eq_of_adj](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connectedcomponentmk-eq-of-adj.md) | 2122 | `result-track:b41e7689f2a9267172b1dceef1a506119fd55bb23bbdff0778e7e45b30131e87` |
| 316 | `def` | [lift](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/lift.md) | 2129 | `declaration-track:5d0ff4f615066aae7da2446205bd7dfb9d19869df6d893f6adfbbddcbd20c5e6` |
| 317 | `theorem` | [lift_mk](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/lift-mk.md) | 2135 | `result-track:d755b30165b0b2b9b899f66cb98591e31cd096e5f4046f7a83c8836bb5957adf` |
| 318 | `theorem` | [«exists»](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/exists.md) | 2141 | `result-track:ead44126a27ac90bff5aa7fc81ad370cd07a2f00debe7826a350cc1f3bdba7ae` |
| 319 | `theorem` | [«forall»](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/forall.md) | 2146 | `result-track:068f466f31d3925879adb764a57923738ac78430ffe7d93802462f7f76977c34` |
| 320 | `theorem` | [_root_.SimpleGraph.Preconnected.subsingleton_connectedComponent](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/root-simplegraph-preconnected-subsingleton-connectedcomponent.md) | 2151 | `result-track:ec95f03562486007e5c16a642bf336869507fa1ee2aa83a373069e1fb5a7dca5` |
| 321 | `def` | [map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-source-edition-3.md) | 2157 | `declaration-track:e611c5a99cfe626c31f6d70304137b0e30b3e7b1d4728a9124bca4b78f8bcbf2` |
| 322 | `theorem` | [map_mk](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-mk.md) | 2163 | `result-track:fb9c6320635863017d055698925ebf6ec1296c5f032fda80a360a2fe6a85a4de` |
| 323 | `theorem` | [map_id](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-id-source-edition-2.md) | 2169 | `result-track:834ea9a6b519f8c43ae9a73a4cda85cf98cf0410b7954fe9a6566d2844b3863f` |
| 324 | `theorem` | [map_comp](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/map-comp.md) | 2175 | `result-track:ee2fad1989be11b55841447c78374873755bbb0f648ea1cad60dcde70c8be929` |
| 325 | `theorem` | [iso_image_comp_eq_map_iff_eq_comp](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iso-image-comp-eq-map-iff-eq-comp.md) | 2184 | `result-track:2097c1cfc984f742a9c466c18db6251bff3cad124ed0899e52a08135e6280c85` |
| 326 | `theorem` | [iso_inv_image_comp_eq_iff_eq_map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/iso-inv-image-comp-eq-iff-eq-map.md) | 2192 | `result-track:6933b095b9ce541a918aeb38b644f2176266bb92eab2bce3c6dc8e43721eb4e2` |
| 327 | `def` | [connectedComponentEquiv](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connectedcomponentequiv.md) | 2205 | `declaration-track:c405f0293205a2d8de08b8a9a07e782301e3284b6aaa2659b00e2dde80e5f65c` |
| 328 | `theorem` | [connectedComponentEquiv_refl](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connectedcomponentequiv-refl.md) | 2215 | `result-track:3a23ddd9114869525c98c52956a45aece6994f53300b4c987e54fae6f8c3c691` |
| 329 | `theorem` | [connectedComponentEquiv_symm](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connectedcomponentequiv-symm.md) | 2222 | `result-track:f44d490f0b89f0d997ea51551f57ce859557a0c6525e8f9f462e1bab821ae66c` |
| 330 | `theorem` | [connectedComponentEquiv_trans](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connectedcomponentequiv-trans.md) | 2229 | `result-track:bc335d85b66849ca8d90b992b262c41ff27362933caaa61d6ccec5bbb56d7fd6` |
| 331 | `def` | [supp](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/supp.md) | 2241 | `declaration-track:bdd0b5d60ce167ba8d23097417ea6dd258a2c7af07d5120df4e947633ec756d6` |
| 332 | `theorem` | [supp_injective](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/supp-injective.md) | 2246 | `result-track:7cf33ae4388a9388a0c1a2f5fa0deed62f9e5e17fa4b9bee5bff27174147f0ee` |
| 333 | `theorem` | [supp_inj](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/supp-inj.md) | 2256 | `result-track:ca2047376b19707ede5d37c1b42ef07cf18b7ba4b4d1cd914cc9e028a0b43949` |
| 334 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/instance-source-edition-4.md) | 2260 | `declaration-track:c6b014b59d27cfd23cc5bf189f06754006a3ff6ab5ea9e00bc8b4c1881c35ce2` |
| 335 | `theorem` | [mem_supp_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mem-supp-iff.md) | 2265 | `result-track:a5e69e503aea24fc37cb9526972486aa64bfe83976c7dccdfb6bb856a8c60e79` |
| 336 | `theorem` | [connectedComponentMk_mem](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connectedcomponentmk-mem.md) | 2270 | `result-track:23c352df2958cceba2b6103fc5db40043747778d0bf75150f1113a32c77e5740` |
| 337 | `def` | [isoEquivSupp](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/isoequivsupp.md) | 2277 | `declaration-track:24b16d8066002952f116d93828e5b2e2e45d1fabec1ae93637ba14ec511926f9` |
| 338 | `theorem` | [Preconnected.set_univ_walk_nonempty](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/preconnected-set-univ-walk-nonempty.md) | 2287 | `result-track:e9a7812d853dd7981dce760c958ed0169397781c5b312e48a438b89b8770e3fa` |
| 339 | `theorem` | [Connected.set_univ_walk_nonempty](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/connected-set-univ-walk-nonempty.md) | 2293 | `result-track:ed9fb81fff950300d6e71c18f4f0b6fa7d9a135d770d0eb6bffa1993358441d3` |
| 340 | `def` | [toSubgraph](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/tosubgraph.md) | 2307 | `declaration-track:a232bbd8611f9677e8d0606b2e3f99cd2c9e9cb22769c341e2596e863e2c7280` |
| 341 | `theorem` | [toSubgraph_cons_nil_eq_subgraphOfAdj](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/tosubgraph-cons-nil-eq-subgraphofadj.md) | 2312 | `result-track:77ece63c96bfde2245b39daffcad7f1aa3d53654248042f20b2450af1e42eb99` |
| 342 | `theorem` | [mem_verts_toSubgraph](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mem-verts-tosubgraph.md) | 2316 | `result-track:67e47ce0132bca849068e5b7748da1e5085293f247e0d307a040a6ec97a4776c` |
| 343 | `lemma` | [start_mem_verts_toSubgraph](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/start-mem-verts-tosubgraph.md) | 2324 | `result-track:bef3d0ccc52aa60b3840317da181c6d701aa43ed49ef83d3fb1723985f62e0cb` |
| 344 | `lemma` | [end_mem_verts_toSubgraph](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/end-mem-verts-tosubgraph.md) | 2327 | `result-track:14d42fc6f508149782777d83e0487212f9b5c751852b3f6053b4fb192b7714d8` |
| 345 | `theorem` | [verts_toSubgraph](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/verts-tosubgraph.md) | 2331 | `result-track:c1eebd12e1a776004c226238122535b2a83b4566daedbdc872ebbfa469a3e4d6` |
| 346 | `theorem` | [mem_edges_toSubgraph](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/mem-edges-tosubgraph.md) | 2335 | `result-track:1d8cb589898a3a8f402b5eed59bc9be093842b0e13ffc58fc7ed74d7b60972ab` |
| 347 | `theorem` | [edgeSet_toSubgraph](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/edgeset-tosubgraph.md) | 2340 | `result-track:a10d63d0caf740eb9688e4ede37d631b960c85de734afb6a5ddcee92511dcbe0` |
| 348 | `theorem` | [toSubgraph_append](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/tosubgraph-append.md) | 2345 | `result-track:fd8ae3f2a6d5dbadfbfe2e0770bf7b57df3f402598dcd8e877fd1dfe6b397cc8` |
| 349 | `theorem` | [toSubgraph_reverse](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/tosubgraph-reverse.md) | 2350 | `result-track:759c1042a6c4ecda4f70fc018e1ac325aaa55bdf30001b42b8c1cf6152bf068a` |
| 350 | `theorem` | [toSubgraph_rotate](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/tosubgraph-rotate.md) | 2361 | `result-track:4af566fa2108655c1cba95b872c0791a37688b42abfe319d184e44a94ad0bb8e` |
| 351 | `theorem` | [toSubgraph_map](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/tosubgraph-map.md) | 2367 | `result-track:a3a555a2bd8a63ebbd2684da30caa1cbd54327295422e5630f330a86bdd712b8` |
| 352 | `theorem` | [finite_neighborSet_toSubgraph](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/finite-neighborset-tosubgraph.md) | 2372 | `result-track:e5301b9bdf4046e37f3071ca413b3a58de56da7938452a93523d0e33cda3e6c0` |
| 353 | `lemma` | [toSubgraph_le_induce_support](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/tosubgraph-le-induce-support.md) | 2384 | `result-track:6a33347ffb1ddbd3e07ff3fb2c2fa36b7aa5fdcd87c0e2c47e7ec99c17e47e9e` |
| 354 | `theorem` | [set_walk_self_length_zero_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/set-walk-self-length-zero-eq.md) | 2396 | `result-track:206281df323d4af471513e85e2a0a56d9cd3b2bc688481e8d08b326b07c833fd` |
| 355 | `theorem` | [set_walk_length_zero_eq_of_ne](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/set-walk-length-zero-eq-of-ne.md) | 2401 | `result-track:59956564d1749d39a8f6c7d0f9a7b7af42cb1217391fa142580f46ec1b54bd55` |
| 356 | `theorem` | [set_walk_length_succ_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/set-walk-length-succ-eq.md) | 2408 | `result-track:6f6b02e49967af3f3dcc7b64bce6ef9a80d1aa9aa9aa67df6ddd02ac0d01dea7` |
| 357 | `def` | [walkLengthTwoEquivCommonNeighbors](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/walklengthtwoequivcommonneighbors.md) | 2428 | `declaration-track:db4ec060fd4cf7f49000af07d332539967b0337ac25fd5dd382c5bed7929b8cc` |
| 358 | `def` | [finsetWalkLength](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/finsetwalklength.md) | 2446 | `declaration-track:eb65888f03e31dba16b681372097d8e2c464427d6b3c69e80e45ef34e1bd2a34` |
| 359 | `theorem` | [coe_finsetWalkLength_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/coe-finsetwalklength-eq.md) | 2458 | `result-track:5da8b79a30ddfb91cfb94a40d0d21db914be72af96d489b90182e47ea46c373e` |
| 360 | `theorem` | [Walk.mem_finsetWalkLength_iff_length_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/walk-mem-finsetwalklength-iff-length-eq.md) | 2476 | `result-track:d05d88af20d89e3cd7572dde12b8cfda808e36af77f4ba148f88d1021bc79517` |
| 361 | `instance` | [fintypeSetWalkLength](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/fintypesetwalklength.md) | 2483 | `declaration-track:cfee6909dc8994bd6bb4da96f29af0e6c6267c40d9462b9527b65fc5fac60884` |
| 362 | `instance` | [fintypeSubtypeWalkLength](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/fintypesubtypewalklength.md) | 2488 | `declaration-track:d03bd0fbda124d8117aa9bbd3ae95c4b986cbbe2eaafe127b9b3b43d51cff2f7` |
| 363 | `theorem` | [set_walk_length_toFinset_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/set-walk-length-tofinset-eq.md) | 2491 | `result-track:108b1641a8bd6cf762fc361fcdb1659e0cbf81009e41656dfe731d3b0c61ea3e` |
| 364 | `theorem` | [card_set_walk_length_eq](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/card-set-walk-length-eq.md) | 2499 | `result-track:1cef2ed943e8b06615870b85ec422f3d9c0b4af48471eb3ed9f0b44fa9910636` |
| 365 | `instance` | [fintypeSetPathLength](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/fintypesetpathlength.md) | 2505 | `declaration-track:ca67b1c16f8e009eccb0aa970c78cb2ca062390a53951f3ccf8c84980e4f1fdd` |
| 366 | `theorem` | [reachable_iff_exists_finsetWalkLength_nonempty](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-iff-exists-finsetwalklength-nonempty.md) | 2517 | `result-track:8b7b22b1c61c6da958d436b773a95c4b3b9af00056221fdc655b03369c0d96fe` |
| 367 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/instance-source-edition-6.md) | 2528 | `declaration-track:de9872299f18d04cb890f2458d26463f8f03d9049f551980b0528d4069b7edfc` |
| 368 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/instance-source-edition-3.md) | 2531 | `declaration-track:b26ea30460f8ca25ca95f9e5f10a1208c6941598e91fc1bf86e86ef1a2b74955` |
| 369 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/instance.md) | 2534 | `declaration-track:6a22993ac9b92918cee76a7cfe2e7d47e6529fb4b9ce75cb282c9957d7e83c43` |
| 370 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/instance-source-edition-2.md) | 2537 | `declaration-track:ac1d8a62bb6f127ccc44f14d33e1440a3850b3c446fa7ab09bf4df4071f5302c` |
| 371 | `def` | [IsBridge](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/isbridge.md) | 2552 | `declaration-track:69c1b88c1616c808f4797f6690872eab15374b4bf583245f9e03cca4861f5691` |
| 372 | `theorem` | [isBridge_iff](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/isbridge-iff.md) | 2557 | `result-track:54af16a477ff4cc19b98f717c75a64ab788d9f1d96e93d74c03ccbaf6715a7e4` |
| 373 | `theorem` | [reachable_delete_edges_iff_exists_walk](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-delete-edges-iff-exists-walk.md) | 2561 | `result-track:943d2b76e007d6a1659ae8ea49c603048a180e8c966cb47341cbe0ab70ddc97a` |
| 374 | `theorem` | [isBridge_iff_adj_and_forall_walk_mem_edges](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/isbridge-iff-adj-and-forall-walk-mem-edges.md) | 2576 | `result-track:c7c22499bd6d8ff753595b57980d273126b07206d8e78baec66f72db47bc91a5` |
| 375 | `theorem` | [reachable_deleteEdges_iff_exists_cycle.aux](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/reachable-deleteedges-iff-exists-cycle-aux.md) | 2582 | `result-track:286b10a98fcd9c52fe496bf99631c1a84efa7aadb9597b2a409d1955902706ed` |
| 376 | `theorem` | [adj_and_reachable_delete_edges_iff_exists_cycle](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/adj-and-reachable-delete-edges-iff-exists-cycle.md) | 2610 | `result-track:6aa067a6dd410aa761adf71b8ec2ad9df5cabaa9cc2048443b54a0adca3d7a38` |
| 377 | `theorem` | [isBridge_iff_adj_and_forall_cycle_not_mem](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/isbridge-iff-adj-and-forall-cycle-not-mem.md) | 2635 | `result-track:a5160790413ee5761febf4cff9cdb52c67f0cc88b33c28d65ee90c562b46a297` |
| 378 | `theorem` | [isBridge_iff_mem_and_forall_cycle_not_mem](../../../../../Combinatorics/GraphTheory/Connectivity.lean/declarations/isbridge-iff-mem-and-forall-cycle-not-mem.md) | 2645 | `result-track:8ab40c6b5e07231e248bab80b5ad96ce75851bfbcc3cacdf40371081e507fe42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdaa902a825e78eb5f7c5fdcfdbbfc7aaeb2aed94a243c4734ef2c6721c5ca67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant841500b5a2419f4d002cfd95e1bc7aec5398b54697be7767cb38f655d6182846.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
