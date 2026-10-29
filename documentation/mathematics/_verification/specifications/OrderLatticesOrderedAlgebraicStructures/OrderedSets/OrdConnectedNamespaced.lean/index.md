# Verification target: Ord Connected Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d001276bfdeb20cbd207c91671724d2c6291f66",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant821bb067aa3d1d4c51d7198eb9ffd67f906b8f179e6f066a4504fb1a190b8ab9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d001276bfdeb20cbd207c91671724d2c6291f66`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant821bb067aa3d1d4c51d7198eb9ffd67f906b8f179e6f066a4504fb1a190b8ab9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant821bb067aa3d1d4c51d7198eb9ffd67f906b8f179e6f066a4504fb1a190b8ab9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.OrderEmbedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [OrdConnected.out](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-out.md) | 40 | `result-track:66863d98282217892773adfdd73270b7f4e1775534286364b118c96c2fc78a29` |
| 2 | `theorem` | [ordConnected_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-def.md) | 43 | `result-track:059078026fbda7bc1997151b5efbf7ddc83cca8e5943fbb2f88e548e9a5f938b` |
| 3 | `theorem` | [ordConnected_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-iff.md) | 47 | `result-track:b195cbc13cb4844e75425d9749d5e5ad6a67d18a1250a510f0d3109494e3f02e` |
| 4 | `theorem` | [ordConnected_of_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-of-ioo.md) | 51 | `result-track:932f920c750fb21937907a16320d36d777e42a8db6d1c5acc3014386e6662202` |
| 5 | `theorem` | [OrdConnected.preimage_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-preimage-mono.md) | 59 | `result-track:a09dc378ebbc406add960296ddf26b1afda7843a00787928049b8d688dbcf92b` |
| 6 | `theorem` | [OrdConnected.preimage_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-preimage-anti.md) | 63 | `result-track:21393a43a81664d435c7f887f75d0d6233fc501b35846830556254e1c968116a` |
| 7 | `theorem` | [Icc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/icc-subset.md) | 67 | `result-track:fd07927b7c59c7d5bf335beb4e366f01bd103c1aff8e318d1c45c9035cd4c7d7` |
| 8 | `theorem` | [image_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/image-icc.md) | 79 | `result-track:d17b6d2a7fdbab20139abe15cf4a894f3a27c26492104cfcc850a1e405100225` |
| 9 | `theorem` | [image_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/image-ico.md) | 83 | `result-track:b9ccbfb9684e2f519b1316c670f9d1eeeca7e9e69f3cc9468a3f115798738290` |
| 10 | `theorem` | [image_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/image-ioc.md) | 88 | `result-track:e13167f1d352b3fa3e993cce853ba08f3b259fb989216c4ba80ea94a4fbd8a55` |
| 11 | `theorem` | [image_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/image-ioo.md) | 93 | `result-track:1fedce77c19c3ab6137b76982cd5174ec73bf42cea72fbb9fbdc1b1992a0ec02` |
| 12 | `lemma` | [image_subtype_val_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/image-subtype-val-icc.md) | 107 | `result-track:fe38aef2e4010805d813393158f38a059748c91be70fa92e3cd43d68954b19af` |
| 13 | `lemma` | [image_subtype_val_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/image-subtype-val-ico.md) | 112 | `result-track:aa2172cd9e7b67c730c6d47d11670190fd9209282260140c3792ff7fa259d97a` |
| 14 | `lemma` | [image_subtype_val_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/image-subtype-val-ioc.md) | 117 | `result-track:cb282e13047199c060bbec65e0aa401aba4e8addfabb37671015d493f3ab362d` |
| 15 | `lemma` | [image_subtype_val_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/image-subtype-val-ioo.md) | 122 | `result-track:437af7a4a9c162de841a4048c0bef2a21bcef69f05bf69f7a647b88127ad4345` |
| 16 | `theorem` | [OrdConnected.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-inter-source-edition-2.md) | 126 | `result-track:fff69c69101d3d0a70a9952c98ce90e242a690dd35ef9e6da7f8eb648525f862` |
| 17 | `instance` | [OrdConnected.inter'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-inter.md) | 130 | `declaration-track:5345a37a4183c8e781cccb7521e39ff7d874a2c3ef3d76b3e50097a536c09b88` |
| 18 | `theorem` | [OrdConnected.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-dual.md) | 134 | `result-track:1950b58048af375b8362e8c7e70c2f4d3105385ccff3b2d6c5903b9e36b55a90` |
| 19 | `theorem` | [ordConnected_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-dual-source-edition-2.md) | 138 | `result-track:f53393831e1362f8a7400c0e5d2e0ac0433f432f523361a1384c8aa4a0e36fcd` |
| 20 | `theorem` | [ordConnected_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-sinter.md) | 141 | `result-track:7cc75145f734019a16dda422d695a467b86e800493a44e726cd4ed57cb063abf` |
| 21 | `theorem` | [ordConnected_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-iinter-source-edition-2.md) | 145 | `result-track:dce44b7316b6b9509a1c610a90038173737a51bfc26c659b8a9a640cc50cbd74` |
| 22 | `instance` | [ordConnected_iInter'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-iinter.md) | 149 | `declaration-track:0701ccbc8f5a6f1a1e9c7752fa89df3ba698a349b213b37d4c75124c21523d2f` |
| 23 | `theorem` | [ordConnected_biInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-biinter.md) | 153 | `result-track:fdf38697e5756edf110a404501cca6210a1ab505e5cbc58f6eff41ccbf5679bc` |
| 24 | `theorem` | [ordConnected_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-pi.md) | 157 | `result-track:2474381c84f2c52271e2fc45fec4242a18e59804a15be6cf3dce186623b7347a` |
| 25 | `instance` | [ordConnected_pi'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-pi-source-edition-2.md) | 161 | `declaration-track:b5214f8963c15bdc2a947d2ee3b4a153b03aca9eca7f9b4543729f56c5a995c7` |
| 26 | `theorem` | [ordConnected_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-ici.md) | 166 | `result-track:b72d9d7bfbd3c44a4654befd02470859a7eb9c01b98ef85e1b883a7cea3b8987` |
| 27 | `theorem` | [ordConnected_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-iic.md) | 170 | `result-track:0cd80c7a3e07ef79f27175a84af80cd47896c34c9b6a46f2cde14d0e578b80df` |
| 28 | `theorem` | [ordConnected_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-ioi.md) | 174 | `result-track:db73c4bc5fd97f4c03b6a2085d98be0f4d4f9b15144253a15d4c332ab945c41a` |
| 29 | `theorem` | [ordConnected_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-iio.md) | 178 | `result-track:e49e852ee354cf863517635eba34f02c883a3d774ac1f366556a83ae6e8c375d` |
| 30 | `theorem` | [ordConnected_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-icc.md) | 182 | `result-track:12d86bbbebb84c3c3c4bc16fe859e522408ce97fc6678c540b7add3dfb432dca` |
| 31 | `theorem` | [ordConnected_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-ico.md) | 186 | `result-track:c05a170c4ea1da0e32b406c84cef5da22114925208653d73c3d1b641eaa9fa0c` |
| 32 | `theorem` | [ordConnected_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-ioc.md) | 190 | `result-track:b6bfba80c9082181b1f9e2a1851529e2d8992d710810548d7a20bf082f809f04` |
| 33 | `theorem` | [ordConnected_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-ioo.md) | 194 | `result-track:a50e4a0636863831baebfe02c3aeebe788008674b89f6c28943b4397688d28a2` |
| 34 | `theorem` | [ordConnected_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-singleton.md) | 198 | `result-track:d00d73032ce26d317bb07e8fd34dbf9978a0316379f0a756fb6fecc9d2d45071` |
| 35 | `theorem` | [ordConnected_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-empty.md) | 204 | `result-track:45afe25bdff716c46fbfcb878981bf9d544a3696a5cd9e04a4582172f95b7c7b` |
| 36 | `theorem` | [ordConnected_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-univ.md) | 208 | `result-track:08b5b79124d40304afafd2e8dc9a069766916e23d8b6651d563a7d2c0219c048` |
| 37 | `instance` | [instDenselyOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/instdenselyordered.md) | 212 | `declaration-track:cecaa156e1f279c01fa4ac241df094005cf4edef32e70bc3df795a39b258077d` |
| 38 | `theorem` | [ordConnected_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-preimage.md) | 219 | `result-track:7ff89a72a65c4c33658da73b196c55cff05a17e67c1ee9cc797ffb9a5451fbb5` |
| 39 | `theorem` | [ordConnected_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-image.md) | 224 | `result-track:b43de589cf407a605088121496e2e0d4fb5e8b1bbc7041aa93e0f1989d6b249f` |
| 40 | `theorem` | [ordConnected_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-range.md) | 230 | `result-track:ca8f342387753ea87a84090a67844af2b8c308fd65ad1e2800894ea876ecccd4` |
| 41 | `theorem` | [dual_ordConnected_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/dual-ordconnected-iff.md) | 236 | `result-track:7b66809e6482213270fca0abfbac7a43e637ff557dced2ac85d0e2d87e343158` |
| 42 | `theorem` | [dual_ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/dual-ordconnected.md) | 241 | `result-track:089cdf0c55c514fdf1d856290b7426c6edc47e23519bdcfde10acf0b1178f1f8` |
| 43 | `theorem` | [Ord Connected Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-or.md) | 250 | `result-track:64a75deb0f96e89a35ff5121594dde83306ee1bc77fd93240661da4e4b5ea1e6` |
| 44 | `lemma` | [ordConnected_inter_Icc_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-inter-icc-of-subset.md) | 256 | `result-track:62e0a02790c7c1889c6205c5ddfd3b054c3d00a3fc630aebc4fb1b0fd340fe1a` |
| 45 | `lemma` | [ordConnected_inter_Icc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-inter-icc-iff.md) | 260 | `result-track:f261c54cebee0388ebcdc5419d44c37bd06d343b7fc5606299ceb442afd93fea` |
| 46 | `lemma` | [not_ordConnected_inter_Icc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/not-ordconnected-inter-icc-iff.md) | 266 | `result-track:ad9c4d1d11070f2c0605d50e29a0ada1b585a5a78d86048d1745aa1357392c69` |
| 47 | `theorem` | [ordConnected_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-uicc.md) | 279 | `result-track:a8b031ea38bc5cbc21a112733ae15831707a262d1997e66fdfbab8b8900b472a` |
| 48 | `theorem` | [ordConnected_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-uioc.md) | 283 | `result-track:34d753302da6beb88677a3278173cbd0b5709abac7a86f1d86065e32375559e0` |
| 49 | `theorem` | [OrdConnected.uIcc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-uicc-subset.md) | 286 | `result-track:660b0959d0a37c90465253459ae0c749e6e4ebb6c7f6fd78d4e17e3060256ef9` |
| 50 | `theorem` | [OrdConnected.uIoc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-uioc-subset.md) | 290 | `result-track:2f62692907283c216ef033cc1cdde0dddc33fbfe1489b3778b594567b21ffd23` |
| 51 | `theorem` | [ordConnected_iff_uIcc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-iff-uicc-subset.md) | 294 | `result-track:8f18e4f3f98bc4135f2f37c5c1adb2676b040b35f05770933509a3211f7a0673` |
| 52 | `theorem` | [ordConnected_of_uIcc_subset_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-of-uicc-subset-left.md) | 298 | `result-track:1e1d821216d5a14f5fa8bb11bb8df2dd9739e159614433ca9d787d0d3fd82e7d` |
| 53 | `theorem` | [ordConnected_iff_uIcc_subset_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-iff-uicc-subset-left.md) | 305 | `result-track:eae822c21ac467c724ed8bcfd725f8395bf981eb5465304108eb9a707c15eabf` |
| 54 | `theorem` | [ordConnected_iff_uIcc_subset_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespaced.lean/declarations/ordconnected-iff-uicc-subset-right.md) | 309 | `result-track:1db84963b9079c7e5160635e7b073f710efcdc3225a0e1e5fe88380373e9bc48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7a0f6e37472b14eaff0f1dccfa3c5c4129e27098b7b5553064681e5b9199105 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant821bb067aa3d1d4c51d7198eb9ffd67f906b8f179e6f066a4504fb1a190b8ab9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant821bb067aa3d1d4c51d7198eb9ffd67f906b8f179e6f066a4504fb1a190b8ab9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
