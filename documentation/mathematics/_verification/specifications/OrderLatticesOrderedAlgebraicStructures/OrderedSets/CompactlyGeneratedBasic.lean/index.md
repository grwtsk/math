# Verification target: Compactly Generated Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94b3e9e3caf72aca2ac3db9c4e735b0c09eb4909",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94b3e9e3caf72aca2ac3db9c4e735b0c09eb4909`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Atoms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Set` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupClosed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Zorn` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrderIso` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Set` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSupClosedCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/issupclosedcompact.md) | 64 | `declaration-track:866b99a1f275c87b29247b8d3c59239ece90099bd1f31e1f9b22d2bb01cc0220` |
| 2 | `def` | [IsSupFiniteCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/issupfinitecompact.md) | 69 | `declaration-track:73457e9700a9e3ecd9f94df896a125c6c211aaf735d4722a6b9b5d19b1fafb39` |
| 3 | `def` | [IsCompactElement](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/iscompactelement.md) | 75 | `declaration-track:a774504254d8a9b08390520ed5b77234d8f24d96622b7cbc160d1572f5c6dc1f` |
| 4 | `theorem` | [isCompactElement_iff.](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/iscompactelement-iff.md) | 78 | `result-track:66c5145e87cc3ddf3f3d8f38c7d82eebf49d8bd0c2dd7519179d8d1a1b419253` |
| 5 | `theorem` | [isCompactElement_iff_le_of_directed_sSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/iscompactelement-iff-le-of-directed-ssup-le.md) | 104 | `result-track:c5a3ffd237137ca92dee59ac0c8c2831ba338129b9497488415bd124be2a765d` |
| 6 | `theorem` | [IsCompactElement.exists_finset_of_le_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/iscompactelement-exists-finset-of-le-isup.md) | 145 | `result-track:b1740e9ab1a96da039e5e1d95af7aa40da39c52aedcc8842c847a4fb0e59faac` |
| 7 | `theorem` | [IsCompactElement.directed_sSup_lt_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/iscompactelement-directed-ssup-lt-of-lt.md) | 166 | `result-track:1c1acefb372e062e02e4e942b54ce42af5303f29adffdb98320ab4927ece5077` |
| 8 | `theorem` | [isCompactElement_finsetSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/iscompactelement-finsetsup.md) | 177 | `result-track:e6bfde6979943d605b847f8c6a2bb1290167799e6f2ab42eb8a83f55ac68fdc6` |
| 9 | `theorem` | [WellFoundedGT.isSupFiniteCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/wellfoundedgt-issupfinitecompact.md) | 192 | `result-track:a874e1b7f42b28a45a2e0a41b9e198694f3612fef0bc801b1aecb655ba967d54` |
| 10 | `theorem` | [IsSupFiniteCompact.isSupClosedCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/issupfinitecompact-issupclosedcompact.md) | 204 | `result-track:f37c6b76862579133a8e00f708be658d2bcd0eb8543665196206ebc37094e4bd` |
| 11 | `theorem` | [IsSupClosedCompact.wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/issupclosedcompact-wellfoundedgt.md) | 215 | `result-track:e4414d1f5d298f1064230f07d30598e8f327b45b57063d999ccb21567cf2fdd2` |
| 12 | `theorem` | [isSupFiniteCompact_iff_all_elements_compact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/issupfinitecompact-iff-all-elements-compact.md) | 236 | `result-track:75e3a0f32325123577fe4081f195255a3540e2a243d76ef7a06057cdfd464d00` |
| 13 | `theorem` | [wellFoundedGT_characterisations](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/wellfoundedgt-characterisations.md) | 251 | `result-track:8d29428f8bd08ad7c7c6f997060e7f681223ed9e979c71769565a8776587c6a7` |
| 14 | `theorem` | [wellFoundedGT_iff_isSupFiniteCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/wellfoundedgt-iff-issupfinitecompact.md) | 259 | `result-track:71594320760b1877ea5918cbb208bce6de5156e7686e3613f1d3f464a8729fae` |
| 15 | `theorem` | [isSupFiniteCompact_iff_isSupClosedCompact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/issupfinitecompact-iff-issupclosedcompact.md) | 263 | `result-track:aa83b8b9cbc4780140cd2b755790f4b00bc91c2eeeaea2976198329a16104524` |
| 16 | `theorem` | [isSupClosedCompact_iff_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/issupclosedcompact-iff-wellfoundedgt.md) | 266 | `result-track:85740464ad3e68790a7fcaff63a1f5b71ea63401895ee8fc20ed5f1fc87f38e0` |
| 17 | `theorem` | [WellFoundedGT.finite_of_sSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/wellfoundedgt-finite-of-ssupindep.md) | 279 | `result-track:1772d8edbff11163dd103fc09e240af3847961d819364a3e6f6b7d41923f85d7` |
| 18 | `theorem` | [WellFoundedGT.finite_ne_bot_of_iSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/wellfoundedgt-finite-ne-bot-of-isupindep.md) | 299 | `result-track:9d376d2ab0e7d3a13343293e7349ed77caeba390205a90de31a515e6f0316e8a` |
| 19 | `theorem` | [WellFoundedGT.finite_of_iSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/wellfoundedgt-finite-of-isupindep.md) | 308 | `result-track:44df490ad40167cbc1d3872e9817af7c2f32735934c2ce39b1d4573c25dc7ee8` |
| 20 | `theorem` | [WellFoundedLT.finite_of_sSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/wellfoundedlt-finite-of-ssupindep.md) | 316 | `result-track:a9ecfdd2453fc8fcdf845bd3c35f7698380381432e311a5d2ed935a2762e2330` |
| 21 | `theorem` | [WellFoundedLT.finite_ne_bot_of_iSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/wellfoundedlt-finite-ne-bot-of-isupindep.md) | 331 | `result-track:9938bf6fc9535211463f936b7d913bdc7a1020188d968bcb38f36b88e58c6435` |
| 22 | `theorem` | [WellFoundedLT.finite_of_iSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/wellfoundedlt-finite-of-isupindep.md) | 340 | `result-track:43106eaadfcff423bd9e90edd57ac7aebc90f6234ea0ee2bfa9b421aa725d4e8` |
| 23 | `class` | [IsCompactlyGenerated](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/iscompactlygenerated.md) | 350 | `declaration-track:14080374ae2e3f02990f68cabf3c32d3a06250efc8c3d5b13b6e2d8902437c6c` |
| 24 | `theorem` | [sSup_compact_le_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/ssup-compact-le-eq.md) | 360 | `result-track:ec2cb372c2d9564e4b399740c9910294b31379cc4ef92d11f9a60a876ef33d9e` |
| 25 | `theorem` | [sSup_compact_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/ssup-compact-eq-top.md) | 366 | `result-track:5502d216ce56ac7cd26e045067a681484ae7fb55dfcafe20d23dad4d2fa57dc7` |
| 26 | `theorem` | [le_iff_compact_le_imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/le-iff-compact-le-imp.md) | 370 | `result-track:1c3a3faaffaf4090db4214d827c5225b79bff0093fc690856189b96a0b8e0f4e` |
| 27 | `theorem` | [DirectedOn.inf_sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/directedon-inf-ssup-eq.md) | 377 | `result-track:b206cf8ed3fa06bdbded79106cd5765eb51ca9d1fa631c6d245bce8859eec84a` |
| 28 | `theorem` | [DirectedOn.sSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/directedon-ssup-inf-eq.md) | 393 | `result-track:a382e199d09600b66fdfa2eecab179006e7be3b667fbae28493e3fe02ea56550` |
| 29 | `theorem` | [Directed.inf_iSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/directed-inf-isup-eq.md) | 397 | `result-track:4e3abdbcc932005a5d12b18d55772004fed0f7f418295fd91f53efdb15fa8ed1` |
| 30 | `theorem` | [Directed.iSup_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/directed-isup-inf-eq.md) | 401 | `result-track:2aeaf82a9af4070e3a5fce3df4ad0afa137f6c8f550efac156d1452372a23d0b` |
| 31 | `theorem` | [DirectedOn.disjoint_sSup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/directedon-disjoint-ssup-right.md) | 405 | `result-track:610ac7a4e3e7531005fae103d148ca011d43b1dc95f9b637cefd91a6b458b519` |
| 32 | `theorem` | [DirectedOn.disjoint_sSup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/directedon-disjoint-ssup-left.md) | 409 | `result-track:7fe44362ec05066b24be99265af21c5ed7debf4928639da8c8cf79c839d63109` |
| 33 | `theorem` | [Directed.disjoint_iSup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/directed-disjoint-isup-right.md) | 413 | `result-track:04df94d3125b75d9d684c044827d2f420ae5475779c32f2f59be89c383697c49` |
| 34 | `theorem` | [Directed.disjoint_iSup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/directed-disjoint-isup-left.md) | 417 | `result-track:fd6d9055b92818fc0cf36ec15cc55fd3f1fce23c26085e4756a9330d10a5ff09` |
| 35 | `theorem` | [inf_sSup_eq_iSup_inf_sup_finset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/inf-ssup-eq-isup-inf-sup-finset.md) | 422 | `result-track:215fa49a19bd8cd9c2172b443a1b95ec3dceabbe3deae2712350840b00cc49ff` |
| 36 | `theorem` | [sSupIndep_iff_finite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/ssupindep-iff-finite.md) | 435 | `result-track:02fc2bccd85e99bd3ca5ad128861d7f24c5cec37d8022706921cbcdf903caa4f` |
| 37 | `lemma` | [iSupIndep_iff_supIndep_of_injOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/isupindep-iff-supindep-of-injon.md) | 453 | `result-track:80f923b481a9669c845a62c7e41adfaddb45dfa1f5ec9651b02e524fd102b64e` |
| 38 | `theorem` | [sSupIndep_iUnion_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/ssupindep-iunion-of-directed.md) | 479 | `result-track:4f0862a188cb384ff197a4f3e4d06db6f8989e2fe6eda375f6895ae551e30e30` |
| 39 | `theorem` | [iSupIndep_sUnion_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/isupindep-sunion-of-directed.md) | 496 | `result-track:abbdd4ad9c3e66975ac5a54b57ea768ab6e1b9ebce62ecaf6c964b791cc1d647` |
| 40 | `theorem` | [isCompactlyGenerated_of_wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/iscompactlygenerated-of-wellfoundedgt.md) | 508 | `result-track:357150739c55e88db0d653f6a50e401cc28fa44feefcf915df1d9cb4cf6688a4` |
| 41 | `theorem` | [Iic_coatomic_of_compact_element](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/iic-coatomic-of-compact-element.md) | 516 | `result-track:34ba10056e3faec6cc3db6f7905dd428272a9c3c81c5e3a4be5d766d7c57ba21` |
| 42 | `theorem` | [coatomic_of_top_compact](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/coatomic-of-top-compact.md) | 536 | `result-track:721494f61bdcc8ef919a970498661113595971e44d93ddbd4e31674b3cead677` |
| 43 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/instance-source-edition-2.md) | 545 | `declaration-track:9e76cf802ed0c1379b3f60331cae21d6d5663069f2d0a371b83c4fae63002ea0` |
| 44 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/instance.md) | 565 | `declaration-track:1d5bc7f6c1caf323e8cf2ec30ad9609ce88901cd5e2c773fe4153ad492f5c23f` |
| 45 | `theorem` | [exists_sSupIndep_isCompl_sSup_atoms](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/exists-ssupindep-iscompl-ssup-atoms.md) | 589 | `result-track:442e386752dae8ecd5868e884a4775d9a5c122982699120e26aae00fdb6258d5` |
| 46 | `theorem` | [exists_sSupIndep_of_sSup_atoms_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/exists-ssupindep-of-ssup-atoms-eq-top.md) | 644 | `result-track:aa76a63778951d3c2bd3f4a84f4f30920d663994f3bf6e8e0f23a328b1d273d4` |
| 47 | `theorem` | [complementedLattice_of_sSup_atoms_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/complementedlattice-of-ssup-atoms-eq-top.md) | 653 | `result-track:3fce7b4693fe25246e6f6f3e850a051d6b63688ed2f29847367cd819829273dc` |
| 48 | `theorem` | [complementedLattice_of_isAtomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/complementedlattice-of-isatomistic.md) | 660 | `result-track:fd9c00848553bbb173389e99c4ac00baceb8be6f3789c8c1651471dbc27ca6d6` |
| 49 | `theorem` | [complementedLattice_iff_isAtomistic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompactlyGeneratedBasic.lean/declarations/complementedlattice-iff-isatomistic.md) | 663 | `result-track:f4554f8027aea281f385c96638409f5170d29299c9a7b63db288c212f17b848f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf5bc9a079b74c98d0bff62ed2b1a7f169d3e2a85f16abd031d4b940a1abd0c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant5b34ba084d593d6f21e8ebf8753ec44f3215e68c94008a2e278c7cb3bdb8b451.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
