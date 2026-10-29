# Verification target: Compactly Generated Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de0a98ad215d5d6a6a17372a4bff7156263f66e8",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant76cc53a4ed4c0d8870fb0a2fad449aa3676b3aa6201500c6024a242101c7a5bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de0a98ad215d5d6a6a17372a4bff7156263f66e8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant76cc53a4ed4c0d8870fb0a2fad449aa3676b3aa6201500c6024a242101c7a5bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant76cc53a4ed4c0d8870fb0a2fad449aa3676b3aa6201500c6024a242101c7a5bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Atoms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Set` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupClosed` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Zorn` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrderIso` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Set` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSupClosedCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/issupclosedcompact.md) | 72 | `declaration-track:fdf2965310292b6d92a0c6d9c257683f232318505c7a0a3037bde77c86d54471` |
| 2 | `def` | [IsSupFiniteCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/issupfinitecompact.md) | 77 | `declaration-track:7aff2f30edfbd389bfa544145f0a70999d8ec0ec60eb38f070ed0a38d1dda3d4` |
| 3 | `def` | [IsCompactElement](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/iscompactelement.md) | 83 | `declaration-track:0eaeb0a883ea6caa1831891417e01dbc06597a50cb67f2241fd787106baf8c49` |
| 4 | `theorem` | [isCompactElement_iff.](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/iscompactelement-iff.md) | 86 | `result-track:2b615fe910eafeed277c43e3b1856dc0fdd87e91bc8c1075f5332d5ec0087543` |
| 5 | `theorem` | [isCompactElement_iff_le_of_directed_sSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/iscompactelement-iff-le-of-directed-ssup-le.md) | 112 | `result-track:520366817c5624442fbf35f1e87cfbb67e3b9a03c915d8e3623c7c4c35013c5e` |
| 6 | `theorem` | [IsCompactElement.exists_finset_of_le_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/iscompactelement-exists-finset-of-le-isup.md) | 153 | `result-track:bde9054ff4c8e0d3044174806727adfe58b258c843bf693ef4c4176e36877975` |
| 7 | `theorem` | [IsCompactElement.directed_sSup_lt_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/iscompactelement-directed-ssup-lt-of-lt.md) | 174 | `result-track:ab7d02155624bdd0d25f0da47caf60b430c846883880fad201fb672866f5561a` |
| 8 | `theorem` | [isCompactElement_finsetSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/iscompactelement-finsetsup.md) | 185 | `result-track:8922718ee0e770fd069e593137e976cfd379c9decc9c3e6a1f47387ec11fe821` |
| 9 | `theorem` | [WellFoundedGT.isSupFiniteCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/wellfoundedgt-issupfinitecompact.md) | 200 | `result-track:bfed72d125faa7de943dfc464a830b2ffe59b9ca44d6b1cd56921214c6558309` |
| 10 | `theorem` | [IsSupFiniteCompact.isSupClosedCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/issupfinitecompact-issupclosedcompact.md) | 212 | `result-track:25e79c132532ed95e1dea683cd9a956a6f4078fa82419187eb287fc0f003f996` |
| 11 | `theorem` | [IsSupClosedCompact.wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/issupclosedcompact-wellfoundedgt.md) | 223 | `result-track:db193ac9a6fd8b904b6ce1cbe75bdc64382b3cb245b9f95248492d05ab6585cf` |
| 12 | `theorem` | [isSupFiniteCompact_iff_all_elements_compact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/issupfinitecompact-iff-all-elements-compact.md) | 244 | `result-track:356f019909ab5347f12f04f015bdd3a1bfe51f91ededfcdd7a838170fe10cf02` |
| 13 | `theorem` | [wellFoundedGT_characterisations](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/wellfoundedgt-characterisations.md) | 259 | `result-track:69df1476e390cacbf09d12860a0b459d9f68b6351e8635ff341c2b6f606227e0` |
| 14 | `theorem` | [wellFoundedGT_iff_isSupFiniteCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/wellfoundedgt-iff-issupfinitecompact.md) | 267 | `result-track:c0f51d948c77597ba50f8796a314df011c42ad24a15f731c481a92e062653955` |
| 15 | `theorem` | [isSupFiniteCompact_iff_isSupClosedCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/issupfinitecompact-iff-issupclosedcompact.md) | 271 | `result-track:2a397da7ff8df0f8f344818a0460fd7d8c23d9817fde81ff6c31b404a697cd7f` |
| 16 | `theorem` | [isSupClosedCompact_iff_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/issupclosedcompact-iff-wellfoundedgt.md) | 274 | `result-track:68ef9d524e69136b0876beb13ad3b629964d934506ba3155135b8bc0fd2fdbf2` |
| 17 | `theorem` | [WellFoundedGT.finite_of_sSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/wellfoundedgt-finite-of-ssupindep.md) | 287 | `result-track:82f5261ac2aed38548e529d9f8a3b2ceb7f50dd48c72c7a37e9fa4e370ce2787` |
| 18 | `theorem` | [WellFoundedGT.finite_ne_bot_of_iSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/wellfoundedgt-finite-ne-bot-of-isupindep.md) | 307 | `result-track:d3656bfdcf6824648e4d7746a03b45399d081add56d1ecbc978e8fd925e4ec5e` |
| 19 | `theorem` | [WellFoundedGT.finite_of_iSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/wellfoundedgt-finite-of-isupindep.md) | 316 | `result-track:13eeac2e8215005ea6fe92dbebc9249f1780e2c7dd8a88c32c1e0971080918a5` |
| 20 | `theorem` | [WellFoundedLT.finite_of_sSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/wellfoundedlt-finite-of-ssupindep.md) | 324 | `result-track:1cab9bde15fcddd6349327e59a02d48bdc1d3696027a39f71cffe0ca96f56172` |
| 21 | `theorem` | [WellFoundedLT.finite_ne_bot_of_iSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/wellfoundedlt-finite-ne-bot-of-isupindep.md) | 339 | `result-track:da38e0fc6e85e1bb8818183a545269d2c4459eb2796892d6161bbe30e743046a` |
| 22 | `theorem` | [WellFoundedLT.finite_of_iSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/wellfoundedlt-finite-of-isupindep.md) | 348 | `result-track:1d77089aa04d8200ecb5563c64b1a5dd5fb152cfb8cc354db3564e0c1d9a6f8b` |
| 23 | `class` | [IsCompactlyGenerated](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/iscompactlygenerated.md) | 358 | `declaration-track:3163031763284e1baa0cb700baee6b0022b4d0839bb4ceb0bdf298ae67c12976` |
| 24 | `theorem` | [sSup_compact_le_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/ssup-compact-le-eq.md) | 368 | `result-track:0b6edeb1adfbe528686282e6199eaa5b50a2ddca396c8001128db28de1d1ab2f` |
| 25 | `theorem` | [sSup_compact_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/ssup-compact-eq-top.md) | 374 | `result-track:610cb9f120db96c028f5beea485e0e907582f262ffa5be5416286c4191a04088` |
| 26 | `theorem` | [le_iff_compact_le_imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/le-iff-compact-le-imp.md) | 378 | `result-track:5fe59988e11523fa4e8a6a088e7733faba361ac0cfd74b4fc7a17743ca160c95` |
| 27 | `theorem` | [DirectedOn.inf_sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/directedon-inf-ssup-eq.md) | 385 | `result-track:67daddb2355074c477ba62c35d7a39941ddccfc0de22da53404fb300d05d8d5e` |
| 28 | `theorem` | [DirectedOn.sSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/directedon-ssup-inf-eq.md) | 401 | `result-track:e048daa4b4a72be696667a6f1602f743c43a76f412d98bb36a4f7bfc0d66a55b` |
| 29 | `theorem` | [Directed.inf_iSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/directed-inf-isup-eq.md) | 405 | `result-track:73514d775fd3142c001dedcbc59af965f7a95f5fa55bdd2e9dfe6a2c13051c01` |
| 30 | `theorem` | [Directed.iSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/directed-isup-inf-eq.md) | 409 | `result-track:bcbd427cd6f9254e68d4be34ec1f0ee3877ba9238b0bb3f752c4c80f03672d2d` |
| 31 | `theorem` | [DirectedOn.disjoint_sSup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/directedon-disjoint-ssup-right.md) | 413 | `result-track:cd9291516bd3eba6e16156b33ff04690f1df6d64e43a97215b27399e21eb9194` |
| 32 | `theorem` | [DirectedOn.disjoint_sSup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/directedon-disjoint-ssup-left.md) | 417 | `result-track:8f2a46c13ac7e7c541196c857a15bca85470ece29da55dc2426c8f22ece29d14` |
| 33 | `theorem` | [Directed.disjoint_iSup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/directed-disjoint-isup-right.md) | 421 | `result-track:b5f0e2d4b60e6147cbc98e5dba2fc0ffb2456a17642787e67c691ef49c2b64ef` |
| 34 | `theorem` | [Directed.disjoint_iSup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/directed-disjoint-isup-left.md) | 425 | `result-track:d2a333adbe1a5317132710c3ef4533e4fd68e83dc642517dec1507610e36e913` |
| 35 | `theorem` | [inf_sSup_eq_iSup_inf_sup_finset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/inf-ssup-eq-isup-inf-sup-finset.md) | 430 | `result-track:7a3cb6b3a8c325955e2069876c462dd2d96610ea5878d89e5aec76d291727dbb` |
| 36 | `theorem` | [sSupIndep_iff_finite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/ssupindep-iff-finite.md) | 443 | `result-track:4a025838aad8bd8fcfa27195651415b3d785f82a6407303c9d2738f9e5b9498f` |
| 37 | `lemma` | [iSupIndep_iff_supIndep_of_injOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/isupindep-iff-supindep-of-injon.md) | 461 | `result-track:e00c0e5d9376ccfee563f2933d2d91d1f6a455716a40414b3a35cf4a2b732186` |
| 38 | `theorem` | [sSupIndep_iUnion_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/ssupindep-iunion-of-directed.md) | 487 | `result-track:ad317788cdc8ed268046bb1648ffc07944ac5bcea723c301b4d3c6d890947389` |
| 39 | `theorem` | [iSupIndep_sUnion_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/isupindep-sunion-of-directed.md) | 504 | `result-track:1ede9ccd6462dffbf1069cc841f2e61fd0f24b60a8806ff291f9bcc7b37de517` |
| 40 | `theorem` | [isCompactlyGenerated_of_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/iscompactlygenerated-of-wellfoundedgt.md) | 516 | `result-track:6946a4ba8bf0f1349e10b913c4f92c39ccbbd922016b9a4eee6d5333d3105cb8` |
| 41 | `theorem` | [Iic_coatomic_of_compact_element](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/iic-coatomic-of-compact-element.md) | 524 | `result-track:c6bc47a7e8b2fbc870f288807ee34e1c7e16060d2fb5bfbf8e78bc064f42dae4` |
| 42 | `theorem` | [coatomic_of_top_compact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/coatomic-of-top-compact.md) | 544 | `result-track:f83fa693e1524fbdd59380c82975e3c60075ffd7d7890f9bc351678a4c22919e` |
| 43 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/instance.md) | 553 | `declaration-track:5591639837861f13fc35b4dbf1bdfdc532943d7c8f23a457a5d1964b37e7d47e` |
| 44 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 573 | `declaration-track:99bdebe9e3098b891efe250a3ddd937f88232d053c653e674c3efe770c525fb3` |
| 45 | `theorem` | [exists_sSupIndep_isCompl_sSup_atoms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/exists-ssupindep-iscompl-ssup-atoms.md) | 597 | `result-track:b4570641e5f2e0f140b6faf0e6a90885658c5644149b36bc6bf6e5e73f579774` |
| 46 | `theorem` | [exists_sSupIndep_of_sSup_atoms_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/exists-ssupindep-of-ssup-atoms-eq-top.md) | 652 | `result-track:0d1c0fadfa2e72e38d4215a94dc7a5a861a3cb310c9c8f096cdf5530884a5218` |
| 47 | `theorem` | [complementedLattice_of_sSup_atoms_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/complementedlattice-of-ssup-atoms-eq-top.md) | 661 | `result-track:73902104fc074a459714ad002c6e46e9aff41778031663a04a6a3a36a8067f91` |
| 48 | `theorem` | [complementedLattice_of_isAtomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/complementedlattice-of-isatomistic.md) | 668 | `result-track:cabece2c8b757eb03b6d1e2177fee1e905f9690d911af9107b94e556da6d8ffb` |
| 49 | `theorem` | [complementedLattice_iff_isAtomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasicNamespaced.lean/declarations/complementedlattice-iff-isatomistic.md) | 671 | `result-track:3f43a9d5fc173c29574435fcd66753b87b396cbbf63c07c37c8e055c26437e2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68423e0e523956faf6c92ee9fad17e9e9975698be237ef129da3e66bbecad6fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant76cc53a4ed4c0d8870fb0a2fad449aa3676b3aa6201500c6024a242101c7a5bf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant76cc53a4ed4c0d8870fb0a2fad449aa3676b3aa6201500c6024a242101c7a5bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
