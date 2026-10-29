# Verification target: Bounded Variation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99e798288c00fc3ecd4493a87e7c6eec9710aaad",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/BoundedVariation/Variantf6a6916961ef9070cf375222db27a1634b17fb71f954a37907299397e5b88821.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BoundedVariationNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/BoundedVariationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99e798288c00fc3ecd4493a87e7c6eec9710aaad`.

Source path: `GRWTSK/Topology/MetricTopology/BoundedVariation/Variantf6a6916961ef9070cf375222db27a1634b17fb71f954a37907299397e5b88821.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/BoundedVariation/Variantf6a6916961ef9070cf375222db27a1634b17fb71f954a37907299397e5b88821.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.ProjIcc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformConvergenceTopology` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/evariationon.md) | 60 | `declaration-track:a5ebf349d4214e5f4513fc6cc958f5f3d86aeefbdceae451f1b4aed0f83a65cb` |
| 2 | `def` | [BoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/boundedvariationon.md) | 65 | `declaration-track:020eda5e1896ecd9989ece64bb02f615a7479c66419a20f349240b48df363a53` |
| 3 | `def` | [LocallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/locallyboundedvariationon.md) | 70 | `declaration-track:ca2452179a12c5beadf9275bab0aba0bd32e764de02078bd79517ada697b7b20` |
| 4 | `theorem` | [nonempty_monotone_mem](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/nonempty-monotone-mem.md) | 77 | `result-track:26145dd0a0e1f6f5be1792b6eb810a8e47f464287a6ed22038dc22cbcadb6a4a` |
| 5 | `theorem` | [eq_of_edist_zero_on](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-of-edist-zero-on.md) | 82 | `result-track:aab0a307760d2daa0060fa11dfca939c2679ac3f2357caa71eaa475849593ed2` |
| 6 | `theorem` | [eq_of_eqOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-of-eqon.md) | 89 | `result-track:33cdc8498efa62aa988efa447fdc1ce2344e7f7f95da7177343a9d211b9a88ef` |
| 7 | `theorem` | [sum_le](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/sum-le.md) | 93 | `result-track:0572a980eeeb2ce14207aecfab232e3a2d52442a6b5b3cbd2baf288ec6ba4e00` |
| 8 | `theorem` | [sum_le_of_monotoneOn_Icc](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/sum-le-of-monotoneon-icc.md) | 97 | `result-track:b007a4529b8c607ce601870dc92d9d8ed2f221bd8aefe2d5def682ede1b58e4e` |
| 9 | `theorem` | [sum_le_of_monotoneOn_Iic](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/sum-le-of-monotoneon-iic.md) | 116 | `result-track:44c2f7e270820952ae4367558955492d70df38d445e8e9d246ac122f20bdb180` |
| 10 | `theorem` | [mono](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/mono.md) | 121 | `result-track:959a3341f116cc6a0fa1609fa0c16f4f25d8c9e9f2b2ebef9f95020a6bae0642` |
| 11 | `theorem` | [Bounded Variation Namespaced](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/mono-source-line-126-occurrence-2.md) | 126 | `result-track:cf6e33aa5d87e0ae3a3df611f45f5447aadd1cf380e731bba830500fd0274997` |
| 12 | `theorem` | [Bounded Variation Namespaced](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/locallyboundedvariationon-source-line-130-occurrence-2.md) | 130 | `result-track:0fbcef3e063deb37723891251737c37a7cee82efaed8fc0ab92ea3f31565c36b` |
| 13 | `theorem` | [edist_le](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/edist-le.md) | 134 | `result-track:fb28f322270f6445a885a65518b8bc52f8034816d74cf73d487fd7ead1acffe2` |
| 14 | `theorem` | [eq_zero_iff](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-zero-iff-source-edition-2.md) | 148 | `result-track:f23be2a3db9c813fa89b997f2e7bdd3f9477b7a37d1ff7167b7255f13890ff5e` |
| 15 | `theorem` | [constant_on](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/constant-on.md) | 160 | `result-track:567ee0a97b88d5f203a7393a8dad2577a02a8079fe94422e0d258cf8c01aeaec` |
| 16 | `theorem` | [subsingleton](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/subsingleton.md) | 167 | `result-track:3a61520917f2c90232613f7b335a482f6056daa50c7b1f69df1db5cadcfc3f7c` |
| 17 | `theorem` | [lowerSemicontinuous_aux](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lowersemicontinuous-aux.md) | 171 | `result-track:c0523d9d7f0d3882116f50236f9ccd09dcf753497595cd0862444bc514de2479` |
| 18 | `theorem` | [lowerSemicontinuous](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lowersemicontinuous.md) | 188 | `result-track:999395b217ad2e916be220d3db0bba92e4aa6a7dd0c89fc234b7b9a0d00a3712` |
| 19 | `theorem` | [lowerSemicontinuous_uniformOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lowersemicontinuous-uniformon.md) | 195 | `result-track:ab06eee36d00be7b32711d4193fb55a2f164eea9589870b1119d94b899344d72` |
| 20 | `theorem` | [Bounded Variation Namespaced](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/dist-le.md) | 203 | `result-track:862ffa3de18986c67e3424876c4ffca6d36dc2487a726968f7ef3a882289bb10` |
| 21 | `theorem` | [Bounded Variation Namespaced](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/sub-le.md) | 209 | `result-track:1a7f95eaa832ae394ab432916a045f0e1624ade5d75ffe6e8550826f0219e81e` |
| 22 | `theorem` | [add_point](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/add-point.md) | 218 | `result-track:19eb538e2bcbd5b6392e4333357ac520fa3b5a1f6d611cf94162bd62390202c5` |
| 23 | `theorem` | [add_le_union](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/add-le-union.md) | 367 | `result-track:ed5804338a502d72dc301c9429e573f2f7f507290666bf8c71ed62a3fbf5322f` |
| 24 | `theorem` | [union](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/union.md) | 437 | `result-track:fc795fe4d09eaba09ccba604dc16155e816984a65f10d2fbecf7db7cf0e26409` |
| 25 | `theorem` | [Icc_add_Icc](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/icc-add-icc.md) | 475 | `result-track:acb19b41b6274968361731ff67099e58c9da0554d8bfc398dc60b3eb86148334` |
| 26 | `theorem` | [comp_le_of_monotoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/comp-le-of-monotoneon.md) | 487 | `result-track:981642163fd38b779a60280612d450dccb5d14ebbeb74d4810e67e5845c05604` |
| 27 | `theorem` | [comp_le_of_antitoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/comp-le-of-antitoneon.md) | 492 | `result-track:4e8d2aa3b4dc51634914e1c54d97e885e06ad81880a6a8e827c531c6e7334d4b` |
| 28 | `theorem` | [comp_eq_of_monotoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/comp-eq-of-monotoneon.md) | 506 | `result-track:057556b32ccc6eee0a0a827770cd6f23ba024061fa230770b2f442e69b4577e8` |
| 29 | `theorem` | [comp_inter_Icc_eq_of_monotoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/comp-inter-icc-eq-of-monotoneon.md) | 521 | `result-track:83986718a41174f9049599c149bfeb614e5dda9d737b2423c356985cbfb101fa` |
| 30 | `theorem` | [comp_eq_of_antitoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/comp-eq-of-antitoneon.md) | 541 | `result-track:cc114d370fd1bd93ce12b8b4fecb7fb5ddcdddec000e9d39f0aa8728dae21f39` |
| 31 | `theorem` | [comp_ofDual](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/comp-ofdual.md) | 558 | `result-track:089827b273193673918139e2ced9e5cc133d789ef61985a0c39d317eaf345cf8` |
| 32 | `theorem` | [MonotoneOn.eVariationOn_le](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/monotoneon-evariationon-le.md) | 569 | `result-track:563bcffcd2bdf18ca658b6ca986ab97749443b7d78577af73d3287a70cab8a48` |
| 33 | `theorem` | [MonotoneOn.locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/monotoneon-locallyboundedvariationon.md) | 589 | `result-track:7cdcb9c831da4f6d55ae880fcc583aec410e28f52cec89dd1b218b15cc9ad3b4` |
| 34 | `def` | [variationOnFromTo](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/variationonfromto.md) | 596 | `declaration-track:364c02ae4e9883709864540b5728787d36cc8b546790bf68a5c0ae4db96457f4` |
| 35 | `theorem` | [self](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/self.md) | 603 | `result-track:a463ff7ac2e3da3d8e68ffee7b554ce332648ccbee601d3952cb62bdaa40d5e4` |
| 36 | `theorem` | [nonneg_of_le](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/nonneg-of-le.md) | 608 | `result-track:2bf43b40d27b8a899a725c171e02aa80d2d9cffaa585fb3379c96026a9dbc655` |
| 37 | `theorem` | [eq_neg_swap](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-neg-swap.md) | 611 | `result-track:3176dd66370fe446db842e47c8b3ff1bc20901f07c26751592b54eacf578e36e` |
| 38 | `theorem` | [nonpos_of_ge](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/nonpos-of-ge.md) | 618 | `result-track:828915583583dc32344573794616da542820435dcc6f2a13815a7f17234b5fbb` |
| 39 | `theorem` | [eq_of_le](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-of-le.md) | 622 | `result-track:88b68e4beaf8bac79062cd1cf46ba8f7a7ea92cd06495dd0c64b1f9ddbcf0f3d` |
| 40 | `theorem` | [eq_of_ge](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-of-ge.md) | 626 | `result-track:c8aec8579f20c89b3db92d1233780f11d75df1317cae3fc038c5d38048fdc1dc` |
| 41 | `theorem` | [add](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/add.md) | 630 | `result-track:73c2f5d1bcb4c353ae435128e79e210377ec5a76b6ce6fd1814a08efbba5eb35` |
| 42 | `theorem` | [edist_zero_of_eq_zero](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/edist-zero-of-eq-zero.md) | 644 | `result-track:06a542c9dda78e1bfcd27aaf8cdfb2dd8dbc7d5a3509b1ef245fb5227a045fb6` |
| 43 | `theorem` | [eq_left_iff](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-left-iff.md) | 657 | `result-track:f101ace46dbd7004a5ec85b9004f5f4636a17717d3725a6b10362e6173713699` |
| 44 | `theorem` | [eq_zero_iff_of_le](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-zero-iff-of-le.md) | 662 | `result-track:cb31ae2292f983178e33b123efa5ba805b9afae9ce7b53823a5bf9f9cc01a6d0` |
| 45 | `theorem` | [eq_zero_iff_of_ge](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-zero-iff-of-ge.md) | 669 | `result-track:4725acfa1695595e206008f110689eed709e4a1adcd66b14c3d77aed26d84783` |
| 46 | `theorem` | [eq_zero_iff](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/eq-zero-iff.md) | 676 | `result-track:e888b89160fe64d403cfd54dfbd3308eefa3b576d6f66801d67bad306e7ac899` |
| 47 | `theorem` | [monotoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/monotoneon.md) | 688 | `result-track:6c7afc3c73e6a21546273dced0387f50d4f44e613cdf3faf2176ed9c6d8882d5` |
| 48 | `theorem` | [antitoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/antitoneon.md) | 694 | `result-track:021b4875a521436426ccf2d723786dba8c11ceb4f4af78f3c291d9bface7d132` |
| 49 | `theorem` | [sub_self_monotoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/sub-self-monotoneon.md) | 701 | `result-track:7f1228b410c4868e86fb671481db14fb5bd2dd7edbac1dc2e489a6e9d1bcf748` |
| 50 | `theorem` | [comp_eq_of_monotoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/comp-eq-of-monotoneon-source-edition-2.md) | 716 | `result-track:8437dbb5617e4e8a441f5612c583c0ec04a118b9a7901a3cdd010f9f985f05a7` |
| 51 | `theorem` | [LocallyBoundedVariationOn.exists_monotoneOn_sub_monotoneOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/locallyboundedvariationon-exists-monotoneon-sub-monotoneon.md) | 729 | `result-track:21e27d65b140374937a82e53b0118c143bfa70b33ddcc0028616e6a176fcaba8` |
| 52 | `theorem` | [LipschitzOnWith.comp_eVariationOn_le](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lipschitzonwith-comp-evariationon-le.md) | 744 | `result-track:fab357808ad6d759f28b380684627b84827bbafe6b5f904557b09ea3b6f9de3b` |
| 53 | `theorem` | [LipschitzOnWith.comp_boundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lipschitzonwith-comp-boundedvariationon.md) | 756 | `result-track:e4e7387651ef10bd2a83560ea5e3c68e6207c233d7b2e38a401a6ba8b69af073` |
| 54 | `theorem` | [LipschitzOnWith.comp_locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lipschitzonwith-comp-locallyboundedvariationon.md) | 761 | `result-track:c2c3a153ff891de6a4e1e30255f8bbe6a53ac5f4c858303f8914a3c882227e00` |
| 55 | `theorem` | [LipschitzWith.comp_boundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lipschitzwith-comp-boundedvariationon.md) | 767 | `result-track:21ad56439254914b1e470f39af09bd90044ea21063218d70f3b6b92d6f98d46c` |
| 56 | `theorem` | [LipschitzWith.comp_locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lipschitzwith-comp-locallyboundedvariationon.md) | 771 | `result-track:a0ee79291a1462cdd29cb01a116d3b31837b4dbf92e52ddb41134076e52f4e09` |
| 57 | `theorem` | [LipschitzOnWith.locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lipschitzonwith-locallyboundedvariationon.md) | 776 | `result-track:ecf5534d6f39828861a1b79cead4621809f7a64476fbbd3a9109af91f1db9a6c` |
| 58 | `theorem` | [LipschitzWith.locallyBoundedVariationOn](../../../../GeneralTopology/BoundedVariationNamespaced.lean/declarations/lipschitzwith-locallyboundedvariationon.md) | 781 | `result-track:2df759f7344473d91e5e03934a03b63db1fc9e73c9c53c6ea6dc57a1ea165107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b39d7224d0e4f5441aa5e9f052dece0532b8e8cac3a39662e818cd05c3390d34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/BoundedVariation/Variantf6a6916961ef9070cf375222db27a1634b17fb71f954a37907299397e5b88821.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/BoundedVariation/Variantf6a6916961ef9070cf375222db27a1634b17fb71f954a37907299397e5b88821.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
