# Verification target: List Zip Namespaced Zip With Cons Cons

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ee71aa1bc66994eeb78c98296c4038fd44ce3ce",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantd5f05641db80e2e1e8fb8e504f0c439013c1d2c5ea8abea93b41ecf11e6634b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ee71aa1bc66994eeb78c98296c4038fd44ce3ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantd5f05641db80e2e1e8fb8e504f0c439013c1d2c5ea8abea93b41ecf11e6634b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantd5f05641db80e2e1e8fb8e504f0c439013c1d2c5ea8abea93b41ecf11e6634b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.MinMax` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zipWith_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-cons-cons.md) | 42 | `result-track:b0cdad9427d128be611df151593ddf24460c99a3b0fff84fd7fcbf0ede2d632a` |
| 2 | `theorem` | [zip_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-cons-cons.md) | 47 | `result-track:5793c76f3f6ec3e260c62bc5b46dd5a6746afef51120090449198586f9e75b13` |
| 3 | `theorem` | [zipWith_nil_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-nil-left.md) | 52 | `result-track:cfcd15f17dc89d389777c0add938b1a6bcb962c005ba19cd0efd144a241ce28b` |
| 4 | `theorem` | [zipWith_nil_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-nil-right.md) | 55 | `result-track:9fa80f0c5ef7f3cdce9ecb5f128f9f899d5d431b37c762692a142549e674705b` |
| 5 | `theorem` | [zipWith_eq_nil_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-eq-nil-iff.md) | 59 | `result-track:391545f0d11a4619d46d2d2c72042c90b17b9bdbd998bbf1612ca6fce1f50c00` |
| 6 | `theorem` | [zip_nil_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-nil-left.md) | 64 | `result-track:b8f7e4350a55ace7c4ba1e479690a29a6078eb981636c37430a47c02d2fa0e49` |
| 7 | `theorem` | [zip_nil_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-nil-right.md) | 69 | `result-track:ebe0ecd7f0257167150be5e2cb0ca1c0abc575ce68ed6c695e161ebd40cbea7b` |
| 8 | `theorem` | [zip_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-swap.md) | 74 | `result-track:7617b64ca60ff232188a803d3095a94411a93d7de46a65fec1c06681a61718cd` |
| 9 | `theorem` | [length_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/length-zip.md) | 84 | `result-track:41098fad0f2ec20c223787a3cac69501a2267d437b928dc9a320b77f8c81763d` |
| 10 | `theorem` | [all₂_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/all-zipwith.md) | 89 | `result-track:b3722a9ca91664d82792fd2b5ea9603b69ae15967172e0229924cd18a8874fa5` |
| 11 | `theorem` | [lt_length_left_of_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/lt-length-left-of-zipwith.md) | 98 | `result-track:0a6363a3d811d1a7a00d83e05f45832df315a841b6aab23fc93540253ec7b77f` |
| 12 | `theorem` | [lt_length_right_of_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/lt-length-right-of-zipwith.md) | 104 | `result-track:2251f0dc594ee00df846c64728c9340e59d761115fa6d93f8038daf2a1b6a63c` |
| 13 | `theorem` | [lt_length_left_of_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/lt-length-left-of-zip.md) | 110 | `result-track:585b42e81ec67cb084729de035cf548163614c2230f12be35d832bbe3bfd308d` |
| 14 | `theorem` | [lt_length_right_of_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/lt-length-right-of-zip.md) | 115 | `result-track:4a26f4ae878e3aa21da58afe73d9f763d0433c1a68e3e22a0fab3ee31e6561ec` |
| 15 | `theorem` | [zip_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-append.md) | 120 | `result-track:8ab0e2e223361807325e74b2de0185a10d37a40c5873bc9c0962c37e635f3ecc` |
| 16 | `theorem` | [zip_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-map.md) | 129 | `result-track:e95fc881088efbeb6bf707049a6a848282c824f65f4a0c4a1d7fa6c5322f7b03` |
| 17 | `theorem` | [zip_map_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-map-left.md) | 137 | `result-track:d75584d2ca4470a66cf0ffd6ca6545754d3d4c705f7aaaf3666ee145c636a133` |
| 18 | `theorem` | [zip_map_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-map-right.md) | 141 | `result-track:8ddcf4a2318175563dcd021e9ab31be241285b27f596bc2db417d1768c7f9047` |
| 19 | `theorem` | [zipWith_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-map.md) | 146 | `result-track:f97de8278443ccdf8d6507c6acd2d948e7c0f0acce485cef7564e555ddd3bc50` |
| 20 | `theorem` | [zipWith_map_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-map-left.md) | 153 | `result-track:15b20c3d92e20d0b745785272ed253c07ce4ef670a22709ef000937ef9abcd48` |
| 21 | `theorem` | [zipWith_map_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-map-right.md) | 159 | `result-track:5706bddcdc3c34495602e4c649eb7f20a8c1860c8fd9810db4c8862cb05b57f2` |
| 22 | `theorem` | [zip_map'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-map-source-edition-2.md) | 165 | `result-track:ea77d5308e59556730b5500e3ab90c3486ffd9c656cd39dcaa803d9810cf460d` |
| 23 | `theorem` | [map_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/map-zipwith.md) | 171 | `result-track:81cdfb5f0afaedd266ffd2bd855aa78a36dbd72d8415880bbcd6314e293d1686` |
| 24 | `theorem` | [mem_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/mem-zip.md) | 180 | `result-track:d91fed2ac8f9d0126a2086f8c201686bd60c97b80706eb8cfd5302bd044c8511` |
| 25 | `theorem` | [map_fst_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/map-fst-zip.md) | 188 | `result-track:d79a1a19e6d3aba37b0e9fdc1c946e87361c8ccd3d6ac319ff3f23b434a014cf` |
| 26 | `theorem` | [map_snd_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/map-snd-zip.md) | 198 | `result-track:9b6fa6956ef441072d678b820ce734e394789ef4b49d0f6fc01b282da4eb840e` |
| 27 | `theorem` | [unzip_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-nil.md) | 211 | `result-track:0e3b904f759c00a891598374710947df2b9998d0525f5f31d64cbc0c7436f880` |
| 28 | `theorem` | [unzip_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-cons.md) | 215 | `result-track:5ea9cd16e84c4309fca1248b65c54e93d9d613cdb7a87f4461ffe9c4b69d1a3a` |
| 29 | `theorem` | [unzip_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-eq-map.md) | 219 | `result-track:e96c13b3d0c21d967eed7c64fa6feb686dc00dd650e7fd446d99c3e964aeb575` |
| 30 | `theorem` | [unzip_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-left.md) | 224 | `result-track:05a1ef2aedaccd2824c858dda1a5be9d160242e72871b7de1f766aa6bb7c9723` |
| 31 | `theorem` | [unzip_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-right.md) | 227 | `result-track:2ba49bedd8008a2878125cd8e2332eaa0347a638d4c83eb7cb6a5384a77799ee` |
| 32 | `theorem` | [unzip_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-swap.md) | 230 | `result-track:b13076f596c0b00edea2f467ff59fdff8693fde32dbadd533c0a2f9d33ddfa4d` |
| 33 | `theorem` | [zip_unzip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-unzip.md) | 235 | `result-track:74abf195bda8efb8e2b6c78283eda3670271d43f6918bea8390f2f6e15e2859a` |
| 34 | `theorem` | [unzip_zip_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-zip-left.md) | 240 | `result-track:d65688fdb7b343e6ed90c43897565dfdbae6e66859dc3e9a2b5585385d1a2165` |
| 35 | `theorem` | [unzip_zip_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-zip-right.md) | 248 | `result-track:d2619b5875ee81eee79314e251ca243fb243d6d0adc2276b82c8b6645258ed17` |
| 36 | `theorem` | [unzip_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-zip.md) | 252 | `result-track:14cb2bb38eea176c7c964c3a73125cdc8be8af1b25a8f1a6ea1b795641c6af3b` |
| 37 | `theorem` | [zip_of_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zip-of-prod.md) | 258 | `result-track:3110eecb9f694e5b8e924626866a66c874b35510a97170b4defdc29e4613cf0c` |
| 38 | `theorem` | [map_prod_left_eq_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/map-prod-left-eq-zip.md) | 263 | `result-track:97ac72d421428daed3d283a151a799e22a2da5ffa68167ab094b36bbb21b59ea` |
| 39 | `theorem` | [map_prod_right_eq_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/map-prod-right-eq-zip.md) | 270 | `result-track:7bfd6b52c899bb3585e2ea8c91a64b80399d064d6e7913ba9505b5920a40e0d4` |
| 40 | `theorem` | [zipWith_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-comm.md) | 277 | `result-track:9d46bde42bf0f4c72539cc2d92b8289de9c986478fc501544cb3b5482ed3e3d0` |
| 41 | `theorem` | [zipWith_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-congr.md) | 285 | `result-track:1e0fd458644daadac6507d5dd39b5ca4cf87dce6a0d2bd4c4e6550bc55df3eb8` |
| 42 | `theorem` | [zipWith_comm_of_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-comm-of-comm.md) | 292 | `result-track:97f091d3f49261a5b7b003b564c5564e3e16c1f4b07423154b0c509da7b9b7c2` |
| 43 | `theorem` | [zipWith_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-same.md) | 299 | `result-track:0b2264a7f3df21a3480bcf1aaae6ebd287a26b7a8882db069b896ef539335ae2` |
| 44 | `theorem` | [zipWith_zipWith_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-zipwith-left.md) | 304 | `result-track:4ceb2d3ddbec9d18fd471879613f286a72578dc2ab04fe30e2b3842b988d662e` |
| 45 | `theorem` | [zipWith_zipWith_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-zipwith-right.md) | 313 | `result-track:b676adebb5fb66f2130285eb7dddbcdc076db382bfa2eb53d555cc86352f3849` |
| 46 | `theorem` | [zipWith3_same_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith3-same-left.md) | 323 | `result-track:0b19323e51ca5ca417059bdf8c8a365f189f92b39d9d3795d19d2ac4c5d6e45e` |
| 47 | `theorem` | [zipWith3_same_mid](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith3-same-mid.md) | 331 | `result-track:1a2e6d69cfd680c39c20fe5ab9d4005f3833d1902e2de6a90fb45a8d8f75fa6f` |
| 48 | `theorem` | [zipWith3_same_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith3-same-right.md) | 339 | `result-track:8f67092a119b7c922af25faacb73bc243e1faca96fa0bddf7035b98104e3ae17` |
| 49 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/instance.md) | 346 | `declaration-track:36cdc1c2727c2d08ee70ee26e438ef152710f80acc32cd3db89c548a10173ce6` |
| 50 | `theorem` | [length_revzip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/length-revzip.md) | 350 | `result-track:62814c21c8fe041a28b355e4bbaaebe797f59260929252ea354e4f6acde5af87` |
| 51 | `theorem` | [unzip_revzip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/unzip-revzip.md) | 355 | `result-track:c4b8b1f37219e1894b4217316481af4496d623fb385aff6bc8e1d9ce7221635d` |
| 52 | `theorem` | [revzip_map_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/revzip-map-fst.md) | 360 | `result-track:be4c59123007ee78f0a201467f0071a7a0eb4b014e010e57c59b1fffd8fc602e` |
| 53 | `theorem` | [revzip_map_snd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/revzip-map-snd.md) | 365 | `result-track:9bf5d5d1b997c4225b124d97156fc72e3eaa4bc97809ecbddd8a38663509efc4` |
| 54 | `theorem` | [reverse_revzip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/reverse-revzip.md) | 369 | `result-track:88ae7b42c9bec9bd7f87aa3143f94b26ff74780daaf6606dc3af74af784e6c03` |
| 55 | `theorem` | [revzip_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/revzip-swap.md) | 374 | `result-track:1ad1dbbd9d2678af0e1e9a27d4063c8c98ffd843bacada9a84a4664ac38232bc` |
| 56 | `theorem` | [get?_zip_with](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/get-zip-with.md) | 377 | `result-track:7343cee48caba67c0f3cd7e62962ef1d7ccd4e26f1aba224cd808b9c8540dfde` |
| 57 | `theorem` | [get?_zip_with_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/get-zip-with-eq-some.md) | 387 | `result-track:1182c54f23d9dfea37c64b0d2214ca23446d1abefd340bcf4bea4c80f1c075ac` |
| 58 | `theorem` | [get?_zip_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/get-zip-eq-some.md) | 396 | `result-track:7911e2b090618d0ead27b8e7aeb5b54d1ffc4a6fa0346145c657d6851e05c778` |
| 59 | `theorem` | [get_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/get-zipwith.md) | 407 | `result-track:de4d482cf5f8ec394d45e22adb4230b2d2e674976a45e1df98756abce01cf2d6` |
| 60 | `theorem` | [nthLe_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/nthle-zipwith.md) | 417 | `result-track:88b8df22345b7de5bdc43e3022b95a18c328f25a3ba91811992162a2925aa4f1` |
| 61 | `theorem` | [get_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/get-zip.md) | 425 | `result-track:be8e7ae43f96a938fe039330dd2dabd31f1f3824c09c33f99f4401794c7c3bcd` |
| 62 | `theorem` | [nthLe_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/nthle-zip.md) | 431 | `result-track:e474a36d5d51b32ee6af27c03bbcb475d6d0c33dd758f603fd3b0f5c2d761848` |
| 63 | `theorem` | [mem_zip_inits_tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/mem-zip-inits-tails.md) | 437 | `result-track:bc7a5be56554cdd5ef3b0ddbd7d0bb2a117a841f7071d17c5a18c345eb70393e` |
| 64 | `theorem` | [map_uncurry_zip_eq_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/map-uncurry-zip-eq-zipwith.md) | 454 | `result-track:6358b948707e1969ab67d3fda68c13839d20abddd18659216414184fbc5478bd` |
| 65 | `theorem` | [sum_zipWith_distrib_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/sum-zipwith-distrib-left.md) | 465 | `result-track:f830d765cd45805c4bb31345c751feea57ebbd0fd9b6ddcd55b206d2b4728e08` |
| 66 | `theorem` | [zipWith_distrib_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-distrib-take.md) | 481 | `result-track:31a8ba049ed9eb6d0d28f174e1e3588b0cdccf00461287a89693bb6667095119` |
| 67 | `theorem` | [zipWith_distrib_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-distrib-drop.md) | 491 | `result-track:2b78fb5cf5d905b56ee932694fdfeecf10e44c15f210664c31132cd4a37a7bd6` |
| 68 | `theorem` | [zipWith_distrib_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-distrib-tail.md) | 501 | `result-track:8d2eab524762839f8f9354a72de769193a61184ead4d2c4460589a56804a9ce6` |
| 69 | `theorem` | [zipWith_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-append.md) | 505 | `result-track:cf4495c8fa0e26de19b919b9f4e46bbbd86852951e754aea9685d2d9e03c43f2` |
| 70 | `theorem` | [zipWith_distrib_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/zipwith-distrib-reverse.md) | 517 | `result-track:dcec619981d6057569985f50eaf65aa7fb276dcdc2614589146998417a34b319` |
| 71 | `theorem` | [prod_mul_prod_eq_prod_zipWith_mul_prod_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/prod-mul-prod-eq-prod-zipwith-mul-prod-drop.md) | 535 | `result-track:de540b489b89fc0da88d3f1842023728e3886ad7c80ce22e39af3dabf01e55f7` |
| 72 | `theorem` | [prod_mul_prod_eq_prod_zipWith_of_length_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListZipNamespacedZipWithConsCons.lean/declarations/prod-mul-prod-eq-prod-zipwith-of-length-eq.md) | 552 | `result-track:29988291683abbd0e036457661e337439c6a732c4be905e96909db9274a0bbe0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4ca755210a512ab7f75c47deaedf00ce0ddddb3bde6553f9187503ddfaab31f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantd5f05641db80e2e1e8fb8e504f0c439013c1d2c5ea8abea93b41ecf11e6634b0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantd5f05641db80e2e1e8fb8e504f0c439013c1d2c5ea8abea93b41ecf11e6634b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
