# Verification target: Circular Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7444b39cf92e26a1f226aeb0851e11b4a115e343",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Varianta80ddbbc29574aac23d5adf2b77c0f18b88a365cbc966586c7763db686313cb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7444b39cf92e26a1f226aeb0851e11b4a115e343`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Varianta80ddbbc29574aac23d5adf2b77c0f18b88a365cbc966586c7763db686313cb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Varianta80ddbbc29574aac23d5adf2b77c0f18b88a365cbc966586c7763db686313cb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-source-edition-2.md) | 99 | `declaration-track:d37c43b3590bb7e340a74214100f313ca3854c0bd7d0c510f3be471b144a34d4` |
| 2 | `class` | [SBtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw.md) | 108 | `declaration-track:33e62436a6677955931368a52e3561ccf8a783ac03585ee04ceb84758c2aa5e6` |
| 3 | `class` | [CircularPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/circularpreorder-source-edition-2.md) | 119 | `declaration-track:f8ce5fee44ae7a8b29c040a96819989d850033fcc4af6443aff01d1bff8ba6f9` |
| 4 | `class` | [CircularPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/circularpartialorder-source-edition-2.md) | 143 | `declaration-track:ff00483817bb0c7cec19232d138c9a23f6b0f627b4dbebfc69973250c0681a81` |
| 5 | `class` | [CircularOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/circularorder.md) | 154 | `declaration-track:85dafd3656dffd23db44084f174265a4a0e7bce13f8b2cdd6caa69be3cb76caa` |
| 6 | `theorem` | [btw_rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-rfl.md) | 168 | `result-track:c108c27483c2367e01364e343f41b305de40915b95d5ae02dc11dda0b08f3e30` |
| 7 | `theorem` | [Btw.btw.cyclic_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-btw-cyclic-left.md) | 174 | `result-track:0729246ca326d9a94ac57cea5dc53fac4d002b775ff0a1b5dc998795584329e9` |
| 8 | `theorem` | [btw_cyclic_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-cyclic-right.md) | 178 | `result-track:2652c8563c87c9d926278e626076fbd19aed9eca6a3e80f7ecd51027448ef54d` |
| 9 | `theorem` | [btw_cyclic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-cyclic.md) | 187 | `result-track:1cc17936a93b51dc7f5f29464cf6c2c6d317517199602a798f14d914445454aa` |
| 10 | `theorem` | [sbtw_iff_btw_not_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-iff-btw-not-btw.md) | 191 | `result-track:5c2a294035ad7f94bc64662a24f2afb7814e1d3ee1b3b58186063eaf24ea3630` |
| 11 | `theorem` | [btw_of_sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-of-sbtw.md) | 195 | `result-track:e398f79f0a63f5ed4e4dabb36ec7941a2e662e7ba4a0c6e8637f07558249f321` |
| 12 | `theorem` | [not_btw_of_sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/not-btw-of-sbtw.md) | 202 | `result-track:bcec007dc11672fa81395e4f17d658674a4f5e1ad01facc6880940e8ed9041b3` |
| 13 | `theorem` | [not_sbtw_of_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/not-sbtw-of-btw.md) | 209 | `result-track:3e154cf129393b6a3659d2b0824b6ed87a27bf6d8149c40b6c3bfaf275bf498a` |
| 14 | `theorem` | [sbtw_of_btw_not_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-of-btw-not-btw.md) | 215 | `result-track:e3a59f152bce52613486376c57018eb5aa0d02b3534823f50ee252c7ee4e4716` |
| 15 | `theorem` | [sbtw_cyclic_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-cyclic-left.md) | 222 | `result-track:74b67a0fd0216ecee136da4ac481030dc4b5e2f08c8bcb8de9702636679fe44f` |
| 16 | `theorem` | [sbtw_cyclic_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-cyclic-right.md) | 229 | `result-track:c8311729e95df49abd985f71b7829c862764ef8aac1f19c155ec6d81a51456e7` |
| 17 | `theorem` | [sbtw_cyclic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-cyclic.md) | 238 | `result-track:2a4f97e25a421b2fa2376428934b2703297645879ba42dc4d58c2cfa99328f09` |
| 18 | `theorem` | [SBtw.sbtw.trans_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-sbtw-trans-left.md) | 244 | `result-track:12c89aa597effc958c84448f6749eec4e6d9408fa047d30a12672a89cfd40c66` |
| 19 | `theorem` | [sbtw_trans_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-trans-right.md) | 248 | `result-track:bcd2e67647301af62b3c31286838061ca083d2ee164178651d4f71517499f58e` |
| 20 | `theorem` | [sbtw_asymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-asymm.md) | 255 | `result-track:faceac861e641ea37c47de72ca5b1e6bfc8d4fcf19f612eff91e14bd066e3049` |
| 21 | `theorem` | [sbtw_irrefl_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-irrefl-left-right.md) | 262 | `result-track:f0746262cb4b0c75c8c94ff88aafc932887d75fc2d3a2e95d4c8c9188e416578` |
| 22 | `theorem` | [sbtw_irrefl_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-irrefl-left.md) | 265 | `result-track:59832443b32aad629a7ca17b7d7aebb51e517c967f6dce71717b03bc8ff3022d` |
| 23 | `theorem` | [sbtw_irrefl_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-irrefl-right.md) | 268 | `result-track:de174c53ae1ffb11f8b7cfad4c4db7c5f7c84966c6f182b574dea6e5cef5b589` |
| 24 | `theorem` | [sbtw_irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-irrefl.md) | 271 | `result-track:1644e2ba730e1af10057dbf34204f313f71cfc04a5dc210c4aa148bfeafa6c3b` |
| 25 | `theorem` | [Btw.btw.antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-btw-antisymm.md) | 286 | `result-track:e22f33d07c5cfa6f85d786e604c68151365e17d9be035c3c297646125929e3ab` |
| 26 | `theorem` | [btw_refl_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-refl-left-right.md) | 299 | `result-track:20a7d219fc3c30934334312cfad2b93b915cd15a0e4004cca1397dbfe934201d` |
| 27 | `theorem` | [btw_rfl_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-rfl-left-right.md) | 303 | `result-track:88886ea46ecfaba105e0c95c62afab7d51ac4ac9f61b5ab6c490e50685d74b0f` |
| 28 | `theorem` | [btw_refl_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-refl-left.md) | 307 | `result-track:ffe8b87a73d53a45c5463a32db30171a31b6c3e51b40eca24911a73acc17a137` |
| 29 | `theorem` | [btw_rfl_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-rfl-left.md) | 311 | `result-track:f23080d231db1aeef351e104199ae80d20a688f7edcd18cc634db633a40d8da9` |
| 30 | `theorem` | [btw_refl_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-refl-right.md) | 315 | `result-track:941dad1df28545fac828247767408d51f095055985d3c6602746761d78726e3d` |
| 31 | `theorem` | [btw_rfl_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-rfl-right.md) | 319 | `result-track:ddb1eb46a24d8923cc23c909875020efde57fd4b1ba964068714645dbc462176` |
| 32 | `theorem` | [sbtw_iff_not_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-iff-not-btw.md) | 323 | `result-track:2797ed1ddb92290c85129bbe63274d1ebd5ab63f6a47718f955f52c24ae357db` |
| 33 | `theorem` | [btw_iff_not_sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw-iff-not-sbtw.md) | 328 | `result-track:c8d0ab8f3031e0714235d3caa80e95657be9d4f7605a16c8941440f41cec74b4` |
| 34 | `def` | [cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/cicc.md) | 344 | `declaration-track:db35e7a2234b9f1e9610eb03a5c8fcae06ad1cd9ecfede019bad778235aa6a5b` |
| 35 | `def` | [cIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/cioo.md) | 349 | `declaration-track:5f9f4e0f70aa87083bba1d13a5533d46d924e7c5555036fb75be5e180032d75c` |
| 36 | `theorem` | [mem_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/mem-cicc.md) | 354 | `result-track:a63683034b71dfe118b1af92c836981237e8f10a56711524677eee2539f074c7` |
| 37 | `theorem` | [mem_cIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/mem-cioo.md) | 359 | `result-track:3ae417dc9e6b502a78d15f09a92d69112ad58f19d1c3da173f5b2ea06a917ef8` |
| 38 | `theorem` | [left_mem_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/left-mem-cicc.md) | 369 | `result-track:79fd95c9a337701b6391fc857d802f1aed44f0ac594edb2e42b44f6595198d70` |
| 39 | `theorem` | [right_mem_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/right-mem-cicc.md) | 373 | `result-track:62c3b9dc4a3e05c2d89250a6a584f0ecf7c9d2764b41ab3f351c54a9f92fbc8f` |
| 40 | `theorem` | [compl_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/compl-cicc.md) | 377 | `result-track:08f02921979f7594f809b1787dc2251b054aa912bb020bb5d3016677911b47e5` |
| 41 | `theorem` | [compl_cIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/compl-cioo.md) | 382 | `result-track:daddcb08b43428f99338a9be01fe697e7e8a7256111ee7f32206d7f6ae6f0903` |
| 42 | `def` | [LE.toBtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/le-tobtw.md) | 397 | `declaration-track:8046c0cf07d9598dfe1671ff24198468eb226ea37924eb8aba9c989d32d1aef1` |
| 43 | `def` | [LT.toSBtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/lt-tosbtw.md) | 404 | `declaration-track:d4afdb972d64977ed8cf85bf9869e72ee03b1ac33aa74a1a2e7483b8af221ae8` |
| 44 | `def` | [Preorder.toCircularPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/preorder-tocircularpreorder.md) | 411 | `declaration-track:08b9985fa78d716414580bcc63ddf2e9966893f2cef8d3c36e807f1477b7e400` |
| 45 | `def` | [PartialOrder.toCircularPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/partialorder-tocircularpartialorder.md) | 447 | `declaration-track:6908bf6750aa6a0e0c1fb070d54283e232e85fe5aad6cf3d601cb726819ae530` |
| 46 | `def` | [LinearOrder.toCircularOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/linearorder-tocircularorder.md) | 465 | `declaration-track:b3f5849e0ee78c901c6408499190419ddd1c59cb556c43fca1e9584dd0199515` |
| 47 | `instance` | [btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/btw.md) | 485 | `declaration-track:34fef4c0b849ed57df85145b24196b0c20c7aae8d55c501eab99dcac9bd5122b` |
| 48 | `instance` | [sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/sbtw-source-edition-2.md) | 488 | `declaration-track:c4c609990ebe86f4452ec8bd304ade8548bf296a316396e35820d552c15c09ca` |
| 49 | `instance` | [circularPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/circularpreorder.md) | 491 | `declaration-track:83b9725ff3e62e2a7e0bf659bb898e76814844f220a48b0e3c5631391d0696c8` |
| 50 | `instance` | [circularPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/circularpartialorder.md) | 499 | `declaration-track:5c06535f4b43270a863e68504bf3b491c9b0ba0da92b6fe79a624f661610494f` |
| 51 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespacedAligned.lean/declarations/instance.md) | 503 | `declaration-track:285bf16c127c085ab34d251b1c33a4c90db5861708f238703b5e8da02f4a0300` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5eeb37c1b32de58f2cb857cee92c42bb9e5d5945a1e84e654e008a70ee28ba9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Varianta80ddbbc29574aac23d5adf2b77c0f18b88a365cbc966586c7763db686313cb6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Varianta80ddbbc29574aac23d5adf2b77c0f18b88a365cbc966586c7763db686313cb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
