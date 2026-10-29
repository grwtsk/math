# Verification target: Vec Notation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77368d1dc1f65793e83c909101a18bceead9f449",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77368d1dc1f65793e83c909101a18bceead9f449`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecempty.md) | 61 | `declaration-track:63b67baad2231e659dbbfd22a394a6f8127e2dc1032890f603b5e6f607d33ecd` |
| 2 | `def` | [vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/veccons.md) | 69 | `declaration-track:d3490547c948e3ac54727217a2ae5df2d8e51350b83991c558e93d7e44685925` |
| 3 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/syntax.md) | 80 | `declaration-track:d0783a4498079147c9369bdd2f01705cad9130d5e92ca5a58b76c04e52e60c56` |
| 4 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/macro-rules.md) | 82 | `declaration-track:25d76bbcfc10ae881fbf0076e8913da8b08aeb860b6c5e347d05471f1511e12e` |
| 5 | `def` | [vecConsUnexpander](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecconsunexpander.md) | 89 | `declaration-track:6a3bc345e2175f9da720aa644fe3aefe35d32ff9573b0602e30455957e2e2af0` |
| 6 | `def` | [vecEmptyUnexpander](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecemptyunexpander.md) | 97 | `declaration-track:43ec9108a8dea85f70aeb1446140821d3d888a0a08794f7491347c1a875cf2d8` |
| 7 | `def` | [vecHead](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vechead.md) | 102 | `declaration-track:02d0fd87638af34069086dc46787a1563829adda555c5d991325b71b9b9fc671` |
| 8 | `def` | [vecTail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vectail.md) | 106 | `declaration-track:65b587eb3647d8a5cfe16c3df1a2454e24f71561f746eccc7138205f8bfe5791` |
| 9 | `instance` | [Vec Notation Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/hasrepr.md) | 117 | `declaration-track:5d6079f4ad51029ade15d66b4c7ea427197610a5b257035b847c6fcd8282ad3d` |
| 10 | `theorem` | [empty_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/empty-eq.md) | 126 | `result-track:4cccb43b0c43663dd9f289e3f865b71fdeb8f9f88f731bbd86188f2e7f21bd24` |
| 11 | `theorem` | [head_fin_const](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/head-fin-const.md) | 132 | `result-track:5944c8a59de3e4591f6b24ad98e23ea445099655e11e6c5f6c3925f6480be003` |
| 12 | `theorem` | [cons_val_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-val-zero-source-edition-2.md) | 136 | `result-track:cc3d11209a6e7e9daed25a3c4aafdfa263c8699ff12f6406c39964a6d2be2336` |
| 13 | `theorem` | [cons_val_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-val-zero.md) | 139 | `result-track:a9bb2e2ebb1f5f0a32ff6eab8004a012665a8523ca169bd7ccf5722eea7f6423` |
| 14 | `theorem` | [cons_val_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-val-succ-source-edition-2.md) | 143 | `result-track:b509a1823ef5deff38a686af0213dbc8fa2c3c42f4a23840957b6c6cd3034b14` |
| 15 | `theorem` | [cons_val_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-val-succ.md) | 147 | `result-track:5949a3296903c9bb3afe4c204637183c64b7e4842d79c5e742b81053faae88b7` |
| 16 | `lemma` | [Fin.cons_vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/fin-cons-vecempty.md) | 155 | `result-track:a7f3f21ec28bdc3e0a11694f7f5cad6fd07948bcad167ef94b56fe7e22f63284` |
| 17 | `lemma` | [Fin.snoc_vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/fin-snoc-vecempty.md) | 159 | `result-track:c7917764c94fc5e047d49e5c67180c54bd0498ae5dc1b9fbe2dd7c24eb8fbafa` |
| 18 | `lemma` | [Fin.cons_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/fin-cons-veccons.md) | 169 | `result-track:818269d0b3182a5bcdc064f4d606c51b1f5f5c25e62f49215df175902700f0a3` |
| 19 | `lemma` | [Fin.snoc_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/fin-snoc-veccons.md) | 175 | `result-track:aa5fc98890d97dd91b4b8876e09418f5267ae8f2a676463ed38175014a30646b` |
| 20 | `def` | [matchVecConsPrefix](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/matchvecconsprefix.md) | 186 | `declaration-track:5af2cce0bad4de9965e304def8e70484847fa638ba6e279136ff22816a24cb4b` |
| 21 | `theorem` | [head_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/head-cons.md) | 232 | `result-track:1979a65ffd793c6f6b50aeac0e991dbf7237b1b87f70e05fac9a7c8923ab0336` |
| 22 | `theorem` | [tail_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/tail-cons.md) | 236 | `result-track:7172b92620f87004574bc9bf70b27ec5a3321fc896a6b617a44aacb78f44e98d` |
| 23 | `theorem` | [Vec Notation Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/tail-veccons.md) | 241 | `result-track:739fa295c29cbdb18eb2d586cd592d651d01d6dc5cec5b89bcc7540ae504e677` |
| 24 | `theorem` | [empty_val'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/empty-val.md) | 244 | `result-track:5dca92ef7d2db27d7e3b92c7659ce6e70db72eb4480f19b9885040fb8c21eb3a` |
| 25 | `theorem` | [cons_head_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-head-tail.md) | 248 | `result-track:c0ef26b4273a85cadba9db94ebf4193843dc9e7f806205857f059b5b0327bc47` |
| 26 | `theorem` | [range_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/range-cons.md) | 252 | `result-track:639148767f6c126df1a90722acdc4bdb024c4a34053b4bca126f2cb5bb84fd99` |
| 27 | `theorem` | [range_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/range-empty.md) | 256 | `result-track:7a81364ed8d736cb94444a689b2feb16f5399b2f3448b3920d2fa0ff64032575` |
| 28 | `theorem` | [range_cons_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/range-cons-empty.md) | 259 | `result-track:e75a9d6d7acef7f5609b6fdd3c218894919ca9e99cbbdfa7598f540061f1b611` |
| 29 | `theorem` | [range_cons_cons_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/range-cons-cons-empty.md) | 263 | `result-track:833fd3055e41102d1e912e9542d1ee649a250f15d5564c94284251806e793bda` |
| 30 | `theorem` | [vecCons_const](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/veccons-const.md) | 267 | `result-track:a9b688ea4ae9e466c41af4238f92750aa6d970b75e6d0d55081765839fec1507` |
| 31 | `theorem` | [vec_single_eq_const](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vec-single-eq-const.md) | 270 | `result-track:5b1b6c00d7b957d9f63e7d0a6074ab3ded1008ca2e1adb624fb64678bb361618` |
| 32 | `theorem` | [cons_val_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-val-one.md) | 279 | `result-track:0177a3b6ae47112f693b4627491109c0f36107994477a21a6c797e2dbb0f2cc7` |
| 33 | `theorem` | [cons_val_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-val-two.md) | 282 | `result-track:6771251f9765784cadebb6374d1ea0234f73f29a7415ea9a5d63f2461b26049b` |
| 34 | `lemma` | [cons_val_three](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-val-three.md) | 284 | `result-track:f7f007ab0b3a1834a4b969f597f4da620b90c0dca691c9bbd65179d311d4d690` |
| 35 | `lemma` | [cons_val_four](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-val-four.md) | 288 | `result-track:9debe7b17219ece8c898bb0af7bb2130463dd0a717bdb1d7aa6f75174a83bec4` |
| 36 | `theorem` | [cons_val_fin_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-val-fin-one.md) | 293 | `result-track:da7ce935447fd4921f019637b21918af5848b56ebf7191f7753e44f5ce75c6c4` |
| 37 | `theorem` | [cons_fin_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-fin-one.md) | 297 | `result-track:39dbbc64e9aa0c929e934f404710698104dee89ad7683fd4f309c7344fdca7a2` |
| 38 | `theorem` | [vecCons_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/veccons-inj.md) | 301 | `result-track:ce64032810380e3baf547e5083610954fcd3d21dbff49b70880ec75620331771` |
| 39 | `def` | [Vec Notation Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/mkliteralq.md) | 306 | `declaration-track:9807c4684f7006a4e21788ce20e1bec7a1395582771cc8c62e2c30f8ecddb5dc` |
| 40 | `instance` | [Vec Notation Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/toexpr.md) | 321 | `declaration-track:32e32b38b5fd1fcb03d8997d52050d74c7f794214541d3b93b3222adb6c694d5` |
| 41 | `def` | [vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecappend.md) | 344 | `declaration-track:d3a24c6d58d7d03dc924e4452a37571799d84e6a1aabb6434b468c1850e5638d` |
| 42 | `theorem` | [vecAppend_eq_ite](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecappend-eq-ite.md) | 347 | `result-track:4f24ac780855fdabac7a8385cc8d1153acbcba41392a138aee57cbbb8908894a` |
| 43 | `theorem` | [vecAppend_apply_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecappend-apply-zero.md) | 357 | `result-track:08e586c1878af91df49eb34d92b98753dc49b5e3d048d05c6fe422d8ef83c6f1` |
| 44 | `theorem` | [empty_vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/empty-vecappend.md) | 362 | `result-track:0af86b3a7897cbee392d92ee719e1fa5727600b84b401ebccaef26342e3ed028` |
| 45 | `theorem` | [vecAppend_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecappend-empty.md) | 367 | `result-track:3a68f2b1e6ca8ceae5a4ae553093a531bd680980e3d1a8eee795259fa6ead755` |
| 46 | `theorem` | [cons_vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-vecappend.md) | 372 | `result-track:d190933e03ab73f174809132b9c5e63b63dbaae6a489466e60ecf11bf8935065` |
| 47 | `def` | [vecAlt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecalt0.md) | 388 | `declaration-track:9a6cf4aa157f8aa27acb713a5a7e3f5f432789f701e160991d0f985e845a9106` |
| 48 | `def` | [vecAlt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecalt1.md) | 392 | `declaration-track:255fd87627c3e6344ba14e677187381bd638ea0f2b156dba5405a69e7e573a92` |
| 49 | `theorem` | [vecAlt0_vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecalt0-vecappend.md) | 397 | `result-track:364d18666d5ae54b57a32846cc439606ff9ac85ed9d7afa69c92d4d5f4088484` |
| 50 | `theorem` | [vecAlt1_vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vecalt1-vecappend.md) | 409 | `result-track:387f1e4e146dfb35731f15ef6000fd4d907302e50ce280a205a891d95a9a139b` |
| 51 | `theorem` | [vecHead_vecAlt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vechead-vecalt0.md) | 427 | `result-track:594ff6aada32abe7eae4b7afefc9183d979900c66222544299cc86642c12e73f` |
| 52 | `theorem` | [vecHead_vecAlt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/vechead-vecalt1.md) | 432 | `result-track:d8ec0155122cbfe89526d1564a1e0da10f186f2f4d37a486d0b7d108232e1e3d` |
| 53 | `theorem` | [cons_vec_bit0_eq_alt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-vec-bit0-eq-alt0.md) | 435 | `result-track:a0bc72ea51bb69edf9bb8461f458e3d1218958ffeaccd1181acacb5d544db83a` |
| 54 | `theorem` | [cons_vec_bit1_eq_alt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-vec-bit1-eq-alt1.md) | 439 | `result-track:c0e4dd3592eb2fa2bf65fd2c6f8950abebe46622d16008ebd0c520ff2e71238d` |
| 55 | `theorem` | [cons_vecAlt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-vecalt0.md) | 446 | `result-track:8ab988112b2504a65d5dce15fec9d92118a7a9348fc371cad9b1ee3a669ce7d4` |
| 56 | `theorem` | [empty_vecAlt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/empty-vecalt0.md) | 456 | `result-track:7e200f319d3c70491a629437d5a3c46ddc32ea21466d5469cb00499e49cdc7b9` |
| 57 | `theorem` | [cons_vecAlt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-vecalt1.md) | 460 | `result-track:4a63201f0038da88c11ed6bc5f370ce129bb0a364064dff6902df4c1be858667` |
| 58 | `theorem` | [empty_vecAlt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/empty-vecalt1.md) | 469 | `result-track:b19815b20c48917faffc2dfcc891054868cdf266ff6ca98984475d12655b971f` |
| 59 | `lemma` | [const_fin1_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/const-fin1-eq.md) | 474 | `result-track:564f56fe122a3c0cffb1ab4ead5730a8b1e5d43e82e2415dd3919ddc3e25214c` |
| 60 | `lemma` | [cons_cons_comp_swap_zero_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-cons-comp-swap-zero-one.md) | 484 | `result-track:f68c2f7a587d487d515251e1c3bc01585ad6cbe9c0bb11c0fb57f29220213277` |
| 61 | `lemma` | [cons_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/declarations/cons-swap.md) | 495 | `result-track:afd4e2d23e48fc8bf1c347786affb6fcb23fd0aeaed5d4b7cbf8b9acbdeea32f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f06e2a19fa24eeab1aee36e8c056c2a73308b966f624cb989cd8151a5b72c04b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
