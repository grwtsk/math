# Verification target: Empty Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1e7a68d203de4b8c16499702656c1994a1abf38",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Empty/Variant151c5dadc3aa2efa46451a708e329b2b3766cb89fc83df66984fb690850f6840.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1e7a68d203de4b8c16499702656c1994a1abf38`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Empty/Variant151c5dadc3aa2efa46451a708e329b2b3766cb89fc83df66984fb690850f6840.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Empty/Variant151c5dadc3aa2efa46451a708e329b2b3766cb89fc83df66984fb690850f6840.lean.json)

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
| 1 | `def` | [Nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty.md) | 55 | `declaration-track:00ab49fca67261370fe9fcb3d7cfc475c77b27d6b532bbe2f0335845731affc0` |
| 2 | `theorem` | [nonempty_def](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-def.md) | 58 | `result-track:741f9c19bf06fe019466e35ae55c3c365289f67c13f1f6d8bdb8976134406047` |
| 3 | `instance` | [decidableNonempty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/decidablenonempty.md) | 60 | `declaration-track:d467ae1dbc0ce391b1c8f25844f00aeef13d57d0b879f1e4d7d5b17a7a8811c2` |
| 4 | `theorem` | [coe_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/coe-nonempty.md) | 64 | `result-track:fe1a91bb75fd145d634694f1534f9360953488bd14a3ac9a0d6aa9f9867114c5` |
| 5 | `theorem` | [nonempty_coe_sort](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-coe-sort.md) | 68 | `result-track:b700fe5c929933905ebde5282c2c8b71177e5df24ccdf06eb40f67307c9c105a` |
| 6 | `theorem` | [Nonempty.exists_mem](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-exists-mem.md) | 75 | `result-track:6e7cbf2e04e527d4fcf412cd36d1ce2d6b8913f18294afa18e129085420ce7b0` |
| 7 | `theorem` | [Nonempty.mono](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-mono.md) | 78 | `result-track:1be12060756641bb163d3cd761e0f7492e095099556401eea6f7048175d2874a` |
| 8 | `theorem` | [Nonempty.forall_const](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-forall-const.md) | 81 | `result-track:e93b3c9731fd60470de33a8ebbfdd37f465d09519b06ec785236b7326bff0945` |
| 9 | `theorem` | [forall_mem_const](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/forall-mem-const.md) | 86 | `result-track:06113b8fe7da295101e9c12a5c209873ae5e239d89aac91f4f62d72409838d2b` |
| 10 | `theorem` | [Nonempty.to_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-to-subtype.md) | 89 | `result-track:48feb705f5be2ac89bd15c81c47ea3188f0497309d57c02a6ff698e6c49115f0` |
| 11 | `theorem` | [Nonempty.to_type](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-to-type.md) | 92 | `result-track:5ab84bd750506b167862396fad9293781ae88594d19ffc5b0ad8ebaf65ea76fc` |
| 12 | `def` | [empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/empty.md) | 102 | `declaration-track:4dfc423efb4fb8755eafc70e160b40db5e92b64d2057ece4c0bb899f9c2fd583` |
| 13 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 105 | `declaration-track:df965b5732e02cc77dc91913ba4c34b5cc1f808942886b1f9d6aaa7fe9135453` |
| 14 | `instance` | [inhabitedFinset](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/inhabitedfinset.md) | 108 | `declaration-track:a46fd22ae3d84a75b1f999aff71d0f078f7cdb34b8921eafe884bc605fd9643d` |
| 15 | `theorem` | [empty_val](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/empty-val.md) | 112 | `result-track:c4ab0fbceac7f580a77b6621dee2678b470c1d41f9bac2ee23fe0d5871ca244b` |
| 16 | `theorem` | [notMem_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/notmem-empty.md) | 116 | `result-track:035d74b53f5c4f114ac2bd71fc74de54bfbf15373ab55641f584525819af0c94` |
| 17 | `theorem` | [not_nonempty_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/not-nonempty-empty.md) | 120 | `result-track:6f8381e8e18aaecab6afe5c0589e34335b89887a456be1d520870b3cb865f671` |
| 18 | `theorem` | [mk_zero](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/mk-zero.md) | 123 | `result-track:e9c729ec949026a4d372ae03a1814c2860d1f732b527736e7e717b3c967d1380` |
| 19 | `theorem` | [ne_empty_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/ne-empty-of-mem.md) | 126 | `result-track:0606aa478d000d1ce5f907490730e528934b2281f430498d7fd7515daa15e097` |
| 20 | `theorem` | [Nonempty.ne_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-ne-empty.md) | 129 | `result-track:c9024a2dedbbc73dbb2cfb3b7fc51bb5ad1d37de75b0d4929d294001471ce57d` |
| 21 | `theorem` | [empty_subset](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/empty-subset.md) | 133 | `result-track:76c2828846050038bec7797f9496ae2f1d5bbb05c2f17870ef1c8e4ae652ff7c` |
| 22 | `theorem` | [eq_empty_of_forall_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/eq-empty-of-forall-notmem.md) | 136 | `result-track:5cb69df1a5ad44e3819227d28561e4afd8cf73f9eebdbfdc4852f2ef7f0d7125` |
| 23 | `theorem` | [eq_empty_iff_forall_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/eq-empty-iff-forall-notmem.md) | 139 | `result-track:c3205fb0693ed62357f90860b5df98e9c3e80d89b7acb7e544c1e14571ba0cf0` |
| 24 | `theorem` | [val_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/val-eq-zero.md) | 142 | `result-track:0f22123a52f3bac7dc69c5e59cc4e21db752a26f0ddd7dfab9a35a36cdf307e1` |
| 25 | `lemma` | [subset_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/subset-empty.md) | 145 | `result-track:c34efeffcea89ff23e817f66938cd0311c0c5c0b134c7401e9f8f42e89180379` |
| 26 | `theorem` | [not_ssubset_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/not-ssubset-empty.md) | 148 | `result-track:075288b675710c88f340c7ae0a84e533825c5974b90f22ac5b2499464c37c420` |
| 27 | `theorem` | [nonempty_of_ne_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-of-ne-empty.md) | 150 | `result-track:2a64675584e00ea7077deebf329cb0298a6c131914520ffab87e193ff89293a8` |
| 28 | `theorem` | [nonempty_iff_ne_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/nonempty-iff-ne-empty.md) | 154 | `result-track:11bb9edc49e198f0b5ccfbd803a12e026496bdfc8623a68befc1c8fa65f64d99` |
| 29 | `theorem` | [not_nonempty_iff_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/not-nonempty-iff-eq-empty.md) | 158 | `result-track:1f55bf1051c68372e3d74e06937d637adf84dadc2629f0314f172908a56e778c` |
| 30 | `theorem` | [eq_empty_or_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/eq-empty-or-nonempty.md) | 161 | `result-track:e493eb743cdc63dedb007e108b6d7e6429d6f6861d83e7ee0e593e797c0cd8f0` |
| 31 | `theorem` | [coe_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/coe-empty.md) | 165 | `result-track:f23d6c178e93bdf423986a0e209bee59c102845e2e28c1c3599c6dca08a726a2` |
| 32 | `theorem` | [coe_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/coe-eq-empty.md) | 168 | `result-track:f953976198e11edbe04d19839e991b09a769022dc1b77219423364246553c266` |
| 33 | `theorem` | [isEmpty_coe_sort](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/isempty-coe-sort.md) | 171 | `result-track:326aaf01b837ebe31ac34eb3fef959db8376f9223a1048a77e4839c59a117dd5` |
| 34 | `instance` | [instIsEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/instisempty.md) | 174 | `declaration-track:52c99fdc7d6f54ca840d2bb6e12691770061c753d3acb4e79da3270f77f9a462` |
| 35 | `theorem` | [eq_empty_of_isEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/eq-empty-of-isempty.md) | 178 | `result-track:4107092de85d2f573a39cac6ed57f3d1b102f88ffb319e1e05916bdbd16966a5` |
| 36 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/instance.md) | 181 | `declaration-track:46ea96420a068b6e26fee1719cb0d7d6957559d438f19540e614c794e6b8b081` |
| 37 | `theorem` | [bot_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/bot-eq-empty.md) | 186 | `result-track:f4ba4f289409c1706dbe02214c8929553537b98056b2f849ea531956227bc5ca` |
| 38 | `theorem` | [empty_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/empty-ssubset.md) | 190 | `result-track:b506b337391902a519a4f06a6f009fd5844ec480b2918e8740fad822e5412525` |
| 39 | `theorem` | [exists_mem_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/exists-mem-empty-iff.md) | 196 | `result-track:7cdcddb187bc0016e955d21b3029deb0b637998bbb1350e81c862a5e38f95cfc` |
| 40 | `theorem` | [forall_mem_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/forall-mem-empty-iff.md) | 199 | `result-track:7be441bf955f94dcd00c0569b26b4821ab43e8a24b9860a8df4f00076914f735` |
| 41 | `def` | [proveFinsetNonempty](../../../../../Combinatorics/EnumerativeCombinatorics/EmptyNamespacedPublic.lean/declarations/provefinsetnonempty.md) | 217 | `declaration-track:f88fba25e97b9e1eeb2aa27c4234a97b9519dbf0db37dcc616f7f4c9474a2537` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05d93490391a451ebf5f58b523df731530288d9bce87177ad2fe0de4d3bfe879 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Empty/Variant151c5dadc3aa2efa46451a708e329b2b3766cb89fc83df66984fb690850f6840.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Empty/Variant151c5dadc3aa2efa46451a708e329b2b3766cb89fc83df66984fb690850f6840.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
