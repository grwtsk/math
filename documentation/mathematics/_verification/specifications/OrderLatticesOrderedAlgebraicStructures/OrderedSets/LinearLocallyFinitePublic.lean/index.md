# Verification target: Linear Locally Finite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7c256cd907f19930d949903264d1782aca49add",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7c256cd907f19930d949903264d1782aca49add`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/instance-source-edition-4.md) | 68 | `declaration-track:a5a88cb097e87f9126eaf419b77ef5386a078a21c004ee080f3938b625d6d9d0` |
| 2 | `instance` | [isSuccArchimedean_of_isPredArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/issuccarchimedean-of-ispredarchimedean.md) | 88 | `declaration-track:46b5f8ceebea1059826060fffa01efe9c42e5777d88683df5baaec83d9d1ebb2` |
| 3 | `theorem` | [isSuccArchimedean_iff_isPredArchimedean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/issuccarchimedean-iff-ispredarchimedean.md) | 93 | `result-track:5c7b7f413347ebf20d4d3262439365ca97ff66d845fe053ec98d343832a38f7d` |
| 4 | `def` | [succFn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/succfn.md) | 103 | `declaration-track:6b9d20b52ac50b5db6cc09652f60423f0be3659c344965a1765cbecf0a31e1c8` |
| 5 | `theorem` | [succFn_spec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/succfn-spec.md) | 106 | `result-track:a6c46c6401e8d835d9f34115f24dda6390a91b8e539e5134898dd00d6dbc755d` |
| 6 | `theorem` | [le_succFn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/le-succfn.md) | 109 | `result-track:5940be0c97fafa1a3c1a29feb90ef5826c0e889b851a9163f4f9a944f98d2b9a` |
| 7 | `theorem` | [isGLB_Ioc_of_isGLB_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/isglb-ioc-of-isglb-ioi.md) | 113 | `result-track:88b0c5f5214cee27f2cfbe8469256c923afeea977734a54ec414c73127bbb951` |
| 8 | `theorem` | [isMax_of_succFn_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/ismax-of-succfn-le.md) | 122 | `result-track:62a581531f2f41a4394ca492319c8d6ae28eac502cd41a884aace03bea2b0b67` |
| 9 | `theorem` | [succFn_le_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/succfn-le-of-lt.md) | 136 | `result-track:d6a13b222c63a9d92226e0f2a2258cacd684b97222bad0338ede9c02519337a7` |
| 10 | `theorem` | [le_of_lt_succFn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/le-of-lt-succfn.md) | 141 | `result-track:4ad957d8034fd5bbe0420e594afd7bad76008d24a7a5cb7c97cfbb90330b6911` |
| 11 | `def` | [succOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/succorder.md) | 152 | `declaration-track:faec5b2a363b7d350cc82e4a1c7adaabf9d880531f6d9c7655bca4d955796591` |
| 12 | `def` | [predOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/predorder.md) | 163 | `declaration-track:c454ee52e2559d2d8b7379fde57fb6a9163145b4b2c238d5329eb9dd4eacff24` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/instance-source-edition-5.md) | 167 | `declaration-track:f98a7a171ccb4e48780356c253894cf0ca0c9b288bc7327d02d8aeef2875436c` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/instance-source-edition-3.md) | 196 | `declaration-track:a27f22272047a85935cad03a35fe6e00a0fe2ba16e623497eba00bad170d2e9c` |
| 15 | `def` | [toZ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz.md) | 211 | `declaration-track:f2a0e99731505bd0650e08839b8c8f588031959b10bed4482877ec7c6bccdd77` |
| 16 | `theorem` | [toZ_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-of-ge.md) | 215 | `result-track:7884c017c6278659b45808f8bde7f9a5359d1c195ff361f89ed3c6d20585e2c7` |
| 17 | `theorem` | [toZ_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-of-lt.md) | 218 | `result-track:619bf4963321d4e06ef9a1ef3eebce77d2eb7f191794d0ddc6aa70e31531ea7f` |
| 18 | `theorem` | [toZ_of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-of-eq.md) | 223 | `result-track:fd19c73d7cb057313d9bbb1974b368b2c018a892fdae4fab8ff1f052e4cca204` |
| 19 | `theorem` | [iterate_succ_toZ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/iterate-succ-toz.md) | 230 | `result-track:41586043fc50438ee8d4b3fad5510394e1c548d8c51bc8e42b74124a925ee09d` |
| 20 | `theorem` | [iterate_pred_toZ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/iterate-pred-toz.md) | 234 | `result-track:6ef093a96910b9df26758c4563b341be9341b860f33369396bb4e10fe296af37` |
| 21 | `lemma` | [toZ_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-nonneg.md) | 238 | `result-track:d5aa149adbbc5334c56f8b716b0fb42682a172e5f3be557a39e4452782e0f391` |
| 22 | `theorem` | [toZ_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-neg.md) | 240 | `result-track:c7a6730eaaef237467e2baaebdb3d67990ee12fa25af82e3dcfacadba0c2cc2c` |
| 23 | `theorem` | [toZ_iterate_succ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-iterate-succ-le.md) | 249 | `result-track:0c8ca88a3c2a00ffcaacd785433f1f101219254bd00b6dcb24ec2e6fb98e136c` |
| 24 | `theorem` | [toZ_iterate_pred_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-iterate-pred-ge.md) | 254 | `result-track:9efef7897dd63f2eab372f99ce2d1b4de1530dfbbd8a7f7d492f905b1d6302f5` |
| 25 | `theorem` | [toZ_iterate_succ_of_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-iterate-succ-of-not-ismax.md) | 264 | `result-track:e99c731d9b96f9c2771916832341063ef69830c955702f9381267e114517e49a` |
| 26 | `theorem` | [toZ_iterate_pred_of_not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-iterate-pred-of-not-ismin.md) | 275 | `result-track:2f33ff8b52109d3b98d67df89ede29b00911b8d0caec042b8791bddffe53fa97` |
| 27 | `theorem` | [toZ_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-strictmono.md) | 294 | `result-track:9f5e0db609567217ae37d12a99fb76cb74041c8abe66d2faddaabade7debaf7a` |
| 28 | `theorem` | [injective_toZ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/injective-toz.md) | 306 | `result-track:844979231992b8bacfcbc915fc08adf9d3e4dcf3b2bbd7a957f0365235af99e1` |
| 29 | `theorem` | [toZ_le_toZ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-le-toz.md) | 310 | `result-track:a222465a3ae192a7b41587806bd6c3d5c6f45311eb2206f77810fdc204c425cf` |
| 30 | `theorem` | [toZ_lt_toZ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-lt-toz.md) | 320 | `result-track:786ae0e8b5a100c41f8b8e4828ce557b026a1f3dd32bebe0341457ad84f505b5` |
| 31 | `theorem` | [toZ_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-inj.md) | 327 | `result-track:980868fc1f0420dd2e61c207d42ab667b252d88a0e1133238099418eb6c5a4c4` |
| 32 | `theorem` | [toZ_iterate_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-iterate-succ.md) | 330 | `result-track:874e4942817bef8bcbbd083b66126f21afc6d8e310c4e701725efdc2a6b9a522` |
| 33 | `theorem` | [toZ_iterate_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/toz-iterate-pred.md) | 333 | `result-track:54ec3628c2a56079cdb38743c8b7a550603f3d5e88bfba688059662b5244fae7` |
| 34 | `def` | [orderIsoRangeToZOfLinearSuccPredArch](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/orderisorangetozoflinearsuccpredarch.md) | 344 | `declaration-track:9ad19b5d119f11b3620ccbacd18526d2123b2eb9d0db2b24c0b77bc750a445d8` |
| 35 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/instance.md) | 349 | `declaration-track:3cc780a3e15563d857a44a19074e402a86fe3bfae4c934b4c9c3a2dfd56c43c8` |
| 36 | `def` | [orderIsoIntOfLinearSuccPredArch](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/orderisointoflinearsuccpredarch.md) | 355 | `declaration-track:aed8821629f5b043bf16ac07237fc2fc1927a0d88cbdb2557259ed6f75246732` |
| 37 | `def` | [orderIsoNatOfLinearSuccPredArch](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/orderisonatoflinearsuccpredarch.md) | 378 | `declaration-track:6c7245d8b2dc78076f9c3a78a20107db8debb4d9247498f740268bdb2435f3ff` |
| 38 | `def` | [orderIsoRangeOfLinearSuccPredArch](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/orderisorangeoflinearsuccpredarch.md) | 395 | `declaration-track:9c035f1fb6b6071a4b3f3fd189174c2b3dc2424fb6e6d090055d8efaa953f969` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinitePublic.lean/declarations/instance-source-edition-2.md) | 421 | `declaration-track:7160c62ec964f4f337ebd1c7909aaf8871bc0f1f4e058fe63dfe9576d2781ae5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08fbb7b8cbc7f0a0ec45d0cd0092f7cf61ccfe35b982146074c78c5d3780a9e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant3e2f4e0932189704468c618c7479ceeeabc8a9b6b18cc961440cfa33de57aeda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
