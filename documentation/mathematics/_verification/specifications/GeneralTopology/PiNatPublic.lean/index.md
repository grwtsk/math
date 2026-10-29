# Verification target: Pi Nat Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9037e11c4d4eeb6bcd61b008be2f6f95426d2181",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PiNatPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PiNatPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9037e11c4d4eeb6bcd61b008be2f6f95426d2181`.

Source path: `GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [apply_firstDiff_ne](../../../../GeneralTopology/PiNatPublic.lean/declarations/apply-firstdiff-ne.md) | 80 | `result-track:d92d55e23fc33ea90cc19a11af2ccb9b6942c308af0fc45c3af00499efc1614f` |
| 2 | `theorem` | [apply_eq_of_lt_firstDiff](../../../../GeneralTopology/PiNatPublic.lean/declarations/apply-eq-of-lt-firstdiff.md) | 86 | `result-track:0a302d86ffafb83ee862324ad0dbdf47944cb30b6c24e5b811ecc387d013bca8` |
| 3 | `theorem` | [firstDiff_comm](../../../../GeneralTopology/PiNatPublic.lean/declarations/firstdiff-comm.md) | 90 | `result-track:16177c827dc94eabbfd1b852c750b1b032770f76595b392be4f5e6301f755345` |
| 4 | `theorem` | [min_firstDiff_le](../../../../GeneralTopology/PiNatPublic.lean/declarations/min-firstdiff-le.md) | 94 | `result-track:8924af89ce3280f59f1b94a00fba3f266e1a92a254cdec2d49956d8b0dfed316` |
| 5 | `def` | [cylinder](../../../../GeneralTopology/PiNatPublic.lean/declarations/cylinder.md) | 109 | `declaration-track:3d71374738bc642926f1da6ac28c97d377d8b5ff67b0453d5797d74ae7e76a03` |
| 6 | `theorem` | [cylinder_eq_pi](../../../../GeneralTopology/PiNatPublic.lean/declarations/cylinder-eq-pi.md) | 112 | `result-track:be92b0d2bac5ac24f8fca53ffbdf04152623e1ae9a081704c0bbb0429dbb3703` |
| 7 | `theorem` | [cylinder_zero](../../../../GeneralTopology/PiNatPublic.lean/declarations/cylinder-zero.md) | 118 | `result-track:552779e4ff6d0ac3fbfc223a78003f83618688b6473b2d032eadce223ea1745a` |
| 8 | `theorem` | [cylinder_anti](../../../../GeneralTopology/PiNatPublic.lean/declarations/cylinder-anti.md) | 120 | `result-track:4d3eb6f531434f27cf8666ba1ffed79a931bb0bbfcde8534dc9c4d4d48344041` |
| 9 | `theorem` | [mem_cylinder_iff](../../../../GeneralTopology/PiNatPublic.lean/declarations/mem-cylinder-iff.md) | 124 | `result-track:e22aaf516b7ae9f8bee77303e8e3f31ea814faaa5a18f6c64fda89b41f722cf8` |
| 10 | `theorem` | [self_mem_cylinder](../../../../GeneralTopology/PiNatPublic.lean/declarations/self-mem-cylinder.md) | 127 | `result-track:b8ab1c8f81eeda85802e50941f24791df849e165c8eebe69bcbcd4f609b853e5` |
| 11 | `theorem` | [mem_cylinder_iff_eq](../../../../GeneralTopology/PiNatPublic.lean/declarations/mem-cylinder-iff-eq.md) | 129 | `result-track:274b39e6abbc670094c2a99dc48d35d7066bbf872874976dad8ea731c6e13d77` |
| 12 | `theorem` | [mem_cylinder_comm](../../../../GeneralTopology/PiNatPublic.lean/declarations/mem-cylinder-comm.md) | 144 | `result-track:b1319b4b2cb9769b15332d9b7d6b90faf147760b3b253285c15b08b520afd571` |
| 13 | `theorem` | [mem_cylinder_iff_le_firstDiff](../../../../GeneralTopology/PiNatPublic.lean/declarations/mem-cylinder-iff-le-firstdiff.md) | 147 | `result-track:1637f64ec385857fa361a17f00bab344e88d7d4d05ecfdf1bce31f771c2fbc62` |
| 14 | `theorem` | [mem_cylinder_firstDiff](../../../../GeneralTopology/PiNatPublic.lean/declarations/mem-cylinder-firstdiff.md) | 156 | `result-track:be75cfcf75bdc7be698c42b0a999c5dfe9bc095224515b951bdb8d4b942a897e` |
| 15 | `theorem` | [cylinder_eq_cylinder_of_le_firstDiff](../../../../GeneralTopology/PiNatPublic.lean/declarations/cylinder-eq-cylinder-of-le-firstdiff.md) | 159 | `result-track:5b1e8314c3aab3fd28d3499bc1cffe9d1d079650b3da79c307871f64c8b17a0f` |
| 16 | `theorem` | [iUnion_cylinder_update](../../../../GeneralTopology/PiNatPublic.lean/declarations/iunion-cylinder-update.md) | 165 | `result-track:a499d475c0f457c24e33760cb759ad75a299e20af1af226d0cb4446f2a7a0df3` |
| 17 | `theorem` | [update_mem_cylinder](../../../../GeneralTopology/PiNatPublic.lean/declarations/update-mem-cylinder.md) | 178 | `result-track:0081886e0bad63def5de45287e2ad5a34d92ef36d506f5e5d4499e7f4978275c` |
| 18 | `def` | [res](../../../../GeneralTopology/PiNatPublic.lean/declarations/res.md) | 191 | `declaration-track:f9f850d9a41557c99d6094ed6938a59acb1879a36b8a409ac90fe85e65dc19c1` |
| 19 | `theorem` | [res_zero](../../../../GeneralTopology/PiNatPublic.lean/declarations/res-zero.md) | 196 | `result-track:2a99502561694cd5554d0cc21c21d52aa7870ab8397c04b70859624daca7fdc7` |
| 20 | `theorem` | [res_succ](../../../../GeneralTopology/PiNatPublic.lean/declarations/res-succ.md) | 200 | `result-track:4bb2d868d361679f024226bd8954a50976f90a1c16a8eac76b0a58ee46ba3b1c` |
| 21 | `theorem` | [res_length](../../../../GeneralTopology/PiNatPublic.lean/declarations/res-length.md) | 204 | `result-track:1c5be623ffb23e0c39efe1a3fb4baad2d841181665617bfa24dad47f24bf9281` |
| 22 | `theorem` | [res_eq_res](../../../../GeneralTopology/PiNatPublic.lean/declarations/res-eq-res.md) | 207 | `result-track:835e7154f7d441a6e84cb5f3417435c5a691aee566a5b75f9c678397b6dda680` |
| 23 | `theorem` | [res_injective](../../../../GeneralTopology/PiNatPublic.lean/declarations/res-injective.md) | 227 | `result-track:e3a5f39a9a5505b01917025ddb5076e2575405faa95db8b513e84e7be288c188` |
| 24 | `theorem` | [cylinder_eq_res](../../../../GeneralTopology/PiNatPublic.lean/declarations/cylinder-eq-res.md) | 234 | `result-track:4c576097bcadcca8d41c9c03e13aa2d1c192898804d818e3f709f96eecfc8a96` |
| 25 | `def` | [dist](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-source-edition-2.md) | 256 | `declaration-track:a723419bf00d0d13fe2f88421bd47f87b0a85560765bc1b493bf45ebe2c1a4ac` |
| 26 | `theorem` | [dist_eq_of_ne](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-eq-of-ne.md) | 261 | `result-track:fbc3aa19d101dba17bed102d9b58f4085c85c77f32b695c4cb904dae9efd4384` |
| 27 | `theorem` | [dist_self](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-self.md) | 264 | `result-track:675c5dd0ba1d0a73ccb1615c86439974f9ca2176ebea7ae45989ecb0f4897699` |
| 28 | `theorem` | [dist_comm](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-comm.md) | 266 | `result-track:2593658a7cba1699e53668b9f6939815cef191ae0071107ba29fd9a8883b6407` |
| 29 | `theorem` | [dist_nonneg](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-nonneg.md) | 270 | `result-track:7d6e506edbbc76d1ed556511f4718ed8ff8b2d31081c21b813c9fe76063a136d` |
| 30 | `theorem` | [dist_le_one](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-le-one.md) | 275 | `result-track:b6aadd74e42e4b59291dbebdc5ef607478efa4c30376f5fd922dec7714b65399` |
| 31 | `theorem` | [dist_triangle_nonarch](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-triangle-nonarch.md) | 281 | `result-track:183f36c7dabc4f63e8c8c30f8dd0b59a002ff9ae4225553a3658c2d357b43da0` |
| 32 | `theorem` | [dist_triangle](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-triangle.md) | 292 | `result-track:b88f3feb0bec08018a945af461871765ea287c989c7f517b6252637eaef94011` |
| 33 | `theorem` | [eq_of_dist_eq_zero](../../../../GeneralTopology/PiNatPublic.lean/declarations/eq-of-dist-eq-zero.md) | 297 | `result-track:ba25bfe0587c1e211376b469367771b9b77113303ebb746a3b4eaf690d2b8908` |
| 34 | `theorem` | [mem_cylinder_iff_dist_le](../../../../GeneralTopology/PiNatPublic.lean/declarations/mem-cylinder-iff-dist-le.md) | 301 | `result-track:4cab14e6f42ac4ddb27220a0e705188059b49ab80645ab396c0456eb6be926c5` |
| 35 | `theorem` | [apply_eq_of_dist_lt](../../../../GeneralTopology/PiNatPublic.lean/declarations/apply-eq-of-dist-lt.md) | 313 | `result-track:73b6f961bcad6afd0d729ec7c753e7fe4338e597a97b474c7d557cf7ecf4fded` |
| 36 | `theorem` | [lipschitz_with_one_iff_forall_dist_image_le_of_mem_cylinder](../../../../GeneralTopology/PiNatPublic.lean/declarations/lipschitz-with-one-iff-forall-dist-image-le-of-mem-cylinder.md) | 324 | `result-track:2c036e91a0fbd517e9416ad11186f4f6f5a090b54c0a43198bc391bd61ec24e1` |
| 37 | `theorem` | [isOpen_cylinder](../../../../GeneralTopology/PiNatPublic.lean/declarations/isopen-cylinder.md) | 344 | `result-track:5040109272fb4ede5fde62c339de6584db627186cea0aeb413f7e82a393d4fb2` |
| 38 | `theorem` | [isTopologicalBasis_cylinders](../../../../GeneralTopology/PiNatPublic.lean/declarations/istopologicalbasis-cylinders.md) | 348 | `result-track:75901e178d44949e9a149ffdc66c85887ee91312c78ada7159c2078c4849b7a9` |
| 39 | `theorem` | [isOpen_iff_dist](../../../../GeneralTopology/PiNatPublic.lean/declarations/isopen-iff-dist.md) | 372 | `result-track:fb7063f481b85c25895cae558b5859f3923b10dba0a9cae3cdcd4a84c11d53f6` |
| 40 | `def` | [metricSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/metricspace-source-edition-2.md) | 398 | `declaration-track:d29cb2799d54cc3e8f1a466f227381f575541ceca51bc30fda523fb745a3b0e3` |
| 41 | `def` | [metricSpaceOfDiscreteUniformity](../../../../GeneralTopology/PiNatPublic.lean/declarations/metricspaceofdiscreteuniformity.md) | 406 | `declaration-track:a75b8816af05a5442efe16f6c6b8f3a717025728001af940fc12f69d86faf7fb` |
| 42 | `def` | [metricSpaceNatNat](../../../../GeneralTopology/PiNatPublic.lean/declarations/metricspacenatnat.md) | 442 | `declaration-track:2ce879c097b4485c43fa13d16e39e73d81dffb295e633c8fe1edd8466bf8ddf2` |
| 43 | `theorem` | [completeSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/completespace.md) | 447 | `result-track:6aa9ddea2933f7c1d2205a5ca15e9eecdd312751a4946526c2882eb369b10941` |
| 44 | `theorem` | [boundedSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/boundedspace.md) | 455 | `result-track:eaad4c47c0034d82fd15b854071d7bbc13c26e06ce83e31fe8449e097296a4c5` |
| 45 | `theorem` | [exists_disjoint_cylinder](../../../../GeneralTopology/PiNatPublic.lean/declarations/exists-disjoint-cylinder.md) | 470 | `result-track:5bc6402b7c13b10ebd0a9b04323d234dd7e16a9b1dfa176a5dbb9213c1e2ed67` |
| 46 | `def` | [shortestPrefixDiff](../../../../GeneralTopology/PiNatPublic.lean/declarations/shortestprefixdiff.md) | 489 | `declaration-track:3465fea543fe0383dfba868e1c8a6fc0cd155cba8510592d977c3765261f3809` |
| 47 | `theorem` | [firstDiff_lt_shortestPrefixDiff](../../../../GeneralTopology/PiNatPublic.lean/declarations/firstdiff-lt-shortestprefixdiff.md) | 492 | `result-track:1309ffe1ff475c43ebe3495d54750c65bf8780f311f0b1005bce845782965dfc` |
| 48 | `theorem` | [shortestPrefixDiff_pos](../../../../GeneralTopology/PiNatPublic.lean/declarations/shortestprefixdiff-pos.md) | 504 | `result-track:6d4331ae5fbeb4dd2ae23bb66531624ada14965718f849eaffd00f7b20209237` |
| 49 | `def` | [longestPrefix](../../../../GeneralTopology/PiNatPublic.lean/declarations/longestprefix.md) | 512 | `declaration-track:1f82031dce5f4c11216cf7abf610ce189ff20b35ba530e04b9aaf541de28f143` |
| 50 | `theorem` | [firstDiff_le_longestPrefix](../../../../GeneralTopology/PiNatPublic.lean/declarations/firstdiff-le-longestprefix.md) | 515 | `result-track:df0192653341e553da0eae16f99a47fde3cab790053ed96eab977c0813abc8bd` |
| 51 | `theorem` | [inter_cylinder_longestPrefix_nonempty](../../../../GeneralTopology/PiNatPublic.lean/declarations/inter-cylinder-longestprefix-nonempty.md) | 521 | `result-track:2ad1d8568f5eb5063cce575ee5b5728e2c6862b51e2424dc2ae360399c7382d3` |
| 52 | `theorem` | [disjoint_cylinder_of_longestPrefix_lt](../../../../GeneralTopology/PiNatPublic.lean/declarations/disjoint-cylinder-of-longestprefix-lt.md) | 536 | `result-track:9465002328947facaac6a5351a05039be5086ed3f53daaf73472c0532974c136` |
| 53 | `theorem` | [cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff](../../../../GeneralTopology/PiNatPublic.lean/declarations/cylinder-longestprefix-eq-of-longestprefix-lt-firstdiff.md) | 547 | `result-track:aee82fd61f19b6894b9152466d06edaea9984532c851978ffa960a399a5cd653` |
| 54 | `theorem` | [exists_lipschitz_retraction_of_isClosed](../../../../GeneralTopology/PiNatPublic.lean/declarations/exists-lipschitz-retraction-of-isclosed.md) | 572 | `result-track:e55069daa261fe0946f0d1f738d3b8483aae889223a9984d7bd77f8a411cf38b` |
| 55 | `theorem` | [exists_retraction_of_isClosed](../../../../GeneralTopology/PiNatPublic.lean/declarations/exists-retraction-of-isclosed.md) | 676 | `result-track:99a68aab70af0027824cd9ae4bc081633c498e9ef0bcf54c9b36b212684da31d` |
| 56 | `theorem` | [exists_retraction_subtype_of_isClosed](../../../../GeneralTopology/PiNatPublic.lean/declarations/exists-retraction-subtype-of-isclosed.md) | 681 | `result-track:b3629aa74ac883d47f6ac9892cd76ff1b0940943f4092f102bb4e29410fb5586` |
| 57 | `theorem` | [exists_nat_nat_continuous_surjective_of_completeSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/exists-nat-nat-continuous-surjective-of-completespace.md) | 697 | `result-track:582f4fd12e3a3d0a2f5ce815de260bd12e0752ebc1c49a93fa9032956c9c4aa1` |
| 58 | `def` | [edist](../../../../GeneralTopology/PiNatPublic.lean/declarations/edist.md) | 801 | `declaration-track:fd81d31b26977cf7657c2903dd40569cc9211705ac2d1380dcf1e52658ba2d9f` |
| 59 | `lemma` | [edist_eq_tsum](../../../../GeneralTopology/PiNatPublic.lean/declarations/edist-eq-tsum.md) | 806 | `result-track:06bf48a5944816d486f0ffb979fc6e4fe8ed37c5a807924aced57693fc0b712a` |
| 60 | `lemma` | [min_edist_le_edist_pi](../../../../GeneralTopology/PiNatPublic.lean/declarations/min-edist-le-edist-pi.md) | 809 | `result-track:d30c8724773489c1420319330b21e8123b347eb4af2bace97417a2f33b22bd5d` |
| 61 | `lemma` | [edist_le_two](../../../../GeneralTopology/PiNatPublic.lean/declarations/edist-le-two.md) | 813 | `result-track:a2a049da6063ee1afa2684696eadc2c89f60f53803f31f873ab40d8a997eb8e5` |
| 62 | `lemma` | [edist_lt_top](../../../../GeneralTopology/PiNatPublic.lean/declarations/edist-lt-top.md) | 817 | `result-track:7450b8e7db1d01a035c41334aced4b2184f47e254ff17c052ff8d81d285f254a` |
| 63 | `lemma` | [edist_le_edist_pi_of_edist_lt](../../../../GeneralTopology/PiNatPublic.lean/declarations/edist-le-edist-pi-of-edist-lt.md) | 819 | `result-track:359af400670795ef66fe7791523146617f3498d154860355fa451e7fae5337e9` |
| 64 | `def` | [pseudoEMetricSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/pseudoemetricspace.md) | 836 | `declaration-track:48b1ab1be96b8edbdb07ca239baa32591cc7cd6e4e118581d54a765733ff17bc` |
| 65 | `def` | [emetricSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/emetricspace-source-edition-2.md) | 900 | `declaration-track:40f080f7ed7331b6fce5703392cfbc5a1ae570b1a3df3cace16f6ce2b8de80ac` |
| 66 | `def` | [dist](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist.md) | 916 | `declaration-track:48f9c5e2e8096cbf90731310a67bba0f7b00f417489a71cd319cebd5ea8a7f5f` |
| 67 | `lemma` | [dist_eq_tsum](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-eq-tsum.md) | 921 | `result-track:d463f4d5926f1215fd8d6ae72d4ab4cdf5a9f0fa451b7231c27d38dfc5d5df47` |
| 68 | `lemma` | [dist_summable](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-summable.md) | 924 | `result-track:fa31096fdd2541545461cdd83199e2f3959b499be21c2ac14b9f18b6a486908e` |
| 69 | `lemma` | [min_dist_le_dist_pi](../../../../GeneralTopology/PiNatPublic.lean/declarations/min-dist-le-dist-pi.md) | 930 | `result-track:a300032deb902d169602c578a829ae72f8b7c599c5defa8b4ac8ff12548b3d09` |
| 70 | `lemma` | [dist_le_dist_pi_of_dist_lt](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-le-dist-pi-of-dist-lt.md) | 934 | `result-track:17c49fe77389575ecbda9482d307109be1600bc47191df590063ae6cdbdc85fa` |
| 71 | `def` | [pseudoMetricSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/pseudometricspace.md) | 942 | `declaration-track:bc284a8580ffefa59ffae6bd739ccc25876e5077c3d5ddd0e0b7d80790224e9e` |
| 72 | `def` | [metricSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/metricspace.md) | 961 | `declaration-track:7833f94f16f39ab134df910e2d202417ff85e6c00490215d749cc0b5906e003b` |
| 73 | `structure` | [PiNatEmbed](../../../../GeneralTopology/PiNatPublic.lean/declarations/pinatembed.md) | 980 | `declaration-track:cd8e12202af04206e9fae02b9a2edfe24eb1b877bc574c9f93e93327acec5e7a` |
| 74 | `lemma` | [ext](../../../../GeneralTopology/PiNatPublic.lean/declarations/ext.md) | 988 | `result-track:38b1405317ded29717485c5569484ce8794d2c3a1a3aec965a392042257aa3f5` |
| 75 | `def` | [toPiNatEquiv](../../../../GeneralTopology/PiNatPublic.lean/declarations/topinatequiv.md) | 994 | `declaration-track:bf620e881ee889b02b1e4c80def43de20080d21d797803e6a8be9f8d13577cfb` |
| 76 | `lemma` | [ofPiNat_inj](../../../../GeneralTopology/PiNatPublic.lean/declarations/ofpinat-inj.md) | 1000 | `result-track:f2e558b730d83c991b2b53238c996181cd19f0547fdace10cb4a2685f2e08c1e` |
| 77 | `lemma` | [«forall»](../../../../GeneralTopology/PiNatPublic.lean/declarations/forall.md) | 1003 | `result-track:9e8ab369069ed959f563bba24dc1591ed5a401d75fd472a955508bc1d3951827` |
| 78 | `def` | [embed](../../../../GeneralTopology/PiNatPublic.lean/declarations/embed.md) | 1008 | `declaration-track:421981a9070fe67ce6b7060b5971cdec8a8d1e20140f18e1bc62125b7bb24a21` |
| 79 | `lemma` | [embed_injective](../../../../GeneralTopology/PiNatPublic.lean/declarations/embed-injective.md) | 1010 | `result-track:bf525df3b56ed233bb4712be5c3a71d26522237993b8b957a75748796904d344` |
| 80 | `instance` | [(anonymous)](../../../../GeneralTopology/PiNatPublic.lean/declarations/instance.md) | 1019 | `declaration-track:60e1681da2651a47c2df302411c0f030da9f97c306649a626b4fdd38f8b2f491` |
| 81 | `lemma` | [edist_def](../../../../GeneralTopology/PiNatPublic.lean/declarations/edist-def.md) | 1022 | `result-track:8e1f2ace6063c1a18443a5770e9822d7dd2022cca84173a3d69ec879107ddaec` |
| 82 | `lemma` | [isometry_embed](../../../../GeneralTopology/PiNatPublic.lean/declarations/isometry-embed.md) | 1025 | `result-track:c05c5fca66a90c63479e995688cc5062b8a22455a166f2c3d1768a362155acef` |
| 83 | `instance` | [(anonymous)](../../../../GeneralTopology/PiNatPublic.lean/declarations/instance-source-edition-2.md) | 1032 | `declaration-track:cc1b2e3e438a5070799f2f37d78ba1418286dec2c51f8a707053ed240fb37793` |
| 84 | `lemma` | [dist_def](../../../../GeneralTopology/PiNatPublic.lean/declarations/dist-def.md) | 1035 | `result-track:3fdbad0120994603b1e8f59c6cbdc4170fb636ba43d66146e7750c9561a80cce` |
| 85 | `lemma` | [continuous_toPiNat](../../../../GeneralTopology/PiNatPublic.lean/declarations/continuous-topinat.md) | 1040 | `result-track:b06c3bce7eb32f5f81e1b2f556387d63f2d048f5f9cb5eb1a0eb8225988c8415` |
| 86 | `abbrev` | [emetricSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/emetricspace.md) | 1053 | `declaration-track:401a47a1bfc8c0b9a4b6cd686ce66f33aca71533a97e49181595271bf427b13e` |
| 87 | `lemma` | [isUniformEmbedding_embed](../../../../GeneralTopology/PiNatPublic.lean/declarations/isuniformembedding-embed.md) | 1057 | `result-track:ed3635b10f6cb574f046262dccf03c3ba928d0469dcd287a10c25b826e4f7b97` |
| 88 | `abbrev` | [metricSpace](../../../../GeneralTopology/PiNatPublic.lean/declarations/metricspace-source-edition-3.md) | 1069 | `declaration-track:f73fa89a531012c50ba7851b5125df736d41c138cd1c36e3f9451d53d1e46844` |
| 89 | `lemma` | [isHomeomorph_toPiNat](../../../../GeneralTopology/PiNatPublic.lean/declarations/ishomeomorph-topinat.md) | 1076 | `result-track:c948ad675dfa7e26570d87178701a33b536f420b07e274fb8b3890b4912c9b20` |
| 90 | `def` | [toPiNatHomeo](../../../../GeneralTopology/PiNatPublic.lean/declarations/topinathomeo.md) | 1087 | `declaration-track:e8fd46e1df408171e31c73fa842d25b783af0406d8034e77474d289d075aeae2` |
| 91 | `lemma` | [TopologicalSpace.MetrizableSpace.of_countable_separating](../../../../GeneralTopology/PiNatPublic.lean/declarations/topologicalspace-metrizablespace-of-countable-separating.md) | 1095 | `result-track:d6ed44ea3b8f2d32a657fe26329072edf83ae8ba791b596bfa5c9ce3cd1f033c` |
| 92 | `abbrev` | [distDenseSeq](../../../../GeneralTopology/PiNatPublic.lean/declarations/distdenseseq.md) | 1114 | `declaration-track:755d7ecc61f942d84848fe7c1eec72f0bdff165de295f438da0939eb05212a61` |
| 93 | `lemma` | [continuous_distDenseSeq](../../../../GeneralTopology/PiNatPublic.lean/declarations/continuous-distdenseseq.md) | 1118 | `result-track:c86e59d8349f9ad2be68fee3039133b5a14a640557367785e573fa0e4353de1c` |
| 94 | `lemma` | [separation](../../../../GeneralTopology/PiNatPublic.lean/declarations/separation.md) | 1124 | `result-track:ad32cbf6ec059e9d60132e3a2cd037c2755713db01c5721afda1c213ca45bc3b` |
| 95 | `lemma` | [injective_distDenseSeq](../../../../GeneralTopology/PiNatPublic.lean/declarations/injective-distdenseseq.md) | 1141 | `result-track:9090fe98d165f2aaf8c78e8986e82d89f91ace34b88be18b7f25b43786eb3ea2` |
| 96 | `lemma` | [continuous_distDenseSeq_inv](../../../../GeneralTopology/PiNatPublic.lean/declarations/continuous-distdenseseq-inv.md) | 1146 | `result-track:d2e2edb93e504ef53830871922307866a105d83fb6d2464355ed85b06b1632bd` |
| 97 | `theorem` | [exists_embedding_to_hilbert_cube](../../../../GeneralTopology/PiNatPublic.lean/declarations/exists-embedding-to-hilbert-cube.md) | 1153 | `result-track:5d4654f5953b200e609e9e6835ffe2b4b044998ce3a02d9deb2de04aac16cc35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbd2296e4cdac926f68427a77eba6a20949c6e0bec54bbe4f3c08cfbb0cb1f6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PiNat/Varianta6d5b738f8217038bc1b2889f5fa0f0ea84b544dbc21761e90b35dcf8cd0d669.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
