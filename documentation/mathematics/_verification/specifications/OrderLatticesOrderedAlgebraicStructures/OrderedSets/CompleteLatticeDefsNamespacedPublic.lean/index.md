# Verification target: Complete Lattice Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7da80b4583dccd2929bc044224a3df8c0a01ff88",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant23819034f61c98921c0cc53f6ca2535c98b62c017c09709d95a96c76e3ae2cdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7da80b4583dccd2929bc044224a3df8c0a01ff88`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant23819034f61c98921c0cc53f6ca2535c98b62c017c09709d95a96c76e3ae2cdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant23819034f61c98921c0cc53f6ca2535c98b62c017c09709d95a96c76e3ae2cdb.lean.json)

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
| 1 | `instance` | [OrderDual.supSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/orderdual-supset.md) | 60 | `declaration-track:fcaedb325bc37e416104fb73a54a90560dc1fab2376318ddf629c4975a9c2a26` |
| 2 | `class` | [CompleteSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/completesemilatticesup.md) | 68 | `declaration-track:5b334380c155b5aa01b5271a1447b92f1db7651bebd63f6bd004b1f4543de8e7` |
| 3 | `class` | [CompleteSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/completesemilatticeinf.md) | 78 | `declaration-track:a7a2a4e9ae3861d03fa40e11d93fa18e99b6bb3695f2dde7c07f3a63378d9275` |
| 4 | `theorem` | [isLUB_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/islub-ssup.md) | 87 | `result-track:a3a2c812c395eb00ff3b4bcb81c5d0c9781f13fe9b49e190e1ce8b80ffb9d157` |
| 5 | `theorem` | [le_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/le-ssup.md) | 91 | `result-track:ed67975e1731eae2e80e4c4752c875866ea912208af3cf9db505971a2a4178b6` |
| 6 | `theorem` | [sSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/ssup-le.md) | 95 | `result-track:8c1095ab9664c04907a0c6e5bde794f86c3a572567edb23d65b30ed3594d6174` |
| 7 | `lemma` | [isLUB_iff_sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/islub-iff-ssup-eq.md) | 99 | `result-track:86649edf21de896f677bd13a387aac9dba7427e087ece6c575c8517697e33cc1` |
| 8 | `theorem` | [sSup_mem_upperBounds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/ssup-mem-upperbounds.md) | 106 | `result-track:ee911d6ab55f889dc085c1a50d1288a39afc7e3a3962da81e6b73e54f2dfc734` |
| 9 | `theorem` | [le_sSup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/le-ssup-of-le.md) | 110 | `result-track:2ae405ccd8549feeca78518c433d9bc4dd6787b37f682880034b0c54b42e36b1` |
| 10 | `theorem` | [sSup_le_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/ssup-le-ssup.md) | 114 | `result-track:86b002848dded43eed75593b8280b67c6e71cbcee53fbed06e3fbadc59fe27ad` |
| 11 | `theorem` | [sSup_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/ssup-le-iff.md) | 118 | `result-track:e9b3fa4410736d5543c2001c4af39b122e392b08907a2115d31da50401d20a8c` |
| 12 | `theorem` | [le_sSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/le-ssup-iff.md) | 122 | `result-track:c610dd17f7f2c27c05bd75adb0147076df3263ea8ee0887fcf8f1201f9c7f0e6` |
| 13 | `theorem` | [le_iSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/le-isup-iff.md) | 126 | `result-track:3cd1614f5f8fdd14254ebd722c50e99c7b2c3311e901b53889440ce74d9d2317` |
| 14 | `theorem` | [sSup_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/ssup-lt-iff.md) | 130 | `result-track:278a0344c2b2bd14fbdbc887ee9089877b312aac6edc0685e815f4e44d590b0d` |
| 15 | `theorem` | [iSup_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/isup-lt-iff.md) | 135 | `result-track:efdec9371152a35b133173da8e7858dd749b188d9f5f01c3367477557280dc88` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 141 | `declaration-track:6a5fbc7e76026c5d82cb72abd727be53cc9f432ecd140e3728b0f1f0277a3c50` |
| 17 | `class` | [CompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/completelattice.md) | 145 | `declaration-track:bccdb0d832f72a69314ace158b8fbdefa7c9e8288658c745bd6ef308bb82529d` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/instance.md) | 155 | `declaration-track:341a8dc94361b58bfec7902d6bc8dcbe931f71b146766c8e445b4bfcac38afa3` |
| 19 | `def` | [completeLatticeOfInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/completelatticeofinf.md) | 174 | `declaration-track:d90e8a582dc97a13aa0d1402859afa85733bca99709938ba254081c6eb468885` |
| 20 | `def` | [completeLatticeOfCompleteSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/completelatticeofcompletesemilatticeinf.md) | 201 | `declaration-track:2fd600c255ef15bf9900566ea528d761407472211adefcb9c531889cce7be9bb` |
| 21 | `def` | [completeLatticeOfSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/completelatticeofsup.md) | 221 | `declaration-track:b2355a2d0b4e5526c3a356937e009fdd3cc64e19c01e168cc2547dfa45061f2d` |
| 22 | `def` | [completeLatticeOfCompleteSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/completelatticeofcompletesemilatticesup.md) | 246 | `declaration-track:02fc9286076d6f02a4cc432de49b3ddadd3b4f0d2cafb13a52fe82f6260b48e5` |
| 23 | `class` | [CompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/completelinearorder.md) | 253 | `declaration-track:128dfa5c24dae902f0be8bf9ee27b670bd1a8de15509519c6626b462d44ef773` |
| 24 | `instance` | [CompleteLinearOrder.toLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/completelinearorder-tolinearorder.md) | 267 | `declaration-track:82fb9be38b6bee167bff0d41e84e38c6afe83cf320aa47cedff8f9b57233a6b7` |
| 25 | `instance` | [instCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/instcompletelattice.md) | 280 | `declaration-track:f8d19c850be954a5e23046a474be4e1cdbbc30e4b68ddd835f2ccb80c5222c1a` |
| 26 | `instance` | [instCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/instcompletelinearorder.md) | 282 | `declaration-track:2bd67bf768370dc7184d1dd0dd2499f5bb417843bcf039844f2e82cb0094c916` |
| 27 | `theorem` | [toDual_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/todual-ssup.md) | 296 | `result-track:d3be401e1a24800b726d946e7af26267dbda23e213a798b58be3a75bf49d1792` |
| 28 | `theorem` | [ofDual_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/ofdual-ssup.md) | 300 | `result-track:8c1d162a3b443f8ff64a2e3c76492c047987a897c28ae682a677941fb50fc7d8` |
| 29 | `theorem` | [toDual_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/todual-isup.md) | 304 | `result-track:16a6129acfa4ad49d09a07ea2ac9547312f171bc43408f24399abe63ee1e7837` |
| 30 | `theorem` | [ofDual_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/ofdual-isup.md) | 308 | `result-track:b2319fecefe6d5674c71a1e6bf73526ab0ffd7e83381c5f0a16cad3204fd2956` |
| 31 | `theorem` | [lt_sSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/lt-ssup-iff.md) | 318 | `result-track:d5750ae7db70283cb8c80989abeee645b0361c4441ae5a3b990e6964b3f35c9b` |
| 32 | `theorem` | [lt_iSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/lt-isup-iff.md) | 322 | `result-track:d08b0fb028d35c47065d999b03b20a9e2f4015cd7fa1b5590d1365367eb8b888` |
| 33 | `theorem` | [le_sSup_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/le-ssup-iff-forall-lt.md) | 326 | `result-track:edc97409c54f090b30d620e0578c089e4ace52b145a1e327f31f75c009ff6243` |
| 34 | `theorem` | [le_iSup_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/le-isup-iff-forall-lt.md) | 330 | `result-track:349968c0fe97d361a1b01a351106546369842ddfb5f4aa5f11811ab636ab107e` |
| 35 | `theorem` | [sSup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/ssup-eq-top.md) | 334 | `result-track:75ed12d0bc386aa32d6c7309be0fa04fcaaf04062bafcf7da086989784deae33` |
| 36 | `theorem` | [iSup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/isup-eq-top.md) | 338 | `result-track:d6964db3c1f1533dbb7b22c293c5edaf9077ce0da5b93d7c4bddf6cc1faf24ad` |
| 37 | `theorem` | [lt_biSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/lt-bisup-iff.md) | 342 | `result-track:c2a9c740c278dad2f0fc6a00424b786d2e7463c852ede6f82ebfe1d443ec9522` |
| 38 | `abbrev` | [supSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/supset.md) | 354 | `declaration-track:b542af8aba29db95e0c2d9e223986b697e1ac8d24abc7329fa9f506f3c6a671c` |
| 39 | `lemma` | [supSet_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/supset-def.md) | 357 | `result-track:5e199a85d4d4c900f769a349bfb7c49b0f12bbf339af388ebd797455704cb43e` |
| 40 | `abbrev` | [infSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/infset.md) | 362 | `declaration-track:4b4bb14be0c02a0b571046dafd7dc08773b76b2b09f32a9720e967ae45590fcb` |
| 41 | `lemma` | [infSet_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefsNamespacedPublic.lean/declarations/infset-def.md) | 365 | `result-track:87bbac5a823dfe990329a450e11e413415b12d348dd10885b1b67d398ce22ce6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f68333dc4d492ce42b6b444f12900b80487b569ba3722f8037bd4edba7f136e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant23819034f61c98921c0cc53f6ca2535c98b62c017c09709d95a96c76e3ae2cdb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant23819034f61c98921c0cc53f6ca2535c98b62c017c09709d95a96c76e3ae2cdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
