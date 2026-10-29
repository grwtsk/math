# Verification target: Circular Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "195a95f14ad8958764877322b98e4d5f43d174d8",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `195a95f14ad8958764877322b98e4d5f43d174d8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw.md) | 99 | `declaration-track:afb63cb3da1190d8cdf64e503de56a36637a20a529b105d725d0ebd0d123390b` |
| 2 | `class` | [SBtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-source-edition-2.md) | 107 | `declaration-track:d42fa60eeb9981f55c132c07fbdffd01dcc3fac1a8b05900911e8712e7edc0d2` |
| 3 | `class` | [CircularPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/circularpreorder-source-edition-2.md) | 117 | `declaration-track:e2a36344dc208227505fca64631ee26d6d112687cd37e5a5ced3ce06823a38b7` |
| 4 | `class` | [CircularPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/circularpartialorder-source-edition-2.md) | 140 | `declaration-track:abfebb9e32c98c614e3a6641dda8ae8c01b074e3ee6bace95e81ace233195394` |
| 5 | `class` | [CircularOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/circularorder.md) | 150 | `declaration-track:a5a892c9d6f9934fb0cfcade6b4d0f9411d1dab30f20985795288b4a492c4b60` |
| 6 | `theorem` | [btw_rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-rfl.md) | 163 | `result-track:5ff45a96707c15171a2c4cae550c31e97c8961ddc1eb4e455bbcd11e1bbe7252` |
| 7 | `theorem` | [Btw.btw.cyclic_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-btw-cyclic-left.md) | 168 | `result-track:6166716f3f116a885d25f00ecc2400059b65641c2439263f46282fdaa2714fb4` |
| 8 | `theorem` | [btw_cyclic_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-cyclic-right.md) | 171 | `result-track:8fd0717500fb844006d3671c414ef7a740883d09e1fbaeedebcbcae79ec8fe42` |
| 9 | `theorem` | [btw_cyclic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-cyclic.md) | 178 | `result-track:0efa9e49e8154818278983b4b78a894697f11d5bc11e1c0c7049ba88d4a5c037` |
| 10 | `theorem` | [sbtw_iff_btw_not_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-iff-btw-not-btw.md) | 181 | `result-track:6d9afcfa2856196f604ca255b9aa1f1ba54aa6678ccfd8a4025863a9c51cd10d` |
| 11 | `theorem` | [btw_of_sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-of-sbtw.md) | 184 | `result-track:5cb506f9ee13f488ba1518dc2a14d4d0b5499f9092c1cbb1381f8ac3b683cdd3` |
| 12 | `theorem` | [not_btw_of_sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/not-btw-of-sbtw.md) | 189 | `result-track:ab2c73b45352fb90532c7d9ac5f97b865fac2070183f24b99d4413daa4740bd0` |
| 13 | `theorem` | [not_sbtw_of_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/not-sbtw-of-btw.md) | 194 | `result-track:fed9c5bba90f7064e4f36dd1ee38a029e2f503025c51c089d2e8da0c766af841` |
| 14 | `theorem` | [sbtw_of_btw_not_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-of-btw-not-btw.md) | 198 | `result-track:c4714a51a6039cab2bb047b76781274684f827092f00378fb832bd6bf9753a18` |
| 15 | `theorem` | [sbtw_cyclic_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-cyclic-left.md) | 203 | `result-track:60fa2143e2cbfe29d512cf1615e3c3906853a2827ba88feb1505cffcbbd5d807` |
| 16 | `theorem` | [sbtw_cyclic_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-cyclic-right.md) | 208 | `result-track:e81c0d5c60a1da59fc3b7f45df384587a50708ee85c249d79834f66400c1ee3b` |
| 17 | `theorem` | [sbtw_cyclic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-cyclic.md) | 215 | `result-track:811c58b6308ccfd0b29fce7932394827fbfe0c9fcd636d5560a942050d8bdfb9` |
| 18 | `theorem` | [SBtw.sbtw.trans_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-sbtw-trans-left.md) | 220 | `result-track:01620a0914c1322fab9b38d3dc42fba34dc0de05b97963f15ba0a404c6604b75` |
| 19 | `theorem` | [sbtw_trans_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-trans-right.md) | 223 | `result-track:24f50cfb67b5f9ec37bc6daf1a55ea1a5384672a7268682b1e2b9014bd6e3be1` |
| 20 | `theorem` | [sbtw_asymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-asymm.md) | 228 | `result-track:e51995be08e53085cc7ac91113c7bacef19fe8c0775f20570583912b1a80bdf4` |
| 21 | `theorem` | [sbtw_irrefl_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-irrefl-left-right.md) | 233 | `result-track:4b50dcadc2cdc30c1fe31d8638d4dcd82d0b8f1d7ee0f82c37dd80b6f349f057` |
| 22 | `theorem` | [sbtw_irrefl_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-irrefl-left.md) | 235 | `result-track:7d61c4345e25bdf215edb5321eec16f3c1c8bb4a015ad5968c957fa33ca3a5f9` |
| 23 | `theorem` | [sbtw_irrefl_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-irrefl-right.md) | 237 | `result-track:f25cb0ac0c646fb00cd42947019e4b30492571ecdac8e902e0e58cdcc550b20d` |
| 24 | `theorem` | [sbtw_irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-irrefl.md) | 239 | `result-track:571805803b83f9a1e99f214e63e809eb44b3793f5568bf988fdd4da50be142f9` |
| 25 | `theorem` | [Btw.btw.antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-btw-antisymm.md) | 253 | `result-track:441d55d8e662e4da4881708bd9611e4f706ffea7c1d7845bafb4c64d4bff823b` |
| 26 | `theorem` | [btw_refl_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-refl-left-right.md) | 265 | `result-track:8caed5e9c0842f59a11b41a52b0216245b75cc4c65d60856e4f7cd44639b1821` |
| 27 | `theorem` | [btw_rfl_left_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-rfl-left-right.md) | 268 | `result-track:74146cf99c832ed3e790246a3b4c9041ec8314468a4d2600284a84528441381a` |
| 28 | `theorem` | [btw_refl_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-refl-left.md) | 271 | `result-track:f951080070bd4df12ad4c29b15433ceeeff9bd888babcd3b90f5a51847c49565` |
| 29 | `theorem` | [btw_rfl_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-rfl-left.md) | 274 | `result-track:173e99b0c3e7f050e916ae505260c86597382ed368e6ba9fe14d61cdbedfed98` |
| 30 | `theorem` | [btw_refl_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-refl-right.md) | 277 | `result-track:defb936084fff92c9a683166c2c3ae722135318187b15777afe2c2b72b8ac1c6` |
| 31 | `theorem` | [btw_rfl_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-rfl-right.md) | 280 | `result-track:c826c22c6aba7770c5fcddf76cb3f9c266292f24075e0bd469f5758b26ad6e99` |
| 32 | `theorem` | [sbtw_iff_not_btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw-iff-not-btw.md) | 283 | `result-track:2704e794abc141ea1ca93d669183c2268aeb39815c859ccb5edf536b5e7503b7` |
| 33 | `theorem` | [btw_iff_not_sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-iff-not-sbtw.md) | 287 | `result-track:c37cde095ff7007a3204e3df83ddba758b0776bc13e3ca8e59c10867ed849d46` |
| 34 | `def` | [cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/cicc.md) | 302 | `declaration-track:ec76ec59dfd437ba8a8017f7252ba0b3ec21209df730a0642acf591f132b2917` |
| 35 | `def` | [cIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/cioo.md) | 306 | `declaration-track:ca6ae049b15bdd0efc9f1d2b3ddf038e64cca318176fd30ab16cfd04dbb747f4` |
| 36 | `theorem` | [mem_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/mem-cicc.md) | 310 | `result-track:f5a57697fc9c039d0f777af539c2145c410c3cd96ce96d578992ab07e6c2ab5e` |
| 37 | `theorem` | [mem_cIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/mem-cioo.md) | 314 | `result-track:ff769cb8de64cede3204f5ceeafb31399cb9dfc3c8262ba89eb7a68666310249` |
| 38 | `theorem` | [left_mem_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/left-mem-cicc.md) | 323 | `result-track:e3b737626964c82c240ff10d97add7566adf9273d8424a8855de09fa04e79b93` |
| 39 | `theorem` | [right_mem_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/right-mem-cicc.md) | 326 | `result-track:850df95ec8925705c7e189b59029fc6a505cf9abd50613d508d18142a28e6c71` |
| 40 | `theorem` | [compl_cIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/compl-cicc.md) | 329 | `result-track:e0ea6d7d9994e665c9979f26ca7ec3493017c0d595e71d359ee1d8ddef1848fa` |
| 41 | `theorem` | [compl_cIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/compl-cioo.md) | 333 | `result-track:7cc984cdab3d6756d3789da118694585d2ff1bccb9a610750a8ef035712d800c` |
| 42 | `abbrev` | [LE.toBtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/le-tobtw.md) | 346 | `declaration-track:de66e4e4b257ceac885c704586d62086c72761a346b2b889d2e3628ccc29c8e8` |
| 43 | `abbrev` | [LT.toSBtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/lt-tosbtw.md) | 351 | `declaration-track:8fd4407a06e9498a5bb646a96b5080b31de6f2c4925da003bd0c01948eec0924` |
| 44 | `abbrev` | [Preorder.toCircularPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/preorder-tocircularpreorder.md) | 356 | `declaration-track:e40089f27b37210910b7956c583455826ffe48a583badb6adc8555912f54aae3` |
| 45 | `abbrev` | [PartialOrder.toCircularPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/partialorder-tocircularpartialorder.md) | 383 | `declaration-track:2fbb11f2029969cc586ac1470edfc420dacc7ead5564d7d2e0dee0c844ca64ad` |
| 46 | `abbrev` | [LinearOrder.toCircularOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/linearorder-tocircularorder.md) | 399 | `declaration-track:4bae0049d76c9bb80a617df6160d50d9f6720d568a801e2bac27bc2a86988d62` |
| 47 | `instance` | [btw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/btw-source-edition-2.md) | 418 | `declaration-track:d0f9cdf4400ffd9bb30edfbd745d69f346ab38d62d6b53b09863d6d41dea870f` |
| 48 | `instance` | [sbtw](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/sbtw.md) | 421 | `declaration-track:201b95ada37745c452d1bf0a3d6486ab400006aca948f96e01660e2b29da71e3` |
| 49 | `instance` | [circularPreorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/circularpreorder.md) | 424 | `declaration-track:dd8b5a1d35e2cde88f055cd0269afc08d8f6f5dee4e8066b941633d9fe8acf6f` |
| 50 | `instance` | [circularPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/circularpartialorder.md) | 432 | `declaration-track:4f56bc538fb21a01eb9e98c62b20640e15ceaaea1526ab2702f8cb014219de89` |
| 51 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CircularNamespaced.lean/declarations/instance.md) | 436 | `declaration-track:10204a67156b56e7b4d7d2331324ac6c8cc44455d26c07f517d731068c0c4e55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d181e3507bcfe9946339d975962163bfabca201e50424b7bbfa98c79abc1dc93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
