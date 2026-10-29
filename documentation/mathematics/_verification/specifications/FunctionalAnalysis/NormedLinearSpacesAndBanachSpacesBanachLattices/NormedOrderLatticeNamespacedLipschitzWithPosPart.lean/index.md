# Verification target: Normed Order Lattice Namespaced Lipschitz With Pos Part

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b29fa86d839a12a887566724651dae49830f26a",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b29fa86d839a12a887566724651dae49830f26a`.

Source path: `GRWTSK/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSolidNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/hassolidnorm.md) | 51 | `declaration-track:4f02207185c922758095f4b0b5f2c8a97237cc8b5016f12b7bffa97308d269e7` |
| 2 | `theorem` | [norm_le_norm_of_abs_le_abs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/norm-le-norm-of-abs-le-abs.md) | 56 | `result-track:bde8a1ab8cf6d0260f683641b5974cf45169ecdf12c5ba9f3ea62cf39af05876` |
| 3 | `theorem` | [LatticeOrderedAddCommGroup.isSolid_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/latticeorderedaddcommgroup-issolid-ball.md) | 60 | `result-track:923c7113650d06d07832564a1da67b840aefe99e464b73f3444b952f63ef24c8` |
| 4 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/instance-source-edition-6.md) | 64 | `declaration-track:79b893c02e1b162d24d931395372b40eafc8599b2d13a9302ebadc736c21a6c7` |
| 5 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/instance.md) | 66 | `declaration-track:3dbca6b661dd68934ecfd2d4dd4c6d36e1ed4f51c1c6a7dbaa45a1050953e279` |
| 6 | `structure` | [NormedLatticeAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/normedlatticeaddcommgroup.md) | 79 | `declaration-track:1b80069905d2bd45bce8a53e846b71e064e5fa358f3a4495747923019805d56d` |
| 7 | `instance` | [Int.hasSolidNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/int-hassolidnorm.md) | 83 | `declaration-track:f0f1f26826c0e0aa52818dade8cc8532685431fd3a46e4096172bdda85cb6569` |
| 8 | `instance` | [Rat.hasSolidNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/rat-hassolidnorm.md) | 86 | `declaration-track:fe0a63d930e702d4326ac86638a8caa44144467bf1ad6c1cbcb3344369c69879` |
| 9 | `theorem` | [dual_solid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/dual-solid.md) | 93 | `result-track:fcffa629de9844781c3f1f647b8d8735c5f0308d78152469dbc9b1bf540afa11` |
| 10 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/instance-source-edition-7.md) | 106 | `declaration-track:b1e094635aab8148359e13cb1c3b34a9baccfdb258bfad2d349d7a1eaa62f4b3` |
| 11 | `theorem` | [norm_abs_eq_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/norm-abs-eq-norm.md) | 110 | `result-track:decbabd1c652a5056fe23ba1f0bbb99c53e20b839e5c3ae76c552455a8b2a620` |
| 12 | `theorem` | [norm_inf_sub_inf_le_add_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/norm-inf-sub-inf-le-add-norm.md) | 113 | `result-track:6daafc92a66fa56616c1b1ab0ed283950f1cf43ddf9772c464ce940308fb338f` |
| 13 | `theorem` | [norm_sup_sub_sup_le_add_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/norm-sup-sub-sup-le-add-norm.md) | 126 | `result-track:aee5c055e290229042c9128fe0c5c7b286bb819666c2e717a176003cfd2be415` |
| 14 | `theorem` | [norm_inf_le_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/norm-inf-le-add.md) | 139 | `result-track:57d00d3ccae5e6cb68f25b70730be0f43e16771c06b8a1efd5d296c120cd2b2f` |
| 15 | `theorem` | [norm_sup_le_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/norm-sup-le-add.md) | 143 | `result-track:07956c4b72262b139a91651ca4a86b7dd0bfefa7807c4de5be67930fadd71490` |
| 16 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/instance-source-edition-4.md) | 150 | `declaration-track:67d709621aa4fc3f845c2ea13b9f90efc86362cc55a88fc77e5c8325f20caa56` |
| 17 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/instance-source-edition-2.md) | 160 | `declaration-track:40bbf0f455a9396b42e5a93c426d59b53ffd4ae5efd7ad4edf452f338f9a6892` |
| 18 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/instance-source-edition-3.md) | 168 | `declaration-track:568f2eceaa098eb9128d93a0be14885ef492f3c339e4bae60607334bed2ab1f4` |
| 19 | `theorem` | [norm_abs_sub_abs](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/norm-abs-sub-abs.md) | 171 | `result-track:5490806990a23e66d98de6697fa487af8425b9c92b8f442ae82a038d0b91121e` |
| 20 | `theorem` | [norm_sup_sub_sup_le_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/norm-sup-sub-sup-le-norm.md) | 173 | `result-track:928dfa3c7d74acdaedc32f28d9d88c71575eba03cc4b64ceba347bd9373200fe` |
| 21 | `theorem` | [norm_inf_sub_inf_le_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/norm-inf-sub-inf-le-norm.md) | 176 | `result-track:cefc589eb6a1d8903394369cdfb2291b7da3a8a2bafb5968768676d35eb0e3ad` |
| 22 | `theorem` | [lipschitzWith_sup_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/lipschitzwith-sup-right.md) | 179 | `result-track:4088e9144a2f8ad294100716507a0b68d9702a44dc19d3466aac9b30f57c8a7f` |
| 23 | `lemma` | [lipschitzWith_posPart](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/lipschitzwith-pospart.md) | 184 | `result-track:63c5e827fde56c655ae723fc27eab134fb9958b8336a6524670e52038bda41a9` |
| 24 | `lemma` | [lipschitzWith_negPart](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/lipschitzwith-negpart.md) | 187 | `result-track:6c257e9ba683fdb70e680a706471688c21dda0e938198217a7dc71229b886047` |
| 25 | `lemma` | [continuous_posPart](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/continuous-pospart.md) | 191 | `result-track:94806ac5be811884233bf84e93b9e93a00e7c152474e54259e500e3e942fbb72` |
| 26 | `lemma` | [continuous_negPart](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/continuous-negpart.md) | 194 | `result-track:3bd7653e06b24280ed559c49461c467beabd7329902049dcbb7ec04da9883446` |
| 27 | `lemma` | [isClosed_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/isclosed-nonneg.md) | 196 | `result-track:27c537aa717eee611c1c08e73041cd007aa8b383fc266be5d677b3be49aec431` |
| 28 | `theorem` | [isClosed_le_of_isClosed_nonneg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/isclosed-le-of-isclosed-nonneg.md) | 201 | `result-track:0e3fce2fff161d6eb4d14d5c24be58c403481d4baaed102f4d27867edcdb76d0` |
| 29 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/declarations/instance-source-edition-5.md) | 211 | `declaration-track:7308aadffeb3c4b36434dd26ca072567c68ffd42dfdd4785206bc9dea6abcc83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d84b4277f3adabde1a2c7c2b29f29f41f7a00183a318b1c4c4ba0f64fd99e62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
