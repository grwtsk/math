# Verification target: Finite Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "925ee3fb8c1f0362e08f308b3d82b79c987d3f23",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `925ee3fb8c1f0362e08f308b3d82b79c987d3f23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sigma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Powerset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeiUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/fintypeiunion.md) | 48 | `declaration-track:48c598945c9e2d89dd298775cc71cb17b22b101c1437cad128eadb21ba5a9340` |
| 2 | `instance` | [fintypesUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/fintypesunion.md) | 52 | `declaration-track:cb0170ffeea29bcdd36e0fa5f46230fb666f21ee4d20298dc722db3cc7ac7f35` |
| 3 | `lemma` | [toFinset_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/tofinset-iunion.md) | 57 | `result-track:fcfad246271735f43beb3e02fd6783a0bd84b3da2523b0807a9079ed33ac4fef` |
| 4 | `def` | [fintypeBiUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/fintypebiunion.md) | 66 | `declaration-track:2664d55598a2546f579b9814b3ca69af24092fc75f3987e007a54f1458ca068c` |
| 5 | `instance` | [fintypeBiUnion'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/fintypebiunion-source-edition-2.md) | 71 | `declaration-track:661efa80e5f265daf7dd25d994f08e8c5ba94a4dc4278e64d43e6795bf28c8dc` |
| 6 | `instance` | [finite_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-iunion-source-edition-3.md) | 93 | `declaration-track:e0a5df1475c9a7da4addecc6a4be04026383cc8c0226e5c0006f59eb7f214765` |
| 7 | `instance` | [finite_sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-sunion-source-edition-2.md) | 97 | `declaration-track:c87d73847ea2b7baf32135a8d274718c98589570444e3780cf08db1dd81adaea` |
| 8 | `theorem` | [finite_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-biunion-source-edition-4.md) | 102 | `result-track:a1a44840189b4737484f887c45f11f5576601a5869a0a5aa8b94b992610df788` |
| 9 | `instance` | [finite_biUnion'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-biunion-source-edition-2.md) | 108 | `declaration-track:676e4cc77502854284499fec41d6321071816866d842dbafd03af7c60c5fc9d8` |
| 10 | `instance` | [finite_biUnion''](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-biunion-source-edition-5.md) | 115 | `declaration-track:fff091f22ae8c3900c50ee6f94f989b756738cd1d5de3ad2cea9079b698c6081` |
| 11 | `instance` | [finite_iInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-iinter.md) | 119 | `declaration-track:ba95c987b9594d90450fef7da4c3b0d87082181aaf38fc132e8be4308ca36fec` |
| 12 | `theorem` | [finite_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-iunion.md) | 139 | `result-track:17f70efe1048f602f8084bd7082070a881459ee4a48c46c553744d1ad8e5106c` |
| 13 | `theorem` | [Finite.biUnion'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-biunion.md) | 144 | `result-track:53417e916b270a2360885fe1dfe5ccc20fc0fffbb8c541794c2a538503f24d2e` |
| 14 | `theorem` | [Finite.biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-biunion-source-edition-3.md) | 150 | `result-track:73a55f4741adec30148de785f2560d4ad64461d80a59810f6372894a84ad0b91` |
| 15 | `theorem` | [Finite.sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-sunion.md) | 154 | `result-track:26b9bea5f2e0dc5b3f719458bfe29fae532f78db52bf16771d0e0d23ade995f7` |
| 16 | `theorem` | [Finite.sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-sinter.md) | 158 | `result-track:8e805bc9805260ad742f378fb7719da0f2f3821886fea2fcddbbde7b8ef42fb7` |
| 17 | `theorem` | [Finite.iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-iunion-source-edition-2.md) | 164 | `result-track:3a87032814f02ee32aadda6cab59a147abad1df803cca049526dc1ad4a336dbe` |
| 18 | `lemma` | [finite_iUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-iunion-iff.md) | 175 | `result-track:d31deb324c7ee81eadcd6ea19bcaf5898790b5cb0f151fb5e5f0d9ea7af617bb` |
| 19 | `lemma` | [finite_iUnion_of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-iunion-of-subsingleton.md) | 190 | `result-track:0aecc2ca9948cb1b6e534aa27a4cb831e934d0c3e008864340b82aa28373e96c` |
| 20 | `lemma` | [PairwiseDisjoint.finite_biUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/pairwisedisjoint-finite-biunion-iff.md) | 197 | `result-track:728491778ec2b759d6325f99214cc1cf56c3ffb34b7ce4a5b0f38d797e20c73b` |
| 21 | `theorem` | [Finite.preimage'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-preimage.md) | 205 | `result-track:4036da3561ed0072abe72f4aa5891072bb9a127466976a049c9087baefcc7701` |
| 22 | `theorem` | [union_finset_finite_of_range_finite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/union-finset-finite-of-range-finite.md) | 213 | `result-track:93737b8d8c11e323269d441d30c9b9a0c39a33cdc056e92f98460020573edfb2` |
| 23 | `lemma` | [Finite.of_finite_fibers](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-of-finite-fibers.md) | 226 | `result-track:17d3660f0ba92dd04ed23dd6a7920594bd01bca35d06442be12bb606560d7a33` |
| 24 | `theorem` | [finite_subset_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-subset-iunion.md) | 232 | `result-track:bd134cb2f0464b4fe20cba25f6748f5193aff31243fde18cfc9d5a02a981f5ea` |
| 25 | `theorem` | [eq_finite_iUnion_of_finite_subset_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/eq-finite-iunion-of-finite-subset-iunion.md) | 240 | `result-track:65eec75321d3a2bc5beee31225f66ac267d2d2e691014a35a610f9adb5a5c210` |
| 26 | `theorem` | [infinite_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/infinite-iunion.md) | 261 | `result-track:e50ada12635ce5d47ba6c8320794ae033df7982377649213b3fe819134150629` |
| 27 | `theorem` | [Infinite.biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/infinite-biunion.md) | 266 | `result-track:5bbb0ec4976a84ac581d7dbdf2c752e2af471462a9cdb880dd241b6cad4db979` |
| 28 | `theorem` | [Infinite.sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/infinite-sunion.md) | 272 | `result-track:3d2ee1159abf6a3935a5c4c775459e97af409ce425e1a50b60db58f0b67f653d` |
| 29 | `lemma` | [map_finite_biSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/map-finite-bisup.md) | 279 | `result-track:e8d099a8053a57141d819cb37f69b09711f984a96dcdc2d4fd476e80a9929a34` |
| 30 | `lemma` | [map_finite_biInf](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/map-finite-biinf.md) | 286 | `result-track:955f5fe1fa0fee0c7bae67ad88f169b1a03c95393cccf912e0686cc0408fdd3f` |
| 31 | `lemma` | [map_finite_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/map-finite-isup.md) | 293 | `result-track:a8e868f0b3aed5652c4c65cbcccc78ca7d85e3b8d5b58e71c2f05e9d9a91550e` |
| 32 | `lemma` | [map_finite_iInf](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/map-finite-iinf.md) | 299 | `result-track:1af484b050f5ea9ef81700f3a64c9d442846642cee3bdbe5ca2cfb57de873862` |
| 33 | `theorem` | [Finite.iSup_biInf_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-isup-biinf-of-monotone.md) | 305 | `result-track:d48bdefb17cc12a518260eeff4285af4fad72ac2e3c406d5f1f5e494a1972c2b` |
| 34 | `theorem` | [Finite.iSup_biInf_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-isup-biinf-of-antitone.md) | 315 | `result-track:e108702fcac1c7fcd622ca0ef93520f424b4239cd08370cc21ae62343983978a` |
| 35 | `theorem` | [Finite.iInf_biSup_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-iinf-bisup-of-monotone.md) | 320 | `result-track:730f48db67ec7900e6ac51a65ff8b8245eca976f0d96ae9e037bbd7e5c78a3ce` |
| 36 | `theorem` | [Finite.iInf_biSup_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-iinf-bisup-of-antitone.md) | 325 | `result-track:84604cc316555da55c7383cf681296361dc83e08cd5759a3f536f5efdaf7cb5f` |
| 37 | `theorem` | [iSup_iInf_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/isup-iinf-of-monotone.md) | 330 | `result-track:e580fbbfa609163b8e5509a94d960d076aacd30aff36ee5c3acc7993fa8367a0` |
| 38 | `theorem` | [iSup_iInf_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/isup-iinf-of-antitone.md) | 335 | `result-track:e05804284da26a783ca60bbd267a40ac2cbc4682217ce1b23144a36094f8974b` |
| 39 | `theorem` | [iInf_iSup_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/iinf-isup-of-monotone.md) | 340 | `result-track:54028a7d2e5e1e1e9b9731511446263364decdbfac34b51752f03d0ea626763b` |
| 40 | `theorem` | [iInf_iSup_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/iinf-isup-of-antitone.md) | 345 | `result-track:d6d25293310d371642bfa956dceddcf08976949c2c005f4f5e3b3a11eb2c7d34` |
| 41 | `theorem` | [iUnion_iInter_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/iunion-iinter-of-monotone.md) | 351 | `result-track:3e4b92460c8eac9b018e62e15a7f70aeba29168d8991e8f3a9c3b4238c67c837` |
| 42 | `theorem` | [iUnion_iInter_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/iunion-iinter-of-antitone.md) | 357 | `result-track:e3c535cfec7be457992be2c37988da65e24c5bcbe50e1ef5592d5effcc926bfb` |
| 43 | `theorem` | [iInter_iUnion_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/iinter-iunion-of-monotone.md) | 363 | `result-track:0fc34b94b17ad865f506ecf93c20a358de1872c1750fd91fa12af9b9e894b422` |
| 44 | `theorem` | [iInter_iUnion_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/iinter-iunion-of-antitone.md) | 369 | `result-track:2b321da8f9c91e32a75e1a779e3e6db6f28663e4498810ac6bda76b3460b647f` |
| 45 | `theorem` | [iUnion_pi_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/iunion-pi-of-monotone.md) | 374 | `result-track:270c99110eed1c4d776c8717c127e703cf036366031e5ccdee53149fb6cb7119` |
| 46 | `theorem` | [iUnion_univ_pi_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/iunion-univ-pi-of-monotone.md) | 382 | `result-track:8721f81328cc30fb1eb3630e42405087f91c6a14e73a7fe0add85eb67b997160` |
| 47 | `theorem` | [Finite.bddAbove](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-bddabove.md) | 392 | `result-track:b39421b1fa721e1c0fe1a0b99bdaf69f2eeba9bac1ba8ef4b43405abd1da49ff` |
| 48 | `theorem` | [Finite.bddAbove_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-bddabove-biunion.md) | 396 | `result-track:2757a98d2b1a48831ca569abbbf326481301d00c20e8d602d4fd2912e6867be6` |
| 49 | `theorem` | [infinite_of_not_bddAbove](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/infinite-of-not-bddabove.md) | 402 | `result-track:4f70a550ab96828f86c21e74499cd77b0f49c71912d047d549a97e6937c2d4ab` |
| 50 | `theorem` | [Finite.bddBelow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-bddbelow.md) | 412 | `result-track:83beb4db48ea3e3448f56144df2975ac4f8123c3528d1726c9dbc0b7d046b544` |
| 51 | `theorem` | [Finite.bddBelow_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/finite-bddbelow-biunion.md) | 416 | `result-track:43d95f483a995ffc04e18f3726da911f3db2c4a6c935604855855ade9233ceca` |
| 52 | `theorem` | [infinite_of_not_bddBelow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/infinite-of-not-bddbelow.md) | 420 | `result-track:4a6f1420a725aac56a7123ba03643092e22ce426236a3bad7d7bc42392cfd74d` |
| 53 | `theorem` | [bddAbove](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/bddabove.md) | 429 | `result-track:d1d8c9f3af17c36c6bb85dbe0a731081f9520d43f2f1787ea1b79d54efd0c911` |
| 54 | `theorem` | [bddBelow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/bddbelow.md) | 433 | `result-track:6939d9619c367d2232ba9393f367f08e4fd1df2620fbab8841b9c36093ca7e89` |
| 55 | `lemma` | [Set.finite_diff_iUnion_Ioo](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/set-finite-diff-iunion-ioo.md) | 441 | `result-track:83771ff6546c949c93258c8cc8ecc1f9dfcca264722fdb0d17636dc2a7a40303` |
| 56 | `lemma` | [Set.finite_diff_iUnion_Ioo'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/set-finite-diff-iunion-ioo-source-edition-2.md) | 445 | `result-track:9aeb9cfedfca3fe2c387b6ed74442d2b32cc1e871e4cb753c45a8c3546887605` |
| 57 | `lemma` | [Directed.exists_mem_subset_of_finset_subset_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/directed-exists-mem-subset-of-finset-subset-biunion.md) | 448 | `result-track:e0c4aeac2b6126c23d36930daaca25ce3d35daed58972fce74b2d7be390d8d8b` |
| 58 | `theorem` | [DirectedOn.exists_mem_subset_of_finset_subset_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLatticeNamespaced.lean/declarations/directedon-exists-mem-subset-of-finset-subset-biunion.md) | 459 | `result-track:d45913331a2977f4739f3d0c16d63bfe956c32539633dae24a47b7e7af734839` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9347f330d5a1e008bd17483fb6c2d04bd87adc8053110a95618fdca13a245c95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
