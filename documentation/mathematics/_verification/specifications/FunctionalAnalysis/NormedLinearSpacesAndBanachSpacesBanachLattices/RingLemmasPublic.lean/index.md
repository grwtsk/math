# Verification target: Ring Lemmas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "019959d9a2cdb737f0a4045ee37ea8742e8d69c3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantc5612d5d0407f188c22f47040d1823177afc8e223cd1cfa4d2accace638a73e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `019959d9a2cdb737f0a4045ee37ea8742e8d69c3`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variantc5612d5d0407f188c22f47040d1823177afc8e223cd1cfa4d2accace638a73e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variantc5612d5d0407f188c22f47040d1823177afc8e223cd1cfa4d2accace638a73e6.lean.json)

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
| 1 | `theorem` | [Filter.Tendsto.zero_mul_isBoundedUnder_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/filter-tendsto-zero-mul-isboundedunder-le.md) | 32 | `result-track:f0ca1fa499d1161e3c66dc64db83699082be6c2fd3c1b4dc0b2f13eba3a6b2ef` |
| 2 | `theorem` | [Filter.isBoundedUnder_le_mul_tendsto_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/filter-isboundedunder-le-mul-tendsto-zero.md) | 37 | `result-track:096d53ebede938f26d15ce490a83e4e7f5220212ca74cbf0a81d821e99929035` |
| 3 | `instance` | [Pi.nonUnitalSeminormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/pi-nonunitalseminormedring.md) | 46 | `declaration-track:abb6c9563668ea0d483bbcf0f8f3920ad9aa1baf3e3b75430ecd1ac6e0422ab6` |
| 4 | `instance` | [Pi.seminormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/pi-seminormedring.md) | 63 | `declaration-track:cd2588dfbeb6bb2a57a05709e06d54724a8c796b0336d23f9ea13e07191dda9a` |
| 5 | `lemma` | [RingHom.isometry](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/ringhom-isometry.md) | 67 | `result-track:aae134c3c2ce85868c5f46f571ffc47cf8dd346aab9bdc76c1e17d0ab405bfa3` |
| 6 | `lemma` | [RingHomIsometric.inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/ringhomisometric-inv.md) | 73 | `result-track:beab7640eee3f761d4d66e58d41e8e09784e8825d8f29c4f44a6fe7b778450fe` |
| 7 | `lemma` | [tendsto_pow_cobounded_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/tendsto-pow-cobounded-cobounded.md) | 78 | `result-track:e16ed01214c0f123f59531d29cfef29d3469f3274b589be7308aa6c2e611fbb4` |
| 8 | `instance` | [Pi.nonUnitalNormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/pi-nonunitalnormedring.md) | 92 | `declaration-track:ea91ab108d34d9572e80232578b5582bcc9898efbb5a9d952cc23088f54d28a1` |
| 9 | `instance` | [Pi.normedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/pi-normedring.md) | 103 | `declaration-track:2bbfa45d88113e7967afcad4f58102b5a11f80852b369f0ccc54e6739e7fe4cf` |
| 10 | `instance` | [Pi.nonUnitalSeminormedCommRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/pi-nonunitalseminormedcommring.md) | 115 | `declaration-track:03aeac97ff87abf64227842292361fa08be4560935032758b5d66b5c3b14c0ed` |
| 11 | `instance` | [Pi.nonUnitalNormedCommRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/pi-nonunitalnormedcommring.md) | 127 | `declaration-track:202fcdf3f06c836c500bb2bd51f0952b9e5ed86d5f13eb066cf7053ac6c1d3f9` |
| 12 | `instance` | [Pi.seminormedCommRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/pi-seminormedcommring.md) | 139 | `declaration-track:aa28aa066c92602576de9ec2b58b1ff7cf364eacb9fcc86d64c3b49fb0e2caa1` |
| 13 | `instance` | [Pi.normedCommutativeRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/pi-normedcommutativering.md) | 151 | `declaration-track:bc362852ea59b8f88f1bcf6098dc42a452ed97d4556d16dd8c3d52fe51dc6640` |
| 14 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/instance-source-edition-6.md) | 158 | `declaration-track:bfbe72e6b40dc3f1a7045438d80f3f1240bb334407ff8cfd9b07aa95d2fb1708` |
| 15 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/instance.md) | 179 | `declaration-track:070f6ed8a5d439eca41699a1448d2ad2ddcc351a0dba42668b00e7c14f2e3988` |
| 16 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/instance-source-edition-5.md) | 184 | `declaration-track:b4a99df30edff7c8281d1cafcbcebe8580426664a6601261f70ca682a3959888` |
| 17 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/instance-source-edition-4.md) | 189 | `declaration-track:5c41272ced2c7f0f08c5ac65b963adb51307a1d9a45bea644e7a058efb5ff38f` |
| 18 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/instance-source-edition-7.md) | 194 | `declaration-track:cb4ebafcf2e33429ea9e2ca113c0b5074e4f91dfbb8e219dde92d0f07cf3ef9f` |
| 19 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/instance-source-edition-3.md) | 199 | `declaration-track:2efae1c94fe7ec709dbd4061fe26c2f0ac88ed168d1e23b6ac56d4753516afe9` |
| 20 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/instance-source-edition-2.md) | 204 | `declaration-track:2e628866c3984ebb2eb8097ee3802136888b35f8cfefba9d6002d3e40971ace3` |
| 21 | `lemma` | [lipschitzWith_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/lipschitzwith-sub.md) | 212 | `result-track:353c49392e3e600571b7d5f2ddec882f6561513822880cb2a7e9d86206083a19` |
| 22 | `instance` | [Int.instNormedCommRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/int-instnormedcommring.md) | 224 | `declaration-track:4d18616e6f098fb9665bd6f11c37006e31b63e1eb378a229f274b0d8a4c715fc` |
| 23 | `instance` | [Int.instNormOneClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/int-instnormoneclass.md) | 229 | `declaration-track:59c636757f41a3b951f3d7012306843383ad272ea08ab0413b209e541f1bbd18` |
| 24 | `instance` | [Int.instNormMulClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/int-instnormmulclass.md) | 232 | `declaration-track:35f3b4105c5d6ea5a110820cd21e7dbe628aad79e7d91d780d8e4752bc90552e` |
| 25 | `lemma` | [antilipschitzWith_mul_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/antilipschitzwith-mul-left.md) | 238 | `result-track:55778954cd9200b68f2855689ba672ada688c8fd0e83df0ce108e620c83b0119` |
| 26 | `lemma` | [antilipschitzWith_mul_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/antilipschitzwith-mul-right.md) | 241 | `result-track:0af9a95f2abe4e9b6bb4e91d15d3e5ea2f01e2ff372f8bfac736fa0588f073de` |
| 27 | `def` | [Dilation.mulLeft](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/dilation-mulleft.md) | 247 | `declaration-track:721a3499b6db6bd3a7d9489c9dcd938cb6a5938395c939633e840eace1693760` |
| 28 | `def` | [Dilation.mulRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/dilation-mulright.md) | 255 | `declaration-track:fcd3a74f3a53630ea3be8e41983b1a6a023aecf9ca4b29004bc2411c915d03aa` |
| 29 | `lemma` | [comap_mul_left_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/comap-mul-left-cobounded.md) | 263 | `result-track:d3af7d994f7ab642ca8e6813a086f6cc36e692f4fcc67c764ab94effc775e605` |
| 30 | `lemma` | [comap_mul_right_cobounded](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingLemmasPublic.lean/declarations/comap-mul-right-cobounded.md) | 268 | `result-track:9a1f7c3d17577c664dbdf2b34c2de707503cb07a5dc3b84fee88f6587307eaaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64b356fe7fd4cf7a33391d7861573d9a68802e0508cadf29e56ef784bad5dd6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lemmas/Variantc5612d5d0407f188c22f47040d1823177afc8e223cd1cfa4d2accace638a73e6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lemmas/Variantc5612d5d0407f188c22f47040d1823177afc8e223cd1cfa4d2accace638a73e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
