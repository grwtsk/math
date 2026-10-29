# Verification target: Circular Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "476cc42122201343fda404b9a419fff2e9344761",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variantb5308de38408ea8819927e099f51b83ad7e3bfa724c0ac1c6fc8b02f0073b6f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `476cc42122201343fda404b9a419fff2e9344761`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variantb5308de38408ea8819927e099f51b83ad7e3bfa724c0ac1c6fc8b02f0073b6f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variantb5308de38408ea8819927e099f51b83ad7e3bfa724c0ac1c6fc8b02f0073b6f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw.md) | 91 | `declaration-track:038de5a2eb80859216d937f2089fe7b14d383cc085dc01499bf50de875bebfcc` |
| 2 | `class` | [SBtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-source-edition-2.md) | 100 | `declaration-track:9423ecc9a0cff3fa60d41d8b2746c8bb668479d964993b9c568d2327d89f1e3e` |
| 3 | `class` | [CircularPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/circularpreorder.md) | 111 | `declaration-track:1869c5f0a28940ae1f9d450b019f7c54c4dfa96a0fc162065c293797cad98d39` |
| 4 | `class` | [CircularPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/circularpartialorder.md) | 135 | `declaration-track:1ef5aec45edcababa16ccb267a1ce859d6fee0573b61d012e346e2f256e87896` |
| 5 | `class` | [CircularOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/circularorder.md) | 146 | `declaration-track:b16343f1d3a08968775945ac068e6c4f7906ee059ab6458c4cb22a8cada0b2ae` |
| 6 | `theorem` | [btw_rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-rfl.md) | 160 | `result-track:7c0dfda26ad4854bce29f47d2c4038d7b2107141370d27bf9278e2995d480a4c` |
| 7 | `theorem` | [Btw.btw.cyclic_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-btw-cyclic-left.md) | 166 | `result-track:686921f6f70916cd0a62a808b1789edc94e61e85d6abab2e7fd78d207d06627e` |
| 8 | `theorem` | [btw_cyclic_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-cyclic-right.md) | 170 | `result-track:dfec57e6aa2570c7e53d46dae9ac684de6359591c662de7cd7cf60954674dee2` |
| 9 | `theorem` | [btw_cyclic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-cyclic.md) | 179 | `result-track:05ff3f13f6742660ff20ef28e343fc1af70aa8b4b4c4d0b52efd7e55afd38feb` |
| 10 | `theorem` | [sbtw_iff_btw_not_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-iff-btw-not-btw.md) | 183 | `result-track:1bad81fd238bb2893c6903534b9706a0a8275fc2a8c6acb42d855bad436b7aff` |
| 11 | `theorem` | [btw_of_sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-of-sbtw.md) | 187 | `result-track:a6d137a5090d35576015e39c71791f226c40502faa3e4e21d8249053cbd38c7d` |
| 12 | `theorem` | [not_btw_of_sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/not-btw-of-sbtw.md) | 194 | `result-track:4c904260b280eb6c63e9cd54b02dca1836dcfc699bca2b74d02b8a8c3fbab4c2` |
| 13 | `theorem` | [not_sbtw_of_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/not-sbtw-of-btw.md) | 201 | `result-track:ae36980021c662123613a0632c15741131337b5fcab7e4bda1a292cb44e0c3ec` |
| 14 | `theorem` | [sbtw_of_btw_not_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-of-btw-not-btw.md) | 207 | `result-track:da75d329c353fcea35d5da6e704bcf108a41419232655ca8c2bd78cd97092e9d` |
| 15 | `theorem` | [sbtw_cyclic_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-cyclic-left.md) | 214 | `result-track:9ef322824d57c5d04758a39e7dd4572d4bd35c232620d455294779cc2f7399ff` |
| 16 | `theorem` | [sbtw_cyclic_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-cyclic-right.md) | 221 | `result-track:651dbe2c5d1e8f1b81e31c04a321c0e961f0322a4330125bc862bf58ddc92558` |
| 17 | `theorem` | [sbtw_cyclic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-cyclic.md) | 230 | `result-track:4a1b903970ec428f1279541d5a94a1125e240b5501e115ac745e5320066101d9` |
| 18 | `theorem` | [SBtw.sbtw.trans_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-sbtw-trans-left.md) | 236 | `result-track:cdf2a770c0b7e510664d874b034ef187ecc6164e58bff3af7d23121a98f4dfdc` |
| 19 | `theorem` | [sbtw_trans_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-trans-right.md) | 240 | `result-track:79798a4c1c279e503aeeb47b870b93f77df1a75926feee7d4dc0ee53d967dec0` |
| 20 | `theorem` | [sbtw_asymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-asymm.md) | 247 | `result-track:71c5406a0cd44638880ae2c8bbe7e51bc317207da3194e436a09963d7b144190` |
| 21 | `theorem` | [sbtw_irrefl_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-irrefl-left-right.md) | 254 | `result-track:61774f5bd1233c092e1e4be79ef7719ddf28582a1a354a84029b8bcbcd9e5864` |
| 22 | `theorem` | [sbtw_irrefl_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-irrefl-left.md) | 257 | `result-track:7341df7e94d40c8d2a10ec0f88e2c01b5347e5e475741c2e3e49bee1d36a5404` |
| 23 | `theorem` | [sbtw_irrefl_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-irrefl-right.md) | 260 | `result-track:3a4e283746713112092a6a2012d210fdb9ed63e6765d8654df58786bfdc9ae42` |
| 24 | `theorem` | [sbtw_irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-irrefl.md) | 263 | `result-track:39a6eec0c247fcd9115a63904b646a4c746043acb89e375604110a817451b85a` |
| 25 | `theorem` | [Btw.btw.antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-btw-antisymm.md) | 278 | `result-track:dbd4d2651bbe479889a8b1c55134b97e64182c716b4b6c7d72ac90ac55f57f40` |
| 26 | `theorem` | [btw_refl_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-refl-left-right.md) | 291 | `result-track:bb86a74be679611c2c9ec674a94e13a586aa47722caaec8fca4ba8cb82a57a3b` |
| 27 | `theorem` | [btw_rfl_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-rfl-left-right.md) | 295 | `result-track:6e771853f36b07c56ea8216de183b2eb66c5afc61645c5c9c1b31da5ffef9f87` |
| 28 | `theorem` | [btw_refl_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-refl-left.md) | 299 | `result-track:19c73bfc912169dee8dfbfe87cfa7dcb7da75ab5b3df6dc748e67411e8076d99` |
| 29 | `theorem` | [btw_rfl_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-rfl-left.md) | 303 | `result-track:4d9e55b338d0b75b5318dbb267d986d7e2cf14bbe931cf47dc1e46909d0c59ae` |
| 30 | `theorem` | [btw_refl_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-refl-right.md) | 307 | `result-track:16f68090b8066163e1e9ec65f63320c439a15033bf921fae986734a37f562879` |
| 31 | `theorem` | [btw_rfl_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-rfl-right.md) | 311 | `result-track:d9a6219a5fc08b0203de0d6848e5eff5b6e58881dca110a4536127ed3a2ddd9a` |
| 32 | `theorem` | [sbtw_iff_not_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw-iff-not-btw.md) | 315 | `result-track:aebcc5227c88759b877e4d138c2feb9e28342ca972416fbd5b3eb1af37777edf` |
| 33 | `theorem` | [btw_iff_not_sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-iff-not-sbtw.md) | 320 | `result-track:d3440b359db14780e9c904c7bad8052e50ab89d78029455401f6255e54d12b82` |
| 34 | `def` | [cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/cicc.md) | 336 | `declaration-track:6c3c3fbb26df939f4422cf7ca79f36143a613ce841aa9650cbfcc4f4551efafa` |
| 35 | `def` | [cIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/cioo.md) | 341 | `declaration-track:c5a659f72648d6646069f1055edabdeaf6a944bde50891c4d77933a4fa0922f5` |
| 36 | `theorem` | [mem_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/mem-cicc.md) | 346 | `result-track:7fb19dbd2872367ade31edf3a48aae85177836d4b70408c91d5bdf86acdf4b99` |
| 37 | `theorem` | [mem_cIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/mem-cioo.md) | 351 | `result-track:19daf61257bc8588cc6b85debc60c23de5a3b2e266747af72b6971b85ed4ae74` |
| 38 | `theorem` | [left_mem_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/left-mem-cicc.md) | 361 | `result-track:da33ba726fa9c1c39146b9a7350528364d8800e950960b71910735935bbf709a` |
| 39 | `theorem` | [right_mem_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/right-mem-cicc.md) | 365 | `result-track:6ded711f1d6215e7ad3bb1bc48b9ae56088709049f355adf885ab5ed51cff95e` |
| 40 | `theorem` | [compl_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/compl-cicc.md) | 369 | `result-track:9cc32ebeffbc0fa10b329f704c4653da793f12c29d2e3658fe55da359b1bf569` |
| 41 | `theorem` | [compl_cIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/compl-cioo.md) | 374 | `result-track:68b8c477845f56698acf12c0a08b516a8984aad8a79b83f429afa6b3583bf92b` |
| 42 | `def` | [LE.toBtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/le-tobtw.md) | 389 | `declaration-track:3a75d5bc9d9230a7b26bae4565a89c6a07c2760696cee2793df7fc91e7cbe167` |
| 43 | `def` | [LT.toSBtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/lt-tosbtw.md) | 396 | `declaration-track:e5746256c056919907f22704ff689be3266f95427cdd67e88ef58d78dcb52b3f` |
| 44 | `def` | [Preorder.toCircularPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/preorder-tocircularpreorder.md) | 403 | `declaration-track:a44d20b477a2a0ff3d8ab6eabb37df6dadc28097b4656459b63eca20912ab1c8` |
| 45 | `def` | [PartialOrder.toCircularPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/partialorder-tocircularpartialorder.md) | 439 | `declaration-track:27252e7cf3871793c7f39990212af0a24b999ea943df6bfc432e4e0db522fe5c` |
| 46 | `def` | [LinearOrder.toCircularOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/linearorder-tocircularorder.md) | 457 | `declaration-track:2457e3c5f90236391e843a02cf83758295871a291c027327204623d4b632348c` |
| 47 | `instance` | [btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/btw-source-edition-2.md) | 477 | `declaration-track:654f0b973ee1ba1ea5a7898cc28cf6bfef070facf1b8804ef90b95d28dea1635` |
| 48 | `instance` | [sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/sbtw.md) | 480 | `declaration-track:1af55e0e72eb8b3a8f1331c5c6fdf355a0b15c06c0e10301343c0a11347a017e` |
| 49 | `instance` | [circularPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/circularpreorder-source-edition-2.md) | 483 | `declaration-track:b6eedd9c2c15fd38fb892c008bc5f7ca0209d76b979e9837b24b1ae41332e0b7` |
| 50 | `instance` | [circularPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/circularpartialorder-source-edition-2.md) | 491 | `declaration-track:557dd1c32fb3e7212be55caf3b3067972f251012f424d137692633a30d22d288` |
| 51 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularAligned.lean/declarations/instance.md) | 495 | `declaration-track:bc7b5df4f725dd0232d54c20212d94f956c3c8f5fa5973b17cf40fa82144b364` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d0667f6ce284ffba1c80f649f4cb0bb15156e957a81177f6048edeca5e487b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variantb5308de38408ea8819927e099f51b83ad7e3bfa724c0ac1c6fc8b02f0073b6f5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variantb5308de38408ea8819927e099f51b83ad7e3bfa724c0ac1c6fc8b02f0073b6f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
