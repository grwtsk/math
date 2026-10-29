# Verification target: Pi Nat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2bda182d92ad616fe5d318db1ee0819ec801897",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PiNatNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PiNatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2bda182d92ad616fe5d318db1ee0819ec801897`.

Source path: `GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean.json)

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
| 1 | `theorem` | [apply_firstDiff_ne](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/apply-firstdiff-ne.md) | 88 | `result-track:7ac2a17690fe93c5b1a5ee50c82e4dc4c35015407b3b4a4b1a7a40e95b3a5ff3` |
| 2 | `theorem` | [apply_eq_of_lt_firstDiff](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/apply-eq-of-lt-firstdiff.md) | 94 | `result-track:d3e6a59537b27cfb4fd56cc6c9d3646f49410895c749b6e9e4590c2deaefa93b` |
| 3 | `theorem` | [firstDiff_comm](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/firstdiff-comm.md) | 98 | `result-track:93b5c721d17e70109a09fac024759d01edf1116fc39050257cd9eea2c46f5718` |
| 4 | `theorem` | [min_firstDiff_le](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/min-firstdiff-le.md) | 102 | `result-track:fbe86b058b3f5eace686f329b4713f64ebffd6fa5f58782ab50b2baa445a6e63` |
| 5 | `def` | [cylinder](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/cylinder.md) | 117 | `declaration-track:e8ec12b3879f394d26eafdca52b16d5d94ffd0021ff6b8c558b80dff453949c3` |
| 6 | `theorem` | [cylinder_eq_pi](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/cylinder-eq-pi.md) | 120 | `result-track:93a64fb75a62ddb5895de0fe150f381fbfb861b0896767a60e817c8700a93ca5` |
| 7 | `theorem` | [cylinder_zero](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/cylinder-zero.md) | 126 | `result-track:077ea1bc78dfe0b70cea2fb01cc052ab2bb3547f9a29e83f276481512b5b84dd` |
| 8 | `theorem` | [cylinder_anti](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/cylinder-anti.md) | 128 | `result-track:2128ce9aef32bc592122d6b31eefcaa2b7e77153571532ae5262d1906a506295` |
| 9 | `theorem` | [mem_cylinder_iff](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/mem-cylinder-iff.md) | 132 | `result-track:8297cb36a8ca6ee22d980aeaa5dd37521d14b6d8172da47c987d3ad52d077da5` |
| 10 | `theorem` | [self_mem_cylinder](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/self-mem-cylinder.md) | 135 | `result-track:656ccb79f88db82f4a078fb64103f53456864dc1670ba131a9c2fb925aad2e62` |
| 11 | `theorem` | [mem_cylinder_iff_eq](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/mem-cylinder-iff-eq.md) | 137 | `result-track:85714f040bcc3b37c58844d40a8eb7097ef77788d1438983b8c10fc91df5385f` |
| 12 | `theorem` | [mem_cylinder_comm](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/mem-cylinder-comm.md) | 152 | `result-track:b698ea84865854537aa7f20c019b0d76b136d35f666254a2cf27dd1973723412` |
| 13 | `theorem` | [mem_cylinder_iff_le_firstDiff](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/mem-cylinder-iff-le-firstdiff.md) | 155 | `result-track:0e00e9f12ca0220d6388680a01c3c06140feae0d32060885d40913449a94b4d8` |
| 14 | `theorem` | [mem_cylinder_firstDiff](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/mem-cylinder-firstdiff.md) | 164 | `result-track:e66a96cf7dc76537e40a22fe0e2a0e49583d188dd00c613a8e685acb8a58f785` |
| 15 | `theorem` | [cylinder_eq_cylinder_of_le_firstDiff](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/cylinder-eq-cylinder-of-le-firstdiff.md) | 167 | `result-track:02914b5f6835cb7f3f856084ffa2b0f9e28b9f005dfb33a3ab6348e9998eeae1` |
| 16 | `theorem` | [iUnion_cylinder_update](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/iunion-cylinder-update.md) | 173 | `result-track:692c9861844f54dcd399c04d85afb8c063c40d520a96e86f3ee687df665daed1` |
| 17 | `theorem` | [update_mem_cylinder](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/update-mem-cylinder.md) | 186 | `result-track:342893b193c20b8b44825ff04e2084a8031aa2894d26d46438777fad7b1912f2` |
| 18 | `def` | [res](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/res.md) | 199 | `declaration-track:fcbf52ed35c9dfa00bb54913b2680fea38330e6ae1bad645bf10e48b1235370d` |
| 19 | `theorem` | [res_zero](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/res-zero.md) | 204 | `result-track:6e8f19fe9a256715cca4c411647eb59e9cc3bd0bc1a8bb54b8032c8cb48f59f1` |
| 20 | `theorem` | [res_succ](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/res-succ.md) | 208 | `result-track:9f10545aeb64e8fa5e322c90dc2405677b22c0cad567758e55450bf5787c7884` |
| 21 | `theorem` | [res_length](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/res-length.md) | 212 | `result-track:966e204a0c0dffe6ae8a485ece5532787c863bd65236f83155d67e08916260a0` |
| 22 | `theorem` | [res_eq_res](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/res-eq-res.md) | 215 | `result-track:1a28c40c3fcd54e7b63666ffbb3e23ae40d47ae0696b900495d7cf35c5d1a752` |
| 23 | `theorem` | [res_injective](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/res-injective.md) | 235 | `result-track:f04583eeefde2d2063923ca565cce828527b6ab295f965c9dd5af729f71ff0b9` |
| 24 | `theorem` | [cylinder_eq_res](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/cylinder-eq-res.md) | 242 | `result-track:4fdf26ea1c48cebc1508359c780e4d689cf82102341f80739cbd49f46bad2052` |
| 25 | `def` | [dist](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist.md) | 264 | `declaration-track:930dbb7a39fbea6526b7421b663977c23611bbaec20cf99bd897e933f0b05518` |
| 26 | `theorem` | [dist_eq_of_ne](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-eq-of-ne.md) | 269 | `result-track:390fbc6f95daa7f29c03bb1a8e77a272b17260ffeb2c96593988c5c683fbc722` |
| 27 | `theorem` | [dist_self](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-self.md) | 272 | `result-track:cc5dcdaaeb46d8a92c38eb4a7d25cc71b22af11499f609ca44b697ebac707b57` |
| 28 | `theorem` | [dist_comm](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-comm.md) | 274 | `result-track:93328e856731354808f7d4a89b10a73c045a4b0970488ea5fc8f88ac4c39e80c` |
| 29 | `theorem` | [dist_nonneg](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-nonneg.md) | 278 | `result-track:426b9dabc20ea5d2fc4064d16d9ffe959561b9409972f5d51e108c6424350376` |
| 30 | `theorem` | [dist_le_one](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-le-one.md) | 283 | `result-track:fd6cc1fe4f75b9d5da26a1d36874a156a65212a345dbc50ca6179f1a1f63bbf7` |
| 31 | `theorem` | [dist_triangle_nonarch](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-triangle-nonarch.md) | 289 | `result-track:bd5e53914100035689bfefb04e5ccf77a472275b07aa7466daa9924f97f7a4a6` |
| 32 | `theorem` | [dist_triangle](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-triangle.md) | 300 | `result-track:baad971cc9269d54d67cb9203d406c3704ff011532adf49cf9a5b17665aff530` |
| 33 | `theorem` | [eq_of_dist_eq_zero](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/eq-of-dist-eq-zero.md) | 305 | `result-track:627e7dbe59cc82aecf93a6fa3930cfd134e81f122df8a1f4ba5df89aee19bfa4` |
| 34 | `theorem` | [mem_cylinder_iff_dist_le](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/mem-cylinder-iff-dist-le.md) | 309 | `result-track:22f56fc84efd1309f94601e5fbeb7bbe6c20b71624a94c153d9a5f81bb0adcec` |
| 35 | `theorem` | [apply_eq_of_dist_lt](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/apply-eq-of-dist-lt.md) | 321 | `result-track:340457c3dfa0db869f29abf84f9266406af03a8dfcad758a2ba7e96421d6356c` |
| 36 | `theorem` | [lipschitz_with_one_iff_forall_dist_image_le_of_mem_cylinder](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/lipschitz-with-one-iff-forall-dist-image-le-of-mem-cylinder.md) | 332 | `result-track:569ed799cb65bc7d040070facb535f84526fa4fb06e0cfebedec1a9d590b9849` |
| 37 | `theorem` | [isOpen_cylinder](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/isopen-cylinder.md) | 352 | `result-track:bccbf768bda8d5da611163225ff0e388e1355e474ae84a1fac3ebae0e94e65ae` |
| 38 | `theorem` | [isTopologicalBasis_cylinders](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/istopologicalbasis-cylinders.md) | 356 | `result-track:f4f0db082895ea482844b2e1eac1db92d6dcad08679d02abcf7636f202aac501` |
| 39 | `theorem` | [isOpen_iff_dist](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/isopen-iff-dist.md) | 380 | `result-track:7b0a0f788a3fedb047979bdbbf7fafd50126729f2a3de9d12ccccb3c1bd3b60e` |
| 40 | `def` | [metricSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/metricspace.md) | 406 | `declaration-track:3ffb3e4de3abd80056d5b6a92bb25cdae9b1e0769aec00412b940a6fca6ebe08` |
| 41 | `def` | [metricSpaceOfDiscreteUniformity](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/metricspaceofdiscreteuniformity.md) | 414 | `declaration-track:2ef7787b8203498b8a82543e5e782f71d4455e044be84765095345814af4d7f2` |
| 42 | `def` | [metricSpaceNatNat](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/metricspacenatnat.md) | 450 | `declaration-track:09c75789d10e2e38d6be58402463b33da26f88e281096bf3f0944f22813f885b` |
| 43 | `theorem` | [completeSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/completespace.md) | 455 | `result-track:f594110239fd76268aa8331a7fa2b10232026056b070877ccb23fc677d21b6c3` |
| 44 | `theorem` | [boundedSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/boundedspace.md) | 463 | `result-track:35cf61d4a45aaebc6d19d82e11d783e67734bcf5c085eaa4a9776c8865cde269` |
| 45 | `theorem` | [exists_disjoint_cylinder](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/exists-disjoint-cylinder.md) | 478 | `result-track:ea23f189e3b5ac1c01b7f38c7a95fec59e101e44b240440c6ea84fdc8fd77321` |
| 46 | `def` | [shortestPrefixDiff](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/shortestprefixdiff.md) | 497 | `declaration-track:6c542ccc08193b161c526e1e667626823e830214fedae74cf866660953291417` |
| 47 | `theorem` | [firstDiff_lt_shortestPrefixDiff](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/firstdiff-lt-shortestprefixdiff.md) | 500 | `result-track:fab8d4b2e0970c77ec5c2272aee5e08f3aa0a038941e9c39894f1b870fd16f99` |
| 48 | `theorem` | [shortestPrefixDiff_pos](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/shortestprefixdiff-pos.md) | 512 | `result-track:f26c9ecea86b4eb5bb6c7cd18c50e7a43edea6c5a651d7e39ed98e25396eca53` |
| 49 | `def` | [longestPrefix](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/longestprefix.md) | 520 | `declaration-track:c5dca9eaa78186f445ff6aa1d6053118af16095fde89393eaa9507abf5109d61` |
| 50 | `theorem` | [firstDiff_le_longestPrefix](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/firstdiff-le-longestprefix.md) | 523 | `result-track:364c128732491793a92f0648a0b16b30589a10b4262788e5228656ecdb517880` |
| 51 | `theorem` | [inter_cylinder_longestPrefix_nonempty](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/inter-cylinder-longestprefix-nonempty.md) | 529 | `result-track:de0ec85b864daa93eefda875a0cc3ee0d265d84f831db3083c5de57bfc7b127b` |
| 52 | `theorem` | [disjoint_cylinder_of_longestPrefix_lt](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/disjoint-cylinder-of-longestprefix-lt.md) | 544 | `result-track:f891461e55c4bc9c8312b46514b7ab609bcfe22da596fd1cdef2ee9f343ff1cd` |
| 53 | `theorem` | [cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/cylinder-longestprefix-eq-of-longestprefix-lt-firstdiff.md) | 555 | `result-track:ad11f315113e82b6b67bbfff6ca6c2fb15ecc0e9147da24295ad6d8c02ec2543` |
| 54 | `theorem` | [exists_lipschitz_retraction_of_isClosed](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/exists-lipschitz-retraction-of-isclosed.md) | 580 | `result-track:125cb550dd33c10ae43806682e2126a326c4d4905b197247f3887800836a1086` |
| 55 | `theorem` | [exists_retraction_of_isClosed](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/exists-retraction-of-isclosed.md) | 684 | `result-track:145ff5323467a94b5fbbf368708ca34ce9954fbe9b774589863c36c79dc3e408` |
| 56 | `theorem` | [exists_retraction_subtype_of_isClosed](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/exists-retraction-subtype-of-isclosed.md) | 689 | `result-track:bc608aca47ca9c3bbb5c4a57e59c686b0bb1e075b2dd03e7aabf397c2c147015` |
| 57 | `theorem` | [exists_nat_nat_continuous_surjective_of_completeSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/exists-nat-nat-continuous-surjective-of-completespace.md) | 705 | `result-track:2b3ba174f22e2345bdec28f03eedb7c2da0a70d5d144543f1b00589a05707c16` |
| 58 | `def` | [edist](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/edist.md) | 809 | `declaration-track:95e4646c80ab03dd2454929362ba80bb314e47f9b399b0f0f9c212f340ddaf63` |
| 59 | `lemma` | [edist_eq_tsum](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/edist-eq-tsum.md) | 814 | `result-track:6dbf23d68b3f77008e5db26ade91af51edf42152aae9b1891cbeb85a3c25a049` |
| 60 | `lemma` | [min_edist_le_edist_pi](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/min-edist-le-edist-pi.md) | 817 | `result-track:f9c33defe5eb45f4ec18e6e81ec2ea7f196b56dac096a611dbd60ce3bc126db7` |
| 61 | `lemma` | [edist_le_two](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/edist-le-two.md) | 821 | `result-track:e7180f05c9609f92934169bbe0510651c7aef292f674aa5dcbfe5f5437c15a6f` |
| 62 | `lemma` | [edist_lt_top](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/edist-lt-top.md) | 825 | `result-track:c9e51c608cb484e45bef05f500ce1c5265a9af8c54190f86f0b725a2355bb7c4` |
| 63 | `lemma` | [edist_le_edist_pi_of_edist_lt](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/edist-le-edist-pi-of-edist-lt.md) | 827 | `result-track:deebb65129d81c6ec821b5d0fb4c5497a635ff98edb1cf084d26e3c6b8df2d90` |
| 64 | `def` | [pseudoEMetricSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/pseudoemetricspace.md) | 844 | `declaration-track:ddcb2cc0a9c4256cb61da46750487b5b19f000c611c16d7fe87d511e239cc0f2` |
| 65 | `def` | [emetricSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/emetricspace.md) | 908 | `declaration-track:0cb5f77503fb8c64dd107e83569013f9e5e450e057125ceda8f3a23832b17ee1` |
| 66 | `def` | [dist](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-source-edition-2.md) | 924 | `declaration-track:bfd93c5164378c656ac539a59c5335fc4b920127dd89aef580e1f8fdc473bf39` |
| 67 | `lemma` | [dist_eq_tsum](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-eq-tsum.md) | 929 | `result-track:eb5c55764c3d5a9a25ef408fb825bc6769e431edb427291f70ec0c40046834a8` |
| 68 | `lemma` | [dist_summable](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-summable.md) | 932 | `result-track:9f18e84e783d25c32f94d503bae615d3d42848df2dce4a08a8ba91e3d2dd49b6` |
| 69 | `lemma` | [min_dist_le_dist_pi](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/min-dist-le-dist-pi.md) | 938 | `result-track:aacfb24d51eb7e81aba35c047ad9007be9ba64cad3ba2fca88a137d83b865211` |
| 70 | `lemma` | [dist_le_dist_pi_of_dist_lt](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-le-dist-pi-of-dist-lt.md) | 942 | `result-track:1252d2ab0255af394bd6ceeb206ee7ec527721091af8323052f5106b3604eba1` |
| 71 | `def` | [pseudoMetricSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/pseudometricspace.md) | 950 | `declaration-track:9960c2e3522f721b0c756f3cda0f3acf981a4a50015248be9cdc778482c171d3` |
| 72 | `def` | [metricSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/metricspace-source-edition-2.md) | 969 | `declaration-track:8d5c9beeb20e6ff839246ccc25698021487061a7df799847d3d265637c07a283` |
| 73 | `structure` | [PiNatEmbed](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/pinatembed.md) | 988 | `declaration-track:80bda25a537cd7c3c5b988a65f9807fd0e4fec30a449a8afcc859b6690063ab4` |
| 74 | `lemma` | [ext](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/ext.md) | 996 | `result-track:f28f7d81e45540e289d8fe5bcfad014509906973c3fd3df65a1667bf81c63a39` |
| 75 | `def` | [toPiNatEquiv](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/topinatequiv.md) | 1002 | `declaration-track:6a1590ec85d075ad27ec0123699b4b3aac0750fd78f47e51f59264714704c860` |
| 76 | `lemma` | [ofPiNat_inj](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/ofpinat-inj.md) | 1008 | `result-track:509e747e17a9f93fd6662ecfbebab87d7a5e7c5282ee68142ca3576bdb6412d3` |
| 77 | `lemma` | [«forall»](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/forall.md) | 1011 | `result-track:4fcf55ecbc242c21abe10dbc50a1309fd847b986860f343b90d10a569ed87dd3` |
| 78 | `def` | [embed](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/embed.md) | 1016 | `declaration-track:2500e3fee5f5aeb23ba695a01aad8f66232d67b33fee9c8e64a8bbcfb4ae2edf` |
| 79 | `lemma` | [embed_injective](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/embed-injective.md) | 1018 | `result-track:0a57e043cd0c65f7aff8d50bfbb8ec12e6b6a44b6d2fddc81036851d5fc88915` |
| 80 | `instance` | [(anonymous)](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 1027 | `declaration-track:163eab7487baa7ea4df98a2be03860f429e782028de9eeb3edb3008e8beab841` |
| 81 | `lemma` | [edist_def](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/edist-def.md) | 1030 | `result-track:0d6a42785b80118e8fcba873f68ae8cf824f9f52d89f8108144881c54fb94f03` |
| 82 | `lemma` | [isometry_embed](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/isometry-embed.md) | 1033 | `result-track:f7f52fe2c1d7ca03929f2bc14fe46d9dd57b59a717ff80bd26ad3f81af3cc2dd` |
| 83 | `instance` | [(anonymous)](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/instance.md) | 1040 | `declaration-track:0b72c1906c73847a5cbe39ce9434984b48749a8e6bed85639e6bf49482cd0d24` |
| 84 | `lemma` | [dist_def](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/dist-def.md) | 1043 | `result-track:a97d2c70022d6a8cc0d149724871aceb690308d30d8d3c74d7e731bab8796d36` |
| 85 | `lemma` | [continuous_toPiNat](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/continuous-topinat.md) | 1048 | `result-track:b71d2880058cd0e6ffe87f9910c784f8d23323511a8402a61b570e47b9e3e8b3` |
| 86 | `abbrev` | [emetricSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/emetricspace-source-edition-2.md) | 1061 | `declaration-track:0f2e77ac8e2f36b9de2842ddca49886129ac9e74d4bfc78deda565f40c728f43` |
| 87 | `lemma` | [isUniformEmbedding_embed](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/isuniformembedding-embed.md) | 1065 | `result-track:935a9b05f51eb5bdad54d250b81d9d17dcc2a8fc678ab31807098b56ce936008` |
| 88 | `abbrev` | [metricSpace](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/metricspace-source-edition-3.md) | 1077 | `declaration-track:9a7c8965f1377a0c6eb02331f1f1ae33ad8ff9c0c028c4072a87cc214fe91787` |
| 89 | `lemma` | [isHomeomorph_toPiNat](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/ishomeomorph-topinat.md) | 1084 | `result-track:cd79480626e1128fe794de219525db0bb1c32063113b3cefbd1a3ebcd797982e` |
| 90 | `def` | [toPiNatHomeo](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/topinathomeo.md) | 1095 | `declaration-track:dde618044c84452f7a9f6e59874eb933ead3b5e263ca7c2c52708492e122a09d` |
| 91 | `lemma` | [TopologicalSpace.MetrizableSpace.of_countable_separating](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/topologicalspace-metrizablespace-of-countable-separating.md) | 1103 | `result-track:96e5e4323c16d7258f0e2e1f84e8e91b465b2b38a436ee8560684afb11cc82d9` |
| 92 | `abbrev` | [distDenseSeq](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/distdenseseq.md) | 1122 | `declaration-track:92711bc75664453a398fba2dd128c23a2e2d86a741b2314f6b6ab5ccf132eceb` |
| 93 | `lemma` | [continuous_distDenseSeq](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/continuous-distdenseseq.md) | 1126 | `result-track:b85f5907c3e6c6b56264ddb98d958f107d3ede0a30feb1e0fd01ca6e358f707f` |
| 94 | `lemma` | [separation](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/separation.md) | 1132 | `result-track:a9ab592f11a72b00ab16d049c70d2e5617568e69b19a8e241cdf712b60850f4a` |
| 95 | `lemma` | [injective_distDenseSeq](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/injective-distdenseseq.md) | 1149 | `result-track:47865eb9fe2f6545795c7581d39188afb203a1d61683d449596b732b8ad41b93` |
| 96 | `lemma` | [continuous_distDenseSeq_inv](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/continuous-distdenseseq-inv.md) | 1154 | `result-track:76df0436b9c61070b12d5c8611e79f68ff310c7f42d223a6d6b919faeb9a5abe` |
| 97 | `theorem` | [exists_embedding_to_hilbert_cube](../../../../GeneralTopology/PiNatNamespacedPublic.lean/declarations/exists-embedding-to-hilbert-cube.md) | 1161 | `result-track:31d0141c84a7d83d4c8a56416afdc198ed72d6e304c1d06229e3a3298f874d31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1aaaba9d390679cd9814d41c5676ddf09661a8dc9143e3b896ea2e40a952c25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
