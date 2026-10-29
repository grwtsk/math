# Verification target: Data Finset Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c3d70bf9b5e9300b633b834167854d872360a80",
  "lexical_observation_count": 136,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c3d70bf9b5e9300b633b834167854d872360a80`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean.json)

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
| 1 | `theorem` | [disjUnion_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjunion-eq-union.md) | 73 | `result-track:520d1a818ec9231aee9a0ebfd8843d4ac25580220b2fbd672561b379d36c0b77` |
| 2 | `theorem` | [disjoint_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-union-left.md) | 76 | `result-track:ce448a10efdb7b74f86d53ea0aadcb8040022e704120273505e625aafda75334` |
| 3 | `theorem` | [disjoint_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-union-right.md) | 80 | `result-track:8dee4983e4c6c5efbb6249c2904b367a92f885846ecb4a8454bf9190569e3cf6` |
| 4 | `theorem` | [not_disjoint_iff_nonempty_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/not-disjoint-iff-nonempty-inter.md) | 85 | `result-track:4ee29cf2abab67a841262bfb4acc7ce4812e203495cae47731512570f024a5bb` |
| 5 | `theorem` | [disjoint_or_nonempty_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-or-nonempty-inter.md) | 90 | `result-track:d253287a7a9f9ad6d7caed2c7693b73af89bdd81bd84890e803f07fee43ebebf` |
| 6 | `theorem` | [disjoint_of_subset_iff_left_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-of-subset-iff-left-eq-empty.md) | 95 | `result-track:833e56ed3e4440d5c5f8afeb3b8a3e57d0cb6a072445deec37b926362734fc25` |
| 7 | `lemma` | [pairwiseDisjoint_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/pairwisedisjoint-iff.md) | 99 | `result-track:e40f262d1e4ec88a7c8bbbf8e1dd95ce1adbb4f7bac14426fd249a21353f362c` |
| 8 | `instance` | [isDirected_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/isdirected-le.md) | 106 | `declaration-track:c343904e62df39ea8d7621f026d980ff9b7c77efc88573e7d594626efb57e5bc` |
| 9 | `instance` | [isDirected_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/isdirected-subset.md) | 107 | `declaration-track:ce5b28f4cefd61670209d9f20f4898771ec209b7df23722bfd66d722ba476315` |
| 10 | `theorem` | [erase_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-empty.md) | 116 | `result-track:6625e9daebfec7973f0606574bc2c66f6291dd30094df079199dc7272959d1ff` |
| 11 | `lemma` | [Nontrivial.erase_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/nontrivial-erase-nonempty.md) | 119 | `result-track:ca5b4cfbe2ee85d5897cbc19a126a08006096822fba765701a78ea1ed6edc8bf` |
| 12 | `lemma` | [erase_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-nonempty.md) | 122 | `result-track:e8f30fa93230d8da5ba52f3fd6cffacf13d7f2415134941cf64f4c84c25bae09` |
| 13 | `theorem` | [erase_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-singleton.md) | 129 | `result-track:e17bdafc7251a269be9fbefb295384be1bac5292616939fa6cca3866e9420743` |
| 14 | `theorem` | [erase_insert_eq_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-insert-eq-erase.md) | 132 | `result-track:56500a4b3d7112a0bb5278196756235f3d6af404e903b1252e97a49369d9c51e` |
| 15 | `theorem` | [erase_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-insert.md) | 134 | `result-track:7d168b55acb2ac36f0c5ab8b7aeba8f00ada57209fa27194053df03fbc88deab` |
| 16 | `theorem` | [erase_insert_of_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-insert-of-ne.md) | 136 | `result-track:8cdb2b855348a75025f24e66149c11339f37e71d6a84cd0de01b4e242b2e8c7e` |
| 17 | `theorem` | [erase_cons_of_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-cons-of-ne.md) | 139 | `result-track:0789b18346801a702fdc17791237b0b3e3168465c5bf5adb69fdcd7b619b7d6a` |
| 18 | `theorem` | [insert_erase_eq_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/insert-erase-eq-insert.md) | 142 | `result-track:bd6e1525669d2a359c3f7e5fbd64d533c6433f5b2a7c88e1e11337190a4f463d` |
| 19 | `theorem` | [insert_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/insert-erase.md) | 144 | `result-track:e04e0cffbcf83b539c46854f5b2a833b881fe2406b43868a16371e95ad67354b` |
| 20 | `lemma` | [erase_eq_iff_eq_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-eq-iff-eq-insert.md) | 146 | `result-track:386838597fbc0122fccfc222b051513ad4faf787bdc88df36135da5b6a1709a4` |
| 21 | `lemma` | [insert_erase_invOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/insert-erase-invon.md) | 149 | `result-track:1a07152b388942055e05152e28f1de1dca8d74f4688dc82ac2123e4d9ab24685` |
| 22 | `theorem` | [erase_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-ssubset.md) | 153 | `result-track:b86ca71226980ea266a44374ce653a1548a3b13d4fed9ca7af17647725c09d3a` |
| 23 | `theorem` | [erase_union_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-union-eq.md) | 155 | `result-track:7db82f8903f9be5f1cf30c68712dafd76c684dbdc42a9c113eece7e43dc35459` |
| 24 | `theorem` | [ssubset_iff_exists_subset_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/ssubset-iff-exists-subset-erase.md) | 157 | `result-track:75364030da74d6e5c4c0a92bff17298ea5c05d16706dbe3fd53299484849c711` |
| 25 | `theorem` | [erase_ssubset_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-ssubset-insert.md) | 160 | `result-track:7c64dcc11531a49325d5e71893ad6d9a0352561645c2f1849bf0b3732671cbf8` |
| 26 | `theorem` | [erase_cons](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-cons.md) | 163 | `result-track:549f8d4b6077845764c7e8da416c0b619b3cf960ee2b2e3e5ab2188543c4dfaf` |
| 27 | `theorem` | [subset_insert_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/subset-insert-iff.md) | 165 | `result-track:55ba54d5021b4d742d7e4e9a65b65b07ca892ed46f3eff0a8d763e6706057cff` |
| 28 | `theorem` | [erase_insert_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-insert-subset.md) | 167 | `result-track:0abe84573785c6302ef55a264a0a9a7c305c2884af40d3186ef791a01c854aab` |
| 29 | `theorem` | [insert_erase_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/insert-erase-subset.md) | 170 | `result-track:2e36f7b78fb1edc3c29c205dc03e57259f63df645c4f9d702076c59d1a326ed8` |
| 30 | `theorem` | [subset_insert_iff_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/subset-insert-iff-of-notmem.md) | 173 | `result-track:135cf2ec92588587ff31eff0b6113ade0716fb30f5eb2f8bbbdf82d7e6866ba5` |
| 31 | `theorem` | [erase_subset_iff_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-subset-iff-of-mem.md) | 176 | `result-track:a0ec690e420a45a7bbc715005cd69f41eedde9c626d5f3d2309453206c4d9fed` |
| 32 | `theorem` | [erase_injOn'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-injon.md) | 179 | `result-track:0ad51b4315c8c345936fa709f6f390763d32ef2b7a2964d89396dc491952846d` |
| 33 | `lemma` | [Nontrivial.exists_cons_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/nontrivial-exists-cons-eq.md) | 184 | `result-track:58bf49a02707732a9fc47ce086c140d0dc557e1cacd91470a199826fec9f49f0` |
| 34 | `lemma` | [erase_sdiff_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-sdiff-erase.md) | 198 | `result-track:0c1b5e0bfb53420712088d054fec78691790b2aed8f96a59c9d950f334091b83` |
| 35 | `theorem` | [sdiff_singleton_eq_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/sdiff-singleton-eq-erase.md) | 203 | `result-track:05c1b6637154ab1123687a5a7c3e1c4e8acb2592bf6ba126000c1879889da755` |
| 36 | `theorem` | [erase_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-eq.md) | 206 | `result-track:4773658b338c7b0926b7baefe65fc857dc281a4a94e4af271553f1c328aa9bbf` |
| 37 | `theorem` | [disjoint_erase_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-erase-comm.md) | 209 | `result-track:c4bcc5cf1b7529a251e8ba0d143cbec99d7c4bccccfe5e94072b38ede209144d` |
| 38 | `lemma` | [disjoint_insert_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-insert-erase.md) | 212 | `result-track:8c435ae00ccd31d46c229d45298f583e2222e423c3ef121b79e1c8c1d1f99ecf` |
| 39 | `lemma` | [disjoint_erase_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-erase-insert.md) | 215 | `result-track:ce80036e3649cdd16b697539de40511f72a1d9f1d111b1d862d1152345fe0ad2` |
| 40 | `theorem` | [disjoint_of_erase_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-of-erase-left.md) | 218 | `result-track:720a297308c0571295b1f91e7d835df85a213d80a63769b7d1a115ea9cfc0ff0` |
| 41 | `theorem` | [disjoint_of_erase_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-of-erase-right.md) | 222 | `result-track:64033fef0f14a0239afa8633821a25e366b6419d31226fe1b2ce1ab93256c5ec` |
| 42 | `theorem` | [inter_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/inter-erase.md) | 226 | `result-track:5617626519bc6bb199a128f02b2c1c13e8167fe77be7402f733a985d09cd1f47` |
| 43 | `theorem` | [erase_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-inter.md) | 229 | `result-track:c4084373b21374eabfdf88fd14b6a71be19b823502ed01aa2aced45877fc47cc` |
| 44 | `theorem` | [erase_sdiff_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-sdiff-comm.md) | 231 | `result-track:a773fea1cbfd5a1fd5c9b9d188ade185830a8532faf77146a98e60c29796eb4d` |
| 45 | `theorem` | [erase_inter_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-inter-comm.md) | 233 | `result-track:be2e78682c2a58047f15136ef9dd396e77dfbda0a1abf36dcbf6543545647b2f` |
| 46 | `theorem` | [erase_union_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-union-distrib.md) | 235 | `result-track:977dcbbe972a9236ff2d9126bc509fee1837f97d56d34627d1f7cf101e3f3530` |
| 47 | `theorem` | [insert_inter_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/insert-inter-distrib.md) | 238 | `result-track:f7d0448ca16efe26666293a93c367fe491cd965a5b5a535c4757a00b486541b1` |
| 48 | `theorem` | [erase_sdiff_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-sdiff-distrib.md) | 241 | `result-track:808e0e4851c56b90e74ee1a1ba8a118d7b3eeb19ee1f856a026747226cda29b8` |
| 49 | `theorem` | [erase_union_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-union-of-mem.md) | 244 | `result-track:1b2739af1114555b67e0b57bf43e821cd32099fdef82fa26aa65d1e24673fc97` |
| 50 | `theorem` | [union_erase_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/union-erase-of-mem.md) | 247 | `result-track:d06d1f452068917d06e3d97d51a915f4ad93e3e29604e989f93bbe311a26ada7` |
| 51 | `theorem` | [sdiff_union_erase_cancel](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/sdiff-union-erase-cancel.md) | 250 | `result-track:324aa2c028b7e6e90655854f0781619fe10e7c5b262451d441ccbd89ebf6d760` |
| 52 | `theorem` | [sdiff_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/sdiff-insert.md) | 253 | `result-track:78bc51b7b08e5e4378211fd79c1d67135235cebe8002638976d62f5b943b4aa5` |
| 53 | `theorem` | [sdiff_insert_insert_of_mem_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/sdiff-insert-insert-of-mem-of-notmem.md) | 256 | `result-track:ec0f1e957c363bd098699347e206909c2e158ea158ce4aaceaa25a558f31be26` |
| 54 | `theorem` | [sdiff_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/sdiff-erase.md) | 260 | `result-track:abad8841c016c385b3167c0c69981dd1c64c4f64bcbfb3365fc7f489bb444dac` |
| 55 | `theorem` | [sdiff_erase_self](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/sdiff-erase-self.md) | 263 | `result-track:6b406fa2a6c47f616ecc19e5c99f568b82ec85def899def870ad869ce12e9172` |
| 56 | `theorem` | [erase_eq_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/erase-eq-empty-iff.md) | 266 | `result-track:e5a0a825b144997d5901487d86ba87de03edf7ab700bb1b8cde8b773ddd24531` |
| 57 | `theorem` | [sdiff_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/sdiff-disjoint.md) | 270 | `result-track:adfbf62b248c173cb25e34f59f0f4669252ad127ae37f00ad2d32f0dba4741ee` |
| 58 | `theorem` | [disjoint_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-sdiff.md) | 273 | `result-track:12731e50a97b6666f194a9c7ec4b04c75c111fb7d625ea4eff31bdafa7ce2792` |
| 59 | `theorem` | [disjoint_sdiff_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-sdiff-inter.md) | 276 | `result-track:290f1dbac2e4139fa7f93c48abeb385c4d72172308141c03b9558047adcd947f` |
| 60 | `theorem` | [attach_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/attach-empty.md) | 284 | `result-track:1bb104ba1aa5d26bbd1e8b2ed3077e4ca777787e2ebebaff587c74a3516a7cbb` |
| 61 | `theorem` | [attach_nonempty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/attach-nonempty-iff.md) | 288 | `result-track:36c047fce050d265b4902210bd9fa5dbbd0254830e22f0e73e01dbd0c0babe52` |
| 62 | `theorem` | [attach_eq_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/attach-eq-empty-iff.md) | 295 | `result-track:7b6098904e3f509b8ab44ef27e76a81713f8f395d0c0111c53cce9265c826c17` |
| 63 | `theorem` | [filter_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-singleton.md) | 303 | `result-track:e7a87ed6fc52a5228ff5c6e0bc53ae1a3f836f05dcf3de22d2a695b1e8f164bc` |
| 64 | `theorem` | [filter_cons_of_pos](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-cons-of-pos.md) | 305 | `result-track:6c780b384c691649bb057b2831f016853f5d556212a92d9a58f6f1407bd80cec` |
| 65 | `theorem` | [filter_cons_of_neg](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-cons-of-neg.md) | 309 | `result-track:4e086f136462a9fb248569c60110dcad9b7269696a4bc2bae46ed762c46df9d8` |
| 66 | `theorem` | [disjoint_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-filter.md) | 313 | `result-track:f84317432d596f461f8d794ac588e79fb192b933369ecda1fcc02e580d29fc09` |
| 67 | `theorem` | [disjoint_filter_filter'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-filter-filter.md) | 317 | `result-track:bd2894521a9a472f9aee019b8e3317999f2d067071d30f3ab69283576a6cda89` |
| 68 | `theorem` | [disjoint_filter_filter_not](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-filter-filter-not.md) | 325 | `result-track:fad9a5965f8856090a8d9ae2dd049e03e0bcc51faf73be2f0bcb222f710b11d8` |
| 69 | `theorem` | [filter_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-disjunion.md) | 330 | `result-track:64473ae86778eca79f15dc2810e35d1bf572101907675e13072d849aa9daeb7e` |
| 70 | `theorem` | [filter_cons](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-cons.md) | 334 | `result-track:0d00c0168316a31e0c1ae1ffae11a4ea071f951de61e47f6c77f84595ccb29c7` |
| 71 | `theorem` | [disjoint_disjUnion_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-disjunion-left.md) | 339 | `result-track:b2b21d1ebe98d82c67e993283c8ce6dbb408779f99b112ada28c31300d6cb80d` |
| 72 | `theorem` | [disjoint_disjUnion_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/disjoint-disjunion-right.md) | 344 | `result-track:133ebe0fd10a7d3c6eaa4ba40d1364da2e3bbfc34fddf20fe141cf0056ac45c3` |
| 73 | `theorem` | [filter_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-union.md) | 351 | `result-track:0195ccca7400355b8fdf132e3bcccc8022105056ea79b15a913b1fb095e83c40` |
| 74 | `theorem` | [filter_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-union-right.md) | 354 | `result-track:56848e47b21fc0b870ee71d4526f4b8fd3b6f8db8340246275ce0bda11ce70b2` |
| 75 | `theorem` | [filter_mem_eq_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-mem-eq-inter.md) | 357 | `result-track:4bdc2dd047ce9e8ddb4db33d6a0f05b9546c1ff70f152bdb504f57c67305266e` |
| 76 | `theorem` | [filter_notMem_eq_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-notmem-eq-sdiff.md) | 360 | `result-track:009139173ca1a233c42815ec7fe17cce47bac22796167f34edb19de44edc5d72` |
| 77 | `theorem` | [filter_inter_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-inter-distrib.md) | 363 | `result-track:c2f67e13530a4bc4216ffba831cf7dff02585c1c95b8f54a0c68b5a5aa532f58` |
| 78 | `theorem` | [filter_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-inter.md) | 366 | `result-track:d57ec84d3d3cab38269694c09481d51dd4ecd975abc793cda3261e35ec37acd9` |
| 79 | `theorem` | [inter_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/inter-filter.md) | 368 | `result-track:44b1968078ebf908790340e19b1cfcef1f1397fdff38da65e69b4964359c252c` |
| 80 | `theorem` | [filter_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-insert.md) | 370 | `result-track:4b877ca5be377e857677f2ac9be6426ff23df65a606ccc6a8e0288d290f11e25` |
| 81 | `theorem` | [filter_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-erase.md) | 373 | `result-track:9cfa7fadc6bc5acc93f99d9a5e367a7e6adba285924dfc7b999b9290e5379202` |
| 82 | `theorem` | [filter_or](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-or.md) | 376 | `result-track:6cf2c3fbd6ace28ad7ea3b0f7df68fc6d1942597af11f450f9b00daf8ff4d843` |
| 83 | `theorem` | [filter_and](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-and.md) | 379 | `result-track:0ea83263aaa6c73ab5decce727d805ce4db81d680cdb7ad2533493cb025292ea` |
| 84 | `theorem` | [filter_not](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-not.md) | 382 | `result-track:a74e0c8e2f2d46b613d045effff9b24d00927f6b638071dd831bfc280397b9ed` |
| 85 | `lemma` | [filter_and_not](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-and-not.md) | 385 | `result-track:7ec12a6d7266923b2dc34f97778d6c6d7d6ce6dc4427c2b37dbd6b94ee8acfe8` |
| 86 | `theorem` | [sdiff_eq_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/sdiff-eq-filter.md) | 388 | `result-track:01611fdcd6cf9ebcf079feea7570daa4a37d71d47be2919d15712bcfa11bf06f` |
| 87 | `theorem` | [subset_union_elim](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/subset-union-elim.md) | 390 | `result-track:0557cc493e59f4f6d010b2118901d405b57834168b3e438b3ac49f7d670226f1` |
| 88 | `theorem` | [filter_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-eq.md) | 407 | `result-track:2c5eb21e6481b7d51558c5e36198cf15b78e4b1333497e9e51b929cb362ba900` |
| 89 | `theorem` | [filter_eq'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-eq-source-edition-2.md) | 414 | `result-track:b13abbe85ec39ebf977e0a461c2266dbccfe84b01419ddd86ab51025391bdb1a` |
| 90 | `theorem` | [filter_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-ne-source-edition-2.md) | 417 | `result-track:b1cdfd3c917603769e63fe0380e21a2d835e993350a39903a106d14dfd9036a5` |
| 91 | `theorem` | [filter_ne'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-ne.md) | 420 | `result-track:9a83e8f7c92d57561868fc8a68626036987d198d2c683a8c4389b5fe1e0abe52` |
| 92 | `theorem` | [filter_union_filter_of_codisjoint](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-union-filter-of-codisjoint.md) | 423 | `result-track:294bac8bab4af2e36a2ac264e09abb168310e1fb28e1e9ffd40cd7c98632b13b` |
| 93 | `theorem` | [filter_union_filter_not_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-union-filter-not-eq.md) | 427 | `result-track:b2648fed0ab81f491b8b081c435a19d8c5cb9ba57aa80d2e28c52ce17e184a62` |
| 94 | `theorem` | [range_filter_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/range-filter-eq.md) | 445 | `result-track:ec6156947266c7ce039a5be60e9b5b784ff6791c7ef70a05357e4cb21a193ef3` |
| 95 | `theorem` | [range_inter_range](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/range-inter-range.md) | 448 | `result-track:3c4fc382af1c35909c3ef6bebe934b8d73e0074e449877acf564126f5629b370` |
| 96 | `theorem` | [range_union_range](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/range-union-range.md) | 451 | `result-track:1117eacbe70efc3c9fe945968c6fc51fc9f3701a6121c64589da4514cbe3662f` |
| 97 | `theorem` | [toFinset_add](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-add.md) | 464 | `result-track:fcf7955bd722cd750d3915e540ad111b7505d3cfec72ccf44ea9282b675e1ff3` |
| 98 | `theorem` | [toFinset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-inter-source-edition-2.md) | 468 | `result-track:d5badfc8e7a5c63558b3440fdc993bf876e51d48d7a55a6658fd1fd9b15f0258` |
| 99 | `theorem` | [toFinset_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-union.md) | 472 | `result-track:00f006a252c66e79df3b68d9973b8a385d79572306c8fc61dfbab152c6927daa` |
| 100 | `theorem` | [toFinset_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-eq-empty.md) | 476 | `result-track:445be82d07349c2f9b4a715dd9dd8a06f0ff89b3012c1ee2dad8ec7c50d9c4b0` |
| 101 | `theorem` | [toFinset_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-nonempty.md) | 480 | `result-track:c82e2af81f32815678385ef047503fdc6e8c5e53ffec8790c08691263634eaee` |
| 102 | `theorem` | [toFinset_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-filter.md) | 487 | `result-track:8a02b54ba73336c5cf7dfa2fd285ca5a907eb7175f731b325a566796607bcc37` |
| 103 | `theorem` | [toFinset_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-union-source-edition-2.md) | 498 | `result-track:fb97d6a9d94a9c031d2ab911e56a70b8f0399eb22f0ae2f4c36c0d086c87563a` |
| 104 | `theorem` | [toFinset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-inter.md) | 503 | `result-track:3d0a7056ac9f8b27559a6b737872d07e98ff662b501d84e7d9baa9b0436a57f7` |
| 105 | `theorem` | [toFinset_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-filter-source-edition-2.md) | 511 | `result-track:edf31b92d1d468b5f5fda0b4974463049a065e4e6eaf8244d109d9f922ab84ec` |
| 106 | `theorem` | [filter_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/filter-tofinset.md) | 515 | `result-track:3570cd34e2b6bf72c7f3f4bf207dab7231fb3ed152d219a928a0b33f669c8636` |
| 107 | `theorem` | [toList_eq_nil](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tolist-eq-nil.md) | 525 | `result-track:578765bf32739561436321d1fd2255b6ea3026b93798268750319bee26b254c8` |
| 108 | `theorem` | [empty_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/empty-tolist.md) | 528 | `result-track:dafcc8abf6908083ebbda9b9713fbbc19ba00cf90e82809bd832ca7eedbdb492` |
| 109 | `theorem` | [toList_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tolist-empty.md) | 531 | `result-track:9364aeb0d090128da681b8ec2dc38133cb4c187f318b8bc4c8c55e75468a58db` |
| 110 | `theorem` | [Nonempty.toList_ne_nil](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/nonempty-tolist-ne-nil.md) | 534 | `result-track:a318a83d65f08d997c168f22555a58457b9551d9eb932d09b10c3043a9a1b9c0` |
| 111 | `theorem` | [Nonempty.not_empty_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/nonempty-not-empty-tolist.md) | 537 | `result-track:93c881ed84cde31246d65d7f1560e9ae4496d0094a892f03e3e0a79ec77e236e` |
| 112 | `def` | [chooseX](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/choosex.md) | 551 | `declaration-track:64f38e8c4e2ea3cc21d1e275af0d1c4b1bf9a7b49081132de3293e09e926d211` |
| 113 | `def` | [choose](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/choose.md) | 556 | `declaration-track:b4fcca54ba02644a6864a8f75fdeca47632ca48db5212a2d02789f9470596bb4` |
| 114 | `theorem` | [choose_spec](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/choose-spec.md) | 559 | `result-track:7c81a845714b0bb3cc589f7fe6c5d4ba0e944e525fb8ee1fdcb3d90ca67f5e9b` |
| 115 | `theorem` | [choose_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/choose-mem.md) | 562 | `result-track:ef9ec704ea942eb6d18d034a8ee11a69f12a947a8a6c05c2ce21c7e8751fdd7f` |
| 116 | `theorem` | [choose_property](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/choose-property.md) | 567 | `result-track:93d4ae36cf7413f07b3f6372f4cad2089e14481c15543ffa8a060873e1019361` |
| 117 | `theorem` | [choose_eq_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/choose-eq-iff.md) | 572 | `result-track:aaad7e0c713fea8263d95d79bd0d08a79ff871bad528797b46c2b026ff843106` |
| 118 | `def` | [Finset.union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-union.md) | 585 | `declaration-track:0e33a066b64681d9669ecb3d5af167849c46ef0da4d152b8d222c2e551917f5a` |
| 119 | `theorem` | [Finset.union_inl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-union-inl.md) | 590 | `result-track:fecb42ea5825fe6e586d2719ea129f9fa869897146c81274fbe35151e12aaafb` |
| 120 | `theorem` | [Finset.union_inr](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-union-inr.md) | 595 | `result-track:e1e099465de8b6ba71ad9509de7d8f6065e77f435d7a2edf9eb0a7cc3b75f0b1` |
| 121 | `theorem` | [Finset.union_symm_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-union-symm-left.md) | 600 | `result-track:0b0ca4a774e987011795630dbfe6ec4a988fd1ef4131abc8761b7de5445db540` |
| 122 | `theorem` | [Finset.union_symm_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-union-symm-right.md) | 605 | `result-track:3912ecaa9ce84b64443816a9562817d2433e90ddb4be1d6289e9bf8cf9deb5e8` |
| 123 | `def` | [Finset.disjUnionEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-disjunionequiv.md) | 610 | `declaration-track:7c3e54d0372e3a99f815ef0d8c8a6f34909bedc07e84f537d39a591114a1ad07` |
| 124 | `theorem` | [Finset.disjUnionEquiv_inl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-disjunionequiv-inl.md) | 615 | `result-track:afe24ecab5b0db0bc9ae032c238c31fbc7a66669395278f550bb76531f8cb3f4` |
| 125 | `theorem` | [Finset.disjUnionEquiv_inr](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-disjunionequiv-inr.md) | 620 | `result-track:0707b5d5f9ee19c79f1e3e2902c5372633a43d20ded8b6f4c364bd5b19904d25` |
| 126 | `theorem` | [Finset.disjUnionEquiv_symm_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-disjunionequiv-symm-left.md) | 625 | `result-track:075017cdcaebd60b1042af4cc0ab4b23190610551b0122d2becdf19f5750d61c` |
| 127 | `theorem` | [Finset.disjUnionEquiv_symm_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/finset-disjunionequiv-symm-right.md) | 631 | `result-track:3e1b3ded312196af8874421376d012438beb39ae53ebcc69884cd4914b2111e8` |
| 128 | `def` | [piFinsetUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/pifinsetunion.md) | 638 | `declaration-track:7b055d310c15a893e5e62adce71c1af6c28c4b396c4999d12afcd1e7ba64c0d1` |
| 129 | `lemma` | [piFinsetUnion_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/pifinsetunion-left.md) | 644 | `result-track:a8d03d238990bccde633afff03863c0c003e82ea97048676c32770ecf20485f4` |
| 130 | `lemma` | [piFinsetUnion_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/pifinsetunion-right.md) | 652 | `result-track:64afb8f51d20540ab6faf630559e54cea237dce7cc57e87b14f545c48b30471a` |
| 131 | `def` | [_root_.Finset.equivToSet](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/root-finset-equivtoset.md) | 660 | `declaration-track:61b18782e0935a7ade9d886364f09b1ccab64bc3476e5eac9160ed8acd735703` |
| 132 | `lemma` | [toFinset_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/tofinset-replicate.md) | 671 | `result-track:9fa7457d64135c943a10622becfdb84fb94a6c9673c9e5a0087d058dd8f341ca` |
| 133 | `theorem` | [mem_union_of_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/mem-union-of-disjoint.md) | 683 | `result-track:865c2ef57d5e9434cc2e67f71af45e9ca0ddada2356b6c8cb1f5e9732fb03466` |
| 134 | `theorem` | [univ_finset_of_isEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/univ-finset-of-isempty.md) | 691 | `result-track:659e9b7c059a9b23804ee2b4a926f6a809754f4a22c17b88a12af0ca11abdf72` |
| 135 | `theorem` | [isEmpty_of_forall_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/isempty-of-forall-eq-empty.md) | 694 | `result-track:a4c2243abb33f3ebad3f0025bfe27c8f894951854d2db74c13d545d97a1d36ee` |
| 136 | `theorem` | [univ_finset_eq_singleton_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicPublic.lean/declarations/univ-finset-eq-singleton-empty-iff.md) | 698 | `result-track:c206ccd5008e03b00179e8a481730fe94ecf82ebeca256356f1fedfafd3d2658` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8092e81fc53da028098c738c951cfe35d268486ee1613e694118d0c897ed52d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant610233da92210bc5b2afc728468b5bb2c4894606286ded6628ac15f4dfec93b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
