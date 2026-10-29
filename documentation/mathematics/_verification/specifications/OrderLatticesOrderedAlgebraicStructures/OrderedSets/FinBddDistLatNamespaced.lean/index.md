# Verification target: Fin Bdd Dist Lat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c263e0e99d48afc014ee27d1ffef9210d23edce",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Variant73d57ad1d3ca434cc5f2cd85e5cc369c8d7daa3845a449eade080ce01acbb003.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c263e0e99d48afc014ee27d1ffef9210d23edce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Variant73d57ad1d3ca434cc5f2cd85e5cc369c8d7daa3845a449eade080ce01acbb003.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Variant73d57ad1d3ca434cc5f2cd85e5cc369c8d7daa3845a449eade080ce01acbb003.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BddDistLat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinPartOrd` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinBddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/finbdddistlat.md) | 31 | `declaration-track:b6b8235135c27870bd25bb762142f1a36a1fe42955c4f3b3cc45abe590a2e05d` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/instance-source-edition-2.md) | 36 | `declaration-track:38da4d7e126a9b54e3a0588524cdd22d036f9f3cfefd488bba4a44b8d43c452d` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/instance-source-edition-3.md) | 39 | `declaration-track:3d538c5cbf5e5e05351f1ec872fe1bbd800432c7c56f486dc2f30339d0c37323` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/instance-source-edition-6.md) | 42 | `declaration-track:e68a48599e1008419660d9ccda8fa92499b9ef8d6c1dbc4765dfa4d445e4da22` |
| 5 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/of.md) | 48 | `declaration-track:54e00433d503821419975233e091ec7c78b84e3c851b74022a6b409796796a33` |
| 6 | `abbrev` | [of'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/of-source-edition-2.md) | 52 | `declaration-track:da675197f2f15d8d313254c43efe7031864ebe2784a1c6b5b0d3588c9336a5ff` |
| 7 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hom.md) | 58 | `declaration-track:6c9e9cd2b84d43d1d1eb78079e0f9e2010feff76b621ce911c4657cbab736be7` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/instance.md) | 63 | `declaration-track:2ee12c93bc2faea7c558d97b18465166291fa472883cea8ffe37a041bba0f675` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/instance-source-edition-4.md) | 68 | `declaration-track:4d3e81011be5b529d069b7b641d2a14374dc0e9ab658138325f95ccd47b0139f` |
| 10 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hom-hom.md) | 73 | `declaration-track:31b00fc43debfe41048bad6a6855eb4a2ece6652be9f3987f714af7c4aa8b94c` |
| 11 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/ofhom.md) | 77 | `declaration-track:bf53ab816962830952d4b798c08307de7ebacb1313cb70cceb21e81bd43341c7` |
| 12 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hom-simps-hom.md) | 85 | `declaration-track:6de17093284d19ef79bc870ac58b66cc0700f50ecb99a78d0789a5bc00c54065` |
| 13 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/coe-id.md) | 95 | `result-track:565f08352c0a3c93016f8a206e3b2841188dd549da76a85396a5fd0b11e78134` |
| 14 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/coe-comp.md) | 98 | `result-track:c54206bd7377e1b5ae6fd3243084856391c3244aa8b5c252658cbf1f215f36fa` |
| 15 | `lemma` | [forget_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/forget-map.md) | 101 | `result-track:741a9c5fa4f0d08ea34684cb277e3adc8604ee9be4907664ef07207641c176be` |
| 16 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/ext.md) | 105 | `result-track:778b2285ca9d1cde5db0727a5a7a07b66b762910c54c67e36083bfbd92a85d4c` |
| 17 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hom-id.md) | 109 | `result-track:7c44cc71a0a286cebae3574dbde6313a2c61e12df37c08e8741be61427bcffa0` |
| 18 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/id-apply.md) | 112 | `result-track:2ec05dbea866767a6a78723ea7192c3d9d8310727eec1855a42615172fb40b1a` |
| 19 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hom-comp.md) | 116 | `result-track:6b70dd5b97368ca44f1436f618ed783f38e248c43c15d2cf9f76a638377a1a3e` |
| 20 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/comp-apply.md) | 120 | `result-track:34bdb9761defc3d39941bb670105c6c1eb19b7a1bd69ffb3180beea0cf6efa26` |
| 21 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hom-ext.md) | 124 | `result-track:71a83177b048fcda1fe21f7c9e83d655e2a590ab022f283841e66e3bd962ba8c` |
| 22 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hom-ofhom.md) | 128 | `result-track:5a86794b5e732f74da84bb5b87f5415d16eb09fd928476a8e2b1a39973022f69` |
| 23 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/ofhom-hom.md) | 133 | `result-track:e49f70b576a3ccd1834b804c1be96cb2b2824c2e182a3cead1699835b63c5426` |
| 24 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/ofhom-id.md) | 137 | `result-track:343ed1a3ea385ab44d87635f2d4b802a9b5dff32ff24ac03aad29950ff409694` |
| 25 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/ofhom-comp.md) | 141 | `result-track:f0fd9e5324549b16e74df1e487e06b77ff81e6a346c3a1918642097957ac7a17` |
| 26 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/ofhom-apply.md) | 147 | `result-track:8c5ba6325ef8920de44e7ab4cc7d9a5e174aca8558a0286d1db23dff5509d3c6` |
| 27 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/inv-hom-apply.md) | 152 | `result-track:f62d8ec03bf5767f6c672b2bc2d8f99786ed8287899b25bef4ef264eb6ddfb7f` |
| 28 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hom-inv-apply.md) | 155 | `result-track:3570872fe59c1cc3d05769ef1fabf6eee019c81b3abc2f052c3309e822db1dae` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/instance-source-edition-5.md) | 158 | `declaration-track:8b9d363d150f57ba64673ea8d71b38114c49a87d0265ee74e8b42e4676b4413a` |
| 30 | `instance` | [hasForgetToBddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hasforgettobdddistlat.md) | 161 | `declaration-track:bbb2d7fc49a35c23f6c85c94147be3073c42f580f9b14fac545539077349dbc4` |
| 31 | `instance` | [hasForgetToFinPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/hasforgettofinpartord.md) | 165 | `declaration-track:a2e3815b95f07edb9f3b19f0a48c8beff459dc9cbaa9227d21e2ffe2c5a526e0` |
| 32 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/iso-mk.md) | 172 | `declaration-track:96df736d36d34a78dba96ce9383b7b302fa35f99ebb3cc6a0d2eef3b4192ce4e` |
| 33 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/dual.md) | 180 | `declaration-track:af47fef331013e3881d6fbcc5697968f70f28f635490f5a89425501fd9f9b71a` |
| 34 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/dualequiv.md) | 186 | `declaration-track:0eb7ab1716b93a57856c1a9dfac71c2422417487817cdaada574fba887005e5b` |
| 35 | `theorem` | [finBddDistLat_dual_comp_forget_to_bddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatNamespaced.lean/declarations/finbdddistlat-dual-comp-forget-to-bdddistlat.md) | 194 | `result-track:2f5e032863278fd8a7773c943ece04ecb0675cf8e7373d98e2a04c3e3acd2d04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe2ac53b62d8b095a9d64d9ddf3563a4e32436c6e6827c6282e89e30238387bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Variant73d57ad1d3ca434cc5f2cd85e5cc369c8d7daa3845a449eade080ce01acbb003.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLat/Variant73d57ad1d3ca434cc5f2cd85e5cc369c8d7daa3845a449eade080ce01acbb003.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
