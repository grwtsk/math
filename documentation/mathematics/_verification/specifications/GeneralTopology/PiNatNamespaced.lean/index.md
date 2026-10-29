# Verification target: Pi Nat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44c5d988f5a1019f59a0fed5fbd348c5bef91c11",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PiNatNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/PiNatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44c5d988f5a1019f59a0fed5fbd348c5bef91c11`.

Source path: `GRWTSK/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [apply_firstDiff_ne](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/apply-firstdiff-ne.md) | 76 | `result-track:cadfa93d2d0f6cb137da98552ff96fa139f4960b2a43aa809b42a5023a682647` |
| 2 | `theorem` | [apply_eq_of_lt_firstDiff](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/apply-eq-of-lt-firstdiff.md) | 82 | `result-track:6360a1203344af1e9d885142173a76b72e5bd0e4a61fca4932d271a2c95f0d7a` |
| 3 | `theorem` | [firstDiff_comm](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/firstdiff-comm.md) | 89 | `result-track:bb81df37e5d9a96e43b7bf9c68ccb6d216dfef35c624700933eeb76f5d1f0c64` |
| 4 | `theorem` | [min_firstDiff_le](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/min-firstdiff-le.md) | 93 | `result-track:1115f5b53870f891223229b60768c42f4a214623100ac8cc5abb83ea2b66cfba` |
| 5 | `def` | [cylinder](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/cylinder.md) | 108 | `declaration-track:266f7d6ea34b20e1e4dc3ca3b64272aa51c2ec0b7456f9a87429c74550c7ed9f` |
| 6 | `theorem` | [cylinder_eq_pi](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/cylinder-eq-pi.md) | 111 | `result-track:bc5a1e9ec311660bb197fd21c563eb20269fe2db23ecab9b3937b135d45a4d5c` |
| 7 | `theorem` | [cylinder_zero](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/cylinder-zero.md) | 117 | `result-track:320968534545e7f33dede8c66fc572c55cb041c95155677d5918a7d01efc823e` |
| 8 | `theorem` | [cylinder_anti](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/cylinder-anti.md) | 119 | `result-track:cb472fdca1d570e234dd28181cd2913ecef061ebdefacd25cca597bbfb87908c` |
| 9 | `theorem` | [mem_cylinder_iff](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/mem-cylinder-iff.md) | 123 | `result-track:7d194a6d859f42bb8b4c6ae4466810cb1bb6a39fdb82e81346a7b974658a6b02` |
| 10 | `theorem` | [self_mem_cylinder](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/self-mem-cylinder.md) | 126 | `result-track:b934e6ccdecb6840d82bce3e071d8ddec87d01e8baa7503aacd410bf99a8897e` |
| 11 | `theorem` | [mem_cylinder_iff_eq](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/mem-cylinder-iff-eq.md) | 128 | `result-track:545fd67df7e1e9b0a05b3c915e27ed15bc8f9077b3c4876569140f881ecdfeed` |
| 12 | `theorem` | [mem_cylinder_comm](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/mem-cylinder-comm.md) | 143 | `result-track:90f9dd9d898cf2b12f9d037d0724f2adbc14281e2567c17ee4ae4d2c58b0c73f` |
| 13 | `theorem` | [mem_cylinder_iff_le_firstDiff](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/mem-cylinder-iff-le-firstdiff.md) | 146 | `result-track:b44cd66cb5bf32f2148f0ea6cdba659664575be7d30cab6317934be9e738f6fc` |
| 14 | `theorem` | [mem_cylinder_firstDiff](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/mem-cylinder-firstdiff.md) | 155 | `result-track:f9fd1361b6daf7bfbe5f809e209d4b2289adbbc85c4c03f317c98320db102698` |
| 15 | `theorem` | [cylinder_eq_cylinder_of_le_firstDiff](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/cylinder-eq-cylinder-of-le-firstdiff.md) | 158 | `result-track:f72ad4d5cdf2484798f27e7c5f2407afb299c28c0cd56ce918b8be38cfdea37e` |
| 16 | `theorem` | [iUnion_cylinder_update](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/iunion-cylinder-update.md) | 164 | `result-track:2729f194b9721635d559e3b0176aedf65296dfcef4c8c6042e25dde5e9e6b379` |
| 17 | `theorem` | [update_mem_cylinder](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/update-mem-cylinder.md) | 177 | `result-track:2ae62238ce41a511adef17f512e357c20cb2065090941628556b09edc2366d47` |
| 18 | `def` | [res](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/res.md) | 190 | `declaration-track:d659f09b5eb67996e840d53af3f17da0ae4d79c6682e26120131cae79b5c79d6` |
| 19 | `theorem` | [res_zero](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/res-zero.md) | 195 | `result-track:be5a8bed1c3b721b2b1eb7e91b12a6c5dcbbf1b4c3a675721c9a5b9502276f33` |
| 20 | `theorem` | [res_succ](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/res-succ.md) | 199 | `result-track:52dd2cc3c90584ee611cfc985fe52fd7307320ba097df2716ad4081c2d0d54ab` |
| 21 | `theorem` | [res_length](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/res-length.md) | 203 | `result-track:b5665dd970e4f0bf30372520d487bdebe79e912f0af30b8ca8dd59ca5e18b635` |
| 22 | `theorem` | [res_eq_res](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/res-eq-res.md) | 206 | `result-track:2dc70bafc92db419daaa5771c34ff5cfaf1207edd93446005cfd12d137b982e0` |
| 23 | `theorem` | [res_injective](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/res-injective.md) | 226 | `result-track:bed12efc3330d42ffa4500d9e2c43cba6b072217e479c337261e2570026141fa` |
| 24 | `theorem` | [cylinder_eq_res](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/cylinder-eq-res.md) | 233 | `result-track:5cd0bb0eeee40fc43aef8896c5f3695e1682519d1d591762d9213fd476dff5f2` |
| 25 | `def` | [dist](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-source-edition-2.md) | 254 | `declaration-track:ff213be327bf2c1abe0fe8accc9f4192a1f66153cd9ee446f68308386de5d6f5` |
| 26 | `theorem` | [dist_eq_of_ne](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-eq-of-ne.md) | 259 | `result-track:1cfd8a413c1bc08e5a1ea2837d654a63d71c17842a5beff85f86ab5419cdb87e` |
| 27 | `theorem` | [dist_self](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-self.md) | 262 | `result-track:e3c8173f1545ff6cfb7ec2dfbd35967df24a5dee1a1f151c1b1ac343f1bfdde5` |
| 28 | `theorem` | [dist_comm](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-comm.md) | 264 | `result-track:8b7ea39c76729c80116fb15b33b5bbb8af3f557580edf9bd640265b453abf208` |
| 29 | `theorem` | [dist_nonneg](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-nonneg.md) | 268 | `result-track:33643d585c2154644acf6a60b9c4b052cee954af30be0aafb0be539508c58b03` |
| 30 | `theorem` | [dist_triangle_nonarch](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-triangle-nonarch.md) | 273 | `result-track:e4536d746e881890f556ba567997fbf4d0eeb995b779342517945cac62f8a93f` |
| 31 | `theorem` | [dist_triangle](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-triangle.md) | 284 | `result-track:cbbb10fc2c88ad81e4ea85a47fe97083413063cd5512aec50b013822c370246c` |
| 32 | `theorem` | [eq_of_dist_eq_zero](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/eq-of-dist-eq-zero.md) | 289 | `result-track:5dd50c53d8f4803f9640070bd99634d21e1bc6c95bd01e740c94cd5b007c3f0f` |
| 33 | `theorem` | [mem_cylinder_iff_dist_le](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/mem-cylinder-iff-dist-le.md) | 293 | `result-track:a92bf78410c478d31b73ccb38a038c92941db2abfce05107bedc92f7eb359a29` |
| 34 | `theorem` | [apply_eq_of_dist_lt](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/apply-eq-of-dist-lt.md) | 305 | `result-track:a0076b67047b60abc0e10291fcd5e37449ae4c25861a24fe80ad70e81db39544` |
| 35 | `theorem` | [lipschitz_with_one_iff_forall_dist_image_le_of_mem_cylinder](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/lipschitz-with-one-iff-forall-dist-image-le-of-mem-cylinder.md) | 316 | `result-track:62af81f4978ca657f5e0782ef1c554e498eaf959b1005a05ac9d5fa2c9a555ce` |
| 36 | `theorem` | [isOpen_cylinder](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/isopen-cylinder.md) | 336 | `result-track:294a1845020aa3928e1f19bd685aa6c31df2466dc35ec571b5cab59769dd5c1c` |
| 37 | `theorem` | [isTopologicalBasis_cylinders](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/istopologicalbasis-cylinders.md) | 340 | `result-track:786d8a6d08c1c24501e17d1f47f73f5eb5fc20e5c9393d4f8002024687064933` |
| 38 | `theorem` | [isOpen_iff_dist](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/isopen-iff-dist.md) | 364 | `result-track:72ef3f305f098cdb8cfc9ec726ac29bb41455c5af836042c4fbe9f110388628a` |
| 39 | `def` | [metricSpace](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/metricspace.md) | 389 | `declaration-track:3dfb3225d7796349646e0f83baba65d0e1cb643841d4d4a7d5b3ce6e087c52cc` |
| 40 | `def` | [metricSpaceOfDiscreteUniformity](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/metricspaceofdiscreteuniformity.md) | 396 | `declaration-track:b2fa6ca464b4b4389071794fc4fc7f7467d33f700f5fee4f25373398663b7262` |
| 41 | `def` | [metricSpaceNatNat](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/metricspacenatnat.md) | 431 | `declaration-track:931d188320e9f4047d47458a5c4bf82e7191e76cfafd028cab7f981fc6dcd236` |
| 42 | `theorem` | [completeSpace](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/completespace.md) | 436 | `result-track:2814ed0f8d078f7130136af7adee887f21755d7682d9e6812ff0066a58e97163` |
| 43 | `theorem` | [exists_disjoint_cylinder](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/exists-disjoint-cylinder.md) | 454 | `result-track:385ffaa59381649ffdd4aff80ee9ef01d2a374ac2732a8a37c666a3284cc9b54` |
| 44 | `def` | [shortestPrefixDiff](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/shortestprefixdiff.md) | 473 | `declaration-track:1504ce4d00faa3c11d33256c3a9118c78c0ff94d70d5a759dc7d69db9ee2fe0f` |
| 45 | `theorem` | [firstDiff_lt_shortestPrefixDiff](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/firstdiff-lt-shortestprefixdiff.md) | 476 | `result-track:c5e72946df68c21d06ebefdb6e3e485ef0f0255013a7490977a7ada66df64817` |
| 46 | `theorem` | [shortestPrefixDiff_pos](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/shortestprefixdiff-pos.md) | 488 | `result-track:8083b29e16fb08999dcbecde0d924608d196666b6ea9e6ec39fe7ce2eaa22491` |
| 47 | `def` | [longestPrefix](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/longestprefix.md) | 496 | `declaration-track:bb8c88c67bcecdc1cb81ead9599705820c81fcf3d1777df7d2e34e5118de63f5` |
| 48 | `theorem` | [firstDiff_le_longestPrefix](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/firstdiff-le-longestprefix.md) | 499 | `result-track:4ce7751886ab348105f508d3b9203768a46b129124dd03d7ef237bd886943871` |
| 49 | `theorem` | [inter_cylinder_longestPrefix_nonempty](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/inter-cylinder-longestprefix-nonempty.md) | 505 | `result-track:63ab98ab7397dad0ee0b376e1c87cdbd9bff5352f6230b5fd1f331e0e9ad6132` |
| 50 | `theorem` | [disjoint_cylinder_of_longestPrefix_lt](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/disjoint-cylinder-of-longestprefix-lt.md) | 520 | `result-track:0e4f1a87e3a6bcd6bfa91fd9aac6359ccf790085f52fc942686ff52da664b110` |
| 51 | `theorem` | [cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/cylinder-longestprefix-eq-of-longestprefix-lt-firstdiff.md) | 531 | `result-track:6ee531b497418cb0ef70cc3d9e3ab2a9a73f18b396061497667d9f0fe66f4537` |
| 52 | `theorem` | [exists_lipschitz_retraction_of_isClosed](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/exists-lipschitz-retraction-of-isclosed.md) | 556 | `result-track:317820d5dfca82ae43a0df4349c9ab8c6649060b504edf8c3ae5d9a8d8e7002a` |
| 53 | `theorem` | [exists_retraction_of_isClosed](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/exists-retraction-of-isclosed.md) | 660 | `result-track:60994ec045ec25c66bbeb26cd532264ac1c4d27ef7362956e0bf96f544594be8` |
| 54 | `theorem` | [exists_retraction_subtype_of_isClosed](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/exists-retraction-subtype-of-isclosed.md) | 665 | `result-track:161acae7c48007a82eedec3f0e5b48488790424b63ff426e6574f8b052571b09` |
| 55 | `theorem` | [exists_nat_nat_continuous_surjective_of_completeSpace](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/exists-nat-nat-continuous-surjective-of-completespace.md) | 681 | `result-track:0a2d3dd38f7252ebf46889abca87cc7aa00b80ea6a85ac89cf039722b58411f5` |
| 56 | `def` | [dist](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist.md) | 781 | `declaration-track:d1fa336e0d25d72c0b27ad1afaa53d4756be68f7313df380cb2d56bb5b1c703f` |
| 57 | `theorem` | [dist_eq_tsum](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-eq-tsum.md) | 786 | `result-track:1d244e49880b386a96fb11f087d49c27128e4efea42795e64e65a78d3a73bb5e` |
| 58 | `theorem` | [dist_summable](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-summable.md) | 790 | `result-track:57a79411518fc4cb90add1bda493c60b9216c6edb10583db0e7e9e8d0bf9dfdb` |
| 59 | `theorem` | [min_dist_le_dist_pi](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/min-dist-le-dist-pi.md) | 796 | `result-track:55c8bbfafb4846561a126e1713f7f9015fc70934a04b825c9401930b1924b7ea` |
| 60 | `theorem` | [dist_le_dist_pi_of_dist_lt](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/dist-le-dist-pi-of-dist-lt.md) | 800 | `result-track:3b975e348aa947ae293f1ff190dca1f9d2b9866ae2cc68a7d54fe2f617bf0a4d` |
| 61 | `def` | [metricSpace](../../../../GeneralTopology/PiNatNamespaced.lean/declarations/metricspace-source-edition-2.md) | 812 | `declaration-track:bc04fd8f163525b5a7d52ca43975b6c1dc4babf0d7e78c0768c14efcacd7ae5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba3ab05534328b75b899ea785d9444e30a8da06b2d8fbf0f0b4c65cb15427107 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/PiNat/Variant4087f32f42e0419a15de22c53f6b9ecb9e91a032afd84b520d35946a9ad51132.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
